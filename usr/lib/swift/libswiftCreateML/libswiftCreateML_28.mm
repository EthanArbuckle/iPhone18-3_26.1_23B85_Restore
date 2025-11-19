NSURL *$defer #1 () in AnyTreeClassifierModel.export(internalMetadata:)()
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

void MLBoostedTreeRegressor.predictions(from:)(uint64_t a1)
{
  v20 = v2;
  v19 = v1;
  v5 = type metadata accessor for DataFrame(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v17 = &v15;
  v10 = *(type metadata accessor for MLBoostedTreeRegressor(0) + 28);
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

uint64_t type metadata accessor for MLBoostedTreeRegressor(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLBoostedTreeRegressor;
  if (!type metadata singleton initialization cache for MLBoostedTreeRegressor)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLBoostedTreeRegressor);
  }

  return result;
}

uint64_t MLBoostedTreeRegressor.predictions(from:)(uint64_t a1, __m128 a2)
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
  MLBoostedTreeRegressor.predictions(from:)(&v13);
  if (v11)
  {
    return (*(v18 + 8))(&v13, v17);
  }

  *a2.i64 = (*(v18 + 8))(&v13, v17);
  return MLUntypedColumn.init(_:convertArraysToShapedArrays:)(&v13, 1, a2);
}

void MLBoostedTreeRegressor.evaluation(on:)(uint64_t a1)
{
  v3 = v2;
  v5 = v1;
  v6 = type metadata accessor for MLBoostedTreeRegressor(0);
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

uint64_t MLBoostedTreeRegressor.evaluation(on:)(uint64_t a1)
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
  MLBoostedTreeRegressor.evaluation(on:)(&v9);
  return (*(v3 + 8))(&v9, v2);
}

uint64_t MLBoostedTreeRegressor.write(to:metadata:)(uint64_t a1, const void *a2)
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
  result = static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(v50, 0xD000000000000014, ("Expected a tree classifier." + 0x8000000000000000), 0x6C65646F6D6C6DLL, 0xE700000000000000);
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
    specialized CoreMLExportable.export(metadata:)(v35, TreeRegressorModel.export(internalMetadata:));
    v32 = v49;
    outlined release of MLModelMetadata(v41, TreeRegressorModel.export(internalMetadata:));
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

uint64_t MLBoostedTreeRegressor.write(toFile:metadata:)(uint64_t a1, uint64_t a2, const void *a3)
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
  MLBoostedTreeRegressor.write(to:metadata:)(v17, v17);
  return (*(v25 + 8))(v17, v10, v15);
}

unint64_t MLBoostedTreeRegressor.debugDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MLBoostedTreeRegressor(0);
  v3 = v0 + v2[8];
  v22 = MLBoostedTreeRegressor.ModelParameters.description.getter(0);
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
  return 0xD000000000000021;
}

NSAttributedString MLBoostedTreeRegressor.playgroundDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NSAttributedString();
  v3._countAndFlagsBits = MLBoostedTreeRegressor.debugDescription.getter();
  v3._object = v4;
  result.super.isa = NSAttributedString.__allocating_init(string:)(v3).super.isa;
  v1[3].super.isa = v2;
  v1->super.isa = result.super.isa;
  return result;
}

uint64_t specialized CoreMLExportable.export(metadata:)(uint64_t *a1)
{
  return specialized CoreMLExportable.export(metadata:)(a1, TreeRegressorModel.export(internalMetadata:));
}

{
  return specialized CoreMLExportable.export(metadata:)(a1, MLLinearRegressor.Model.export(internalMetadata:));
}

{
  return specialized CoreMLExportable.export(metadata:)(a1, AnyTreeClassifierModel.export(internalMetadata:));
}

{
  return specialized CoreMLExportable.export(metadata:)(a1, MLLogisticRegressionClassifier.Model.export(internalMetadata:));
}

uint64_t specialized CoreMLExportable.export(metadata:)(uint64_t *a1, uint64_t (*a2)(char *))
{
  v5 = v2;
  result = a2(v30);
  if (!v3)
  {
    v39 = 0;
    v38._countAndFlagsBits = *a1;
    v32 = a1[1];
    v35 = a1[2];
    v7 = a1[3];
    v8 = v5;
    v9 = a1[5];
    v34 = a1[6];
    v10 = a1[4];
    if (!v9)
    {
      v10 = 0;
    }

    v37 = v10;
    v36 = a1[7];
    v11 = 0xE000000000000000;
    if (v9)
    {
      v11 = v9;
    }

    v38._object = v11;
    v7;
    Model.modelDescription.setter(v35, v7);
    v12 = v36;
    v36;
    Model.versionString.setter(v34, v12);
    v13 = v32;
    v32;
    Model.author.setter(v38._countAndFlagsBits, v13);
    v14 = a1[8];
    v9;
    Model.license.setter(v37, v38._object);
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for String, &protocol witness table for String);
      LOBYTE(v14) = 0;
    }

    v14;
    Model.metadata.setter(v15);
    v16 = Model.metadata.modify(v29);
    v17 = v39;
    specialized Dictionary._Variant.merge<A>(_:uniquingKeysWith:)(_swiftEmptyDictionarySingleton, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v18);
    v39 = v17;
    v16(v29, 0);
    v38 = getOSVersion()();
    v33 = v8;
    v37 = Model.metadata.modify(v29);
    v20 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v19);
    v31 = *v20;
    *v20 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v38._countAndFlagsBits, v38._object, 0xD00000000000001ALL, ("Recommender Model" + 0x8000000000000000), isUniquelyReferenced_nonNull_native);
    *v20 = v31;
    v37(v29, 0);
    v22 = Model.nestedModels.getter();
    v23 = v39;
    ML17MLImageClassifierV5f41V6export8metadata20featureExtractorType20dE92ADVAA0K8MetadataV_AC07FeatureiJ0OtKFSiAJcfu_32b63bdf5f6c975d31a36a8f37561ba444AJSiTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay20MLModelSpecification5ModelVG_Sis5NeverOTg5032_s8CreateML17MLImageClassifierV5f41V6export8metadata20featureExtractorType20dE92ADVAA0K8MetadataV_AC07FeatureiJ0OtKFSiAJcfu_32b63bdf5f6c975d31a36a8f37561ba444AJSiTf3nnnpk_nTf1cn_n(v22);
    v39 = v23;
    v22;
    v25 = specialized Sequence<>.max()(ML17MLImageClassifierV5f41V6export8metadata20featureExtractorType20dE92ADVAA0K8MetadataV_AC07FeatureiJ0OtKFSiAJcfu_32b63bdf5f6c975d31a36a8f37561ba444AJSiTf3nnnpk_nTf1cn_n);
    v27 = v26;
    ML17MLImageClassifierV5f41V6export8metadata20featureExtractorType20dE92ADVAA0K8MetadataV_AC07FeatureiJ0OtKFSiAJcfu_32b63bdf5f6c975d31a36a8f37561ba444AJSiTf3nnnpk_nTf1cn_n;
    v28 = 1;
    if ((v27 & 1) == 0)
    {
      v28 = v25;
    }

    return Model.specificationVersion.setter(v28);
  }

  return result;
}

uint64_t specialized CoreMLExportable.export(metadata:)(uint64_t a1)
{
  v4 = v1;
  v32 = _swiftEmptyDictionarySingleton;
  MLSoundClassifier.Model.export(internalMetadata:)(&v32);
  if (v2)
  {
    return v32;
  }

  v33 = 0;
  v35 = *a1;
  v36._object = *(a1 + 8);
  v30 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = v4;
  v8 = *(a1 + 40);
  v29 = *(a1 + 48);
  v9 = *(a1 + 32);
  if (!v8)
  {
    v9 = 0;
  }

  v34 = v9;
  v31 = *(a1 + 56);
  v10 = 0xE000000000000000;
  if (v8)
  {
    v10 = v8;
  }

  v36._countAndFlagsBits = v10;
  v6;
  Model.modelDescription.setter(v30, v6);
  v31;
  Model.versionString.setter(v29, v31);
  object = v36._object;
  v36._object;
  Model.author.setter(v35, object);
  v12 = *(a1 + 64);
  v8;
  Model.license.setter(v34, v36._countAndFlagsBits);
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for String, &protocol witness table for String);
    LOBYTE(v12) = 0;
  }

  v12;
  Model.metadata.setter(v13);
  v14 = v32;
  v34 = v32;
  v32;
  v15 = Model.metadata.modify(v26);
  v16 = v33;
  specialized Dictionary._Variant.merge<A>(_:uniquingKeysWith:)(v14, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v17);
  v33 = v16;
  v15(v26, 0);
  v36 = getOSVersion()();
  v28 = v7;
  v35 = Model.metadata.modify(v26);
  v19 = v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v18);
  v27 = *v19;
  *v19 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v36._countAndFlagsBits, v36._object, 0xD00000000000001ALL, ("Recommender Model" + 0x8000000000000000), isUniquelyReferenced_nonNull_native);
  *v19 = v27;
  v35(v26, 0);
  v21 = Model.nestedModels.getter();
  ML17MLImageClassifierV5f41V6export8metadata20featureExtractorType20dE92ADVAA0K8MetadataV_AC07FeatureiJ0OtKFSiAJcfu_32b63bdf5f6c975d31a36a8f37561ba444AJSiTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay20MLModelSpecification5ModelVG_Sis5NeverOTg5032_s8CreateML17MLImageClassifierV5f41V6export8metadata20featureExtractorType20dE92ADVAA0K8MetadataV_AC07FeatureiJ0OtKFSiAJcfu_32b63bdf5f6c975d31a36a8f37561ba444AJSiTf3nnnpk_nTf1cn_n(v21);
  v34;
  v21;
  v23 = specialized Sequence<>.max()(ML17MLImageClassifierV5f41V6export8metadata20featureExtractorType20dE92ADVAA0K8MetadataV_AC07FeatureiJ0OtKFSiAJcfu_32b63bdf5f6c975d31a36a8f37561ba444AJSiTf3nnnpk_nTf1cn_n);
  LOBYTE(v14) = v24;
  ML17MLImageClassifierV5f41V6export8metadata20featureExtractorType20dE92ADVAA0K8MetadataV_AC07FeatureiJ0OtKFSiAJcfu_32b63bdf5f6c975d31a36a8f37561ba444AJSiTf3nnnpk_nTf1cn_n;
  v25 = 1;
  if ((v14 & 1) == 0)
  {
    v25 = v23;
  }

  return Model.specificationVersion.setter(v25);
}

uint64_t specialized Sequence<>.max()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = *(a1 + 32);
  if (v1 != 1)
  {
    v3 = 0;
    do
    {
      if (result <= *(a1 + 8 * v3 + 40))
      {
        result = *(a1 + 8 * v3 + 40);
      }

      ++v3;
    }

    while (v1 - 1 != v3);
  }

  return result;
}

{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  if (v1 == 1)
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v5 = 0;
    do
    {
      v3 = fmax(*(a1 + 8 * v5++ + 40), v2);
      v2 = v3;
    }

    while (v1 - 1 != v5);
  }

  return *&v3;
}

void MLBoostedTreeRegressor.model.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLBoostedTreeRegressor(0) + 20);

  *(v1 + v2) = a1;
}

void (*MLBoostedTreeRegressor.model.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MLBoostedTreeRegressor(0) + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;
  v4;
  return MLActivityClassifier.model.modify;
}

uint64_t MLBoostedTreeRegressor.targetColumn.getter()
{
  v1 = *(type metadata accessor for MLBoostedTreeRegressor(0) + 24);
  v2 = *(v0 + v1);
  *(v0 + v1 + 8);
  return v2;
}

uint64_t MLBoostedTreeRegressor.targetColumn.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for MLBoostedTreeRegressor(0) + 24);
  result = *(v2 + v3 + 8);
  *(v2 + v3) = a1;
  *(v2 + v3 + 8) = a2;
  return result;
}

uint64_t MLBoostedTreeRegressor.featureColumns.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLBoostedTreeRegressor(0) + 28);
  result = *(v1 + v2);
  *(v1 + v2) = a1;
  return result;
}

uint64_t MLBoostedTreeRegressor.modelParameters.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLBoostedTreeRegressor(0);
  return outlined init with copy of MLBoostedTreeRegressor.ModelParameters(v1 + *(v3 + 32), v2);
}

uint64_t MLBoostedTreeRegressor.trainingMetrics.getter()
{
  v2 = v0;
  v3 = *(type metadata accessor for MLBoostedTreeRegressor(0) + 36);
  v4 = *(v1 + v3);
  v5 = *(v1 + v3 + 8);
  v6 = *(v1 + v3 + 16);
  *v2 = v4;
  *(v2 + 8) = v5;
  *(v2 + 16) = v6;
  return outlined copy of Result<_RegressorMetrics, Error>(v4, v5, v6);
}

uint64_t MLBoostedTreeRegressor.validationMetrics.getter()
{
  v2 = v0;
  v3 = *(type metadata accessor for MLBoostedTreeRegressor(0) + 40);
  v4 = *(v1 + v3);
  v5 = *(v1 + v3 + 8);
  v6 = *(v1 + v3 + 16);
  *v2 = v4;
  *(v2 + 8) = v5;
  *(v2 + 16) = v6;
  return outlined copy of Result<_RegressorMetrics, Error>(v4, v5, v6);
}

uint64_t static MLBoostedTreeRegressor._defaultSessionParameters.getter()
{
  v1 = v0;
  if (one-time initialization token for _defaultSessionParameters != -1)
  {
    swift_once(&one-time initialization token for _defaultSessionParameters, one-time initialization function for _defaultSessionParameters);
  }

  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  v3 = __swift_project_value_buffer(v2, static MLBoostedTreeRegressor._defaultSessionParameters);
  return outlined init with copy of MLTrainingSessionParameters(v3, v1, type metadata accessor for MLTrainingSessionParameters);
}

uint64_t MLBoostedTreeRegressor.init(_:targetColumn:featureColumns:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a6;
  v6[6] = a5;
  v6[5] = a4;
  v6[4] = a3;
  v6[3] = a2;
  v6[2] = a1;
  return swift_task_switch(MLBoostedTreeRegressor.init(_:targetColumn:featureColumns:parameters:), 0, 0);
}

uint64_t MLBoostedTreeRegressor.init(_:targetColumn:featureColumns:parameters:)()
{
  v12 = *(v0 + 48);
  v11 = *(v0 + 32);
  v1 = *(v0 + 16);
  v2 = type metadata accessor for MLBoostedTreeRegressor(0);
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
  v8[1] = MLBoostedTreeRegressor.init(_:targetColumn:featureColumns:parameters:);
  v9 = *(v0 + 24);
  return ((&async function pointer to specialized CoreMLExportable.exportAsCoreMLModel() + async function pointer to specialized CoreMLExportable.exportAsCoreMLModel()))();
}

{
  v1 = *(v0 + 100);
  v2 = *(v0 + 96);
  v7 = *(v0 + 48);
  v8 = *(v0 + 40);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  outlined destroy of MLBoostedTreeRegressor.ModelParameters(*(v0 + 56));
  outlined destroy of MLActivityClassifier.ModelParameters(v4, type metadata accessor for TreeRegressorModel);
  v8;
  v7;
  outlined consume of Result<_RegressorMetrics, Error>(*(v3 + v2), *(v3 + v2 + 8), *(v3 + v2 + 16));
  outlined consume of Result<_RegressorMetrics, Error>(*(v3 + v1), *(v3 + v1 + 8), *(v3 + v1 + 16));
  v5 = *(v0 + 80);
  return (*(v0 + 8))();
}

uint64_t MLBoostedTreeRegressor.init(_:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  v5 = *(*v2 + 72);
  v4 = *v2;
  *(*v2 + 80) = v1;
  v5;
  if (v1)
  {
    v6 = MLBoostedTreeRegressor.init(_:targetColumn:featureColumns:parameters:);
  }

  else
  {
    *(v4 + 88) = a1;
    v6 = MLRandomForestRegressor.init(_:targetColumn:featureColumns:parameters:);
  }

  return swift_task_switch(v6, 0, 0);
}

uint64_t MLBoostedTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(void (*a1)(uint64_t *, uint64_t, uint64_t), uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v143._rawValue = a4;
  _ = a3;
  v7 = v5;
  v140 = v5;
  v139._countAndFlagsBits = a2;
  v151 = v6;
  v149 = a5;
  v148 = a1;
  v152 = type metadata accessor for DataFrame(0);
  v150 = *(v152 - 8);
  v8 = *(v150 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v132 = &v110;
  v128 = *(type metadata accessor for TreeRegressorModel(0) - 8);
  v11 = *(v128 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v126 = &v110;
  v127 = v11;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v141 = &v110;
  v124 = type metadata accessor for TreeRegressor(0);
  v16 = *(*(v124 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v139._object = &v110;
  v136 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(0);
  v19 = *(*(v136 - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v135 = &v110;
  v134 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v22 = *(*(v134 - 8) + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v138 = &v110;
  v25 = alloca(v22);
  v26 = alloca(v22);
  v129 = &v110;
  v27 = alloca(v22);
  v28 = alloca(v22);
  v144 = &v110;
  v145 = type metadata accessor for BoostedTreeConfiguration(0);
  v147 = *(v145 - 8);
  v29 = *(v147 + 8);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v125 = &v110;
  v32 = alloca(v29);
  v33 = alloca(v29);
  v137 = &v110;
  v34 = alloca(v29);
  v35 = alloca(v29);
  v146 = &v110;
  v36 = type metadata accessor for MLBoostedTreeRegressor(0);
  v37 = *(v36 + 36);
  v130 = v7 + v37;
  *(v7 + v37 + 16) = 0;
  *(v7 + v37) = 0;
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
  v131 = v38;
  *(v7 + v38 + 16) = 1;
  v42 = _;
  v43._countAndFlagsBits = 0x6C6562614CLL;
  v43._object = 0xE500000000000000;
  v44._countAndFlagsBits = v139._countAndFlagsBits;
  v44._object = _;
  v45 = v148;
  DataFrame.validateColumnIsNumeric(_:context:)(v44, v43);
  if (v46)
  {
    v42;
    v143._rawValue;
    outlined destroy of MLBoostedTreeRegressor.ModelParameters(v149);
    v47 = v45;
    v48 = v152;
    v49 = v150;
LABEL_3:
    (*(v49 + 1))(v47, v48);
    v50 = v140;
LABEL_4:
    outlined consume of Result<_RegressorMetrics, Error>(*v130, *(v130 + 8), *(v130 + 16));
    return outlined consume of Result<_RegressorMetrics, Error>(*(v50 + v131), *(v50 + v131 + 8), *(v50 + v131 + 16));
  }

  v133 = v36;
  rawValue = v143._rawValue;
  if (v143._rawValue)
  {
    v143._rawValue;
    DataFrame.validateContainsColumns(_:context:)(rawValue, __PAIR128__(0xE700000000000000, 0x65727574616546));
    v50 = v140;
    if (v53)
    {
      v42;
      swift_bridgeObjectRelease_n(rawValue, 2);
      outlined destroy of MLBoostedTreeRegressor.ModelParameters(v149);
      (*(v150 + 8))(v148, v152);
      goto LABEL_4;
    }

    v151 = 0;
    rawValue;
  }

  else
  {
    v151 = 0;
  }

  v54 = v149;
  outlined init with copy of MLBoostedTreeRegressor.ModelParameters(v149, &v112);
  BoostedTreeConfiguration.init()();
  BoostedTreeConfiguration.maximumDepth.setter(v114);
  BoostedTreeConfiguration.maximumIterations.setter(v115);
  BoostedTreeConfiguration.minimumLossReduction.setter(v116);
  BoostedTreeConfiguration.minimumChildWeight.setter(v117);
  BoostedTreeConfiguration.randomSeed.setter(v118);
  BoostedTreeConfiguration.learningRate.setter(v119);
  BoostedTreeConfiguration.earlyStoppingIterationCount.setter(v120, v121);
  BoostedTreeConfiguration.rowSubsample.setter(v122);
  BoostedTreeConfiguration.columnSubsample.setter(v123);
  outlined destroy of MLBoostedTreeRegressor.ModelParameters(&v112);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v54, &v110, &demangling cache variable for type metadata for Any?);
  v55 = v144;
  if (!v111)
  {
    BUG();
  }

  v56 = v144 + *(v134 + 48);
  outlined init with take of Any(&v110, &v112);
  v57 = v135;
  swift_dynamicCast(v135, &v112, &type metadata for Any + 8, v136, 7);
  v58 = v55;
  v59 = v148;
  v60 = v151;
  MLBoostedTreeRegressor.ModelParameters.ValidationData.generateDataFrames(trainingData:)(v58, v56, v148);
  if (v60)
  {
    _;
    v143._rawValue;
    outlined destroy of MLBoostedTreeRegressor.ModelParameters(v149);
    (*(v150 + 8))(v59, v152);
    outlined destroy of MLActivityClassifier.ModelParameters(v57, type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData);
    v47 = v146;
    v48 = v145;
    v49 = v147;
    goto LABEL_3;
  }

  v136 = v56;
  outlined destroy of MLActivityClassifier.ModelParameters(v57, type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData);
  v61 = _;
  v62 = v143._rawValue;
  v63 = static _FeatureUtilities.selectFeaturesFromTrainingData(trainingData:targetColumn:featureColumns:)(v144, v139._countAndFlagsBits, _, v143._rawValue);
  v151 = 0;
  v64 = v62;
  v65 = v63;
  v64;
  v66 = *(v147 + 2);
  v67 = v145;
  v66(v137, v146, v145);
  v68 = v66;
  object = v139._object;
  *v139._object = v139._countAndFlagsBits;
  object[1] = v61;
  v70 = v65;
  object[2] = v65;
  object[3] = v65;
  object[4] = 0xD000000000000013;
  object[5] = "raining samples." + 0x8000000000000000;
  v71 = v125;
  v68(v125, v137, v67);
  v72 = object + *(v124 + 28);
  v143._rawValue = v70;
  swift_bridgeObjectRetain_n(v70, 2);
  _;
  BaseTreeRegressor.init(configuration:)(v71);
  v73 = *(v147 + 1);
  v74 = v145;
  v73(v137, v145);
  v75 = v151;
  TreeRegressor.fitted(to:validateOn:eventHandler:)(v144, v136, 0, 0);
  if (v75)
  {
    _;
    v143._rawValue;
    outlined destroy of MLBoostedTreeRegressor.ModelParameters(v149);
    (*(v150 + 8))(v148, v152);
    outlined destroy of MLActivityClassifier.ModelParameters(object, type metadata accessor for TreeRegressor);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v144, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v73(v146, v74);
    v50 = v140;
    goto LABEL_4;
  }

  v147 = v73;
  v151 = 0;
  if (!AnalyticsReporter.init()())
  {
    v76 = v144;
    v77 = v129;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v144, v129, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v78 = v77 + *(v134 + 48);
    v79 = DataFrame.shape.getter(v76);
    (*(v150 + 8))(v77, v152);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_boostedTreeRegressor, __PAIR128__(("vectorized_features" + 0x8000000000000000), 0xD000000000000015), v79);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v78, &demangling cache variable for type metadata for DataFrame?);
  }

  v80 = v133;
  v81 = *(v133 + 24);
  v82 = v140;
  *(v140 + v81) = v139._countAndFlagsBits;
  *(v82 + v81 + 8) = _;
  v139._countAndFlagsBits = v82 + *(v80 + 32);
  outlined init with copy of MLBoostedTreeRegressor.ModelParameters(v149, v139._countAndFlagsBits);
  *(v82 + *(v80 + 28)) = v143;
  v83 = v126;
  outlined init with copy of MLTrainingSessionParameters(v141, v126, type metadata accessor for TreeRegressorModel);
  v84 = *(v128 + 80);
  v85 = ~*(v128 + 80) & (v84 + 16);
  v86 = swift_allocObject(&unk_393038, v85 + v127, v84 | 7);
  outlined init with take of MLClassifierMetrics(v83, v86 + v85, type metadata accessor for TreeRegressorModel);
  v87 = v151;
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLBoostedTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:), v86);
  if (v87)
  {

    outlined destroy of MLBoostedTreeRegressor.ModelParameters(v149);
    (*(v150 + 8))(v148, v152);
    outlined destroy of MLActivityClassifier.ModelParameters(v141, type metadata accessor for TreeRegressorModel);
    outlined destroy of MLActivityClassifier.ModelParameters(v139._object, type metadata accessor for TreeRegressor);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v144, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v147(v146, v145);
    v143._rawValue;
    _;
    v50 = v82;
LABEL_20:
    outlined destroy of MLBoostedTreeRegressor.ModelParameters(v139._countAndFlagsBits);
    goto LABEL_4;
  }

  v89 = v88;

  v90 = *(v133 + 20);
  v135 = v89;
  *(v82 + v90) = v89;
  outlined init with copy of MLTrainingSessionParameters(v141, v82, type metadata accessor for TreeRegressorModel);
  v91 = v144;
  TreeRegressorModel.computeMetrics(on:)(v144);
  v151 = 0;
  v92 = v113;
  v93 = v130;
  outlined consume of Result<_RegressorMetrics, Error>(*v130, *(v130 + 8), *(v130 + 16));
  *v93 = v112;
  *(v93 + 16) = v92;
  v94 = v138;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v91, v138, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v95 = v94 + *(v134 + 48);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v95, 1, v152);
  v97 = _;
  v98 = v150;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of MLBoostedTreeRegressor.ModelParameters(v149);
    v99 = *(v98 + 8);
    v100 = v152;
    v99(v148, v152);
    outlined destroy of MLActivityClassifier.ModelParameters(v141, type metadata accessor for TreeRegressorModel);
    outlined destroy of MLActivityClassifier.ModelParameters(v139._object, type metadata accessor for TreeRegressor);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v91, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v147(v146, v145);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v95, &demangling cache variable for type metadata for DataFrame?);
    return (v99)(v138, v100);
  }

  else
  {
    v101 = v132;
    v102 = v95;
    v103 = v152;
    (*(v150 + 32))(v132, v102, v152);
    v150 = *(v98 + 8);
    (v150)(v138, v103);
    v50 = v140;
    v104 = v151;
    TreeRegressorModel.computeMetrics(on:)(v101);
    if (v104)
    {
      outlined destroy of MLBoostedTreeRegressor.ModelParameters(v149);
      v105 = v150;
      (v150)(v148, v152);
      v105(v132, v152);
      outlined destroy of MLActivityClassifier.ModelParameters(v141, type metadata accessor for TreeRegressorModel);
      outlined destroy of MLActivityClassifier.ModelParameters(v139._object, type metadata accessor for TreeRegressor);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v144, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
      v147(v146, v145);
      outlined destroy of MLActivityClassifier.ModelParameters(v50, type metadata accessor for TreeRegressorModel);
      v143._rawValue;
      v97;

      goto LABEL_20;
    }

    outlined destroy of MLBoostedTreeRegressor.ModelParameters(v149);
    v106 = v150;
    (v150)(v148, v152);
    v106(v101, v152);
    outlined destroy of MLActivityClassifier.ModelParameters(v141, type metadata accessor for TreeRegressorModel);
    outlined destroy of MLActivityClassifier.ModelParameters(v139._object, type metadata accessor for TreeRegressor);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v144, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v147(v146, v145);
    v107 = v50;
    v108 = v113;
    v109 = v131;
    result = outlined consume of Result<_RegressorMetrics, Error>(*(v107 + v131), *(v107 + v131 + 8), *(v107 + v131 + 16));
    *(v107 + v109) = v112;
    *(v107 + v109 + 16) = v108;
  }

  return result;
}

uint64_t closure #1 in MLBoostedTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc(288);
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = closure #1 in MLBoostedTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:);
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
  return swift_task_switch(closure #1 in MLBoostedTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:), 0, 0);
}

uint64_t MLBoostedTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
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
  outlined init with copy of MLBoostedTreeRegressor.ModelParameters(a5, &v11);
  MLBoostedTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(&v11, v15, v14, v13, &v11);
  return outlined destroy of MLBoostedTreeRegressor.ModelParameters(a5);
}

uint64_t MLBoostedTreeRegressor.init(checkpoint:)(uint64_t a1)
{
  v64 = v2;
  v81 = a1;
  v3 = v1;
  v73 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(0);
  v4 = *(*(v73 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v74 = v61;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v72 = v61;
  v71 = *(type metadata accessor for TreeRegressorModel(0) - 8);
  v9 = *(v71 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v69 = v61;
  v70 = v9;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v80 = v61;
  v65 = type metadata accessor for BoostedTreeConfiguration(0);
  v66 = *(v65 - 8);
  v14 = *(v66 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v67 = v61;
  v17 = alloca(v14);
  v18 = alloca(v14);
  v79 = v61;
  v78 = type metadata accessor for TreeRegressor(0);
  v19 = *(*(v78 - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v76 = v61;
  v22 = type metadata accessor for MLBoostedTreeRegressor(0);
  v23 = *(v22 + 36);
  *(v3 + v23 + 16) = 0;
  v63 = v23;
  *(v3 + v23) = 0;
  v77 = v22;
  v24 = *(v22 + 40);
  v68 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v25 = swift_allocError(&type metadata for MLCreateError, v68, 0, 0);
  *v26 = 0xD0000000000000C0;
  *(v26 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v26 + 16) = 0;
  *(v26 + 32) = 0;
  *(v26 + 48) = 0;
  *(v3 + v24) = v25;
  *(v3 + v24 + 8) = 0;
  v75 = v3;
  v62 = v24;
  *(v3 + v24 + 16) = 1;
  v27 = v81;
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
      JUMPOUT(0x1D7CBCLL);
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)(v28, v29, 0x676E696E69617274, 0xE800000000000000, 0);
  v29;
  if (v30)
  {
LABEL_9:
    v31 = v79;
    BoostedTreeConfiguration.init()();
    v32 = v76;
    *v76 = 0;
    v32[1] = 0xE000000000000000;
    v32[2] = _swiftEmptyArrayStorage;
    v32[3] = _swiftEmptyArrayStorage;
    v32[4] = 0xD000000000000013;
    v32[5] = "raining samples." + 0x8000000000000000;
    v33 = v67;
    v34 = v31;
    v35 = v65;
    v36 = v66;
    (*(v66 + 16))(v67, v34, v65);
    v37 = *(v78 + 28);
    BaseTreeRegressor.init(configuration:)(v33);
    (*(v36 + 8))(v79, v35);
    v38 = lazy protocol witness table accessor for type TreeRegressor and conformance TreeRegressor();
    v39 = v80;
    v40 = v81;
    v41 = v64;
    UpdatableSupervisedTabularEstimator.readWithOptimizer(from:)(v81, v78, v38);
    if (!v41)
    {
      v44 = v69;
      outlined init with copy of MLTrainingSessionParameters(v39, v69, type metadata accessor for TreeRegressorModel);
      v45 = *(v71 + 80);
      v46 = ~*(v71 + 80) & (v45 + 16);
      v47 = swift_allocObject(&unk_393060, v46 + v70, v45 | 7);
      outlined init with take of MLClassifierMetrics(v44, v47 + v46, type metadata accessor for TreeRegressorModel);
      specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLBoostedTreeRegressor.init(checkpoint:), v47);
      v49 = v48;

      v51 = v75;
      *(v75 + v77[5]) = v49;
      outlined init with copy of MLTrainingSessionParameters(v80, v51, type metadata accessor for TreeRegressorModel);
      v52 = v72;
      *v72 = 0;
      *(v52 + 16) = 256;
      v78 = 0;
      v53 = v73;
      swift_storeEnumTagMultiPayload(v52, v73, 0);
      v54 = v77[8];
      *(v51 + v54 + 16) = 0;
      *(v51 + v54) = 0;
      *(v51 + v54 + 32) = 6;
      v55 = _mm_loadh_ps(&qword_33D880);
      *(v51 + v54 + 40) = 10;
      *(v51 + v54 + 48) = v55;
      *(v51 + v54 + 64) = 42;
      *(v51 + v54 + 72) = 0x3FD3333333333333;
      *(v51 + v54 + 80) = 0;
      v79 = (v51 + v54);
      *(v51 + v54 + 88) = 1;
      *(v51 + v54 + 96) = xmmword_343970;
      v56 = v74;
      outlined init with copy of MLTrainingSessionParameters(v52, v74, type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData);
      v61[3] = v53;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v61);
      outlined init with take of MLClassifierMetrics(v56, boxed_opaque_existential_0, type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData);
      outlined assign with take of Any?(v61, v79);
      outlined destroy of MLActivityClassifier.ModelParameters(v52, type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData);
      v58 = v77;
      v59 = v77[6];
      *(v51 + v59) = 0;
      *(v51 + v59 + 8) = 0xE000000000000000;
      outlined destroy of MLActivityClassifier.ModelParameters(v81, type metadata accessor for MLCheckpoint);
      outlined destroy of MLActivityClassifier.ModelParameters(v80, type metadata accessor for TreeRegressorModel);
      outlined destroy of MLActivityClassifier.ModelParameters(v76, type metadata accessor for TreeRegressor);
      result = v58[7];
      *(v51 + result) = _swiftEmptyArrayStorage;
      return result;
    }

    outlined destroy of MLActivityClassifier.ModelParameters(v40, type metadata accessor for MLCheckpoint);
    outlined destroy of MLActivityClassifier.ModelParameters(v32, type metadata accessor for TreeRegressor);
  }

  else
  {
    v42 = v68;
    swift_allocError(&type metadata for MLCreateError, v68, 0, 0);
    *v43 = 0xD000000000000041;
    *(v43 + 8) = "ssor\n\nParameters\n" + 0x8000000000000000;
    *(v43 + 16) = 0;
    *(v43 + 32) = 0;
    *(v43 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v42);
    outlined destroy of MLActivityClassifier.ModelParameters(v81, type metadata accessor for MLCheckpoint);
  }

  v50 = v75;
  outlined consume of Result<_RegressorMetrics, Error>(*(v75 + v63), *(v75 + v63 + 8), *(v75 + v63 + 16));
  return outlined consume of Result<_RegressorMetrics, Error>(*(v50 + v62), *(v50 + v62 + 8), *(v50 + v62 + 16));
}

void *static MLBoostedTreeRegressor.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  v13 = static MLBoostedTreeRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(&v19, v25, v24, v23, v22, v21);
  v14 = v7;
  if (v6)
  {
    return (*(v8 + 8))(&v19, v7);
  }

  v16 = v13;
  (*(v8 + 8))(&v19, v14);
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLBoostedTreeRegressor>);
  v18 = swift_allocObject(v17, *(v17 + 48), *(v17 + 52));
  return specialized MLJob.init(_:)(v18, v16);
}

uint64_t static MLBoostedTreeRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  v12 = static MLBoostedTreeRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(&v14, a2, v19, v18, v17, v16);
  (*(v20 + 8))(&v14, v7);
  return v12;
}

void *static MLBoostedTreeRegressor.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLBoostedTreeRegressor>);
  v2 = swift_allocObject(v1, *(v1 + 48), *(v1 + 52));

  return specialized MLJob.init(_:)(v2, a1);
}

void *static MLBoostedTreeRegressor.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(void (*a1)(uint64_t *, uint64_t, uint64_t), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = static MLBoostedTreeRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(a1, a2, a3, a4, a5, a6);
  if (!v6)
  {
    v8 = result;
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLBoostedTreeRegressor>);
    v10 = swift_allocObject(v9, *(v9 + 48), *(v9 + 52));
    return specialized MLJob.init(_:)(v10, v8);
  }

  return result;
}

uint64_t static MLBoostedTreeRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(void (*a1)(uint64_t *, uint64_t, uint64_t), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  v15 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(0);
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
  MLBoostedTreeRegressor.ModelParameters.ValidationData.generateDataFrames(trainingData:)(v27, v26, v68);
  outlined destroy of MLActivityClassifier.ModelParameters(&v44, type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData);
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
    outlined init with copy of MLBoostedTreeRegressor.ModelParameters(v63, &v44);
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
    outlined destroy of MLBoostedTreeRegressor.ModelParameters(&v44);
    v35 = v60;
    outlined init with copy of MLTrainingSessionParameters(v66, v60, type metadata accessor for MLTrainingSessionParameters);
    v27 = type metadata accessor for TreeRegressorTrainingSessionDelegate(0);
    swift_allocObject(v27, *(v27 + 48), *(v27 + 52));
    v36 = v68;
    v37 = TreeRegressorTrainingSessionDelegate.init(trainingData:validationData:targetColumn:featureColumns:configuration:sessionParameters:)(v65, v70, v59, v33, v64, v34, v35);
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
      v46 = &protocol witness table for TreeRegressorTrainingSessionDelegate;
      *&v44 = v39;
      v41 = v62;
      outlined init with copy of MLTrainingSessionParameters(v66, v62, type metadata accessor for MLTrainingSessionParameters);
      v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeRegressor>);
      swift_allocObject(v42, *(v42 + 48), *(v42 + 52));

      v27 = specialized MLTrainingSession.init(delegate:parameters:modelType:)(&v44, v41, 4);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v67, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    }
  }

  return v27;
}

uint64_t static MLBoostedTreeRegressor.restoreTrainingSession(sessionParameters:)(uint64_t a1)
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
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeRegressor>);
    swift_allocObject(v10, *(v10 + 48), *(v10 + 52));
    return specialized MLTrainingSession.init(delegate:parameters:modelType:)(v11, v9, 4);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static MLBoostedTreeRegressor.resume(_:)(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v22 = a5;
  v23 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLBoostedTreeRegressor, Error>);
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
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v19, &demangling cache variable for type metadata for Result<MLBoostedTreeRegressor, Error>);
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
    v18 = swift_allocObject(&unk_393098, 56, 7);
    *(v18 + 16) = 0;
    *(v18 + 32) = v16;
    *(v18 + 40) = v23;
    *(v18 + 48) = v22;

    _sScTss5NeverORs_rlE8priority9operationScTyxABGScPSg_xyYaYAcntcfCyt_Tt1g5(&v19, &async function pointer to partial apply for closure #1 in static MLBoostedTreeRegressor.handleResult(_:session:fulfill:), v18);
  }
}

uint64_t closure #1 in static MLBoostedTreeRegressor.handleResult(_:session:fulfill:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a6;
  v6[3] = a5;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLBoostedTreeRegressor, Error>);
  v6[5] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in static MLBoostedTreeRegressor.handleResult(_:session:fulfill:), 0, 0);
}

uint64_t closure #1 in static MLBoostedTreeRegressor.handleResult(_:session:fulfill:)()
{
  v1 = v0[2];

  v2 = swift_task_alloc(80);
  v0[6] = v2;
  *v2 = v0;
  v2[1] = closure #1 in static MLBoostedTreeRegressor.handleResult(_:session:fulfill:);
  return ((&_ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC22MLBoostedTreeRegressorV_Tt1g503_s8b4ML22fgh80V12handleResult33_53F1D2839F479D9B4239C31BB67470FBLL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gh8TrainingZ8DelegateCTf1nc_nTu + _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC22MLBoostedTreeRegressorV_Tt1g503_s8b4ML22fgh80V12handleResult33_53F1D2839F479D9B4239C31BB67470FBLL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gh8TrainingZ8DelegateCTf1nc_nTu))(v0[5], v0[2]);
}

{
  v2 = *v0;
  *(*v0 + 48);
  return swift_task_switch(closure #1 in static MLBoostedTreeRegressor.handleResult(_:session:fulfill:), 0, 0);
}

{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  (*(v0 + 24))(v2);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v2, &demangling cache variable for type metadata for Result<MLBoostedTreeRegressor, Error>);
  v2;
  return (*(v0 + 8))();
}

uint64_t MLBoostedTreeRegressor.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v2[37] = a2;
  v2[36] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TreeRegressorModel?);
  v2[38] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLBoostedTreeRegressor(0);
  v2[39] = v4;
  v2[40] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
  v2[41] = swift_task_alloc((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BoostedTreeConfiguration(0);
  v2[42] = v6;
  v7 = *(v6 - 8);
  v2[43] = v7;
  v2[44] = swift_task_alloc((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  v2[45] = swift_task_alloc((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v2[46] = v9;
  v2[47] = swift_task_alloc((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLBoostedTreeRegressor.init(delegate:), 0, 0);
}

uint64_t MLBoostedTreeRegressor.init(delegate:)()
{
  v1 = v0[46];
  v2 = v0[45];
  v3 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters + v0[37];
  swift_beginAccess(v3, v0 + 30, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v3, v2, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    BUG();
  }

  v4 = v0[47];
  v5 = v0[46];
  v6 = v0[44];
  v18 = v0[43];
  v15 = v0[42];
  v16 = v0[41];
  v7 = v0[37];
  v14 = v0[38];
  outlined init with take of MLClassifierMetrics(v0[45], v4, type metadata accessor for PersistentParametersForTreeBasedMethods);
  (*(v18 + 16))(v6, v4 + v5[8], v15);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v4 + v5[5], v16, &demangling cache variable for type metadata for DataFrame?);
  MLBoostedTreeRegressor.ModelParameters.init(configuration:validation:)(v6, v16);
  v8 = v5[6];
  v17 = *(v4 + v8);
  v19 = *(v4 + v8 + 8);
  v9 = *(v4 + v5[7]);
  v10 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_model + v7;
  swift_beginAccess(v10, v0 + 33, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, v14, &demangling cache variable for type metadata for TreeRegressorModel?);
  v11 = type metadata accessor for TreeRegressorModel(0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v11) == 1)
  {
    BUG();
  }

  outlined init with copy of MLBoostedTreeRegressor.ModelParameters((v0 + 2), (v0 + 16));
  v19;
  v9;
  v12 = swift_task_alloc(112);
  v0[48] = v12;
  *v12 = v0;
  v12[1] = MLBoostedTreeRegressor.init(delegate:);
  return MLBoostedTreeRegressor.init(_:targetColumn:featureColumns:parameters:)(v0[40], v0[38], v17, v19, v9, (v0 + 16));
}

{
  v2 = *(*v1 + 384);
  *(*v1 + 392) = v0;
  v2;
  if (v0)
  {
    v3 = MLBoostedTreeRegressor.init(delegate:);
  }

  else
  {
    v3 = MLBoostedTreeRegressor.init(delegate:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 296);
  outlined init with take of MLClassifierMetrics(*(v0 + 320), *(v0 + 288), type metadata accessor for MLBoostedTreeRegressor);
  v2 = *(v1 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics + 16);
  if (v2 == -1)
  {
    BUG();
  }

  v17 = *(v0 + 376);
  v16 = *(v0 + 312);
  v3 = *(v0 + 288);
  v4 = *(v0 + 296);
  v18 = *(v1 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics);
  v15 = *(v1 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics + 8);
  outlined copy of Result<_RegressorMetrics, Error>(v18, v15, v2);
  outlined destroy of MLBoostedTreeRegressor.ModelParameters(v0 + 16);
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
    v8 = *(v0 + 288);
    v9 = *(*(v0 + 312) + 40);
    outlined consume of Result<_RegressorMetrics, Error>(*(v8 + v9), *(v8 + v9 + 8), *(v8 + v9 + 16));
    *(v8 + v9) = v19;
    *(v8 + v9 + 8) = v6;
    *(v8 + v9 + 16) = v7 & 1;
  }

  v10 = *(v0 + 360);
  v11 = *(v0 + 352);
  v12 = *(v0 + 328);
  v20 = *(v0 + 304);
  v13 = *(v0 + 320);
  *(v0 + 376);
  v10;
  v11;
  v12;
  v13;
  v20;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 376);
  v2 = *(v0 + 360);
  v3 = *(v0 + 352);
  v9 = *(v0 + 328);
  v8 = *(v0 + 320);
  v4 = *(v0 + 296);
  v7 = *(v0 + 304);

  outlined destroy of MLBoostedTreeRegressor.ModelParameters(v0 + 16);
  outlined destroy of MLActivityClassifier.ModelParameters(v1, type metadata accessor for PersistentParametersForTreeBasedMethods);
  v1;
  v2;
  v3;
  v9;
  v8;
  v7;
  v5 = *(v0 + 392);
  return (*(v0 + 8))();
}

uint64_t outlined copy of Result<_RegressorMetrics, Error>(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_errorRetain(a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in MLBoostedTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  v3 = type metadata accessor for TreeRegressorModel(0);
  v4 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 16));
  v5 = swift_task_alloc(48);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLBoostedTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(a1);
}

uint64_t lazy protocol witness table accessor for type TreeRegressor and conformance TreeRegressor()
{
  result = lazy protocol witness table cache variable for type TreeRegressor and conformance TreeRegressor;
  if (!lazy protocol witness table cache variable for type TreeRegressor and conformance TreeRegressor)
  {
    v1 = type metadata accessor for TreeRegressor(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for TreeRegressor, v1);
    lazy protocol witness table cache variable for type TreeRegressor and conformance TreeRegressor = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TreeRegressor and conformance TreeRegressor;
  if (!lazy protocol witness table cache variable for type TreeRegressor and conformance TreeRegressor)
  {
    v1 = type metadata accessor for TreeRegressor(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for TreeRegressor, v1);
    lazy protocol witness table cache variable for type TreeRegressor and conformance TreeRegressor = result;
  }

  return result;
}

uint64_t partial apply for closure #1 in MLBoostedTreeRegressor.init(checkpoint:)(uint64_t a1)
{
  v3 = type metadata accessor for TreeRegressorModel(0);
  v4 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 16));
  v5 = swift_task_alloc(48);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLRandomForestRegressor.init(checkpoint:)(a1);
}

id sub_1D8F3E()
{
  v1 = v0;
  result = MLBoostedTreeRegressor.model.getter();
  *v1 = result;
  return result;
}

void *initializeBufferWithCopyOfBuffer for MLBoostedTreeRegressor(void *a1, void *a2, int *a3)
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

    v10 = *(type metadata accessor for TreeRegressorModel(0) + 24);
    v11 = type metadata accessor for BaseTreeRegressorModel(0);
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
    *(v17 + 4) = *(v18 + 4);
    *(v17 + 10) = *(v18 + 10);
    v17[88] = v18[88];
    *(v17 + 6) = *(v18 + 6);
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

void *initializeWithCopy for MLBoostedTreeRegressor(void *a1, void *a2, int *a3)
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

  v8 = *(type metadata accessor for TreeRegressorModel(0) + 24);
  v9 = type metadata accessor for BaseTreeRegressorModel(0);
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
  *(v15 + 4) = *(v16 + 4);
  *(v15 + 10) = *(v16 + 10);
  v15[88] = v16[88];
  *(v15 + 6) = *(v16 + 6);
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

void *assignWithCopy for MLBoostedTreeRegressor(void *a1, void *a2, int *a3)
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
  *(v25 + 8) = *(v26 + 8);
  *(v25 + 9) = *(v26 + 9);
  *(v25 + 10) = *(v26 + 10);
  v25[88] = v26[88];
  *(v25 + 12) = *(v26 + 12);
  *(v25 + 13) = *(v26 + 13);
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

void *assignWithTake for MLBoostedTreeRegressor(void *a1, void *a2, int *a3)
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
  v21 = a1 + v20;
  if (*(a1 + v20 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + v20));
  }

  v22 = *(a2 + v20);
  *(v21 + 1) = *(a2 + v20 + 16);
  *v21 = v22;
  *(a1 + v20 + 32) = *(a2 + v20 + 32);
  *(a1 + v20 + 48) = *(a2 + v20 + 48);
  *(a1 + v20 + 64) = *(a2 + v20 + 64);
  *(a1 + v20 + 72) = *(a2 + v20 + 72);
  v21[88] = *(a2 + v20 + 88);
  *(v21 + 10) = *(a2 + v20 + 80);
  *(a1 + v20 + 96) = *(a2 + v20 + 96);
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

uint64_t sub_1D985D(uint64_t a1, unsigned int a2, uint64_t a3)
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

uint64_t sub_1D98D7(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
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

uint64_t type metadata completion function for MLBoostedTreeRegressor(uint64_t a1)
{
  result = type metadata accessor for TreeRegressorModel(319);
  if (v2 <= 0x3F)
  {
    v3[0] = *(result - 8) + 64;
    v3[1] = &value witness table for Builtin.UnknownObject + 64;
    v3[2] = &unk_3451E8;
    v3[3] = &value witness table for Builtin.BridgeObject + 64;
    v3[4] = &unk_345200;
    v3[5] = &unk_345218;
    v3[6] = &unk_345218;
    swift_initStructMetadata(a1, 256, 7, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.merge<A>(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*a4);
  v7 = *a4;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a1, a2, v8, isUniquelyReferenced_nonNull_native, &v7);
  result = v7;
  *a4 = v7;
  return result;
}

{
  v8 = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*a4);
  v7 = *a4;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a1, a2, v8, isUniquelyReferenced_nonNull_native, &v7);
  result = v7;
  *a4 = v7;
  return result;
}

uint64_t sub_1D9C3B()
{
  swift_unknownObjectRelease(v0[2]);
  v0[4];
  v0[6];
  return swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for closure #1 in static MLBoostedTreeRegressor.handleResult(_:session:fulfill:)(uint64_t a1)
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
  return closure #1 in static MLBoostedTreeRegressor.handleResult(_:session:fulfill:)(a1, v3, v4, v8, v9, v5);
}

uint64_t LogisticRegressionClassifierTrainingSessionDelegate.init(sessionParameters:)(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters;
  v3 = type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters(0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  DataFrame.init()();
  v4 = v1 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationData;
  v5 = type metadata accessor for DataFrame(0);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = v1 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier;
  v7 = type metadata accessor for MLLogisticRegressionClassifier.Classifier(0);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = v1 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_model;
  v9 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = v1 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingMetrics;
  v11 = type metadata accessor for MLClassifierMetrics(0);
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationMetrics, 1, 1, v11);
  outlined init with take of MLClassifierMetrics(a1, v1 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  return v1;
}

char *LogisticRegressionClassifierTrainingSessionDelegate.init(trainingData:validationData:targetColumn:featureColumns:modelParameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5, uint64_t a6, uint64_t a7)
{
  v86 = v7;
  v9 = v8;
  v81 = a6;
  context = a5;
  _ = a4;
  v74._countAndFlagsBits = a3;
  v84 = a2;
  v82 = a1;
  v70 = *v8;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v71 = &v67;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v76 = &v67;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v78 = &v67;
  v18 = type metadata accessor for DataFrame(0);
  v85 = *(v18 - 8);
  v19 = *(v85 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v75 = &v67;
  v22 = v8 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters;
  v23 = type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters(0);
  v72 = v22;
  v73 = v23;
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v23);
  DataFrame.init()();
  v83 = v18;
  __swift_storeEnumTagSinglePayload(v9 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationData, 1, 1, v18);
  v24 = v9 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier;
  v25 = type metadata accessor for MLLogisticRegressionClassifier.Classifier(0);
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v25);
  v26 = v9 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_model;
  v27 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
  __swift_storeEnumTagSinglePayload(v26, 1, 1, v27);
  v28 = v9 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingMetrics;
  v29 = type metadata accessor for MLClassifierMetrics(0);
  __swift_storeEnumTagSinglePayload(v28, 1, 1, v29);
  v74._object = v9;
  v30 = v9 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationMetrics;
  v31 = context;
  v32 = _;
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v29);
  countAndFlagsBits = v74._countAndFlagsBits;
  v34 = v86;
  v35 = static _FeatureUtilities.selectFeaturesFromTrainingData(trainingData:targetColumn:featureColumns:)(v82, v74._countAndFlagsBits, v32, v31);
  if (v34)
  {
    v32;
    v31;
    outlined destroy of MLActivityClassifier.ModelParameters(a7, type metadata accessor for MLTrainingSessionParameters);
    outlined destroy of MLLogisticRegressionClassifier.ModelParameters(v81);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v84, &demangling cache variable for type metadata for DataFrame?);
    v36 = *(v85 + 8);
    v37 = v83;
    v36(v82, v83);
    goto LABEL_4;
  }

  v79 = v35;
  v39 = v31;
  v40 = v75;
  v86 = 0;
  v39;
  v41 = v84;
  v42 = v78;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v84, v78, &demangling cache variable for type metadata for DataFrame?);
  v43 = v42;
  v44 = v83;
  if (__swift_getEnumTagSinglePayload(v43, 1, v83) == 1)
  {
    v45 = v44;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v78, &demangling cache variable for type metadata for DataFrame?);
    v46 = v85;
LABEL_7:
    v47 = v71;
    (*(v46 + 16))(v71, v82, v45);
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v41, v76, &demangling cache variable for type metadata for DataFrame?);
    v48 = v73;
    outlined init with copy of MLLogisticRegressionClassifier.ModelParameters(v81, v47 + v73[8]);
    v49 = v47 + v48[5];
    v50 = v83;
    __swift_storeEnumTagSinglePayload(v49, 1, 1, v83);
    outlined assign with take of MLClassifierMetrics?(v76, v49, &demangling cache variable for type metadata for DataFrame?);
    v51 = v48[6];
    *(v47 + v51) = v74._countAndFlagsBits;
    *(v47 + v51 + 8) = _;
    *(v47 + v48[7]) = v79;
    outlined destroy of MLLogisticRegressionClassifier.ModelParameters(v81);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v84, &demangling cache variable for type metadata for DataFrame?);
    (*(v85 + 8))(v82, v50);
    __swift_storeEnumTagSinglePayload(v47, 0, 1, v48);
    v52 = v72;
    swift_beginAccess(v72, v69, 33, 0);
    outlined assign with take of MLClassifierMetrics?(v47, v52, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?);
    swift_endAccess(v69);
    object = v74._object;
    outlined init with take of MLClassifierMetrics(a7, v74._object + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
    return object;
  }

  (*(v85 + 32))(v40, v78, v44);
  v54 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v54, v68);
  inited[2] = 1;
  inited[3] = 2;
  inited[4] = countAndFlagsBits;
  v56 = _;
  inited[5] = _;
  v56;
  context = "Algorithm type: " + 0x8000000000000000;
  v57 = v75;
  DataFrame.validateContainsColumns(_:context:)(inited, __PAIR128__(("Algorithm type: " + 0x8000000000000000), 0xD00000000000001CLL));
  v86 = v58;
  if (v58)
  {
    swift_setDeallocating(inited);
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    _;
    v79;
    outlined destroy of MLActivityClassifier.ModelParameters(a7, type metadata accessor for MLTrainingSessionParameters);
    outlined destroy of MLLogisticRegressionClassifier.ModelParameters(v81);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v84, &demangling cache variable for type metadata for DataFrame?);
    v36 = *(v85 + 8);
    v37 = v83;
    v36(v82, v83);
    v36(v57, v37);
  }

  else
  {
    swift_setDeallocating(inited);
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    v59 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any.Type>);
    v60 = swift_allocObject(v59, 48, 7);
    v60[2] = 2;
    v60[3] = 4;
    v60[4] = &type metadata for String;
    v60[5] = &type metadata for Int;
    v61._countAndFlagsBits = countAndFlagsBits;
    v62 = v60;
    v63 = _;
    v61._object = _;
    DataFrame.validateColumnTypes(_:_:context:)(v61, v60, __PAIR128__(context, 0xD00000000000001CLL));
    if (!v64)
    {
      v86 = 0;
      v65 = v57;
      v45 = v83;
      v66 = v85;
      (*(v85 + 8))(v65);
      v62;
      v46 = v66;
      v41 = v84;
      goto LABEL_7;
    }

    v63;
    v79;
    v62;
    outlined destroy of MLActivityClassifier.ModelParameters(a7, type metadata accessor for MLTrainingSessionParameters);
    outlined destroy of MLLogisticRegressionClassifier.ModelParameters(v81);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v84, &demangling cache variable for type metadata for DataFrame?);
    v36 = *(v85 + 8);
    v37 = v83;
    v36(v82, v83);
    v36(v57, v37);
  }

LABEL_4:
  object = v74._object;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v74._object + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?);
  v36(&object[OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingData], v37);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&object[OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationData], &demangling cache variable for type metadata for DataFrame?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&object[OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier], &demangling cache variable for type metadata for MLLogisticRegressionClassifier.Classifier?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&object[OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_model], &demangling cache variable for type metadata for MLLogisticRegressionClassifier.Model?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&object[OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingMetrics], &demangling cache variable for type metadata for MLClassifierMetrics?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&object[OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationMetrics], &demangling cache variable for type metadata for MLClassifierMetrics?);
  swift_deallocPartialClassInstance(object, v70, *(*object + 48), *(*object + 52));
  return object;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> LogisticRegressionClassifierTrainingSessionDelegate.setUp()()
{
  v58 = v0;
  v72 = v1;
  v65 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
  v64 = *(v65 - 8);
  v2 = *(v64 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v66 = v55;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLogisticRegressionClassifier.Model?) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v63 = v55;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyColumn?) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v73 = v55;
  v60 = type metadata accessor for AnyColumn(0);
  v11 = *(*(v60 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v69 = v55;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLogisticRegressionClassifier.Classifier?) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v68 = v55;
  v17 = alloca(v14);
  v18 = alloca(v14);
  v59 = v55;
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?) - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v22 = type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters(0);
  v23 = *(*(v22 - 8) + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v26 = v72 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v72 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters, v56, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v26, v55, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?);
  v70 = v22;
  if (__swift_getEnumTagSinglePayload(v55, 1, v22) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v55, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?);
    BUG();
  }

  outlined init with take of MLClassifierMetrics(v55, v55, type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters);
  v27 = v72 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingData;
  v62 = v72 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingData;
  swift_beginAccess(v72 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingData, v57, 33, 0);
  v61 = type metadata accessor for DataFrame(0);
  (*(*(v61 - 8) + 24))(v27, v55, v61);
  swift_endAccess(v57);
  v28 = v70;
  v29 = &v55[*(v70 + 20)];
  v30 = v72 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationData;
  swift_beginAccess(v72 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationData, v57, 33, 0);
  outlined assign with copy of DataFrame?(v29, v30);
  swift_endAccess(v57);
  v31 = *(v28 + 24);
  v32 = *&v55[v31];
  v67 = v55;
  v33 = *&v55[v31 + 8];
  swift_beginAccess(v62, v57, 32, 0);
  v71 = v32;
  DataFrame.subscript.getter(v32, v33);
  swift_endAccess(v57);
  swift_beginAccess(v30, v57, 32, 0);
  if (__swift_getEnumTagSinglePayload(v30, 1, v61))
  {
    swift_endAccess(v57);
    v34 = 1;
    v35 = v73;
  }

  else
  {
    v35 = v73;
    DataFrame.subscript.getter(v71, v33);
    swift_endAccess(v57);
    v34 = 0;
  }

  __swift_storeEnumTagSinglePayload(v35, v34, 1, v60);
  v36 = v67;
  v37 = *&v67[*(v70 + 28)];
  outlined init with copy of MLLogisticRegressionClassifier.ModelParameters(&v67[*(v70 + 32)], v57);
  v33;
  v37;
  v38 = v59;
  v39 = v58;
  MLLogisticRegressionClassifier.Classifier.init(trainingLabelsColumn:validationLabelsColumn:annotationColumnName:featureColumnNames:parameters:)(v69, v73, v71, v33, v37, v57);
  v40 = v72;
  if (v39)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v36, type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters);
  }

  else
  {
    v73 = 0;
    v41 = type metadata accessor for MLLogisticRegressionClassifier.Classifier(0);
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v41);
    v42 = v38;
    v43 = v40 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier;
    swift_beginAccess(v40 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier, v57, 33, 0);
    outlined assign with take of MLClassifierMetrics?(v42, v43, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.Classifier?);
    swift_endAccess(v57);
    v44 = v43;
    v45 = v68;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v44, v68, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.Classifier?);
    if (__swift_getEnumTagSinglePayload(v45, 1, v41) == 1)
    {
      BUG();
    }

    v71 = *v45;
    v46 = *(v45 + 8);
    v70 = *(v45 + 104);
    LOBYTE(v69) = *(v45 + 112);
    v47 = *(v70 + 16);
    v48 = *(v41 + 36) + v45;
    v46;
    v49 = v66;
    BaseLogisticRegressionClassifier.makeTransformer(classCount:)(v47);
    v50 = v63;
    *v63 = v71;
    *(v50 + 8) = v46;
    v51 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
    *(v50 + 32) = 0;
    *(v50 + 16) = 0;
    (*(v64 + 32))(v50 + *(v51 + 24), v49, v65);
    v52 = *(v51 + 28);
    v53 = v70;
    *(v50 + v52) = v70;
    *(v50 + v52 + 8) = v69;
    v53;
    outlined destroy of MLActivityClassifier.ModelParameters(v67, type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters);
    outlined destroy of MLActivityClassifier.ModelParameters(v68, type metadata accessor for MLLogisticRegressionClassifier.Classifier);
    __swift_storeEnumTagSinglePayload(v50, 0, 1, v51);
    v54 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_model + v72;
    swift_beginAccess(OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_model + v72, v57, 33, 0);
    outlined assign with take of MLClassifierMetrics?(v50, v54, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.Model?);
    swift_endAccess(v57);
  }
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> LogisticRegressionClassifierTrainingSessionDelegate.resume(from:)(Swift::OpaquePointer from)
{
  v83 = v1;
  v89 = v2;
  rawValue = from._rawValue;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLogisticRegressionClassifier.Model?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v82 = v74;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLogisticRegressionClassifier.Classifier?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v78 = v74;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v84 = v74;
  v79 = type metadata accessor for AnyColumn(0);
  v80 = *(v79 - 8);
  v11 = *(v80 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v81 = v74;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v85 = v74;
  v90 = type metadata accessor for MLCheckpoint(0);
  v17 = *(*(v90 - 1) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v86 = v74;
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?) - 8) + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v23 = type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters(0);
  v24 = *(*(v23 - 8) + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v27 = v89 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v89 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters, v75, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v27, v74, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?);
  v88 = v23;
  if (__swift_getEnumTagSinglePayload(v74, 1, v23) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v74, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?);
    BUG();
  }

  outlined init with take of MLClassifierMetrics(v74, v74, type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters);
  v28 = v85;
  specialized BidirectionalCollection.last.getter(rawValue);
  if (__swift_getEnumTagSinglePayload(v28, 1, v90) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v28, &demangling cache variable for type metadata for MLCheckpoint?);
    v29 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v29, 0, 0);
    *v30 = 0xD00000000000001DLL;
    *(v30 + 8) = "reated." + 0x8000000000000000;
    *(v30 + 16) = 0;
    *(v30 + 32) = 0;
    *(v30 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v29);
LABEL_15:
    outlined destroy of MLActivityClassifier.ModelParameters(v74, type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters);
    return;
  }

  v31 = 0xEB0000000064657ALL;
  v32 = v28;
  v33 = v86;
  outlined init with take of MLClassifierMetrics(v32, v86, type metadata accessor for MLCheckpoint);
  switch(*(v33 + *(v90 + 5)))
  {
    case 0:
      v35 = *(v33 + *(v90 + 5));
      v34 = 0x696C616974696E69;
      break;
    case 1:
      v34 = 0x6974636172747865;
      goto LABEL_10;
    case 2:
      0xE800000000000000;
      goto LABEL_12;
    case 3:
      v34 = 0x697461756C617665;
LABEL_10:
      v31 = 0xEA0000000000676ELL;
      break;
    case 4:
      v31 = 0xEB00000000676E69;
      v34 = 0x636E657265666E69;
      break;
  }

  v36 = *(v33 + *(v90 + 5));
  v37 = _stringCompareWithSmolCheck(_:_:expecting:)(v34, v31, 0x676E696E69617274, 0xE800000000000000, 0);
  v31;
  if ((v37 & 1) == 0)
  {
    v58 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v58, 0, 0);
    *v59 = 0xD000000000000027;
    *(v59 + 8) = "ingSessionDelegate" + 0x8000000000000000;
    *(v59 + 16) = 0;
    *(v59 + 32) = 0;
    *(v59 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v58);
    outlined destroy of MLActivityClassifier.ModelParameters(v86, type metadata accessor for MLCheckpoint);
    goto LABEL_15;
  }

LABEL_12:
  v38 = v89 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingData;
  v85 = (v89 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingData);
  swift_beginAccess(v89 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingData, v77, 33, 0);
  v39 = type metadata accessor for DataFrame(0);
  (*(*(v39 - 8) + 24))(v38, v74, v39);
  swift_endAccess(v77);
  v40 = v88;
  v41 = &v74[v88[5]];
  v42 = v89 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationData;
  swift_beginAccess(v89 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationData, v77, 33, 0);
  outlined assign with copy of DataFrame?(v41, v42);
  swift_endAccess(v77);
  v43 = v40[6];
  v44 = *&v74[v43];
  v90 = v74;
  v45 = *&v74[v43 + 8];
  swift_beginAccess(v85, v77, 32, 0);
  v46 = v81;
  rawValue = v44;
  v47 = v44;
  v48 = v45;
  DataFrame.subscript.getter(v47, v45);
  swift_endAccess(v77);
  v49 = AnyColumn.wrappedElementType.getter();
  (*(v80 + 8))(v46, v79);
  if (swift_dynamicCastMetatype(v49, &type metadata for String))
  {
    v50 = *&v90[v88[7]];
    v48;
    v50;
    v51 = v48;
    v52 = v84;
    MLLogisticRegressionClassifier.Classifier.init(labels:annotationColumnName:featureColumnNames:)(_swiftEmptyArrayStorage, 1, rawValue, v51, v50);
    v53 = type metadata accessor for MLLogisticRegressionClassifier.Classifier(0);
    __swift_storeEnumTagSinglePayload(v52, 0, 1, v53);
    v54 = v89;
    v55 = v89 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier;
    swift_beginAccess(v89 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier, v77, 33, 0);
    v56 = v52;
    v57 = v53;
  }

  else
  {
    v60 = rawValue;
    v61 = v90;
    if (!swift_dynamicCastMetatype(v49, &type metadata for Int))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001ELL, "essionDelegate.swift" + 0x8000000000000000, "CreateML/_LogisticRegressionClassifierTrainingSessionDelegate.swift", 67, 2, 109, 0);
      BUG();
    }

    v62 = *(v61 + v88[7]);
    v48;
    v62;
    v63 = v84;
    MLLogisticRegressionClassifier.Classifier.init(labels:annotationColumnName:featureColumnNames:)(_swiftEmptyArrayStorage, 0, v60, v48, v62);
    v57 = type metadata accessor for MLLogisticRegressionClassifier.Classifier(0);
    v64 = v63;
    __swift_storeEnumTagSinglePayload(v63, 0, 1, v57);
    v54 = v89;
    v55 = v89 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier;
    swift_beginAccess(v89 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier, v77, 33, 0);
    v56 = v64;
  }

  outlined assign with take of MLClassifierMetrics?(v56, v55, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.Classifier?);
  swift_endAccess(v77);
  outlined init with copy of MLLogisticRegressionClassifier.ModelParameters(&v90[v88[8]], v77);
  v65 = v54 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier;
  swift_beginAccess(v54 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier, v76, 33, 0);
  type metadata accessor for MLLogisticRegressionClassifier.Classifier(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v65, 1, v57);
  v67 = v78;
  if (EnumTagSinglePayload == 1)
  {
    BUG();
  }

  outlined assign with take of MLLogisticRegressionClassifier.ModelParameters(v77, v65 + 24);
  swift_endAccess(v76);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v65, v67, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.Classifier?);
  if (__swift_getEnumTagSinglePayload(v67, 1, v57) == 1)
  {
    BUG();
  }

  v68 = lazy protocol witness table accessor for type MLLogisticRegressionClassifier.Classifier and conformance MLLogisticRegressionClassifier.Classifier();
  v69 = v82;
  v70 = v86;
  v71 = v83;
  SupervisedTabularEstimator.read(from:)(v86, v57, v68);
  outlined destroy of MLActivityClassifier.ModelParameters(v70, type metadata accessor for MLCheckpoint);
  outlined destroy of MLActivityClassifier.ModelParameters(v90, type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v67, type metadata accessor for MLLogisticRegressionClassifier.Classifier);
  if (!v71)
  {
    v72 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v72);
    v73 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_model + v89;
    swift_beginAccess(OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_model + v89, v77, 33, 0);
    outlined assign with take of MLClassifierMetrics?(v69, v73, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.Model?);
    swift_endAccess(v77);
  }
}

uint64_t LogisticRegressionClassifierTrainingSessionDelegate.train(from:)(uint64_t a1)
{
  v2[15] = v1;
  v2[14] = a1;
  v3 = type metadata accessor for MetricsKey(0);
  v2[16] = v3;
  v4 = *(v3 - 8);
  v2[17] = v4;
  v2[18] = swift_task_alloc((*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DataFrame(0);
  v2[19] = v5;
  v6 = *(v5 - 8);
  v2[20] = v6;
  v2[21] = swift_task_alloc((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLogisticRegressionClassifier.Classifier?);
  v2[22] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?);
  v2[23] = swift_task_alloc((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(LogisticRegressionClassifierTrainingSessionDelegate.train(from:), 0, 0);
}

uint64_t LogisticRegressionClassifierTrainingSessionDelegate.train(from:)()
{
  v1 = v0[23];
  v2 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters + v0[15];
  swift_beginAccess(v2, v0 + 2, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v2, v1, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?);
  v3 = type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters(0);
  LODWORD(v2) = __swift_getEnumTagSinglePayload(v1, 1, v3);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?);
  if (v2 == 1)
  {
    BUG();
  }

  v4 = v0[14];
  v5 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_sessionParameters + v0[15];
  v6 = type metadata accessor for MLTrainingSessionParameters(0);
  v7 = *(*(v6 + 20) + v5);
  if (__OFADD__(v7, v4))
  {
    BUG();
  }

  v8 = *(v5 + *(v6 + 28));
  v9 = v8 - v4;
  if (__OFSUB__(v8, v4))
  {
    BUG();
  }

  v10 = v0;
  v47 = v8;
  v50 = v7 + v4;
  v11 = v0 + 5;
  v12 = v0 + 8;
  v57 = v10 + 11;
  if (v7 < v9)
  {
    v9 = v7;
  }

  v13 = type metadata accessor for EventCollector();
  swift_allocObject(v13, 32, 7);
  v14 = EventCollector.init()();
  if (v9 < 0)
  {
    BUG();
  }

  v51 = v14;
  v49 = v9;
  v56 = v10;
  if (v9)
  {
    v15 = v10[15];
    v16 = v10[20];
    v17 = v12;
    v18 = v15 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingData;
    v45 = (OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_model + v15);
    v54 = v15 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier;
    swift_beginAccess(v15 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier, v11, 0, 0);
    v46 = v18;
    swift_beginAccess(v18, v17, 0, 0);
    v19 = v49;
    v48 = v16;
    do
    {
      v52 = v19;
      v20 = v10[22];
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v54, v20, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.Classifier?);
      v21 = type metadata accessor for MLLogisticRegressionClassifier.Classifier(0);
      if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
      {
        BUG();
      }

      (*(v16 + 16))(v10[21], v46, v10[19]);
      swift_beginAccess(v45, v57, 33, 0);
      v22 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
      if (__swift_getEnumTagSinglePayload(v45, 1, v22) == 1)
      {
        BUG();
      }

      v23 = v10[21];
      v24 = v10[22];

      MLLogisticRegressionClassifier.Classifier.update(_:with:eventHandler:)(v45, v23, partial apply for closure #1 in LogisticRegressionClassifierTrainingSessionDelegate.train(from:), v51);
      v25 = v10[22];
      v26 = v10[19];
      v27 = v56[21];
      swift_endAccess(v57);

      v28 = v27;
      v10 = v56;
      v16 = v48;
      (*(v48 + 8))(v28, v26);
      outlined destroy of MLActivityClassifier.ModelParameters(v25, type metadata accessor for MLLogisticRegressionClassifier.Classifier);
      --v19;
    }

    while (v52 != 1);
  }

  v29 = v10[18];
  v58 = v10[16];
  v30 = v10[17];
  static MetricsKey.trainingAccuracy.getter();
  ML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5 = _s8CreateML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5();
  v33 = v32;
  v34 = *(v30 + 8);
  v35 = v29;
  v34(v29, v58);
  if ((v33 & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
    v35 = 3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(3, isUniquelyReferenced_nonNull_native, *&ML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5);
  }

  v37 = v56[16];
  v38 = v56[18];
  static MetricsKey.trainingLoss.getter(v35);
  v59 = _s8CreateML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5();
  v40 = v39;
  v34(v38, v37);
  if ((v40 & 1) == 0)
  {
    v41 = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0, v41, *&v59);
  }

  v42 = v56[23];
  v43 = v56[22];
  v53 = v56[18];
  v55 = v56[21];
  v60 = specialized _dictionaryUpCast<A, B, C, D>(_:)(_swiftEmptyDictionarySingleton);

  _swiftEmptyDictionarySingleton;
  v42;
  v43;
  v55;
  v53;
  return (v56[1])(v49, v60, v50 >= v47);
}

uint64_t LogisticRegressionClassifierTrainingSessionDelegate.evaluate(from:)()
{
  v1[26] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
  v1[27] = swift_task_alloc((*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = (*(*(type metadata accessor for AnyColumn(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1[28] = swift_task_alloc(v3);
  v1[29] = swift_task_alloc(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLClassifierMetrics?);
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
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLogisticRegressionClassifier.Model?);
  v1[37] = swift_task_alloc((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
  v1[38] = v9;
  v1[39] = swift_task_alloc((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(LogisticRegressionClassifierTrainingSessionDelegate.evaluate(from:), 0, 0);
}

{
  v1 = *(v0 + 304);
  v2 = *(v0 + 296);
  v3 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_model + *(v0 + 208);
  swift_beginAccess(v3, v0 + 16, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v3, v2, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.Model?);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 296), &demangling cache variable for type metadata for MLLogisticRegressionClassifier.Model?);
LABEL_5:
    v59 = 0;
    goto LABEL_6;
  }

  v4 = *(v0 + 208);
  outlined init with take of MLClassifierMetrics(*(v0 + 296), *(v0 + 312), type metadata accessor for MLLogisticRegressionClassifier.Model);
  v5 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters + v4;
  swift_beginAccess(v5, v0 + 40, 0, 0);
  v6 = type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v6);
  v8 = *(v0 + 312);
  if (EnumTagSinglePayload)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 312), type metadata accessor for MLLogisticRegressionClassifier.Model);
    goto LABEL_5;
  }

  v56 = *(v0 + 288);
  v46 = *(v0 + 280);
  v60 = *(v0 + 256);
  v52 = *(v0 + 248);
  v14 = *(v6 + 24);
  v43 = *(v5 + v14);
  v15 = *(v5 + v14 + 8);
  v16 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingData + *(v0 + 208);
  swift_beginAccess(v16, v0 + 64, 0, 0);
  (*(v60 + 16))(v46, v16, v52);
  v61 = v15;
  v15;
  MLLogisticRegressionClassifier.Model.applied(to:eventHandler:)(v46, 0, 0);
  v17 = *(v0 + 288);
  v53 = *(v0 + 248);
  v36 = *(v0 + 240);
  v38 = *(v0 + 232);
  v57 = *(v0 + 224);
  v34 = *(v0 + 208);
  v40 = *(v0 + 216);
  v47 = *(*(v0 + 256) + 8);
  (v47)(*(v0 + 280));
  DataFrame.subscript.getter(v43, v61);
  swift_beginAccess(v16, v0 + 88, 32, 0);
  DataFrame.subscript.getter(v43, v61);
  swift_endAccess(v0 + 88);
  AnyClassificationMetrics.init(_:_:)(v38, v57);
  v39 = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload(v36, v39, 0);
  v58 = type metadata accessor for MLClassifierMetrics(0);
  __swift_storeEnumTagSinglePayload(v36, 0, 1, v58);
  v18 = v34 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingMetrics;
  swift_beginAccess(v34 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingMetrics, v0 + 112, 33, 0);
  outlined assign with take of MLClassifierMetrics?(v36, v18, &demangling cache variable for type metadata for MLClassifierMetrics?);
  swift_endAccess(v0 + 112);
  v19 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationData + v34;
  swift_beginAccess(OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationData + v34, v0 + 136, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, v40, &demangling cache variable for type metadata for DataFrame?);
  v20 = __swift_getEnumTagSinglePayload(v40, 1, v53);
  v21 = *(v0 + 312);
  if (v20 == 1)
  {
    v54 = v0 + 160;
    v22 = *(v0 + 288);
    v23 = *(v0 + 248);
    v44 = *(v0 + 240);
    v24 = *(v0 + 208);
    v49 = *(v0 + 216);
    v61;
    v47(v22, v23);
    outlined destroy of MLActivityClassifier.ModelParameters(v21, type metadata accessor for MLLogisticRegressionClassifier.Model);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v49, &demangling cache variable for type metadata for DataFrame?);
    v25 = v44;
    __swift_storeEnumTagSinglePayload(v44, 1, 1, v58);
  }

  else
  {
    v26 = *(v0 + 272);
    v27 = *(v0 + 264);
    (*(*(v0 + 256) + 32))(v26, *(v0 + 216), *(v0 + 248));
    MLLogisticRegressionClassifier.Model.applied(to:eventHandler:)(v26, 0, 0);
    v54 = v0 + 184;
    v41 = *(v0 + 312);
    v33 = *(v0 + 288);
    v32 = *(v0 + 272);
    v30 = *(v0 + 264);
    v35 = *(v0 + 248);
    v37 = *(v0 + 240);
    v31 = *(v0 + 232);
    v50 = *(v0 + 208);
    v28 = *(v0 + 224);
    DataFrame.subscript.getter(v43, v61);
    DataFrame.subscript.getter(v43, v61);
    v61;
    AnyClassificationMetrics.init(_:_:)(v31, v28);
    v47(v30, v35);
    v47(v32, v35);
    v47(v33, v35);
    outlined destroy of MLActivityClassifier.ModelParameters(v41, type metadata accessor for MLLogisticRegressionClassifier.Model);
    swift_storeEnumTagMultiPayload(v37, v39, 0);
    v25 = v37;
    __swift_storeEnumTagSinglePayload(v37, 0, 1, v58);
    v24 = v50;
  }

  v29 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationMetrics + v24;
  swift_beginAccess(v29, v54, 33, 0);
  outlined assign with take of MLClassifierMetrics?(v25, v29, &demangling cache variable for type metadata for MLClassifierMetrics?);
  swift_endAccess(v54);
  v59 = 1;
LABEL_6:
  v9 = *(v0 + 296);
  v10 = *(v0 + 288);
  v11 = *(v0 + 280);
  v12 = *(v0 + 272);
  v48 = *(v0 + 264);
  v42 = *(v0 + 240);
  v51 = *(v0 + 232);
  v55 = *(v0 + 216);
  v45 = *(v0 + 224);
  *(v0 + 312);
  v9;
  v10;
  v11;
  v12;
  v48;
  v42;
  v51;
  v45;
  v55;
  return (*(v0 + 8))(v59, 1);
}

uint64_t LogisticRegressionClassifierTrainingSessionDelegate.saveCheckpoint(to:phase:iteration:)(uint64_t a1, unsigned __int8 *a2)
{
  v4 = v2;
  v30 = v3;
  v32 = a1;
  v5 = 0xEB0000000064657ALL;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLogisticRegressionClassifier.Model?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v31 = v27;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLogisticRegressionClassifier.Classifier?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = *a2;
  v29 = v27;
  switch(v12)
  {
    case 0:
      v13 = v2;
      v14 = 0x696C616974696E69;
      break;
    case 1:
      v13 = v2;
      v14 = 0x6974636172747865;
      goto LABEL_7;
    case 2:
      0xE800000000000000;
      goto LABEL_9;
    case 3:
      v13 = v2;
      v14 = 0x697461756C617665;
LABEL_7:
      v5 = 0xEA0000000000676ELL;
      break;
    case 4:
      v13 = v2;
      v5 = 0xEB00000000676E69;
      v14 = 0x636E657265666E69;
      break;
  }

  LODWORD(v15) = 0;
  v16 = _stringCompareWithSmolCheck(_:_:expecting:)(v14, v5, 0x676E696E69617274, 0xE800000000000000, 0);
  v5;
  v17 = (v16 & 1) == 0;
  v4 = v13;
  if (!v17)
  {
LABEL_9:
    v18 = v30;
    v19 = v30 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier;
    swift_beginAccess(v30 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier, v27, 0, 0);
    v20 = v29;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, v29, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.Classifier?);
    v21 = type metadata accessor for MLLogisticRegressionClassifier.Classifier(0);
    if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
    {
      BUG();
    }

    v22 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_model + v18;
    swift_beginAccess(v22, v28, 0, 0);
    v23 = v22;
    v15 = v31;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v23, v31, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.Model?);
    v24 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
    if (__swift_getEnumTagSinglePayload(v15, 1, v24) == 1)
    {
      BUG();
    }

    v25 = lazy protocol witness table accessor for type MLLogisticRegressionClassifier.Classifier and conformance MLLogisticRegressionClassifier.Classifier();
    SupervisedTabularEstimator.write(_:to:overwrite:)(v15, v32, 1, v21, v25);
    outlined destroy of MLActivityClassifier.ModelParameters(v15, type metadata accessor for MLLogisticRegressionClassifier.Model);
    outlined destroy of MLActivityClassifier.ModelParameters(v20, type metadata accessor for MLLogisticRegressionClassifier.Classifier);
    if (!v4)
    {
      LOBYTE(v15) = 1;
    }
  }

  return v15;
}

uint64_t LogisticRegressionClassifierTrainingSessionDelegate.save(to:)(uint64_t a1)
{
  v16 = v1;
  v17 = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters + v2;
  swift_beginAccess(v10, v15, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, &v14, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?);
  if (__swift_getEnumTagSinglePayload(&v14, 1, v6) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v14, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?);
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
    outlined init with take of MLClassifierMetrics(&v14, &v14, type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters);
    MLLogisticRegressionClassifier.PersistentParameters.save(toSessionDirectory:)(v17);
    return outlined destroy of MLActivityClassifier.ModelParameters(&v14, type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters);
  }
}

NSURL *LogisticRegressionClassifierTrainingSessionDelegate.restore(from:phase:)(uint64_t a1)
{
  v36 = v1;
  v31 = v2;
  v30 = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?) - 8) + 64);
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
  v32 = type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters(0);
  v13 = *(*(v32 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v34 = &v27;
  v16 = alloca(v13);
  v17 = alloca(v13);
  (*(v9 + 16))(&v27, v30, v8);
  v18 = v36;
  result = MLLogisticRegressionClassifier.PersistentParameters.init(sessionDirectory:)(&v27);
  if (!v18)
  {
    v36 = &v27;
    v20 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters + v31;
    swift_beginAccess(OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters + v31, v28, 0, 0);
    v21 = v35;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v20, v35, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?);
    v22 = v21;
    v23 = v32;
    if (__swift_getEnumTagSinglePayload(v22, 1, v32) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v35, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?);
      v24 = v33;
      outlined init with take of MLClassifierMetrics(v36, v33, type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v23);
      swift_beginAccess(v20, v29, 33, 0);
      outlined assign with take of MLClassifierMetrics?(v24, v20, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?);
      return swift_endAccess(v29);
    }

    else
    {
      v25 = v34;
      outlined init with take of MLClassifierMetrics(v35, v34, type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters);
      v26 = v36;
      LogisticRegressionClassifierTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:)(v36, v25);
      outlined destroy of MLActivityClassifier.ModelParameters(v25, type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters);
      return outlined destroy of MLActivityClassifier.ModelParameters(v26, type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters);
    }
  }

  return result;
}

uint64_t LogisticRegressionClassifierTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:)(uint64_t a1, char *a2)
{
  v45 = v2;
  v4 = a1;
  v5 = type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters(0);
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
      result = static MLLogisticRegressionClassifier.ModelParameters.firstIncompatibility(_:_:)((*(v47 + 32) + v46), &v44[*(v47 + 32)]);
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

uint64_t LogisticRegressionClassifierTrainingSessionDelegate.deinit()
{
  outlined destroy of MLActivityClassifier.ModelParameters(v0 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?);
  v1 = v0 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingData;
  v2 = type metadata accessor for DataFrame(0);
  (*(*(v2 - 8) + 8))(v1, v2);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationData, &demangling cache variable for type metadata for DataFrame?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.Classifier?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_model, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.Model?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingMetrics, &demangling cache variable for type metadata for MLClassifierMetrics?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationMetrics, &demangling cache variable for type metadata for MLClassifierMetrics?);
  return v0;
}

uint64_t type metadata accessor for LogisticRegressionClassifierTrainingSessionDelegate(uint64_t a1)
{
  result = type metadata singleton initialization cache for LogisticRegressionClassifierTrainingSessionDelegate;
  if (!type metadata singleton initialization cache for LogisticRegressionClassifierTrainingSessionDelegate)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for LogisticRegressionClassifierTrainingSessionDelegate);
  }

  return result;
}

uint64_t type metadata completion function for LogisticRegressionClassifierTrainingSessionDelegate(uint64_t a1)
{
  result = type metadata accessor for MLTrainingSessionParameters(319);
  if (v2 <= 0x3F)
  {
    v9[0] = *(result - 8) + 64;
    result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?, type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters);
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
          result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for MLLogisticRegressionClassifier.Classifier?, type metadata accessor for MLLogisticRegressionClassifier.Classifier);
          if (v6 <= 0x3F)
          {
            v9[4] = *(result - 8) + 64;
            result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for MLLogisticRegressionClassifier.Model?, type metadata accessor for MLLogisticRegressionClassifier.Model);
            if (v7 <= 0x3F)
            {
              v9[5] = *(result - 8) + 64;
              result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for MLClassifierMetrics?, type metadata accessor for MLClassifierMetrics);
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

uint64_t protocol witness for TrainingSessionDelegate.train(from:) in conformance LogisticRegressionClassifierTrainingSessionDelegate(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_task_alloc(192);
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for TrainingSessionDelegate.train(from:) in conformance SoundClassifierTrainingSessionDelegate;
  return LogisticRegressionClassifierTrainingSessionDelegate.train(from:)(a1);
}

uint64_t protocol witness for TrainingSessionDelegate.evaluate(from:) in conformance LogisticRegressionClassifierTrainingSessionDelegate()
{
  v2 = *v0;
  v3 = swift_task_alloc(320);
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for TrainingSessionDelegate.evaluate(from:) in conformance SoundClassifierTrainingSessionDelegate;
  return LogisticRegressionClassifierTrainingSessionDelegate.evaluate(from:)();
}

uint64_t outlined assign with copy of DataFrame?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
  (*(*(v2 - 8) + 24))(a2, a1, v2);
  return a2;
}

uint64_t outlined assign with take of MLClassifierMetrics?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledName(a3);
  (*(*(v3 - 8) + 40))(a2, a1, v3);
  return a2;
}

uint64_t MLDataValue.stringValue.getter()
{
  if (*(v0 + 16) != 2)
  {
    return 0;
  }

  v1 = *v0;
  v0[1];
  return v1;
}

uint64_t MLDataValue.intValue.getter()
{
  if (v0[16])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t MLDataValue.doubleValue.getter()
{
  if (v0[16] == 1)
  {
    return *v0;
  }

  else
  {
    return 0;
  }
}

uint64_t MLDataValue.sequenceValue.getter()
{
  v2 = result;
  if (*(v1 + 16) == 3)
  {
    v3 = *v1;
    result = *v1;
  }

  else
  {
    v3 = 0;
  }

  *v2 = v3;
  return result;
}

void *MLDataValue.multiArrayValue.getter()
{
  v2 = result;
  if (*(v1 + 16) == 5)
  {
    v3 = *v1;
    result = *v1;
  }

  else
  {
    v3 = 0;
  }

  *v2 = v3;
  return result;
}

uint64_t MLDataValue.dictionaryValue.getter()
{
  v2 = result;
  if (*(v1 + 16) == 4)
  {
    v3 = *v1;
    result = *v1;
  }

  else
  {
    v3 = 0;
  }

  *v2 = v3;
  return result;
}

char MLDataValue.init(_:)(uint64_t a1, double a2)
{
  v4 = v2;
  switch(CMLFeatureValue.type.getter())
  {
    case 0u:
      v5 = *(a1 + 16);
      a1;
      countAndFlagsBits = specialized handling<A, B>(_:_:)(v5);
      a1, 2;
      object = 0;
      result = 0;
      goto LABEL_14;
    case 1u:
      v18 = *(a1 + 16);
      a1;
      specialized handling<A, B>(_:_:)(v18);
      *&v19[7] = a2;
      a1, 2;
      countAndFlagsBits = *&a2;
      result = 1;
      goto LABEL_13;
    case 2u:
      a1;
      v12 = CMLFeatureValue.stringValue()();
      if (v13)
      {
        v13;
        a1;
        BUG();
      }

      countAndFlagsBits = v12._countAndFlagsBits;
      object = v12._object;
      a1, 2;
      result = 2;
      goto LABEL_14;
    case 3u:
      v14 = *(a1 + 16);
      a1;
      v15 = specialized handling<A, B>(_:_:)(v14);
      if (!v15)
      {
        BUG();
      }

      v16 = v15;
      object = 0;
      v17 = type metadata accessor for CMLSequence();
      countAndFlagsBits = swift_allocObject(v17, 25, 7);
      *(countAndFlagsBits + 16) = v16;
      *(countAndFlagsBits + 24) = 1;
      a1, 2;
      result = 3;
      goto LABEL_14;
    case 4u:
      v9 = *(a1 + 16);
      a1;
      v10 = specialized handling<A, B>(_:_:)(v9);
      if (!v10)
      {
        BUG();
      }

      object = 0;
      v11 = type metadata accessor for CMLDictionary();
      v19[0] = swift_allocObject(v11, 24, 7);
      v19[1] = closure #1 in MLDataValue.DictionaryType.init(from:);
      v19[2] = 0;
      *(v19[0] + 16) = v10;
      v19[3] = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
      v19[4] = 0;
      v19[5] = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
      v19[6] = 0;
      countAndFlagsBits = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufC8CreateML11MLDataValueO_AGs15LazyMapSequenceVys0j6FilterL0VyAIyAE13CMLDictionaryCAG_AGtSgGGAG_AGtGTt0g5(v19);
      a1, 2;
      result = 4;
      goto LABEL_14;
    case 5u:
      a1;
      result = 6;
      countAndFlagsBits = 0;
      goto LABEL_13;
    case 6u:
      a1;
      MLDataValue.MultiArrayType.init(from:)(a1);
      countAndFlagsBits = v19[0];
      if (!v19[0])
      {
        BUG();
      }

      a1;
      result = 5;
LABEL_13:
      object = 0;
LABEL_14:
      *v4 = countAndFlagsBits;
      *(v4 + 8) = object;
      *(v4 + 16) = result;
      return result;
  }
}

uint64_t MLDataValue.featureValue.getter(double a1)
{
  v2 = *v1;
  switch(*(v1 + 16))
  {
    case 0:
      v3 = *(v1 + 16);
      v4 = specialized handling<A, B>(_:_:)(*v1);
      if (!v4)
      {
        BUG();
      }

      goto LABEL_8;
    case 1:
      v4 = specialized handling<A, B>(_:_:)();
      if (!v4)
      {
        BUG();
      }

LABEL_8:
      v7 = type metadata accessor for CMLFeatureValue();
      swift_allocObject(v7, 25, 7);
      return CMLFeatureValue.init(rawValue:ownsValue:)(v4, 1);
    case 2:
      v6 = *(v1 + 8);
      type metadata accessor for CMLFeatureValue();
      v6;
      v5 = CMLFeatureValue.__allocating_init(_:)(v2, v6);
      goto LABEL_10;
    case 3:
      v10 = *v1;

      v5 = MLDataValue.SequenceType.featureValue.getter(a1);

      goto LABEL_10;
    case 4:
      v9 = *v1;
      v2;
      v5 = MLDataValue.DictionaryType.featureValue.getter();
      v9;
      goto LABEL_10;
    case 5:
      v11 = *v1;
      v2;
      v5 = MLDataValue.MultiArrayType.featureValue.getter();

LABEL_10:
      result = v5;
      break;
    case 6:
      type metadata accessor for CMLFeatureValue();
      result = CMLFeatureValue.__allocating_init()(0);
      break;
  }

  return result;
}

uint64_t MLDataValue.ValueType.description.getter()
{
  switch(*v0)
  {
    case 0:
      v1 = *v0;
      result = 7630409;
      break;
    case 1:
      result = 0x656C62756F44;
      break;
    case 2:
      result = 0x676E69727453;
      break;
    case 3:
      result = 0x65636E6575716553;
      break;
    case 4:
      result = 0x616E6F6974636944;
      break;
    case 5:
      result = 0x72724169746C754DLL;
      break;
    case 6:
      result = 0x676E697373694DLL;
      break;
  }

  return result;
}

uint64_t MLDataValue.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  switch(*(v0 + 16))
  {
    case 0:
      v3 = *(v0 + 16);
      v34 = 0xEA00000000002865;
      v32[0] = v1;
      v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
      object = v4._object;
      String.append(_:)(v4);
      object;
      v6._countAndFlagsBits = 41;
      v6._object = 0xE100000000000000;
      String.append(_:)(v6);
      return 0x756C615661746144;
    case 1:
      v8 = &v33;
      v33 = 0;
      v36._countAndFlagsBits = v1;
      v34 = 0xE000000000000000;
      v24._countAndFlagsBits = 0x756C615661746144;
      v24._object = 0xEA00000000002865;
      String.append(_:)(v24);
      Double.write<A>(to:)(&v33, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
      goto LABEL_7;
    case 2:
      v8 = &v33;
      v33 = 0x756C615661746144;
      v34 = 0xEB00000000222865;
      v14._countAndFlagsBits = v1;
      v14._object = v2;
      String.append(_:)(v14);
      v15._object = 0xE200000000000000;
      v15._countAndFlagsBits = 10530;
      goto LABEL_8;
    case 3:
      v32[0] = 0x756C615661746144;
      v32[1] = 0xEA00000000002865;
      v35 = 0;
      outlined copy of MLDataValue(v1, v2, 3u);
      swift_retain_n(v1, 2);
      v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LazyMapSequence<MLDataValue.SequenceType, String>);
      v17 = lazy protocol witness table accessor for type LazyMapSequence<MLDataValue.SequenceType, String> and conformance <> LazyMapSequence<A, B>();
      v36._countAndFlagsBits = BidirectionalCollection<>.joined(separator:)(8236, 0xE200000000000000, v16, v17);
      v19 = v18;

      v33 = 91;
      v34 = 0xE100000000000000;
      v20._countAndFlagsBits = v36._countAndFlagsBits;
      v20._object = v19;
      String.append(_:)(v20);
      v19;
      0;
      v20._countAndFlagsBits = 93;
      v20._object = 0xE100000000000000;
      String.append(_:)(v20);
      0xE100000000000000;
      v21 = 3;
      outlined consume of MLDataValue(v1, v2, 3);
      v23._countAndFlagsBits = 91;
      v22 = 0xE100000000000000;
      v23._object = 0xE100000000000000;
      v8 = v32;
      goto LABEL_10;
    case 4:
      v8 = &v33;
      v33 = 0x756C615661746144;
      v34 = 0xEA00000000002865;
      outlined copy of MLDataValue(v1, v2, 4u);
      v9 = lazy protocol witness table accessor for type MLDataValue and conformance MLDataValue();
      v10 = Dictionary.description.getter(v1, &type metadata for MLDataValue, &type metadata for MLDataValue, v9);
      v12 = v11;
      outlined consume of MLDataValue(v1, v2, 4);
      v13._countAndFlagsBits = v10;
      v13._object = v12;
      String.append(_:)(v13);
      v12;
LABEL_7:
      v15._countAndFlagsBits = 41;
      v15._object = 0xE100000000000000;
LABEL_8:
      String.append(_:)(v15);
      goto LABEL_11;
    case 5:
      v33 = 0x756C615661746144;
      v34 = 0xEA00000000002865;
      outlined copy of MLDataValue(v1, v2, 5u);
      v25 = v1;
      v26 = [v25 description];
      v27 = v26;
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)(v27);
      v22 = v29;

      v21 = 5;
      outlined consume of MLDataValue(v1, v2, 5);
      v23._countAndFlagsBits = v28;
      v23._object = v22;
      v8 = &v33;
LABEL_10:
      String.append(_:)(v23);
      v22;
      v30._countAndFlagsBits = 41;
      v30._object = 0xE100000000000000;
      String.append(_:)(v30);
      outlined consume of MLDataValue(v1, v2, v21);
LABEL_11:
      result = *v8;
      v31 = v8[1];
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      JUMPOUT(0x1DD7E8);
  }

  return result;
}

uint64_t MLDataValue.init(fromAny:)(void *a1, __m128 a2)
{
  v4 = a1;
  *&v65 = v2;
  outlined init with copy of Any(a1, v67);
  if (!swift_dynamicCast(&v68, v67, &type metadata for Any + 8, &type metadata for MLDataValue, 0))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLDataValueConvertible);
    if (swift_dynamicCast(&v68, v67, &type metadata for Any + 8, v8, 0))
    {
      outlined init with take of TabularRegressionTask(&v68, v54);
      v9 = v54[3];
      v79 = a1;
      v10 = v54[4];
      __swift_project_boxed_opaque_existential_0Tm(v54, v54[3]);
      v81 = v3;
      (*(v10 + 32))(v9, v10);
      __swift_destroy_boxed_opaque_existential_1Tm(v79);
      v6 = *(&v55[0] + 1);
      ML11MLDataValueO_AGSayAG_AGtGTt0g5 = *&v55[0];
      v7 = v55[1];
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      goto LABEL_45;
    }

    if (swift_dynamicCast(&v68, v67, &type metadata for Any + 8, &type metadata for String, 0))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      v6 = *(&v68 + 1);
      ML11MLDataValueO_AGSayAG_AGtGTt0g5 = v68;
      v7 = 2;
      goto LABEL_45;
    }

    if (swift_dynamicCast(&v68, v67, &type metadata for Any + 8, &type metadata for Int, 0))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      ML11MLDataValueO_AGSayAG_AGtGTt0g5 = v68;
      v6 = 0;
      v7 = 0;
      goto LABEL_45;
    }

    if (swift_dynamicCast(&v68, v67, &type metadata for Any + 8, &type metadata for Double, 0))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      ML11MLDataValueO_AGSayAG_AGtGTt0g5 = v68;
      v7 = 1;
      v6 = 0;
      goto LABEL_45;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Any]);
    v12 = swift_dynamicCast(v59, v67, &type metadata for Any + 8, v11, 0);
    v79 = a1;
    if (v12)
    {
      v81 = v3;
      v13 = *&v59[0];
      v14 = *(*&v59[0] + 16);
      if (v14)
      {
        *&v71 = _swiftEmptyArrayStorage;
        v78 = v14;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
        v15 = v71;
        v80 = v13;
        v16 = (v13 + 4);
        while (1)
        {
          outlined init with copy of Any(v16, &v68);
          outlined init with copy of Any(&v68, v54);
          v17 = v81;
          MLDataValue.init(fromAny:)(v54);
          v81 = v17;
          if (v17)
          {
            break;
          }

          __swift_destroy_boxed_opaque_existential_1Tm(&v68);
          a2 = v55[0];
          v18 = v55[1];
          *&v71 = v15;
          v19 = v15[2];
          v20 = v15[3];
          v21 = v19 + 1;
          if (v20 >> 1 <= v19)
          {
            v77 = v19 + 1;
            v66 = v55[0];
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 >= 2, v19 + 1, 1);
            v21 = v77;
            a2 = v66;
            v15 = v71;
          }

          v15[2] = v21;
          v22 = 3 * v19;
          *&v15[v22 + 4] = a2;
          LOBYTE(v15[v22 + 6]) = v18;
          v16 += 32;
          v23 = v78-- == 1;
          v4 = v79;
          if (v23)
          {
            v80;
            goto LABEL_37;
          }
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v68);
        v15;
        __swift_destroy_boxed_opaque_existential_1Tm(v79);
        v51 = v80;
LABEL_40:
        v51;
        return __swift_destroy_boxed_opaque_existential_1Tm(v67);
      }

      *&v59[0];
      v15 = _swiftEmptyArrayStorage;
LABEL_37:
      _s8CreateML11MLDataValueO12SequenceTypeVyAExcSTRzAC7ElementRtzlufCSayACG_Tt1g5(v15, *a2.i64);
      __swift_destroy_boxed_opaque_existential_1Tm(v4);
      ML11MLDataValueO_AGSayAG_AGtGTt0g5 = v68;
      v7 = 3;
    }

    else
    {
      v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [AnyHashable : Any]);
      if (!swift_dynamicCast(&v62, v67, &type metadata for Any + 8, v24, 0))
      {
        *&v68 = 0;
        *(&v68 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(36);
        v49._countAndFlagsBits = 0x20666F2065707954;
        v49._object = 0xEF272065756C6176;
        String.append(_:)(v49);
        _print_unlocked<A, B>(_:_:)(v4, &v68, &type metadata for Any + 8, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
        v49._object = "DataValue(Missing)" + 0x8000000000000000;
        v49._countAndFlagsBits = 0xD000000000000013;
        String.append(_:)(v49);
        v65 = v68;
        v49._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v49._object, 0, 0);
        *v50 = v65;
        *(v50 + 16) = 0;
        *(v50 + 32) = 0;
        *(v50 + 48) = 1;
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_1Tm(v4);
        return __swift_destroy_boxed_opaque_existential_1Tm(v67);
      }

      v81 = v3;
      v25 = v62;
      v26 = *(v62 + 16);
      if (v26)
      {
        v76 = _swiftEmptyArrayStorage;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 0);
        v27 = v76;
        v28 = specialized Dictionary.startIndex.getter(v25);
        v30 = v29;
        v78 = v25 + 64;
        v31 = v26 - 1;
        v75 = v25;
        while (1)
        {
          v77 = v31;
          if (v28 < 0 || v28 >= 1 << *(v25 + 32))
          {
            BUG();
          }

          v32 = v28 >> 6;
          v33 = *(v78 + 8 * (v28 >> 6));
          if (!_bittest64(&v33, v28))
          {
            BUG();
          }

          v66.i64[0] = 1 << v28;
          v80 = v27;
          v64 = v30;
          if (v30 != *(v25 + 36))
          {
            BUG();
          }

          outlined init with copy of AnyHashable(*(v25 + 48) + 40 * v28, &v68);
          v63 = v28;
          outlined init with copy of Any(*(v25 + 56) + 32 * v28, v70);
          outlined init with copy of AnyHashable(&v68, v54);
          outlined init with copy of Any(v70, &v54[5]);
          qmemcpy(v55, v54, 0x48uLL);
          outlined destroy of (key: AnyHashable, value: Any)(&v68);
          outlined init with copy of (key: AnyHashable, value: Any)(v55, v59);
          v56[3] = &type metadata for AnyHashable;
          v34 = swift_allocObject(&unk_3932E8, 56, 7);
          v56[0] = v34;
          v35 = v59[1];
          *(v34 + 16) = v59[0];
          *(v34 + 32) = v35;
          *(v34 + 48) = v60;
          v36 = v81;
          MLDataValue.init(fromAny:)(v56);
          if (v36)
          {
            v81 = v36;
            __swift_destroy_boxed_opaque_existential_1Tm(v61);
            v52 = v80;
            outlined destroy of (key: AnyHashable, value: Any)(v55);
            v52;
            __swift_destroy_boxed_opaque_existential_1Tm(v79);
            v51 = v75;
            goto LABEL_40;
          }

          __swift_destroy_boxed_opaque_existential_1Tm(v61);
          outlined init with copy of (key: AnyHashable, value: Any)(v55, v59);
          MLDataValue.init(fromAny:)(v61);
          v81 = 0;
          v27 = v80;
          outlined destroy of AnyHashable(v59);
          outlined destroy of (key: AnyHashable, value: Any)(v55);
          v37 = v71;
          v38 = v72;
          v39 = v73;
          v40 = v74;
          v76 = v27;
          v41 = v27[2];
          v42 = v27[3];
          v43 = v41 + 1;
          if (v42 >> 1 <= v41)
          {
            v80 = (v41 + 1);
            v82 = v74;
            v57 = v71;
            v58 = v73;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v42 >= 2, v43, 1);
            v43 = v80;
            v40 = v82;
            v39 = v58;
            v37 = v57;
            v27 = v76;
          }

          v27[2] = v43;
          v44 = 6 * v41;
          *&v27[v44 + 4] = v37;
          LOBYTE(v27[v44 + 6]) = v38;
          *&v27[v44 + 7] = v39;
          LOBYTE(v27[v44 + 9]) = v40;
          v25 = v75;
          v45 = -1 << *(v75 + 32);
          if (v63 >= -v45)
          {
            BUG();
          }

          if ((v66.i64[0] & *(v78 + 8 * v32)) == 0)
          {
            BUG();
          }

          v4 = v79;
          v46 = v77;
          if (v64 != *(v75 + 36))
          {
            BUG();
          }

          v47 = _HashTable.occupiedBucket(after:)(v63, v78, ~v45);
          v48 = v46 == 0;
          v31 = v46 - 1;
          if (v48)
          {
            break;
          }

          v28 = v47;
          v30 = *(v25 + 36);
        }

        v25;
      }

      else
      {
        v62;
        v27 = _swiftEmptyArrayStorage;
      }

      ML11MLDataValueO_AGSayAG_AGtGTt0g5 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufC8CreateML11MLDataValueO_AGSayAG_AGtGTt0g5(v27);
      __swift_destroy_boxed_opaque_existential_1Tm(v4);
      v7 = 4;
    }

    v6 = 0;
    goto LABEL_45;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v6 = *(&v68 + 1);
  ML11MLDataValueO_AGSayAG_AGtGTt0g5 = v68;
  v7 = v69;
LABEL_45:
  __swift_destroy_boxed_opaque_existential_1Tm(v67);
  result = v65;
  *v65 = ML11MLDataValueO_AGSayAG_AGtGTt0g5;
  *(result + 8) = v6;
  *(result + 16) = v7;
  return result;
}

uint64_t lazy protocol witness table accessor for type LazyMapSequence<MLDataValue.SequenceType, String> and conformance <> LazyMapSequence<A, B>()
{
  result = lazy protocol witness table cache variable for type LazyMapSequence<MLDataValue.SequenceType, String> and conformance <> LazyMapSequence<A, B>;
  if (!lazy protocol witness table cache variable for type LazyMapSequence<MLDataValue.SequenceType, String> and conformance <> LazyMapSequence<A, B>)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for LazyMapSequence<MLDataValue.SequenceType, String>);
    lazy protocol witness table accessor for type MLDataValue.SequenceType and conformance MLDataValue.SequenceType();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> LazyMapSequence<A, B>, v1);
    lazy protocol witness table cache variable for type LazyMapSequence<MLDataValue.SequenceType, String> and conformance <> LazyMapSequence<A, B> = result;
  }

  return result;
}

uint64_t MLDataValue.isValid.getter()
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  switch(v4)
  {
    case 0:
    case 1:
      goto LABEL_7;
    case 2:
      v5 = *(v1 + 8);
      goto LABEL_4;
    case 3:
      v6 = *v1;

      goto LABEL_7;
    case 4:
      v5 = *v1;
LABEL_4:
      v5;
      goto LABEL_7;
    case 5:
      *v1;
LABEL_7:
      LOBYTE(v0) = 1;
      break;
    case 6:
      v0 = 0;
      break;
  }

  outlined consume of MLDataValue(v2, v3, v4);
  outlined consume of MLDataValue(0, 0, 6);
  return v0;
}

Swift::Int MLDataValue.ValueType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)(0);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

id MLDataValue.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  switch(*(v0 + 16))
  {
    case 0:
      v3 = *(v0 + 16);
      v19 = *v0;
      v4 = lazy protocol witness table accessor for type Int and conformance Int();
      v5 = BinaryInteger.description.getter(&type metadata for Int, v4);
      goto LABEL_7;
    case 1:
      v5 = Double.description.getter(*&v1);
LABEL_7:
      v1 = v5;
      break;
    case 2:
      *(v0 + 8);
      break;
    case 3:
      outlined copy of MLDataValue(v1, v2, 3u);
      swift_retain_n(v1, 2);
      v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LazyMapSequence<MLDataValue.SequenceType, String>);
      v9 = lazy protocol witness table accessor for type LazyMapSequence<MLDataValue.SequenceType, String> and conformance <> LazyMapSequence<A, B>();
      v20 = BidirectionalCollection<>.joined(separator:)(8236, 0xE200000000000000, v8, v9);
      v11 = v10;

      v12._countAndFlagsBits = v20;
      v12._object = v11;
      String.append(_:)(v12);
      v11;
      0;
      v12._countAndFlagsBits = 93;
      v12._object = 0xE100000000000000;
      String.append(_:)(v12);
      0xE100000000000000;
      outlined consume of MLDataValue(v1, v2, 3);
      outlined consume of MLDataValue(v1, v2, 3);
      v1 = &stru_20 + 59;
      break;
    case 4:
      v6 = lazy protocol witness table accessor for type MLDataValue and conformance MLDataValue();
      v1;
      v7 = Dictionary.debugDescription.getter(v1, &type metadata for MLDataValue, &type metadata for MLDataValue, v6);
      outlined consume of MLDataValue(v1, v2, 4);
      v1 = v7;
      break;
    case 5:
      v13 = *v0;
      v14 = v13;
      v15 = [v14 debugDescription];
      v16 = v15;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)(v16);

      outlined consume of MLDataValue(v1, v2, 5);
      outlined consume of MLDataValue(v1, v2, 5);
      v1 = v17;
      break;
    case 6:
      v1 = 0xD000000000000012;
      break;
  }

  return v1;
}

__int8 static MLDataValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a1 + 16);
  v30 = v3;
  switch(v7)
  {
    case 0:
      v8 = v4;
      v9 = v5;
      v10 = v2;
      if (v6)
      {
        goto LABEL_25;
      }

      outlined consume of MLDataValue(v2, v30, 0);
      outlined consume of MLDataValue(v8, v9, 0);
      return v10 == v8;
    case 1:
      v8 = v4;
      v9 = v5;
      v10 = v2;
      if (v6 != 1)
      {
        goto LABEL_25;
      }

      v31[0].i64[0] = *&_mm_cmpeq_sd(v8, v2);
      outlined consume of MLDataValue(v2, v30, 1);
      outlined consume of MLDataValue(v8, v9, 1);
      return _mm_loadl_epi64(v31).u8[0] & 1;
    case 2:
      if (v6 != 2)
      {
        v8 = v4;
        v9 = v5;
        v10 = v2;
        v27 = v3;
        goto LABEL_22;
      }

      v11 = 1;
      v17 = v3;
      v18 = v2;
      if (v4 ^ v2 | v5 ^ v3)
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)(v2, v3, v4, v5, 0);
      }

      outlined copy of MLDataValue(v4, v5, 2u);
      outlined copy of MLDataValue(v18, v17, 2u);
      outlined consume of MLDataValue(v18, v17, 2);
      v19 = v4;
      v20 = v5;
      v21 = 2;
      goto LABEL_12;
    case 3:
      if (v6 != 3)
      {
        v8 = v4;
        v9 = v5;
        v10 = v2;
        v2;
        goto LABEL_25;
      }

      v28 = v2;
      v29 = v4;
      v22 = v2;
      outlined copy of MLDataValue(v4, v5, 3u);
      v23 = v30;
      outlined copy of MLDataValue(v22, v30, 3u);
      outlined copy of MLDataValue(v4, v5, 3u);
      outlined copy of MLDataValue(v22, v30, 3u);
      v11 = static MLDataValue.SequenceType.== infix(_:_:)(&v28, &v29);
      outlined consume of MLDataValue(v22, v23, 3);
      outlined consume of MLDataValue(v4, v5, 3);
      outlined consume of MLDataValue(v4, v5, 3);
      v19 = v22;
      v20 = v23;
      v21 = 3;
LABEL_12:
      outlined consume of MLDataValue(v19, v20, v21);
      return v11;
    case 4:
      if (v6 == 4)
      {
        v12 = 4;
        v13 = v2;
        outlined copy of MLDataValue(v4, v5, 4u);
        v14 = v30;
        outlined copy of MLDataValue(v13, v30, 4u);
        outlined copy of MLDataValue(v4, v5, 4u);
        outlined copy of MLDataValue(v13, v30, 4u);
        v31[0].i8[0] = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ8CreateML11MLDataValueO_AETt1g5(v13, v4);
        v15 = v13;
        v16 = v30;
        goto LABEL_17;
      }

      v8 = v4;
      v9 = v5;
      v10 = v2;
      v27 = v2;
LABEL_22:
      v27;
      goto LABEL_25;
    case 5:
      if (v6 == 5)
      {
        v13 = v2;
        v31[0].i64[0] = type metadata accessor for NSObject();
        outlined copy of MLDataValue(v4, v5, 5u);
        v14 = v30;
        outlined copy of MLDataValue(v13, v30, 5u);
        outlined copy of MLDataValue(v4, v5, 5u);
        outlined copy of MLDataValue(v13, v30, 5u);
        v31[0].i8[0] = static NSObject.== infix(_:_:)(v13, v4);
        v15 = v13;
        v16 = v30;
        v12 = 5;
LABEL_17:
        outlined consume of MLDataValue(v15, v16, v12);
        outlined consume of MLDataValue(v4, v5, v12);
        outlined consume of MLDataValue(v4, v5, v12);
        outlined consume of MLDataValue(v13, v14, v12);
        return v31[0].i8[0];
      }

      else
      {
        v8 = v4;
        v9 = v5;
        v10 = v2;
        v2;
LABEL_25:
        outlined copy of MLDataValue(v8, v9, v6);
        outlined consume of MLDataValue(v10, v30, v7);
        outlined consume of MLDataValue(v8, v9, v6);
        return 0;
      }

    case 6:
      v25 = v5;
      v10 = v2;
      v26 = v4;
      v9 = v25;
      v8 = v26;
      if (((v6 == 6) & (__PAIR128__(v25, v26) == 0)) != 1)
      {
        goto LABEL_25;
      }

      outlined consume of MLDataValue(v2, v30, 6);
      outlined consume of MLDataValue(0, 0, 6);
      return 1;
  }
}

void MLDataValue.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  switch(*(v1 + 16))
  {
    case 0:
      v4 = *(v1 + 16);
      v3 = *v1;
      goto LABEL_8;
    case 1:
      v6 = v2 & 0x7FFFFFFFFFFFFFFFLL;
      if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v6 = *v1;
      }

      Hasher._combine(_:)(v6);
      return;
    case 2:
      v5 = *(v1 + 8);
      String.hash(into:)(a1, v2);
      return;
    case 3:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000026, "t be used as dictionary key" + 0x8000000000000000, "CreateML/MLDataValue.swift", 26, 2, 381, 0);
      goto LABEL_13;
    case 4:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002BLL, "t be used as dictionary key" + 0x8000000000000000, "CreateML/MLDataValue.swift", 26, 2, 383, 0);
      goto LABEL_13;
    case 5:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002BLL, "CreateML/MLDataValue.swift" + 0x8000000000000000, "CreateML/MLDataValue.swift", 26, 2, 385, 0);
LABEL_13:
      BUG();
    case 6:
      v3 = 1;
LABEL_8:
      v7 = *(v1 + 16);
      Hasher._combine(_:)(v3);
      return;
  }
}

Swift::Int MLDataValue.hashValue.getter()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  Hasher.init(_seed:)(0);
  MLDataValue.hash(into:)(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLDataValue(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  Hasher.init(_seed:)(a1);
  MLDataValue.hash(into:)(v4);
  return Hasher._finalize()();
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ8CreateML11MLDataValueO_AETt1g5(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    LOBYTE(v2) = 1;
    return v2;
  }

  LODWORD(v2) = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    LODWORD(v2) = 0;
    return v2;
  }

  specialized _NativeDictionary.makeIterator()(a1);
  v53 = v50[0];
  v58 = v50[1];
  v3 = v50[3];
  v4 = v50[4];
  v57 = (v50[2] + 64) >> 6;
  a1;
  v54 = a2;
  while (2)
  {
    if (v4)
    {
      _BitScanForward64(&v5, v4);
      v60 = (v4 - 1) & v4;
      v59 = v3;
      v6 = v5 | (v3 << 6);
    }

    else
    {
      v7 = v3 + 1;
      if (__OFADD__(1, v3))
      {
        BUG();
      }

      LOBYTE(v2) = 1;
      if (v7 >= v57)
      {
        goto LABEL_62;
      }

      v8 = *(v58 + 8 * v7);
      if (v8)
      {
        v9 = v3 + 1;
      }

      else
      {
        v9 = v3 + 2;
        if (v3 + 2 >= v57)
        {
          goto LABEL_62;
        }

        v8 = *(v58 + 8 * v7 + 8);
        if (!v8)
        {
          v9 = v3 + 3;
          if (v3 + 3 >= v57)
          {
            goto LABEL_62;
          }

          v8 = *(v58 + 8 * v7 + 16);
          if (!v8)
          {
            v9 = v3 + 4;
            if (v3 + 4 >= v57)
            {
              goto LABEL_62;
            }

            v8 = *(v58 + 8 * v7 + 24);
            if (!v8)
            {
              v9 = v3 + 5;
              if (v3 + 5 >= v57)
              {
                goto LABEL_62;
              }

              v8 = *(v58 + 8 * v7 + 32);
              if (!v8)
              {
                v9 = v3 + 6;
                if (v3 + 6 >= v57)
                {
                  goto LABEL_62;
                }

                v8 = *(v58 + 8 * v7 + 40);
                if (!v8)
                {
                  v10 = v3 + 7;
                  do
                  {
                    if (v10 >= v57)
                    {
                      goto LABEL_62;
                    }

                    v8 = *(v58 + 8 * v10++);
                  }

                  while (!v8);
                  v9 = v10 - 1;
                }
              }
            }
          }
        }
      }

      _BitScanForward64(&v11, v8);
      v60 = v8 & (v8 - 1);
      v6 = v11 | (v9 << 6);
      v59 = v9;
    }

    v12 = 24 * v6;
    v13 = *(v53 + 48);
    v14 = *(v53 + 56);
    v15 = *(v13 + v12);
    v16 = *(v13 + v12 + 8);
    LOBYTE(v13) = *(v13 + v12 + 16);
    v17 = *(v14 + v12);
    *&v61 = *(v14 + v12 + 8);
    v18 = *(v14 + v12 + 16);
    v19 = v13;
    outlined copy of MLDataValue(v15, v16, v13);
    LOBYTE(v62) = v18;
    *(&v61 + 1) = v17;
    v56 = v18;
    outlined copy of MLDataValue(v17, v61, v18);
    if (v19 == 0xFF)
    {
      LOBYTE(v2) = 1;
      goto LABEL_62;
    }

    v20 = v54;
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16, v19);
    LOBYTE(v55) = v22;
    outlined consume of MLDataValue(v15, v16, v19);
    if ((LOBYTE(v55) & 1) == 0)
    {
      goto LABEL_60;
    }

    v23 = *(v20 + 56);
    v24 = 24 * v21;
    v25 = *(v23 + 24 * v21);
    v2 = *(v23 + 24 * v21 + 8);
    v26 = *(v23 + v24 + 16);
    switch(v26)
    {
      case 0:
        if (LOBYTE(v62))
        {
          goto LABEL_59;
        }

        outlined consume of MLDataValue(v25, v2, 0);
        v2 = *(&v61 + 1);
        outlined consume of MLDataValue(*(&v61 + 1), v61, 0);
        v42 = v25 == v2;
        v3 = v59;
        v4 = v60;
        if (!v42)
        {
          goto LABEL_61;
        }

        continue;
      case 1:
        if (LOBYTE(v62) != 1)
        {
          goto LABEL_59;
        }

        v62 = *&v25;
        v38 = *(&v61 + 1);
        v55 = *(&v61 + 1);
        v39 = v2;
        LODWORD(v2) = 1;
        outlined consume of MLDataValue(v25, v39, 1);
        outlined consume of MLDataValue(v38, v61, 1);
        v3 = v59;
        v4 = v60;
        if (v62 == v55)
        {
          continue;
        }

        goto LABEL_61;
      case 2:
        if (LOBYTE(v62) != 2)
        {
          outlined copy of MLDataValue(v25, v2, 2u);
          v2;
          goto LABEL_59;
        }

        v31 = v61;
        if (__PAIR128__(v25, v2) != v61)
        {
          v44 = *(&v61 + 1);
          v45 = v2;
          LODWORD(v2) = _stringCompareWithSmolCheck(_:_:expecting:)(v25, v2, *(&v61 + 1), v61, 0);
          v45;
          outlined consume of MLDataValue(v25, v45, 2);
          outlined consume of MLDataValue(v44, v31, 2);
          v42 = (v2 & 1) == 0;
          goto LABEL_45;
        }

        v2;
        v32 = *(&v61 + 1);
        LODWORD(v2) = 2;
        outlined consume of MLDataValue(*(&v61 + 1), v31, 2);
        v33 = v32;
        v34 = v31;
LABEL_50:
        outlined consume of MLDataValue(v33, v34, v2);
        v3 = v59;
        v4 = v60;
        continue;
      case 3:
        if (LOBYTE(v62) != 3)
        {
          swift_retain_n(v25, 2);
          goto LABEL_59;
        }

        v51 = v25;
        v28 = *(&v61 + 1);
        v52 = *(&v61 + 1);
        v27 = 3;
        outlined copy of MLDataValue(v25, v2, 3u);
        v29 = v61;
        outlined copy of MLDataValue(v28, v61, 3u);
        outlined copy of MLDataValue(v25, v2, 3u);
        outlined copy of MLDataValue(v28, v29, 3u);
        outlined copy of MLDataValue(v25, v2, 3u);
        ML11MLDataValueO_AETt1g5 = static MLDataValue.SequenceType.== infix(_:_:)(&v51, &v52);
LABEL_38:
        LOBYTE(v62) = ML11MLDataValueO_AETt1g5;
        outlined consume of MLDataValue(v25, v2, v27);
        outlined consume of MLDataValue(v28, v29, v27);
        outlined consume of MLDataValue(v28, v29, v27);
        outlined consume of MLDataValue(v25, v2, v27);
        outlined consume of MLDataValue(v25, v2, v27);
        v35 = v28;
        v36 = v29;
        v37 = v27;
        goto LABEL_44;
      case 4:
        if (LOBYTE(v62) != 4)
        {
          swift_bridgeObjectRetain_n(v25, 2);
          goto LABEL_59;
        }

        v27 = 4;
        outlined copy of MLDataValue(v25, v2, 4u);
        v28 = *(&v61 + 1);
        v29 = v61;
        outlined copy of MLDataValue(*(&v61 + 1), v61, 4u);
        outlined copy of MLDataValue(v25, v2, 4u);
        outlined copy of MLDataValue(v28, v29, 4u);
        outlined copy of MLDataValue(v25, v2, 4u);
        ML11MLDataValueO_AETt1g5 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ8CreateML11MLDataValueO_AETt1g5(v25, v28);
        goto LABEL_38;
      case 5:
        if (LOBYTE(v62) == 5)
        {
          v62 = COERCE_DOUBLE(type metadata accessor for NSObject());
          outlined copy of MLDataValue(v25, v2, 5u);
          v40 = *(&v61 + 1);
          v41 = v61;
          outlined copy of MLDataValue(*(&v61 + 1), v61, 5u);
          outlined copy of MLDataValue(v25, v2, 5u);
          outlined copy of MLDataValue(v40, v41, 5u);
          outlined copy of MLDataValue(v25, v2, 5u);
          LOBYTE(v62) = static NSObject.== infix(_:_:)(v25, v40);
          outlined consume of MLDataValue(v25, v2, 5);
          outlined consume of MLDataValue(v40, v41, 5);
          outlined consume of MLDataValue(v40, v41, 5);
          outlined consume of MLDataValue(v25, v2, 5);
          outlined consume of MLDataValue(v25, v2, 5);
          v35 = v40;
          v36 = v41;
          v37 = 5;
LABEL_44:
          outlined consume of MLDataValue(v35, v36, v37);
          v42 = (LOBYTE(v62) & 1) == 0;
LABEL_45:
          v3 = v59;
          v4 = v60;
          if (v42)
          {
            goto LABEL_61;
          }

          continue;
        }

        v46 = v25;
        v46;
LABEL_59:
        v47 = *(&v61 + 1);
        v48 = v56;
        outlined copy of MLDataValue(*(&v61 + 1), v61, v56);
        outlined consume of MLDataValue(v25, v2, v26);
        outlined consume of MLDataValue(v47, v61, v48);
        outlined consume of MLDataValue(v25, v2, v26);
LABEL_60:
        outlined consume of MLDataValue(*(&v61 + 1), v61, v56);
LABEL_61:
        LODWORD(v2) = 0;
LABEL_62:
        outlined release of _NativeDictionary<String?, Int>.Iterator(v50);
        return v2;
      case 6:
        if (LOBYTE(v62) != 6 || v61 != 0)
        {
          goto LABEL_59;
        }

        v43 = v2;
        LODWORD(v2) = 6;
        outlined consume of MLDataValue(v25, v43, 6);
        v33 = 0;
        v34 = 0;
        goto LABEL_50;
    }
  }
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_Say10Foundation3URLVGTt1g5(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  LODWORD(v3) = a1;
  v43 = type metadata accessor for URL(0);
  v52 = *(v43 - 8);
  v4 = *(v52 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v45 = v41;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v44 = v41;
  if (a1 == a2)
  {
    LOBYTE(v3) = 1;
    return v3;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    LODWORD(v3) = 0;
    return v3;
  }

  specialized _NativeDictionary.makeIterator()(a1);
  v49 = v41[0];
  v58 = v41[1];
  v9 = v41[3];
  v55 = v41[4];
  v57 = (v41[2] + 64) >> 6;
  a1;
  v50 = a2;
LABEL_4:
  while (v55)
  {
    _BitScanForward64(&v10, v55);
    v55 &= v55 - 1;
    v56 = v9;
    v11 = v10 | (v9 << 6);
LABEL_25:
    v17 = *(v49 + 48);
    v18 = *(v17 + 16 * v11);
    v19 = *(v17 + 16 * v11 + 8);
    v20 = *(*(v49 + 56) + 8 * v11);
    v19;
    v20;
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
    LODWORD(v3) = v22;
    v19;
    if ((v3 & 1) == 0 || (v23 = *(*(v2 + 56) + 8 * v21), v24 = *(v23 + 16), v24 != *(v20 + 16)))
    {
      v39 = v20;
LABEL_39:
      v39;
      LODWORD(v3) = 0;
      goto LABEL_40;
    }

    if (v24 && v23 != v20)
    {
      v46 = *(v23 + 16);
      v25 = v52;
      v26 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      v27 = v23 + v26;
      v28 = v20 + v26;
      v54 = v23;
      v23;
      v29 = v27;
      v30 = *(v25 + 16);
      v48 = *(v25 + 72);
      v31 = 0;
      v53 = v20;
      v47 = v30;
      while (1)
      {
        v51 = v31;
        v32 = v44;
        v42 = v29;
        v33 = v43;
        v30(v44, v29, v43);
        if (v51 >= *(v20 + 16))
        {
          BUG();
        }

        v34 = v45;
        v30(v45, v28, v33);
        v35 = lazy protocol witness table accessor for type URL and conformance URL();
        v36 = v32;
        v37 = v32;
        v38 = v33;
        v59 = dispatch thunk of static Equatable.== infix(_:_:)(v36, v34, v33, v35);
        v3 = *(v52 + 8);
        v3(v34, v38);
        v3(v37, v38);
        if ((v59 & 1) == 0)
        {
          break;
        }

        v31 = v51 + 1;
        v28 += v48;
        v29 = v48 + v42;
        v20 = v53;
        v30 = v47;
        if (v46 == v51 + 1)
        {
          v53;
          v54;
          v2 = v50;
          v9 = v56;
          goto LABEL_4;
        }
      }

      v53;
      v39 = v54;
      goto LABEL_39;
    }

    v20;
    v9 = v56;
  }

  v12 = v9 + 1;
  if (__OFADD__(1, v9))
  {
    BUG();
  }

  LOBYTE(v3) = 1;
  if (v12 >= v57)
  {
    goto LABEL_40;
  }

  v13 = *(v58 + 8 * v12);
  if (v13)
  {
    v14 = v9 + 1;
LABEL_24:
    _BitScanForward64(&v16, v13);
    v55 = v13 & (v13 - 1);
    v11 = v16 | (v14 << 6);
    v56 = v14;
    goto LABEL_25;
  }

  v14 = v9 + 2;
  if (v9 + 2 >= v57)
  {
    goto LABEL_40;
  }

  v13 = *(v58 + 8 * v12 + 8);
  if (v13)
  {
    goto LABEL_24;
  }

  v14 = v9 + 3;
  if (v9 + 3 >= v57)
  {
    goto LABEL_40;
  }

  v13 = *(v58 + 8 * v12 + 16);
  if (v13)
  {
    goto LABEL_24;
  }

  v14 = v9 + 4;
  if (v9 + 4 >= v57)
  {
    goto LABEL_40;
  }

  v13 = *(v58 + 8 * v12 + 24);
  if (v13)
  {
    goto LABEL_24;
  }

  v14 = v9 + 5;
  if (v9 + 5 >= v57)
  {
    goto LABEL_40;
  }

  v13 = *(v58 + 8 * v12 + 32);
  if (v13)
  {
    goto LABEL_24;
  }

  v14 = v9 + 6;
  if (v9 + 6 >= v57)
  {
    goto LABEL_40;
  }

  v13 = *(v58 + 8 * v12 + 40);
  if (v13)
  {
    goto LABEL_24;
  }

  v15 = v9 + 7;
  while (v15 < v57)
  {
    v13 = *(v58 + 8 * v15++);
    if (v13)
    {
      v14 = v15 - 1;
      goto LABEL_24;
    }
  }

LABEL_40:
  outlined release of _NativeDictionary<String?, Int>.Iterator(v41);
  return v3;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SaySSGTt1g5(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    LOBYTE(v2) = 1;
    return v2;
  }

  v3 = a2;
  LODWORD(v2) = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    LODWORD(v2) = 0;
    return v2;
  }

  specialized _NativeDictionary.makeIterator()(a1);
  v41 = v40[0];
  v46 = v40[1];
  v4 = v40[3];
  v5 = v40[4];
  v45 = (v40[2] + 64) >> 6;
  a1;
  for (i = a2; ; v3 = i)
  {
    if (v5)
    {
      _BitScanForward64(&v6, v5);
      v44 = (v5 - 1) & v5;
      v43 = v4;
      v7 = v6 | (v4 << 6);
      goto LABEL_25;
    }

    v8 = v4 + 1;
    if (__OFADD__(1, v4))
    {
      BUG();
    }

    LOBYTE(v2) = 1;
    if (v8 >= v45)
    {
      goto LABEL_49;
    }

    v9 = *(v46 + 8 * v8);
    if (!v9)
    {
      break;
    }

    v10 = v4 + 1;
LABEL_24:
    _BitScanForward64(&v12, v9);
    v44 = v9 & (v9 - 1);
    v7 = v12 | (v10 << 6);
    v43 = v10;
LABEL_25:
    v13 = *(v41 + 48);
    v14 = *(v13 + 16 * v7);
    v15 = *(v13 + 16 * v7 + 8);
    v2 = *(*(v41 + 56) + 8 * v7);
    v15;
    v2;
    v16 = v3;
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
    v19 = v18;
    v15;
    if ((v19 & 1) == 0)
    {
      v38 = v2;
      goto LABEL_48;
    }

    v20 = *(*(v16 + 56) + 8 * v17);
    v21 = v20[2];
    v22 = v2;
    if (v21 != v2[2])
    {
      goto LABEL_46;
    }

    if (v21 && v20 != v2)
    {
      v23 = v20[4];
      v24 = v20[5];
      v25 = v2[4];
      v26 = v2[5];
      v27 = v2;
      if (v23 != v25 || v24 != v26)
      {
        v28 = (_stringCompareWithSmolCheck(_:_:expecting:)(v23, v24, v25, v26, 0) & 1) == 0;
        v22 = v2;
        if (v28)
        {
          goto LABEL_46;
        }
      }

      if (v21 != (&dword_0 + 1))
      {
        v29 = v20[6];
        v30 = v20[7];
        v31 = v22[6];
        v32 = v22[7];
        if (v29 != v31 || v30 != v32)
        {
          v28 = (_stringCompareWithSmolCheck(_:_:expecting:)(v29, v30, v31, v32, 0) & 1) == 0;
          v22 = v2;
          if (v28)
          {
            goto LABEL_46;
          }
        }

        if (v21 != (&dword_0 + 2))
        {
          v33 = 9;
          v2 = (&dword_0 + 2);
          while (1)
          {
            if (v2 >= v21)
            {
              BUG();
            }

            v34 = v20[v33 - 1];
            v35 = v20[v33];
            v36 = v22[v33 - 1];
            v37 = v22[v33];
            if (v34 != v36 || v35 != v37)
            {
              v28 = (_stringCompareWithSmolCheck(_:_:expecting:)(v34, v35, v36, v37, 0) & 1) == 0;
              v22 = v27;
              if (v28)
              {
                break;
              }
            }

            v2 = (v2 + 1);
            v33 += 2;
            if (v21 == v2)
            {
              goto LABEL_43;
            }
          }

LABEL_46:
          v38 = v22;
LABEL_48:
          v38;
          LODWORD(v2) = 0;
          goto LABEL_49;
        }
      }
    }

LABEL_43:
    v22;
    v4 = v43;
    v5 = v44;
  }

  v10 = v4 + 2;
  if (v4 + 2 >= v45)
  {
    goto LABEL_49;
  }

  v9 = *(v46 + 8 * v8 + 8);
  if (v9)
  {
    goto LABEL_24;
  }

  v10 = v4 + 3;
  if (v4 + 3 >= v45)
  {
    goto LABEL_49;
  }

  v9 = *(v46 + 8 * v8 + 16);
  if (v9)
  {
    goto LABEL_24;
  }

  v10 = v4 + 4;
  if (v4 + 4 >= v45)
  {
    goto LABEL_49;
  }

  v9 = *(v46 + 8 * v8 + 24);
  if (v9)
  {
    goto LABEL_24;
  }

  v10 = v4 + 5;
  if (v4 + 5 >= v45)
  {
    goto LABEL_49;
  }

  v9 = *(v46 + 8 * v8 + 32);
  if (v9)
  {
    goto LABEL_24;
  }

  v10 = v4 + 6;
  if (v4 + 6 >= v45)
  {
    goto LABEL_49;
  }

  v9 = *(v46 + 8 * v8 + 40);
  if (v9)
  {
    goto LABEL_24;
  }

  v11 = v4 + 7;
  while (v11 < v45)
  {
    v9 = *(v46 + 8 * v11++);
    if (v9)
    {
      v10 = v11 - 1;
      goto LABEL_24;
    }
  }

LABEL_49:
  outlined release of _NativeDictionary<String?, Int>.Iterator(v40);
  return v2;
}

uint64_t lazy protocol witness table accessor for type MLDataValue.ValueType and conformance MLDataValue.ValueType()
{
  result = lazy protocol witness table cache variable for type MLDataValue.ValueType and conformance MLDataValue.ValueType;
  if (!lazy protocol witness table cache variable for type MLDataValue.ValueType and conformance MLDataValue.ValueType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataValue.ValueType, &type metadata for MLDataValue.ValueType);
    lazy protocol witness table cache variable for type MLDataValue.ValueType and conformance MLDataValue.ValueType = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MLDataValue and conformance MLDataValue()
{
  result = lazy protocol witness table cache variable for type MLDataValue and conformance MLDataValue;
  if (!lazy protocol witness table cache variable for type MLDataValue and conformance MLDataValue)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataValue, &type metadata for MLDataValue);
    lazy protocol witness table cache variable for type MLDataValue and conformance MLDataValue = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLDataValue and conformance MLDataValue;
  if (!lazy protocol witness table cache variable for type MLDataValue and conformance MLDataValue)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataValue, &type metadata for MLDataValue);
    lazy protocol witness table cache variable for type MLDataValue and conformance MLDataValue = result;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MLDataValue(uint64_t a1, uint64_t a2)
{
  return initializeBufferWithCopyOfBuffer for MLDataValue(a1, a2);
}

{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  outlined copy of MLDataValue(*a2, v3, v4);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return a1;
}

uint64_t assignWithCopy for MLDataValue(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of MLDataValue(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  outlined consume of MLDataValue(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for MLDataValue(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  outlined consume of MLDataValue(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for MLDataValue(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 17))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v2 = -1;
      if (*(a1 + 16) >= 7u)
      {
        v2 = *(a1 + 16) ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLDataValue(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(a1 + 8) = 0;
    *a1 = a2 - 250;
    *(a1 + 16) = 0;
    if (a3 >= 0xFA)
    {
      *(a1 + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(a1 + 17) = 0;
    }

    if (a2)
    {
      *(a1 + 16) = -a2;
    }
  }
}

uint64_t getEnumTag for MLDataValue(uint64_t a1)
{
  result = (*a1 + 6);
  if (*(a1 + 16) < 6u)
  {
    return *(a1 + 16);
  }

  return result;
}

void destructiveInjectEnumTag for MLDataValue(uint64_t a1, unsigned int a2)
{
  if (a2 >= 6)
  {
    *a1 = a2 - 6;
    *(a1 + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(a1 + 16) = a2;
}

uint64_t storeEnumTagSinglePayload for MLDataValue.ValueType(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  LODWORD(result) = 0;
  if (a3 >= 0xFA)
  {
    v4 = a3 + 6;
    LODWORD(result) = 1;
    if (v4 >= 0xFF00)
    {
      LODWORD(result) = 2 * (v4 >= 0xFFFF00) + 2;
    }
  }

  if (a2 > 0xF9)
  {
    v5 = a2 - 250;
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
          *a1 = a2 + 6;
        }

        break;
      case 5:
        JUMPOUT(0x1DFAF8);
    }
  }

  return result;
}

uint64_t outlined destroy of (key: AnyHashable, value: Any)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (key: AnyHashable, value: Any));
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t outlined init with copy of (key: AnyHashable, value: Any)(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (key: AnyHashable, value: Any));
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t ActivityClassifierTrainingSessionDelegate.model.getter()
{
  v19 = v0;
  v2 = type metadata accessor for MLActivityClassifier.Trainer(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLActivityClassifier.Trainer?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainer + v1;
  swift_beginAccess(v9, v17, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v9, v17, &demangling cache variable for type metadata for MLActivityClassifier.Trainer?);
  v10 = 1;
  if (__swift_getEnumTagSinglePayload(v17, 1, v2))
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v17, &demangling cache variable for type metadata for MLActivityClassifier.Trainer?);
    v11 = type metadata accessor for MLActivityClassifier.Model(0);
    return __swift_storeEnumTagSinglePayload(v19, 1, 1, v11);
  }

  else
  {
    outlined init with copy of MLTrainingSessionParameters(v17, v17, type metadata accessor for MLActivityClassifier.Trainer);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v17, &demangling cache variable for type metadata for MLActivityClassifier.Trainer?);
    v13 = *&v17[*(v2 + 24)];
    v14 = v19;
    if (v13)
    {
      v15 = OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model + v13;
      v10 = 0;
      swift_beginAccess(v15, v18, 0, 0);
      outlined init with copy of MLTrainingSessionParameters(v15, v14, type metadata accessor for MLActivityClassifier.Model);
    }

    v16 = type metadata accessor for MLActivityClassifier.Model(0);
    __swift_storeEnumTagSinglePayload(v14, v10, 1, v16);
    return outlined destroy of MLActivityClassifier.ModelParameters(v17, type metadata accessor for MLActivityClassifier.Trainer);
  }
}

uint64_t ActivityClassifierTrainingSessionDelegate.init(sessionParameters:)(uint64_t a1)
{
  *(v1 + 16) = 0xD000000000000013;
  *(v1 + 24) = "ot found in Configuration" + 0x8000000000000000;
  v2 = OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters;
  *(v1 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 48) = 0;
  *(v1 + v2 + 32) = 0;
  *(v1 + v2 + 16) = 0;
  *(v1 + v2) = 0;
  v3 = v1 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainer;
  v4 = type metadata accessor for MLActivityClassifier.Trainer(0);
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  v5 = v1 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_tablePrinter;
  v6 = type metadata accessor for TrainingTablePrinter(0);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  *(v1 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingDataSamples) = 0;
  *(v1 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_validationDataSamples) = 0;
  *(v1 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_classLabels) = 0;
  outlined init with take of MLClassifierMetrics(a1, v1 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  return v1;
}

void *ActivityClassifierTrainingSessionDelegate.init(trainingData:featureColumnNames:labelColumnName:recordingFileColumn:modelParameters:sessionParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v54 = v8;
  v10 = v9;
  v51 = a6;
  v49 = a5;
  v52 = a4;
  v50 = a3;
  v43 = a2;
  v11 = *(*(type metadata accessor for MLActivityClassifier.ModelParameters(0) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v44 = v34;
  v53 = *a1;
  v55 = *(a1 + 8);
  v9[2] = 0xD000000000000013;
  v9[3] = "ot found in Configuration" + 0x8000000000000000;
  v14 = OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters;
  *(v9 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 48) = 0;
  *(v9 + v14 + 32) = 0;
  *(v9 + v14 + 16) = 0;
  *(v9 + v14) = 0;
  v15 = v9 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainer;
  v16 = type metadata accessor for MLActivityClassifier.Trainer(0);
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  v17 = v10 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_tablePrinter;
  v18 = type metadata accessor for TrainingTablePrinter(0);
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v18);
  *(v10 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingDataSamples) = 0;
  *(v10 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_validationDataSamples) = 0;
  *(v10 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_classLabels) = 0;
  v39 = v53;
  v40 = v55;
  v19 = v43;
  v20 = v54;
  MLActivityClassifier.ModelParameters.generateTables(trainingData:featureColumns:labelColumn:recordingFileColumn:)(&v45, &v47, &v39, v43, v50, v52, 0, v49, v51);
  v54 = v20;
  if (v20)
  {
    v19;
    v52;
    v51;
    outlined destroy of MLActivityClassifier.ModelParameters(a8, type metadata accessor for MLTrainingSessionParameters);
    outlined destroy of MLActivityClassifier.ModelParameters(a7, type metadata accessor for MLActivityClassifier.ModelParameters);
    outlined consume of Result<_DataTable, Error>(v53, v55);
    v10[3];
    v21 = *(v10 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 16);
    v22 = *(v10 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 32);
    v23 = *(v10 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 48);
    v35 = *(v10 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters);
    v36 = v21;
    v37 = v22;
    v38 = v23;
    outlined release of MLActivityClassifier.PersistentParameters?(&v35, outlined consume of MLActivityClassifier.PersistentParameters?);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainer, &demangling cache variable for type metadata for MLActivityClassifier.Trainer?);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_tablePrinter, &demangling cache variable for type metadata for TrainingTablePrinter?);
    *(v10 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingDataSamples);
    *(v10 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_validationDataSamples);
    *(v10 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_classLabels);
    v24 = type metadata accessor for ActivityClassifierTrainingSessionDelegate(0);
    swift_deallocPartialClassInstance(v10, v24, *(*v10 + 48), *(*v10 + 52));
  }

  else
  {
    v25 = (v10 + v14);
    outlined consume of Result<_DataTable, Error>(v53, v55);
    *&v35 = v45;
    BYTE8(v35) = v46;
    v41 = v47;
    v42 = v48;
    v26 = v44;
    outlined init with copy of MLTrainingSessionParameters(a7, v44, type metadata accessor for MLActivityClassifier.ModelParameters);
    MLActivityClassifier.PersistentParameters.init(trainingData:validationData:featureColumnNames:labelColumnName:recordingFileColumn:modelParameters:)(&v35, &v41, v19, v50, v52, v49, v51, v26);
    outlined destroy of MLActivityClassifier.ModelParameters(a7, type metadata accessor for MLActivityClassifier.ModelParameters);
    v27 = *v25;
    v28 = v25[1];
    v29 = v25[2];
    v38 = v25[3];
    v37 = v29;
    v36 = v28;
    v35 = v27;
    v30 = v34[0];
    v31 = v34[1];
    v32 = v34[3];
    v25[2] = v34[2];
    v25[1] = v31;
    *v25 = v30;
    v25[3] = v32;
    outlined release of MLActivityClassifier.PersistentParameters?(&v35, outlined consume of MLActivityClassifier.PersistentParameters?);
    outlined init with take of MLClassifierMetrics(a8, v10 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  }

  return v10;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> ActivityClassifierTrainingSessionDelegate.setUp()()
{
  v69 = v0;
  v79 = type metadata accessor for MLActivityClassifier.Trainer(0);
  v2 = *(*(v79 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v82 = &v65;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v89 = &v65;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingTablePrinter?) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = alloca(v8);
  v12 = alloca(v8);
  v78 = &v65;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLActivityClassifier.Trainer?) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v80 = &v65;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v81 = &v65;
  v18 = type metadata accessor for MLActivityClassifier.ModelParameters(0);
  v19 = *(*(v18 - 1) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v22 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v23 = *(*(v22 - 8) + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v26 = alloca(v23);
  v27 = alloca(v23);
  v28 = *(v1 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters);
  v29 = *(v1 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 16);
  v30 = *(v1 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 48);
  v67 = *(v1 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 32);
  v65 = v28;
  v66 = v29;
  v68 = v30;
  if (v67)
  {
    v85 = v22;
    v84 = &v65;
    v83 = &v65;
    v93 = v1;
    v71 = *(&v68 + 1);
    v74 = v68;
    v73 = *(&v67 + 1);
    v91 = DWORD2(v66);
    v72 = v65;
    *&v65 = 0;
    v31 = v66;
    v90 = BYTE8(v65);
    BYTE8(v65) = -1;
    v75 = v18[6];
    v77 = v18[7];
    v76 = v18[8];
    v32 = &v65 + v18[5];
    v88 = &v65;
    v70 = v67;
    v33 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
    swift_storeEnumTagMultiPayload(v32, v33, 2);
    v34 = v65;
    v92 = DWORD2(v65);
    outlined release of MLActivityClassifier.PersistentParameters?(&v65, outlined copy of MLActivityClassifier.PersistentParameters?);
    v35 = v91;
    outlined copy of MLDataTable?(v31, v91);
    outlined consume of MLDataTable?(v34, v92);
    *&v65 = v31;
    BYTE8(v65) = v35;
    v36 = v35;
    v37 = v77;
    *(&v65 + v77) = v74;
    *(&v65 + v37 + 8) = 0;
    v38 = v75;
    *(&v65 + v75) = v73;
    *(&v65 + v38 + 8) = 0;
    v39 = v76;
    *(&v65 + v76) = v71;
    *(&v65 + v39 + 8) = 0;
    v40 = v72;
    v86 = v72;
    v41 = v90;
    LOBYTE(v87) = v90 & 1;
    v94 = v31;
    LOBYTE(v95) = v36;
    outlined copy of MLDataTable?(v31, v36);
    outlined copy of Result<_DataTable, Error>(v40, v41);
    v42 = v88;
    v43 = v69;
    static MLActivityClassifier.validateAndConvertParameters(parameters:featureColumns:trainingTable:validationTable:)(&v65, v70, &v86, &v94);
    if (v43)
    {
      outlined release of MLActivityClassifier.PersistentParameters?(&v65, outlined consume of MLActivityClassifier.PersistentParameters?);
      outlined consume of MLDataTable?(v94, v95);
      outlined consume of Result<_DataTable, Error>(v86, v87);
      outlined destroy of MLActivityClassifier.ModelParameters(&v65, type metadata accessor for MLActivityClassifier.ModelParameters);
    }

    else
    {
      outlined consume of MLDataTable?(v94, v95);
      outlined consume of Result<_DataTable, Error>(v86, v87);
      outlined destroy of MLActivityClassifier.ModelParameters(&v65, type metadata accessor for MLActivityClassifier.ModelParameters);
      v46 = v79;
      v47 = v81;
      outlined init with copy of MLTrainingSessionParameters(v42, v81 + *(v79 + 20), type metadata accessor for MLActivityClassifier.Configuration);
      *v47 = 0xD00000000000001BLL;
      *(v47 + 1) = "missed_predicting_this" + 0x8000000000000000;
      *(v47 + *(v46 + 24)) = 0;
      __swift_storeEnumTagSinglePayload(v47, 0, 1, v46);
      v48 = v93 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainer;
      swift_beginAccess(v93 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainer, &v86, 33, 0);
      outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v47, v48, &demangling cache variable for type metadata for MLActivityClassifier.Trainer?);
      swift_endAccess(&v86);
      v49 = v48;
      v50 = v80;
      v51 = v46;
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v49, v80, &demangling cache variable for type metadata for MLActivityClassifier.Trainer?);
      if (__swift_getEnumTagSinglePayload(v50, 1, v46))
      {
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v50, &demangling cache variable for type metadata for MLActivityClassifier.Trainer?);
        v52 = 0;
        v53 = type metadata accessor for DataFrame(0);
        v54 = v89;
        __swift_storeEnumTagSinglePayload(v89, 1, 1, v53);
      }

      else
      {
        v55 = v50;
        v56 = v50;
        v57 = v82;
        outlined init with copy of MLTrainingSessionParameters(v55, v82, type metadata accessor for MLActivityClassifier.Trainer);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v56, &demangling cache variable for type metadata for MLActivityClassifier.Trainer?);
        v58 = v84;
        outlined init with copy of MLTrainingSessionParameters(v57 + *(v51 + 20), v84, type metadata accessor for MLActivityClassifier.Configuration);
        outlined destroy of MLActivityClassifier.ModelParameters(v57, type metadata accessor for MLActivityClassifier.Trainer);
        v54 = v89;
        outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v58 + *(v85 + 48), v89, &demangling cache variable for type metadata for DataFrame?);
        outlined destroy of MLActivityClassifier.ModelParameters(v58, type metadata accessor for MLActivityClassifier.Configuration);
        v59 = type metadata accessor for DataFrame(0);
        v52 = __swift_getEnumTagSinglePayload(v54, 1, v59) != 1;
      }

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v54, &demangling cache variable for type metadata for DataFrame?);
      v60 = v78;
      static MLActivityClassifier.makeTablePrinter(hasValidation:)(v52);
      v61 = type metadata accessor for TrainingTablePrinter(0);
      __swift_storeEnumTagSinglePayload(v60, 0, 1, v61);
      v62 = v93 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_tablePrinter;
      swift_beginAccess(v93 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_tablePrinter, &v86, 33, 0);
      outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v60, v62, &demangling cache variable for type metadata for TrainingTablePrinter?);
      swift_endAccess(&v86);
      v63 = v62;
      v64 = v83;
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v63, v83, &demangling cache variable for type metadata for TrainingTablePrinter?);
      if (__swift_getEnumTagSinglePayload(v64, 1, v61) == 1)
      {
        BUG();
      }

      TrainingTablePrinter.beginTable()();
      outlined destroy of MLActivityClassifier.ModelParameters(v64, type metadata accessor for TrainingTablePrinter);
      ActivityClassifierTrainingSessionDelegate.setupCachedSamples()(*&v28, *&v29);
      outlined destroy of MLActivityClassifier.ModelParameters(v88, type metadata accessor for MLActivityClassifier.Configuration);
      outlined release of MLActivityClassifier.PersistentParameters?(&v65, outlined consume of MLActivityClassifier.PersistentParameters?);
    }
  }

  else
  {
    v44 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v44, 0, 0);
    *v45 = 0xD000000000000061;
    *(v45 + 8) = "tylized validation result" + 0x8000000000000000;
    *(v45 + 16) = 0;
    *(v45 + 32) = 0;
    *(v45 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v44);
  }
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> ActivityClassifierTrainingSessionDelegate.resume(from:)(Swift::OpaquePointer from)
{
  v85 = v1;
  v113 = v2;
  rawValue = from._rawValue;
  v92 = type metadata accessor for MLActivityClassifier.Trainer(0);
  v3 = *(*(v92 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v94 = &v81;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v106 = &v81;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingTablePrinter?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v90 = &v81;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v91 = &v81;
  v87 = type metadata accessor for URL(0);
  v88 = *(v87 - 8);
  v14 = *(v88 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v86 = &v81;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLActivityClassifier.Trainer?) - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v93 = &v81;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v105 = &v81;
  v112 = type metadata accessor for MLActivityClassifier.ModelParameters(0);
  v22 = *(*(v112 - 1) + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v96 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v25 = *(*(v96 - 8) + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v95 = &v81;
  v28 = alloca(v25);
  v29 = alloca(v25);
  v89 = &v81;
  v30 = alloca(v25);
  v31 = alloca(v25);
  v104 = &v81;
  v32 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64);
  v33 = alloca(v32);
  v34 = alloca(v32);
  v35 = type metadata accessor for MLCheckpoint(0);
  v36 = *(*(v35 - 8) + 64);
  v37 = alloca(v36);
  v38 = alloca(v36);
  specialized BidirectionalCollection.last.getter(rawValue);
  if (__swift_getEnumTagSinglePayload(&v81, 1, v35) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v81, &demangling cache variable for type metadata for MLCheckpoint?);
    v39 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v39, 0, 0);
    *v40 = 0xD00000000000001DLL;
    *(v40 + 8) = "reated." + 0x8000000000000000;
    *(v40 + 16) = 0;
    *(v40 + 32) = 0;
    *(v40 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v39);
    return;
  }

  outlined init with take of MLClassifierMetrics(&v81, &v81, type metadata accessor for MLCheckpoint);
  v41 = *(v113 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters);
  v42 = *(v113 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 16);
  v43 = *(v113 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 48);
  v83 = *(v113 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 32);
  v81 = v41;
  v82 = v42;
  v84 = v43;
  if (!v83)
  {
    v57 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v57, 0, 0);
    *v58 = 0xD000000000000061;
    *(v58 + 8) = "tylized validation result" + 0x8000000000000000;
    *(v58 + 16) = 0;
    *(v58 + 32) = 0;
    *(v58 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v57);
    v61 = &v81;
    goto LABEL_8;
  }

  rawValue = &v81;
  v97 = *(&v84 + 1);
  v100 = v84;
  v99 = *(&v83 + 1);
  v110 = DWORD2(v82);
  v98 = v81;
  *&v81 = 0;
  v44 = v82;
  v109 = BYTE8(v81);
  BYTE8(v81) = -1;
  v101 = v112[6];
  v103 = v112[7];
  v102 = v112[8];
  v45 = &v81 + v112[5];
  v112 = v83;
  v46 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
  swift_storeEnumTagMultiPayload(v45, v46, 2);
  v47 = v81;
  v111 = DWORD2(v81);
  outlined release of MLActivityClassifier.PersistentParameters?(&v81, outlined copy of MLActivityClassifier.PersistentParameters?);
  v48 = v110;
  outlined copy of MLDataTable?(v44, v110);
  outlined consume of MLDataTable?(v47, v111);
  *&v81 = v44;
  BYTE8(v81) = v48;
  v49 = v48;
  v50 = v103;
  *(&v81 + v103) = v100;
  *(&v81 + v50 + 8) = 0;
  v51 = v101;
  *(&v81 + v101) = v99;
  *(&v81 + v51 + 8) = 0;
  v52 = v102;
  *(&v81 + v102) = v97;
  *(&v81 + v52 + 8) = 0;
  v53 = v98;
  v107 = v98;
  v54 = v109;
  LOBYTE(v108) = v109 & 1;
  v114 = v44;
  LOBYTE(v115) = v49;
  outlined copy of MLDataTable?(v44, v49);
  outlined copy of Result<_DataTable, Error>(v53, v54);
  v55 = v104;
  v56 = v85;
  static MLActivityClassifier.validateAndConvertParameters(parameters:featureColumns:trainingTable:validationTable:)(&v81, v112, &v107, &v114);
  if (v56)
  {
    outlined release of MLActivityClassifier.PersistentParameters?(&v81, outlined consume of MLActivityClassifier.PersistentParameters?);
    outlined consume of MLDataTable?(v114, v115);
    outlined consume of Result<_DataTable, Error>(v107, v108);
    outlined destroy of MLActivityClassifier.ModelParameters(&v81, type metadata accessor for MLActivityClassifier.ModelParameters);
    v61 = rawValue;
LABEL_8:
    outlined destroy of MLActivityClassifier.ModelParameters(v61, type metadata accessor for MLCheckpoint);
    return;
  }

  outlined consume of MLDataTable?(v114, v115);
  outlined consume of Result<_DataTable, Error>(v107, v108);
  outlined destroy of MLActivityClassifier.ModelParameters(&v81, type metadata accessor for MLActivityClassifier.ModelParameters);
  v59 = v86;
  (*(v88 + 16))(v86, rawValue, v87);
  v60 = v89;
  outlined init with copy of MLTrainingSessionParameters(v55, v89, type metadata accessor for MLActivityClassifier.Configuration);
  MLActivityClassifier.Trainer.init(checkpoint:configuration:)(v59, v60);
  v62 = v105;
  v63 = v92;
  __swift_storeEnumTagSinglePayload(v105, 0, 1, v92);
  v64 = v113 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainer;
  swift_beginAccess(v113 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainer, &v107, 33, 0);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v62, v64, &demangling cache variable for type metadata for MLActivityClassifier.Trainer?);
  swift_endAccess(&v107);
  v65 = v64;
  v66 = v63;
  v67 = v93;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v65, v93, &demangling cache variable for type metadata for MLActivityClassifier.Trainer?);
  if (__swift_getEnumTagSinglePayload(v67, 1, v66))
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v67, &demangling cache variable for type metadata for MLActivityClassifier.Trainer?);
    v68 = 0;
    v69 = type metadata accessor for DataFrame(0);
    v70 = v106;
    __swift_storeEnumTagSinglePayload(v106, 1, 1, v69);
  }

  else
  {
    v71 = v67;
    v72 = v67;
    v73 = v94;
    outlined init with copy of MLTrainingSessionParameters(v71, v94, type metadata accessor for MLActivityClassifier.Trainer);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v72, &demangling cache variable for type metadata for MLActivityClassifier.Trainer?);
    v74 = v95;
    outlined init with copy of MLTrainingSessionParameters(v73 + *(v66 + 20), v95, type metadata accessor for MLActivityClassifier.Configuration);
    outlined destroy of MLActivityClassifier.ModelParameters(v73, type metadata accessor for MLActivityClassifier.Trainer);
    v70 = v106;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v74 + *(v96 + 48), v106, &demangling cache variable for type metadata for DataFrame?);
    outlined destroy of MLActivityClassifier.ModelParameters(v74, type metadata accessor for MLActivityClassifier.Configuration);
    v75 = type metadata accessor for DataFrame(0);
    v68 = __swift_getEnumTagSinglePayload(v70, 1, v75) != 1;
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v70, &demangling cache variable for type metadata for DataFrame?);
  v76 = v91;
  static MLActivityClassifier.makeTablePrinter(hasValidation:)(v68);
  v77 = type metadata accessor for TrainingTablePrinter(0);
  __swift_storeEnumTagSinglePayload(v76, 0, 1, v77);
  v78 = v113 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_tablePrinter;
  swift_beginAccess(v113 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_tablePrinter, &v107, 33, 0);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v76, v78, &demangling cache variable for type metadata for TrainingTablePrinter?);
  swift_endAccess(&v107);
  v79 = v78;
  v80 = v90;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v79, v90, &demangling cache variable for type metadata for TrainingTablePrinter?);
  if (__swift_getEnumTagSinglePayload(v80, 1, v77) == 1)
  {
    BUG();
  }

  TrainingTablePrinter.beginTable()();
  outlined destroy of MLActivityClassifier.ModelParameters(v80, type metadata accessor for TrainingTablePrinter);
  ActivityClassifierTrainingSessionDelegate.setupCachedSamples()(*&v41, *&v42);
  outlined release of MLActivityClassifier.PersistentParameters?(&v81, outlined consume of MLActivityClassifier.PersistentParameters?);
  outlined destroy of MLActivityClassifier.ModelParameters(v104, type metadata accessor for MLActivityClassifier.Configuration);
  outlined destroy of MLActivityClassifier.ModelParameters(rawValue, type metadata accessor for MLCheckpoint);
}

uint64_t ActivityClassifierTrainingSessionDelegate.setupCachedSamples()(double a1, double a2)
{
  v138 = v2;
  v124 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<Column<String>>);
  v4 = *(*(v124 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v116 = v108;
  v137 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v117 = *(v137 - 8);
  v7 = *(v117 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v125 = v108;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v118 = v108;
  v12 = *(*(type metadata accessor for MLActivityClassifier.DataBatcher(0) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v120 = v108;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v133 = v108;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v110 = v108;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v130 = v108;
  v131 = type metadata accessor for DataFrame(0);
  v134 = *(v131 - 8);
  v22 = *(v134 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v119 = v108;
  v25 = alloca(v22);
  v26 = alloca(v22);
  v129 = v108;
  v27 = alloca(v22);
  v28 = alloca(v22);
  v126 = v108;
  v29 = alloca(v22);
  v30 = alloca(v22);
  v135 = v108;
  v31 = type metadata accessor for MLActivityClassifier.Trainer(0);
  v32 = *(*(v31 - 8) + 64);
  v33 = alloca(v32);
  v34 = alloca(v32);
  v136 = v108;
  v35 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLActivityClassifier.Trainer?) - 8) + 64);
  v36 = alloca(v35);
  v37 = alloca(v35);
  v115 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v38 = *(*(v115 - 8) + 64);
  v39 = alloca(v38);
  v40 = alloca(v38);
  v127 = v108;
  v41 = alloca(v38);
  v42 = alloca(v38);
  v132 = v108;
  v128 = v3;
  v43 = v3 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainer;
  swift_beginAccess(v3 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainer, v108, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v43, v108, &demangling cache variable for type metadata for MLActivityClassifier.Trainer?);
  if (__swift_getEnumTagSinglePayload(v108, 1, v31))
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v108, &demangling cache variable for type metadata for MLActivityClassifier.Trainer?);
    v44 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v44, 0, 0);
    *v45 = 0xD00000000000001ELL;
    *(v45 + 8) = "Training samples are missing" + 0x8000000000000000;
    *(v45 + 16) = 0;
    *(v45 + 32) = 0;
    *(v45 + 48) = 0;
    return swift_willThrow(&type metadata for MLCreateError, v44);
  }

  v47 = v136;
  outlined init with copy of MLTrainingSessionParameters(v108, v136, type metadata accessor for MLActivityClassifier.Trainer);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v108, &demangling cache variable for type metadata for MLActivityClassifier.Trainer?);
  v48 = v127;
  outlined init with copy of MLTrainingSessionParameters(v47 + *(v31 + 20), v127, type metadata accessor for MLActivityClassifier.Configuration);
  outlined destroy of MLActivityClassifier.ModelParameters(v47, type metadata accessor for MLActivityClassifier.Trainer);
  v49 = v48;
  v50 = v132;
  outlined init with take of MLClassifierMetrics(v49, v132, type metadata accessor for MLActivityClassifier.Configuration);
  v51 = v130;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v50 + *(v115 + 44), v130, &demangling cache variable for type metadata for DataFrame?);
  v52 = v131;
  v53 = v50;
  if (__swift_getEnumTagSinglePayload(v51, 1, v131) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v51, &demangling cache variable for type metadata for DataFrame?);
    v54 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v54, 0, 0);
    *v55 = 0xD000000000000039;
    *(v55 + 8) = "Model configuration is not set" + 0x8000000000000000;
    *(v55 + 16) = 0;
    *(v55 + 32) = 0;
    *(v55 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v54);
    v56 = v50;
    return outlined destroy of MLActivityClassifier.ModelParameters(v56, type metadata accessor for MLActivityClassifier.Configuration);
  }

  v57 = v52;
  v58 = v134;
  v59 = v135;
  v60 = v51;
  v61 = v57;
  v112 = *(v134 + 32);
  v112(v135, v60, v57);
  v113 = *(v58 + 16);
  v113(v126, v59, v61);
  v122 = v53[8];
  v62 = v53[9];
  v121 = v53[6];
  v63 = v53[7];
  v127 = v53[4];
  v64 = v53[5];
  v62;
  v63;
  v64;
  v123 = v63;
  v65 = v63;
  v66 = v121;
  v111 = v64;
  v67 = v138;
  MLActivityClassifier.DataBatcher.init(input:sessionIdColumn:labelColumn:featureColumns:windowSize:sortSessions:mode:)(v126, v122, v62, v121, v65, v64, a1, v127, 0, 0);
  v136 = v67;
  if (v67)
  {
    goto LABEL_19;
  }

  v114 = v62;
  v68 = v118;
  DataFrame.subscript.getter(v66, v123, &type metadata for String);
  v69 = v137;
  (*(v117 + 16))(v125, v68, v137);
  v70 = lazy protocol witness table accessor for type Column<String> and conformance Column<A>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &protocol conformance descriptor for Column<A>);
  v71 = v116;
  dispatch thunk of Sequence.makeIterator()(v69, v70);
  v124 = &v71[*(v124 + 36)];
  v125 = lazy protocol witness table accessor for type Column<String> and conformance Column<A>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &protocol conformance descriptor for Column<A>);
  v138 = _swiftEmptyArrayStorage;
LABEL_8:
  v72 = v116;
  v73 = v124;
  v74 = v125;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter(v137, v74);
    if (*v73 == v109[0])
    {
      break;
    }

    v130 = dispatch thunk of Collection.subscript.read(v109, v73, v137, v74);
    v126 = *v75;
    v76 = v75[1];
    v76;
    (v130)(v109, 0);
    dispatch thunk of Collection.formIndex(after:)(v73, v137, v74);
    if (v76)
    {
      v77 = v126;
      if (!swift_isUniquelyReferenced_nonNull_native(v138))
      {
        v138 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v138[2] + 1, 1, v138);
      }

      v78 = v138[2];
      v79 = v138[3];
      v80 = v78 + 1;
      if (v79 >> 1 <= v78)
      {
        v130 = (v78 + 1);
        v83 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v79 >= 2, v78 + 1, 1, v138);
        v80 = v130;
        v138 = v83;
      }

      v81 = v138;
      v138[2] = v80;
      v82 = 2 * v78;
      v81[v82 + 4] = v77;
      v81[v82 + 5] = v76;
      goto LABEL_8;
    }
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v72, &demangling cache variable for type metadata for IndexingIterator<Column<String>>);
  (*(v117 + 8))(v118, v137);
  v84 = v138;
  v85 = v136;
  v86 = specialized Sequence.sorted(by:)(v138, specialized closure #1 in Sequence<>.uniqued(), 0);
  v84;
  v87 = OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_classLabels;
  v88 = v128;
  v89 = *(v128 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_classLabels);
  *(v128 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_classLabels) = v86;
  v89;
  v137 = v87;
  v90 = *(v88 + v87);
  if (!v90)
  {
    BUG();
  }

  *(v88 + v87);
  v53 = v132;
  v91 = v133;
  v92 = MLActivityClassifier.DataBatcher.asWeightedSamples(with:classLabels:labels:)(v132, v90, a1, a2);
  v136 = v85;
  if (v85)
  {
    v90;
    outlined destroy of MLActivityClassifier.ModelParameters(v91, type metadata accessor for MLActivityClassifier.DataBatcher);
LABEL_19:
    (*(v134 + 8))(v135, v131);
    return outlined destroy of MLActivityClassifier.ModelParameters(v53, type metadata accessor for MLActivityClassifier.Configuration);
  }

  v93 = v92;
  v90;
  v94 = *(v128 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingDataSamples);
  *(v128 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingDataSamples) = v93;
  v94;
  v95 = v110;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v53 + *(v115 + 48), v110, &demangling cache variable for type metadata for DataFrame?);
  v96 = v131;
  if (__swift_getEnumTagSinglePayload(v95, 1, v131) != 1)
  {
    v97 = v129;
    v112(v129, v95, v96);
    v113(v119, v97, v96);
    v98 = v114;
    v114;
    v99 = v123;
    v123;
    v100 = v111;
    v111;
    v101 = v136;
    MLActivityClassifier.DataBatcher.init(input:sessionIdColumn:labelColumn:featureColumns:windowSize:sortSessions:mode:)(v119, v122, v98, v121, v99, v100, a1, v127, 0, 1);
    if (v101)
    {
      v102 = *(v134 + 8);
      v102(v129, v96);
      outlined destroy of MLActivityClassifier.ModelParameters(v133, type metadata accessor for MLActivityClassifier.DataBatcher);
      v102(v135, v96);
    }

    else
    {
      v103 = v120;
      v104 = *(v128 + v137);
      if (!v104)
      {
        BUG();
      }

      *(v128 + v137);
      v137 = MLActivityClassifier.DataBatcher.asWeightedSamples(with:classLabels:labels:)(v132, v104, a1, a2);
      v104;
      outlined destroy of MLActivityClassifier.ModelParameters(v103, type metadata accessor for MLActivityClassifier.DataBatcher);
      v105 = *(v134 + 8);
      v106 = v131;
      v105(v129, v131);
      outlined destroy of MLActivityClassifier.ModelParameters(v133, type metadata accessor for MLActivityClassifier.DataBatcher);
      v105(v135, v106);
      v107 = *(v128 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_validationDataSamples);
      *(v128 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_validationDataSamples) = v137;
      v107;
    }

    v56 = v132;
    return outlined destroy of MLActivityClassifier.ModelParameters(v56, type metadata accessor for MLActivityClassifier.Configuration);
  }

  outlined destroy of MLActivityClassifier.ModelParameters(v133, type metadata accessor for MLActivityClassifier.DataBatcher);
  (*(v134 + 8))(v135, v96);
  outlined destroy of MLActivityClassifier.ModelParameters(v53, type metadata accessor for MLActivityClassifier.Configuration);
  return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v95, &demangling cache variable for type metadata for DataFrame?);
}

Swift::tuple_Int_metrics_OpaquePointer_finished_Bool __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> ActivityClassifierTrainingSessionDelegate.train(from:)(Swift::Int from)
{
  v35 = type metadata accessor for TrainingTablePrinter(0);
  v5 = *(*(v35 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v41 = &v31;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingTablePrinter?) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v36 = &v31;
  v11 = v2 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_sessionParameters;
  v12 = type metadata accessor for MLTrainingSessionParameters(0);
  v13 = *(*(v12 + 20) + v11);
  if (__OFADD__(v13, from))
  {
    BUG();
  }

  v14 = *(v11 + *(v12 + 28));
  v15 = v14 - from;
  if (__OFSUB__(v14, from))
  {
    BUG();
  }

  if (v13 < v15)
  {
    v15 = v13;
  }

  if (v15 <= 0)
  {
    LOBYTE(v17) = 1;
    v16 = _swiftEmptyDictionarySingleton;
    v25 = 0;
  }

  else
  {
    v44 = v14;
    v43 = v13 + from;
    v46 = v15;
    v42 = from;
    v48 = v1;
    v34 = OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingDataSamples;
    v37 = OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_validationDataSamples;
    v38 = v2 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainer;
    v39 = v2 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_tablePrinter;
    swift_beginAccess(v2 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_tablePrinter, v32, 0, 0);
    v16 = (&dword_0 + 1);
    v40 = v2;
    while (1)
    {
      v17 = *(v2 + v34);
      if (!v17)
      {
        v17 = "Model has not been trained" + 0x8000000000000000;
        v26 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v26, 0, 0);
        *v27 = 0xD00000000000001CLL;
        *(v27 + 8) = "Model has not been trained" + 0x8000000000000000;
        *(v27 + 16) = 0;
        *(v27 + 32) = 0;
        *(v27 + 48) = 0;
        v25 = swift_willThrow(&type metadata for MLCreateError, v26);
        goto LABEL_21;
      }

      v45 = v16;
      v16 = *(v2 + v37);
      v18 = v38;
      swift_beginAccess(v38, v33, 33, 0);
      v19 = type metadata accessor for MLActivityClassifier.Trainer(0);
      if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
      {
        BUG();
      }

      v16;
      v17;
      v20 = v48;
      metrics._rawValue = MLActivityClassifier.Trainer.iterateTraining(using:validationSamples:)(v17, v16, v3, v4);
      swift_endAccess(v33);
      v48 = v20;
      if (v20)
      {
        v17;
        v25 = v16;
        goto LABEL_21;
      }

      v16;
      v17;
      v21 = v36;
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v39, v36, &demangling cache variable for type metadata for TrainingTablePrinter?);
      if (__swift_getEnumTagSinglePayload(v21, 1, v35))
      {
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v21, &demangling cache variable for type metadata for TrainingTablePrinter?);
        v22 = v45;
      }

      else
      {
        v23 = v41;
        outlined init with copy of MLTrainingSessionParameters(v21, v41, type metadata accessor for TrainingTablePrinter);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v21, &demangling cache variable for type metadata for TrainingTablePrinter?);
        v22 = v45;
        if (__OFADD__(v45, v42))
        {
          BUG();
        }

        TrainingTablePrinter.print(iteration:metrics:)(v45 + v42, metrics);
        outlined destroy of MLActivityClassifier.ModelParameters(v23, type metadata accessor for TrainingTablePrinter);
      }

      v2 = v40;
      if (v46 == v22)
      {
        break;
      }

      metrics._rawValue;
      v24 = __OFADD__(1, v22);
      v16 = (v22 + 1);
      if (v24)
      {
        BUG();
      }
    }

    LOBYTE(v17) = v43 >= v44;
    rawValue = metrics._rawValue;
    v16 = specialized _dictionaryUpCast<A, B, C, D>(_:)(metrics._rawValue);
    rawValue;
    v25 = v46;
  }

LABEL_21:
  v29 = v16;
  v30 = v17;
  result.metrics._rawValue = v29;
  result._0 = v25;
  result.finished = v30;
  return result;
}

Swift::tuple_Int_finished_Bool __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> ActivityClassifierTrainingSessionDelegate.evaluate(from:)(Swift::Int from)
{
  v25 = v1;
  v3 = type metadata accessor for TrainingTablePrinter(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v24 = v21;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingTablePrinter?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v23 = v2;
  v10 = v2 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_tablePrinter;
  swift_beginAccess(v2 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_tablePrinter, v21, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, v21, &demangling cache variable for type metadata for TrainingTablePrinter?);
  if (__swift_getEnumTagSinglePayload(v21, 1, v3))
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v21, &demangling cache variable for type metadata for TrainingTablePrinter?);
  }

  else
  {
    v11 = v24;
    outlined init with copy of MLTrainingSessionParameters(v21, v24, type metadata accessor for TrainingTablePrinter);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v21, &demangling cache variable for type metadata for TrainingTablePrinter?);
    v12 = *(v11 + *(v3 + 20));
    static os_log_type_t.info.getter();
    v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v14 = swift_allocObject(v13, 72, 7);
    v14[2] = 1;
    v14[3] = 2;
    v14[7] = &type metadata for Int;
    v14[8] = &protocol witness table for Int;
    v14[4] = 3;
    os_log(_:dso:log:type:_:)("event: %lu", 10);
    v14;
    outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for TrainingTablePrinter);
  }

  v15 = ActivityClassifierTrainingSessionDelegate.trainer.modify(v22);
  v17 = v16;
  v18 = type metadata accessor for MLActivityClassifier.Trainer(0);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18))
  {
    (v15)(v22, 0);
  }

  else
  {
    if (!*(v17 + *(v18 + 24)))
    {
      BUG();
    }

    MLActivityClassifier.Trainer.ModelContainer.compileModel()();
    (v15)(v22, v19 != 0);
  }

  v20._0 = 1;
  v20.finished = 1;
  return v20;
}

uint64_t ActivityClassifierTrainingSessionDelegate.saveCheckpoint(to:phase:iteration:)(uint64_t a1, _BYTE *a2)
{
  v4 = v2;
  v23 = a1;
  v5 = 0xEB0000000064657ALL;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLActivityClassifier.Trainer?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v22 = v21;
  switch(*a2)
  {
    case 0:
      v9 = *a2;
      v24 = v2;
      v10 = 0x696C616974696E69;
      break;
    case 1:
      v24 = v2;
      v10 = 0x6974636172747865;
      goto LABEL_7;
    case 2:
      0xE800000000000000;
      goto LABEL_9;
    case 3:
      v24 = v2;
      v10 = 0x697461756C617665;
LABEL_7:
      v5 = 0xEA0000000000676ELL;
      break;
    case 4:
      v24 = v2;
      v5 = 0xEB00000000676E69;
      v10 = 0x636E657265666E69;
      break;
  }

  LODWORD(v11) = 0;
  v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v10, v5, 0x676E696E69617274, 0xE800000000000000, 0);
  v5;
  v13 = (v12 & 1) == 0;
  v4 = v24;
  if (!v13)
  {
LABEL_9:
    v14 = OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainer + v3;
    swift_beginAccess(v14, v21, 0, 0);
    v15 = v22;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v14, v22, &demangling cache variable for type metadata for MLActivityClassifier.Trainer?);
    v11 = type metadata accessor for MLActivityClassifier.Trainer(0);
    if (__swift_getEnumTagSinglePayload(v15, 1, v11) == 1)
    {
      BUG();
    }

    v16 = *(v11 + 24);
    if (*(v15 + v16))
    {
      v17 = *(v15 + v16);

      specialized _ModelCheckpoint<>.save(to:)(v23);

      if (!v4)
      {
        outlined destroy of MLActivityClassifier.ModelParameters(v15, type metadata accessor for MLActivityClassifier.Trainer);
        LOBYTE(v11) = 1;
        return v11;
      }
    }

    else
    {
      v18 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v18, 0, 0);
      *v19 = 0xD00000000000001ALL;
      *(v19 + 8) = "validationDataSamples" + 0x8000000000000000;
      *(v19 + 16) = 0;
      *(v19 + 32) = 0;
      *(v19 + 48) = 0;
      swift_willThrow(&type metadata for MLCreateError, v18);
    }

    outlined destroy of MLActivityClassifier.ModelParameters(v15, type metadata accessor for MLActivityClassifier.Trainer);
  }

  return v11;
}

NSURL *ActivityClassifierTrainingSessionDelegate.save(to:)(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 32))
  {
    v2 = (OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + v1);
    v8 = v2[1];
    v7 = *v2;
    v3 = *(v2 + 40);
    v9 = *(v2 + 7);
    return MLActivityClassifier.PersistentParameters.save(toSessionDirectory:)(a1);
  }

  else
  {
    v5 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v5, 0, 0);
    *v6 = 0xD000000000000030;
    *(v6 + 8) = "Feature Extractor" + 0x8000000000000000;
    *(v6 + 16) = 0;
    *(v6 + 32) = 0;
    *(v6 + 48) = 2;
    return swift_willThrow(&type metadata for MLCreateError, v5);
  }
}

NSURL *ActivityClassifierTrainingSessionDelegate.restore(from:phase:)(uint64_t a1)
{
  v3 = type metadata accessor for URL(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  (*(v4 + 16))(v23, a1, v3);
  result = MLActivityClassifier.PersistentParameters.init(sessionDirectory:)(v23);
  if (!v1)
  {
    v31[3] = v38;
    v31[2] = v37;
    v31[1] = v36;
    v31[0] = v35;
    v9 = (v2 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters);
    v10 = *(v2 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters);
    v11 = *(v2 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 16);
    v12 = *(v2 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 48);
    v33 = *(v2 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 32);
    v32[0] = v10;
    v32[1] = v11;
    v34 = v12;
    v13 = *(v2 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters);
    if (v33)
    {
      v23[1] = v9[1];
      v23[0] = v13;
      v24 = v33;
      v25 = *(v9 + 40);
      v26 = *(v9 + 7);
      v15 = v9[1];
      v16 = v9[2];
      v17 = v9[3];
      v27 = *v9;
      v14 = *&v27;
      v28 = v15;
      v29 = v16;
      v30 = v17;
      outlined retain of MLActivityClassifier.PersistentParameters(&v27);
      ActivityClassifierTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:phase:)(&v35, v23, v14);
      outlined release of MLActivityClassifier.PersistentParameters?(v32, outlined consume of MLActivityClassifier.PersistentParameters?);
      return outlined release of MLActivityClassifier.PersistentParameters(v31);
    }

    else
    {
      v18 = v9[1];
      v19 = v9[2];
      v30 = v9[3];
      v29 = v19;
      v28 = v18;
      v27 = v13;
      v20 = v36;
      v21 = v37;
      v22 = v38;
      *v9 = v35;
      v9[1] = v20;
      v9[2] = v21;
      v9[3] = v22;
      return outlined release of MLActivityClassifier.PersistentParameters?(&v27, outlined consume of MLActivityClassifier.PersistentParameters?);
    }
  }

  return result;
}

uint64_t ActivityClassifierTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:phase:)(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(a2 + 48);
  if (*(a1 + 48) != v4)
  {
    *&v271 = *(a1 + 48);
    v198 = lazy protocol witness table accessor for type Int and conformance Int();
    v267[1] = BinaryInteger.description.getter(&type metadata for Int, v198);
    *&v270 = v199;
    *&v271 = v4;
    v200 = BinaryInteger.description.getter(&type metadata for Int, v198);
    v202 = v201;
    v203 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v203, 0, 0);
    *v204 = 0x6953206863746142;
    *(v204 + 8) = 0xEA0000000000657ALL;
LABEL_149:
    *(v204 + 16) = v267[1];
    v205 = v270;
LABEL_151:
    *(v204 + 24) = v205;
    *(v204 + 32) = v200;
    *(v204 + 40) = v202;
    *(v204 + 48) = 3;
    return swift_willThrow(&type metadata for MLCreateError, v203);
  }

  v5 = *(a2 + 40);
  if (*(a1 + 40) != v5)
  {
    v267[1] = "metricsAttributesDictionary" + 0x8000000000000000;
    v206 = lazy protocol witness table accessor for type Int and conformance Int();
    *&v270 = BinaryInteger.description.getter(&type metadata for Int, v206);
    v274 = v207;
    *&v271 = v5;
    v200 = BinaryInteger.description.getter(&type metadata for Int, v206);
    v202 = v208;
    v203 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v203, 0, 0);
    *v204 = 0xD000000000000012;
    *(v204 + 8) = v267[1];
    *(v204 + 16) = v270;
    v205 = v274;
    goto LABEL_151;
  }

  v6 = *(a2 + 56);
  if (*(a1 + 56) != v6)
  {
    *&v271 = *(a1 + 56);
    v209 = lazy protocol witness table accessor for type Int and conformance Int();
    v267[1] = BinaryInteger.description.getter(&type metadata for Int, v209);
    *&v270 = v210;
    *&v271 = v6;
    v200 = BinaryInteger.description.getter(&type metadata for Int, v209);
    v202 = v211;
    v203 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v203, 0, 0);
    *v204 = 0xD000000000000016;
    *(v204 + 8) = "Number of Labels" + 0x8000000000000000;
    goto LABEL_149;
  }

  v267[1] = v3;
  v7 = *a1;
  v8 = *(a1 + 8);
  v267[0] = *(a1 + 32);
  v9 = *a2;
  v10 = *(a2 + 8);
  v254 = *(a2 + 32);
  v259 = v7;
  LOBYTE(v270) = v8 & 1;
  LOBYTE(v260) = v8 & 1;
  v263 = v8;
  v252 = v7;
  v256 = v8;
  outlined copy of Result<_DataTable, Error>(v7, v8);
  v11._countAndFlagsBits = 0x6C6562616CLL;
  v11._object = 0xE500000000000000;
  MLDataTable.subscript.getter(v11);
  outlined consume of Result<_DataTable, Error>(v259, v260);
  v259 = v271;
  LOBYTE(v260) = BYTE8(v271);
  v12 = Array<A>.init(_:)(&v259, a3);
  v259 = v9;
  LOBYTE(v274) = v10 & 1;
  LOBYTE(v260) = v10 & 1;
  v264 = v10;
  v253 = v9;
  v257 = v10;
  outlined copy of Result<_DataTable, Error>(v9, v10);
  v11._countAndFlagsBits = 0x6C6562616CLL;
  v11._object = 0xE500000000000000;
  MLDataTable.subscript.getter(v11);
  outlined consume of Result<_DataTable, Error>(v259, v260);
  v259 = v271;
  LOBYTE(v260) = BYTE8(v271);
  v13 = Array<A>.init(_:)(&v259, a3);
  LOBYTE(v9) = _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CreateML11MLDataValueO_Tt1g5(v12, v13);
  v12;
  v13;
  if ((v9 & 1) == 0)
  {
    goto LABEL_167;
  }

  v259 = v252;
  LOBYTE(v260) = v270;
  outlined copy of Result<_DataTable, Error>(v252, v256);
  v14._countAndFlagsBits = 0x5F6E6F6973736573;
  v14._object = 0xEA00000000006469;
  MLDataTable.subscript.getter(v14);
  outlined consume of Result<_DataTable, Error>(v259, v260);
  v259 = v271;
  LOBYTE(v260) = BYTE8(v271);
  v15 = Array<A>.init(_:)(&v259, a3);
  v259 = v253;
  LOBYTE(v260) = v274;
  outlined copy of Result<_DataTable, Error>(v253, v257);
  v14._countAndFlagsBits = 0x5F6E6F6973736573;
  v14._object = 0xEA00000000006469;
  MLDataTable.subscript.getter(v14);
  outlined consume of Result<_DataTable, Error>(v259, v260);
  v259 = v271;
  LOBYTE(v260) = BYTE8(v271);
  v16 = Array<A>.init(_:)(&v259, a3);
  ML11MLDataValueO_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CreateML11MLDataValueO_Tt1g5(v15, v16);
  v15;
  v16;
  if ((ML11MLDataValueO_Tt1g5 & 1) == 0)
  {
    goto LABEL_167;
  }

  v18 = v254;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v267[0], v254) & 1) == 0)
  {
    goto LABEL_167;
  }

  result = v254[2];
  v241 = result;
  if (!result)
  {
    return result;
  }

  v240 = v254 + 4;
  v245 = "ml.activityclassifier" + 0x8000000000000000;
  v254;
  v20 = v254;
  v21 = 0;
  v246 = 0xD00000000000001FLL;
  v22 = v267[1];
  while (1)
  {
    if (v21 >= v20[2])
    {
      BUG();
    }

    v239 = v21;
    v23 = v240[2 * v21];
    v24 = v240[2 * v21 + 1];
    v269 = *&v24;
    v267[0] = v23;
    if (v263)
    {
      swift_willThrow(v20, v18);
      outlined copy of Result<_DataTable, Error>(v252, 1);
      v24;
      object = 0;
LABEL_14:
      *&v271 = 0;
      *(&v271 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(34);
      *(&v271 + 1);
      *&v271 = v246;
      *(&v271 + 1) = v245;
      v27._countAndFlagsBits = v267[0];
      v27._object = v24;
      String.append(_:)(v27);
      v27._countAndFlagsBits = 34;
      v27._object = 0xE100000000000000;
      String.append(_:)(v27);
      *&v267[1] = v271;
      v28 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      v29 = swift_allocError(&type metadata for MLCreateError, v28, 0, 0);
      *v30 = *&v267[1];
      a3 = 0.0;
      *(v30 + 16) = 0;
      *(v30 + 32) = 0;
      *(v30 + 48) = 1;
      outlined consume of Result<_DataTable, Error>(v252, v256);
      v31 = v29;
      v32 = 1;
LABEL_15:
      outlined consume of Result<_DataTable, Error>(v31, v32);
      v258 = _swiftEmptyArrayStorage;
      goto LABEL_16;
    }

    v25 = *(v252 + 16);
    outlined copy of Result<_DataTable, Error>(v252, 0);
    v24;

    v26 = specialized String.withCString<A>(_:)(closure #1 in CMLTable.column(name:)partial apply, v25, v23, v24);
    if (v22)
    {
      v22;

      object = 0;
      goto LABEL_14;
    }

    v176 = v26;
    object = 0;

    outlined consume of Result<_DataTable, Error>(v252, 0);
    v177 = type metadata accessor for _UntypedColumn();
    v178 = swift_allocObject(v177, 24, 7);
    *(v178 + 16) = v176;
    outlined copy of Result<_DataTable, Error>(v178, 0);
    v179 = CMLColumn.size.getter();
    *&v270 = v178;
    outlined consume of Result<_DataTable, Error>(v178, 0);
    v274 = v179;
    if (v179 < 0)
    {
      BUG();
    }

    if (!v179)
    {
      v31 = v270;
      v32 = 0;
      goto LABEL_15;
    }

    v180 = 0;
    v181 = _swiftEmptyArrayStorage;
    do
    {
      v182 = v270;
      outlined copy of Result<_DataTable, Error>(v270, 0);
      _UntypedColumn.valueAtIndex(index:)(v180, a3);
      outlined consume of Result<_DataTable, Error>(v182, 0);
      *&v267[1] = v271;
      v183 = v272;
      v184 = v181;
      if (!swift_isUniquelyReferenced_nonNull_native(v181))
      {
        v184 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v181[2] + 1, 1, v181);
      }

      v185 = v184;
      v186 = v184[2];
      if (v184[3] >> 1 <= v186)
      {
        v185 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v184[3] >= 2uLL, v186 + 1, 1, v184);
      }

      ++v180;
      v185[2] = v186 + 1;
      v187 = 3 * v186;
      a3 = *&v267[1];
      *&v185[v187 + 4] = *&v267[1];
      LOBYTE(v185[v187 + 6]) = v183;
      v181 = v185;
    }

    while (v274 != v180);
    v258 = v185;
    v31 = v270;
    v32 = 0;
    outlined consume of Result<_DataTable, Error>(v270, 0);
LABEL_16:
    if (v264)
    {
      swift_willThrow(v31, v32);
      outlined copy of Result<_DataTable, Error>(v253, 1);
      v267[1] = 0;
      v33 = v267[0];
LABEL_20:
      *&v271 = 0;
      *(&v271 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(34);
      *(&v271 + 1);
      *&v271 = v246;
      *(&v271 + 1) = v245;
      v38._countAndFlagsBits = v33;
      v39 = v269;
      *&v38._object = v269;
      String.append(_:)(v38);
      v38._countAndFlagsBits = 34;
      v38._object = 0xE100000000000000;
      String.append(_:)(v38);
      v270 = v271;
      v40 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      v41 = swift_allocError(&type metadata for MLCreateError, v40, 0, 0);
      *v42 = v270;
      a3 = 0.0;
      *(v42 + 16) = 0;
      *(v42 + 32) = 0;
      *(v42 + 48) = 1;
      *&v39;
      outlined consume of Result<_DataTable, Error>(v253, v257);
      v43 = v41;
      v18 = 1;
LABEL_21:
      outlined consume of Result<_DataTable, Error>(v43, v18);
      v44 = _swiftEmptyArrayStorage;
      goto LABEL_22;
    }

    v34 = *(v253 + 16);
    outlined copy of Result<_DataTable, Error>(v253, 0);

    v33 = v267[0];
    v35 = v269;
    v36 = object;
    v37 = specialized String.withCString<A>(_:)(partial apply for closure #1 in CMLTable.column(name:), v34, v267[0], *&v269);
    if (v36)
    {
      v36;

      v267[1] = 0;
      goto LABEL_20;
    }

    v188 = v37;
    v267[1] = 0;
    *&v35;

    outlined consume of Result<_DataTable, Error>(v253, 0);
    v189 = type metadata accessor for _UntypedColumn();
    v190 = swift_allocObject(v189, 24, 7);
    v190[2] = v188;
    outlined copy of Result<_DataTable, Error>(v190, 0);
    v191 = CMLColumn.size.getter();
    v274 = v190;
    outlined consume of Result<_DataTable, Error>(v190, 0);
    v267[0] = v191;
    if (v191 < 0)
    {
      BUG();
    }

    if (!v191)
    {
      v43 = v274;
      v18 = 0;
      goto LABEL_21;
    }

    v192 = 0;
    v44 = _swiftEmptyArrayStorage;
    do
    {
      v193 = v274;
      outlined copy of Result<_DataTable, Error>(v274, 0);
      _UntypedColumn.valueAtIndex(index:)(v192, a3);
      outlined consume of Result<_DataTable, Error>(v193, 0);
      v270 = v271;
      v194 = v272;
      if (!swift_isUniquelyReferenced_nonNull_native(v44))
      {
        v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44[2] + 1, 1, v44);
      }

      v195 = v44[2];
      v196 = v44;
      if (v44[3] >> 1 <= v195)
      {
        v196 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v44[3] >= 2uLL, v195 + 1, 1, v44);
      }

      v192 = (v192 + 1);
      v196[2] = v195 + 1;
      v44 = v196;
      v197 = 3 * v195;
      a3 = *&v270;
      *&v44[v197 + 4] = v270;
      LOBYTE(v44[v197 + 6]) = v194;
    }

    while (v267[0] != v192);
    v18 = 0;
    outlined consume of Result<_DataTable, Error>(v274, 0);
LABEL_22:
    v45 = v258;
    v46 = v258[2];
    if (v46 != v44[2])
    {
      v258;
      v212 = v44;
      goto LABEL_166;
    }

    if (v46 && v258 != v44)
    {
      break;
    }

LABEL_126:
    v45;
    v44;
    v21 = v239 + 1;
    v20 = v254;
    v22 = v267[1];
    if (v239 + 1 == v241)
    {
      return v254;
    }
  }

  v18 = 0;
  v255 = v258[2];
  v248 = v44;
  while (2)
  {
    if (v18 >= v44[2])
    {
      BUG();
    }

    v47 = v45[3 * v18 + 4];
    v48 = v45[3 * v18 + 5];
    v267[0] = v44[3 * v18 + 4];
    v274 = v44[3 * v18 + 5];
    v49 = v44[3 * v18 + 6];
    v50 = LOBYTE(v45[3 * v18 + 6]);
    v238 = v18;
    switch(v50)
    {
      case 0:
        if (v49)
        {
          goto LABEL_162;
        }

        outlined consume of MLDataValue(v47, v48, 0);
        v51 = v267[0];
        outlined consume of MLDataValue(v267[0], v274, 0);
        if (v47 != v51)
        {
          goto LABEL_165;
        }

        goto LABEL_125;
      case 1:
        if (v49 != 1)
        {
          goto LABEL_162;
        }

        *&v270 = v47;
        v168 = v267[0];
        v269 = *v267;
        outlined consume of MLDataValue(v47, v48, 1);
        outlined consume of MLDataValue(v168, v274, 1);
        a3 = *&v270;
        if (*&v270 == v269)
        {
          goto LABEL_125;
        }

        goto LABEL_165;
      case 2:
        if (v49 == 2)
        {
          v58 = v267[0];
          if (v47 == v267[0] && v48 == v274)
          {
            v59 = 2;
            v60 = v48;
            outlined copy of MLDataValue(v47, v48, 2u);
            outlined copy of MLDataValue(v47, v60, 2u);
            outlined consume of MLDataValue(v47, v60, 2);
            v61 = v47;
            v62 = v60;
LABEL_123:
            outlined consume of MLDataValue(v61, v62, v59);
          }

          else
          {
            v173 = v274;
            v174 = v48;
            LOBYTE(v270) = _stringCompareWithSmolCheck(_:_:expecting:)(v47, v48, v267[0], v274, 0);
            outlined copy of MLDataValue(v58, v173, 2u);
            outlined copy of MLDataValue(v47, v174, 2u);
            v175 = v174;
            v46 = v255;
            outlined consume of MLDataValue(v47, v175, 2);
            outlined consume of MLDataValue(v267[0], v173, 2);
            if ((v270 & 1) == 0)
            {
              goto LABEL_165;
            }
          }

          goto LABEL_125;
        }

        v213 = v48;
        v52 = v48;
        goto LABEL_160;
      case 3:
        if (v49 != 3)
        {
          v52 = v48;
          swift_retain_n(v47, 2);
LABEL_161:
          v48 = v52;
LABEL_162:
          v215 = v49;
          LODWORD(v267[1]) = v49;
          v216 = v274;
          v217 = v48;
          outlined copy of MLDataValue(v267[0], v274, v215);
          outlined consume of MLDataValue(v47, v217, v50);
          outlined consume of MLDataValue(v267[0], v216, v267[1]);
          v218 = v47;
          v219 = v217;
          v220 = v50;
          goto LABEL_164;
        }

        v63 = v47;
        v64 = v47;
        v65 = v48;
        outlined copy of MLDataValue(v63, v48, 3u);
        v66 = v267[0];
        v67 = v274;
        outlined copy of MLDataValue(v267[0], v274, 3u);
        outlined copy of MLDataValue(v64, v65, 3u);
        outlined copy of MLDataValue(v66, v67, 3u);
        outlined copy of MLDataValue(v64, v65, 3u);
        outlined copy of MLDataValue(v66, v67, 3u);
        outlined copy of MLDataValue(v64, v65, 3u);
        v68 = CMLSequence.size.getter();
        if (CMLSequence.size.getter() < 0)
        {
          BUG();
        }

        v69 = CMLSequence.size.getter();
        v265 = v64;
        v262 = v65;
        outlined consume of MLDataValue(v64, v65, 3);
        if (v68 < 0 || v69 < v68)
        {
          BUG();
        }

        v70 = v267[0];

        v71 = CMLSequence.size.getter();
        if (CMLSequence.size.getter() < 0)
        {
          BUG();
        }

        v72 = CMLSequence.size.getter();
        outlined consume of MLDataValue(v70, v274, 3);
        if (v71 < 0 || v72 < v71)
        {
          BUG();
        }

        v73 = v265;
        if (v68 != v71)
        {
          goto LABEL_163;
        }

        v74 = CMLSequence.size.getter();
        if (CMLSequence.size.getter() < 0)
        {
          BUG();
        }

        v75 = CMLSequence.size.getter();
        outlined consume of MLDataValue(v73, v262, 3);
        if (v74 < 0 || v75 < v74)
        {
          BUG();
        }

        if (!v74)
        {
          v165 = v262;
          outlined consume of MLDataValue(v73, v262, 3);
          v166 = v267[0];
          v167 = v274;
          outlined consume of MLDataValue(v267[0], v274, 3);
          outlined consume of MLDataValue(v166, v167, 3);
          outlined consume of MLDataValue(v73, v165, 3);
          outlined consume of MLDataValue(v166, v167, 3);
          outlined consume of MLDataValue(v73, v165, 3);
          v46 = v255;
LABEL_125:
          v18 = v238 + 1;
          v45 = v258;
          v44 = v248;
          if (v238 + 1 == v46)
          {
            goto LABEL_126;
          }

          continue;
        }

        v261 = v74;

        v76 = v267[1];
        v77 = CMLSequence.value(at:)(0);
        v78 = v76;
        if (v76)
        {
          v225 = "CreateML/SequenceType.swift";
          v226 = 27;
          v235 = 36;
LABEL_196:
          v227 = v235;
          v228 = v78;
          goto LABEL_197;
        }

        v79 = v77;
        v80 = CMLFeatureValue.type.getter();
        v81 = v267[0];
        v244 = 0;
        switch(v80)
        {
          case 0:
            v82 = v79[2];

            v269 = COERCE_DOUBLE(specialized handling<A, B>(_:_:)(v82));
            v79;
            JUMPOUT(0x1E2E92);
          case 1:
            v119 = v79[2];

            specialized handling<A, B>(_:_:)(v119);
            v267[1] = *&a3;
            v79;
            JUMPOUT(0x1E31EDLL);
          case 2:

            v112 = CMLFeatureValue.stringValue()();
            v269 = *&v112._countAndFlagsBits;
            object = v112._object;
            if (!v113)
            {
              v79;
              JUMPOUT(0x1E311ELL);
            }

            v113;

            BUG();
          case 3:
            v114 = v79[2];

            v115 = specialized handling<A, B>(_:_:)(v114);
            if (!v115)
            {
              BUG();
            }

            v79;
            outlined consume of MLDataValue(v265, v262, 3);
            v116 = type metadata accessor for CMLSequence();
            *&v117 = COERCE_DOUBLE(swift_allocObject(v116, 25, 7));
            *(v117 + 16) = v115;
            v269 = *&v117;
            *(v117 + 24) = 1;
            v118 = 3;
            goto LABEL_77;
          case 4:
            v83 = v79[2];

            v84 = specialized handling<A, B>(_:_:)(v83);
            object = 0;
            v268 = v79;
            if (!v84)
            {
              BUG();
            }

            v85 = type metadata accessor for CMLDictionary();
            inited = swift_initStackObject(v85, v237);
            *(inited + 16) = v84;
            v250 = _swiftEmptyDictionarySingleton;
            swift_retain_n(inited, 2);
            v87 = 0;
            v269 = COERCE_DOUBLE(_swiftEmptyDictionarySingleton);
            if (CMLDictionary.size.getter())
            {
              v88 = object;
              while (1)
              {
                v267[1] = CMLDictionary.keyAndValue(at:)(v87);
                *&v270 = v89;
                if (v88)
                {
                  v225 = "CreateML/DictionaryType.swift";
                  v226 = 29;
                  v227 = 75;
                  v228 = v88;
                  goto LABEL_197;
                }

                v87 = specialized RandomAccessCollection<>.index(after:)(v87);
                v90 = CMLFeatureValue.stringValue()();
                if (!v91)
                {
                  break;
                }

                v91;

                v92 = CMLDictionary.size.getter();
                v88 = 0;
                v93 = 0;
                if (v87 == v92)
                {
                  goto LABEL_108;
                }
              }

              countAndFlagsBits = v90._countAndFlagsBits;
              v95 = v90._object;
              object = 0;
              v249 = v87;
              v96 = v270;

              MLDataValue.init(_:)(v96, a3);

              v267[1] = *(&v271 + 1);
              *&v270 = v271;
              LOBYTE(v266) = v272;
              v271 = __PAIR128__(v95, countAndFlagsBits);
              LOBYTE(v272) = 2;
              v97 = __PAIR128__(v95, countAndFlagsBits);
              v98 = v269;
              specialized __RawDictionaryStorage.find<A>(_:)(v97, 2, a3);
              *&v97 = (v100 & 1) == 0;
              v101 = __OFADD__(*(*&v98 + 16), v97);
              v102 = *(*&v98 + 16) + v97;
              if (v101)
              {
                BUG();
              }

              v103 = v100;
              if (*(*&v98 + 24) < v102)
              {
                specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v102, 1u);
                v98 = *&v250;
                v104 = *(&v271 + 1);
                specialized __RawDictionaryStorage.find<A>(_:)(v271, v272, a3);
                LOBYTE(v106) = v106 & 1;
                v107 = v103;
                LOBYTE(v107) = v103 & 1;
                if ((v103 & 1) != v106)
                {
                  goto LABEL_200;
                }
              }

              if ((v103 & 1) == 0)
              {
                *(*&v98 + 8 * (v99 >> 6) + 64) |= 1 << v99;
                v108 = *(*&v98 + 48);
                v109 = 24 * v99;
                v110 = v272;
                *(v108 + v109) = v271;
                *(v108 + v109 + 16) = v110;
                v111 = *(*&v98 + 56);
                *(v111 + v109) = v270;
                *(v111 + v109 + 8) = v267[1];
                *(v111 + v109 + 16) = v266;
                JUMPOUT(0x1E30D2);
              }

              v229 = swift_allocError(&type metadata for _MergeError, &protocol witness table for _MergeError, 0, 0);
              swift_willThrow(&type metadata for _MergeError, &protocol witness table for _MergeError);
              v251[0] = v229;
              swift_errorRetain(v229);
              v230 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
              if (swift_dynamicCast(&demangling cache variable for type metadata for Error, v251, v230, &type metadata for _MergeError, 0))
              {
LABEL_202:
                v259 = static String._createEmpty(withInitialCapacity:)(30);
                v260 = v233;
                v234._object = "Swift/NativeDictionary.swift" + 0x8000000000000000;
                v234._countAndFlagsBits = 0xD00000000000001BLL;
                String.append(_:)(v234);
                _print_unlocked<A, B>(_:_:)(&v271, &v259, &type metadata for MLDataValue, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
                v234._countAndFlagsBits = 39;
                v234._object = 0xE100000000000000;
                String.append(_:)(v234);
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v259, v260, "Swift/NativeDictionary.swift", 28, 2, 783, 0);
                BUG();
              }

              v231 = v266;
LABEL_204:
              outlined consume of MLDataValue(v270, v267[1], v231);
              outlined consume of MLDataValue(v271, *(&v271 + 1), v272);

              v251[0];
              v225 = "Swift/Dictionary.swift";
              v226 = 22;
              v227 = 489;
              v228 = v229;
LABEL_197:
              swift_unexpectedError(v228, v225, v226, 1, v227);
              BUG();
            }

            v93 = object;
LABEL_108:
            v78 = v93;
            v268;
            inited;
            outlined consume of MLDataValue(v265, v262, 3);
            v118 = 4;
            object = 0;
            v81 = v267[0];
LABEL_78:

            v120 = CMLSequence.value(at:)(v244);
            v267[1] = v78;
            if (v78)
            {
              v225 = "CreateML/SequenceType.swift";
              v226 = 27;
              v227 = 36;
              v228 = v267[1];
              goto LABEL_197;
            }

            break;
          case 5:

            JUMPOUT(0x1E3212);
          case 6:

            MLDataValue.MultiArrayType.init(from:)(v79);
            v269 = *&v271;
            if (!v271)
            {
              BUG();
            }

            outlined consume of MLDataValue(v265, v262, 3);
            v118 = 5;
LABEL_77:
            object = 0;
            goto LABEL_78;
        }

        v121 = v120;
        v122 = v118;
        switch(CMLFeatureValue.type.getter())
        {
          case 0u:
            v123 = *(v121 + 16);

            v124 = v267[1];
            v268 = specialized handling<A, B>(_:_:)(v123);
            v267[1] = v124;
            if (!v124)
            {
              JUMPOUT(0x1E32F9);
            }

            v267[1];

            BUG();
          case 1u:
            v163 = *(v121 + 16);

            v164 = v267[1];
            specialized handling<A, B>(_:_:)(v163);
            *&v270 = a3;
            v267[1] = v164;
            if (v164)
            {
              v267[1];

              BUG();
            }

            v121;
            outlined consume of MLDataValue(v81, v274, 3);
            v268 = v270;
            LOBYTE(v156) = 1;
            v155 = 0;
            goto LABEL_111;
          case 2u:

            v153 = CMLFeatureValue.stringValue()();
            v268 = v153._countAndFlagsBits;
            v267[1] = v154;
            if (v154)
            {
              v267[1];

              BUG();
            }

            v155 = v153._object;
            v121;
            outlined consume of MLDataValue(v81, v274, 3);
            LOBYTE(v156) = 2;
            goto LABEL_111;
          case 3u:
            v157 = *(v121 + 16);

            v158 = v267[1];
            v159 = specialized handling<A, B>(_:_:)(v157);
            if (v158)
            {
              v158;

              BUG();
            }

            v160 = v159;
            v267[1] = 0;
            if (!v159)
            {
              BUG();
            }

            v121;
            outlined consume of MLDataValue(v81, v274, 3);
            v161 = type metadata accessor for CMLSequence();
            v162 = swift_allocObject(v161, 25, 7);
            *(v162 + 16) = v160;
            v268 = v162;
            *(v162 + 24) = 1;
            LOBYTE(v156) = 3;
            v155 = 0;
            goto LABEL_111;
          case 4u:
            v125 = *(v121 + 16);

            v126 = v267[1];
            v127 = specialized handling<A, B>(_:_:)(v125);
            if (v126)
            {
              v126;

              BUG();
            }

            v128 = v127;
            v266 = 0;
            v249 = v121;
            if (!v127)
            {
              BUG();
            }

            v129 = type metadata accessor for CMLDictionary();
            v130 = swift_initStackObject(v129, v236);
            *(v130 + 16) = v128;
            v250 = _swiftEmptyDictionarySingleton;
            swift_retain_n(v130, 2);
            v131 = 0;
            v242 = v122;
            v268 = _swiftEmptyDictionarySingleton;
            if (CMLDictionary.size.getter())
            {
              v132 = v266;
              while (1)
              {
                v267[1] = CMLDictionary.keyAndValue(at:)(v131);
                *&v270 = v133;
                v78 = v132;
                if (v132)
                {
                  break;
                }

                v131 = specialized RandomAccessCollection<>.index(after:)(v131);
                v134 = CMLFeatureValue.stringValue()();
                if (!v135)
                {
                  v139 = v134._countAndFlagsBits;
                  v140 = v134._object;
                  v266 = 0;
                  v243 = v131;
                  v247 = v130;
                  v141 = v270;

                  MLDataValue.init(_:)(v141, v136);

                  v267[1] = *(&v271 + 1);
                  *&v270 = v271;
                  v142 = v272;
                  v271 = __PAIR128__(v140, v139);
                  LOBYTE(v272) = 2;
                  v143 = __PAIR128__(v140, v139);
                  v144 = v268;
                  specialized __RawDictionaryStorage.find<A>(_:)(v143, 2, v136);
                  *&v143 = (v146 & 1) == 0;
                  v101 = __OFADD__(v144[2], v143);
                  v147 = v144[2] + v143;
                  if (v101)
                  {
                    BUG();
                  }

                  v148 = v146;
                  if (v144[3] >= v147 || (specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v147, 1u), v144 = v250, v104 = *(&v271 + 1), specialized __RawDictionaryStorage.find<A>(_:)(v271, v272, v136), LOBYTE(v106) = v106 & 1, v107 = v148, LOBYTE(v107) = v148 & 1, (v148 & 1) == v106))
                  {
                    if ((v148 & 1) == 0)
                    {
                      v144[(v145 >> 6) + 8] |= 1 << v145;
                      v149 = v144[6];
                      v150 = 24 * v145;
                      v151 = v272;
                      *(v149 + v150) = v271;
                      *(v149 + v150 + 16) = v151;
                      v152 = v144[7];
                      JUMPOUT(0x1E3540);
                    }

                    v229 = swift_allocError(&type metadata for _MergeError, &protocol witness table for _MergeError, 0, 0);
                    swift_willThrow(&type metadata for _MergeError, &protocol witness table for _MergeError);
                    v251[0] = v229;
                    swift_errorRetain(v229);
                    v232 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
                    if (swift_dynamicCast(&demangling cache variable for type metadata for Error, v251, v232, &type metadata for _MergeError, 0))
                    {
                      goto LABEL_202;
                    }

                    v231 = v142;
                    goto LABEL_204;
                  }

LABEL_200:
                  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for MLDataValue, v104, v106, v107, v105);
                  BUG();
                }

                v135;

                v137 = CMLDictionary.size.getter();
                v132 = 0;
                v138 = 0;
                if (v131 == v137)
                {
                  goto LABEL_110;
                }
              }

              v225 = "CreateML/DictionaryType.swift";
              v226 = 29;
              v235 = 75;
              goto LABEL_196;
            }

            v138 = v266;
LABEL_110:
            v267[1] = v138;
            v249;
            v130;
            outlined consume of MLDataValue(v267[0], v274, 3);
            LOBYTE(v156) = 4;
            v155 = 0;
LABEL_111:
            *&v270 = v156;
            outlined consume of MLDataValue(*&v269, object, 0);
            outlined consume of MLDataValue(v268, v155, v270);
            v73 = v265;
LABEL_163:
            v221 = v262;
            outlined consume of MLDataValue(v73, v262, 3);
            v222 = v267[0];
            v223 = v274;
            outlined consume of MLDataValue(v267[0], v274, 3);
            outlined consume of MLDataValue(v222, v223, 3);
            outlined consume of MLDataValue(v73, v221, 3);
            outlined consume of MLDataValue(v222, v223, 3);
            v218 = v73;
            v219 = v221;
            v220 = 3;
            break;
          case 5u:

            JUMPOUT(0x1E36EELL);
          case 6u:

            MLDataValue.MultiArrayType.init(from:)(v121);
            v268 = v271;
            if (!v271)
            {
              BUG();
            }

            outlined consume of MLDataValue(v81, v274, 3);
            LOBYTE(v156) = 5;
            v155 = 0;
            goto LABEL_111;
        }

LABEL_164:
        outlined consume of MLDataValue(v218, v219, v220);
LABEL_165:
        v258;
        v212 = v248;
LABEL_166:
        v212;
        v254;
LABEL_167:
        v203 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v203, 0, 0);
        *v224 = 1;
        *(v224 + 8) = 0;
        *(v224 + 24) = 0;
        *(v224 + 40) = 0;
        *(v224 + 48) = 4;
        return swift_willThrow(&type metadata for MLCreateError, v203);
      case 4:
        v52 = v48;
        if (v49 != 4)
        {
          v213 = v47;
LABEL_160:
          swift_bridgeObjectRetain_n(v213, 2);
          goto LABEL_161;
        }

        v53 = v267[0];
        outlined copy of MLDataValue(v267[0], v274, 4u);
        outlined copy of MLDataValue(v47, v52, 4u);
        v54 = v274;
        outlined copy of MLDataValue(v53, v274, 4u);
        outlined copy of MLDataValue(v47, v52, 4u);
        outlined copy of MLDataValue(v53, v54, 4u);
        outlined copy of MLDataValue(v47, v52, 4u);
        LOBYTE(v270) = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ8CreateML11MLDataValueO_AETt1g5(v47, v53);
        outlined consume of MLDataValue(v47, v52, 4);
        outlined consume of MLDataValue(v53, v54, 4);
        outlined consume of MLDataValue(v53, v54, 4);
        outlined consume of MLDataValue(v47, v52, 4);
        outlined consume of MLDataValue(v53, v54, 4);
        v55 = v47;
        v56 = v52;
        v57 = 4;
        goto LABEL_118;
      case 5:
        v52 = v48;
        if (v49 == 5)
        {
          *&v270 = type metadata accessor for NSObject();
          v169 = v267[0];
          outlined copy of MLDataValue(v267[0], v274, 5u);
          v170 = v52;
          outlined copy of MLDataValue(v47, v52, 5u);
          v171 = v274;
          outlined copy of MLDataValue(v169, v274, 5u);
          outlined copy of MLDataValue(v47, v170, 5u);
          outlined copy of MLDataValue(v169, v171, 5u);
          outlined copy of MLDataValue(v47, v170, 5u);
          LOBYTE(v270) = static NSObject.== infix(_:_:)(v47, v169);
          outlined consume of MLDataValue(v47, v170, 5);
          v172 = v274;
          outlined consume of MLDataValue(v169, v274, 5);
          outlined consume of MLDataValue(v169, v172, 5);
          outlined consume of MLDataValue(v47, v170, 5);
          outlined consume of MLDataValue(v169, v274, 5);
          v55 = v47;
          v56 = v170;
          v57 = 5;
LABEL_118:
          outlined consume of MLDataValue(v55, v56, v57);
          v46 = v255;
          if ((v270 & 1) == 0)
          {
            goto LABEL_165;
          }

          goto LABEL_125;
        }

        v214 = v47;
        v214;
        goto LABEL_161;
      case 6:
        if (v49 != 6 || v267[0] | v274)
        {
          goto LABEL_162;
        }

        v59 = 6;
        outlined consume of MLDataValue(v47, v48, 6);
        v61 = 0;
        v62 = 0;
        goto LABEL_123;
    }
  }
}

uint64_t ActivityClassifierTrainingSessionDelegate.deinit()
{
  *(v0 + 24);
  outlined destroy of MLActivityClassifier.ModelParameters(v0 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  v1 = *(v0 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 40);
  v2 = *(v0 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 48);
  outlined consume of MLActivityClassifier.PersistentParameters?(*(v0 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters), *(v0 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 8), *(v0 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 16), *(v0 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 24), *(v0 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 32));
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainer, &demangling cache variable for type metadata for MLActivityClassifier.Trainer?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_tablePrinter, &demangling cache variable for type metadata for TrainingTablePrinter?);
  *(v0 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingDataSamples);
  *(v0 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_validationDataSamples);
  *(v0 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_classLabels);
  return v0;
}

uint64_t type metadata accessor for ActivityClassifierTrainingSessionDelegate(uint64_t a1)
{
  result = type metadata singleton initialization cache for ActivityClassifierTrainingSessionDelegate;
  if (!type metadata singleton initialization cache for ActivityClassifierTrainingSessionDelegate)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for ActivityClassifierTrainingSessionDelegate);
  }

  return result;
}

uint64_t type metadata completion function for ActivityClassifierTrainingSessionDelegate(uint64_t a1)
{
  v5[0] = &unk_345510;
  result = type metadata accessor for MLTrainingSessionParameters(319);
  if (v2 <= 0x3F)
  {
    v5[1] = *(result - 8) + 64;
    v5[2] = &unk_345528;
    result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for MLActivityClassifier.Trainer?, type metadata accessor for MLActivityClassifier.Trainer);
    if (v3 <= 0x3F)
    {
      v5[3] = *(result - 8) + 64;
      result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for TrainingTablePrinter?, type metadata accessor for TrainingTablePrinter);
      if (v4 <= 0x3F)
      {
        v5[4] = *(result - 8) + 64;
        v5[5] = &unk_345540;
        v5[6] = &unk_345540;
        v5[7] = &unk_345540;
        result = swift_updateClassMetadata2(a1, 256, 8, v5, a1 + 80);
        if (!result)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for TrainingSessionDelegate.evaluate(from:) in conformance ActivityClassifierTrainingSessionDelegate(Swift::Int a1)
{
  v3 = *v1;
  *&v4 = ActivityClassifierTrainingSessionDelegate.evaluate(from:)(a1);
  if (!v7)
  {
    v5 = 1;
    v6 = 1;
  }

  return (*(v2 + 8))(v5, v6, *(&v4 + 1));
}

uint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    v1 = objc_opt_self(NSObject);
    result = swift_getObjCClassMetadata(v1);
    lazy cache variable for type metadata for NSObject = result;
  }

  return result;
}

uint64_t outlined consume of MLActivityClassifier.PersistentParameters?(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a5)
  {
    outlined consume of Result<_DataTable, Error>(a1, a2);
    outlined consume of MLDataTable?(a3, a4);
    return a5;
  }

  return result;
}

uint64_t outlined retain of MLActivityClassifier.PersistentParameters(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 32);
  v3 = *(a1 + 24);
  outlined copy of Result<_DataTable, Error>(*a1, *(a1 + 8));
  outlined copy of MLDataTable?(v1, v3);
  v2;
  return a1;
}

uint64_t lazy protocol witness table accessor for type Column<String> and conformance Column<A>(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!*a1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for Column<String>);
    result = swift_getWitnessTable(a2, v3);
    *a1 = result;
  }

  return result;
}

uint64_t outlined release of MLActivityClassifier.PersistentParameters?(uint64_t a1, void (*a2)(void, void, void, void, void, void, void, void))
{
  v2 = *(a1 + 48);
  a2(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56));
  return a1;
}

uint64_t outlined copy of MLActivityClassifier.PersistentParameters?(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a5)
  {
    v5 = a5;
    outlined copy of Result<_DataTable, Error>(a1, a2);
    outlined copy of MLDataTable?(a3, a4);
    return v5;
  }

  return result;
}

void MLDataValue.DictionaryType.subscript.getter(uint64_t a1, double a2)
{
  v4 = v2;
  v5 = *v3;
  if (*(v5 + 16))
  {
    v6 = *a1;
    v7 = *(a1 + 8);
    v8 = *(a1 + 16);
    outlined copy of MLDataValue(*a1, v7, v8);
    *&v9 = v6;
    *(&v9 + 1) = v7;
    specialized __RawDictionaryStorage.find<A>(_:)(v9, v8, a2);
    if (v11)
    {
      v12 = *(v5 + 56);
      v13 = 24 * v10;
      v14 = *(v12 + v13);
      v15 = *(v12 + v13 + 8);
      v16 = *(v12 + v13 + 16);
      *v4 = v14;
      *(v4 + 8) = v15;
      *(v4 + 16) = v16;
      outlined copy of MLDataValue(v14, v15, v16);
      outlined consume of MLDataValue(v6, v7, v8);
      return;
    }

    outlined consume of MLDataValue(v6, v7, v8);
  }

  *v4 = 0;
  *(v4 + 16) = -1;
}

uint64_t MLDataValue.DictionaryType.description.getter()
{
  v1 = *v0;
  v2 = lazy protocol witness table accessor for type MLDataValue and conformance MLDataValue();
  return Dictionary.description.getter(v1, &type metadata for MLDataValue, &type metadata for MLDataValue, v2);
}

uint64_t _s8CreateML22MLDataValueConvertiblePAAE12makeInstance07featureD0xSgAA010CMLFeatureD0C_tFZSS_Tt1g5(uint64_t a1)
{
  v1 = dynamic_cast_existential_1_unconditional(&type metadata for String, &type metadata for String, &protocol descriptor for FeatureValueConvertible);
  v3 = v2;
  v15 = *(v2 + 16);
  v4 = type metadata accessor for Optional(0, v1);
  v16 = *(v4 - 8);
  v5 = *(v16 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);

  v15(a1, v1, v3);
  if (__swift_getEnumTagSinglePayload(&v11, 1, v1) == 1)
  {
    (*(v16 + 8))(&v11, v4);
    v12 = 0;
    v11 = 0;
    v13 = 0;
  }

  else
  {
    *(&v12 + 1) = v1;
    v13 = v3;
    v8 = __swift_allocate_boxed_opaque_existential_0(&v11);
    (*(*(v1 - 8) + 32))(v8, &v11, v1);
  }

  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureValueConvertible?);
  if (swift_dynamicCast(&v14, &v11, v9, &type metadata for String, 6))
  {
    return v14;
  }

  else
  {
    return 0;
  }
}

uint64_t specialized Collection<>.indices.getter(uint64_t a1)
{
  v2 = v1;
  *v1 = a1;
  a1;
  v2[1] = specialized Dictionary.startIndex.getter(a1);
  v2[2] = v3;
  *(v2 + 24) = v4 & 1;
  result = 1 << *(a1 + 32);
  v6 = *(a1 + 36);
  v2[4] = result;
  v2[5] = v6;
  *(v2 + 48) = 0;
  return result;
}

uint64_t specialized Collection<>.indices.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
  v3[3] = 0;
  swift_retain_n(a1, 2);
  swift_bridgeObjectRetain_n(a2, 2);
  swift_retain_n(a3, 3);
  v6 = CMLSequence.size.getter();
  v7 = specialized RandomAccessCollection<>.distance(from:to:)(0, v6);

  v8 = CMLSequence.size.getter();
  v9 = specialized RandomAccessCollection<>.distance(from:to:)(0, v8);

  if (v9 < 0)
  {
    BUG();
  }

  v10 = CMLSequence.size.getter();
  v11 = specialized RandomAccessCollection<>.distance(from:to:)(0, v10);
  a2;

  result = a3;
  if (v7 < 0 || v11 < v7)
  {
    BUG();
  }

  v5[4] = v7;
  return result;
}

uint64_t specialized Collection.index(_:offsetBy:)(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    BUG();
  }

  if (a2)
  {
    if ((a1 ^ 0x7FFFFFFFFFFFFFFFuLL) <= a2 - 1)
    {
      BUG();
    }

    a1 += a2;
  }

  return a1;
}

uint64_t specialized Collection.index(_:offsetBy:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4 < 0)
  {
    BUG();
  }

  v6 = a3;
  v7 = a1;
  v17 = v5;
  if (a4)
  {
    v9 = a4;
    outlined copy of [A : B].Index._Variant<A, B>(a1, a2, a3);
    v16 = a5;
    v18 = a5 + 64;
    do
    {
      if (v6)
      {
        BUG();
      }

      v10 = -1 << *(v16 + 32);
      if (v7 < 0 || v7 >= -v10)
      {
        BUG();
      }

      v11 = *(v18 + 8 * (v7 >> 6));
      if (!_bittest64(&v11, v7))
      {
        BUG();
      }

      if (*(v16 + 36) != a2)
      {
        BUG();
      }

      v15 = v9;
      v12 = _HashTable.occupiedBucket(after:)(v7, v18, ~v10);
      v13 = *(v16 + 36);
      v6 = 0;
      outlined consume of [MLDataValue : MLDataValue].Index._Variant(v7, a2, 0);
      v7 = v12;
      a2 = v13;
      --v9;
    }

    while (v15 != 1);
  }

  else
  {
    v13 = a2;
    outlined copy of [A : B].Index._Variant<A, B>(a1, a2, a3);
    v12 = a1;
  }

  result = v17;
  *v17 = v12;
  *(v17 + 8) = v13;
  *(v17 + 16) = v6 & 1;
  return result;
}

uint64_t specialized Collection.index(_:offsetBy:limitedBy:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, char a7, uint64_t a8)
{
  v23 = v8;
  if (a4 < 0)
  {
    BUG();
  }

  v9 = a4;
  v12 = a1;
  v13 = a2;
  outlined copy of [A : B].Index._Variant<A, B>(a1, a2, a3);
  if (v9)
  {
    v20 = a6;
    v21 = a8 + 64;
    v14 = a7 | a3;
    while (1)
    {
      if (v14)
      {
        BUG();
      }

      if (a2 != v20)
      {
        BUG();
      }

      if (v12 == a5)
      {
        break;
      }

      v15 = -1 << *(a8 + 32);
      if (v12 < 0 || v12 >= -v15)
      {
        BUG();
      }

      v16 = *(v21 + 8 * (v12 >> 6));
      if (!_bittest64(&v16, v12))
      {
        BUG();
      }

      if (*(a8 + 36) != v20)
      {
        BUG();
      }

      v17 = _HashTable.occupiedBucket(after:)(v12, v21, ~v15);
      v13 = *(a8 + 36);
      outlined consume of [MLDataValue : MLDataValue].Index._Variant(v12, a2, 0);
      v12 = v17;
      a2 = v13;
      v14 = a7;
      if (!--v9)
      {
        v12 = v17;
        v18 = 0;
        goto LABEL_14;
      }
    }

    outlined consume of [MLDataValue : MLDataValue].Index._Variant(a5, a2, 0);
    result = v23;
    *v23 = 0;
    *(v23 + 16) = -1;
  }

  else
  {
    v18 = a3 & 1;
LABEL_14:
    result = v23;
    *v23 = v12;
    *(v23 + 8) = v13;
    *(v23 + 16) = v18;
  }

  return result;
}

uint64_t specialized Collection.index(_:offsetBy:limitedBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    BUG();
  }

  if (a2)
  {
    while (a3 != a1)
    {
      if (__OFADD__(1, a1++))
      {
        BUG();
      }

      if (!--a2)
      {
        return a1;
      }
    }

    return 0;
  }

  return a1;
}

uint64_t specialized Collection.distance(from:to:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unsigned int a5, char a6, uint64_t a7)
{
  if (a6 & 1) != 0 || (a3)
  {
    BUG();
  }

  if (a4 < a1)
  {
    BUG();
  }

  if (a5 != a2)
  {
    BUG();
  }

  if (a1 == a4)
  {
    v7 = 0;
    outlined consume of [MLDataValue : MLDataValue].Index._Variant(a4, a2, 0);
  }

  else
  {
    v8 = a7;
    v9 = a7 + 64;
    v10 = 0;
    do
    {
      v7 = v10 + 1;
      if (__OFADD__(1, v10))
      {
        BUG();
      }

      v11 = -1 << *(v8 + 32);
      if (a1 < 0 || a1 >= -v11)
      {
        BUG();
      }

      v12 = *(v9 + 8 * (a1 >> 6));
      if (!_bittest64(&v12, a1))
      {
        BUG();
      }

      if (*(v8 + 36) != a2)
      {
        BUG();
      }

      v13 = _HashTable.occupiedBucket(after:)(a1, v9, ~v11);
      v14 = v8;
      v15 = *(v8 + 36);
      outlined consume of [MLDataValue : MLDataValue].Index._Variant(a1, a2, 0);
      if (v15 != a5)
      {
        BUG();
      }

      ++v10;
      a1 = v13;
      a2 = a5;
      v8 = v14;
      v9 = a7 + 64;
    }

    while (v13 != a4);
  }

  return v7;
}

uint64_t specialized Collection.distance(from:to:)(uint64_t a1, uint64_t a2)
{
  result = a2 - a1;
  if (a2 < a1)
  {
    BUG();
  }

  v3 = __OFSUB__(a1, a2);
  v4 = a1 - a2;
  if (!v4)
  {
    return 0;
  }

  if (v4 < 0 == v3)
  {
    BUG();
  }

  if (v4 < 0x8000000000000001)
  {
    BUG();
  }

  return result;
}

uint64_t MLDataValue.DictionaryType.init(from:)(uint64_t a1)
{
  v2 = v1;
  v3 = specialized handling<A, B>(_:_:)(*(a1 + 16));
  if (!v3)
  {
    BUG();
  }

  v4 = type metadata accessor for CMLDictionary();
  v7[0] = swift_allocObject(v4, 24, 7);
  v7[1] = closure #1 in MLDataValue.DictionaryType.init(from:);
  v7[2] = 0;
  *(v7[0] + 16) = v3;
  v7[3] = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
  v7[4] = 0;
  v7[5] = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
  v7[6] = 0;
  ML11MLDataValueO_AGs15LazyMapSequenceVys0j6FilterL0VyAIyAE13CMLDictionaryCAG_AGtSgGGAG_AGtGTt0g5 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufC8CreateML11MLDataValueO_AGs15LazyMapSequenceVys0j6FilterL0VyAIyAE13CMLDictionaryCAG_AGtSgGGAG_AGtGTt0g5(v7);

  *v2 = ML11MLDataValueO_AGs15LazyMapSequenceVys0j6FilterL0VyAIyAE13CMLDictionaryCAG_AGtSgGGAG_AGtGTt0g5;
  return result;
}

uint64_t MLDataValue.DictionaryType.init<A>(uniqueKeysWithValues:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[0] = v3;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  (*(v5 + 16))(v12, a1, a2);
  v9 = lazy protocol witness table accessor for type MLDataValue and conformance MLDataValue();
  v10 = Dictionary.init<A>(uniqueKeysWithValues:)(v12, &type metadata for MLDataValue, &type metadata for MLDataValue, a2, v9, a3);
  (*(v5 + 8))(a1, a2);
  result = v12[0];
  *v12[0] = v10;
  return result;
}

uint64_t MLDataValue.DictionaryType.debugDescription.getter()
{
  v1 = *v0;
  v2 = lazy protocol witness table accessor for type MLDataValue and conformance MLDataValue();
  return Dictionary.debugDescription.getter(v1, &type metadata for MLDataValue, &type metadata for MLDataValue, v2);
}

BOOL static MLDataValue.DictionaryType.Index.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) || *(a2 + 16))
  {
    BUG();
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    BUG();
  }

  return *a1 == *a2;
}

BOOL static MLDataValue.DictionaryType.Index.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) || *(a2 + 16))
  {
    BUG();
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    BUG();
  }

  return *a1 < *a2;
}

uint64_t MLDataValue.DictionaryType.startIndex.getter()
{
  v2 = v0;
  result = specialized Dictionary.startIndex.getter(*v1);
  *v2 = result;
  *(v2 + 8) = v4;
  *(v2 + 16) = v5 & 1;
  return result;
}

uint64_t specialized Dictionary.startIndex.getter(uint64_t a1)
{
  return specialized Dictionary.startIndex.getter(a1);
}

{
  result = _HashTable.startBucket.getter(a1 + 64, ~(-1 << *(a1 + 32)));
  v2 = *(a1 + 36);
  return result;
}

{
  return specialized Dictionary.startIndex.getter(a1);
}

uint64_t MLDataValue.DictionaryType.endIndex.getter()
{
  v2 = *(*v1 + 36);
  *result = 1 << *(*v1 + 32);
  *(result + 8) = v2;
  *(result + 16) = 0;
  return result;
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, int64_t a3, int a4, char a5, uint64_t a6)
{
  if (a5)
  {
    BUG();
  }

  if (a3 < 0 || 1 << *(a6 + 32) <= a3)
  {
    BUG();
  }

  v7 = *(a6 + 8 * (a3 >> 6) + 64);
  if (!_bittest64(&v7, a3))
  {
    BUG();
  }

  if (*(a6 + 36) != a4)
  {
    BUG();
  }

  v8 = *(a6 + 48);
  v9 = 24 * a3;
  v10 = *(v8 + 24 * a3);
  v11 = *(v8 + 24 * a3 + 8);
  v12 = *(v8 + 24 * a3 + 16);
  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12;
  v13 = *(a6 + 56);
  v14 = *(v13 + v9);
  v15 = *(v13 + v9 + 8);
  v16 = *(v13 + v9 + 16);
  *a2 = v14;
  *(a2 + 8) = v15;
  *(a2 + 16) = v16;
  outlined copy of MLDataValue(v10, v11, v12);
  return outlined copy of MLDataValue(v14, v15, v16);
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, int64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  return specialized Dictionary.subscript.getter(a1, a2, a3, a4, a5, &type metadata accessor for MLProgram.Block);
}

{
  return specialized Dictionary.subscript.getter(a1, a2, a3, a4, a5, &type metadata accessor for Tensor);
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, int64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    BUG();
  }

  v6 = *(a5 + 8 * (a2 >> 6) + 64);
  if (!_bittest64(&v6, a2))
  {
    BUG();
  }

  if (*(a5 + 36) != a3)
  {
    BUG();
  }

  v7 = *(a5 + 48);
  v8 = *(a5 + 56);
  v9 = *(v7 + 16 * a2);
  v10 = *(v7 + 16 * a2 + 8);
  v11 = a6(0);
  (*(*(v11 - 8) + 16))(a1, v8 + *(*(v11 - 8) + 72) * a2, v11);
  v10;
  return v9;
}

uint64_t MLDataValue.DictionaryType.index(after:)(uint64_t a1)
{
  v3 = v1;
  result = specialized _NativeDictionary.index(after:)(*a1, *(a1 + 8), *(a1 + 16), *v2);
  *v3 = result;
  *(v3 + 8) = v5;
  *(v3 + 16) = v6 & 1;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance MLDataValue.DictionaryType(void *a1, uint64_t a2))(uint64_t *a1)
{
  v2 = malloc(0x80uLL);
  *a1 = v2;
  MLDataValue.DictionaryType.subscript.getter(v2, (v2 + 3), a2);
  v3 = *v2;
  v4 = v2[1];
  v2[12] = *v2;
  v2[13] = v4;
  v5 = *(v2 + 4);
  *(v2 + 41) = v5;
  v2[6] = v3;
  v2[7] = v4;
  *(v2 + 64) = v5;
  v6 = v2[3];
  v2[14] = v6;
  v7 = v2[4];
  v2[15] = v7;
  v8 = *(v2 + 10);
  *(v2 + 42) = v8;
  v2[9] = v6;
  v2[10] = v7;
  *(v2 + 88) = v8;
  outlined copy of MLDataValue(v3, v4, v5);
  outlined copy of MLDataValue(v6, v7, v8);
  return protocol witness for Collection.subscript.read in conformance MLDataValue.DictionaryType;
}

void protocol witness for Collection.subscript.read in conformance MLDataValue.DictionaryType(uint64_t *a1)
{
  v1 = *a1;
  v6 = *(*a1 + 120);
  v7 = *(*a1 + 112);
  v8 = *(*a1 + 104);
  v9 = *(*a1 + 96);
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 41);
  v10 = *(*a1 + 42);
  outlined consume of MLDataValue(*(*a1 + 48), *(v1 + 56), *(v1 + 64));
  outlined consume of MLDataValue(v2, v3, v4);
  outlined consume of MLDataValue(v9, v8, v5);
  outlined consume of MLDataValue(v7, v6, v10);
  free(v1);
}

uint64_t protocol witness for Collection.subscript.getter in conformance MLDataValue.DictionaryType(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  *(v6 + 9) = *(a1 + 25);
  v6[0] = v3;
  v5 = v2;
  return specialized Collection<>.subscript.getter(&v5, *v1);
}

uint64_t protocol witness for Collection._customIndexOfEquatableElement(_:) in conformance MLDataValue.DictionaryType()
{
  *result = 0;
  *(result + 16) = -2;
  return result;
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance MLDataValue.DictionaryType(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  return protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance MLDataValue.DictionaryType(a1, a2, a3, a4, specialized Collection._failEarlyRangeCheck(_:bounds:));
}

{
  return protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance MLDataValue.DictionaryType(a1, a2, a3, a4, specialized Collection._failEarlyRangeCheck(_:bounds:));
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance MLDataValue.DictionaryType(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, __int128 *, void))
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 16);
  v9 = *a2;
  v10 = a2[1];
  *(v13 + 9) = *(a2 + 25);
  v13[0] = v10;
  v12 = v9;
  return a5(v6, v7, v8, &v12, *v5);
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance MLDataValue.DictionaryType(__int128 *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = a1[1];
  *(v12 + 9) = *(a1 + 25);
  v12[0] = v4;
  v11 = v3;
  v5 = a2[1];
  v6 = *(a2 + 25);
  v9 = *a2;
  v10[0] = v5;
  *(v10 + 9) = v6;
  v7 = *v2;
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(&v11, &v9);
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance MLDataValue.DictionaryType(uint64_t a1)
{
  v3 = specialized _NativeDictionary.index(after:)(*a1, *(a1 + 8), *(a1 + 16), *v1);
  v5 = v4;
  v7 = v6;
  result = outlined consume of [MLDataValue : MLDataValue].Index._Variant(*a1, *(a1 + 8), *(a1 + 16));
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance MLDataValue.DictionaryType()
{
  v2 = v0;
  v3 = *v1;
  *v0 = *v1;
  v3;
  v4 = specialized Dictionary.startIndex.getter(v3);
  v6 = v5;
  v8 = v7;
  result = v3;
  v2[1] = v4;
  v2[2] = v6;
  *(v2 + 24) = v8 & 1;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance CMLDictionary(uint64_t *a1)
{
  v3 = v1;
  v4 = *v2;
  result = specialized RandomAccessCollection<>.index(before:)(*a1);
  *v3 = result;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance CMLDictionary(uint64_t *a1)
{
  v2 = *v1;
  result = specialized RandomAccessCollection<>.index(before:)(*a1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.index(_:offsetBy:) in conformance CMLDictionary(uint64_t *a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v3;
  result = specialized RandomAccessCollection<>.index(_:offsetBy:)(*a1, a2);
  *v4 = result;
  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance CMLDictionary()
{
  v2 = v0;
  v3 = *v1;
  result = CMLDictionary.endIndex.getter();
  *v2 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance CMLDictionary(uint64_t *a1, uint64_t *a2))(void *a1)
{
  v3 = *v2;
  v4 = CMLDictionary.keyAndValue(at:)(*a2);
  a1[2] = v5;
  a1[3] = v4;
  *a1 = v4;
  a1[1] = v5;

  return protocol witness for Collection.subscript.read in conformance CMLDictionary;
}

uint64_t protocol witness for Collection.subscript.read in conformance CMLDictionary(void *a1)
{
  v1 = a1[3];
  v2 = a1[2];
  v3 = a1[1];
  *a1;
  v3;
  v1;
  return v2;
}

uint64_t protocol witness for Collection.subscript.getter in conformance CMLDictionary(uint64_t *a1)
{
  v3 = v1;
  v4 = *v2;
  result = specialized Collection<>.subscript.getter(*a1, a1[1]);
  *v3 = result;
  v3[1] = v6;
  v3[2] = v7;
  return result;
}

uint64_t protocol witness for Collection.indices.getter in conformance CMLDictionary()
{
  v2 = v0;
  v3 = *v1;
  result = specialized RandomAccessCollection<>.indices.getter();
  *v2 = result;
  v2[1] = v5;
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance CMLDictionary(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = v3;
  v6 = *v4;
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *v5 = result;
  *(v5 + 8) = v8 & 1;
  return result;
}

{
  return protocol witness for BidirectionalCollection.index(_:offsetBy:limitedBy:) in conformance CMLDictionary(a1, a2, a3);
}

void protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance CMLDictionary(uint64_t *a1, uint64_t *a2)
{
  v3 = *v2;
  specialized Collection._failEarlyRangeCheck(_:bounds:)(*a1, *a2, a2[1]);
}

{
  v3 = *v2;
  specialized Collection._failEarlyRangeCheck(_:bounds:)(*a1, *a2, a2[1]);
}

{
  v3 = *v2;
  specialized Collection._failEarlyRangeCheck(_:bounds:)(*a1, a1[1], *a2, a2[1]);
}

uint64_t protocol witness for Collection.index(after:) in conformance CMLDictionary(uint64_t *a1)
{
  v3 = v1;
  v4 = *v2;
  result = specialized RandomAccessCollection<>.index(after:)(*a1);
  *v3 = result;
  return result;
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance CMLDictionary(uint64_t *a1)
{
  v2 = *v1;
  result = specialized RandomAccessCollection<>.index(after:)(*a1);
  *a1 = result;
  return result;
}

void MLDataValue.DictionaryType.init(from:)(uint64_t a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 16);
  if (v5 != 4)
  {
    outlined consume of MLDataValue(v4, *(a1 + 8), v5);
    v4 = 0;
  }

  *v3 = v4;
}

uint64_t MLDataValue.DictionaryType.dataValue.getter()
{
  v2 = *v1;
  *v0 = *v1;
  *(v0 + 8) = 0;
  *(v0 + 16) = 4;
  return v2;
}

uint64_t closure #1 in MLDataValue.DictionaryType.init(from:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v14 = a1[1];
  v4 = CMLFeatureValue.stringValue()();
  if (v5)
  {
    v5;
    v7 = 0;
    result = 255;
    countAndFlagsBits = 0;
    object = 0;
    v11 = 0;
  }

  else
  {
    countAndFlagsBits = v4._countAndFlagsBits;
    object = v4._object;
    v14;
    MLDataValue.init(_:)(v14, v6);
    v7 = v12;
    v11 = v13;
    result = 2;
  }

  *v2 = countAndFlagsBits;
  *(v2 + 8) = object;
  *(v2 + 16) = result;
  *(v2 + 24) = v7;
  *(v2 + 40) = v11;
  return result;
}

uint64_t Dictionary<>.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  v8 = *(a1 + 16);
  if (v8 == 4)
  {
    v10 = v7;
    result = Dictionary<>.init(from:)(&v10, a2, a3, a4, a5, a6);
    if (result)
    {
      return result;
    }
  }

  else
  {
    outlined consume of MLDataValue(v7, *(a1 + 8), v8);
  }

  return 0;
}

uint64_t Dictionary<>.init(from:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v83 = a6;
  v80 = a4;
  v90 = type metadata accessor for Optional(0, a3);
  v91 = *(v90 - 8);
  v8 = *(v91 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v86 = &v78;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v82 = &v78;
  v92 = *(a3 - 8);
  v13 = *(v92 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v96 = &v78;
  v88 = type metadata accessor for Optional(0, a2);
  v89 = *(v88 - 8);
  v16 = *(v89 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v81 = &v78;
  v19 = *(a2 - 8);
  v20 = *(v19 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v87 = &v78;
  v23 = alloca(v20);
  v24 = alloca(v20);
  v25 = *a1;
  v26 = v19;
  v79 = a2;
  v27 = v25;
  v85 = a5;
  v99 = Dictionary.init()(a2, a3, a5);
  v27;
  v28 = specialized Dictionary.startIndex.getter(v27);
  v107 = v29;
  v109 = v30;
  v27;
  v31 = v107;
  v100 = v26;
  v102 = v27;
  v84 = a3;
  v101 = &v78;
  while (1)
  {
    if (v109)
    {
      BUG();
    }

    v32 = 1 << *(v27 + 32);
    if (*(v27 + 36) != v31)
    {
      BUG();
    }

    if (v28 == v32)
    {
      v73 = v31;
      v27;
      outlined consume of [MLDataValue : MLDataValue].Index._Variant(v28, v73, 0);
      return v99;
    }

    if (v28 < 0 || v28 >= v32)
    {
      BUG();
    }

    v33 = *(v27 + 8 * (v28 >> 6) + 64);
    if (!_bittest64(&v33, v28))
    {
      BUG();
    }

    v34 = 24 * v28;
    v35 = *(v27 + 48);
    v36 = *(v27 + 56);
    v106 = *(v35 + 24 * v28);
    v78 = v28;
    v37 = *(v35 + 24 * v28 + 8);
    LOBYTE(v35) = *(v35 + 24 * v28 + 16);
    v38 = *(v36 + 24 * v28);
    v39 = *(v36 + 24 * v28 + 8);
    v104 = v39;
    v40 = *(v36 + v34 + 16);
    v41 = v35;
    v107 = v31;
    v105 = v37;
    outlined copy of MLDataValue(v106, v37, v35);
    outlined copy of MLDataValue(v38, v39, v40);
    v42 = v106;
    outlined copy of MLDataValue(v106, v37, v41);
    v103 = v38;
    v43 = v104;
    outlined copy of MLDataValue(v38, v104, v40);
    v44 = v42;
    v45 = v105;
    outlined copy of MLDataValue(v44, v105, v41);
    outlined copy of MLDataValue(v38, v43, v40);
    v46 = v106;
    v108 = v41;
    outlined consume of MLDataValue(v106, v45, v41);
    v47 = v103;
    outlined consume of MLDataValue(v103, v104, v40);
    outlined consume of MLDataValue(v46, v45, v41);
    v48 = v47;
    v49 = v47;
    v50 = v104;
    outlined consume of MLDataValue(v49, v104, v40);
    v51 = v78;
    v52 = v107;
    v98 = specialized _NativeDictionary.index(after:)(v78, v107, 0, v102);
    v97 = v53;
    v109 = v54;
    v55 = v52;
    v56 = v108;
    outlined consume of [MLDataValue : MLDataValue].Index._Variant(v51, v55, 0);
    v57 = v106;
    outlined copy of MLDataValue(v106, v105, v56);
    outlined copy of MLDataValue(v48, v50, v40);
    LODWORD(v107) = v40;
    outlined consume of MLDataValue(v48, v50, v40);
    v93 = v57;
    v94 = v105;
    v95 = v56;
    v58 = v81;
    v59 = v79;
    (*(v80 + 16))(&v93, v79);
    if (__swift_getEnumTagSinglePayload(v58, 1, v59) == 1)
    {
      outlined consume of MLDataValue(v106, v105, v56);
      outlined consume of MLDataValue(v103, v104, v107);
      v102;
      outlined consume of [MLDataValue : MLDataValue].Index._Variant(v98, v97, v109);
      v99;
      v75 = v58;
      v76 = v88;
      v77 = v89;
      goto LABEL_14;
    }

    (*(v100 + 32))(v101, v58, v59);
    v60 = v105;
    outlined copy of MLDataValue(v106, v105, v108);
    v61 = v103;
    v62 = v104;
    v63 = v107;
    outlined copy of MLDataValue(v103, v104, v107);
    v64 = v60;
    v65 = v108;
    outlined consume of MLDataValue(v106, v64, v108);
    v93 = v61;
    v94 = v62;
    v95 = v63;
    v66 = v82;
    v67 = v59;
    v68 = v84;
    (*(v83 + 16))(&v93, v84);
    if (__swift_getEnumTagSinglePayload(v66, 1, v68) == 1)
    {
      break;
    }

    v69 = v92;
    (*(v92 + 32))(v96, v66, v68);
    v70 = v87;
    (*(v100 + 16))(v87, v101, v67);
    v71 = v86;
    (*(v69 + 16))(v86, v96, v68);
    __swift_storeEnumTagSinglePayload(v71, 0, 1, v68);
    v72 = type metadata accessor for Dictionary(0, v67, v68, v85);
    Dictionary.subscript.setter(v71, v70, v72);
    outlined consume of MLDataValue(v106, v105, v108);
    outlined consume of MLDataValue(v103, v104, v107);
    (*(v92 + 8))(v96, v68);
    (*(v100 + 8))(v101, v67);
    v28 = v98;
    v31 = v97;
    v27 = v102;
  }

  outlined consume of MLDataValue(v106, v105, v65);
  outlined consume of MLDataValue(v103, v104, v107);
  (*(v100 + 8))(v101, v59);
  v102;
  outlined consume of [MLDataValue : MLDataValue].Index._Variant(v98, v97, v109);
  v99;
  v75 = v66;
  v76 = v90;
  v77 = v91;
LABEL_14:
  (*(v77 + 8))(v75, v76);
  return 0;
}

uint64_t Dictionary<>.dataValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a4;
  v26 = a3;
  v19 = v6;
  v22 = a6;
  v25 = a5;
  v17[0] = a1;
  v7 = type metadata accessor for Dictionary(0, a2, a3, a5);
  v24 = v7;
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for [A : B], v7);
  v23 = WitnessTable;
  Sequence.lazy.getter(v7, WitnessTable);
  v21 = v18;
  v9 = swift_allocObject(&unk_393380, 56, 7);
  v9[2] = a2;
  v9[3] = v26;
  v9[4] = v20;
  v9[5] = v25;
  v9[6] = v22;
  v10 = type metadata accessor for LazySequence(0, v7, WitnessTable);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLDataValue, MLDataValue));
  v12 = swift_getWitnessTable(&protocol conformance descriptor for LazySequence<A>, v10);
  LazySequenceProtocol.map<A>(_:)(partial apply for closure #1 in Dictionary<>.dataValue.getter, v9, v10, v11, v12);
  v21;

  v13 = type metadata accessor for LazyMapSequence(0, v24, v11, v23);
  v14 = swift_getWitnessTable(&protocol conformance descriptor for LazyMapSequence<A, B>, v13);
  MLDataValue.DictionaryType.init<A>(uniqueKeysWithValues:)(v17, v13, v14);
  result = v18;
  v16 = v19;
  *v19 = v18;
  v16[1] = 0;
  *(v16 + 16) = 4;
  return result;
}

uint64_t closure #1 in Dictionary<>.dataValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(a4 + 32))(a2, a4);
  v8 = a1 + *(swift_getTupleTypeMetadata2(0, a2, a3, "key value ", 0) + 48);
  return (*(a6 + 32))(a3, a6);
}

uint64_t Dictionary<>.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v65 = a3;
  v59 = type metadata accessor for Optional(0, a2);
  v4 = *(v59 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v56 = v48;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v54 = v48;
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v57 = v48;
  v14 = 0;
  v15 = specialized handling<A, B>(_:_:)(*(a1 + 16));
  v71 = a1;
  v58 = v10;
  v66 = a2;
  v60 = v4;
  if (!v15)
  {
    BUG();
  }

  v18 = v15;
  v19 = type metadata accessor for CMLDictionary();
  inited = swift_initStackObject(v19, v49);
  *(inited + 16) = v18;
  v16 = Dictionary.init()(&type metadata for String, v66, &protocol witness table for String);
  v69 = v16;

  if (!CMLDictionary.size.getter())
  {
    inited;
    goto LABEL_17;
  }

  v21 = 0;
  v68 = inited;
  do
  {
    v22 = CMLDictionary.keyAndValue(at:)(v21);
    v70 = v23;
    v64 = v14;
    if (v14)
    {
      swift_unexpectedError(v64, "CreateML/DictionaryType.swift", 29, 1, 75);
      BUG();
    }

    v24 = v22;
    v53 = specialized RandomAccessCollection<>.index(after:)(v21);
    v25 = dynamic_cast_existential_1_unconditional(&type metadata for String, &type metadata for String, &protocol descriptor for FeatureValueConvertible);
    v27 = v26;
    v52 = *(v26 + 16);
    v28 = type metadata accessor for Optional(0, v25);
    v72 = v48;
    v55 = v28;
    v29 = *(v28 - 8);
    v30 = *(v29 + 64);
    v31 = alloca(v30);
    v32 = alloca(v30);

    v67 = v24;
    v52(v24, v25, v27);
    if (__swift_getEnumTagSinglePayload(v48, 1, v25) == 1)
    {
      (*(v29 + 8))(v48, v55);
      a4 = 0.0;
      v62 = 0;
      v61 = 0;
      v63 = 0;
    }

    else
    {
      *(&v62 + 1) = v25;
      v63 = v27;
      v34 = __swift_allocate_boxed_opaque_existential_0(&v61);
      (*(*(v25 - 8) + 32))(v34, v48, v25);
    }

    v33 = v65;
    v35 = v70;
    v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureValueConvertible?);
    v37 = swift_dynamicCast(&v50, &v61, v36, &type metadata for String, 6);
    v38 = v54;
    if (!v37 || !v51)
    {
      v68;

      v69;
      return 0;
    }

    v72 = v51;
    v39 = v50;
    v40 = v33;
    v41 = v66;
    static MLDataValueConvertible.makeInstance(featureValue:)(v35, v66, v40, a4);
    if (__swift_getEnumTagSinglePayload(v38, 1, v41) == 1)
    {
      v68;

      v72;
      v69;
      (*(v60 + 8))(v38, v59);
      return 0;
    }

    v42 = v57;
    v43 = v58;
    (*(v58 + 32))(v57, v38, v41);
    v44 = v56;
    (*(v43 + 16))(v56, v42, v41);
    __swift_storeEnumTagSinglePayload(v44, 0, 1, v41);
    *&v61 = v39;
    *(&v61 + 1) = v72;
    v45 = type metadata accessor for Dictionary(0, &type metadata for String, v41, &protocol witness table for String);
    Dictionary.subscript.setter(v44, &v61, v45);

    (*(v43 + 8))(v42, v41);
    v46 = v68;
    v47 = CMLDictionary.size.getter();
    v21 = v53;
    v14 = v64;
  }

  while (v53 != v47);
  v46;
  v16 = v69;
LABEL_17:

  return v16;
}

uint64_t Dictionary<>.featureValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = a3;
  v62 = a1;
  v56 = *(a2 - 8);
  v3 = *(v56 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v59 = v45;
  v55 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2(255, &type metadata for String, a2, "key value ", 0);
  v48 = type metadata accessor for Optional(0, TupleTypeMetadata2);
  v49 = *(v48 - 8);
  v6 = *(v49 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v61 = v45;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v11 = tc_v1_flex_dict_create(0);
  if (!v11)
  {
    BUG();
  }

  v12 = v11;
  v13 = 0;
  v14 = type metadata accessor for CMLDictionary();
  inited = swift_initStackObject(v14, v46);
  *(inited + 16) = v12;
  v15 = 1 << *(v62 + 32);
  v16 = ~(-1 << v15);
  if (v15 >= 64)
  {
    v16 = -1;
  }

  v17 = *(v62 + 64) & v16;
  v57 = (v15 + 63) >> 6;
  v52 = v57 - 1;
  v62;
  v50 = v45;
  while (1)
  {
    if (v17)
    {
      v18 = v56;
LABEL_7:
      _BitScanForward64(&v19, v17);
      v53 = (v17 - 1) & v17;
      v58 = v13;
      v20 = v19 | (v13 << 6);
      v21 = v62;
      v22 = *(v62 + 48);
      v23 = *(v22 + 16 * v20 + 8);
      v24 = v61;
      *v61 = *(v22 + 16 * v20);
      *(v24 + 8) = v23;
      v25 = TupleTypeMetadata2;
      (*(v18 + 16))(v24 + *(TupleTypeMetadata2 + 48), *(v21 + 56) + *(v18 + 72) * v20, v55);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v25);
      v23;
      v26 = v59;
      goto LABEL_15;
    }

    v27 = v13 + 1;
    v18 = v56;
    if (__OFADD__(1, v13))
    {
      BUG();
    }

    if (v27 >= v57)
    {
      v58 = v13;
LABEL_13:
      v26 = v59;
      v25 = TupleTypeMetadata2;
      v28 = v61;
      goto LABEL_14;
    }

    v17 = *(v62 + 8 * v27 + 64);
    if (v17)
    {
      ++v13;
      goto LABEL_7;
    }

    v40 = v13 + 2;
    if (v13 + 2 >= v57)
    {
      v58 = v13 + 1;
      goto LABEL_13;
    }

    v17 = *(v62 + 8 * v27 + 72);
    if (v17)
    {
      goto LABEL_20;
    }

    v41 = v13 + 3;
    if (v13 + 3 >= v57)
    {
      goto LABEL_33;
    }

    v17 = *(v62 + 8 * v27 + 80);
    if (v17)
    {
      goto LABEL_24;
    }

    v40 = v13 + 4;
    if (v13 + 4 >= v57)
    {
      v58 = v13 + 3;
      goto LABEL_13;
    }

    v17 = *(v62 + 8 * v27 + 88);
    if (v17)
    {
LABEL_20:
      v13 = v40;
      goto LABEL_7;
    }

    v41 = v13 + 5;
    if (v13 + 5 >= v57)
    {
LABEL_33:
      v58 = v40;
      goto LABEL_13;
    }

    v17 = *(v62 + 8 * v27 + 96);
    if (v17)
    {
LABEL_24:
      v13 = v41;
      goto LABEL_7;
    }

    v26 = v59;
    v25 = TupleTypeMetadata2;
    v28 = v61;
    while (v13 + 6 < v57)
    {
      v17 = *(v62 + 8 * v13++ + 112);
      if (v17)
      {
        v13 += 5;
        goto LABEL_7;
      }
    }

    v58 = v52;
LABEL_14:
    v24 = v28;
    __swift_storeEnumTagSinglePayload(v28, 1, 1, v25);
    v53 = 0;
LABEL_15:
    v29 = v24;
    v30 = v50;
    (*(v49 + 32))(v50, v29, v48);
    if (__swift_getEnumTagSinglePayload(v30, 1, v25) == 1)
    {
      break;
    }

    v47 = 0;
    v31 = *v30;
    v32 = v30[1];
    v33 = v30 + *(v25 + 48);
    v34 = v55;
    (*(v56 + 32))(v26, v33, v55);
    v35 = MLDataValueConvertible.featureValue.getter(v34, v51);
    v36 = v31;
    v37 = v32;
    v38 = v32;
    v39 = v47;
    CMLDictionary.add(key:value:)(v36, v38, v35);
    if (v39)
    {
      v37;

      swift_unexpectedError(v39, "CreateML/DictionaryType.swift", 29, 1, 166);
      BUG();
    }

    (*(v56 + 8))(v26, v55);
    v37;

    v13 = v58;
    v17 = v53;
  }

  type metadata accessor for CMLFeatureValue();
  v42 = inited;

  v43 = CMLFeatureValue.__allocating_init(_:)(v42);
  swift_setDeallocating(v42);
  tc_v1_release(*(v42 + 16));
  return v43;
}