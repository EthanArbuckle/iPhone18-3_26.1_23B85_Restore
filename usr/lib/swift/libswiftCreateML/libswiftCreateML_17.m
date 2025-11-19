unint64_t MLLinearRegressor.ModelParameters.playgroundDescription.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = MLLinearRegressor.ModelParameters.description.getter(a1, a2);
  v3[3] = &type metadata for String;
  *v3 = result;
  v3[1] = v5;
  return result;
}

uint64_t initializeWithCopy for MLLinearRegressor.ModelParameters(uint64_t a1, __int128 *a2)
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
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t assignWithCopy for MLLinearRegressor.ModelParameters(uint64_t a1, __int128 *a2)
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
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t assignWithTake for MLLinearRegressor.ModelParameters(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v2 = *a2;
  *(a1 + 16) = a2[1];
  *a1 = v2;
  *(a1 + 32) = *(a2 + 4);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t getEnumTagSinglePayload for MLLinearRegressor.ModelParameters(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 73))
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

void storeEnumTagSinglePayload for MLLinearRegressor.ModelParameters(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 - 0x7FFFFFFF;
    *(a1 + 72) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 73) = 0;
    }

    if (a2)
    {
      *(a1 + 24) = 2 * a2;
    }
  }
}

uint64_t static MLSoundClassifier.VGGishFeatureExtractor.buildSoundAnalysisPreprocessingSpec()()
{
  v44 = v0;
  v33 = type metadata accessor for ModelKind(0);
  v34 = *(v33 - 8);
  v1 = *(v34 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v35 = &v32;
  v45 = type metadata accessor for FeatureType.ShapedArrayParameters.DataType(0);
  v51 = *(v45 - 8);
  v4 = *(v51 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v47 = &v32;
  v7 = *(*(type metadata accessor for FeatureType(0) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v43 = type metadata accessor for FeatureDescription(0);
  v46 = *(v43 - 8);
  v10 = *(v46 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v50 = &v32;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v49 = &v32;
  Model.init()();
  Model.specificationVersion.setter(4);
  v36 = "Feature embedding for VGGish" + 0x8000000000000000;
  Model.predictedFeatureName.setter(0xD000000000000011, "Feature embedding for VGGish" + 0x8000000000000000);
  Model.modelDescription.setter(0xD000000000000027, "be a neural network, got " + 0x8000000000000000);
  FeatureDescription.init()();
  FeatureDescription.name.setter(0x6D61536F69647561, 0xEC00000073656C70);
  FeatureDescription.featureDescription.setter(0xD000000000000024, "reprocessing for VGGish" + 0x8000000000000000);
  v48 = enum case for FeatureType.ShapedArrayParameters.DataType.float32(_:);
  v37 = *(v51 + 104);
  v15 = v47;
  v16 = v45;
  v37(v47, enum case for FeatureType.ShapedArrayParameters.DataType.float32(_:), v45);
  v38 = &v32;
  static FeatureType.shapedArray(dataType:shape:optional:)(v15, &outlined read-only object #0 of static MLSoundClassifier.VGGishFeatureExtractor.buildSoundAnalysisPreprocessingSpec(), 0);
  v51 = *(v51 + 8);
  (v51)(v15, v16);
  FeatureDescription.type.setter(&v32);
  v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>);
  v17 = v46;
  v18 = *(v46 + 80);
  v19 = (v18 + 32) & ~*(v46 + 80);
  v41 = v19 + *(v46 + 72);
  v39 = v18 | 7;
  v20 = swift_allocObject(v40, v41, v18 | 7);
  *(v20 + 16) = 1;
  *(v20 + 24) = 2;
  v42 = *(v17 + 16);
  v42(v20 + v19, v49, v43);
  Model.inputs.setter(v20);
  FeatureDescription.init()();
  FeatureDescription.name.setter(0xD000000000000011, v36);
  v21 = v47;
  v22 = v45;
  v37(v47, v48, v45);
  v23 = v38;
  static FeatureType.shapedArray(dataType:shape:optional:)(v21, &outlined read-only object #1 of static MLSoundClassifier.VGGishFeatureExtractor.buildSoundAnalysisPreprocessingSpec(), 0);
  (v51)(v21, v22);
  v24 = v50;
  FeatureDescription.type.setter(v23);
  v25 = swift_allocObject(v40, v41, v39);
  *(v25 + 16) = 1;
  *(v25 + 24) = 2;
  v26 = v25 + v19;
  v27 = v43;
  v42(v26, v24, v43);
  Model.outputs.setter(v25);
  v28 = v35;
  SoundAnalysisPreprocessorKind.VGGishParameters.init()();
  LODWORD(v25) = enum case for SoundAnalysisPreprocessorKind.vggish(_:);
  v29 = type metadata accessor for SoundAnalysisPreprocessorKind(0);
  (*(*(v29 - 8) + 104))(v28, v25, v29);
  (*(v34 + 104))(v28, enum case for ModelKind.soundPreprocessor(_:), v33);
  Model.kind.setter(v28);
  v30 = *(v46 + 8);
  v30(v50, v27);
  return (v30)(v49, v27);
}

void static MLSoundClassifier.VGGishFeatureExtractor.buildFeatureEmbeddingNeuralNetworkSpec(outputName:)(uint64_t a1, uint64_t a2)
{
  *&v125 = v3;
  v123 = a2;
  v120 = a1;
  v126 = v2;
  v107 = type metadata accessor for ModelKind(0);
  v108 = *(v107 - 8);
  v4 = *(v108 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v109 = v97;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v99 = v97;
  v110 = type metadata accessor for NeuralNetwork(0);
  v111 = *(v110 - 8);
  v9 = *(v111 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v124 = v97;
  v121 = type metadata accessor for FeatureType.ShapedArrayParameters.DataType(0);
  v115 = *(v121 - 8);
  v12 = *(v115 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v122 = v97;
  v15 = *(*(type metadata accessor for FeatureType(0) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v106 = v97;
  v117 = type metadata accessor for FeatureDescription(0);
  v18 = *(v117 - 8);
  v19 = *(v18 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v119 = v97;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v118 = v97;
  v24 = type metadata accessor for URL(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v127 = v97;
  v29 = alloca(v26);
  v30 = alloca(v26);
  v31 = v97;
  v32._object = "h feature from audio samples" + 0x8000000000000000;
  v32._countAndFlagsBits = 0xD000000000000018;
  v33 = v125;
  static BundleUtilities.getMLModelURL(at:)(v32);
  if (v33)
  {
    return;
  }

  v116 = v18;
  v34 = v127;
  *&v125 = 0;
  (*(v25 + 16))(v127, v97, v24);
  v35 = v125;
  Model.init(contentsOf:)(v34);
  *&v125 = v35;
  if (v35)
  {
LABEL_19:
    (*(v25 + 8))(v31, v24);
    return;
  }

  v114 = v97;
  v113 = v24;
  v112 = v25;
  Model.specificationVersion.setter(4);
  v36 = v123;
  v123;
  Model.predictedFeatureName.setter(v120, v36);
  Model.modelDescription.setter(0xD00000000000001CLL, "SNVGGEmbeddingExtractor8" + 0x8000000000000000);
  FeatureDescription.init()();
  v105 = "Feature embedding for VGGish" + 0x8000000000000000;
  FeatureDescription.name.setter(0xD000000000000011, "Feature embedding for VGGish" + 0x8000000000000000);
  LODWORD(v127) = enum case for FeatureType.ShapedArrayParameters.DataType.float32(_:);
  v37 = v115;
  v100 = *(v115 + 104);
  v38 = v122;
  v39 = v121;
  v100(v122, enum case for FeatureType.ShapedArrayParameters.DataType.float32(_:), v121);
  v40 = v106;
  static FeatureType.shapedArray(dataType:shape:optional:)(v38, &outlined read-only object #0 of static MLSoundClassifier.VGGishFeatureExtractor.buildFeatureEmbeddingNeuralNetworkSpec(outputName:), 0);
  v115 = *(v37 + 8);
  (v115)(v38, v39);
  v41 = v118;
  FeatureDescription.type.setter(v40);
  v102 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>);
  v42 = v116;
  v43 = *(v116 + 80);
  v44 = (v43 + 32) & ~*(v116 + 80);
  v103 = v44 + *(v116 + 72);
  v101 = v43 | 7;
  v45 = swift_allocObject(v102, v103, v43 | 7);
  *(v45 + 16) = 1;
  *(v45 + 24) = 2;
  v104 = *(v42 + 16);
  v104(v45 + v44, v41, v117);
  Model.inputs.setter(v45);
  FeatureDescription.init()();
  v46 = v123;
  v123;
  FeatureDescription.name.setter(v120, v46);
  v47 = v122;
  v48 = v121;
  v100(v122, v127, v121);
  v49 = v106;
  static FeatureType.shapedArray(dataType:shape:optional:)(v47, &outlined read-only object #1 of static MLSoundClassifier.VGGishFeatureExtractor.buildFeatureEmbeddingNeuralNetworkSpec(outputName:), 0);
  (v115)(v47, v48);
  v50 = v119;
  FeatureDescription.type.setter(v49);
  v51 = swift_allocObject(v102, v103, v101);
  *(v51 + 16) = 1;
  *(v51 + 24) = 2;
  v104(v51 + v44, v50, v117);
  Model.outputs.setter(v51);
  v52 = v99;
  Model.kind.getter();
  v53 = v52;
  v54 = v52;
  v55 = v107;
  v56 = v108;
  v57 = (*(v108 + 88))(v54, v107);
  if (v57 != enum case for ModelKind.neuralNetwork(_:))
  {
    *&v125 = *(v56 + 8);
    (v125)(v53, v55);
    *&v98[0] = 0;
    *(&v98[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v90._object = "preprocessedAudio" + 0x8000000000000000;
    v90._countAndFlagsBits = 0xD000000000000029;
    String.append(_:)(v90);
    v91 = v109;
    Model.kind.getter();
    _print_unlocked<A, B>(_:_:)(v91, v98, v55, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    (v125)(v91, v55);
    v90._countAndFlagsBits = 0x64616574736E6920;
    v90._object = 0xE90000000000002ELL;
    String.append(_:)(v90);
    v125 = v98[0];
    v90._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v92 = swift_allocError(&type metadata for MLCreateError, v90._object, 0, 0);
    *v93 = v125;
    *(v93 + 16) = 0;
    *(v93 + 32) = 0;
    *(v93 + 48) = 2;
    *&v125 = v92;
    swift_willThrow(&type metadata for MLCreateError, v90._object);
    v94 = *(v116 + 8);
    v95 = v117;
    v94(v119, v117);
    v94(v118, v95);
    v96 = type metadata accessor for Model(0);
    (*(*(v96 - 8) + 8))(v126, v96);
    v25 = v112;
    v24 = v113;
    v31 = v114;
    goto LABEL_19;
  }

  LODWORD(v121) = v57;
  (*(v56 + 96))(v53, v55);
  (*(v111 + 32))(v124, v53, v110);
  v127 = NeuralNetwork.layers.modify(v98);
  v59 = v58;
  v60 = *v58;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v58);
  *v59 = v60;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v60 = specialized _ArrayBuffer._consumeAndCreateNew()(v60);
    *v59 = v60;
  }

  if (!v60[2])
  {
    BUG();
  }

  v122 = *(type metadata accessor for NeuralNetwork.Layer(0) - 8);
  v62 = (v122[80] + 32) & ~v122[80];
  v63 = NeuralNetwork.Layer.inputNames.modify(v97);
  v65 = v64;
  v66 = *v64;
  v67 = swift_isUniquelyReferenced_nonNull_native(*v64);
  *v65 = v66;
  if (!v67)
  {
    v66 = specialized _ArrayBuffer._consumeAndCreateNew()(v66);
    *v65 = v66;
  }

  if (!v66[2])
  {
    BUG();
  }

  v68 = v66[5];
  v66[4] = 0xD000000000000011;
  v66[5] = v105;
  v68;
  v63(v97, 0);
  (v127)(v98, 0);
  v69 = NeuralNetwork.layers.getter();
  v70 = *(v69 + 16);
  v69;
  v123;
  v127 = NeuralNetwork.layers.modify(v98);
  v72 = v71;
  v73 = *v71;
  v74 = swift_isUniquelyReferenced_nonNull_native(*v71);
  *v72 = v73;
  if (!v74)
  {
    v73 = specialized _ArrayBuffer._consumeAndCreateNew()(v73);
    *v72 = v73;
  }

  if (!v70)
  {
    BUG();
  }

  if (v70 > v73[2])
  {
    BUG();
  }

  v75 = v73 + v62 + *(v122 + 9) * (v70 - 1);
  v76 = NeuralNetwork.Layer.outputNames.modify(v97);
  v78 = v77;
  v79 = *v77;
  v80 = swift_isUniquelyReferenced_nonNull_native(*v77);
  *v78 = v79;
  if (!v80)
  {
    v79 = specialized _ArrayBuffer._consumeAndCreateNew()(v79);
    *v78 = v79;
  }

  v81 = v123;
  v82 = v124;
  if (!v79[2])
  {
    BUG();
  }

  v83 = v79[5];
  v79[4] = v120;
  v79[5] = v81;
  v83;
  v76(v97, 0);
  (v127)(v98, 0);
  v84 = v109;
  v85 = v82;
  v86 = v110;
  v87 = v111;
  (*(v111 + 16))(v109, v85, v110);
  (*(v108 + 104))(v84, v121, v107);
  Model.kind.setter(v84);
  (*(v87 + 8))(v124, v86);
  v88 = *(v116 + 8);
  v89 = v117;
  v88(v119, v117);
  v88(v118, v89);
  (*(v112 + 8))(v114, v113);
}

uint64_t static MLSoundClassifier.VGGishFeatureExtractor.buildCoreMLSpec(outputName:)(uint64_t a1, uint64_t a2)
{
  v42 = v3;
  v4 = v2;
  v34 = type metadata accessor for ModelKind(0);
  v33 = *(v34 - 8);
  v5 = *(v33 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v35 = &v33;
  v41 = type metadata accessor for Model(0);
  v39 = *(v41 - 8);
  v8 = *(v39 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v38 = &v33;
  v11 = alloca(v8);
  v12 = alloca(v8);
  Model.init()();
  Model.specificationVersion.setter(4);
  a2;
  v40 = a1;
  Model.predictedFeatureName.setter(a1, a2);
  v37 = v4;
  Model.modelDescription.setter(0xD00000000000002CLL, "in retrieved features." + 0x8000000000000000);
  v13 = v42;
  static MLSoundClassifier.VGGishFeatureExtractor.buildSoundAnalysisPreprocessingSpec()();
  if (v13)
  {
    return (*(v39 + 8))(v37, v41);
  }

  v14 = v39;
  static MLSoundClassifier.VGGishFeatureExtractor.buildFeatureEmbeddingNeuralNetworkSpec(outputName:)(v40, a2);
  v42 = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Model>);
  v40 = *(v14 + 72);
  v17 = *(v14 + 80);
  v18 = (v17 + 32) & ~*(v14 + 80);
  v19 = swift_allocObject(v16, v18 + 2 * v40, v17 | 7);
  v36 = &v33;
  v20 = v19;
  *(v19 + 16) = 2;
  *(v19 + 24) = 4;
  v21 = v19 + v18;
  v22 = *(v14 + 16);
  v23 = v41;
  v22(v21, &v33, v41);
  v24 = v40 + v21;
  v25 = v38;
  v22(v24, v38, v23);
  v26 = v35;
  PipelineClassifierConfiguration.init(models:names:)(v20, _swiftEmptyArrayStorage);
  (*(v33 + 104))(v26, enum case for ModelKind.pipelineClassifier(_:), v34);
  Model.kind.setter(v26);
  v27 = v36;
  v28 = Model.inputs.getter();
  Model.inputs.setter(v28);
  v29 = Model.outputs.getter();
  Model.outputs.setter(v29);
  v30 = *(v39 + 8);
  v31 = v25;
  v32 = v41;
  v30(v31, v41);
  return (v30)(v27, v32);
}

uint64_t *initializeBufferWithCopyOfBuffer for MLLinearRegressor.PersistentParameters(uint64_t *a1, uint64_t *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = type metadata accessor for DataFrame(0);
    v21 = *(*(v6 - 8) + 16);
    v21(a1, a2, v6);
    v7 = a3[5];
    __dst = a1 + v7;
    v8 = a2 + v7;
    if (__swift_getEnumTagSinglePayload(v8, 1, v6))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
      memcpy(__dst, v8, *(*(v9 - 8) + 64));
    }

    else
    {
      v21(__dst, v8, v6);
      __swift_storeEnumTagSinglePayload(__dst, 0, 1, v6);
    }

    v11 = a3[6];
    *(a1 + v11) = *(a2 + v11);
    v12 = *(a2 + v11 + 8);
    *(v3 + v11 + 8) = v12;
    v13 = a3[7];
    v14 = *(a2 + v13);
    *(v3 + v13) = v14;
    v15 = a3[8];
    v16 = v3 + v15;
    v17 = a2 + v15;
    v18 = *(a2 + v15 + 24);
    v12;
    v14;
    if (v18)
    {
      *(v16 + 3) = v18;
      (**(v18 - 8))(v16, v17, v18);
    }

    else
    {
      v19 = *v17;
      *(v16 + 1) = *(v17 + 1);
      *v16 = v19;
    }

    *(v16 + 2) = *(v17 + 2);
    *(v16 + 3) = *(v17 + 3);
    *(v16 + 8) = *(v17 + 8);
    v16[72] = v17[72];
  }

  return v3;
}

uint64_t destroy for MLLinearRegressor.PersistentParameters(uint64_t a1, int *a2)
{
  v2 = type metadata accessor for DataFrame(0);
  v3 = *(*(v2 - 8) + 8);
  v3(a1, v2);
  v4 = a1 + a2[5];
  if (!__swift_getEnumTagSinglePayload(v4, 1, v2))
  {
    v3(v4, v2);
  }

  *(a1 + a2[6] + 8);
  *(a1 + a2[7]);
  result = a2[8];
  if (*(a1 + result + 24))
  {
    return __swift_destroy_boxed_opaque_existential_1Tm((result + a1));
  }

  return result;
}

char *initializeWithCopy for MLLinearRegressor.PersistentParameters(char *a1, char *a2, int *a3)
{
  v5 = type metadata accessor for DataFrame(0);
  v19 = *(*(v5 - 8) + 16);
  v19(a1, a2, v5);
  v6 = a3[5];
  __dst = &a1[v6];
  v7 = &a2[v6];
  if (__swift_getEnumTagSinglePayload(v7, 1, v5))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(__dst, v7, *(*(v8 - 8) + 64));
  }

  else
  {
    v19(__dst, v7, v5);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v5);
  }

  v9 = a3[6];
  *&a1[v9] = *&a2[v9];
  v10 = *&a2[v9 + 8];
  *&a1[v9 + 8] = v10;
  v11 = a3[7];
  v12 = *&a2[v11];
  *&a1[v11] = v12;
  v13 = a3[8];
  v14 = &a1[v13];
  v15 = &a2[v13];
  v16 = *&a2[v13 + 24];
  v10;
  v12;
  if (v16)
  {
    *(v14 + 3) = v16;
    (**(v16 - 8))(v14, v15, v16);
  }

  else
  {
    v17 = *v15;
    *(v14 + 1) = v15[1];
    *v14 = v17;
  }

  *(v14 + 2) = v15[2];
  *(v14 + 3) = v15[3];
  *(v14 + 8) = *(v15 + 8);
  v14[72] = *(v15 + 72);
  return a1;
}

uint64_t assignWithCopy for MLLinearRegressor.PersistentParameters(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = type metadata accessor for DataFrame(0);
  v27 = *(v5 - 8);
  v26 = *(v27 + 24);
  v26(a1, a2, v5);
  v25 = a3;
  v6 = a3[5];
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  LODWORD(a3) = __swift_getEnumTagSinglePayload(v7, 1, v5);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v5);
  if (a3)
  {
    if (EnumTagSinglePayload)
    {
      v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
LABEL_6:
      memcpy(v7, v8, v11);
      goto LABEL_9;
    }

    (*(v27 + 16))(v7, v8, v5);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v5);
  }

  else
  {
    if (EnumTagSinglePayload)
    {
      (*(v27 + 8))(v7, v5, v10, v26);
      v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      goto LABEL_6;
    }

    v26(v7, v8, v5);
  }

LABEL_9:
  v12 = v25[6];
  *(a1 + v12) = *(a2 + v12);
  v13 = *(a2 + v12 + 8);
  v14 = *(a1 + v12 + 8);
  *(a1 + v12 + 8) = v13;
  v13;
  v14;
  v15 = v25[7];
  v16 = *(a2 + v15);
  v17 = *(a1 + v15);
  *(a1 + v15) = v16;
  v16;
  v17;
  v18 = v25[8];
  v19 = a1 + v18;
  v20 = (a2 + v18);
  v21 = *(a2 + v18 + 24);
  if (!*(a1 + v18 + 24))
  {
    if (v21)
    {
      *(v19 + 24) = v21;
      (**(v21 - 8))(v19, v20);
      goto LABEL_16;
    }

LABEL_15:
    v23 = *v20;
    *(v19 + 16) = v20[1];
    *v19 = v23;
    goto LABEL_16;
  }

  v22 = (a1 + v18);
  if (!v21)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    goto LABEL_15;
  }

  __swift_assign_boxed_opaque_existential_0(v22, (a2 + v18));
LABEL_16:
  *(v19 + 32) = *(v20 + 4);
  *(v19 + 40) = *(v20 + 5);
  *(v19 + 48) = *(v20 + 6);
  *(v19 + 56) = *(v20 + 7);
  *(v19 + 64) = *(v20 + 8);
  *(v19 + 72) = *(v20 + 72);
  return a1;
}

uint64_t assignWithTake for MLLinearRegressor.PersistentParameters(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = type metadata accessor for DataFrame(0);
  v22 = *(v5 - 8);
  v21 = *(v22 + 40);
  v21(a1, a2, v5);
  v20 = a3;
  v6 = a3[5];
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  LODWORD(a3) = __swift_getEnumTagSinglePayload(v7, 1, v5);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v5);
  if (a3)
  {
    if (EnumTagSinglePayload)
    {
      v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
LABEL_6:
      memcpy(v7, v8, v11);
      goto LABEL_9;
    }

    (*(v22 + 32))(v7, v8, v5);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v5);
  }

  else
  {
    if (EnumTagSinglePayload)
    {
      (*(v22 + 8))(v7, v5, v10, v21);
      v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      goto LABEL_6;
    }

    v21(v7, v8, v5);
  }

LABEL_9:
  v12 = v20[6];
  *(a1 + v12) = *(a2 + v12);
  v13 = *(a1 + v12 + 8);
  *(a1 + v12 + 8) = *(a2 + v12 + 8);
  v13;
  v14 = v20[7];
  v15 = *(a1 + v14);
  *(a1 + v14) = *(a2 + v14);
  v15;
  v16 = v20[8];
  v17 = (a1 + v16);
  if (*(a1 + v16 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + v16));
  }

  v18 = *(a2 + v16);
  v17[1] = *(a2 + v16 + 16);
  *v17 = v18;
  *(a1 + v16 + 32) = *(a2 + v16 + 32);
  *(a1 + v16 + 40) = *(a2 + v16 + 40);
  *(a1 + v16 + 56) = *(a2 + v16 + 56);
  *(a1 + v16 + 72) = *(a2 + v16 + 72);
  return a1;
}

uint64_t sub_1101B5(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a1;
  v5 = type metadata accessor for DataFrame(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
  if (*(*(v5 - 8) + 84) == a2)
  {
    v4 = *(a3 + 20) + a1;
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  result = 0;
  if ((*(a1 + *(a3 + 24) + 8) & 0xFFFFFFFF00000001) == 0)
  {
    return (*(a1 + *(a3 + 24) + 8) >> 1) + 1;
  }

  return result;
}

uint64_t sub_110249(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = type metadata accessor for DataFrame(0);
  if (*(*(v7 - 8) + 84) == a3)
  {
    return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
  }

  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
  if (*(*(v7 - 8) + 84) == a3)
  {
    v6 = *(a4 + 20) + a1;
    return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
  }

  result = *(a4 + 24);
  *(a1 + result + 8) = 2 * (a2 - 1);
  return result;
}

uint64_t type metadata accessor for MLLinearRegressor.PersistentParameters(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLLinearRegressor.PersistentParameters;
  if (!type metadata singleton initialization cache for MLLinearRegressor.PersistentParameters)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLLinearRegressor.PersistentParameters);
  }

  return result;
}

uint64_t type metadata completion function for MLLinearRegressor.PersistentParameters(uint64_t a1)
{
  result = type metadata accessor for DataFrame(319);
  if (v2 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    result = type metadata accessor for DataFrame?(319);
    if (v3 <= 0x3F)
    {
      v4[1] = *(result - 8) + 64;
      v4[2] = &unk_341788;
      v4[3] = &value witness table for Builtin.BridgeObject + 64;
      v4[4] = &unk_3417A0;
      swift_initStructMetadata(a1, 256, 5, v4, a1 + 16);
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for DataFrame?(uint64_t a1)
{
  result = lazy cache variable for type metadata for DataFrame?;
  if (!lazy cache variable for type metadata for DataFrame?)
  {
    v2 = type metadata accessor for DataFrame(255);
    result = type metadata accessor for Optional(a1, v2);
    if (!v3)
    {
      lazy cache variable for type metadata for DataFrame? = result;
    }
  }

  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML17MLLinearRegressorV15ModelParametersV010ValidationD0OTg503_s8g4ML17ij13V20Persistentl48V16sessionDirectoryAE10Foundation3URLV_tKcfcAC05k5F0V14md3O07c5M00M5E17VcAMmcfu_AmPcfu0_AOXMtTf1ncn_n(uint64_t a1)
{
  v19 = v1;
  v2 = type metadata accessor for DataFrame(0);
  v17 = *(v2 - 8);
  v3 = *(v17 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  outlined init with copy of DataFrame?(a1, &v16);
  if (__swift_getEnumTagSinglePayload(&v16, 1, v2) == 1)
  {
    v9 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
    v10 = v19;
    v11 = 1;
    v12 = v9;
  }

  else
  {
    v13 = v17;
    (*(v17 + 32))(&v16, &v16, v2);
    v14 = v19;
    (*(v13 + 16))(v19, &v16, v2);
    v18 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
    swift_storeEnumTagMultiPayload(v14, v18, 2);
    (*(v13 + 8))(&v16, v2);
    v10 = v14;
    v11 = 0;
    v12 = v18;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

NSURL *MLLinearRegressor.PersistentParameters.init(sessionDirectory:)(uint64_t *a1)
{
  v151 = v2;
  v4 = v1;
  v129 = type metadata accessor for CSVType(0);
  v117 = *(v129 - 8);
  v5 = *(v117 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v128 = &v115;
  v8 = *(*(type metadata accessor for CSVReadingOptions(0) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v116 = &v115;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v119 = &v115;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLinearRegressor.ModelParameters.ValidationData?) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v139 = &v115;
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v132 = &v115;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v148 = &v115;
  v21 = type metadata accessor for DataFrame(0);
  v131 = *(v21 - 8);
  v22 = *(v131 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v130 = &v115;
  v25 = alloca(v22);
  v26 = alloca(v22);
  v138 = &v115;
  v141 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  v27 = *(*(v141 - 8) + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v134 = &v115;
  v30 = alloca(v27);
  v31 = alloca(v27);
  v115 = &v115;
  v32 = alloca(v27);
  v33 = alloca(v27);
  v143 = &v115;
  v156 = type metadata accessor for URL(0);
  v150 = *(v156 - 8);
  v34 = *(v150 + 8);
  v35 = alloca(v34);
  v36 = alloca(v34);
  v127 = &v115;
  v37 = alloca(v34);
  v38 = alloca(v34);
  v133 = &v115;
  v39 = alloca(v34);
  v40 = alloca(v34);
  v118 = &v115;
  v41 = alloca(v34);
  v42 = alloca(v34);
  v135 = &v115;
  v43 = alloca(v34);
  v44 = alloca(v34);
  v142 = &v115;
  v45 = alloca(v34);
  v46 = alloca(v34);
  v137 = &v115;
  v47 = alloca(v34);
  v48 = alloca(v34);
  v136 = type metadata accessor for MLLinearRegressor.PersistentParameters(0);
  v49 = *(v136 + 20);
  v147 = v4;
  v126 = v4 + v49;
  v140 = v21;
  __swift_storeEnumTagSinglePayload(v4 + v49, 1, 1, v21);
  URL.appendingPathComponent(_:)(0xD000000000000010, "ObjectDetectorMetrics." + 0x8000000000000000);
  v50 = v151;
  v51 = Data.init(contentsOf:options:)(&v115, 0);
  v151 = v50;
  if (v50)
  {
    v53 = *(v150 + 1);
    v54 = v156;
    v53(a1, v156);
    v53(&v115, v54);
LABEL_37:
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v126, &demangling cache variable for type metadata for DataFrame?);
    return __stack_chk_guard;
  }

  v55 = v51;
  v56 = v52;
  v149 = a1;
  v57 = v156;
  v144 = *(v150 + 1);
  v144(&v115, v156);
  v58 = objc_opt_self(NSPropertyListSerialization);
  v59.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v146 = v55;
  isa = v59.super.isa;
  v145 = v56;
  v158[0] = 0;
  v61 = [v58 propertyListWithData:v59.super.isa options:0 format:0 error:v158];
  v62 = v61;

  v63 = v158[0];
  if (!v62)
  {
    v89 = v63;
    _convertNSErrorToError(_:)(v63);

    swift_willThrow(v89, "propertyListWithData:options:format:error:");
    outlined consume of Data._Representation(v146, v145);
    v144(v149, v57);
    goto LABEL_37;
  }

  _bridgeAnyObjectToAny(_:)(v62);
  swift_unknownObjectRelease(v62);
  outlined init with copy of Any(v160, v158);
  v64 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
  if (!swift_dynamicCast(v157, v158, &type metadata for Any + 8, v64, 6))
  {
    v90 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v90, 0, 0);
    *v91 = 0xD000000000000037;
    *(v91 + 8) = "parameters.plist" + 0x8000000000000000;
    *(v91 + 16) = 0;
    *(v91 + 32) = 0;
    *(v91 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v90);
    outlined consume of Data._Representation(v146, v145);
    v92 = v149;
    v93 = v156;
LABEL_36:
    v144(v92, v93);
    __swift_destroy_boxed_opaque_existential_1Tm(v160);
    goto LABEL_37;
  }

  v65 = v157[0];
  specialized Dictionary.subscript.getter(0x746567726174, 0xE600000000000000, v157[0]);
  if (!v159)
  {
    v65;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v158, &demangling cache variable for type metadata for Any?);
LABEL_26:
    v67 = v156;
LABEL_35:
    v96 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v96, 0, 0);
    *v97 = 0xD000000000000034;
    *(v97 + 8) = "ad training parameters." + 0x8000000000000000;
    *(v97 + 16) = 0;
    *(v97 + 32) = 0;
    *(v97 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v96);
    outlined consume of Data._Representation(v146, v145);
    v92 = v149;
    v93 = v67;
    goto LABEL_36;
  }

  v155 = v65;
  v66 = swift_dynamicCast(v157, v158, &type metadata for Any + 8, &type metadata for String, 6);
  v67 = v156;
  if (!v66)
  {
    v94 = v155;
LABEL_28:
    v94;
    goto LABEL_35;
  }

  v120 = v157[0];
  v68 = v157[1];
  v69 = v155;
  specialized Dictionary.subscript.getter(0xD000000000000010, ("training parameters." + 0x8000000000000000), v155);
  if (!v159)
  {
    v95 = v68;
LABEL_31:
    v95;
    v69;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v158, &demangling cache variable for type metadata for Any?);
LABEL_34:
    v67 = v156;
    goto LABEL_35;
  }

  v153 = v68;
  v70 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  if (!swift_dynamicCast(v157, v158, &type metadata for Any + 8, v70, 6))
  {
LABEL_33:
    v153;
    v155;
    goto LABEL_34;
  }

  v71 = v157[0];
  v69 = v155;
  specialized Dictionary.subscript.getter(0x617265744978616DLL, 0xED0000736E6F6974, v155);
  if (!v159)
  {
    v71;
    v95 = v153;
    goto LABEL_31;
  }

  if (!swift_dynamicCast(v157, v158, &type metadata for Any + 8, &type metadata for Int, 6))
  {
    v71;
    goto LABEL_33;
  }

  v152 = v71;
  v121 = v157[0];
  v72 = v155;
  specialized Dictionary.subscript.getter(0x746C616E6550316CLL, 0xE900000000000079, v155);
  v67 = v156;
  if (!v159)
  {
    goto LABEL_39;
  }

  if (!swift_dynamicCast(v157, v158, &type metadata for Any + 8, &type metadata for Double, 6))
  {
    v152;
    v153;
    v72;
    goto LABEL_35;
  }

  v122 = v157[0];
  specialized Dictionary.subscript.getter(0x746C616E6550326CLL, 0xE900000000000079, v72);
  if (!v159)
  {
LABEL_39:
    v152;
    v153;
    v72;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v158, &demangling cache variable for type metadata for Any?);
    goto LABEL_35;
  }

  if (!swift_dynamicCast(v157, v158, &type metadata for Any + 8, &type metadata for Double, 6))
  {
    goto LABEL_41;
  }

  v123 = v157[0];
  specialized Dictionary.subscript.getter(0x657A695370657473, 0xE800000000000000, v155);
  if (!v159)
  {
LABEL_42:
    v152;
    v153;
    v155;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v158, &demangling cache variable for type metadata for Any?);
    goto LABEL_35;
  }

  if (!swift_dynamicCast(v157, v158, &type metadata for Any + 8, &type metadata for Double, 6))
  {
LABEL_41:
    v152;
    v153;
    v94 = v155;
    goto LABEL_28;
  }

  v124 = v157[0];
  specialized Dictionary.subscript.getter(0xD000000000000014, ("oating-point numbers." + 0x8000000000000000), v155);
  if (!v159)
  {
    goto LABEL_42;
  }

  if (!swift_dynamicCast(v157, v158, &type metadata for Any + 8, &type metadata for Double, 6))
  {
    v152;
    v153;
    v99 = v155;
LABEL_46:
    v99;
    goto LABEL_26;
  }

  v125 = v157[0];
  v73 = v155;
  specialized Dictionary.subscript.getter(0xD000000000000010, ("convergenceThreshold" + 0x8000000000000000), v155);
  v73;
  if (!v159)
  {
    v152;
    v153;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v158, &demangling cache variable for type metadata for Any?);
    goto LABEL_26;
  }

  if (!swift_dynamicCast(v157, v158, &type metadata for Any + 8, &type metadata for Bool, 6))
  {
    v152;
    v99 = v153;
    goto LABEL_46;
  }

  v154 = v157[0];
  v74 = v136;
  v75 = *(v136 + 24);
  v76 = v147;
  *(v147 + v75) = v120;
  *(v76 + v75 + 8) = v153;
  *(v76 + *(v74 + 28)) = v152;
  v77 = v143;
  *v143 = 0;
  *(v77 + 16) = 256;
  swift_storeEnumTagMultiPayload(v77, v141, 0);
  v78 = *(v74 + 32);
  v155 = v76 + v78;
  *(v76 + v78 + 16) = 0;
  *(v76 + v78) = 0;
  *(v76 + v78 + 32) = 10;
  *(v76 + v78 + 40) = _mm_loadh_ps(&qword_33FD10);
  *(v76 + v78 + 56) = xmmword_33FD20;
  *(v76 + v78 + 72) = 1;
  v79 = v115;
  outlined init with copy of MLLinearRegressor.ModelParameters.ValidationData(v77, v115);
  v159 = v141;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v158);
  outlined init with take of MLLinearRegressor.ModelParameters.ValidationData(v79, boxed_opaque_existential_0);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v158, v155, &demangling cache variable for type metadata for Any?);
  outlined destroy of MLLinearRegressor.ModelParameters.ValidationData(v77);
  *(v76 + v78 + 32) = v121;
  *(v76 + v78 + 40) = v122;
  *(v76 + v78 + 48) = v123;
  *(v76 + v78 + 56) = v124;
  *(v76 + v78 + 64) = v125;
  *(v76 + v78 + 72) = v154;
  v81 = v137;
  URL.appendingPathComponent(_:)(1635017060, 0xE400000000000000);
  URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEE00617461446E6FLL);
  v82 = v135;
  v150 = *(v150 + 2);
  v150(v135, v81, v156);
  v83 = v151;
  DataFrame.init(contentsOfSFrameDirectory:columns:rows:)(v82, 0, 0, 0, 1);
  v143 = v83;
  if (v83)
  {
    v150(v127, v137, v156);
    v151 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11TabularData7CSVTypeOTt0gq5(_swiftEmptyArrayStorage);
    v148 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 1 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v84 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 2 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v85 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 3 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v86 = *(v117 + 104);
    v87 = v128;
    LODWORD(v135) = enum case for CSVType.double(_:);
    v138 = v86;
    (v86)(v128, enum case for CSVType.double(_:), v129);
    v88 = v116;
    CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)(1, v148, v84, v85, v87, 1, 1, 0, 44, 0xE100000000000000, 92, 0xE100000000000000);
    DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)(v127, 0, 0, 0, 1, v151, v88);
    v151 = 0;
    (*(v131 + 32))(v147, v130, v140);
    v150(v133, v142, v156);
    v150 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11TabularData7CSVTypeOTt0gq5(_swiftEmptyArrayStorage);
    v147 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 1 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v136 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 2 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v103 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 3 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v104 = v128;
    (v138)(v128, v135, v129);
    v105 = 1;
    v106 = v119;
    CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)(1, v147, v136, v103, v104, 1, 1, 0, 44, 0xE100000000000000, 92, 0xE100000000000000);
    v107 = v151;
    DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)(v133, 0, 0, 0, 1, v150, v106);
    if (v107)
    {
      v107;
    }

    else
    {
      v105 = 0;
    }

    v143;
    v108 = v132;
    __swift_storeEnumTagSinglePayload(v132, v105, 1, v140);
    v148 = v108;
  }

  else
  {
    (*(v131 + 32))(v147, v138, v140);
    v100 = v118;
    v150(v118, v142, v156);
    v101 = 1;
    v102 = v143;
    DataFrame.init(contentsOfSFrameDirectory:columns:rows:)(v100, 0, 0, 0, 1);
    if (v102)
    {
      v102;
    }

    else
    {
      v101 = 0;
    }

    __swift_storeEnumTagSinglePayload(v148, v101, 1, v140);
  }

  v109 = v126;
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v148, v126, &demangling cache variable for type metadata for DataFrame?);
  v110 = v139;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML17MLLinearRegressorV15ModelParametersV010ValidationD0OTg503_s8g4ML17ij13V20Persistentl48V16sessionDirectoryAE10Foundation3URLV_tKcfcAC05k5F0V14md3O07c5M00M5E17VcAMmcfu_AmPcfu0_AOXMtTf1ncn_n(v109);
  if (__swift_getEnumTagSinglePayload(v110, 1, v141) == 1)
  {
    v111 = v141;
    swift_storeEnumTagMultiPayload(v134, v141, 3);
    if (__swift_getEnumTagSinglePayload(v139, 1, v111) != 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v139, &demangling cache variable for type metadata for MLLinearRegressor.ModelParameters.ValidationData?);
    }
  }

  else
  {
    outlined init with take of MLLinearRegressor.ModelParameters.ValidationData(v139, v134);
  }

  v159 = v141;
  v112 = __swift_allocate_boxed_opaque_existential_0(v158);
  outlined init with take of MLLinearRegressor.ModelParameters.ValidationData(v134, v112);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v158, v155, &demangling cache variable for type metadata for Any?);
  outlined consume of Data._Representation(v146, v145);
  v113 = v156;
  v114 = v144;
  v144(v149, v156);
  v114(v142, v113);
  v114(v137, v113);
  __swift_destroy_boxed_opaque_existential_1Tm(v160);
  return __stack_chk_guard;
}

NSURL *MLLinearRegressor.PersistentParameters.save(toSessionDirectory:)(uint64_t a1)
{
  v65 = v1;
  v56 = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v62 = &v51;
  v60 = type metadata accessor for CSVWritingOptions(0);
  v57 = *(v60 - 8);
  v6 = *(v57 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v55 = &v51;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v52 = &v51;
  v64 = type metadata accessor for URL(0);
  v66 = *(v64 - 8);
  v11 = *(v66 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v58 = &v51;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v53 = &v51;
  v16 = alloca(v11);
  v17 = alloca(v11);
  v59 = &v51;
  v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
  inited = swift_initStackObject(v18, v68);
  *(inited + 16) = 8;
  *(inited + 24) = 16;
  *(inited + 32) = 0x746567726174;
  *(inited + 40) = 0xE600000000000000;
  v20 = type metadata accessor for MLLinearRegressor.PersistentParameters(0);
  v21 = v20[6];
  v22 = *(v2 + v21);
  v63 = *(v2 + v21 + 8);
  v23 = v63;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v22;
  *(inited + 56) = v23;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = "training parameters." + 0x8000000000000000;
  v24 = *(v2 + v20[7]);
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  *(inited + 96) = v24;
  strcpy((inited + 128), "maxIterations");
  *(inited + 142) = -4864;
  v54 = v20;
  v25 = v20[8];
  v26 = *(v2 + v25 + 32);
  *(inited + 168) = &type metadata for Int;
  *(inited + 144) = v26;
  *(inited + 176) = 0x746C616E6550316CLL;
  *(inited + 184) = 0xE900000000000079;
  v27 = *(v2 + v25 + 40);
  *(inited + 216) = &type metadata for Double;
  *(inited + 192) = v27;
  *(inited + 224) = 0x746C616E6550326CLL;
  *(inited + 232) = 0xE900000000000079;
  v28 = *(v2 + v25 + 48);
  *(inited + 264) = &type metadata for Double;
  *(inited + 240) = v28;
  *(inited + 272) = 0x657A695370657473;
  *(inited + 280) = 0xE800000000000000;
  v29 = *(v2 + v25 + 56);
  *(inited + 312) = &type metadata for Double;
  *(inited + 288) = v29;
  *(inited + 320) = 0xD000000000000014;
  *(inited + 328) = "oating-point numbers." + 0x8000000000000000;
  v30 = *(v2 + v25 + 64);
  *(inited + 360) = &type metadata for Double;
  *(inited + 336) = v30;
  *(inited + 368) = 0xD000000000000010;
  *(inited + 376) = "convergenceThreshold" + 0x8000000000000000;
  v51 = v2;
  LOBYTE(v25) = *(v2 + v25 + 72);
  *(inited + 408) = &type metadata for Bool;
  *(inited + 384) = v25;
  v63;
  v24;
  v31 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
  v32 = objc_opt_self(NSPropertyListSerialization);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v31;
  v67 = 0;
  v34 = [v32 dataWithPropertyList:isa format:200 options:0 error:&v67];
  v35 = v34;

  v36 = v67;
  if (v35)
  {
    v63 = static Data._unconditionallyBridgeFromObjectiveC(_:)(v35);
    v38 = v37;

    v39 = v59;
    URL.appendingPathComponent(_:)(0xD000000000000010, "ObjectDetectorMetrics." + 0x8000000000000000);
    v40 = v63;
    v61 = v38;
    v41 = v65;
    Data.write(to:options:)(v39, 0, v63, v38);
    if (v41)
    {
      (*(v66 + 8))(v39, v64);
      outlined consume of Data._Representation(v40, v61);
    }

    else
    {
      v65 = *(v66 + 8);
      v65(v39, v64);
      v43 = v53;
      URL.appendingPathComponent(_:)(1635017060, 0xE400000000000000);
      v44 = v52;
      CSVWritingOptions.init(includesHeader:dateFormat:nilEncoding:trueEncoding:falseEncoding:newline:delimiter:)(1, 0, 0, 0, 0xE000000000000000, 1702195828, 0xE400000000000000, 0x65736C6166, 0xE500000000000000, 10, 0xE100000000000000, 44, 0xE100000000000000);
      v66 = type metadata accessor for DataFrame(0);
      v45 = v51;
      DataFrameProtocol.writeCSV(to:options:)(v43, v44, v66, &protocol witness table for DataFrame);
      v59 = *(v57 + 8);
      (v59)(v44, v60);
      v65(v43, v64);
      v46 = v54[5] + v45;
      v47 = v62;
      outlined init with copy of DataFrame?(v46, v62);
      if (__swift_getEnumTagSinglePayload(v47, 1, v66) == 1)
      {
        outlined consume of Data._Representation(v63, v61);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v47, &demangling cache variable for type metadata for DataFrame?);
      }

      else
      {
        v49 = v58;
        URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEE00617461446E6FLL);
        v50 = v55;
        CSVWritingOptions.init(includesHeader:dateFormat:nilEncoding:trueEncoding:falseEncoding:newline:delimiter:)(1, 0, 0, 0, 0xE000000000000000, 1702195828, 0xE400000000000000, 0x65736C6166, 0xE500000000000000, 10, 0xE100000000000000, 44, 0xE100000000000000);
        DataFrameProtocol.writeCSV(to:options:)(v49, v50, v66, &protocol witness table for DataFrame);
        outlined consume of Data._Representation(v63, v61);
        (v59)(v50, v60);
        v65(v58, v64);
        (*(*(v66 - 8) + 8))(v62);
      }
    }
  }

  else
  {
    v42 = v36;
    _convertNSErrorToError(_:)(v36);

    swift_willThrow(v42, "dataWithPropertyList:format:options:error:");
  }

  return __stack_chk_guard;
}

uint64_t outlined init with copy of MLLinearRegressor.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined init with take of MLLinearRegressor.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t outlined init with copy of DataFrame?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

double MLRegressorMetrics.rootMeanSquaredError.getter()
{
  if (*(v0 + 16))
  {
    return -1.0;
  }

  else
  {
    return *(v0 + 8);
  }
}

uint64_t MLRegressorMetrics.init(maximumError:rootMeanSquaredError:)(double a1, double a2)
{
  *result = a1;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

unint64_t MLRegressorMetrics.description.getter()
{
  if (*(v0 + 16))
  {
    return 0xD000000000000038;
  }

  v2 = *v0;
  if (*v0 < 0.0 || *(v0 + 8) < 0.0)
  {
    return 0xD000000000000038;
  }

  v13 = *(v0 + 8);
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v4 = swift_allocObject(v3, 72, 7);
  *(v4 + 2) = 1;
  *(v4 + 3) = 2;
  *(v4 + 7) = &type metadata for Double;
  *(v4 + 8) = &protocol witness table for Double;
  v4[4] = v2;
  v14 = String.init(format:_:)(0xD000000000000010, "root mean squared error." + 0x8000000000000000, v4);
  v6 = v5;
  v7 = swift_allocObject(v3, 72, 7);
  v7[2] = 1;
  v7[3] = 2;
  v7[7] = &type metadata for Double;
  v7[8] = &protocol witness table for Double;
  v7[4] = v13;
  v8 = String.init(format:_:)(0xD00000000000001ELL, "Max error: %.2f\n" + 0x8000000000000000, v7);
  v10 = v9;
  v6;
  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);
  v6;
  v10;
  return v14;
}

uint64_t MLRegressorMetrics.error.getter()
{
  if (*(v0 + 16) != 1)
  {
    return 0;
  }

  v1 = *v0;
  swift_errorRetain(*v0);
  return v1;
}

double MLRegressorMetrics.maximumError.getter()
{
  if (v0[16])
  {
    return -1.0;
  }

  else
  {
    return *v0;
  }
}

unint64_t MLRegressorMetrics.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3)
  {
    swift_errorRetain(*&v1);
  }

  else if (v1 >= 0.0 && v2 >= 0.0)
  {
    v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v5 = swift_allocObject(v15, 72, 7);
    *(v5 + 16) = 1;
    *(v5 + 24) = 2;
    *(v5 + 56) = &type metadata for Double;
    *(v5 + 64) = &protocol witness table for Double;
    *(v5 + 32) = v1;
    v14 = String.init(format:_:)(0xD000000000000010, "root mean squared error." + 0x8000000000000000, v5);
    v7 = v6;
    v8 = swift_allocObject(v15, 72, 7);
    *(v8 + 16) = 1;
    *(v8 + 24) = 2;
    *(v8 + 56) = &type metadata for Double;
    *(v8 + 64) = &protocol witness table for Double;
    *(v8 + 32) = v2;
    v9 = String.init(format:_:)(0xD00000000000001ELL, "Max error: %.2f\n" + 0x8000000000000000, v8);
    v11 = v10;
    v7;
    v12._countAndFlagsBits = v9;
    v12._object = v11;
    String.append(_:)(v12);
    v7;
    v11;
    outlined consume of Result<_RegressorMetrics, Error>(*&v1, *&v2, 0);
    return v14;
  }

  outlined consume of Result<_RegressorMetrics, Error>(*&v1, *&v2, v3);
  return 0xD000000000000038;
}

uint64_t MLRegressorMetrics.playgroundDescription.getter()
{
  v10 = v0;
  v2 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(*v1, v8, v9);
  v3 = MLRegressorMetrics.description.getter();
  v5 = v4;
  outlined consume of Result<_RegressorMetrics, Error>(v2, v8, v9);
  objc_allocWithZone(NSAttributedString);
  v6 = @nonobjc NSAttributedString.init(string:attributes:)(v3, v5, 0);
  result = type metadata accessor for NSAttributedString();
  v10[3] = result;
  *v10 = v6;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MLRegressorMetrics(uint64_t a1, uint64_t a2)
{
  return initializeBufferWithCopyOfBuffer for MLRegressorMetrics(a1, a2);
}

{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(*a2, v3, v4);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return a1;
}

uint64_t assignWithCopy for MLRegressorMetrics(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  outlined consume of Result<_RegressorMetrics, Error>(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for MLRegressorMetrics(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  outlined consume of Result<_RegressorMetrics, Error>(v4, v5, v6);
  return a1;
}

uint64_t MLRecommender.ModelParameters.init(algorithm:threshold:maxCount:nearestItems:maxSimilarityIterations:)(char *a1, uint64_t a2, uint64_t *a3, uint64_t a4, double a5)
{
  v6 = v5;
  v7 = *a1;
  v14 = *a3;
  v15 = *(a3 + 8);
  v8 = type metadata accessor for MLRecommender.ModelParameters(0);
  v9 = v6 + v8[7];
  v10 = type metadata accessor for DataFrame(0);
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  v11 = v8[8];
  *(v6 + v11) = 0;
  *(v6 + v11 + 8) = -1;
  *v6 = v7;
  *(v6 + 8) = a5;
  *(v6 + 16) = a2;
  outlined consume of MLDataTable?(*(v6 + v11), *(v6 + v11 + 8));
  *(v6 + v11) = v14;
  *(v6 + v11 + 8) = v15;
  result = v8[9];
  *(v6 + result) = a4;
  return result;
}

uint64_t type metadata accessor for MLRecommender.ModelParameters(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLRecommender.ModelParameters;
  if (!type metadata singleton initialization cache for MLRecommender.ModelParameters)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLRecommender.ModelParameters);
  }

  return result;
}

uint64_t MLRecommender.ModelParameters.init(algorithm:threshold:maxCount:nearestItemsDataFrame:maxSimilarityIterations:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v7 = *a1;
  v8 = type metadata accessor for MLRecommender.ModelParameters(0);
  v9 = v6 + v8[7];
  v10 = type metadata accessor for DataFrame(0);
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  v11 = v8[8];
  *(v6 + v11) = 0;
  *(v6 + v11 + 8) = -1;
  *v6 = v7;
  *(v6 + 8) = a5;
  *(v6 + 16) = a2;
  outlined assign with take of DataFrame?(a3, v9);
  result = v8[9];
  *(v6 + result) = a4;
  return result;
}

char MLRecommender.ModelParameters.algorithm.setter(char *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t MLRecommender.ModelParameters.nearestItemsDataFrame.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLRecommender.ModelParameters(0);
  return outlined init with copy of DataFrame?(v1 + *(v3 + 28), v2);
}

uint64_t MLRecommender.ModelParameters.nearestItems.getter()
{
  v2 = v0;
  v3 = *(type metadata accessor for MLRecommender.ModelParameters(0) + 32);
  v4 = *(v1 + v3);
  v5 = *(v1 + v3 + 8);
  *v2 = v4;
  *(v2 + 8) = v5;
  return outlined copy of MLDataTable?(v4, v5);
}

uint64_t MLRecommender.ModelParameters.nearestItems.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(type metadata accessor for MLRecommender.ModelParameters(0) + 32);
  result = outlined consume of MLDataTable?(*(v1 + v4), *(v1 + v4 + 8));
  *(v1 + v4) = v2;
  *(v1 + v4 + 8) = v3;
  return result;
}

uint64_t MLRecommender.ModelParameters.maxSimilarityIterations.setter(uint64_t a1)
{
  result = *(type metadata accessor for MLRecommender.ModelParameters(0) + 36);
  *(v1 + result) = a1;
  return result;
}

Swift::Int MLRecommender.SimilarityType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)(0);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t lazy protocol witness table accessor for type MLRecommender.SimilarityType and conformance MLRecommender.SimilarityType()
{
  result = lazy protocol witness table cache variable for type MLRecommender.SimilarityType and conformance MLRecommender.SimilarityType;
  if (!lazy protocol witness table cache variable for type MLRecommender.SimilarityType and conformance MLRecommender.SimilarityType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLRecommender.SimilarityType, &type metadata for MLRecommender.SimilarityType);
    lazy protocol witness table cache variable for type MLRecommender.SimilarityType and conformance MLRecommender.SimilarityType = result;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for MLRecommender.ModelParameters(uint64_t a1, uint64_t *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 1);
    v6 = a3[7];
    __dst = (a1 + v6);
    v7 = a2 + v6;
    v8 = type metadata accessor for DataFrame(0);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
      memcpy(__dst, v7, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(*(v8 - 8) + 16))(__dst, v7, v8);
      __swift_storeEnumTagSinglePayload(__dst, 0, 1, v8);
    }

    __dsta = a3;
    v11 = a3[8];
    v12 = a1 + v11;
    v13 = (a2 + v11);
    v14 = *(a2 + v11 + 8);
    if (v14 == -1)
    {
      *(v12 + 8) = *(v13 + 8);
      *v12 = *v13;
    }

    else
    {
      v15 = *v13;
      outlined copy of Result<_DataTable, Error>(*v13, v14);
      *v12 = v15;
      *(v12 + 8) = v14 & 1;
    }

    *(a1 + __dsta[9]) = *(a2 + __dsta[9]);
  }

  return v3;
}

uint64_t destroy for MLRecommender.ModelParameters(uint64_t a1, uint64_t a2)
{
  v2 = a1 + *(a2 + 28);
  v3 = type metadata accessor for DataFrame(0);
  if (!__swift_getEnumTagSinglePayload(v2, 1, v3))
  {
    (*(*(v3 - 8) + 8))(v2, v3);
  }

  result = *(a2 + 32);
  v5 = *(a1 + result + 8);
  if (v5 != -1)
  {
    return outlined consume of Result<_DataTable, Error>(*(a1 + result), v5);
  }

  return result;
}

uint64_t initializeWithCopy for MLRecommender.ModelParameters(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = a3[7];
  v4 = (a1 + v3);
  v5 = (a2 + v3);
  v6 = type metadata accessor for DataFrame(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(v4, v5, *(*(v7 - 8) + 64));
  }

  else
  {
    (*(*(v6 - 8) + 16))(v4, v5, v6);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v6);
  }

  v8 = a3[8];
  v9 = a1 + v8;
  v10 = (a2 + v8);
  v11 = *(a2 + v8 + 8);
  if (v11 == -1)
  {
    *(v9 + 8) = *(v10 + 8);
    *v9 = *v10;
  }

  else
  {
    v12 = *v10;
    outlined copy of Result<_DataTable, Error>(*v10, v11);
    *v9 = v12;
    *(v9 + 8) = v11 & 1;
  }

  *(a1 + a3[9]) = *(a2 + a3[9]);
  return a1;
}

uint64_t assignWithCopy for MLRecommender.ModelParameters(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v4 = a3[7];
  v5 = a1 + v4;
  v6 = (a2 + v4);
  v7 = type metadata accessor for DataFrame(0);
  __dst = v5;
  LODWORD(v5) = __swift_getEnumTagSinglePayload(v5, 1, v7);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);
  if (v5)
  {
    if (EnumTagSinglePayload)
    {
      v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v10 = __dst;
LABEL_6:
      memcpy(v10, v6, v9);
      goto LABEL_9;
    }

    (*(*(v7 - 8) + 16))(__dst, v6, v7);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v7);
  }

  else
  {
    v11 = *(v7 - 8);
    if (EnumTagSinglePayload)
    {
      (*(v11 + 8))(__dst, v7);
      v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v10 = __dst;
      goto LABEL_6;
    }

    (*(v11 + 24))(__dst, v6, v7);
  }

LABEL_9:
  v12 = a3[8];
  v13 = a1 + v12;
  v14 = v12 + a2;
  v15 = *(v12 + a2 + 8);
  if (*(a1 + v12 + 8) == 0xFF)
  {
    if (v15 == -1)
    {
      *(v13 + 8) = *(v14 + 8);
      *v13 = *v14;
    }

    else
    {
      v19 = *v14;
      outlined copy of Result<_DataTable, Error>(v19, v15);
      *v13 = v19;
      *(v13 + 8) = v15 & 1;
    }
  }

  else if (v15 == -1)
  {
    outlined destroy of MLDataTable(a1 + v12);
    *v13 = *v14;
    *(v13 + 8) = *(v14 + 8);
  }

  else
  {
    v16 = *v14;
    outlined copy of Result<_DataTable, Error>(v16, v15);
    v17 = *v13;
    *v13 = v16;
    v18 = *(v13 + 8);
    *(v13 + 8) = v15 & 1;
    outlined consume of Result<_DataTable, Error>(v17, v18);
  }

  *(a1 + a3[9]) = *(a2 + a3[9]);
  return a1;
}

uint64_t initializeWithTake for MLRecommender.ModelParameters(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = a3[7];
  __dst = (a1 + v4);
  v5 = (a2 + v4);
  v6 = type metadata accessor for DataFrame(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(__dst, v5, *(*(v7 - 8) + 64));
  }

  else
  {
    (*(*(v6 - 8) + 32))(__dst, v5, v6);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v6);
  }

  v8 = a3[8];
  *(a1 + v8 + 8) = *(a2 + v8 + 8);
  *(a1 + v8) = *(a2 + v8);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  return a1;
}

uint64_t assignWithTake for MLRecommender.ModelParameters(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v4 = a3[7];
  v5 = a1 + v4;
  v6 = (a2 + v4);
  v7 = type metadata accessor for DataFrame(0);
  __dst = v5;
  LODWORD(v5) = __swift_getEnumTagSinglePayload(v5, 1, v7);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);
  if (v5)
  {
    if (EnumTagSinglePayload)
    {
      v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v10 = __dst;
LABEL_6:
      memcpy(v10, v6, v9);
      goto LABEL_9;
    }

    (*(*(v7 - 8) + 32))(__dst, v6, v7);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v7);
  }

  else
  {
    v11 = *(v7 - 8);
    if (EnumTagSinglePayload)
    {
      (*(v11 + 8))(__dst, v7);
      v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v10 = __dst;
      goto LABEL_6;
    }

    (*(v11 + 40))(__dst, v6, v7);
  }

LABEL_9:
  v12 = a3[8];
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(a1 + v12 + 8);
  if (v15 == -1)
  {
    *(v13 + 8) = *(v14 + 8);
    *v13 = *v14;
  }

  else
  {
    v16 = *(a2 + v12 + 8);
    if (v16 == -1)
    {
      outlined destroy of MLDataTable(v13);
      *v13 = *v14;
      *(v13 + 8) = *(v14 + 8);
    }

    else
    {
      v17 = *v13;
      *v13 = *v14;
      *(v13 + 8) = v16 & 1;
      outlined consume of Result<_DataTable, Error>(v17, v15);
    }
  }

  *(a1 + a3[9]) = *(a2 + a3[9]);
  return a1;
}

uint64_t sub_112E63(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v3 = *a1;
    result = 0;
    if (v3 >= 3)
    {
      return v3 - 2;
    }
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    return __swift_getEnumTagSinglePayload(&a1[*(a3 + 28)], a2, v6);
  }

  return result;
}

uint64_t sub_112ED2(_BYTE *a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 253)
  {
    *a1 = a2 + 2;
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    return __swift_storeEnumTagSinglePayload(&a1[*(a4 + 28)], a2, a2, v5);
  }

  return result;
}

uint64_t type metadata completion function for MLRecommender.ModelParameters(uint64_t a1)
{
  v3[0] = &unk_341920;
  v3[1] = &value witness table for Builtin.Int64 + 64;
  v3[2] = &value witness table for Builtin.Int64 + 64;
  result = type metadata accessor for DataFrame?(319);
  if (v2 <= 0x3F)
  {
    v3[3] = *(result - 8) + 64;
    v3[4] = &unk_341938;
    v3[5] = &value witness table for Builtin.Int64 + 64;
    swift_initStructMetadata(a1, 256, 6, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLRecommender.ModelAlgorithmType(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 < 0xFE)
    {
      goto LABEL_13;
    }

    v2 = a2 + 2;
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
      v5 = *a1 + (v4 << 8) - 3;
    }

    else
    {
LABEL_13:
      v6 = *a1;
      v7 = v6 - 3;
      v8 = v6 < 3;
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

{
  return getEnumTagSinglePayload for MLRecommender.SimilarityType(a1, a2);
}

uint64_t storeEnumTagSinglePayload for MLRecommender.ModelAlgorithmType(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  LODWORD(result) = 0;
  if (a3 >= 0xFE)
  {
    v4 = a3 + 2;
    LODWORD(result) = 1;
    if (v4 >= 0xFF00)
    {
      LODWORD(result) = 2 * (v4 >= 0xFFFF00) + 2;
    }
  }

  if (a2 > 0xFD)
  {
    v5 = a2 - 254;
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
          *a1 = a2 + 2;
        }

        break;
    }
  }

  return result;
}

{
  return storeEnumTagSinglePayload for MLRecommender.SimilarityType(a1, a2, a3);
}

uint64_t LabelEncoder<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = a6;
  v19 = a4;
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  dispatch thunk of Encoder.singleValueContainer()(v6, v7);
  v17 = a2;
  v8 = v14;
  v9 = v15;
  __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
  v10 = type metadata accessor for Array(0, v19);
  v16 = v18;
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v10);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)(&v17, v10, WitnessTable, v8, v9);
  return __swift_destroy_boxed_opaque_existential_1Tm(v13);
}

uint64_t LabelEncoder<>.init(from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = v5;
  v22 = a5;
  v21 = a4;
  v23 = a3;
  v25 = a2;
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  dispatch thunk of Decoder.singleValueContainer()(v6, v7);
  if (v5)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v26 = a1;
    v8 = v17;
    v24 = v18;
    __swift_project_boxed_opaque_existential_0Tm(v16, v17);
    v9 = type metadata accessor for Array(0, v25);
    v19 = v21;
    WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v9);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)(v9, v9, WitnessTable, v8, v24);
    v12 = swift_getWitnessTable(&protocol conformance descriptor for [A], v9);
    v13 = v25;
    v14 = v22;
    v15 = Set.init<A>(_:)(v20, v25, v9, v22, v12);
    v6 = SortedSet.init(_:)(v15, v13, v23, v14);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  return v6;
}

uint64_t protocol witness for Decodable.init(from:) in conformance <> LabelEncoder<A>(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = v3;
  result = LabelEncoder<>.init(from:)(a1, a2[2], a2[3], *(a3 - 8), a2[4]);
  if (!v4)
  {
    *v5 = result;
    v5[1] = v7;
  }

  return result;
}

unint64_t MLSoundClassifier.ModelParameters.ClassifierType.description.getter()
{
  result = 0xD000000000000015;
  if (!*v0)
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

BOOL static MLSoundClassifier.ModelParameters.ClassifierType.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
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

void MLSoundClassifier.ModelParameters.ClassifierType.hash(into:)(uint64_t a1)
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

Swift::Int MLSoundClassifier.ModelParameters.ClassifierType.hashValue.getter()
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

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLSoundClassifier.ModelParameters.ClassifierType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)(a1);
  if (v2)
  {
    Hasher._combine(_:)(1uLL);
    specialized Array<A>.hash(into:)(v4, v2);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  Hasher._combine(_:)(v2);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = *(a2 + 8 * i + 32);
      Hasher._combine(_:)(v4);
    }
  }
}

uint64_t lazy protocol witness table accessor for type MLSoundClassifier.ModelParameters.ClassifierType and conformance MLSoundClassifier.ModelParameters.ClassifierType()
{
  result = lazy protocol witness table cache variable for type MLSoundClassifier.ModelParameters.ClassifierType and conformance MLSoundClassifier.ModelParameters.ClassifierType;
  if (!lazy protocol witness table cache variable for type MLSoundClassifier.ModelParameters.ClassifierType and conformance MLSoundClassifier.ModelParameters.ClassifierType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLSoundClassifier.ModelParameters.ClassifierType, &type metadata for MLSoundClassifier.ModelParameters.ClassifierType);
    lazy protocol witness table cache variable for type MLSoundClassifier.ModelParameters.ClassifierType and conformance MLSoundClassifier.ModelParameters.ClassifierType = result;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for MLSoundClassifier.ModelParameters.ClassifierType(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  v3;
  return a1;
}

uint64_t *assignWithCopy for MLSoundClassifier.ModelParameters.ClassifierType(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  *a1 = *a2;
  v3;
  v4, a2;
  return a1;
}

uint64_t *assignWithTake for MLSoundClassifier.ModelParameters.ClassifierType(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  v3, a2;
  return a1;
}

uint64_t getEnumTagSinglePayload for MLSoundClassifier.ModelParameters.ClassifierType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  result = (*a1 & 0xFFFFFFFF00000001) != 0 ? -1 : (*a1 >> 1);
  if ((result + 1) < 2)
  {
    return 0;
  }

  return result;
}

void storeEnumTagSinglePayload for MLSoundClassifier.ModelParameters.ClassifierType(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *a1 = 0;
    *a1 = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 8) = 0;
    }

    if (a2)
    {
      *a1 = 2 * a2;
    }
  }
}

uint64_t getEnumTag for MLSoundClassifier.ModelParameters.ClassifierType(void *a1)
{
  result = 0;
  if ((*a1 & 0xFFFFFFFF00000001) == 0)
  {
    return (*a1 >> 1) + 1;
  }

  return result;
}

void destructiveInjectEnumTag for MLSoundClassifier.ModelParameters.ClassifierType(uint64_t *a1, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return;
    }

    v2 = 2 * (a2 - 1);
  }

  *a1 = v2;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML16ColumnDescriptorVG_20MLModelSpecification18FeatureDescriptionVs5NeverOTg503_s8d50ML18TreeRegressorModelV6export16internalMetadata20h33Specification0E0VSDyS2SGz_tKFAF18jk5VAA16fG54Vcfu0_33_3fd57c9cf8bb5b882e179ce0f1f8c55eAmKTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v18 = type metadata accessor for FeatureDescription(0);
  v19 = *(v18 - 8);
  v2 = *(v19 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = *(a1 + 16);
  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v22 = v1;
  v23 = _swiftEmptyArrayStorage;
  v20 = v5;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v6 = v23;
  v7 = (a1 + 56);
  v21 = &v14;
  do
  {
    v16 = v7;
    v15 = v6;
    v17 = *(v7 - 3);
    v8 = *(v7 - 2);
    v9 = *(v7 - 1);
    v10 = *v7;
    v8;
    outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v9, v10);
    ColumnDescriptor.featureDescription.getter(v17, v8, v9, v10);
    v11 = v8;
    v6 = v15;
    v11;
    outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v9, v10);
    v23 = v6;
    v12 = v6[2];
    if (v6[3] >> 1 <= v12)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v6[3] >= 2uLL, v12 + 1, 1);
      v6 = v23;
    }

    v6[2] = v12 + 1;
    (*(v19 + 32))(v6 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v12, v21, v18);
    v7 = v16 + 32;
    --v20;
  }

  while (v20);
  return v6;
}

void TreeRegressorModel.export(internalMetadata:)()
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
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001CLL, "ressorModel.swift" + 0x8000000000000000, "CreateML/TreeRegressorModel+CoreML.swift", 40, 2, 11, 0);
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
      (v49)(v48, v103);
      v51 = v106;
      v52 = v107;
      URL.appendingPathExtension(_:)(0x6C65646F6D6C6D2ELL, 0xE800000000000000);
      (v49)(v52, v50);
      v53 = v100 + *(type metadata accessor for TreeRegressorModel(0) + 24);
      v54 = v109;
      BaseTreeRegressorModel.export(to:)(v51);
      if (v54)
      {
        (v49)(v106, v103);
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

id $defer #1 () in TreeRegressorModel.export(internalMetadata:)()
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

uint64_t TreeClassifierTrainingSessionDelegate.init(sessionParameters:)(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters;
  v3 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  DataFrame.init()(v2);
  v4 = v1 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationData;
  v5 = type metadata accessor for DataFrame(0);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = v1 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier;
  v7 = type metadata accessor for AnyTreeClassifier(0);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = v1 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model;
  v9 = type metadata accessor for AnyTreeClassifierModel(0);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = v1 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingMetrics;
  v11 = type metadata accessor for AnyClassificationMetrics(0);
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationMetrics, 1, 1, v11);
  outlined init with take of MLClassifierMetrics(a1, v1 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  return v1;
}

uint64_t TreeClassifierTrainingSessionDelegate.init(trainingData:validationData:targetColumn:featureColumns:configuration:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v101 = v7;
  v105 = a6;
  v109 = a5;
  v111 = a4;
  v113 = a3;
  v104 = a2;
  v112 = a1;
  v110 = *v8;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v94 = &v85;
  v107 = type metadata accessor for BoostedTreeConfiguration(0);
  v106 = *(v107 - 8);
  v12 = *(v106 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v97 = &v85;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v93 = &v85;
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyTreeClassifier?) - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v103 = &v85;
  v99 = type metadata accessor for AnyColumn(0);
  v88 = *(v99 - 8);
  v21 = *(v88 + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v95 = &v85;
  v24 = alloca(v21);
  v25 = alloca(v21);
  v89 = &v85;
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?) - 8) + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v90 = &v85;
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v96 = &v85;
  v32 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v33 = *(*(v32 - 8) + 64);
  v34 = alloca(v33);
  v35 = alloca(v33);
  v102 = &v85;
  v36 = v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters;
  v91 = v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters;
  v92 = v32;
  __swift_storeEnumTagSinglePayload(v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters, 1, 1, v32);
  DataFrame.init()(v36);
  v37 = v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationData;
  v108 = type metadata accessor for DataFrame(0);
  __swift_storeEnumTagSinglePayload(v37, 1, 1, v108);
  v38 = v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier;
  v98 = type metadata accessor for AnyTreeClassifier(0);
  __swift_storeEnumTagSinglePayload(v38, 1, 1, v98);
  v39 = v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model;
  v40 = type metadata accessor for AnyTreeClassifierModel(0);
  __swift_storeEnumTagSinglePayload(v39, 1, 1, v40);
  v41 = v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingMetrics;
  v42 = type metadata accessor for AnyClassificationMetrics(0);
  v43 = v41;
  v44 = v112;
  __swift_storeEnumTagSinglePayload(v43, 1, 1, v42);
  v45 = v111;
  __swift_storeEnumTagSinglePayload(v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationMetrics, 1, 1, v42);
  v46 = v109;
  v47 = v101;
  v48 = static _FeatureUtilities.selectFeaturesFromTrainingData(trainingData:targetColumn:featureColumns:)(v44, v113, v45, v109);
  v101 = v47;
  if (v47)
  {
    v45;
    v46;
    outlined destroy of MLActivityClassifier.ModelParameters(a7, type metadata accessor for MLTrainingSessionParameters);
    (*(v106 + 8))(v105, v107);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v104, &demangling cache variable for type metadata for DataFrame?);
    v49 = v108;
    v50 = *(*(v108 - 8) + 8);
    v50(v44, v108);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
    v50(v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingData, v49);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationData, &demangling cache variable for type metadata for DataFrame?);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier, &demangling cache variable for type metadata for AnyTreeClassifier?);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model, &demangling cache variable for type metadata for AnyTreeClassifierModel?);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingMetrics, &demangling cache variable for type metadata for AnyClassificationMetrics?);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationMetrics, &demangling cache variable for type metadata for AnyClassificationMetrics?);
    swift_deallocPartialClassInstance(v8, v110, *(*v8 + 48), *(*v8 + 52));
  }

  else
  {
    v110 = v48;
    v46;
    v51 = v44;
    v109 = v8;
    v52 = v102;
    v100 = *(v108 - 8);
    (*(v100 + 16))(v102, v51);
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v104, v96, &demangling cache variable for type metadata for DataFrame?);
    v53 = v92;
    (*(v106 + 16))(v52 + v92[8], v105, v107);
    v54 = v52 + v53[5];
    __swift_storeEnumTagSinglePayload(v54, 1, 1, v108);
    v45;
    outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v96, v54, &demangling cache variable for type metadata for DataFrame?);
    v55 = v53[6];
    v56 = v113;
    *(v52 + v55) = v113;
    *(v52 + v55 + 8) = v45;
    *(v52 + v53[7]) = v110;
    v57 = v52;
    v58 = v90;
    outlined init with copy of PersistentParametersForTreeBasedMethods(v57, v90, type metadata accessor for PersistentParametersForTreeBasedMethods);
    __swift_storeEnumTagSinglePayload(v58, 0, 1, v53);
    v59 = v91;
    swift_beginAccess(v91, &v86, 33, 0);
    outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v58, v59, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
    swift_endAccess(&v86);
    outlined init with copy of PersistentParametersForTreeBasedMethods(a7, v109 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
    v60 = v89;
    DataFrame.subscript.getter(v56, v111);
    v61 = AnyColumn.wrappedElementType.getter();
    v62 = *(v88 + 8);
    v62(v60, v99);
    if (swift_dynamicCastMetatype(v61, &type metadata for String))
    {
      v63 = v93;
      DataFrame.subscript.getter(v113, v111, &type metadata for String);
      v64 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSSSg_11TabularData6ColumnVySSGTt0g5(v63);
      v65 = v110;
      v110;
      v66 = v97;
      BoostedTreeConfiguration.init()();
      v67 = v103;
      AnyTreeClassifier.init(labels:annotationColumnName:featureColumnNames:configuration:)(v64, v113, v111, v65, v66);
      outlined destroy of MLActivityClassifier.ModelParameters(a7, type metadata accessor for MLTrainingSessionParameters);
      (*(v106 + 8))(v105, v107);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v104, &demangling cache variable for type metadata for DataFrame?);
      (*(v100 + 8))(v112, v108);
      outlined destroy of MLActivityClassifier.ModelParameters(v102, type metadata accessor for PersistentParametersForTreeBasedMethods);
      __swift_storeEnumTagSinglePayload(v67, 0, 1, v98);
      v68 = v109;
      v69 = v109 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier;
      swift_beginAccess(v109 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier, &v86, 33, 0);
      outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v67, v69, &demangling cache variable for type metadata for AnyTreeClassifier?);
      swift_endAccess(&v86);
      return v68;
    }

    else
    {
      v70 = v110;
      if (!swift_dynamicCastMetatype(v61, &type metadata for Int))
      {
        v86 = 0;
        v87 = 0xE000000000000000;
        _StringGuts.grow(_:)(38);
        v87;
        v86 = 0xD000000000000023;
        v87 = "rt a new session." + 0x8000000000000000;
        v79 = v95;
        v80 = v111;
        DataFrame.subscript.getter(v113, v111);
        v80;
        v81 = AnyColumn.wrappedElementType.getter();
        v62(v79, v99);
        v82._countAndFlagsBits = _typeName(_:qualified:)(v81, 0);
        object = v82._object;
        String.append(_:)(v82);
        object;
        v84._countAndFlagsBits = 46;
        v84._object = 0xE100000000000000;
        String.append(_:)(v84);
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v86, v87, "CreateML/TreeClassifierTrainingSessionDelegate.swift", 52, 2, 73, 0);
        BUG();
      }

      v71 = v94;
      v72 = v111;
      DataFrame.subscript.getter(v113, v111, &type metadata for Int);
      v73 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSiSg_11TabularData6ColumnVySiGTt0g5(v71);
      v74 = v70;
      v70;
      v75 = v97;
      BoostedTreeConfiguration.init()();
      AnyTreeClassifier.init(labels:annotationColumnName:featureColumnNames:configuration:)(v73, v113, v72, v74, v75);
      outlined destroy of MLActivityClassifier.ModelParameters(a7, type metadata accessor for MLTrainingSessionParameters);
      (*(v106 + 8))(v105, v107);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v104, &demangling cache variable for type metadata for DataFrame?);
      (*(v100 + 8))(v112, v108);
      outlined destroy of MLActivityClassifier.ModelParameters(v102, type metadata accessor for PersistentParametersForTreeBasedMethods);
      v76 = v103;
      __swift_storeEnumTagSinglePayload(v103, 0, 1, v98);
      v8 = v109;
      v77 = v109 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier;
      swift_beginAccess(v109 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier, &v86, 33, 0);
      outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v76, v77, &demangling cache variable for type metadata for AnyTreeClassifier?);
      swift_endAccess(&v86);
    }
  }

  return v8;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> TreeClassifierTrainingSessionDelegate.setUp()()
{
  v91 = v0;
  v89 = type metadata accessor for BaseTreeClassifierModel(0);
  v88 = *(v89 - 8);
  v2 = *(v88 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v90 = &v83;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyTreeClassifierModel?) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v87 = &v83;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v93 = &v83;
  v100 = type metadata accessor for BoostedTreeConfiguration(0);
  v99 = *(v100 - 8);
  v11 = *(v99 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v101 = &v83;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v96 = &v83;
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>) - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v92 = &v83;
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyTreeClassifier?) - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v94 = &v83;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v95 = &v83;
  v104 = type metadata accessor for AnyColumn(0);
  v85 = *(v104 - 8);
  v24 = *(v85 + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v86 = &v83;
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?) - 8) + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v30 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v31 = *(*(v30 - 8) + 64);
  v32 = alloca(v31);
  v33 = alloca(v31);
  v103 = &v83;
  v34 = v1 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v1 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters, v84, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v34, &v83, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  v105 = v30;
  if (__swift_getEnumTagSinglePayload(&v83, 1, v30) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v83, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
    BUG();
  }

  v35 = v103;
  outlined init with take of MLClassifierMetrics(&v83, v103, type metadata accessor for PersistentParametersForTreeBasedMethods);
  v36 = v1 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingData;
  swift_beginAccess(v1 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingData, v98, 33, 0);
  v37 = type metadata accessor for DataFrame(0);
  (*(*(v37 - 8) + 24))(v36, v35, v37);
  swift_endAccess(v98);
  v38 = v35 + *(v105 + 20);
  v97 = v1;
  v39 = v1 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationData;
  swift_beginAccess(v39, v98, 33, 0);
  outlined assign with copy of DataFrame?(v38, v39);
  swift_endAccess(v98);
  v40 = *(v105 + 24);
  v41 = *(v35 + v40);
  v42 = *(v35 + v40 + 8);
  swift_beginAccess(v36, v98, 32, 0);
  v43 = v86;
  v102 = v41;
  v106 = v42;
  DataFrame.subscript.getter(v41, v42);
  swift_endAccess(v98);
  v44 = AnyColumn.wrappedElementType.getter();
  (*(v85 + 8))(v43, v104);
  v45 = swift_dynamicCastMetatype(v44, &type metadata for String);
  v46 = v105;
  if (v45)
  {
    swift_beginAccess(v36, v98, 32, 0);
    v47 = v92;
    DataFrame.subscript.getter(v102, v106, &type metadata for String);
    swift_endAccess(v98);
    v104 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSSSg_11TabularData6ColumnVySSGTt0g5(v47);
    v48 = *(v103 + *(v46 + 28));
    v49 = v106;
    v106;
    v48;
    v50 = v96;
    BoostedTreeConfiguration.init()();
    v51 = v95;
    AnyTreeClassifier.init(labels:annotationColumnName:featureColumnNames:configuration:)(v104, v102, v49, v48, v50);
    v106 = type metadata accessor for AnyTreeClassifier(0);
    __swift_storeEnumTagSinglePayload(v51, 0, 1, v106);
    v52 = v97;
    v53 = v97 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier;
    swift_beginAccess(v97 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier, v98, 33, 0);
    outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v51, v53, &demangling cache variable for type metadata for AnyTreeClassifier?);
    swift_endAccess(v98);
    v54 = v52;
    v55 = v103;
  }

  else
  {
    v56 = v102;
    if (!swift_dynamicCastMetatype(v44, &type metadata for Int))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001ELL, "essionDelegate.swift" + 0x8000000000000000, "CreateML/TreeClassifierTrainingSessionDelegate.swift", 52, 2, 101, 0);
      BUG();
    }

    swift_beginAccess(v36, v98, 32, 0);
    v57 = v93;
    v58 = v56;
    v59 = v106;
    DataFrame.subscript.getter(v58, v106, &type metadata for Int);
    swift_endAccess(v98);
    v104 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSiSg_11TabularData6ColumnVySiGTt0g5(v57);
    v55 = v103;
    v60 = *(v103 + *(v105 + 28));
    v59;
    v60;
    v61 = v96;
    BoostedTreeConfiguration.init()();
    v62 = v95;
    AnyTreeClassifier.init(labels:annotationColumnName:featureColumnNames:configuration:)(v104, v102, v106, v60, v61);
    v63 = v62;
    v106 = type metadata accessor for AnyTreeClassifier(0);
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v106);
    v54 = v97;
    v64 = v97 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier;
    swift_beginAccess(v97 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier, v98, 33, 0);
    outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v63, v64, &demangling cache variable for type metadata for AnyTreeClassifier?);
    swift_endAccess(v98);
  }

  v65 = *(v105 + 32) + v55;
  v66 = v100;
  v105 = *(v99 + 16);
  (v105)(v101, v65, v100);
  v67 = v54 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier;
  swift_beginAccess(v54 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier, v98, 33, 0);
  type metadata accessor for AnyTreeClassifier(0);
  if (__swift_getEnumTagSinglePayload(v67, 1, v106) == 1)
  {
    BUG();
  }

  v68 = v96;
  v69 = v101;
  (v105)(v96, v101, v66);
  v70 = v67 + *(v106 + 32);
  BaseTreeClassifier.configuration.setter(v68);
  (*(v99 + 8))(v69, v100);
  swift_endAccess(v98);
  v71 = v94;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v67, v94, &demangling cache variable for type metadata for AnyTreeClassifier?);
  if (__swift_getEnumTagSinglePayload(v71, 1, v106) == 1)
  {
    BUG();
  }

  v101 = *v71;
  v72 = *(v71 + 8);
  v73 = *(v71 + 24);
  LOBYTE(v100) = *(v71 + 32);
  v99 = v73;
  v74 = *(v73 + 16);
  v75 = *(v106 + 32) + v71;
  v72;
  v76 = v90;
  v77 = v91;
  BaseTreeClassifier.makeTransformer(classCount:featureCount:)(v74, 0);
  v105 = v77;
  if (v77)
  {
    v72;
    swift_unexpectedError(v105, "CreateML/AnyTreeClassifier.swift", 32, 1, 170);
    BUG();
  }

  v78 = v87;
  *v87 = v101;
  *(v78 + 8) = v72;
  v79 = type metadata accessor for AnyTreeClassifierModel(0);
  *(v78 + 32) = 0;
  *(v78 + 16) = 0;
  (*(v88 + 32))(v78 + *(v79 + 24), v76, v89);
  v80 = *(v79 + 28);
  v81 = v99;
  *(v78 + v80) = v99;
  *(v78 + v80 + 8) = v100 & 1;
  v81;
  outlined destroy of MLActivityClassifier.ModelParameters(v103, type metadata accessor for PersistentParametersForTreeBasedMethods);
  outlined destroy of MLActivityClassifier.ModelParameters(v94, type metadata accessor for AnyTreeClassifier);
  __swift_storeEnumTagSinglePayload(v78, 0, 1, v79);
  v82 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model + v97;
  swift_beginAccess(OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model + v97, v98, 33, 0);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v78, v82, &demangling cache variable for type metadata for AnyTreeClassifierModel?);
  swift_endAccess(v98);
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> TreeClassifierTrainingSessionDelegate.resume(from:)(Swift::OpaquePointer from)
{
  v98 = v1;
  v105 = v2;
  rawValue = from._rawValue;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyTreeClassifierModel?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v95 = &v86;
  v6 = alloca(v3);
  v7 = alloca(v3);
  v93 = &v86;
  v8 = *(*(type metadata accessor for BoostedTreeConfiguration(0) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v97 = &v86;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyTreeClassifier?) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v94 = &v86;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v92 = &v86;
  v16 = alloca(v11);
  v17 = alloca(v11);
  v96 = &v86;
  v89 = type metadata accessor for AnyColumn(0);
  v90 = *(v89 - 8);
  v18 = *(v90 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v91 = &v86;
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v88 = &v86;
  v102 = type metadata accessor for MLCheckpoint(0);
  v24 = *(*(v102 - 8) + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v101 = &v86;
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?) - 8) + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v30 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v31 = *(*(v30 - 8) + 64);
  v32 = alloca(v31);
  v33 = alloca(v31);
  v34 = &v86;
  v35 = v105 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v105 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters, v87, 0, 0);
  v36 = v35;
  v37 = v30;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v36, &v86, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  if (__swift_getEnumTagSinglePayload(&v86, 1, v30) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v86, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
    BUG();
  }

  outlined init with take of MLClassifierMetrics(&v86, &v86, type metadata accessor for PersistentParametersForTreeBasedMethods);
  v38 = v88;
  specialized BidirectionalCollection.last.getter(rawValue);
  if (__swift_getEnumTagSinglePayload(v38, 1, v102) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v38, &demangling cache variable for type metadata for MLCheckpoint?);
    v39 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v39, 0, 0);
    *v40 = 0xD00000000000001DLL;
    *(v40 + 8) = "reated." + 0x8000000000000000;
    *(v40 + 16) = 0;
    *(v40 + 32) = 0;
    *(v40 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v39);
LABEL_17:
    outlined destroy of MLActivityClassifier.ModelParameters(v34, type metadata accessor for PersistentParametersForTreeBasedMethods);
    return;
  }

  v104 = &v86;
  v41 = 0xEB0000000064657ALL;
  v42 = v38;
  v43 = v101;
  outlined init with take of MLClassifierMetrics(v42, v101, type metadata accessor for MLCheckpoint);
  switch(*(v43 + *(v102 + 20)))
  {
    case 0:
      v45 = *(v43 + *(v102 + 20));
      v44 = 0x696C616974696E69;
      break;
    case 1:
      v44 = 0x6974636172747865;
      goto LABEL_10;
    case 2:
      0xE800000000000000;
      v46 = v105;
      goto LABEL_12;
    case 3:
      v44 = 0x697461756C617665;
LABEL_10:
      v41 = 0xEA0000000000676ELL;
      break;
    case 4:
      v41 = 0xEB00000000676E69;
      v44 = 0x636E657265666E69;
      break;
  }

  v47 = *(v43 + *(v102 + 20));
  v46 = v105;
  v48 = _stringCompareWithSmolCheck(_:_:expecting:)(v44, v41, 0x676E696E69617274, 0xE800000000000000, 0);
  v41;
  if ((v48 & 1) == 0)
  {
    v72 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v72, 0, 0);
    *v73 = 0xD000000000000028;
    *(v73 + 8) = "" + 0x8000000000000000;
    *(v73 + 16) = 0;
    *(v73 + 32) = 0;
    *(v73 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v72);
    outlined destroy of MLActivityClassifier.ModelParameters(v101, type metadata accessor for MLCheckpoint);
    v34 = v104;
    goto LABEL_17;
  }

LABEL_12:
  v49 = v46 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingData;
  v100 = v37;
  swift_beginAccess(v46 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingData, v99, 33, 0);
  v50 = type metadata accessor for DataFrame(0);
  v51 = v104;
  (*(*(v50 - 8) + 24))(v49, v104, v50);
  swift_endAccess(v99);
  v52 = *(v37 + 20) + v51;
  v53 = v46 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationData;
  swift_beginAccess(v53, v99, 33, 0);
  outlined assign with copy of DataFrame?(v52, v53);
  swift_endAccess(v99);
  v54 = *(v100 + 24);
  v55 = *(v51 + v54);
  v56 = *(v51 + v54 + 8);
  swift_beginAccess(v49, v99, 32, 0);
  v57 = v91;
  v102 = v55;
  DataFrame.subscript.getter(v55, v56);
  swift_endAccess(v99);
  v58 = AnyColumn.wrappedElementType.getter();
  (*(v90 + 8))(v57, v89);
  if (swift_dynamicCastMetatype(v58, &type metadata for String))
  {
    rawValue = specialized _setUpCast<A, B>(_:)(&_swiftEmptySetSingleton);
    v59 = *(v104 + *(v100 + 28));
    v56;
    v59;
    v60 = v97;
    BoostedTreeConfiguration.init()();
    v61 = v96;
    AnyTreeClassifier.init(labels:annotationColumnName:featureColumnNames:configuration:)(rawValue, v102, v56, v59, v60);
    v62 = type metadata accessor for AnyTreeClassifier(0);
    __swift_storeEnumTagSinglePayload(v61, 0, 1, v62);
    v63 = v105 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier;
    swift_beginAccess(v105 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier, v99, 33, 0);
    outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v61, v63, &demangling cache variable for type metadata for AnyTreeClassifier?);
    swift_endAccess(v99);
    v64 = v92;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v63, v92, &demangling cache variable for type metadata for AnyTreeClassifier?);
    if (__swift_getEnumTagSinglePayload(v64, 1, v62) == 1)
    {
      BUG();
    }

    v65 = lazy protocol witness table accessor for type AnyTreeClassifier and conformance AnyTreeClassifier();
    v66 = v93;
    v67 = v101;
    v68 = v98;
    SupervisedTabularEstimator.read(from:)(v101, v62, v65);
    outlined destroy of MLActivityClassifier.ModelParameters(v67, type metadata accessor for MLCheckpoint);
    outlined destroy of MLActivityClassifier.ModelParameters(v104, type metadata accessor for PersistentParametersForTreeBasedMethods);
    outlined destroy of MLActivityClassifier.ModelParameters(v64, type metadata accessor for AnyTreeClassifier);
    if (!v68)
    {
      v69 = type metadata accessor for AnyTreeClassifierModel(0);
      __swift_storeEnumTagSinglePayload(v66, 0, 1, v69);
      v70 = v66;
      v71 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model + v105;
LABEL_23:
      swift_beginAccess(v71, v99, 33, 0);
      outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v70, v71, &demangling cache variable for type metadata for AnyTreeClassifierModel?);
      swift_endAccess(v99);
    }
  }

  else
  {
    v74 = v100;
    if (!swift_dynamicCastMetatype(v58, &type metadata for Int))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001ELL, "essionDelegate.swift" + 0x8000000000000000, "CreateML/TreeClassifierTrainingSessionDelegate.swift", 52, 2, 142, 0);
      BUG();
    }

    rawValue = specialized _setUpCast<A, B>(_:)(&_swiftEmptySetSingleton);
    v75 = *(v104 + *(v74 + 28));
    v56;
    v75;
    v76 = v97;
    BoostedTreeConfiguration.init()();
    v77 = v96;
    AnyTreeClassifier.init(labels:annotationColumnName:featureColumnNames:configuration:)(rawValue, v102, v56, v75, v76);
    v78 = type metadata accessor for AnyTreeClassifier(0);
    __swift_storeEnumTagSinglePayload(v77, 0, 1, v78);
    v79 = v105 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier;
    swift_beginAccess(v105 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier, v99, 33, 0);
    outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v77, v79, &demangling cache variable for type metadata for AnyTreeClassifier?);
    swift_endAccess(v99);
    v80 = v94;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v79, v94, &demangling cache variable for type metadata for AnyTreeClassifier?);
    if (__swift_getEnumTagSinglePayload(v80, 1, v78) == 1)
    {
      BUG();
    }

    v81 = lazy protocol witness table accessor for type AnyTreeClassifier and conformance AnyTreeClassifier();
    v82 = v95;
    v83 = v101;
    v84 = v98;
    SupervisedTabularEstimator.read(from:)(v101, v78, v81);
    outlined destroy of MLActivityClassifier.ModelParameters(v83, type metadata accessor for MLCheckpoint);
    outlined destroy of MLActivityClassifier.ModelParameters(v104, type metadata accessor for PersistentParametersForTreeBasedMethods);
    outlined destroy of MLActivityClassifier.ModelParameters(v80, type metadata accessor for AnyTreeClassifier);
    if (!v84)
    {
      v85 = type metadata accessor for AnyTreeClassifierModel(0);
      __swift_storeEnumTagSinglePayload(v82, 0, 1, v85);
      v71 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model + v105;
      v70 = v82;
      goto LABEL_23;
    }
  }
}

uint64_t TreeClassifierTrainingSessionDelegate.train(from:)(uint64_t a1)
{
  v2[20] = v1;
  v2[19] = a1;
  v3 = type metadata accessor for MetricsKey(0);
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v2[23] = swift_task_alloc((*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DataFrame(0);
  v2[24] = v5;
  v6 = *(v5 - 8);
  v2[25] = v6;
  v2[26] = swift_task_alloc((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyTreeClassifier?);
  v2[27] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  v2[28] = swift_task_alloc((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyTreeClassifierModel?);
  v2[29] = swift_task_alloc((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(TreeClassifierTrainingSessionDelegate.train(from:), 0, 0);
}

uint64_t TreeClassifierTrainingSessionDelegate.train(from:)()
{
  v1 = *(v0 + 232);
  v2 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model;
  *(v0 + 240) = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model;
  v3 = *(v0 + 160) + v2;
  swift_beginAccess(v3, v0 + 16, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v3, v1, &demangling cache variable for type metadata for AnyTreeClassifierModel?);
  v4 = type metadata accessor for AnyTreeClassifierModel(0);
  *(v0 + 248) = v4;
  LODWORD(v3) = __swift_getEnumTagSinglePayload(v1, 1, v4);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, &demangling cache variable for type metadata for AnyTreeClassifierModel?);
  if (v3 == 1)
  {
    BUG();
  }

  v5 = *(v0 + 224);
  v6 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters + *(v0 + 160);
  swift_beginAccess(v6, v0 + 40, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v6, v5, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  v7 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  LODWORD(v6) = __swift_getEnumTagSinglePayload(v5, 1, v7);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v5, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  if (v6 == 1)
  {
    BUG();
  }

  v8 = *(v0 + 152);
  v9 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_sessionParameters + *(v0 + 160);
  v10 = type metadata accessor for MLTrainingSessionParameters(0);
  v11 = *(*(v10 + 20) + v9);
  *(v0 + 144) = __OFADD__(v11, v8);
  *(v0 + 136) = v11 + v8;
  if (__OFADD__(v11, v8))
  {
    BUG();
  }

  v12 = *(v9 + *(v10 + 28));
  *(v0 + 256) = v12;
  v13 = __OFSUB__(v12, v8);
  v14 = v12 - v8;
  if (v13)
  {
    BUG();
  }

  if (v11 < v14)
  {
    v14 = v11;
  }

  *(v0 + 264) = v14;
  v15 = type metadata accessor for EventCollector();
  swift_allocObject(v15, 32, 7);
  *(v0 + 272) = EventCollector.init()();
  if (v14 < 0)
  {
    BUG();
  }

  if (v14)
  {
    v16 = *(v0 + 160);
    v17 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier;
    *(v0 + 280) = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier;
    v18 = v16 + v17;
    v19 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingData;
    *(v0 + 288) = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingData;
    v20 = v19 + v16;
    swift_beginAccess(v18, v0 + 64, 0, 0);
    swift_beginAccess(v20, v0 + 88, 0, 0);
    *(v0 + 296) = 0;
    v21 = *(v0 + 216);
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 280) + *(v0 + 160), v21, &demangling cache variable for type metadata for AnyTreeClassifier?);
    v22 = type metadata accessor for AnyTreeClassifier(0);
    if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
    {
      BUG();
    }

    v23 = *(v0 + 248);
    v24 = *(v0 + 160);
    v25 = v24 + *(v0 + 288);
    v26 = *(v0 + 240) + v24;
    (*(*(v0 + 200) + 16))(*(v0 + 208), v25, *(v0 + 192));
    swift_beginAccess(v26, v0 + 112, 33, 0);
    if (__swift_getEnumTagSinglePayload(v26, 1, v23) == 1)
    {
      BUG();
    }

    v27 = *(v0 + 272);
    v28 = *(v0 + 240) + *(v0 + 160);

    v29 = swift_task_alloc(128);
    *(v0 + 304) = v29;
    *v29 = v0;
    v29[1] = TreeClassifierTrainingSessionDelegate.train(from:);
    v30 = *(v0 + 216);
    return AnyTreeClassifier.update(_:with:eventHandler:)(v28, *(v0 + 208), partial apply for closure #1 in TreeClassifierTrainingSessionDelegate.train(from:), v27);
  }

  else
  {
    v32 = *(v0 + 184);
    v53 = *(v0 + 168);
    v33 = *(v0 + 176);
    static MetricsKey.trainingAccuracy.getter();
    ML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5 = _s8CreateML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5();
    v36 = v35;
    v37 = *(v33 + 8);
    v38 = v32;
    v37(v32, v53);
    v51 = v37;
    if ((v36 & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
      v38 = 3;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(3, isUniquelyReferenced_nonNull_native, *&ML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5);
    }

    v40 = *(v0 + 272);
    v41 = *(v0 + 168);
    v42 = *(v0 + 184);
    static MetricsKey.trainingLoss.getter(v38);
    v54 = _s8CreateML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5();
    LOBYTE(v40) = v43;
    v51(v42, v41);
    if ((v40 & 1) == 0)
    {
      v44 = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0, v44, *&v54);
    }

    v45 = *(v0 + 272);
    v46 = *(v0 + 232);
    v50 = *(v0 + 224);
    v49 = *(v0 + 216);
    v48 = *(v0 + 208);
    v55 = *(v0 + 184);
    v47 = *(v0 + 136) >= *(v0 + 256);
    v52 = specialized _dictionaryUpCast<A, B, C, D>(_:)(_swiftEmptyDictionarySingleton);

    _swiftEmptyDictionarySingleton;
    v46;
    v50;
    v49;
    v48;
    v55;
    return (*(v0 + 8))(*(v0 + 264), v52, v47);
  }
}

{
  v3 = *(*v1 + 304);
  v2 = *v1;
  *(*v1 + 312) = v0;
  v3;
  if (v0)
  {
    v4 = TreeClassifierTrainingSessionDelegate.train(from:);
  }

  else
  {
    v5 = v2 + 14;
    v6 = v2[34];
    v11 = v2[27];
    v7 = v2[26];
    v8 = v2[24];
    v9 = v2[25];
    swift_endAccess(v5);

    (*(v9 + 8))(v7, v8);
    outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for AnyTreeClassifier);
    v4 = TreeClassifierTrainingSessionDelegate.train(from:);
  }

  return swift_task_switch(v4, 0, 0);
}

{
  v1 = *(v0 + 296) + 1;
  if (v1 == *(v0 + 264))
  {
    v2 = *(v0 + 272);
    v3 = *(v0 + 184);
    v35 = *(v0 + 168);
    v4 = *(v0 + 176);
    static MetricsKey.trainingAccuracy.getter();
    ML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5 = _s8CreateML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5();
    v7 = v6;
    v8 = v3;
    v9 = v35;
    v36 = *(v4 + 8);
    v36(v3, v9);
    if ((v7 & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
      v8 = 3;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(3, isUniquelyReferenced_nonNull_native, *&ML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5);
    }

    v22 = *(v0 + 272);
    v23 = *(v0 + 168);
    v24 = *(v0 + 184);
    static MetricsKey.trainingLoss.getter(v8);
    v33 = _s8CreateML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5();
    LOBYTE(v22) = v25;
    v36(v24, v23);
    if ((v22 & 1) == 0)
    {
      v26 = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0, v26, *&v33);
    }

    v27 = *(v0 + 272);
    v28 = *(v0 + 232);
    v32 = *(v0 + 224);
    v31 = *(v0 + 216);
    v30 = *(v0 + 208);
    v34 = *(v0 + 184);
    v29 = *(v0 + 136) >= *(v0 + 256);
    v37 = specialized _dictionaryUpCast<A, B, C, D>(_:)(_swiftEmptyDictionarySingleton);

    _swiftEmptyDictionarySingleton;
    v28;
    v32;
    v31;
    v30;
    v34;
    return (*(v0 + 8))(*(v0 + 264), v37, v29);
  }

  else
  {
    *(v0 + 296) = v1;
    v10 = *(v0 + 216);
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 280) + *(v0 + 160), v10, &demangling cache variable for type metadata for AnyTreeClassifier?);
    v11 = type metadata accessor for AnyTreeClassifier(0);
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {
      BUG();
    }

    v12 = *(v0 + 248);
    v13 = *(v0 + 160);
    v14 = v13 + *(v0 + 288);
    v15 = *(v0 + 240) + v13;
    (*(*(v0 + 200) + 16))(*(v0 + 208), v14, *(v0 + 192));
    swift_beginAccess(v15, v0 + 112, 33, 0);
    if (__swift_getEnumTagSinglePayload(v15, 1, v12) == 1)
    {
      BUG();
    }

    v16 = *(v0 + 272);
    v17 = *(v0 + 240) + *(v0 + 160);

    v18 = swift_task_alloc(128);
    *(v0 + 304) = v18;
    *v18 = v0;
    v18[1] = TreeClassifierTrainingSessionDelegate.train(from:);
    v19 = *(v0 + 216);
    return AnyTreeClassifier.update(_:with:eventHandler:)(v17, *(v0 + 208), partial apply for closure #1 in TreeClassifierTrainingSessionDelegate.train(from:), v16);
  }
}

{
  v1 = *(v0 + 272);
  v9 = *(v0 + 232);
  v8 = *(v0 + 224);
  v2 = *(v0 + 216);
  v3 = *(v0 + 208);
  v10 = *(v0 + 200);
  v7 = *(v0 + 184);
  v4 = *(v0 + 192);
  swift_endAccess(v0 + 112);
  v1;
  (*(v10 + 8))(v3, v4);
  outlined destroy of MLActivityClassifier.ModelParameters(v2, type metadata accessor for AnyTreeClassifier);
  v9;
  v8;
  v2;
  v3;
  v7;
  v5 = *(v0 + 312);
  return (*(v0 + 8))();
}

uint64_t TreeClassifierTrainingSessionDelegate.evaluate(from:)()
{
  v1[26] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
  v1[27] = swift_task_alloc((*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = (*(*(type metadata accessor for AnyColumn(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1[28] = swift_task_alloc(v3);
  v1[29] = swift_task_alloc(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyClassificationMetrics?);
  v1[30] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DataFrame(0);
  v1[31] = v5;
  v6 = *(v5 - 8);
  v1[32] = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1[33] = swift_task_alloc(v7);
  v1[34] = swift_task_alloc(v7);
  v1[35] = swift_task_alloc(v7);
  v1[36] = swift_task_alloc(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyTreeClassifierModel?);
  v1[37] = swift_task_alloc((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AnyTreeClassifierModel(0);
  v1[38] = v9;
  v1[39] = swift_task_alloc((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(TreeClassifierTrainingSessionDelegate.evaluate(from:), 0, 0);
}

{
  v1 = *(v0 + 304);
  v2 = *(v0 + 296);
  v3 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model + *(v0 + 208);
  swift_beginAccess(v3, v0 + 16, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v3, v2, &demangling cache variable for type metadata for AnyTreeClassifierModel?);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 296), &demangling cache variable for type metadata for AnyTreeClassifierModel?);
LABEL_5:
    v59 = 0;
    goto LABEL_6;
  }

  v4 = *(v0 + 208);
  outlined init with take of MLClassifierMetrics(*(v0 + 296), *(v0 + 312), type metadata accessor for AnyTreeClassifierModel);
  v5 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters + v4;
  swift_beginAccess(v5, v0 + 40, 0, 0);
  v6 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v6);
  v8 = *(v0 + 312);
  if (EnumTagSinglePayload)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 312), type metadata accessor for AnyTreeClassifierModel);
    goto LABEL_5;
  }

  v60 = *(v0 + 288);
  v56 = *(v0 + 280);
  v50 = *(v0 + 256);
  v53 = *(v0 + 248);
  v14 = *(v6 + 24);
  v45 = *(v5 + v14);
  v15 = *(v5 + v14 + 8);
  v16 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingData + *(v0 + 208);
  swift_beginAccess(v16, v0 + 64, 0, 0);
  (*(v50 + 16))(v56, v16, v53);
  v15;
  AnyTreeClassifierModel.applied(to:eventHandler:)(v56, 0, 0);
  v40 = *(v0 + 288);
  v57 = *(v0 + 248);
  v35 = *(v0 + 240);
  v48 = v15;
  v38 = *(v0 + 232);
  v61 = *(v0 + 224);
  v33 = *(v0 + 208);
  v42 = *(v0 + 216);
  v51 = *(*(v0 + 256) + 8);
  (v51)(*(v0 + 280));
  DataFrame.subscript.getter(v45, v15);
  swift_beginAccess(v16, v0 + 88, 32, 0);
  DataFrame.subscript.getter(v45, v15);
  swift_endAccess(v0 + 88);
  AnyClassificationMetrics.init(_:_:)(v38, v61);
  v62 = type metadata accessor for AnyClassificationMetrics(0);
  __swift_storeEnumTagSinglePayload(v35, 0, 1, v62);
  v17 = v33 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingMetrics;
  swift_beginAccess(v33 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingMetrics, v0 + 112, 33, 0);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v35, v17, &demangling cache variable for type metadata for AnyClassificationMetrics?);
  swift_endAccess(v0 + 112);
  v18 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationData + v33;
  swift_beginAccess(OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationData + v33, v0 + 136, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, v42, &demangling cache variable for type metadata for DataFrame?);
  v19 = __swift_getEnumTagSinglePayload(v42, 1, v57);
  v20 = *(v0 + 312);
  if (v19 == 1)
  {
    v21 = *(v0 + 288);
    v22 = *(v0 + 248);
    v54 = *(v0 + 240);
    v23 = *(v0 + 208);
    v46 = *(v0 + 216);
    v48;
    v51(v21, v22);
    outlined destroy of MLActivityClassifier.ModelParameters(v20, type metadata accessor for AnyTreeClassifierModel);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v46, &demangling cache variable for type metadata for DataFrame?);
    __swift_storeEnumTagSinglePayload(v54, 1, 1, v62);
    v24 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationMetrics + v23;
    v25 = v0 + 160;
    swift_beginAccess(v24, v0 + 160, 33, 0);
    v26 = v54;
    v27 = v24;
  }

  else
  {
    v28 = *(v0 + 272);
    v29 = *(v0 + 264);
    (*(*(v0 + 256) + 32))(v28, *(v0 + 216), *(v0 + 248));
    AnyTreeClassifierModel.applied(to:eventHandler:)(v28, 0, 0);
    v32 = *(v0 + 312);
    v34 = *(v0 + 288);
    v58 = *(v0 + 272);
    v39 = *(v0 + 264);
    v36 = *(v0 + 248);
    v37 = *(v0 + 240);
    v41 = *(v0 + 232);
    v43 = *(v0 + 208);
    v30 = *(v0 + 224);
    DataFrame.subscript.getter(v45, v48);
    DataFrame.subscript.getter(v45, v48);
    v48;
    AnyClassificationMetrics.init(_:_:)(v41, v30);
    v51(v39, v36);
    v51(v58, v36);
    v51(v34, v36);
    outlined destroy of MLActivityClassifier.ModelParameters(v32, type metadata accessor for AnyTreeClassifierModel);
    __swift_storeEnumTagSinglePayload(v37, 0, 1, v62);
    v31 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationMetrics + v43;
    v25 = v0 + 184;
    swift_beginAccess(OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationMetrics + v43, v0 + 184, 33, 0);
    v26 = v37;
    v27 = v31;
  }

  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v26, v27, &demangling cache variable for type metadata for AnyClassificationMetrics?);
  swift_endAccess(v25);
  v59 = 1;
LABEL_6:
  v9 = *(v0 + 296);
  v10 = *(v0 + 288);
  v11 = *(v0 + 280);
  v12 = *(v0 + 272);
  v47 = *(v0 + 264);
  v44 = *(v0 + 240);
  v52 = *(v0 + 232);
  v49 = *(v0 + 216);
  v55 = *(v0 + 224);
  *(v0 + 312);
  v9;
  v10;
  v11;
  v12;
  v47;
  v44;
  v52;
  v55;
  v49;
  return (*(v0 + 8))(v59, 1);
}

char TreeClassifierTrainingSessionDelegate.saveCheckpoint(to:phase:iteration:)(uint64_t a1, unsigned __int8 *a2)
{
  v32 = v2;
  v30 = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyTreeClassifier?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v28 = v25;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyTreeClassifierModel?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = type metadata accessor for AnyTreeClassifierModel(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v27 = v25;
  v31 = *a2;
  v29 = v3;
  v14 = v3 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model;
  swift_beginAccess(v3 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model, v25, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v14, v25, &demangling cache variable for type metadata for AnyTreeClassifierModel?);
  if (__swift_getEnumTagSinglePayload(v25, 1, v10) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v25, &demangling cache variable for type metadata for AnyTreeClassifierModel?);
    return 0;
  }

  v15 = 0xEB0000000064657ALL;
  v16 = v27;
  outlined init with take of MLClassifierMetrics(v25, v27, type metadata accessor for AnyTreeClassifierModel);
  switch(v31)
  {
    case 0:
      v17 = 0x696C616974696E69;
      break;
    case 1:
      v17 = 0x6974636172747865;
      goto LABEL_9;
    case 2:
      0xE800000000000000;
      goto LABEL_11;
    case 3:
      v17 = 0x697461756C617665;
LABEL_9:
      v15 = 0xEA0000000000676ELL;
      break;
    case 4:
      v15 = 0xEB00000000676E69;
      v17 = 0x636E657265666E69;
      break;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)(v17, v15, 0x676E696E69617274, 0xE800000000000000, 0);
  v15;
  if ((v18 & 1) == 0)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v16, type metadata accessor for AnyTreeClassifierModel);
    return 0;
  }

LABEL_11:
  v19 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier + v29;
  swift_beginAccess(OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier + v29, v26, 0, 0);
  v20 = v28;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, v28, &demangling cache variable for type metadata for AnyTreeClassifier?);
  v21 = type metadata accessor for AnyTreeClassifier(0);
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    BUG();
  }

  v22 = lazy protocol witness table accessor for type AnyTreeClassifier and conformance AnyTreeClassifier();
  v23 = v32;
  SupervisedTabularEstimator.write(_:to:overwrite:)(v16, v30, 1, v21, v22);
  outlined destroy of MLActivityClassifier.ModelParameters(v16, type metadata accessor for AnyTreeClassifierModel);
  result = outlined destroy of MLActivityClassifier.ModelParameters(v20, type metadata accessor for AnyTreeClassifier);
  if (!v23)
  {
    return 1;
  }

  return result;
}

uint64_t TreeClassifierTrainingSessionDelegate.save(to:)(uint64_t a1)
{
  v16 = v1;
  v17 = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters + v2;
  swift_beginAccess(v10, v15, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, &v14, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  if (__swift_getEnumTagSinglePayload(&v14, 1, v6) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v14, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
    v11 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v11, 0, 0);
    *v12 = 0xD000000000000031;
    *(v12 + 8) = "Selected features" + 0x8000000000000000;
    *(v12 + 16) = 0;
    *(v12 + 32) = 0;
    *(v12 + 48) = 2;
    return swift_willThrow(&type metadata for MLCreateError, v11);
  }

  else
  {
    outlined init with take of MLClassifierMetrics(&v14, &v14, type metadata accessor for PersistentParametersForTreeBasedMethods);
    PersistentParametersForTreeBasedMethods.save(toSessionDirectory:)(v17);
    return outlined destroy of MLActivityClassifier.ModelParameters(&v14, type metadata accessor for PersistentParametersForTreeBasedMethods);
  }
}

NSURL *TreeClassifierTrainingSessionDelegate.restore(from:phase:)(uint64_t a1)
{
  v36 = v1;
  v31 = v2;
  v30 = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v33 = &v27;
  v6 = alloca(v3);
  v7 = alloca(v3);
  v35 = &v27;
  v8 = type metadata accessor for URL(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v32 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v13 = *(*(v32 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v34 = &v27;
  v16 = alloca(v13);
  v17 = alloca(v13);
  (*(v9 + 16))(&v27, v30, v8);
  v18 = v36;
  result = PersistentParametersForTreeBasedMethods.init(sessionDirectory:)(&v27);
  if (!v18)
  {
    v36 = &v27;
    v20 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters + v31;
    swift_beginAccess(OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters + v31, v28, 0, 0);
    v21 = v35;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v20, v35, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
    v22 = v21;
    v23 = v32;
    if (__swift_getEnumTagSinglePayload(v22, 1, v32) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v35, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
      v24 = v33;
      outlined init with take of MLClassifierMetrics(v36, v33, type metadata accessor for PersistentParametersForTreeBasedMethods);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v23);
      swift_beginAccess(v20, v29, 33, 0);
      outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v24, v20, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
      return swift_endAccess(v29);
    }

    else
    {
      v25 = v34;
      outlined init with take of MLClassifierMetrics(v35, v34, type metadata accessor for PersistentParametersForTreeBasedMethods);
      v26 = v36;
      TreeClassifierTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:)(v36, v25);
      outlined destroy of MLActivityClassifier.ModelParameters(v25, type metadata accessor for PersistentParametersForTreeBasedMethods);
      return outlined destroy of MLActivityClassifier.ModelParameters(v26, type metadata accessor for PersistentParametersForTreeBasedMethods);
    }
  }

  return result;
}

uint64_t TreeClassifierTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:)(uint64_t a1, char *a2)
{
  v45 = v2;
  v4 = a1;
  v5 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v6 = *(v5 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = *&a2[v6];
  v44 = a2;
  v10 = *&a2[v6 + 8];
  v46 = a1;
  v47 = v5;
  if (v9 ^ v7 | v10 ^ v8 && (v11 = v7, v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v7, v8, v9, v10, 0), v5 = v47, v13 = v11, v4 = v46, (v12 & 1) == 0))
  {
    v40 = v9;
    v41 = v10;
    v46 = v8;
    v47 = v13;
    v8;
    v10;
    v20 = String.init<A>(_:)(&v40, &type metadata for String, &protocol witness table for String, &protocol witness table for String);
    v25 = v33;
    v22 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v45 = swift_allocError(&type metadata for MLCreateError, v22, 0, 0);
    v24 = 0xED00006E6D756C6FLL;
    v21 = 0x6320746567726154;
  }

  else
  {
    v14 = *(v4 + *(v5 + 28));
    v14;
    v43 = v14;
    v15 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v14);
    v16 = *&v44[*(v5 + 28)];
    v16;
    v42 = v16;
    v17 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v16);
    v18 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v15, v17);
    v15;
    v17;
    if (v18)
    {
      result = static BoostedTreeConfiguration.firstIncompatibility(_:_:)(*(v47 + 32) + v46, &v44[*(v47 + 32)]);
      if (!v35)
      {
        return result;
      }

      v20 = v38;
      v46 = v37;
      v21 = v34;
      v47 = v36;
      v22 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      v45 = swift_allocError(&type metadata for MLCreateError, v22, 0, 0);
      v24 = v35;
      v25 = v39;
    }

    else
    {
      v44 = "Classifier.swift" + 0x8000000000000000;
      v43;
      v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
      v27 = lazy protocol witness table accessor for type [String] and conformance [A]();
      v47 = BidirectionalCollection<>.joined(separator:)(8236, 0xE200000000000000, v26, v27);
      v46 = v28;
      v43;
      v42;
      v29 = BidirectionalCollection<>.joined(separator:)(8236, 0xE200000000000000, v26, v27);
      v31 = v30;
      v42;
      v40 = v29;
      v41 = v31;
      v20 = String.init<A>(_:)(&v40, &type metadata for String, &protocol witness table for String, &protocol witness table for String);
      v25 = v32;
      v22 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      v45 = swift_allocError(&type metadata for MLCreateError, v22, 0, 0);
      v24 = v44;
      v21 = 0xD000000000000011;
    }
  }

  *v23 = v21;
  *(v23 + 8) = v24;
  *(v23 + 16) = v47;
  *(v23 + 24) = v46;
  *(v23 + 32) = v20;
  *(v23 + 40) = v25;
  *(v23 + 48) = 3;
  return swift_willThrow(&type metadata for MLCreateError, v22);
}

char _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  result = 1;
  if (a1 == a2)
  {
    return result;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v31 = a2;
  v3 = 1 << *(a1 + 32);
  v4 = ~(-1 << v3);
  if (v3 >= 64)
  {
    v4 = -1;
  }

  v5 = *(a1 + 56) & v4;
  v32 = (v3 + 63) >> 6;
  v6 = 0;
  v28 = a1;
  while (1)
  {
    if (v5)
    {
      _BitScanForward64(&v7, v5);
      v30 = (v5 - 1) & v5;
      v29 = v6;
      v8 = v7 | (v6 << 6);
      goto LABEL_27;
    }

    v9 = v6 + 1;
    if (__OFADD__(1, v6))
    {
      BUG();
    }

    if (v9 >= v32)
    {
      return 1;
    }

    v10 = *(a1 + 8 * v9 + 56);
    if (!v10)
    {
      break;
    }

    v11 = v6 + 1;
LABEL_26:
    _BitScanForward64(&v13, v10);
    v30 = v10 & (v10 - 1);
    v8 = v13 | (v11 << 6);
    v29 = v11;
LABEL_27:
    v14 = *(a1 + 48);
    v15 = 16 * v8;
    v16 = *(v14 + v15);
    v17 = *(v14 + v15 + 8);
    v18 = v31;
    Hasher.init(_seed:)(*(v31 + 40));
    v17;
    v19 = v16;
    String.hash(into:)(v27, v16);
    v20 = Hasher._finalize()();
    v21 = ~(-1 << *(v18 + 32));
    v22 = v21 & v20;
    v23 = *(v18 + 8 * ((v21 & v20) >> 6) + 56);
    if (!_bittest64(&v23, v22))
    {
LABEL_35:
      v17, v19;
      return 0;
    }

    v24 = *(v18 + 48);
    while (1)
    {
      v25 = *(v24 + 16 * v22);
      v19 = *(v24 + 16 * v22 + 8);
      if (v25 == v16 && v19 == v17)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)(v25, v19, v16, v17, 0))
      {
        break;
      }

      v22 = v21 & (v22 + 1);
      v26 = *(v31 + 8 * (v22 >> 6) + 56);
      if (!_bittest64(&v26, v22))
      {
        goto LABEL_35;
      }
    }

    v17, v19;
    a1 = v28;
    v6 = v29;
    v5 = v30;
  }

  v11 = v6 + 2;
  if (v6 + 2 >= v32)
  {
    return 1;
  }

  v10 = *(a1 + 8 * v9 + 64);
  if (v10)
  {
    goto LABEL_26;
  }

  v11 = v6 + 3;
  if (v6 + 3 >= v32)
  {
    return 1;
  }

  v10 = *(a1 + 8 * v9 + 72);
  if (v10)
  {
    goto LABEL_26;
  }

  v11 = v6 + 4;
  if (v6 + 4 >= v32)
  {
    return 1;
  }

  v10 = *(a1 + 8 * v9 + 80);
  if (v10)
  {
    goto LABEL_26;
  }

  v11 = v6 + 5;
  if (v6 + 5 >= v32)
  {
    return 1;
  }

  v10 = *(a1 + 8 * v9 + 88);
  if (v10)
  {
    goto LABEL_26;
  }

  v11 = v6 + 6;
  if (v6 + 6 >= v32)
  {
    return 1;
  }

  v10 = *(a1 + 8 * v9 + 96);
  if (v10)
  {
    goto LABEL_26;
  }

  v12 = v6 + 7;
  result = 1;
  while (v12 < v32)
  {
    v10 = *(a1 + 8 * v12++ + 56);
    if (v10)
    {
      v11 = v12 - 1;
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t TreeClassifierTrainingSessionDelegate.deinit()
{
  outlined destroy of MLActivityClassifier.ModelParameters(v0 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  v1 = v0 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingData;
  v2 = type metadata accessor for DataFrame(0);
  (*(*(v2 - 8) + 8))(v1, v2);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationData, &demangling cache variable for type metadata for DataFrame?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier, &demangling cache variable for type metadata for AnyTreeClassifier?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model, &demangling cache variable for type metadata for AnyTreeClassifierModel?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingMetrics, &demangling cache variable for type metadata for AnyClassificationMetrics?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationMetrics, &demangling cache variable for type metadata for AnyClassificationMetrics?);
  return v0;
}

uint64_t type metadata accessor for TreeClassifierTrainingSessionDelegate(uint64_t a1)
{
  result = type metadata singleton initialization cache for TreeClassifierTrainingSessionDelegate;
  if (!type metadata singleton initialization cache for TreeClassifierTrainingSessionDelegate)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for TreeClassifierTrainingSessionDelegate);
  }

  return result;
}

uint64_t type metadata completion function for TreeClassifierTrainingSessionDelegate(uint64_t a1)
{
  result = type metadata accessor for MLTrainingSessionParameters(319);
  if (v2 <= 0x3F)
  {
    v9[0] = *(result - 8) + 64;
    result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for PersistentParametersForTreeBasedMethods?, type metadata accessor for PersistentParametersForTreeBasedMethods);
    if (v3 <= 0x3F)
    {
      v9[1] = *(result - 8) + 64;
      result = type metadata accessor for DataFrame(319);
      if (v4 <= 0x3F)
      {
        v9[2] = *(result - 8) + 64;
        result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for DataFrame?, &type metadata accessor for DataFrame);
        if (v5 <= 0x3F)
        {
          v9[3] = *(result - 8) + 64;
          result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for AnyTreeClassifier?, type metadata accessor for AnyTreeClassifier);
          if (v6 <= 0x3F)
          {
            v9[4] = *(result - 8) + 64;
            result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for AnyTreeClassifierModel?, type metadata accessor for AnyTreeClassifierModel);
            if (v7 <= 0x3F)
            {
              v9[5] = *(result - 8) + 64;
              result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for AnyClassificationMetrics?, type metadata accessor for AnyClassificationMetrics);
              if (v8 <= 0x3F)
              {
                v10 = *(result - 8) + 64;
                v11 = v10;
                result = swift_updateClassMetadata2(a1, 256, 8, v9, a1 + 80);
                if (!result)
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for TrainingSessionDelegate.train(from:) in conformance TreeClassifierTrainingSessionDelegate(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_task_alloc(320);
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for TrainingSessionDelegate.train(from:) in conformance SoundClassifierTrainingSessionDelegate;
  return TreeClassifierTrainingSessionDelegate.train(from:)(a1);
}

uint64_t protocol witness for TrainingSessionDelegate.evaluate(from:) in conformance TreeClassifierTrainingSessionDelegate()
{
  v2 = *v0;
  v3 = swift_task_alloc(320);
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for TrainingSessionDelegate.evaluate(from:) in conformance SoundClassifierTrainingSessionDelegate;
  return TreeClassifierTrainingSessionDelegate.evaluate(from:)();
}

uint64_t lazy protocol witness table accessor for type AnyTreeClassifier and conformance AnyTreeClassifier()
{
  result = lazy protocol witness table cache variable for type AnyTreeClassifier and conformance AnyTreeClassifier;
  if (!lazy protocol witness table cache variable for type AnyTreeClassifier and conformance AnyTreeClassifier)
  {
    v1 = type metadata accessor for AnyTreeClassifier(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for AnyTreeClassifier, v1);
    lazy protocol witness table cache variable for type AnyTreeClassifier and conformance AnyTreeClassifier = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyTreeClassifier and conformance AnyTreeClassifier;
  if (!lazy protocol witness table cache variable for type AnyTreeClassifier and conformance AnyTreeClassifier)
  {
    v1 = type metadata accessor for AnyTreeClassifier(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for AnyTreeClassifier, v1);
    lazy protocol witness table cache variable for type AnyTreeClassifier and conformance AnyTreeClassifier = result;
  }

  return result;
}

uint64_t outlined init with copy of PersistentParametersForTreeBasedMethods(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3(0);
  (*(*(v3 - 8) + 16))(a2, a1, v3);
  return a2;
}

uint64_t CMLModel.initialize(options:)(uint64_t a1)
{
  v10 = v2;
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v4 = empty;
  v5 = type metadata accessor for CMLParameters();
  inited = swift_initStackObject(v5, v9);
  *(inited + 16) = v4;
  type metadata accessor for CMLFeatureValue();

  v7 = CMLFeatureValue.__allocating_init(_:)(a1);
  if (v1)
  {
  }

  CMLParameters.add(key:featureValue:)(33, v7);
  CMLModel.callFunction(name:arguments:)(14, inited);

  swift_setDeallocating(inited);
  return tc_v1_release(*(inited + 16));
}

uint64_t CMLModel.addMetadata(_:)(uint64_t a1)
{
  v10 = v2;
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v4 = empty;
  v5 = type metadata accessor for CMLParameters();
  inited = swift_initStackObject(v5, v9);
  *(inited + 16) = v4;
  type metadata accessor for CMLFeatureValue();

  v7 = CMLFeatureValue.__allocating_init(_:)(a1);
  if (v1)
  {
  }

  CMLParameters.add(key:featureValue:)(32, v7);

  CMLModel.callFunction(name:arguments:)(7, inited);

  swift_setDeallocating(inited);
  return tc_v1_release(*(inited + 16));
}

uint64_t CMLModel.listFields()()
{
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v2 = empty;
  v3 = type metadata accessor for CMLParameters();
  inited = swift_initStackObject(v3, v6);
  *(inited + 16) = v2;
  CMLModel.callFunction(name:arguments:)(15, inited);
  if (v0)
  {
  }

  else
  {
    v2 = CMLVariant.featureValue()();

    swift_setDeallocating(inited);
    tc_v1_release(*(inited + 16));
  }

  return v2;
}

uint64_t CMLModel.getValue(field:)(uint64_t a1, uint64_t a2)
{
  v13 = v2;
  v14 = v3;
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v5 = empty;
  v6 = type metadata accessor for CMLParameters();
  inited = swift_initStackObject(v6, v12);
  *(inited + 16) = v5;
  type metadata accessor for CMLFeatureValue();
  a2;
  v8 = v13;
  v9 = CMLFeatureValue.__allocating_init(_:)(a1, a2);
  if (v8)
  {
    swift_unexpectedError(v8, "CreateML/MLDataValueConvertible.swift", 37, 1, 170);
    BUG();
  }

  CMLParameters.add(key:featureValue:)(35, v9);

  v11 = CMLModel.callFunction(name:arguments:)(16, inited);
  swift_setDeallocating(inited);
  tc_v1_release(*(inited + 16));
  return v11;
}

uint64_t CMLModel.resume(training:validation:)(uint64_t a1, uint64_t a2)
{
  v12 = v3;
  v11 = a2;
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v5 = empty;
  v6 = type metadata accessor for CMLParameters();
  inited = swift_initStackObject(v6, v10);
  *(inited + 16) = v5;
  CMLParameters.add(key:table:)(4, a1);
  if (v2)
  {
  }

  v9 = v11;
  if (v11)
  {

    CMLParameters.add(key:table:)(3, v9);
  }

  CMLModel.callFunction(name:arguments:)(3, inited);

  swift_setDeallocating(inited);
  return tc_v1_release(*(inited + 16));
}

uint64_t CMLModel.resume(data:_:)(uint64_t a1, uint64_t a2)
{
  v11 = v3;
  v10 = a2;
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v5 = empty;
  v6 = type metadata accessor for CMLParameters();
  inited = swift_initStackObject(v6, v9);
  *(inited + 16) = v5;
  CMLParameters.add(key:table:)(4, a1);
  if (v2)
  {
  }

  CMLParameters.add(key:table:)(3, v10);
  CMLModel.callFunction(name:arguments:)(3, inited);

  swift_setDeallocating(inited);
  return tc_v1_release(*(inited + 16));
}

uint64_t CMLModel.evaluate(table:)(uint64_t *a1)
{
  v13 = v1;
  v14 = v2;
  v3 = *a1;
  v4 = *(a1 + 8);
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v6 = empty;
  v7 = type metadata accessor for CMLParameters();
  inited = swift_initStackObject(v7, v12);
  *(inited + 16) = v6;
  if (v4)
  {
    swift_willThrow(v7, v12);
    swift_errorRetain(v3);
LABEL_7:

    return v6;
  }

  v6 = *(v3 + 16);

  v9 = v13;
  CMLParameters.add(key:table:)(4, v6);
  if (v9)
  {

    goto LABEL_7;
  }

  type metadata accessor for CMLFeatureValue();
  v10 = CMLFeatureValue.__allocating_init(_:)(0x74726F706572, 0xE600000000000000);
  CMLParameters.add(key:featureValue:)(29, v10);

  v6 = CMLModel.callFunction(name:arguments:)(13, inited);
  swift_setDeallocating(inited);
  tc_v1_release(*(inited + 16));
  return v6;
}

uint64_t CMLModel.save(to:)()
{
  v14 = v1;
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v3 = empty;
  v4 = type metadata accessor for CMLParameters();
  inited = swift_initStackObject(v4, v12);
  *(inited + 16) = v3;
  v5 = URL.path.getter(v4);
  v7 = v6;
  type metadata accessor for CMLFeatureValue();
  v7;
  v8 = CMLFeatureValue.__allocating_init(_:)(v5, v7);
  if (v0)
  {
    swift_unexpectedError(v0, "CreateML/MLDataValueConvertible.swift", 37, 1, 170);
    BUG();
  }

  v9 = v8;
  v7;
  v10 = inited;
  CMLParameters.add(key:featureValue:)(8, v9);

  CMLModel.callFunction(name:arguments:)(6, v10);

  swift_setDeallocating(v10);
  return tc_v1_release(*(v10 + 16));
}

uint64_t CMLModel.export(to:)(uint64_t a1)
{
  v33 = v1;
  v37 = a1;
  v31 = v2;
  v32 = *v2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = type metadata accessor for URL(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v35 = v30;
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v12 = empty;
  v13 = type metadata accessor for CMLParameters();
  inited = swift_initStackObject(v13, v30);
  *(inited + 16) = v12;
  outlined init with copy of URL?(v37, v30);
  if (__swift_getEnumTagSinglePayload(v30, 1, v6) == 1)
  {
    outlined destroy of URL?(v30);
    type metadata accessor for CMLFeatureValue();
    v14 = v33;
    v15 = CMLFeatureValue.__allocating_init(_:)(0, 0xE000000000000000);
    if (!v14)
    {
      v16 = inited;
      CMLParameters.add(key:featureValue:)(27, v15);
      goto LABEL_7;
    }

    v29 = v14;
LABEL_13:
    swift_unexpectedError(v29, "CreateML/MLDataValueConvertible.swift", 37, 1, 170);
    BUG();
  }

  v17 = v35;
  v34 = v6;
  v37 = v7;
  (*(v7 + 32))(v35, v30, v6);
  v18 = URL.path.getter(v17);
  v20 = v19;
  type metadata accessor for CMLFeatureValue();
  v20;
  v21 = v33;
  v22 = CMLFeatureValue.__allocating_init(_:)(v18, v20);
  if (v21)
  {
    v29 = v21;
    goto LABEL_13;
  }

  v23 = v22;
  v20;
  v24 = inited;
  CMLParameters.add(key:featureValue:)(27, v23);
  (*(v37 + 8))(v35, v34);
  v16 = v24;
LABEL_7:

  v25 = CMLModel.callFunction(name:arguments:)(8, v16);
  v26 = specialized handling<A, B>(_:_:)(*(v25 + 16));
  if (!v26)
  {
    BUG();
  }

  v27 = inited;
  swift_setDeallocating(inited);
  tc_v1_release(*(v27 + 16));
  result = swift_allocObject(v32, 24, 7);
  *(result + 16) = v26;
  return result;
}

uint64_t CMLModel.compile()()
{
  v1[19] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  v1[20] = swift_task_alloc((*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for UUID(0);
  v1[21] = v3;
  v4 = *(v3 - 8);
  v1[22] = v4;
  v1[23] = swift_task_alloc((*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL(0);
  v1[24] = v5;
  v6 = *(v5 - 8);
  v1[25] = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1[26] = swift_task_alloc(v7);
  v1[27] = swift_task_alloc(v7);
  v1[28] = swift_task_alloc(v7);
  return swift_task_switch(CMLModel.compile(), 0, 0);
}

{
  v1 = objc_opt_self(NSFileManager);
  v2 = [v1 defaultManager];
  v3 = v2;
  *(v0 + 232) = v3;
  NSFileManager.createTemporaryModelDirectory()();
  if (v4)
  {

    v14 = *(v0 + 216);
    v15 = *(v0 + 208);
    v16 = *(v0 + 160);
    v17 = *(v0 + 184);
    *(v0 + 224);
    v14;
    v15;
    v17;
    v16;
    return (*(v0 + 8))();
  }

  else
  {
    v28 = *(v0 + 224);
    v35 = *(v0 + 216);
    v34 = *(v0 + 208);
    v27 = *(v0 + 200);
    v31 = *(v0 + 192);
    v5 = *(v0 + 184);
    v29 = *(v0 + 176);
    v30 = *(v0 + 168);
    v32 = *(v0 + 152);
    v26 = *(v0 + 160);
    NSFileManager.temporaryModelDirectory.getter();
    UUID.init()();
    v6 = UUID.uuidString.getter();
    v8 = v7;
    (*(v29 + 8))(v5, v30);
    URL.appendingPathComponent(_:)(v6, v8);
    v8;
    URL.appendingPathExtension(_:)(0x6C65646F6D6C6DLL, 0xE700000000000000);
    v9 = *(v27 + 8);
    *(v0 + 240) = v9;
    v9(v34, v31);
    (*(v27 + 16))(v26, v35, v31);
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v31);
    CMLModel.export(to:)(v26);
    v10 = *(v0 + 160);
    v11 = *(v0 + 216);

    outlined destroy of URL?(v10);
    v12 = Data.init(contentsOf:options:)(v11, 0);
    *(v0 + 248) = v12;
    *(v0 + 256) = v13;
    v19 = v12;
    v20 = v13;
    type metadata accessor for MLModelAsset();
    outlined copy of Data._Representation(v19, v20);
    v21 = @nonobjc MLModelAsset.__allocating_init(specification:)(v19, v20);
    *(v0 + 264) = v21;
    v22 = v21;
    v33 = objc_opt_self(MLModel);
    v23 = objc_allocWithZone(MLModelConfiguration);
    v24 = [v23 init];
    *(v0 + 272) = v24;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = CMLModel.compile();
    v25 = swift_continuation_init(v0 + 16, 1);
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for UnsafeContinuation<MLModel, Error>);
    *(v0 + 112) = v25;
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned MLModel?, @unowned NSError?) -> () with result type MLModel;
    *(v0 + 104) = &block_descriptor_5;
    [v33 loadModelAsset:v22 configuration:v24 completionHandler:v0 + 80];
    return swift_continuation_await(v0 + 16);
  }
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 280) = v1;
  if (v1)
  {
    v2 = CMLModel.compile();
  }

  else
  {
    v2 = CMLModel.compile();
  }

  return swift_task_switch(v2, 0, 0);
}

{
  v10 = *(v0 + 272);
  v11 = *(v0 + 264);
  v9 = *(v0 + 240);
  v1 = *(v0 + 232);
  v8 = *(v0 + 224);
  v2 = *(v0 + 216);
  v7 = *(v0 + 208);
  v3 = *(v0 + 192);
  v5 = *(v0 + 160);
  v6 = *(v0 + 184);
  outlined consume of Data._Representation(*(v0 + 248), *(v0 + 256));

  v12 = *(v0 + 144);
  $defer #1 () in CMLModel.compile()(v1);

  v9(v2, v3);
  v9(v8, v3);
  v8;
  v2;
  v7;
  v6;
  v5;
  return (*(v0 + 8))(v12);
}

uint64_t CMLModel.compile()(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 280);
  v14 = *(v2 + 272);
  v15 = *(v2 + 264);
  v16 = *(v2 + 256);
  v4 = *(v2 + 248);
  v12 = *(v2 + 240);
  v5 = *(v2 + 232);
  v17 = *(v2 + 224);
  v13 = *(v2 + 192);
  v6 = *(v2 + 216);
  swift_willThrow(a1, a2);
  outlined consume of Data._Representation(v4, v16);

  $defer #1 () in CMLModel.compile()(v5);
  v12(v6, v13);
  v12(v17, v13);
  v18 = *(v2 + 280);
  v7 = *(v2 + 216);
  v8 = *(v2 + 208);
  v9 = *(v2 + 160);
  v10 = *(v2 + 184);
  *(v2 + 224);
  v7;
  v8;
  v10;
  v9;
  return (*(v2 + 8))();
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

NSURL *$defer #1 () in CMLModel.compile()(id a1)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v2 = v1;
  v8 = 0;
  v3 = [a1 removeItemAtURL:v1 error:&v8];

  v4 = v8;
  if (v3)
  {
    return v8;
  }

  v6 = v8;
  v7 = _convertNSErrorToError(_:)(v4);

  swift_willThrow();
  v7;
  return __stack_chk_guard;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_SiSgs5NeverOTg5059_s11TabularData0B5FrameV8CreateMLEyAcD11MLDataTableVcfcSiSgR5XEfU_0K2ML0O6ColumnVySiGTf1cn_n(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    BUG();
  }

  if (a2 == a1)
  {
    outlined consume of Result<_DataTable, Error>(a3, a4);
  }

  else
  {
    v6 = 0;
    if (v5 > 0)
    {
      v6 = v5;
    }

    v26 = a1;
    v27 = v5;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v8 = v27;
    v9 = a2;
    if (a2 < a1 || v27 < 0)
    {
      BUG();
    }

    v10 = 0;
    v11 = a4;
    do
    {
      if (v10 >= v8)
      {
        BUG();
      }

      v12 = v10 + 1;
      if (__OFADD__(1, v10))
      {
        BUG();
      }

      v13 = a1 + v10;
      if (v11)
      {
        LOBYTE(v7) = 1;
        v14 = 0;
      }

      else
      {
        outlined copy of Result<_DataTable, Error>(a3, 0);
        _UntypedColumn.valueAtIndex(index:)(v13, a5);
        outlined consume of Result<_DataTable, Error>(a3, 0);
        v14 = v19;
        if (v21)
        {
          outlined consume of MLDataValue(v19, v20, v21);
          LOBYTE(v7) = 1;
          v14 = 0;
          v11 = a4;
          v9 = a2;
          a1 = v26;
          v8 = v27;
        }

        else
        {
          v11 = a4;
          v9 = a2;
          a1 = v26;
          v8 = v27;
          v7 = 0;
        }
      }

      v15 = _swiftEmptyArrayStorage[2];
      v16 = v15 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v15)
      {
        v23 = v7;
        v22 = v14;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v16, 1);
        v16 = v15 + 1;
        v14 = v22;
        v7 = v23;
        v8 = v27;
        a1 = v26;
        v9 = a2;
        v11 = a4;
      }

      _swiftEmptyArrayStorage[2] = v16;
      v17 = 2 * v15;
      _swiftEmptyArrayStorage[v17 + 4] = v14;
      LOBYTE(_swiftEmptyArrayStorage[v17 + 5]) = v7;
      if (v13 >= v9)
      {
        BUG();
      }

      v10 = v12;
    }

    while (v12 != v8);
    outlined consume of Result<_DataTable, Error>(a3, v11);
  }

  return _swiftEmptyArrayStorage;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_SdSgs5NeverOTg567_s11TabularData0B5FrameV8CreateMLEyAcD11MLDataTableVcfcSdSgSiXEfU0_0K2ML0O6ColumnVySdGTf1cn_n(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    BUG();
  }

  if (a2 == a1)
  {
    outlined consume of Result<_DataTable, Error>(a3, a4);
  }

  else
  {
    v6 = 0;
    if (v5 > 0)
    {
      v6 = v5;
    }

    v26 = a1;
    v27 = v5;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v8 = v27;
    v9 = a2;
    if (a2 < a1 || v27 < 0)
    {
      BUG();
    }

    v10 = 0;
    v11 = a4;
    do
    {
      if (v10 >= v8)
      {
        BUG();
      }

      v12 = v10 + 1;
      if (__OFADD__(1, v10))
      {
        BUG();
      }

      v13 = a1 + v10;
      if (v11)
      {
        LOBYTE(v7) = 1;
        v14 = 0;
      }

      else
      {
        outlined copy of Result<_DataTable, Error>(a3, 0);
        _UntypedColumn.valueAtIndex(index:)(v13, a5);
        outlined consume of Result<_DataTable, Error>(a3, 0);
        v14 = v19;
        if (v21 == 1)
        {
          v11 = a4;
          v9 = a2;
          a1 = v26;
          v8 = v27;
          v7 = 0;
        }

        else
        {
          outlined consume of MLDataValue(v19, v20, v21);
          LOBYTE(v7) = 1;
          v14 = 0;
          v11 = a4;
          v9 = a2;
          a1 = v26;
          v8 = v27;
        }
      }

      v15 = _swiftEmptyArrayStorage[2];
      v16 = v15 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v15)
      {
        v23 = v7;
        v22 = v14;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v16, 1);
        v16 = v15 + 1;
        v14 = v22;
        v7 = v23;
        v8 = v27;
        a1 = v26;
        v9 = a2;
        v11 = a4;
      }

      _swiftEmptyArrayStorage[2] = v16;
      v17 = 2 * v15;
      _swiftEmptyArrayStorage[v17 + 4] = v14;
      LOBYTE(_swiftEmptyArrayStorage[v17 + 5]) = v7;
      if (v13 >= v9)
      {
        BUG();
      }

      v10 = v12;
    }

    while (v12 != v8);
    outlined consume of Result<_DataTable, Error>(a3, v11);
  }

  return _swiftEmptyArrayStorage;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_SSSgs5NeverOTg567_s11TabularData0B5FrameV8CreateMLEyAcD11MLDataTableVcfcSSSgSiXEfU1_0K2ML0O6ColumnVySSGTf1cn_n(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    BUG();
  }

  if (a2 == a1)
  {
    outlined consume of Result<_DataTable, Error>(a3, a4);
  }

  else
  {
    v6 = 0;
    if (v5 > 0)
    {
      v6 = v5;
    }

    v26 = a1;
    v27 = v5;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v7 = v27;
    v8 = a2;
    if (a2 < a1 || v27 < 0)
    {
      BUG();
    }

    v9 = 0;
    v10 = a4;
    do
    {
      if (v9 >= v7)
      {
        BUG();
      }

      v11 = v9 + 1;
      if (__OFADD__(1, v9))
      {
        BUG();
      }

      v12 = a1 + v9;
      if (v10)
      {
        v13 = 0;
        v14 = 0;
      }

      else
      {
        outlined copy of Result<_DataTable, Error>(a3, 0);
        _UntypedColumn.valueAtIndex(index:)(v12, a5);
        outlined consume of Result<_DataTable, Error>(a3, 0);
        v13 = v19;
        v14 = v20;
        if (v21 != 2)
        {
          outlined consume of MLDataValue(v19, v20, v21);
          v13 = 0;
          v14 = 0;
        }

        v10 = a4;
        v8 = a2;
        a1 = v26;
        v7 = v27;
      }

      v15 = _swiftEmptyArrayStorage[2];
      v16 = v15 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v15)
      {
        v22 = v13;
        v23 = v14;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v16, 1);
        v16 = v15 + 1;
        v14 = v23;
        v13 = v22;
        v7 = v27;
        a1 = v26;
        v8 = a2;
        v10 = a4;
      }

      _swiftEmptyArrayStorage[2] = v16;
      v17 = 2 * v15;
      _swiftEmptyArrayStorage[v17 + 4] = v13;
      _swiftEmptyArrayStorage[v17 + 5] = v14;
      if (v12 >= v8)
      {
        BUG();
      }

      v9 = v11;
    }

    while (v11 != v7);
    outlined consume of Result<_DataTable, Error>(a3, v10);
  }

  return _swiftEmptyArrayStorage;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_Say8CreateML11MLDataValueOGSgs5NeverOTg5025_s11TabularData0B5FrameV8d9MLEyAcD11f17TableVcfcSayAD0F5G12OGSgSiXEfU2_AG0F6ColumnVyAI12SequenceTypeVGTf1cn_n(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5)
{
  v34 = a3;
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    BUG();
  }

  if (a2 == a1)
  {
    outlined consume of Result<_DataTable, Error>(v34, a4);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v40 = a4;
    v36 = _swiftEmptyArrayStorage;
    v37 = a2;
    v6 = 0;
    if (v5 > 0)
    {
      v6 = v5;
    }

    v38 = a1;
    v39 = v5;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v7 = v39;
    v8 = v37;
    if (v37 < a1 || v39 < 0)
    {
      BUG();
    }

    v9 = v36;
    v10 = 0;
    v11 = v40;
    do
    {
      if (v10 >= v7)
      {
        BUG();
      }

      v12 = v10 + 1;
      if (__OFADD__(1, v10))
      {
        BUG();
      }

      v13 = a1 + v10;
      v28 = v13;
      if (v11)
      {
        v14 = 0;
      }

      else
      {
        v32 = v9;
        v15 = v34;
        outlined copy of Result<_DataTable, Error>(v34, 0);
        _UntypedColumn.valueAtIndex(index:)(v13, a5);
        outlined consume of Result<_DataTable, Error>(v15, 0);
        v16 = v29;
        if (v31 == 3)
        {
          v33 = v30;
          outlined copy of MLDataValue(v29, v30, 3u);
          v17 = CMLSequence.size.getter();
          if (CMLSequence.size.getter() < 0)
          {
            BUG();
          }

          v18 = CMLSequence.size.getter();
          if (v17 < 0 || v18 < v17)
          {
            BUG();
          }

          if (v17)
          {
            v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLDataValue>);
            v20 = swift_allocObject(v19, 24 * v17 + 32, 7);
            v21 = (_swift_stdlib_malloc_size(v20) - 32);
            v20[2] = v17;
            v20[3] = 2 * (v21 / 24);
            v35 = v20;

            v22 = specialized Sequence._copySequenceContents(initializing:)(&v29, v20 + 4, v17, v16, a5);

            if (v22 != v17)
            {
              BUG();
            }

            v23 = v33;
            outlined consume of MLDataValue(v16, v33, 3);
            outlined consume of MLDataValue(v16, v23, 3);
            v14 = v35;
          }

          else
          {
            v24 = v33;
            outlined consume of MLDataValue(v16, v33, 3);
            outlined consume of MLDataValue(v16, v24, 3);
            v14 = _swiftEmptyArrayStorage;
          }
        }

        else
        {
          outlined consume of MLDataValue(v29, v30, v31);
          v14 = 0;
        }

        v11 = v40;
        v8 = v37;
        a1 = v38;
        v7 = v39;
        v9 = v32;
      }

      v36 = v9;
      v25 = v9[2];
      v26 = v9[3];
      if (v26 >> 1 <= v25)
      {
        v35 = v14;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26 >= 2, v25 + 1, 1);
        v14 = v35;
        v7 = v39;
        a1 = v38;
        v8 = v37;
        v11 = v40;
        v9 = v36;
      }

      v9[2] = v25 + 1;
      v9[v25 + 4] = v14;
      if (v28 >= v8)
      {
        BUG();
      }

      v10 = v12;
    }

    while (v12 != v7);
    outlined consume of Result<_DataTable, Error>(v34, v11);
  }

  return v9;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_Say8CreateML11MLDataValueO3key_AI5valuetGSgs5NeverOTg5025_s11TabularData0B5FrameV8d9MLEyAcD11f17TableVcfcSayAD0F5G26O3key_AH5valuetGSgSiXEfU3_AG0F6ColumnVyAI14DictionaryTypeVGTf1cn_n(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5)
{
  v38 = a3;
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    BUG();
  }

  if (a2 == a1)
  {
    outlined consume of Result<_DataTable, Error>(v38, a4);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v45 = a4;
    v41 = _swiftEmptyArrayStorage;
    v42 = a2;
    v6 = 0;
    if (v5 > 0)
    {
      v6 = v5;
    }

    v43 = a1;
    v44 = v5;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v7 = v44;
    v8 = v42;
    if (v42 < a1 || v44 < 0)
    {
      BUG();
    }

    v9 = v41;
    v10 = 0;
    v11 = v45;
    do
    {
      if (v10 >= v7)
      {
        BUG();
      }

      v12 = v10 + 1;
      if (__OFADD__(1, v10))
      {
        BUG();
      }

      v13 = a1 + v10;
      v28 = v13;
      if (v11)
      {
        v14 = 0;
      }

      else
      {
        v35 = v9;
        v15 = v38;
        outlined copy of Result<_DataTable, Error>(v38, 0);
        _UntypedColumn.valueAtIndex(index:)(v13, a5);
        outlined consume of Result<_DataTable, Error>(v15, 0);
        v16 = v31;
        v17 = v32;
        if (v33 == 4)
        {
          v18 = v31[2];
          if (v18)
          {
            v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(key: MLDataValue, value: MLDataValue)>);
            v20 = swift_allocObject(v19, 48 * v18 + 32, 7);
            v36 = v18;
            v21 = v20;
            v22 = (_swift_stdlib_malloc_size(v20) - 32);
            v21[2] = v36;
            v21[3] = 2 * (v22 / 48);
            v39 = v21;
            v40 = v21 + 4;
            v23 = v17;
            outlined copy of MLDataValue(v16, v17, 4u);
            v16;
            v24 = v36;
            v40 = specialized Sequence._copySequenceContents(initializing:)(&v31, v40, v36, v16);
            v29 = v32;
            v30 = v33;
            v37 = v34;
            v31;
            outlined consume of [MLDataValue : MLDataValue].Index._Variant(v29, v30, v37);
            if (v40 != v24)
            {
              BUG();
            }

            outlined consume of MLDataValue(v16, v23, 4);
            outlined consume of MLDataValue(v16, v23, 4);
            v14 = v39;
          }

          else
          {
            outlined consume of MLDataValue(v31, v32, 4);
            v14 = _swiftEmptyArrayStorage;
          }
        }

        else
        {
          outlined consume of MLDataValue(v31, v32, v33);
          v14 = 0;
        }

        v11 = v45;
        v8 = v42;
        a1 = v43;
        v7 = v44;
        v9 = v35;
      }

      v41 = v9;
      v25 = v9[2];
      v26 = v9[3];
      if (v26 >> 1 <= v25)
      {
        v39 = v14;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26 >= 2, v25 + 1, 1);
        v14 = v39;
        v7 = v44;
        a1 = v43;
        v8 = v42;
        v11 = v45;
        v9 = v41;
      }

      v9[2] = v25 + 1;
      v9[v25 + 4] = v14;
      if (v28 >= v8)
      {
        BUG();
      }

      v10 = v12;
    }

    while (v12 != v7);
    outlined consume of Result<_DataTable, Error>(v38, v11);
  }

  return v9;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_So12MLMultiArrayCSgs5NeverOTg5059_s11TabularData0B5FrameV8CreateMLEyAcD11MLDataTableVcfcSo12dE11CSgSiXEfU4_0M2ML0Q6ColumnVyAM0Q5ValueO05MultiE4TypeVGTf1cn_n(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    BUG();
  }

  if (a2 != a1)
  {
    v6 = (a2 - a1);
    specialized ContiguousArray.reserveCapacity(_:)(v6);
    if (a2 < a1 || v5 < 0)
    {
      BUG();
    }

    v7 = 0;
    v15 = v5;
    while (1)
    {
      if (v7 >= v5)
      {
        BUG();
      }

      v8 = v7 + 1;
      if (__OFADD__(1, v7))
      {
        BUG();
      }

      v9 = a1 + v7;
      if (a4)
      {
        goto LABEL_12;
      }

      outlined copy of Result<_DataTable, Error>(a3, 0);
      _UntypedColumn.valueAtIndex(index:)(v9, a5);
      outlined consume of Result<_DataTable, Error>(a3, 0);
      v6 = v12;
      if (v14 != 5)
      {
        break;
      }

      v17 = v12;
LABEL_13:
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v6);
      v10 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v10);
      v6 = v10;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v10, v17);
      specialized ContiguousArray._endMutation()();
      if (v9 >= a2)
      {
        BUG();
      }

      v7 = v8;
      v5 = v15;
      if (v8 == v15)
      {
        outlined consume of Result<_DataTable, Error>(a3, a4);
        return _swiftEmptyArrayStorage;
      }
    }

    outlined consume of MLDataValue(v12, v13, v14);
LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

  outlined consume of Result<_DataTable, Error>(a3, a4);
  return _swiftEmptyArrayStorage;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySSypG_8CreateML11MLDataValueO_AItsAE_pTg5020_sSS3key_x5valuetSg8d4ML11fg5OAFs5c136_pIgnrrzo_SSAA_xABtAF_AFtsAG_pIegnrzr_lTRyp_TG503_s8c39ML15MLUntypedColumnVyAC11TabularData0D0l18SDySSxGGKclufcAA11ef34OAGSgKXEfU_AJ_AJti1_J22SgV8U_yp_Tg5Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1;
    v49 = v1;
    v47 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = specialized Dictionary.startIndex.getter(a1);
    v7 = v6;
    v48 = v3 + 64;
    v8 = v2 - 1;
    v41 = &type metadata for Any + 8;
    v40 = v3;
    while (1)
    {
      if (v5 < 0 || v5 >= 1 << *(v3 + 32))
      {
        BUG();
      }

      v9 = *(v48 + 8 * (v5 >> 6));
      if (!_bittest64(&v9, v5))
      {
        BUG();
      }

      if (v7 != *(v3 + 36))
      {
        BUG();
      }

      v37 = 1 << v5;
      v38 = v7;
      v46 = v4;
      v39 = v8;
      v10 = *(v3 + 48);
      v11 = v3;
      v12 = *(v10 + 16 * v5);
      v13 = *(v10 + 16 * v5 + 8);
      v36 = v5;
      outlined init with copy of Any(*(v11 + 56) + 32 * v5, v26);
      v25[0] = v12;
      v25[1] = v13;
      *&v29 = v12;
      *(&v29 + 1) = v13;
      outlined init with copy of Any(v26, v30);
      v31[2] = v30[1];
      v31[1] = v30[0];
      v31[0] = v29;
      swift_bridgeObjectRetain_n(v13, 2);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v25, &demangling cache variable for type metadata for (key: String, value: Any));
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v31, v21, &demangling cache variable for type metadata for (key: String, value: Any));
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v21, &v32, &demangling cache variable for type metadata for (key: String, value: Any)?);
      if (v32.i64[1])
      {
        v28[2] = v33[1];
        v28[1] = v33[0];
        v28[0] = v32;
        outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v28, &v32, &demangling cache variable for type metadata for (key: String, value: Any));
        v14 = v32;
        v42 = v32;
        LOBYTE(v43) = 2;
        outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v28, v22, &demangling cache variable for type metadata for (key: String, value: Any));
        v23;
        v27[3] = v41;
        v27[0] = swift_allocObject(&unk_391570, 48, 7);
        outlined init with take of Any(&v24, (v27[0] + 16));
        v15 = v49;
        MLDataValue.init(fromAny:)(v27, v14);
        v49 = v15;
        v4 = v46;
        if (v15)
        {
          outlined consume of MLDataValue(v42.i64[0], v42.i64[1], v43);
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v28, &demangling cache variable for type metadata for (key: String, value: Any));
          __swift_destroy_boxed_opaque_existential_1Tm(v33);
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v21, &demangling cache variable for type metadata for (key: String, value: Any)?);
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v31, &demangling cache variable for type metadata for (key: String, value: Any));
          v4;
          return v4;
        }

        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v28, &demangling cache variable for type metadata for (key: String, value: Any));
        __swift_destroy_boxed_opaque_existential_1Tm(v33);
        v35 = v42;
        v51 = v43;
        v34 = v44;
        v50 = v45;
      }

      else
      {
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v32, &demangling cache variable for type metadata for (key: String, value: Any)?);
        v42 = 0;
        LOBYTE(v43) = 6;
        v44 = 0;
        v50 = 6;
        v45 = 6;
        v34 = 0;
        v51 = 6;
        v35 = 0;
        v4 = v46;
      }

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v21, &demangling cache variable for type metadata for (key: String, value: Any)?);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v31, &demangling cache variable for type metadata for (key: String, value: Any));
      v47 = v4;
      v16 = v4[2];
      if (v4[3] >> 1 <= v16)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v4[3] >= 2uLL, v16 + 1, 1);
        v4 = v47;
      }

      v4[2] = v16 + 1;
      v17 = 6 * v16;
      *&v4[v17 + 4] = v35;
      LOBYTE(v4[v17 + 6]) = v51;
      *&v4[v17 + 7] = v34;
      LOBYTE(v4[v17 + 9]) = v50;
      v3 = v40;
      v18 = -1 << *(v40 + 32);
      if (v36 >= -v18)
      {
        BUG();
      }

      if ((v37 & *(v48 + 8 * (v5 >> 6))) == 0)
      {
        BUG();
      }

      if (v38 != *(v40 + 36))
      {
        BUG();
      }

      v19 = _HashTable.occupiedBucket(after:)(v36, v48, ~v18);
      v8 = v39 - 1;
      if (!v39)
      {
        return v4;
      }

      v5 = v19;
      v7 = *(v3 + 36);
    }
  }

  return _swiftEmptyArrayStorage;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySSypSgG_8CreateML11MLDataValueO_AJtsAE_pTg5022_sSS3key_xSg5valuetSg8d4ML11fg5OAGs5c138_pIgnrrzo_SSAA_AbCtAG_AGtsAH_pIegnrzr_lTRyp_TG503_s8c39ML15MLUntypedColumnVyAC11TabularData0D0l20SDySSxSgGGKclufcAA11ef33OAHSgKXEfU_AK_AKtI31_AG5valuetsW8U_yp_Tg5Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = a1;
  v45 = v1;
  v44 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v4 = _swiftEmptyArrayStorage;
  v5 = specialized Dictionary.startIndex.getter(a1);
  v7 = a1 + 64;
  v8 = v2 - 1;
  v42 = a1;
  v43 = a1 + 64;
  while (1)
  {
    if (v5 < 0 || v5 >= 1 << *(v3 + 32))
    {
      BUG();
    }

    v39 = v8;
    v9 = v5 >> 6;
    v10 = *(v7 + 8 * (v5 >> 6));
    if (!_bittest64(&v10, v5))
    {
      BUG();
    }

    if (v6 != *(v3 + 36))
    {
      BUG();
    }

    v40 = 1 << v5;
    v41 = v6;
    v46 = v4;
    v11 = *(v3 + 48);
    v12 = *(v11 + 16 * v5);
    v13 = v3;
    v14 = *(v11 + 16 * v5 + 8);
    v38 = v5;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v13 + 56) + 32 * v5, v28, &demangling cache variable for type metadata for Any?);
    v27[0] = v12;
    v27[1] = v14;
    *&v30 = v12;
    *(&v30 + 1) = v14;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v28, v31, &demangling cache variable for type metadata for Any?);
    v29[2] = v31[1];
    v29[1] = v31[0];
    v29[0] = v30;
    swift_bridgeObjectRetain_n(v14, 2);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v27, &demangling cache variable for type metadata for (key: String, value: Any?));
    v4 = v29;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v29, v26, &demangling cache variable for type metadata for (key: String, value: Any?));
    v15 = v45;
    specialized closure #1 in closure #1 in MLUntypedColumn.init<A>(_:)(&v34, &v36, v26);
    v45 = v15;
    if (v15)
    {
      break;
    }

    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v26, &demangling cache variable for type metadata for (key: String, value: Any?)?);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v29, &demangling cache variable for type metadata for (key: String, value: Any?));
    v16 = v34;
    v17 = v35;
    v18 = v36;
    v19 = v37;
    v4 = v46;
    v44 = v46;
    v20 = v46[2];
    v21 = v46[3];
    v22 = v20 + 1;
    if (v21 >> 1 <= v20)
    {
      v46 = (v20 + 1);
      v47 = v37;
      v32 = v34;
      v33 = v36;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21 >= 2, v22, 1);
      v22 = v46;
      v19 = v47;
      v18 = v33;
      v16 = v32;
      v4 = v44;
    }

    v4[2] = v22;
    v23 = 6 * v20;
    *&v4[v23 + 4] = v16;
    LOBYTE(v4[v23 + 6]) = v17;
    *&v4[v23 + 7] = v18;
    LOBYTE(v4[v23 + 9]) = v19;
    v3 = v42;
    v24 = -1 << *(v42 + 32);
    if (v38 >= -v24)
    {
      BUG();
    }

    v7 = v43;
    if ((v40 & *(v43 + 8 * v9)) == 0)
    {
      BUG();
    }

    if (v41 != *(v42 + 36))
    {
      BUG();
    }

    v5 = _HashTable.occupiedBucket(after:)(v38, v43, ~v24);
    v8 = v39 - 1;
    if (!v39)
    {
      return v4;
    }

    v6 = *(v3 + 36);
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v26, &demangling cache variable for type metadata for (key: String, value: Any?)?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v29, &demangling cache variable for type metadata for (key: String, value: Any?));
  v46;
  return v4;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDyS2SG_8CreateML11MLDataValueO_AItsAE_pTg5020_sSS3key_x5valuetSg8d4ML11fg5OAFs5c136_pIgnrrzo_SSAA_xABtAF_AFtsAG_pIegnrzr_lTRSS_TG503_s8c39ML15MLUntypedColumnVyAC11TabularData0D0l18SDySSxGGKclufcAA11ef34OAGSgKXEfU_AJ_AJti1_J22SgV8U_SS_TG5Tf3nnnpf_nTf1cn_n(uint64_t a1, __m128 a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = a1;
  v43 = v2;
  v42 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v5 = _swiftEmptyArrayStorage;
  v6 = specialized Dictionary.startIndex.getter(a1);
  v8 = a1 + 64;
  v9 = v3 - 1;
  v34 = a1;
  v35 = a1 + 64;
  while (1)
  {
    if (v6 < 0 || v6 >= 1 << *(v4 + 32))
    {
      BUG();
    }

    v32 = v9;
    v10 = v6 >> 6;
    v11 = *(v8 + 8 * (v6 >> 6));
    v12 = 1 << v6;
    if (!_bittest64(&v11, v6))
    {
      BUG();
    }

    if (v7 != *(v4 + 36))
    {
      BUG();
    }

    v33 = v7;
    v41.i64[0] = v5;
    v31 = v6;
    v13 = 16 * v6;
    v14 = *(v4 + 48);
    v15 = *(v4 + 56);
    v16 = *(v14 + v13);
    v5 = *(v14 + v13 + 8);
    v17 = *(v15 + v13);
    v18 = *(v15 + v13 + 8);
    v37.i64[0] = v16;
    v37.i64[1] = v5;
    LOBYTE(v38) = 2;
    v29[3] = &type metadata for String;
    v29[0] = v17;
    v29[1] = v18;
    swift_bridgeObjectRetain_n(v5, 4);
    swift_bridgeObjectRetain_n(v18, 4);
    v19 = v43;
    MLDataValue.init(fromAny:)(v29, a2);
    v43 = v19;
    if (v19)
    {
      break;
    }

    swift_bridgeObjectRelease_n(v18, 2);
    swift_bridgeObjectRelease_n(v5, 3);
    v18;
    a2 = v37;
    v20 = v38;
    v21 = v39;
    v22 = v40;
    v5 = v41.i64[0];
    v42 = v41.i64[0];
    v23 = *(v41.i64[0] + 16);
    v24 = *(v41.i64[0] + 24);
    v25 = v23 + 1;
    if (v24 >> 1 <= v23)
    {
      v45 = v40;
      v44 = v38;
      v41 = v37;
      v30 = v39;
      v36 = v23 + 1;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v24 >= 2, v25, 1);
      v25 = v36;
      v22 = v45;
      v21 = v30;
      v20 = v44;
      a2 = v41;
      v5 = v42;
    }

    v5[2] = v25;
    v26 = 6 * v23;
    *&v5[v26 + 4] = a2;
    LOBYTE(v5[v26 + 6]) = v20;
    *&v5[v26 + 7] = v21;
    LOBYTE(v5[v26 + 9]) = v22;
    v4 = v34;
    v27 = *(v34 + 32);
    if (v31 >= -(-1 << v27))
    {
      BUG();
    }

    if ((v12 & *(v35 + 8 * v10)) == 0)
    {
      BUG();
    }

    v8 = v35;
    if (v33 != *(v34 + 36))
    {
      BUG();
    }

    v6 = _HashTable.occupiedBucket(after:)(v31, v35, ~(-1 << v27));
    v9 = v32 - 1;
    if (!v32)
    {
      return v5;
    }

    v7 = *(v4 + 36);
  }

  outlined consume of MLDataValue(v37.i64[0], v37.i64[1], v38);
  swift_bridgeObjectRelease_n(v18, 2);
  swift_bridgeObjectRelease_n(v5, 3);
  v41.i64[0];
  v18;
  return v5;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySSSfG_8CreateML11MLDataValueO_AItsAE_pTg5020_sSS3key_x5valuetSg8d4ML11fg5OAFs5c136_pIgnrrzo_SSAA_xABtAF_AFtsAG_pIegnrzr_lTRSf_TG503_s8c39ML15MLUntypedColumnVyAC11TabularData0D0l18SDySSxGGKclufcAA11ef34OAGSgKXEfU_AJ_AJti1_J22SgV8U_Sf_TG5Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = a1;
  v42 = v1;
  v41 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v4 = _swiftEmptyArrayStorage;
  v5 = specialized Dictionary.startIndex.getter(a1);
  v7 = a1 + 64;
  v8 = v2 - 1;
  v34 = a1;
  v35 = a1 + 64;
  while (1)
  {
    if (v5 < 0 || v5 >= 1 << *(v3 + 32))
    {
      BUG();
    }

    v32 = v8;
    v9 = v5 >> 6;
    v10 = *(v7 + 8 * (v5 >> 6));
    v11 = 1 << v5;
    if (!_bittest64(&v10, v5))
    {
      BUG();
    }

    if (v6 != *(v3 + 36))
    {
      BUG();
    }

    v33 = v6;
    v12 = *(v3 + 48);
    v13 = *(v3 + 56);
    v14 = *(v12 + 16 * v5);
    v15 = *(v12 + 16 * v5 + 8);
    v31 = v5;
    v16 = *(v13 + 4 * v5);
    *&v37 = v14;
    *(&v37 + 1) = v15;
    LOBYTE(v38) = 2;
    v28[3] = &type metadata for Float;
    LODWORD(v28[0]) = v16.i32[0];
    swift_bridgeObjectRetain_n(v15, 4);
    v17 = v42;
    MLDataValue.init(fromAny:)(v28, v16);
    v42 = v17;
    if (v17)
    {
      break;
    }

    swift_bridgeObjectRelease_n(v15, 3);
    v18 = v37;
    v19 = v38;
    v20 = v39;
    v21 = v40;
    v41 = v4;
    v22 = v4[2];
    v23 = v4[3];
    v24 = v22 + 1;
    if (v23 >> 1 <= v22)
    {
      v44 = v40;
      v43 = v38;
      v29 = v37;
      v30 = v39;
      v36 = v22 + 1;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v23 >= 2, v24, 1);
      v24 = v36;
      v21 = v44;
      v20 = v30;
      v19 = v43;
      v18 = v29;
      v4 = v41;
    }

    v4[2] = v24;
    v25 = 6 * v22;
    *&v4[v25 + 4] = v18;
    LOBYTE(v4[v25 + 6]) = v19;
    *&v4[v25 + 7] = v20;
    LOBYTE(v4[v25 + 9]) = v21;
    v3 = v34;
    v26 = *(v34 + 32);
    if (v31 >= -(-1 << v26))
    {
      BUG();
    }

    if ((v11 & *(v35 + 8 * v9)) == 0)
    {
      BUG();
    }

    v7 = v35;
    if (v33 != *(v34 + 36))
    {
      BUG();
    }

    v5 = _HashTable.occupiedBucket(after:)(v31, v35, ~(-1 << v26));
    v8 = v32 - 1;
    if (!v32)
    {
      return v4;
    }

    v6 = *(v3 + 36);
  }

  outlined consume of MLDataValue(v37, *(&v37 + 1), v38);
  v4;
  swift_bridgeObjectRelease_n(v15, 3);
  return v4;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySSSdG_8CreateML11MLDataValueO_AItsAE_pTg5020_sSS3key_x5valuetSg8d4ML11fg5OAFs5c136_pIgnrrzo_SSAA_xABtAF_AFtsAG_pIegnrzr_lTRSd_TG503_s8c39ML15MLUntypedColumnVyAC11TabularData0D0l18SDySSxGGKclufcAA11ef34OAGSgKXEfU_AJ_AJti1_J22SgV8U_Sd_TG5Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = a1;
  v42 = v1;
  v41 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v4 = _swiftEmptyArrayStorage;
  v5 = specialized Dictionary.startIndex.getter(a1);
  v7 = a1 + 64;
  v8 = v2 - 1;
  v34 = a1;
  v35 = a1 + 64;
  while (1)
  {
    if (v5 < 0 || v5 >= 1 << *(v3 + 32))
    {
      BUG();
    }

    v32 = v8;
    v9 = v5 >> 6;
    v10 = *(v7 + 8 * (v5 >> 6));
    v11 = 1 << v5;
    if (!_bittest64(&v10, v5))
    {
      BUG();
    }

    if (v6 != *(v3 + 36))
    {
      BUG();
    }

    v33 = v6;
    v12 = *(v3 + 48);
    v13 = *(v3 + 56);
    v14 = *(v12 + 16 * v5);
    v15 = *(v12 + 16 * v5 + 8);
    v31 = v5;
    v16 = *(v13 + 8 * v5);
    *&v37 = v14;
    *(&v37 + 1) = v15;
    LOBYTE(v38) = 2;
    v28[3] = &type metadata for Double;
    v28[0] = v16.i64[0];
    swift_bridgeObjectRetain_n(v15, 4);
    v17 = v42;
    MLDataValue.init(fromAny:)(v28, v16);
    v42 = v17;
    if (v17)
    {
      break;
    }

    swift_bridgeObjectRelease_n(v15, 3);
    v18 = v37;
    v19 = v38;
    v20 = v39;
    v21 = v40;
    v41 = v4;
    v22 = v4[2];
    v23 = v4[3];
    v24 = v22 + 1;
    if (v23 >> 1 <= v22)
    {
      v44 = v40;
      v43 = v38;
      v29 = v37;
      v30 = v39;
      v36 = v22 + 1;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v23 >= 2, v24, 1);
      v24 = v36;
      v21 = v44;
      v20 = v30;
      v19 = v43;
      v18 = v29;
      v4 = v41;
    }

    v4[2] = v24;
    v25 = 6 * v22;
    *&v4[v25 + 4] = v18;
    LOBYTE(v4[v25 + 6]) = v19;
    *&v4[v25 + 7] = v20;
    LOBYTE(v4[v25 + 9]) = v21;
    v3 = v34;
    v26 = *(v34 + 32);
    if (v31 >= -(-1 << v26))
    {
      BUG();
    }

    if ((v11 & *(v35 + 8 * v9)) == 0)
    {
      BUG();
    }

    v7 = v35;
    if (v33 != *(v34 + 36))
    {
      BUG();
    }

    v5 = _HashTable.occupiedBucket(after:)(v31, v35, ~(-1 << v26));
    v8 = v32 - 1;
    if (!v32)
    {
      return v4;
    }

    v6 = *(v3 + 36);
  }

  outlined consume of MLDataValue(v37, *(&v37 + 1), v38);
  v4;
  swift_bridgeObjectRelease_n(v15, 3);
  return v4;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySSSiG_8CreateML11MLDataValueO_AItsAE_pTg5020_sSS3key_x5valuetSg8d4ML11fg5OAFs5c136_pIgnrrzo_SSAA_xABtAF_AFtsAG_pIegnrzr_lTRSi_TG503_s8c39ML15MLUntypedColumnVyAC11TabularData0D0l18SDySSxGGKclufcAA11ef34OAGSgKXEfU_AJ_AJti1_J22SgV8U_Si_TG5Tf3nnnpf_nTf1cn_n(uint64_t a1, __m128 a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = a1;
  v42 = v2;
  v41 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v5 = _swiftEmptyArrayStorage;
  v6 = specialized Dictionary.startIndex.getter(a1);
  v8 = a1 + 64;
  v9 = v3 - 1;
  v34 = a1;
  v35 = a1 + 64;
  while (1)
  {
    if (v6 < 0 || v6 >= 1 << *(v4 + 32))
    {
      BUG();
    }

    v32 = v9;
    v10 = v6 >> 6;
    v11 = *(v8 + 8 * (v6 >> 6));
    v12 = 1 << v6;
    if (!_bittest64(&v11, v6))
    {
      BUG();
    }

    if (v7 != *(v4 + 36))
    {
      BUG();
    }

    v33 = v7;
    v13 = *(v4 + 48);
    v14 = *(v4 + 56);
    v15 = *(v13 + 16 * v6);
    v16 = *(v13 + 16 * v6 + 8);
    v31 = v6;
    v17 = *(v14 + 8 * v6);
    v37.i64[0] = v15;
    v37.i64[1] = v16;
    LOBYTE(v38) = 2;
    v28[3] = &type metadata for Int;
    v28[0] = v17;
    swift_bridgeObjectRetain_n(v16, 4);
    v18 = v42;
    MLDataValue.init(fromAny:)(v28, a2);
    v42 = v18;
    if (v18)
    {
      break;
    }

    swift_bridgeObjectRelease_n(v16, 3);
    a2 = v37;
    v19 = v38;
    v20 = v39;
    v21 = v40;
    v41 = v5;
    v22 = v5[2];
    v23 = v5[3];
    v24 = v22 + 1;
    if (v23 >> 1 <= v22)
    {
      v44 = v40;
      v43 = v38;
      v29 = v37;
      v30 = v39;
      v36 = v22 + 1;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v23 >= 2, v24, 1);
      v24 = v36;
      v21 = v44;
      v20 = v30;
      v19 = v43;
      a2 = v29;
      v5 = v41;
    }

    v5[2] = v24;
    v25 = 6 * v22;
    *&v5[v25 + 4] = a2;
    LOBYTE(v5[v25 + 6]) = v19;
    *&v5[v25 + 7] = v20;
    LOBYTE(v5[v25 + 9]) = v21;
    v4 = v34;
    v26 = *(v34 + 32);
    if (v31 >= -(-1 << v26))
    {
      BUG();
    }

    if ((v12 & *(v35 + 8 * v10)) == 0)
    {
      BUG();
    }

    v8 = v35;
    if (v33 != *(v34 + 36))
    {
      BUG();
    }

    v6 = _HashTable.occupiedBucket(after:)(v31, v35, ~(-1 << v26));
    v9 = v32 - 1;
    if (!v32)
    {
      return v5;
    }

    v7 = *(v4 + 36);
  }

  outlined consume of MLDataValue(v37.i64[0], v37.i64[1], v38);
  v5;
  swift_bridgeObjectRelease_n(v16, 3);
  return v5;
}

uint64_t MLDataTable.init(_:convertArraysToShapedArrays:)(uint64_t a1, int a2, __m128 a3)
{
  *&v65 = v4;
  LODWORD(v61) = a2;
  v53 = v3;
  v60 = type metadata accessor for AnyColumn(0);
  v63 = *(v60 - 8);
  v6 = *(v63 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v49 = &v47;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v54 = &v47;
  empty = tc_v1_sframe_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v12 = empty;
  v13 = type metadata accessor for CMLTable();
  v14 = swift_allocObject(v13, 24, 7);
  *(v14 + 16) = v12;
  v15 = type metadata accessor for _DataTable();
  swift_allocObject(v15, 40, 7);
  v67 = _DataTable.init(impl:)(v14);
  LOBYTE(v68) = 0;
  v16 = DataFrame.columns.getter();
  v17 = *(v16 + 16);
  v57 = a1;
  v58 = v16;
  if (!v17)
  {
LABEL_20:
    v42 = type metadata accessor for DataFrame(0);
    (*(*(v42 - 8) + 8))(v57, v42);
    v58;
    result = v67;
    v44 = v68;
    v45 = v53;
    *v53 = v67;
    *(v45 + 8) = v44;
    return result;
  }

  v18 = ((*(v63 + 80) + 32) & ~*(v63 + 80)) + v16;
  v52 = "Can't represent value as Int32." + 0x8000000000000000;
  v50 = *(v63 + 16);
  v51 = *(v63 + 72);
  v59 = v61;
  v19 = v54;
  while (1)
  {
    v61 = v17;
    v48 = v18;
    v20 = v60;
    v21 = v50;
    v50(v19, v18, v60);
    v22 = v49;
    *a3.i64 = v21(v49, v19, v20);
    v23 = v65;
    MLUntypedColumn.init(_:convertArraysToShapedArrays:)(v22, v59, a3);
    if (v23)
    {
      break;
    }

    *&v65 = 0;
    v62 = v66;
    v24 = BYTE8(v66);
    v25 = AnyColumn.name.getter();
    v64 = v26;
    MLDataTable.willMutate()();
    v27 = v67;
    v69 = v24;
    if (v68)
    {
      *&v66 = v67;
      outlined copy of Result<_DataTable, Error>(v67, 1);
      swift_errorRetain(v27);
      v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
      v29 = _getErrorEmbeddedNSError<A>(_:)(&v66, v28, &protocol self-conformance witness table for Error);
      if (v29)
      {
        v30 = v29;
        outlined consume of Result<_DataTable, Error>(v27, 1);
      }

      else
      {
        v30 = swift_allocError(v28, &protocol self-conformance witness table for Error, 0, 0);
        *v39 = v27;
      }

      v32 = v64;
      outlined consume of Result<_DataTable, Error>(v27, 1);
      goto LABEL_14;
    }

    if (v24)
    {
      *&v66 = 0;
      *(&v66 + 1) = 0xE000000000000000;
      v67;
      _StringGuts.grow(_:)(36);
      *(&v66 + 1);
      *&v66 = 0xD000000000000021;
      *(&v66 + 1) = v52;
      v31._countAndFlagsBits = v25;
      v32 = v64;
      v31._object = v64;
      String.append(_:)(v31);
      v31._countAndFlagsBits = 39;
      v31._object = 0xE100000000000000;
      String.append(_:)(v31);
      v65 = v66;
      v31._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      v30 = swift_allocError(&type metadata for MLCreateError, v31._object, 0, 0);
      *v33 = v65;
      a3 = 0;
      *(v33 + 16) = 0;
      *(v33 + 32) = 0;
      *(v33 + 48) = 1;
      swift_willThrow();
      outlined consume of Result<_DataTable, Error>(v27, 0);
      *&v65 = 0;
LABEL_14:
      v35 = v62;
      goto LABEL_15;
    }

    v34 = *(v67 + 16);
    v35 = v62;
    v36 = *(v62 + 16);
    v56 = v67;
    outlined copy of Result<_DataTable, Error>(v67, 0);
    outlined copy of Result<_DataTable, Error>(v35, 0);
    v36;
    v37 = v25;
    v32 = v64;
    v55 = v36;
    v38 = v65;
    CMLTable.addColumn(name:_:)(v37, v64, v36);
    v30 = v38;
    if (!v38)
    {
      outlined consume of Result<_DataTable, Error>(v35, 0);
      v55;
      outlined consume of Result<_DataTable, Error>(v56, 0);
      *&v65 = 0;
      if (!v68)
      {
        v41 = v67;
        outlined copy of Result<_DataTable, Error>(v67, 0);
        _DataTable.columnNamesDidChange()();
        outlined consume of Result<_DataTable, Error>(v41, 0);
      }

      goto LABEL_16;
    }

    v55;
    outlined consume of Result<_DataTable, Error>(v35, 0);
    outlined consume of Result<_DataTable, Error>(v56, 0);
    *&v65 = 0;
LABEL_15:
    outlined consume of Result<_DataTable, Error>(v67, v68);
    v67 = v30;
    LOBYTE(v68) = 1;
LABEL_16:
    v40 = v69;
    v32;
    v19 = v54;
    (*(v63 + 8))(v54, v60);
    outlined consume of Result<_DataTable, Error>(v35, v40);
    v18 = v51 + v48;
    v17 = v61 - 1;
    if (v61 == 1)
    {
      goto LABEL_20;
    }
  }

  v46 = type metadata accessor for DataFrame(0);
  (*(*(v46 - 8) + 8))(v57, v46);
  (*(v63 + 8))(v19, v60);
  v58;
  return outlined consume of Result<_DataTable, Error>(v67, v68);
}

uint64_t DataFrame.init(_:)(uint64_t a1)
{
  v2 = a1;
  v3 = v1;
  v156 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLMultiArray>);
  v157 = *(v156 - 8);
  v4 = *(v157 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v174 = v155;
  v158 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[(MLDataValue, MLDataValue)]>);
  v159 = *(v158 - 8);
  v7 = *(v159 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v160 = v155;
  v161 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[MLDataValue]>);
  v162 = *(v161 - 8);
  v10 = *(v162 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v175 = v155;
  v163 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v164 = *(v163 - 8);
  v13 = *(v164 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v165 = v155;
  v166 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v167 = *(v166 - 8);
  v16 = *(v167 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v168 = v155;
  v169 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v170 = *(v169 - 8);
  v19 = *(v170 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v171 = v155;
  v22 = *a1;
  LOBYTE(v2) = *(a1 + 8);
  v176 = v3;
  DataFrame.init()();
  v181 = v2;
  if (v2)
  {
    outlined copy of Result<_DataTable, Error>(v22, 1);
    v23 = tc_v1_flex_list_create(0);
    if (!v23)
    {
      BUG();
    }

    v24 = v23;
    outlined consume of Result<_DataTable, Error>(v22, 1);
    v25 = type metadata accessor for CMLSequence();
    v26 = swift_allocObject(v25, 25, 7);
    *(v26 + 16) = v24;
    *(v26 + 24) = 1;
  }

  else
  {
    outlined copy of Result<_DataTable, Error>(v22, 0);
    _DataTable.columnNames.getter();
    outlined consume of Result<_DataTable, Error>(v22, 0);
    v26 = v180;
  }

  *&v180 = v22;
  BYTE8(v180) = v181;
  v184 = v22;
  v178 = v181;
  outlined copy of Result<_DataTable, Error>(v22, v181);
  v173 = MLDataTable.columnTypes.getter();
  outlined consume of Result<_DataTable, Error>(v180, SBYTE8(v180));
  swift_retain_n(v26, 2);
  v27 = CMLSequence.size.getter();
  v28 = specialized RandomAccessCollection<>.distance(from:to:)(0, v27);

  if (v28)
  {
    v29 = 0;
    v30 = 0;
    do
    {
      CMLSequence.value(at:)(v30);
      if (v29)
      {
        swift_unexpectedError(v29, "CreateML/SequenceType.swift", 27, 1, 76);
        BUG();
      }

      v31 = CMLFeatureValue.stringValue()();
      v179._countAndFlagsBits = v31._countAndFlagsBits;
      if (v29)
      {

        v29;
        *&v180 = 0;
        *(&v180 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(37);
        *(&v180 + 1);
        *&v180 = 0xD000000000000022;
        *(&v180 + 1) = "able.ColumnNames.swift" + 0x8000000000000000;
        v155[2] = v30;
        v152._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        object = v152._object;
        String.append(_:)(v152);
        object;
        v154._countAndFlagsBits = 46;
        v154._object = 0xE100000000000000;
        String.append(_:)(v154);
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v180, *(&v180 + 1), "CreateML/MLDataTable.ColumnNames.swift", 38, 2, 17, 0);
        BUG();
      }

      v33 = v31._object;

      v34 = CMLSequence.size.getter();
      v35 = specialized RandomAccessCollection<>.distance(from:to:)(0, v34);

      if (v30 >= v35)
      {
        BUG();
      }

      v36 = v173;
      if (*(v173 + 16))
      {
        v33;
        v37 = specialized __RawDictionaryStorage.find<A>(_:)(v179._countAndFlagsBits, v33);
        if (v38)
        {
          v39 = *(*(v36 + 56) + v37);
          v33;
          switch(v39)
          {
            case 0:
              if (v181)
              {
                v137 = v184;
                swift_willThrow();
                outlined copy of Result<_DataTable, Error>(v137, 1);
                outlined copy of Result<_DataTable, Error>(v137, 1);
                *&v180 = 0;
                *(&v180 + 1) = 0xE000000000000000;
                _StringGuts.grow(_:)(34);
                *(&v180 + 1);
                *&v180 = 0xD00000000000001FLL;
                *(&v180 + 1) = "ml.activityclassifier" + 0x8000000000000000;
                v138._countAndFlagsBits = v179._countAndFlagsBits;
                v138._object = v33;
                String.append(_:)(v138);
                v138._object = 0xE100000000000000;
                v138._countAndFlagsBits = 34;
                String.append(_:)(v138);
                v179 = v180;
                v139 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
                v45 = swift_allocError(&type metadata for MLCreateError, v139, 0, 0);
                *v140 = v179;
                *(v140 + 16) = 0;
                *(v140 + 32) = 0;
                *(v140 + 48) = 1;
                outlined consume of Result<_DataTable, Error>(v184, v178);
                v43 = 1;
LABEL_58:
                outlined consume of Result<_DataTable, Error>(v45, v43);
                outlined consume of Result<_DataTable, Error>(v184, v181);
                BUG();
              }

              v40 = v184;
              v183 = *(v184 + 16);
              outlined copy of Result<_DataTable, Error>(v184, 0);
              v41 = v40;
              v42 = v183;
              outlined copy of Result<_DataTable, Error>(v41, 0);

              v182 = specialized String.withCString<A>(_:)(closure #1 in CMLTable.column(name:)partial apply, v42, v179._countAndFlagsBits, v33);
              v177 = 0;

              v43 = 0;
              v44 = type metadata accessor for _UntypedColumn();
              v45 = swift_allocObject(v44, 24, 7);
              *(v45 + 16) = v182;
              outlined consume of Result<_DataTable, Error>(v184, 0);
              outlined copy of Result<_DataTable, Error>(v45, 0);
              _UntypedColumn.type.getter();
              outlined consume of Result<_DataTable, Error>(v45, 0);
              if (v180)
              {
                v181 = 0;
                goto LABEL_58;
              }

              outlined consume of Result<_DataTable, Error>(v184, 0);
              v46 = v45;
              v47 = *(v45 + 16);
              outlined copy of Result<_DataTable, Error>(v46, 0);
              v48 = CMLColumn.size.getter();
              v183 = v46;
              outlined consume of Result<_DataTable, Error>(v46, 0);
              if (v48 < 0)
              {
                BUG();
              }

              v49 = v183;
              outlined copy of Result<_DataTable, Error>(v183, 0);
              v50 = v49;
              v29 = v177;
              *&v180 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_SiSgs5NeverOTg5059_s11TabularData0B5FrameV8CreateMLEyAcD11MLDataTableVcfcSiSgR5XEfU_0K2ML0O6ColumnVySiGTf1cn_n(0, v48, v50, 0, v32);
              v182 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int?]);
              v51 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Int?] and conformance [A], &demangling cache variable for type metadata for [Int?], &protocol conformance descriptor for [A]);
              v52 = v171;
              Column.init<A>(name:contents:)(v179._countAndFlagsBits, v33, &v180, &type metadata for Int, v182, v51);
              DataFrame.append<A>(column:)(v52, &type metadata for Int);
              outlined consume of Result<_DataTable, Error>(v183, 0);
              v53 = v52;
              v54 = v169;
              v55 = v170;
LABEL_39:
              (*(v55 + 8))(v53, v54);
              break;
            case 1:
              if (v181)
              {
                v133 = v184;
                swift_willThrow();
                outlined copy of Result<_DataTable, Error>(v133, 1);
                outlined copy of Result<_DataTable, Error>(v133, 1);
                *&v180 = 0;
                *(&v180 + 1) = 0xE000000000000000;
                _StringGuts.grow(_:)(34);
                *(&v180 + 1);
                *&v180 = 0xD00000000000001FLL;
                *(&v180 + 1) = "ml.activityclassifier" + 0x8000000000000000;
                v134._countAndFlagsBits = v179._countAndFlagsBits;
                v134._object = v33;
                String.append(_:)(v134);
                v134._object = 0xE100000000000000;
                v134._countAndFlagsBits = 34;
                String.append(_:)(v134);
                v179 = v180;
                v135 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
                v75 = swift_allocError(&type metadata for MLCreateError, v135, 0, 0);
                *v136 = v179;
                *(v136 + 16) = 0;
                *(v136 + 32) = 0;
                *(v136 + 48) = 1;
                outlined consume of Result<_DataTable, Error>(v184, v178);
                v73 = 1;
LABEL_55:
                outlined consume of Result<_DataTable, Error>(v75, v73);
                outlined consume of Result<_DataTable, Error>(v184, v181);
                BUG();
              }

              v70 = v184;
              v183 = *(v184 + 16);
              outlined copy of Result<_DataTable, Error>(v184, 0);
              v71 = v70;
              v72 = v183;
              outlined copy of Result<_DataTable, Error>(v71, 0);

              v182 = specialized String.withCString<A>(_:)(closure #1 in CMLTable.column(name:)partial apply, v72, v179._countAndFlagsBits, v33);
              v177 = 0;

              v73 = 0;
              v74 = type metadata accessor for _UntypedColumn();
              v75 = swift_allocObject(v74, 24, 7);
              *(v75 + 16) = v182;
              outlined consume of Result<_DataTable, Error>(v184, 0);
              outlined copy of Result<_DataTable, Error>(v75, 0);
              _UntypedColumn.type.getter();
              outlined consume of Result<_DataTable, Error>(v75, 0);
              if (v180 != 1)
              {
                v181 = 0;
                goto LABEL_55;
              }

              outlined consume of Result<_DataTable, Error>(v184, 0);
              v76 = v75;
              v77 = *(v75 + 16);
              outlined copy of Result<_DataTable, Error>(v76, 0);
              v78 = CMLColumn.size.getter();
              v183 = v76;
              outlined consume of Result<_DataTable, Error>(v76, 0);
              if (v78 < 0)
              {
                BUG();
              }

              v79 = v183;
              outlined copy of Result<_DataTable, Error>(v183, 0);
              v80 = v79;
              v29 = v177;
              *&v180 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_SdSgs5NeverOTg567_s11TabularData0B5FrameV8CreateMLEyAcD11MLDataTableVcfcSdSgSiXEfU0_0K2ML0O6ColumnVySdGTf1cn_n(0, v78, v80, 0, v32);
              v182 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double?]);
              v81 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Double?] and conformance [A], &demangling cache variable for type metadata for [Double?], &protocol conformance descriptor for [A]);
              v82 = v168;
              Column.init<A>(name:contents:)(v179._countAndFlagsBits, v33, &v180, &type metadata for Double, v182, v81);
              DataFrame.append<A>(column:)(v82, &type metadata for Double);
              outlined consume of Result<_DataTable, Error>(v183, 0);
              v53 = v82;
              v54 = v166;
              v55 = v167;
              goto LABEL_39;
            case 2:
              if (v181)
              {
                v129 = v184;
                swift_willThrow();
                outlined copy of Result<_DataTable, Error>(v129, 1);
                outlined copy of Result<_DataTable, Error>(v129, 1);
                *&v180 = 0;
                *(&v180 + 1) = 0xE000000000000000;
                _StringGuts.grow(_:)(34);
                *(&v180 + 1);
                *&v180 = 0xD00000000000001FLL;
                *(&v180 + 1) = "ml.activityclassifier" + 0x8000000000000000;
                v130._countAndFlagsBits = v179._countAndFlagsBits;
                v130._object = v33;
                String.append(_:)(v130);
                v130._object = 0xE100000000000000;
                v130._countAndFlagsBits = 34;
                String.append(_:)(v130);
                v179 = v180;
                v131 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
                v88 = swift_allocError(&type metadata for MLCreateError, v131, 0, 0);
                *v132 = v179;
                *(v132 + 16) = 0;
                *(v132 + 32) = 0;
                *(v132 + 48) = 1;
                outlined consume of Result<_DataTable, Error>(v184, v178);
                v86 = 1;
LABEL_52:
                outlined consume of Result<_DataTable, Error>(v88, v86);
                outlined consume of Result<_DataTable, Error>(v184, v181);
                BUG();
              }

              v83 = v184;
              v183 = *(v184 + 16);
              outlined copy of Result<_DataTable, Error>(v184, 0);
              v84 = v83;
              v85 = v183;
              outlined copy of Result<_DataTable, Error>(v84, 0);

              v182 = specialized String.withCString<A>(_:)(closure #1 in CMLTable.column(name:)partial apply, v85, v179._countAndFlagsBits, v33);
              v177 = 0;

              v86 = 0;
              v87 = type metadata accessor for _UntypedColumn();
              v88 = swift_allocObject(v87, 24, 7);
              *(v88 + 16) = v182;
              outlined consume of Result<_DataTable, Error>(v184, 0);
              outlined copy of Result<_DataTable, Error>(v88, 0);
              _UntypedColumn.type.getter();
              outlined consume of Result<_DataTable, Error>(v88, 0);
              if (v180 != 2)
              {
                v181 = 0;
                goto LABEL_52;
              }

              outlined consume of Result<_DataTable, Error>(v184, 0);
              v89 = v88;
              v90 = *(v88 + 16);
              outlined copy of Result<_DataTable, Error>(v89, 0);
              v91 = CMLColumn.size.getter();
              v183 = v89;
              outlined consume of Result<_DataTable, Error>(v89, 0);
              if (v91 < 0)
              {
                BUG();
              }

              v92 = v183;
              outlined copy of Result<_DataTable, Error>(v183, 0);
              v93 = v92;
              v29 = v177;
              *&v180 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_SSSgs5NeverOTg567_s11TabularData0B5FrameV8CreateMLEyAcD11MLDataTableVcfcSSSgSiXEfU1_0K2ML0O6ColumnVySSGTf1cn_n(0, v91, v93, 0, v32);
              v182 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String?]);
              v94 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [String?] and conformance [A], &demangling cache variable for type metadata for [String?], &protocol conformance descriptor for [A]);
              v95 = v165;
              Column.init<A>(name:contents:)(v179._countAndFlagsBits, v33, &v180, &type metadata for String, v182, v94);
              DataFrame.append<A>(column:)(v95, &type metadata for String);
              outlined consume of Result<_DataTable, Error>(v183, 0);
              v53 = v95;
              v54 = v163;
              v55 = v164;
              goto LABEL_39;
            case 3:
              if (v181)
              {
                v128 = v184;
                swift_willThrow();
                outlined copy of Result<_DataTable, Error>(v128, 1);
                outlined copy of Result<_DataTable, Error>(v128, 1);
                *&v180 = 0;
                *(&v180 + 1) = 0xE000000000000000;
                _StringGuts.grow(_:)(34);
                *(&v180 + 1);
                *&v180 = 0xD00000000000001FLL;
                *(&v180 + 1) = "ml.activityclassifier" + 0x8000000000000000;
                v149._countAndFlagsBits = v179._countAndFlagsBits;
                v149._object = v33;
                String.append(_:)(v149);
                v149._object = 0xE100000000000000;
                v149._countAndFlagsBits = 34;
                String.append(_:)(v149);
                v179 = v180;
                v150 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
                v61 = swift_allocError(&type metadata for MLCreateError, v150, 0, 0);
                *v151 = v179;
                *(v151 + 16) = 0;
                *(v151 + 32) = 0;
                *(v151 + 48) = 1;
                outlined consume of Result<_DataTable, Error>(v184, v178);
                v59 = 1;
                goto LABEL_66;
              }

              v56 = v184;
              v183 = *(v184 + 16);
              outlined copy of Result<_DataTable, Error>(v184, 0);
              v57 = v56;
              v58 = v183;
              outlined copy of Result<_DataTable, Error>(v57, 0);

              v182 = specialized String.withCString<A>(_:)(closure #1 in CMLTable.column(name:)partial apply, v58, v179._countAndFlagsBits, v33);
              v177 = 0;

              v59 = 0;
              v60 = type metadata accessor for _UntypedColumn();
              v61 = swift_allocObject(v60, 24, 7);
              *(v61 + 16) = v182;
              outlined consume of Result<_DataTable, Error>(v184, 0);
              outlined copy of Result<_DataTable, Error>(v61, 0);
              _UntypedColumn.type.getter();
              outlined consume of Result<_DataTable, Error>(v61, 0);
              if (v180 != 3)
              {
                v181 = 0;
LABEL_66:
                outlined consume of Result<_DataTable, Error>(v61, v59);
                outlined consume of Result<_DataTable, Error>(v184, v181);
                BUG();
              }

              outlined consume of Result<_DataTable, Error>(v184, 0);
              v62 = v61;
              v63 = *(v61 + 16);
              outlined copy of Result<_DataTable, Error>(v62, 0);
              v64 = CMLColumn.size.getter();
              v183 = v62;
              outlined consume of Result<_DataTable, Error>(v62, 0);
              if (v64 < 0)
              {
                BUG();
              }

              v65 = v183;
              outlined copy of Result<_DataTable, Error>(v183, 0);
              v66 = v65;
              v29 = v177;
              *&v180 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_Say8CreateML11MLDataValueOGSgs5NeverOTg5025_s11TabularData0B5FrameV8d9MLEyAcD11f17TableVcfcSayAD0F5G12OGSgSiXEfU2_AG0F6ColumnVyAI12SequenceTypeVGTf1cn_n(0, v64, v66, 0, v32);
              v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLDataValue]);
              v182 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [[MLDataValue]?]);
              v68 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [[MLDataValue]?] and conformance [A], &demangling cache variable for type metadata for [[MLDataValue]?], &protocol conformance descriptor for [A]);
              Column.init<A>(name:contents:)(v179._countAndFlagsBits, v33, &v180, v67, v182, v68);
              v69 = v175;
              DataFrame.append<A>(column:)(v175, v67);
              outlined consume of Result<_DataTable, Error>(v183, 0);
              v53 = v69;
              v54 = v161;
              v55 = v162;
              goto LABEL_39;
            case 4:
              if (v181)
              {
                v145 = v184;
                swift_willThrow();
                outlined copy of Result<_DataTable, Error>(v145, 1);
                outlined copy of Result<_DataTable, Error>(v145, 1);
                *&v180 = 0;
                *(&v180 + 1) = 0xE000000000000000;
                _StringGuts.grow(_:)(34);
                *(&v180 + 1);
                *&v180 = 0xD00000000000001FLL;
                *(&v180 + 1) = "ml.activityclassifier" + 0x8000000000000000;
                v146._countAndFlagsBits = v179._countAndFlagsBits;
                v146._object = v33;
                String.append(_:)(v146);
                v146._object = 0xE100000000000000;
                v146._countAndFlagsBits = 34;
                String.append(_:)(v146);
                v179 = v180;
                v147 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
                v101 = swift_allocError(&type metadata for MLCreateError, v147, 0, 0);
                *v148 = v179;
                *(v148 + 16) = 0;
                *(v148 + 32) = 0;
                *(v148 + 48) = 1;
                outlined consume of Result<_DataTable, Error>(v184, v178);
                v99 = 1;
LABEL_64:
                outlined consume of Result<_DataTable, Error>(v101, v99);
                outlined consume of Result<_DataTable, Error>(v184, v181);
                BUG();
              }

              v96 = v184;
              v183 = *(v184 + 16);
              outlined copy of Result<_DataTable, Error>(v184, 0);
              v97 = v96;
              v98 = v183;
              outlined copy of Result<_DataTable, Error>(v97, 0);

              v182 = specialized String.withCString<A>(_:)(closure #1 in CMLTable.column(name:)partial apply, v98, v179._countAndFlagsBits, v33);
              v172 = 0;
              v177 = v33;

              v99 = 0;
              v100 = type metadata accessor for _UntypedColumn();
              v101 = swift_allocObject(v100, 24, 7);
              *(v101 + 16) = v182;
              v102 = v184;
              outlined consume of Result<_DataTable, Error>(v184, 0);
              outlined copy of Result<_DataTable, Error>(v101, 0);
              _UntypedColumn.type.getter();
              outlined consume of Result<_DataTable, Error>(v101, 0);
              if (v180 != 4)
              {
                v181 = 0;
                goto LABEL_64;
              }

              outlined consume of Result<_DataTable, Error>(v102, 0);
              v103 = v101;
              v104 = *(v101 + 16);
              outlined copy of Result<_DataTable, Error>(v103, 0);
              v105 = CMLColumn.size.getter();
              outlined consume of Result<_DataTable, Error>(v103, 0);
              if (v105 < 0)
              {
                BUG();
              }

              v183 = v103;
              outlined copy of Result<_DataTable, Error>(v103, 0);
              v29 = v172;
              ML11MLDataValueO3key_AI5valuetGSgs5NeverOTg5025_s11TabularData0B5FrameV8d9MLEyAcD11f17TableVcfcSayAD0F5G26O3key_AH5valuetGSgSiXEfU3_AG0F6ColumnVyAI14DictionaryTypeVGTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_Say8CreateML11MLDataValueO3key_AI5valuetGSgs5NeverOTg5025_s11TabularData0B5FrameV8d9MLEyAcD11f17TableVcfcSayAD0F5G26O3key_AH5valuetGSgSiXEfU3_AG0F6ColumnVyAI14DictionaryTypeVGTf1cn_n(0, v105, v103, 0, v32);
              v107 = specialized _arrayForceCast<A, B>(_:)(ML11MLDataValueO3key_AI5valuetGSgs5NeverOTg5025_s11TabularData0B5FrameV8d9MLEyAcD11f17TableVcfcSayAD0F5G26O3key_AH5valuetGSgSiXEfU3_AG0F6ColumnVyAI14DictionaryTypeVGTf1cn_n);
              ML11MLDataValueO3key_AI5valuetGSgs5NeverOTg5025_s11TabularData0B5FrameV8d9MLEyAcD11f17TableVcfcSayAD0F5G26O3key_AH5valuetGSgSiXEfU3_AG0F6ColumnVyAI14DictionaryTypeVGTf1cn_n;
              *&v180 = v107;
              v108 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [(MLDataValue, MLDataValue)]);
              v182 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [[(MLDataValue, MLDataValue)]?]);
              v109 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [[(MLDataValue, MLDataValue)]?] and conformance [A], &demangling cache variable for type metadata for [[(MLDataValue, MLDataValue)]?], &protocol conformance descriptor for [A]);
              v110 = v160;
              Column.init<A>(name:contents:)(v179._countAndFlagsBits, v177, &v180, v108, v182, v109);
              DataFrame.append<A>(column:)(v110, v108);
              outlined consume of Result<_DataTable, Error>(v183, 0);
              v53 = v110;
              v54 = v158;
              v55 = v159;
              goto LABEL_39;
            case 5:
              if (v181)
              {
                v141 = v184;
                swift_willThrow();
                outlined copy of Result<_DataTable, Error>(v141, 1);
                outlined copy of Result<_DataTable, Error>(v141, 1);
                *&v180 = 0;
                *(&v180 + 1) = 0xE000000000000000;
                _StringGuts.grow(_:)(34);
                *(&v180 + 1);
                *&v180 = 0xD00000000000001FLL;
                *(&v180 + 1) = "ml.activityclassifier" + 0x8000000000000000;
                v142._countAndFlagsBits = v179._countAndFlagsBits;
                v142._object = v33;
                String.append(_:)(v142);
                v142._object = 0xE100000000000000;
                v142._countAndFlagsBits = 34;
                String.append(_:)(v142);
                v179 = v180;
                v143 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
                v116 = swift_allocError(&type metadata for MLCreateError, v143, 0, 0);
                *v144 = v179;
                *(v144 + 16) = 0;
                *(v144 + 32) = 0;
                *(v144 + 48) = 1;
                outlined consume of Result<_DataTable, Error>(v184, v178);
                v114 = 1;
LABEL_61:
                outlined consume of Result<_DataTable, Error>(v116, v114);
                outlined consume of Result<_DataTable, Error>(v184, v181);
                BUG();
              }

              v111 = v184;
              v183 = *(v184 + 16);
              outlined copy of Result<_DataTable, Error>(v184, 0);
              v112 = v111;
              v113 = v183;
              outlined copy of Result<_DataTable, Error>(v112, 0);

              v182 = specialized String.withCString<A>(_:)(partial apply for closure #1 in CMLTable.column(name:), v113, v179._countAndFlagsBits, v33);
              v177 = 0;

              v114 = 0;
              v115 = type metadata accessor for _UntypedColumn();
              v116 = swift_allocObject(v115, 24, 7);
              *(v116 + 16) = v182;
              outlined consume of Result<_DataTable, Error>(v184, 0);
              outlined copy of Result<_DataTable, Error>(v116, 0);
              _UntypedColumn.type.getter();
              outlined consume of Result<_DataTable, Error>(v116, 0);
              if (v180 != 5)
              {
                v181 = 0;
                goto LABEL_61;
              }

              outlined consume of Result<_DataTable, Error>(v184, 0);
              v117 = v116;
              v118 = *(v116 + 16);
              outlined copy of Result<_DataTable, Error>(v117, 0);
              v119 = CMLColumn.size.getter();
              v183 = v117;
              outlined consume of Result<_DataTable, Error>(v117, 0);
              if (v119 < 0)
              {
                BUG();
              }

              v120 = v183;
              outlined copy of Result<_DataTable, Error>(v183, 0);
              v121 = v120;
              v29 = v177;
              *&v180 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_So12MLMultiArrayCSgs5NeverOTg5059_s11TabularData0B5FrameV8CreateMLEyAcD11MLDataTableVcfcSo12dE11CSgSiXEfU4_0M2ML0Q6ColumnVyAM0Q5ValueO05MultiE4TypeVGTf1cn_n(0, v119, v121, 0, v32);
              v122 = type metadata accessor for MLMultiArray();
              v182 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLMultiArray?]);
              v123 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [MLMultiArray?] and conformance [A], &demangling cache variable for type metadata for [MLMultiArray?], &protocol conformance descriptor for [A]);
              Column.init<A>(name:contents:)(v179._countAndFlagsBits, v33, &v180, v122, v182, v123);
              v124 = v174;
              DataFrame.append<A>(column:)(v174, v122);
              outlined consume of Result<_DataTable, Error>(v183, 0);
              v53 = v124;
              v54 = v156;
              v55 = v157;
              goto LABEL_39;
            case 6:
              goto LABEL_17;
          }
        }

        else
        {
          swift_bridgeObjectRelease_n(v33, 2);
        }
      }

      else
      {
LABEL_17:
        v33;
      }

      ++v30;

      v125 = CMLSequence.size.getter();
      v126 = specialized RandomAccessCollection<>.distance(from:to:)(0, v125);
    }

    while (v30 != v126);
  }

  outlined consume of Result<_DataTable, Error>(v184, v178);
  v173;
}

uint64_t DataFrame.randomSplit(strategy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = v3;
  v40 = a2;
  v41 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame.Slice, DataFrame.Slice));
  v5 = *(*(v42 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v37 = &v35;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v39 = &v35;
  v10 = alloca(v5);
  v11 = alloca(v5);
  v38 = &v35;
  v12 = type metadata accessor for DataFrame.Rows(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v43 = *a3;
  v36 = *(a3 + 8);
  v45 = *(a3 + 16);
  v17 = *(a3 + 17);
  DataFrame.rows.getter(0, a2, v18, v19);
  v20 = DataFrame.Rows.count.getter();
  (*(v13 + 8))(&v35, v12);
  if (v17 != 1)
  {
    v21 = v36;
    if (v45)
    {
      v21 = 1;
    }

    if (v43 != 0.0)
    {
      goto LABEL_8;
    }

LABEL_7:
    v22 = type metadata accessor for DataFrame.Slice(0);
    __swift_storeEnumTagSinglePayload(v41, 1, 1, v22);
    return specialized DataFrameProtocol.subscript.getter(0);
  }

  if (v20 < 50)
  {
    goto LABEL_7;
  }

  v43 = dbl_33FA70[v20 < 0xC8];
  v21 = 1;
LABEL_8:
  v24 = v38;
  v25 = v38 + *(v42 + 48);
  v26 = type metadata accessor for DataFrame(0);
  DataFrameProtocol.randomSplit(by:seed:)(v24, v25, v21, 0, v26, &protocol witness table for DataFrame, v43);
  v27 = v39;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v24, v39, &demangling cache variable for type metadata for (DataFrame.Slice, DataFrame.Slice));
  v28 = v27 + *(v42 + 48);
  v29 = type metadata accessor for DataFrame.Slice(0);
  v44 = *(v29 - 8);
  v30 = v41;
  v31 = v27;
  v32 = *(v44 + 32);
  v32(v41, v31, v29);
  __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
  v33 = v37;
  outlined init with take of (DataFrame.Slice, DataFrame.Slice)(v24, v37);
  v32(v40, v33 + *(v42 + 48), v29);
  v34 = *(v44 + 8);
  v34(v33, v29);
  return (v34)(v28, v29);
}

uint64_t MLUntypedColumn.init(_:convertArraysToShapedArrays:)(uint64_t a1, int a2, __m128 a3)
{
  v611 = v4;
  v583 = a2;
  v526 = v3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Int32>?) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v575 = &v519;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v558 = &v519;
  v591 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Int32>>);
  v541 = *(v591 - 8);
  v10 = *(v541 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v592 = &v519;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>?) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v576 = &v519;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v559 = &v519;
  v593 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Double>>);
  v542 = *(v593 - 8);
  v18 = *(v542 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v594 = &v519;
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>?) - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v577 = &v519;
  v24 = alloca(v21);
  v25 = alloca(v21);
  v560 = &v519;
  v595 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Float>>);
  v543 = *(v595 - 8);
  v26 = *(v543 + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v596 = &v519;
  v589 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLMultiArray>);
  v544 = *(v589 - 8);
  v29 = *(v544 + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v590 = &v519;
  v601 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[AnyHashable : Any?]>);
  v557 = *(v601 - 8);
  v32 = *(v557 + 64);
  v33 = alloca(v32);
  v34 = alloca(v32);
  v602 = &v519;
  v35 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Any]>) - 8) + 64);
  v36 = alloca(v35);
  v37 = alloca(v35);
  v545 = &v519;
  v38 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Any?]>) - 8) + 64);
  v39 = alloca(v38);
  v40 = alloca(v38);
  v540 = &v519;
  v41 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : String]>) - 8) + 64);
  v42 = alloca(v41);
  v43 = alloca(v41);
  v539 = &v519;
  v44 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Float]>) - 8) + 64);
  v45 = alloca(v44);
  v46 = alloca(v44);
  v538 = &v519;
  v47 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Double]>) - 8) + 64);
  v48 = alloca(v47);
  v49 = alloca(v47);
  v537 = &v519;
  v50 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Int]>) - 8) + 64);
  v51 = alloca(v50);
  v52 = alloca(v50);
  v536 = &v519;
  v53 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Any]>) - 8) + 64);
  v54 = alloca(v53);
  v55 = alloca(v53);
  v535 = &v519;
  v56 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Any?]>) - 8) + 64);
  v57 = alloca(v56);
  v58 = alloca(v56);
  v534 = &v519;
  v59 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String]>) - 8) + 64);
  v60 = alloca(v59);
  v61 = alloca(v59);
  v533 = &v519;
  v588 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
  v553 = *(v588 - 8);
  v62 = *(v553 + 64);
  v63 = alloca(v62);
  v64 = alloca(v62);
  v561 = &v519;
  v65 = alloca(v62);
  v66 = alloca(v62);
  v529 = &v519;
  v67 = alloca(v62);
  v68 = alloca(v62);
  v573 = &v519;
  v574 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  v556 = *(v574 - 8);
  v69 = *(v556 + 64);
  v70 = alloca(v69);
  v71 = alloca(v69);
  v532 = &v519;
  v72 = alloca(v69);
  v73 = alloca(v69);
  v582 = &v519;
  v587 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v551 = *(v587 - 8);
  v74 = *(v551 + 64);
  v75 = alloca(v74);
  v76 = alloca(v74);
  v562 = &v519;
  v77 = alloca(v74);
  v78 = alloca(v74);
  v527 = &v519;
  v79 = alloca(v74);
  v80 = alloca(v74);
  v572 = &v519;
  v549 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>);
  v555 = *(v549 - 8);
  v81 = *(v555 + 64);
  v82 = alloca(v81);
  v83 = alloca(v81);
  v531 = &v519;
  v84 = alloca(v81);
  v85 = alloca(v81);
  v550 = &v519;
  v547 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Int32]>);
  v554 = *(v547 - 8);
  v86 = *(v554 + 64);
  v87 = alloca(v86);
  v88 = alloca(v86);
  v581 = &v519;
  v600 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Int32>);
  v604 = *(v600 - 8);
  v89 = *(v604 + 64);
  v90 = alloca(v89);
  v91 = alloca(v89);
  v563 = &v519;
  v92 = alloca(v89);
  v93 = alloca(v89);
  v548 = &v519;
  v94 = alloca(v89);
  v95 = alloca(v89);
  v569 = &v519;
  v570 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Int]>);
  v552 = *(v570 - 8);
  v96 = *(v552 + 64);
  v97 = alloca(v96);
  v98 = alloca(v96);
  v530 = &v519;
  v99 = alloca(v96);
  v100 = alloca(v96);
  v528 = &v519;
  v101 = alloca(v96);
  v102 = alloca(v96);
  v571 = &v519;
  v103 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Date?) - 8) + 64);
  v104 = alloca(v103);
  v105 = alloca(v103);
  v586 = &v519;
  v106 = alloca(v103);
  v107 = alloca(v103);
  v603 = &v519;
  v598 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Date>);
  v599 = *(v598 - 8);
  v108 = *(v599 + 64);
  v109 = alloca(v108);
  v110 = alloca(v108);
  *&v578 = &v519;
  v605 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v580 = *(v605 - 8);
  v111 = *(v580 + 64);
  v112 = alloca(v111);
  v113 = alloca(v111);
  *&v613 = &v519;
  v610 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v612 = *(v610 - 8);
  v114 = v612[8];
  v115 = alloca(v114);
  v116 = alloca(v114);
  v616 = &v519;
  v614 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Float>);
  v117 = *(v614 - 8);
  v118 = *(v117 + 64);
  v119 = alloca(v118);
  v120 = alloca(v118);
  v597.i64[0] = &v519;
  v121 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v606 = *(v121 - 8);
  v122 = *(v606 + 64);
  v123 = alloca(v122);
  v124 = alloca(v122);
  v615 = a1;
  v125 = AnyColumn.wrappedElementType.getter();
  if (swift_dynamicCastMetatype(v125, &type metadata for Int))
  {
    v126 = AnyColumn.assumingType<A>(_:)(&type metadata for Int, &type metadata for Int);
    v127 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
    v128 = dispatch thunk of Collection.count.getter(v121, v127);
    *&v613 = &v519;
    if (v128)
    {
      v585[0] = _swiftEmptyArrayStorage;
      v129 = 0;
      if (v128 > 0)
      {
        v129 = v128;
      }

      v616 = v128;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v129, 0);
      v614 = v585[0];
      dispatch thunk of Collection.startIndex.getter(v121, v127);
      v130 = v616;
      if (v616 < 0)
      {
        BUG();
      }

      v131 = v614;
      v610 = v127;
      do
      {
        v616 = v130;
        v132 = dispatch thunk of Collection.subscript.read(v607, v579, v121, v127);
        v134 = *(v133 + 8) == 0;
        v135 = *v133;
        if (!v134)
        {
          v135 = 0;
        }

        v614 = v135;
        v136 = 0;
        if (!v134)
        {
          v136 = 6;
        }

        v132(v607, 0, v126);
        v585[0] = v131;
        v137 = v121;
        v138 = v131[2];
        v139 = v131[3];
        v140 = v138 + 1;
        if (v139 >> 1 <= v138)
        {
          v612 = v137;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v139 >= 2, v140, 1);
          v137 = v612;
          v131 = v585[0];
        }

        v131[2] = v140;
        v141 = 3 * v138;
        v131[v141 + 4] = v614;
        v131[v141 + 5] = 0;
        LOBYTE(v131[v141 + 6]) = v136;
        v121 = v137;
        v127 = v610;
        dispatch thunk of Collection.formIndex(after:)(v579, v137, v610);
        v130 = v616 - 1;
      }

      while (v616 != 1);
    }

    else
    {
      v131 = _swiftEmptyArrayStorage;
    }

    (*(v606 + 8))(v613, v121);
    *&v607[0] = v131;
    v161 = alloca(24);
    v162 = alloca(32);
    v521 = v607;
    v163 = closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply;
LABEL_103:
    ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(v163);
    v280 = v279;
    v281 = *&v607[0];
LABEL_104:
    v281;
    v282 = type metadata accessor for AnyColumn(0);
    (*(*(v282 - 8) + 8))(v615, v282);
LABEL_105:
    result = v526;
    *v526 = ML14_UntypedColumnC_s5Error_pTt1g5;
    *(result + 8) = v280 & 1;
    return result;
  }

  v606 = v117;
  v142 = v614;
  v143 = v615;
  v609 = v125;
  if (swift_dynamicCastMetatype(v125, &type metadata for Float))
  {
    AnyColumn.assumingType<A>(_:)(&type metadata for Float, &type metadata for Float);
    v144 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Float> and conformance Column<A>, &demangling cache variable for type metadata for Column<Float>, &protocol conformance descriptor for Column<A>);
    v145 = v142;
    v146 = dispatch thunk of Collection.count.getter(v142, v144);
    if (v146)
    {
      v585[0] = _swiftEmptyArrayStorage;
      v149 = 0;
      if (v146 > 0)
      {
        v149 = v146;
      }

      *&v613 = v146;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v149, 0);
      v150 = v585[0];
      v151 = v597.i64[0];
      dispatch thunk of Collection.startIndex.getter(v145, v144);
      v152 = v613;
      if (v613 < 0)
      {
        BUG();
      }

      v610 = v144;
      do
      {
        *&v613 = v152;
        v153 = dispatch thunk of Collection.subscript.read(v607, v579, v145, v144);
        LOBYTE(v616) = *(v154 + 4) != 0;
        v155 = *v154;
        v156 = 0.0;
        if (!v616)
        {
          v156 = *v154;
        }

        v153(v607, 0);
        v585[0] = v150;
        v157 = v150[2];
        v158 = v157 + 1;
        if (v150[3] >> 1 <= v157)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v150[3] >= 2uLL, v157 + 1, 1);
          v158 = v157 + 1;
          v151 = v597.i64[0];
          v150 = v585[0];
        }

        v159 = 5 * v616 + 1;
        v150[2] = v158;
        v160 = 3 * v157;
        *&v150[v160 + 4] = v156;
        v150[v160 + 5] = 0;
        LOBYTE(v150[v160 + 6]) = v159;
        v145 = v614;
        v144 = v610;
        dispatch thunk of Collection.formIndex(after:)(v579, v614, v610);
        v152 = v613 - 1;
        v148 = v579;
      }

      while (v613 != 1);
    }

    else
    {
      v150 = _swiftEmptyArrayStorage;
      v151 = v597.i64[0];
    }

    (*(v606 + 8))(v151, v145, v147, v148);
    *&v607[0] = v150;
    v186 = alloca(24);
    v187 = alloca(32);
    v521 = v607;
    v163 = closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply;
    goto LABEL_103;
  }

  v164 = v609;
  v165 = v143;
  if (swift_dynamicCastMetatype(v609, &type metadata for Double))
  {
    v166 = AnyColumn.assumingType<A>(_:)(&type metadata for Double, &type metadata for Double);
    v167 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Double> and conformance Column<A>, &demangling cache variable for type metadata for Column<Double>, &protocol conformance descriptor for Column<A>);
    v168 = v610;
    v169 = dispatch thunk of Collection.count.getter(v610, v167);
    if (v169)
    {
      v170 = v169;
      v585[0] = _swiftEmptyArrayStorage;
      v171 = 0;
      if (v169 > 0)
      {
        v171 = v169;
      }

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v171, 0);
      v172 = v167;
      *&v613 = v585[0];
      v173 = v168;
      v614 = v172;
      dispatch thunk of Collection.startIndex.getter(v168, v172);
      v605 = v170;
      if (v170 < 0)
      {
        BUG();
      }

      v174 = v614;
      do
      {
        v175 = dispatch thunk of Collection.subscript.read(v607, v579, v173, v174);
        if (*(v176 + 8))
        {
          v177 = 0;
        }

        else
        {
          v177 = *v176;
        }

        v178 = v613;
        v179 = *(v176 + 8) != 0;
        v175(v607, 0, v166);
        v585[0] = v178;
        v180 = *(v178 + 16);
        v181 = *(v178 + 24);
        v182 = v180 + 1;
        if (v181 >> 1 <= v180)
        {
          LOBYTE(v613) = v179;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v181 >= 2, v180 + 1, 1);
          v182 = v180 + 1;
          v179 = v613;
          v178 = v585[0];
        }

        *(v178 + 16) = v182;
        v183 = 24 * v180;
        *(v178 + v183 + 32) = v177;
        *(v178 + v183 + 40) = 0;
        *&v613 = v178;
        *(v178 + v183 + 48) = 5 * v179 + 1;
        v184 = v616;
        v173 = v610;
        v174 = v614;
        dispatch thunk of Collection.formIndex(after:)(v579, v610, v614);
        v134 = v605-- == 1;
        v185 = v612;
      }

      while (!v134);
      v188 = v184;
      v168 = v173;
      v189 = v613;
    }

    else
    {
      v189 = _swiftEmptyArrayStorage;
      v185 = v612;
      v188 = v616;
    }

    (v185[1])(v188, v168);
    *&v607[0] = v189;
    v207 = alloca(24);
    v208 = alloca(32);
    v521 = v607;
    v163 = closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply;
    goto LABEL_103;
  }

  if (swift_dynamicCastMetatype(v164, &type metadata for String))
  {
    v190 = v613;
    v191 = AnyColumn.assumingType<A>(_:)(&type metadata for String, &type metadata for String);
    v192 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
    v193 = v605;
    v194 = dispatch thunk of Collection.count.getter(v605, v192);
    if (v194)
    {
      v585[0] = _swiftEmptyArrayStorage;
      v195 = 0;
      if (v194 > 0)
      {
        v195 = v194;
      }

      v616 = v194;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v195, 0);
      v614 = v585[0];
      dispatch thunk of Collection.startIndex.getter(v193, v192);
      v196 = v616;
      if (v616 < 0)
      {
        BUG();
      }

      v612 = v192;
      do
      {
        v616 = v196;
        v198 = dispatch thunk of Collection.subscript.read(v607, v579, v193, v192);
        v199 = v197[1];
        v200 = v199;
        if (v199)
        {
          v200 = *v197;
        }

        v610 = v200;
        v199;
        v198(v607, 0, v191);
        v201 = v614;
        v585[0] = v614;
        v202 = *(v614 + 16);
        v203 = *(v614 + 24);
        v204 = v202 + 1;
        if (v203 >> 1 <= v202)
        {
          v614 = v202 + 1;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v203 >= 2, v204, 1);
          v204 = v614;
          v201 = v585[0];
        }

        *(v201 + 16) = v204;
        v205 = 24 * v202;
        *(v201 + v205 + 32) = v610;
        *(v201 + v205 + 40) = v199;
        v614 = v201;
        *(v201 + v205 + 48) = (4 * (v199 == 0)) | 2;
        v206 = v613;
        v193 = v605;
        v192 = v612;
        dispatch thunk of Collection.formIndex(after:)(v579, v605, v612);
        v196 = v616 - 1;
      }

      while (v616 != 1);
      v209 = v614;
      v190 = v206;
    }

    else
    {
      v209 = _swiftEmptyArrayStorage;
    }

    (*(v580 + 8))(v190, v193);
    *&v607[0] = v209;
    v231 = alloca(24);
    v232 = alloca(32);
    v521 = v607;
    v163 = closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply;
    goto LABEL_103;
  }

  v210 = type metadata accessor for Date(0);
  if (swift_dynamicCastMetatype(v164, v210))
  {
    v211 = v578;
    v612 = v210;
    v212 = AnyColumn.assumingType<A>(_:)(v210, v210);
    v213 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Date> and conformance Column<A>, &demangling cache variable for type metadata for Column<Date>, &protocol conformance descriptor for Column<A>);
    v214 = v598;
    v215 = dispatch thunk of Collection.count.getter(v598, v213);
    if (v215)
    {
      v585[0] = _swiftEmptyArrayStorage;
      v218 = 0;
      if (v215 > 0)
      {
        v218 = v215;
      }

      *&v613 = v215;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v218, 0);
      v616 = v585[0];
      v610 = v213;
      dispatch thunk of Collection.startIndex.getter(v214, v213);
      v217 = v613;
      if (v613 < 0)
      {
        BUG();
      }

      v219 = v610;
      do
      {
        *&v613 = v217;
        v220 = dispatch thunk of Collection.subscript.read(v607, v579, v214, v219);
        v221 = v603;
        outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v222, v603, &demangling cache variable for type metadata for Date?);
        v220(v607, 0, v212);
        v223 = v586;
        outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v221, v586, &demangling cache variable for type metadata for Date?);
        v224 = v612;
        if (__swift_getEnumTagSinglePayload(v223, 1, v612) == 1)
        {
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v223, &demangling cache variable for type metadata for Date?);
          v225 = 6;
          v614 = 0;
        }

        else
        {
          v614 = Date.timeIntervalSince1970.getter(v223);
          (*(*(v224 - 1) + 8))(v223, v224);
          v225 = 1;
        }

        v226 = v616;
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v221, &demangling cache variable for type metadata for Date?);
        v585[0] = v226;
        v227 = *(v226 + 16);
        if (*(v226 + 24) >> 1 <= v227)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(*(v226 + 24) >= 2uLL, v227 + 1, 1);
          v226 = v585[0];
        }

        *(v226 + 16) = v227 + 1;
        v228 = 24 * v227;
        v212 = *&v614;
        *(v226 + v228 + 32) = v614;
        *(v226 + v228 + 40) = 0;
        v616 = v226;
        *(v226 + v228 + 48) = v225;
        v229 = v578;
        v214 = v598;
        v219 = v610;
        dispatch thunk of Collection.formIndex(after:)(v579, v598, v610);
        v217 = v613 - 1;
        v230 = v599;
      }

      while (v613 != 1);
      v233 = v616;
      v211 = v229;
    }

    else
    {
      v233 = _swiftEmptyArrayStorage;
      v230 = v599;
    }

    (*(v230 + 8))(v211, v214, v216, v217);
    *&v607[0] = v233;
    v276 = alloca(24);
    v277 = alloca(32);
    v521 = v607;
    v163 = closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply;
    goto LABEL_103;
  }

  v234 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
  if (!swift_dynamicCastMetatype(v164, v234))
  {
    v612 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int32]);
    v284 = swift_dynamicCastMetatype(v164, v612);
    v285 = v583;
    if (v284)
    {
      if (v583)
      {
        v286 = AnyColumn.assumingType<A>(_:)(v612, v612);
        v287 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[Int32]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[Int32]>, &protocol conformance descriptor for Column<A>);
        v288 = v547;
        v289 = v287;
        v290 = dispatch thunk of Collection.count.getter(v547, v287);
        if (v290)
        {
          v291 = v290;
          v585[0] = _swiftEmptyArrayStorage;
          v292 = 0;
          if (v290 > 0)
          {
            v292 = v290;
          }

          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v292, 0);
          *&v613 = v585[0];
          dispatch thunk of Collection.startIndex.getter(v288, v289);
          v614 = v291;
          if (v291 < 0)
          {
            BUG();
          }

          v610 = v289;
          do
          {
            v293 = dispatch thunk of Collection.subscript.read(v607, v579, v288, v289);
            v295 = *v294;
            *v294;
            v293(v607, 0, v286);
            if (v295)
            {
              *&v607[0] = v295;
              v296 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
              v297 = swift_allocObject(v296, 40, 7);
              v297[2] = 1;
              v297[3] = 2;
              v297[4] = *(v295 + 16);
              v298 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Int32] and conformance [A], &demangling cache variable for type metadata for [Int32], &protocol conformance descriptor for [A]);
              v295;
              v299 = v569;
              MLShapedArray.init<A>(scalars:shape:)(v607, v297, &type metadata for Int32, v612, &protocol witness table for Int32, v298);
              v616 = type metadata accessor for MLMultiArray();
              v300 = v548;
              v301 = v600;
              (*(v604 + 16))(v548, v299, v600);
              v302 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Int32> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Int32>, &protocol conformance descriptor for MLShapedArray<A>);
              v303.super.isa = MLMultiArray.init<A>(_:)(v300, v301, v302);
              MLDataValue.MultiArrayType.init(_:)(v303);
              (*(v604 + 8))(v299, v301);
              v295;
              v304 = *&v607[0];
              v305 = 5;
            }

            else
            {
              v305 = 6;
              v304 = 0;
            }

            v306 = v613;
            v585[0] = v613;
            v307 = *(v613 + 16);
            v308 = *(v613 + 24);
            if (v308 >> 1 <= v307)
            {
              *&v613 = v304;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v308 >= 2, v307 + 1, 1);
              v304 = v613;
              v306 = v585[0];
            }

            *(v306 + 16) = v307 + 1;
            v309 = 24 * v307;
            *(v306 + v309 + 32) = v304;
            *(v306 + v309 + 40) = 0;
            *&v613 = v306;
            *(v306 + v309 + 48) = v305;
            v310 = v581;
            v288 = v547;
            v289 = v610;
            dispatch thunk of Collection.formIndex(after:)(v579, v547, v610);
            --v614;
          }

          while (v614);
          v350 = v554;
        }

        else
        {
          *&v613 = _swiftEmptyArrayStorage;
          v350 = v554;
          v310 = v581;
        }

        (*(v350 + 8))(v310, v288);
        *&v607[0] = v613;
        v379 = alloca(24);
        v380 = alloca(32);
        v521 = v607;
        v163 = closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply;
        goto LABEL_103;
      }

      v311 = v530;
      goto LABEL_138;
    }

    v612 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
    if (swift_dynamicCastMetatype(v164, v612))
    {
      if (v285)
      {
        v315 = v550;
        v316 = AnyColumn.assumingType<A>(_:)(v612, v612);
        v317 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[Float]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[Float]>, &protocol conformance descriptor for Column<A>);
        v318 = v549;
        v616 = v317;
        v319 = dispatch thunk of Collection.count.getter(v549, v317);
        if (v319)
        {
          v585[0] = _swiftEmptyArrayStorage;
          v320 = 0;
          if (v319 > 0)
          {
            v320 = v319;
          }

          v321 = v319;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v320, 0);
          *&v613 = v585[0];
          dispatch thunk of Collection.startIndex.getter(v318, v616);
          if (v321 < 0)
          {
            BUG();
          }

          v322 = v321;
          do
          {
            v614 = v322;
            v323 = dispatch thunk of Collection.subscript.read(v607, v579, v318, v616);
            v325 = *v324;
            *v324;
            v323(v607, 0, v316);
            if (v325)
            {
              *&v607[0] = v325;
              v326 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
              v327 = swift_allocObject(v326, 40, 7);
              v327[2] = 1;
              v327[3] = 2;
              v327[4] = *(v325 + 16);
              v328 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Float] and conformance [A], &demangling cache variable for type metadata for [Float], &protocol conformance descriptor for [A]);
              v325;
              v329 = v572;
              MLShapedArray.init<A>(scalars:shape:)(v607, v327, &type metadata for Float, v612, &protocol witness table for Float, v328);
              v610 = type metadata accessor for MLMultiArray();
              v330 = v527;
              v331 = v329;
              v332 = v587;
              v333 = v551;
              (*(v551 + 16))(v527, v331, v587);
              v334 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Float> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Float>, &protocol conformance descriptor for MLShapedArray<A>);
              v335.super.isa = MLMultiArray.init<A>(_:)(v330, v332, v334);
              MLDataValue.MultiArrayType.init(_:)(v335);
              (*(v333 + 8))(v572, v332);
              v325;
              v336 = *&v607[0];
              v337 = 5;
            }

            else
            {
              v337 = 6;
              v336 = 0;
            }

            v338 = v613;
            v585[0] = v613;
            v339 = *(v613 + 16);
            v340 = *(v613 + 24);
            if (v340 >> 1 <= v339)
            {
              *&v613 = v336;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v340 >= 2, v339 + 1, 1);
              v336 = v613;
              v338 = v585[0];
            }

            *(v338 + 16) = v339 + 1;
            v341 = 24 * v339;
            *(v338 + v341 + 32) = v336;
            *(v338 + v341 + 40) = 0;
            *&v613 = v338;
            *(v338 + v341 + 48) = v337;
            v342 = v550;
            v318 = v549;
            dispatch thunk of Collection.formIndex(after:)(v579, v549, v616);
            v322 = v614 - 1;
          }

          while (v614 != 1);
          v385 = v555;
        }

        else
        {
          *&v613 = _swiftEmptyArrayStorage;
          v385 = v555;
          v342 = v315;
        }

        (*(v385 + 8))(v342, v318);
        *&v607[0] = v613;
        v390 = alloca(24);
        v391 = alloca(32);
        v521 = v607;
        v163 = closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply;
        goto LABEL_103;
      }

      v381 = v531;
      *a3.i64 = AnyColumn.assumingType<A>(_:)(v612, v612);
      v343 = v611;
      _s8CreateML15MLUntypedColumnVyAC11TabularData0D0VySayxGGKclufCSf_Tt1g5(v381, a3);
      goto LABEL_139;
    }

    v612 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
    if (swift_dynamicCastMetatype(v164, v612))
    {
      if (v285)
      {
        v351 = AnyColumn.assumingType<A>(_:)(v612, v612);
        v352 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[Double]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[Double]>, &protocol conformance descriptor for Column<A>);
        v353 = v574;
        v354 = dispatch thunk of Collection.count.getter(v574, v352);
        if (v354)
        {
          v355 = v354;
          v585[0] = _swiftEmptyArrayStorage;
          v356 = 0;
          if (v354 > 0)
          {
            v356 = v354;
          }

          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v356, 0);
          *&v613 = v585[0];
          dispatch thunk of Collection.startIndex.getter(v353, v352);
          v614 = v355;
          if (v355 < 0)
          {
            BUG();
          }

          v357 = v352;
          v358 = v574;
          v610 = v352;
          do
          {
            v359 = dispatch thunk of Collection.subscript.read(v607, v579, v358, v357);
            v361 = *v360;
            *v360;
            v359(v607, 0, v351);
            if (v361)
            {
              *&v607[0] = v361;
              v362 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
              v363 = swift_allocObject(v362, 40, 7);
              v363[2] = 1;
              v363[3] = 2;
              v363[4] = *(v361 + 16);
              v364 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Double] and conformance [A], &demangling cache variable for type metadata for [Double], &protocol conformance descriptor for [A]);
              v361;
              v365 = v573;
              MLShapedArray.init<A>(scalars:shape:)(v607, v363, &type metadata for Double, v612, &protocol witness table for Double, v364);
              v616 = type metadata accessor for MLMultiArray();
              v366 = v529;
              v367 = v365;
              v368 = v588;
              v369 = v553;
              (*(v553 + 16))(v529, v367, v588);
              v370 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Double> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Double>, &protocol conformance descriptor for MLShapedArray<A>);
              v371.super.isa = MLMultiArray.init<A>(_:)(v366, v368, v370);
              MLDataValue.MultiArrayType.init(_:)(v371);
              (*(v369 + 8))(v573, v368);
              v361;
              v372 = *&v607[0];
              v373 = 5;
            }

            else
            {
              v373 = 6;
              v372 = 0;
            }

            v374 = v613;
            v585[0] = v613;
            v375 = *(v613 + 16);
            v376 = *(v613 + 24);
            if (v376 >> 1 <= v375)
            {
              *&v613 = v372;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v376 >= 2, v375 + 1, 1);
              v372 = v613;
              v374 = v585[0];
            }

            *(v374 + 16) = v375 + 1;
            v377 = 24 * v375;
            *(v374 + v377 + 32) = v372;
            *(v374 + v377 + 40) = 0;
            *&v613 = v374;
            *(v374 + v377 + 48) = v373;
            v378 = v582;
            v358 = v574;
            v357 = v610;
            dispatch thunk of Collection.formIndex(after:)(v579, v574, v610);
            --v614;
          }

          while (v614);
          v393 = v358;
          v394 = v556;
        }

        else
        {
          v393 = v353;
          *&v613 = _swiftEmptyArrayStorage;
          v394 = v556;
          v378 = v582;
        }

        (*(v394 + 8))(v378, v393);
        *&v607[0] = v613;
        v398 = alloca(24);
        v399 = alloca(32);
        v521 = v607;
        v163 = closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply;
        goto LABEL_103;
      }

      v392 = v532;
      *a3.i64 = AnyColumn.assumingType<A>(_:)(v612, v612);
      v343 = v611;
      _s8CreateML15MLUntypedColumnVyAC11TabularData0D0VySayxGGKclufCSd_Tt1g5(v392, a3);
      goto LABEL_139;
    }

    v386 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
    if (swift_dynamicCastMetatype(v164, v386))
    {
      v387 = v533;
      v388 = v615;
      *a3.i64 = AnyColumn.assumingType<A>(_:)(v386, v386);
      v389 = v611;
      _s8CreateML15MLUntypedColumnVyAC11TabularData0D0VySayxGGKclufCSS_Tt1g5(v387, a3);
      if (v389)
      {
        v344 = type metadata accessor for AnyColumn(0);
        v345 = *(v344 - 8);
        v346 = v388;
        return (*(v345 + 8))(v346, v344);
      }

      v347 = type metadata accessor for AnyColumn(0);
      v348 = *(v347 - 8);
      v349 = v388;
LABEL_143:
      (*(v348 + 8))(v349, v347);
      ML14_UntypedColumnC_s5Error_pTt1g5 = *&v607[0];
      v280 = BYTE8(v607[0]);
      goto LABEL_105;
    }

    v395 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Any?]);
    if (swift_dynamicCastMetatype(v164, v395))
    {
      v396 = v534;
      *a3.i64 = AnyColumn.assumingType<A>(_:)(v395, v395);
      v397 = v611;
      _s8CreateML15MLUntypedColumnVyAC11TabularData0D0VySayxSgGGKclufCyp_Tt1g5(v396, a3);
    }

    else
    {
      v400 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Any]);
      if (swift_dynamicCastMetatype(v609, v400))
      {
        v401 = v535;
        *a3.i64 = AnyColumn.assumingType<A>(_:)(v400, v400);
        v397 = v611;
        _s8CreateML15MLUntypedColumnVyAC11TabularData0D0VySayxGGKclufCyp_Tt1g5(v401, a3);
      }

      else
      {
        v402 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Int]);
        if (swift_dynamicCastMetatype(v609, v402))
        {
          v403 = v536;
          AnyColumn.assumingType<A>(_:)(v402, v402);
          v404 = &demangling cache variable for type metadata for Column<[String : Int]>;
          v405 = &lazy protocol witness table cache variable for type Column<[String : Int]> and conformance Column<A>;
          v406 = closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply;
          v407 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySSSiG_8CreateML11MLDataValueO_AItsAE_pTg5020_sSS3key_x5valuetSg8d4ML11fg5OAFs5c136_pIgnrrzo_SSAA_xABtAF_AFtsAG_pIegnrzr_lTRSi_TG503_s8c39ML15MLUntypedColumnVyAC11TabularData0D0l18SDySSxGGKclufcAA11ef34OAGSgKXEfU_AJ_AJti1_J22SgV8U_Si_TG5Tf3nnnpf_nTf1cn_n;
        }

        else
        {
          v408 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Double]);
          if (swift_dynamicCastMetatype(v609, v408))
          {
            v403 = v537;
            AnyColumn.assumingType<A>(_:)(v408, v408);
            v404 = &demangling cache variable for type metadata for Column<[String : Double]>;
            v405 = &lazy protocol witness table cache variable for type Column<[String : Double]> and conformance Column<A>;
            v406 = closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply;
            v407 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySSSdG_8CreateML11MLDataValueO_AItsAE_pTg5020_sSS3key_x5valuetSg8d4ML11fg5OAFs5c136_pIgnrrzo_SSAA_xABtAF_AFtsAG_pIegnrzr_lTRSd_TG503_s8c39ML15MLUntypedColumnVyAC11TabularData0D0l18SDySSxGGKclufcAA11ef34OAGSgKXEfU_AJ_AJti1_J22SgV8U_Sd_TG5Tf3nnnpf_nTf1cn_n;
          }

          else
          {
            v409 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Float]);
            if (swift_dynamicCastMetatype(v609, v409))
            {
              v403 = v538;
              AnyColumn.assumingType<A>(_:)(v409, v409);
              v404 = &demangling cache variable for type metadata for Column<[String : Float]>;
              v405 = &lazy protocol witness table cache variable for type Column<[String : Float]> and conformance Column<A>;
              v406 = closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply;
              v407 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySSSfG_8CreateML11MLDataValueO_AItsAE_pTg5020_sSS3key_x5valuetSg8d4ML11fg5OAFs5c136_pIgnrrzo_SSAA_xABtAF_AFtsAG_pIegnrzr_lTRSf_TG503_s8c39ML15MLUntypedColumnVyAC11TabularData0D0l18SDySSxGGKclufcAA11ef34OAGSgKXEfU_AJ_AJti1_J22SgV8U_Sf_TG5Tf3nnnpf_nTf1cn_n;
            }

            else
            {
              v410 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : String]);
              if (swift_dynamicCastMetatype(v609, v410))
              {
                v403 = v539;
                AnyColumn.assumingType<A>(_:)(v410, v410);
                v404 = &demangling cache variable for type metadata for Column<[String : String]>;
                v405 = &lazy protocol witness table cache variable for type Column<[String : String]> and conformance Column<A>;
                v406 = closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply;
                v407 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDyS2SG_8CreateML11MLDataValueO_AItsAE_pTg5020_sSS3key_x5valuetSg8d4ML11fg5OAFs5c136_pIgnrrzo_SSAA_xABtAF_AFtsAG_pIegnrzr_lTRSS_TG503_s8c39ML15MLUntypedColumnVyAC11TabularData0D0l18SDySSxGGKclufcAA11ef34OAGSgKXEfU_AJ_AJti1_J22SgV8U_SS_TG5Tf3nnnpf_nTf1cn_n;
              }

              else
              {
                v411 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any?]);
                if (swift_dynamicCastMetatype(v609, v411))
                {
                  v403 = v540;
                  AnyColumn.assumingType<A>(_:)(v411, v411);
                  v404 = &demangling cache variable for type metadata for Column<[String : Any?]>;
                  v405 = &lazy protocol witness table cache variable for type Column<[String : Any?]> and conformance Column<A>;
                  v406 = closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply;
                  v407 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySSypSgG_8CreateML11MLDataValueO_AJtsAE_pTg5022_sSS3key_xSg5valuetSg8d4ML11fg5OAGs5c138_pIgnrrzo_SSAA_AbCtAG_AGtsAH_pIegnrzr_lTRyp_TG503_s8c39ML15MLUntypedColumnVyAC11TabularData0D0l20SDySSxSgGGKclufcAA11ef33OAHSgKXEfU_AK_AKtI31_AG5valuetsW8U_yp_Tg5Tf3nnnpf_nTf1cn_n;
                }

                else
                {
                  v412 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
                  if (!swift_dynamicCastMetatype(v609, v412))
                  {
                    v413 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [AnyHashable : Any?]);
                    if (swift_dynamicCastMetatype(v609, v413))
                    {
                      AnyColumn.assumingType<A>(_:)(v413, v413);
                      v586 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[AnyHashable : Any?]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[AnyHashable : Any?]>, &protocol conformance descriptor for Column<A>);
                      v604 = dispatch thunk of Collection.count.getter(v601, v586);
                      if (v604)
                      {
                        v568 = _swiftEmptyArrayStorage;
                        v414 = 0;
                        v415 = v604;
                        if (v604 > 0)
                        {
                          v414 = v604;
                        }

                        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v414, 0);
                        v603 = v568;
                        dispatch thunk of Collection.startIndex.getter(v601, v586);
                        if (v415 < 0)
                        {
                          BUG();
                        }

                        v580 = 0;
                        do
                        {
                          if (__OFADD__(1, v580++))
                          {
                            BUG();
                          }

                          v417 = dispatch thunk of Collection.subscript.read(v607, v546, v601, v586);
                          v419 = *v418;
                          *v418;
                          v417(v607, 0);
                          v616 = v419;
                          if (v419)
                          {
                            if (*(v616 + 16))
                            {
                              v420 = *(v616 + 16);
                              v584 = _swiftEmptyArrayStorage;
                              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v420, 0);
                              v612 = v584;
                              v421 = v616;
                              *&v613 = specialized Dictionary.startIndex.getter(v616);
                              v610 = v422;
                              v614 = v421 + 64;
                              v599 = v420 - 1;
                              while (1)
                              {
                                if (v613 < 0 || v613 >= 1 << *(v616 + 32))
                                {
                                  BUG();
                                }

                                v605 = v613 >> 6;
                                v423 = *(v614 + 8 * (v613 >> 6));
                                v606 = 1 << v613;
                                if (!_bittest64(&v423, v613))
                                {
                                  BUG();
                                }

                                if (*(v616 + 36) != v610)
                                {
                                  BUG();
                                }

                                v424 = v613;
                                v425 = v616;
                                outlined init with copy of AnyHashable(*(v616 + 48) + 40 * v613, v607);
                                outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v425 + 56) + 32 * v424, v608, &demangling cache variable for type metadata for Any?);
                                outlined init with copy of AnyHashable(v607, v585);
                                outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v608, &v585[5], &demangling cache variable for type metadata for Any?);
                                qmemcpy(v579, v585, sizeof(v579));
                                outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v607, &demangling cache variable for type metadata for (key: AnyHashable, value: Any?));
                                outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v579, v522, &demangling cache variable for type metadata for (key: AnyHashable, value: Any?));
                                outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v522, v525, &demangling cache variable for type metadata for (key: AnyHashable, value: Any?)?);
                                if (v525[3])
                                {
                                  qmemcpy(v523, v525, sizeof(v523));
                                  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v523, v525, &demangling cache variable for type metadata for (key: AnyHashable, value: Any?));
                                  if (v525[8])
                                  {
                                    outlined init with take of Any(&v525[5], v524);
                                    outlined destroy of AnyHashable(v525);
                                    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v523, v525, &demangling cache variable for type metadata for (key: AnyHashable, value: Any?));
                                    AnyHashable.base.getter();
                                    outlined destroy of AnyHashable(v525);
                                    v426 = v611;
                                    MLDataValue.init(fromAny:)(&v520, a3);
                                    v611 = v426;
                                    if (v426)
                                    {
                                      __swift_destroy_boxed_opaque_existential_1Tm(v524);
LABEL_256:
                                      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v523, &demangling cache variable for type metadata for (key: AnyHashable, value: Any?));
                                      v450 = &demangling cache variable for type metadata for Any?;
                                      v451 = &v525[5];
LABEL_258:
                                      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v451, v450);
                                      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v522, &demangling cache variable for type metadata for (key: AnyHashable, value: Any?)?);
                                      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v579, &demangling cache variable for type metadata for (key: AnyHashable, value: Any?));
                                      v603;
                                      v616;
                                      v612;
                                      v452 = type metadata accessor for AnyColumn(0);
                                      (*(*(v452 - 8) + 8))(v615, v452);
                                      return (*(v557 + 8))(v602, v601);
                                    }

                                    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v525[5], &demangling cache variable for type metadata for Any?);
                                    outlined init with copy of Any(v524, v525);
                                    v427 = v611;
                                    MLDataValue.init(fromAny:)(v525, a3);
                                    v611 = v427;
                                    if (v427)
                                    {
                                      outlined consume of MLDataValue(v564, *(&v564 + 1), v565);
                                      __swift_destroy_boxed_opaque_existential_1Tm(v524);
                                      v450 = &demangling cache variable for type metadata for (key: AnyHashable, value: Any?);
                                      v451 = v523;
                                      goto LABEL_258;
                                    }

                                    __swift_destroy_boxed_opaque_existential_1Tm(v524);
                                    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v523, &demangling cache variable for type metadata for (key: AnyHashable, value: Any?));
                                    v597 = v566;
                                    v428 = v567;
                                  }

                                  else
                                  {
                                    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v525[5], &demangling cache variable for type metadata for Any?);
                                    outlined destroy of AnyHashable(v525);
                                    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v523, v525, &demangling cache variable for type metadata for (key: AnyHashable, value: Any?));
                                    AnyHashable.base.getter();
                                    outlined destroy of AnyHashable(v525);
                                    v429 = v611;
                                    MLDataValue.init(fromAny:)(v524, a3);
                                    v611 = v429;
                                    if (v429)
                                    {
                                      goto LABEL_256;
                                    }

                                    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v523, &demangling cache variable for type metadata for (key: AnyHashable, value: Any?));
                                    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v525[5], &demangling cache variable for type metadata for Any?);
                                    v566 = 0;
                                    v567 = 6;
                                    v597 = 0;
                                    v428 = 6;
                                  }
                                }

                                else
                                {
                                  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v525, &demangling cache variable for type metadata for (key: AnyHashable, value: Any?)?);
                                  v564 = 0;
                                  v428 = 6;
                                  LOBYTE(v565) = 6;
                                  v566 = 0;
                                  v567 = 6;
                                  v597 = 0;
                                }

                                outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v522, &demangling cache variable for type metadata for (key: AnyHashable, value: Any?)?);
                                outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v579, &demangling cache variable for type metadata for (key: AnyHashable, value: Any?));
                                v578 = v564;
                                LOBYTE(v598) = v565;
                                v584 = v612;
                                v430 = v612[2];
                                if (v612[3] >> 1 <= v430)
                                {
                                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v612[3] >= 2uLL, v430 + 1, 1);
                                  v612 = v584;
                                }

                                v431 = v612;
                                v612[2] = v430 + 1;
                                v432 = 6 * v430;
                                *&v431[v432 + 4] = v578;
                                LOBYTE(v431[v432 + 6]) = v598;
                                a3 = v597;
                                *&v431[v432 + 7] = v597;
                                LOBYTE(v431[v432 + 9]) = v428;
                                v433 = -1 << *(v616 + 32);
                                if (v613 >= -v433)
                                {
                                  BUG();
                                }

                                if ((v606 & *(v614 + 8 * v605)) == 0)
                                {
                                  BUG();
                                }

                                if (*(v616 + 36) != v610)
                                {
                                  BUG();
                                }

                                *&v613 = _HashTable.occupiedBucket(after:)(v613, v614, ~v433);
                                if (v599-- == 0)
                                {
                                  goto LABEL_233;
                                }

                                v610 = *(v616 + 36);
                              }
                            }

                            v612 = _swiftEmptyArrayStorage;
LABEL_233:
                            v436 = v612[2];
                            v437 = &_swiftEmptyDictionarySingleton;
                            if (v436)
                            {
                              __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<MLDataValue, MLDataValue>);
                              v437 = static _DictionaryStorage.allocate(capacity:)(v436);
                            }

                            *&v607[0] = v437;
                            v438 = v612;
                            v612;
                            v439 = v611;
                            specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v438, 1, v607, *a3.i64);
                            v611 = v439;
                            if (v439)
                            {
                              swift_unexpectedError(v611, "Swift/Dictionary.swift", 22, 1, 489);
                              BUG();
                            }

                            v616;
                            v612;
                            v435 = *&v607[0];
                            LOBYTE(v613) = 4;
                          }

                          else
                          {
                            LOBYTE(v613) = 6;
                            v435 = 0;
                          }

                          v568 = v603;
                          v440 = v603[2];
                          if (v603[3] >> 1 <= v440)
                          {
                            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v603[3] >= 2, v440 + 1, 1);
                            v603 = v568;
                          }

                          v441 = v603;
                          v603[2] = v440 + 1;
                          v442 = 24 * v440;
                          *(v441 + v442 + 32) = v435;
                          *(v441 + v442 + 40) = 0;
                          *(v441 + v442 + 48) = v613;
                          dispatch thunk of Collection.formIndex(after:)(v546, v601, v586);
                        }

                        while (v580 != v604);
                      }

                      else
                      {
                        v603 = _swiftEmptyArrayStorage;
                      }

                      (*(v557 + 8))(v602, v601);
                      *&v607[0] = v603;
                      v446 = alloca(24);
                      v447 = alloca(32);
                      v521 = v607;
                      v163 = closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply;
                      goto LABEL_103;
                    }

                    v610 = type metadata accessor for MLMultiArray();
                    if (swift_dynamicCastMetatype(v609, v610))
                    {
                      AnyColumn.assumingType<A>(_:)(v610, v610);
                      *&v613 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<MLMultiArray> and conformance Column<A>, &demangling cache variable for type metadata for Column<MLMultiArray>, &protocol conformance descriptor for Column<A>);
                      v610 = dispatch thunk of Collection.count.getter(v589, v613);
                      if (v610)
                      {
                        v585[0] = _swiftEmptyArrayStorage;
                        v443 = 0;
                        v444 = v610;
                        if (v610 > 0)
                        {
                          v443 = v610;
                        }

                        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v443, 0);
                        v445 = v585[0];
                        dispatch thunk of Collection.startIndex.getter(v589, v613);
                        if (v444 < 0)
                        {
                          BUG();
                        }

                        do
                        {
                          v478 = dispatch thunk of Collection.subscript.read(v607, v579, v589, v613);
                          v480 = *v479;
                          v481 = *v479;
                          v478(v607, 0);
                          if (v480)
                          {
                            MLDataValue.MultiArrayType.init(_:)(v481);
                            v614 = *&v607[0];
                            LOBYTE(v616) = 5;
                          }

                          else
                          {
                            LOBYTE(v616) = 6;
                            v614 = 0;
                          }

                          v585[0] = v445;
                          v482 = v445[2];
                          if (v445[3] >> 1 <= v482)
                          {
                            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v445[3] >= 2uLL, v482 + 1, 1);
                            v445 = v585[0];
                          }

                          v445[2] = v482 + 1;
                          v483 = 3 * v482;
                          v445[v483 + 4] = v614;
                          v445[v483 + 5] = 0;
                          LOBYTE(v445[v483 + 6]) = v616;
                          dispatch thunk of Collection.formIndex(after:)(v579, v589, v613);
                          --v610;
                        }

                        while (v610);
                      }

                      else
                      {
                        v445 = _swiftEmptyArrayStorage;
                      }

                      (*(v544 + 8))(v590, v589);
                      *&v607[0] = v445;
                      v484 = alloca(24);
                      v485 = alloca(32);
                      v521 = v607;
                      ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
                      v280 = v486;
                      v281 = *&v607[0];
                      goto LABEL_104;
                    }

                    if (swift_dynamicCastMetatype(v609, v587))
                    {
                      AnyColumn.assumingType<A>(_:)(v587, v587);
                      v616 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<MLShapedArray<Float>> and conformance Column<A>, &demangling cache variable for type metadata for Column<MLShapedArray<Float>>, &protocol conformance descriptor for Column<A>);
                      v612 = dispatch thunk of Collection.count.getter(v595, v616);
                      if (v612)
                      {
                        v585[0] = _swiftEmptyArrayStorage;
                        v448 = 0;
                        v449 = v612;
                        if (v612 > 0)
                        {
                          v448 = v612;
                        }

                        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v448, 0);
                        *&v613 = v585[0];
                        dispatch thunk of Collection.startIndex.getter(v595, v616);
                        if (v449 < 0)
                        {
                          BUG();
                        }

                        do
                        {
                          v487 = dispatch thunk of Collection.subscript.read(v607, v579, v595, v616);
                          v488 = v560;
                          outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v489, v560, &demangling cache variable for type metadata for MLShapedArray<Float>?);
                          v487(v607, 0);
                          v490 = v577;
                          outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v488, v577, &demangling cache variable for type metadata for MLShapedArray<Float>?);
                          if (__swift_getEnumTagSinglePayload(v490, 1, v587) == 1)
                          {
                            outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v577, &demangling cache variable for type metadata for MLShapedArray<Float>?);
                            LOBYTE(v614) = 6;
                            v491 = 0;
                          }

                          else
                          {
                            v492 = v562;
                            v493 = v587;
                            v494 = v551;
                            (*(v551 + 32))(v562, v577, v587);
                            v495 = v572;
                            (*(v494 + 16))(v572, v492, v493);
                            v496 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Float> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Float>, &protocol conformance descriptor for MLShapedArray<A>);
                            v497.super.isa = MLMultiArray.init<A>(_:)(v495, v493, v496);
                            MLDataValue.MultiArrayType.init(_:)(v497);
                            v491 = *&v607[0];
                            (*(v494 + 8))(v562, v493);
                            LOBYTE(v614) = 5;
                          }

                          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v560, &demangling cache variable for type metadata for MLShapedArray<Float>?);
                          v585[0] = v613;
                          v498 = *(v613 + 16);
                          if (*(v613 + 24) >> 1 <= v498)
                          {
                            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(*(v613 + 24) >= 2uLL, v498 + 1, 1);
                            *&v613 = v585[0];
                          }

                          v499 = v613;
                          *(v613 + 16) = v498 + 1;
                          v500 = 24 * v498;
                          *(v499 + v500 + 32) = v491;
                          *(v499 + v500 + 40) = 0;
                          *(v499 + v500 + 48) = v614;
                          dispatch thunk of Collection.formIndex(after:)(v579, v595, v616);
                          v612 = (v612 - 1);
                        }

                        while (v612);
                      }

                      else
                      {
                        *&v613 = _swiftEmptyArrayStorage;
                      }

                      (*(v543 + 8))(v596, v595);
                      *&v607[0] = v613;
                      v501 = alloca(24);
                      v502 = alloca(32);
                      v521 = v607;
                      v163 = closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply;
                      goto LABEL_103;
                    }

                    if (swift_dynamicCastMetatype(v609, v588))
                    {
                      AnyColumn.assumingType<A>(_:)(v588, v588);
                      v616 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<MLShapedArray<Double>> and conformance Column<A>, &demangling cache variable for type metadata for Column<MLShapedArray<Double>>, &protocol conformance descriptor for Column<A>);
                      v612 = dispatch thunk of Collection.count.getter(v593, v616);
                      if (v612)
                      {
                        v585[0] = _swiftEmptyArrayStorage;
                        v453 = 0;
                        v454 = v612;
                        if (v612 > 0)
                        {
                          v453 = v612;
                        }

                        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v453, 0);
                        *&v613 = v585[0];
                        dispatch thunk of Collection.startIndex.getter(v593, v616);
                        if (v454 < 0)
                        {
                          BUG();
                        }

                        do
                        {
                          v503 = dispatch thunk of Collection.subscript.read(v607, v579, v593, v616);
                          v504 = v559;
                          outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v505, v559, &demangling cache variable for type metadata for MLShapedArray<Double>?);
                          v503(v607, 0);
                          v506 = v576;
                          outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v504, v576, &demangling cache variable for type metadata for MLShapedArray<Double>?);
                          if (__swift_getEnumTagSinglePayload(v506, 1, v588) == 1)
                          {
                            outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v576, &demangling cache variable for type metadata for MLShapedArray<Double>?);
                            LOBYTE(v614) = 6;
                            v507 = 0;
                          }

                          else
                          {
                            v508 = v561;
                            v509 = v588;
                            v510 = v553;
                            (*(v553 + 32))(v561, v576, v588);
                            v511 = v573;
                            (*(v510 + 16))(v573, v508, v509);
                            v512 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Double> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Double>, &protocol conformance descriptor for MLShapedArray<A>);
                            v513.super.isa = MLMultiArray.init<A>(_:)(v511, v509, v512);
                            MLDataValue.MultiArrayType.init(_:)(v513);
                            v507 = *&v607[0];
                            (*(v510 + 8))(v561, v509);
                            LOBYTE(v614) = 5;
                          }

                          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v559, &demangling cache variable for type metadata for MLShapedArray<Double>?);
                          v585[0] = v613;
                          v514 = *(v613 + 16);
                          if (*(v613 + 24) >> 1 <= v514)
                          {
                            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(*(v613 + 24) >= 2uLL, v514 + 1, 1);
                            *&v613 = v585[0];
                          }

                          v515 = v613;
                          *(v613 + 16) = v514 + 1;
                          v516 = 24 * v514;
                          *(v515 + v516 + 32) = v507;
                          *(v515 + v516 + 40) = 0;
                          *(v515 + v516 + 48) = v614;
                          dispatch thunk of Collection.formIndex(after:)(v579, v593, v616);
                          v612 = (v612 - 1);
                        }

                        while (v612);
                      }

                      else
                      {
                        *&v613 = _swiftEmptyArrayStorage;
                      }

                      (*(v542 + 8))(v594, v593);
                      *&v607[0] = v613;
                      v517 = alloca(24);
                      v518 = alloca(32);
                      v521 = v607;
                      v163 = closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply;
                      goto LABEL_103;
                    }

                    if (swift_dynamicCastMetatype(v609, v600))
                    {
                      AnyColumn.assumingType<A>(_:)(v600, v600);
                      v616 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<MLShapedArray<Int32>> and conformance Column<A>, &demangling cache variable for type metadata for Column<MLShapedArray<Int32>>, &protocol conformance descriptor for Column<A>);
                      v612 = dispatch thunk of Collection.count.getter(v591, v616);
                      if (v612)
                      {
                        v585[0] = _swiftEmptyArrayStorage;
                        v455 = 0;
                        v456 = v612;
                        if (v612 > 0)
                        {
                          v455 = v612;
                        }

                        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v455, 0);
                        *&v613 = v585[0];
                        dispatch thunk of Collection.startIndex.getter(v591, v616);
                        if (v456 < 0)
                        {
                          BUG();
                        }

                        do
                        {
                          v457 = dispatch thunk of Collection.subscript.read(v607, v579, v591, v616);
                          v458 = v558;
                          outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v459, v558, &demangling cache variable for type metadata for MLShapedArray<Int32>?);
                          v457(v607, 0);
                          v460 = v575;
                          outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v458, v575, &demangling cache variable for type metadata for MLShapedArray<Int32>?);
                          if (__swift_getEnumTagSinglePayload(v460, 1, v600) == 1)
                          {
                            outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v575, &demangling cache variable for type metadata for MLShapedArray<Int32>?);
                            LOBYTE(v614) = 6;
                            v461 = 0;
                          }

                          else
                          {
                            v462 = v563;
                            v463 = v600;
                            v464 = v604;
                            (*(v604 + 32))(v563, v575, v600);
                            v465 = v569;
                            (*(v464 + 16))(v569, v462, v463);
                            v466 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Int32> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Int32>, &protocol conformance descriptor for MLShapedArray<A>);
                            v467.super.isa = MLMultiArray.init<A>(_:)(v465, v463, v466);
                            MLDataValue.MultiArrayType.init(_:)(v467);
                            v461 = *&v607[0];
                            (*(v464 + 8))(v563, v463);
                            LOBYTE(v614) = 5;
                          }

                          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v558, &demangling cache variable for type metadata for MLShapedArray<Int32>?);
                          v585[0] = v613;
                          v468 = *(v613 + 16);
                          if (*(v613 + 24) >> 1 <= v468)
                          {
                            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(*(v613 + 24) >= 2uLL, v468 + 1, 1);
                            *&v613 = v585[0];
                          }

                          v469 = v613;
                          *(v613 + 16) = v468 + 1;
                          v470 = 24 * v468;
                          *(v469 + v470 + 32) = v461;
                          *(v469 + v470 + 40) = 0;
                          *(v469 + v470 + 48) = v614;
                          dispatch thunk of Collection.formIndex(after:)(v579, v591, v616);
                          v612 = (v612 - 1);
                        }

                        while (v612);
                      }

                      else
                      {
                        *&v613 = _swiftEmptyArrayStorage;
                      }

                      (*(v541 + 8))(v592, v591);
                      *&v607[0] = v613;
                      v476 = alloca(24);
                      v477 = alloca(32);
                      v521 = v607;
                      v163 = _s8CreateML15MLUntypedColumnVyACxcSTRzAA11MLDataValueO7ElementRtzlufcAA08_UntypedD0CyKXEfU_SayAEG_TG5TA_0;
                      goto LABEL_103;
                    }

                    *&v607[0] = 0xD000000000000016;
                    *(&v607[0] + 1) = "or Int labels, got " + 0x8000000000000000;
                    v471 = AnyColumn.wrappedElementType.getter();
                    v472._countAndFlagsBits = _typeName(_:qualified:)(v471, 0);
                    object = v472._object;
                    String.append(_:)(v472);
                    object;
                    v474._countAndFlagsBits = 46;
                    v474._object = 0xE100000000000000;
                    String.append(_:)(v474);
                    v613 = v607[0];
                    v474._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
                    swift_allocError(&type metadata for MLCreateError, v474._object, 0, 0);
                    *v475 = v613;
                    *(v475 + 16) = 0;
                    *(v475 + 32) = 0;
                    *(v475 + 48) = 1;
                    swift_willThrow();
                    goto LABEL_199;
                  }

                  v403 = v545;
                  AnyColumn.assumingType<A>(_:)(v412, v412);
                  v404 = &demangling cache variable for type metadata for Column<[String : Any]>;
                  v405 = &lazy protocol witness table cache variable for type Column<[String : Any]> and conformance Column<A>;
                  v406 = closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply;
                  v407 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySSypG_8CreateML11MLDataValueO_AItsAE_pTg5020_sSS3key_x5valuetSg8d4ML11fg5OAFs5c136_pIgnrrzo_SSAA_xABtAF_AFtsAG_pIegnrzr_lTRyp_TG503_s8c39ML15MLUntypedColumnVyAC11TabularData0D0l18SDySSxGGKclufcAA11ef34OAGSgKXEfU_AJ_AJti1_J22SgV8U_yp_Tg5Tf3nnnpf_nTf1cn_n;
                }
              }
            }
          }
        }

        v397 = v611;
        _s8CreateML15MLUntypedColumnVyAC11TabularData0D0VySDySSxGGKclufCSi_Tt1g5Tm(v403, v404, v405, v406, v407, *a3.i64);
      }
    }

    if (!v397)
    {
      v347 = type metadata accessor for AnyColumn(0);
      v348 = *(v347 - 8);
      v349 = v615;
      goto LABEL_143;
    }

LABEL_199:
    v344 = type metadata accessor for AnyColumn(0);
    v345 = *(v344 - 8);
    v346 = v615;
    return (*(v345 + 8))(v346, v344);
  }

  if ((v583 & 1) == 0)
  {
    v311 = v528;
LABEL_138:
    *a3.i64 = AnyColumn.assumingType<A>(_:)(v234, v234);
    v343 = v611;
    _s8CreateML15MLUntypedColumnVyAC11TabularData0D0VySayxGGKclufCSi_Tt1g5(v311, a3);
LABEL_139:
    if (v343)
    {
      v344 = type metadata accessor for AnyColumn(0);
      v345 = *(v344 - 8);
      v346 = v165;
      return (*(v345 + 8))(v346, v344);
    }

    v347 = type metadata accessor for AnyColumn(0);
    v348 = *(v347 - 8);
    v349 = v165;
    goto LABEL_143;
  }

  v235 = v234;
  v236 = v571;
  v237 = AnyColumn.assumingType<A>(_:)(v235, v235);
  v238 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[Int]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[Int]>, &protocol conformance descriptor for Column<A>);
  v239 = v570;
  v614 = v238;
  v240 = dispatch thunk of Collection.count.getter(v570, v238);
  if (!v240)
  {
    v382 = _swiftEmptyArrayStorage;
LABEL_161:
    (*(v552 + 8))(v236, v239, v237);
    *&v607[0] = v382;
    v383 = alloca(24);
    v384 = alloca(32);
    v521 = v607;
    v163 = closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply;
    goto LABEL_103;
  }

  v585[0] = _swiftEmptyArrayStorage;
  v241 = 0;
  if (v240 > 0)
  {
    v241 = v240;
  }

  v605 = v240;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v241, 0);
  v610 = v585[0];
  dispatch thunk of Collection.startIndex.getter(v239, v614);
  if (v605 < 0)
  {
    BUG();
  }

  v242 = 0;
  while (1)
  {
    v612 = (v242 + 1);
    if (__OFADD__(1, v242))
    {
      BUG();
    }

    v243 = dispatch thunk of Collection.subscript.read(v607, v579, v239, v614);
    v245 = *v244;
    *v244;
    v243(v607, 0, v237);
    if (!v245)
    {
      v264 = 6;
      v263 = 0;
      goto LABEL_90;
    }

    v246 = *(v245 + 16);
    v247 = _swiftEmptyArrayStorage;
    if (v246)
    {
      break;
    }

LABEL_88:
    v606 = v245;
    *&v607[0] = v247;
    v253 = v246;
    v254 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
    v255 = swift_allocObject(v254, 40, 7);
    v255[2] = 1;
    v255[3] = 2;
    v255[4] = v253;
    v256 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int32]);
    v257 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Int32] and conformance [A], &demangling cache variable for type metadata for [Int32], &protocol conformance descriptor for [A]);
    v258 = v569;
    MLShapedArray.init<A>(scalars:shape:)(v607, v255, &type metadata for Int32, v256, &protocol witness table for Int32, v257);
    type metadata accessor for MLMultiArray();
    v259 = v548;
    v260 = v600;
    (*(v604 + 16))(v548, v258, v600);
    v261 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Int32> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Int32>, &protocol conformance descriptor for MLShapedArray<A>);
    v262.super.isa = MLMultiArray.init<A>(_:)(v259, v260, v261);
    MLDataValue.MultiArrayType.init(_:)(v262);
    (*(v604 + 8))(v258, v260);
    v606;
    v263 = *&v607[0];
    v264 = 5;
LABEL_90:
    v265 = v610;
    v585[0] = v610;
    v266 = *(v610 + 16);
    v267 = *(v610 + 24);
    if (v267 >> 1 <= v266)
    {
      LOBYTE(v613) = v264;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v267 >= 2, v266 + 1, 1);
      v264 = v613;
      v265 = v585[0];
    }

    *(v265 + 16) = v266 + 1;
    v268 = 24 * v266;
    *(v265 + v268 + 32) = v263;
    *(v265 + v268 + 40) = 0;
    v610 = v265;
    *(v265 + v268 + 48) = v264;
    v236 = v571;
    v239 = v570;
    dispatch thunk of Collection.formIndex(after:)(v579, v570, v614);
    v242 = v612;
    if (v612 == v605)
    {
      v382 = v610;
      goto LABEL_161;
    }
  }

  *&v607[0] = _swiftEmptyArrayStorage;
  v597.i64[0] = v246;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v246, 0);
  v247 = *&v607[0];
  v248 = *(v245 + 32);
  v249 = v245;
  if ((v248 - 0x80000000) < 0xFFFFFFFF00000000)
  {
    goto LABEL_121;
  }

  v250 = *(*&v607[0] + 16);
  v251 = *(*&v607[0] + 24);
  v252 = v250 + 1;
  if (v251 >> 1 <= v250)
  {
    v606 = v245;
    v275 = v250;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v251 >= 2, v250 + 1, 1);
    v250 = v275;
    v249 = v606;
    v247 = *&v607[0];
  }

  v247[2] = v252;
  *(v247 + v250 + 8) = v248;
  v246 = v597.i64[0];
  if (v597.i64[0] == 1)
  {
LABEL_87:
    v245 = v249;
    goto LABEL_88;
  }

  v616 = 4 * v250 + 36;
  v269 = v250 + 2;
  v270 = v597.i64[0] - 1;
  v271 = 0;
  while (1)
  {
    v272 = v271 + 1;
    if (v271 + 1 >= v246)
    {
      BUG();
    }

    v273 = *(v249 + 8 * v271 + 40);
    if ((v273 - 0x80000000) < 0xFFFFFFFF00000000)
    {
      break;
    }

    *&v607[0] = v247;
    v274 = v247[3];
    *&v613 = v269 + v271;
    if (v274 >> 1 <= v271 + v250 + 1)
    {
      v606 = v249;
      *&v578 = v250;
      v598 = v269;
      v599 = v270;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v274 >= 2, v613, 1);
      v270 = v599;
      v269 = v598;
      v250 = v578;
      v246 = v597.i64[0];
      v249 = v606;
      v247 = *&v607[0];
    }

    v247[2] = v613;
    *(v247 + 4 * v271++ + v616) = v273;
    if (v270 == v272)
    {
      goto LABEL_87;
    }
  }

LABEL_121:
  v312 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v312, 0, 0);
  *v313 = 0xD00000000000001FLL;
  *(v313 + 8) = "Unsupported data type " + 0x8000000000000000;
  *(v313 + 16) = 0;
  *(v313 + 32) = 0;
  *(v313 + 48) = 1;
  swift_willThrow();
  v610;
  v249;
  v247;
  v314 = type metadata accessor for AnyColumn(0);
  (*(*(v314 - 8) + 8))(v615, v314);
  return (*(v552 + 8))(v571, v570);
}

uint64_t outlined init with take of (DataFrame.Slice, DataFrame.Slice)(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame.Slice, DataFrame.Slice));
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t specialized DataFrameProtocol.subscript.getter(uint64_t a1)
{
  v18 = a1;
  v21 = v1;
  v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DefaultIndices<DataFrame.Rows>);
  v3 = *(*(v24 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v19 = &v18;
  v6 = type metadata accessor for DataFrame.Rows(0);
  v23 = *(v6 - 8);
  v7 = *(v23 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = type metadata accessor for DataFrame(0);
  v20 = v2;
  v22 = v10;
  dispatch thunk of DataFrameProtocol.rows.getter(v10, &protocol witness table for DataFrame);
  (*(v23 + 16))(&v18, &v18, v6);
  v11 = v24;
  v12 = &v18 + *(v24 + 36);
  v13 = lazy protocol witness table accessor for type DataFrame.Rows and conformance DataFrame.Rows();
  dispatch thunk of Collection.startIndex.getter(v6, v13);
  v24 = *(v11 + 40);
  v14 = v19;
  dispatch thunk of Collection.endIndex.getter(v6, v13);
  v15 = v18;
  (*(v23 + 8))(&v18, v6);
  v16 = *(v14 + v24);
  if (v16 < v15)
  {
    BUG();
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v14, &demangling cache variable for type metadata for DefaultIndices<DataFrame.Rows>);
  return dispatch thunk of DataFrameProtocol.subscript.getter(v15, v16, v22, &protocol witness table for DataFrame);
}

uint64_t lazy protocol witness table accessor for type DataFrame.Rows and conformance DataFrame.Rows()
{
  result = lazy protocol witness table cache variable for type DataFrame.Rows and conformance DataFrame.Rows;
  if (!lazy protocol witness table cache variable for type DataFrame.Rows and conformance DataFrame.Rows)
  {
    v1 = type metadata accessor for DataFrame.Rows(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for DataFrame.Rows, v1);
    lazy protocol witness table cache variable for type DataFrame.Rows and conformance DataFrame.Rows = result;
  }

  return result;
}

uint64_t _s8CreateML15MLUntypedColumnVyAC11TabularData0D0VySayxGGKclufCSi_Tt1g5(uint64_t a1, __m128 a2)
{
  v51 = v3;
  v42 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Int]>);
  v5 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[Int]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[Int]>, &protocol conformance descriptor for Column<A>);
  v6 = dispatch thunk of Collection.count.getter(v4, v5);
  v47 = a1;
  v48 = v4;
  if (v6)
  {
    v45 = _swiftEmptyArrayStorage;
    v7 = 0;
    if (v6 > 0)
    {
      v7 = v6;
    }

    v44 = v6;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v50 = v45;
    dispatch thunk of Collection.startIndex.getter(v4, v5);
    if (v44 < 0)
    {
      BUG();
    }

    v8 = 0;
    v41 = v5;
    while (1)
    {
      v9 = __OFADD__(1, v8);
      v10 = v8 + 1;
      if (v9)
      {
        BUG();
      }

      v40 = v10;
      v11 = dispatch thunk of Collection.subscript.read(v38, v43, v4, v5);
      v13 = *v12;
      *v12;
      v11(v38, 0);
      if (v13)
      {
        v14 = *(v13 + 16);
        if (v14)
        {
          v49 = _swiftEmptyArrayStorage;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
          v15 = v49;
          v16 = 0;
          v17 = v51;
          v46 = v13;
          v39 = v14;
          while (1)
          {
            v18 = *(v13 + 8 * v16 + 32);
            v38[3] = &type metadata for Int;
            v38[0] = v18;
            MLDataValue.init(fromAny:)(v38, a2);
            if (v17)
            {
              break;
            }

            a2 = v36;
            v19 = v37;
            v49 = v15;
            v20 = v15[2];
            v21 = v15[3];
            if (v21 >> 1 <= v20)
            {
              v52 = v37;
              v51 = 0;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21 >= 2, v20 + 1, 1);
              v19 = v52;
              a2 = v36;
              v17 = v51;
              v15 = v49;
            }

            ++v16;
            v15[2] = v20 + 1;
            v22 = 3 * v20;
            *&v15[v22 + 4] = a2;
            LOBYTE(v15[v22 + 6]) = v19;
            v13 = v46;
            if (v39 == v16)
            {
              v51 = v17;
              goto LABEL_17;
            }
          }

          v51 = v17;
          v50;
          v13;
          v15;
          return (*(*(v48 - 8) + 8))(v47);
        }

        v15 = _swiftEmptyArrayStorage;
LABEL_17:
        _s8CreateML11MLDataValueO12SequenceTypeVyAExcSTRzAC7ElementRtzlufCSayACG_Tt1g5(v15, *a2.i64);
        v13;
        v24 = v38[0];
        v23 = 3;
      }

      else
      {
        v23 = 6;
        v24 = 0;
      }

      v25 = v50;
      v45 = v50;
      v26 = v50[2];
      v27 = v50[3];
      if (v27 >> 1 <= v26)
      {
        LOBYTE(v46) = v23;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v27 >= 2, v26 + 1, 1);
        v23 = v46;
        v25 = v45;
      }

      v25[2] = v26 + 1;
      v28 = 3 * v26;
      v25[v28 + 4] = v24;
      v25[v28 + 5] = 0;
      v50 = v25;
      LOBYTE(v25[v28 + 6]) = v23;
      v4 = v48;
      v5 = v41;
      dispatch thunk of Collection.formIndex(after:)(v43, v48, v41);
      v8 = v40;
      if (v40 == v44)
      {
        v35 = v50;
        goto LABEL_24;
      }
    }
  }

  v35 = _swiftEmptyArrayStorage;
LABEL_24:
  v38[0] = v35;
  v30 = alloca(24);
  v31 = alloca(32);
  ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
  v34 = v33;
  v38[0];
  (*(*(v48 - 8) + 8))(v47);
  result = v42;
  *v42 = ML14_UntypedColumnC_s5Error_pTt1g5;
  *(result + 8) = v34 & 1;
  return result;
}