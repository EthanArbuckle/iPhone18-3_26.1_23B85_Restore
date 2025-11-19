void *MLImageClassifier.FeatureExtractorType.dictionary.getter()
{
  v27 = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
  v1 = *(*(v27 - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v4 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  outlined init with copy of MLTrainingSessionParameters(v0, &v23, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  if (swift_getEnumCaseMultiPayload(&v23, v4) == 1)
  {
    outlined init with take of MLClassifierMetrics(&v23, &v23, type metadata accessor for MLImageClassifier.CustomFeatureExtractor);
    v25 = &type metadata for String;
    *&v24 = 0x6D6F74737563;
    *(&v24 + 1) = 0xE600000000000000;
    outlined init with take of Any(&v24, v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
    v28 = _swiftEmptyDictionarySingleton;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, 1684957547, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    v9 = v28;
    v10 = type metadata accessor for URL(0);
    v25 = v10;
    v11 = __swift_allocate_boxed_opaque_existential_0(&v24);
    (*(*(v10 - 8) + 16))(v11, &v23, v10);
    outlined init with take of Any(&v24, v26);
    v12 = swift_isUniquelyReferenced_nonNull_native(v9);
    v28 = v9;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, 0x61705F6C65646F6DLL, 0xEA00000000006874, v12);
    v13 = v28;
    v14 = *(v27 + 20);
    v15 = *(&v23 + v14 + 8);
    if (v15)
    {
      v16 = *(&v23 + v14);
      v25 = &type metadata for String;
      *&v24 = v16;
      *(&v24 + 1) = v15;
      outlined init with take of Any(&v24, v26);
      v15;
      v17 = swift_isUniquelyReferenced_nonNull_native(v13);
      v28 = v13;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, 0x74757074756FLL, 0xE600000000000000, v17);
      v13 = v28;
    }

    outlined destroy of MLActivityClassifier.ModelParameters(&v23, type metadata accessor for MLImageClassifier.CustomFeatureExtractor);
  }

  else
  {
    v18 = v23;
    v19 = v24;
    v25 = &type metadata for String;
    *&v24 = 0x697270656E656373;
    *(&v24 + 1) = 0xEA0000000000746ELL;
    outlined init with take of Any(&v24, v26);
    v20 = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
    v28 = _swiftEmptyDictionarySingleton;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, 1684957547, 0xE400000000000000, v20);
    v13 = v28;
    if (!v19)
    {
      v25 = &type metadata for Int;
      *&v24 = v18;
      outlined init with take of Any(&v24, v26);
      v21 = swift_isUniquelyReferenced_nonNull_native(v13);
      v28 = v13;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, 0x6E6F697369766572, 0xE800000000000000, v21);
      return v28;
    }
  }

  return v13;
}

void *MLImageClassifier.ModelParameters.ClassifierType.dictionary.getter()
{
  v1 = *v0;
  if (*v0)
  {
    v11 = &type metadata for String;
    *&v10 = 0xD000000000000014;
    outlined init with take of Any(&v10, v12);
    v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
    v13 = _swiftEmptyDictionarySingleton;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, 1684957547, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    v3 = v13;
    v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
    *&v10 = v1;
    outlined init with take of Any(&v10, v12);
    v4 = swift_isUniquelyReferenced_nonNull_native(v3);
    v13 = v3;
    v5 = v4;
    v6 = 0x7A6953726579616CLL;
    v7 = 0xEA00000000007365;
  }

  else
  {
    v11 = &type metadata for String;
    *&v10 = 0xD000000000000011;
    *(&v10 + 1) = "multilayerPerceptron" + 0x8000000000000000;
    outlined init with take of Any(&v10, v12);
    v8 = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
    v13 = _swiftEmptyDictionarySingleton;
    v5 = v8;
    v6 = 1684957547;
    v7 = 0xE400000000000000;
  }

  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, v6, v7, v5);
  return v13;
}

uint64_t MLImageClassifier.DataSource.dictionary.getter()
{
  v1 = v0;
  v27 = type metadata accessor for URL(0);
  v2 = *(v27 - 8);
  v3 = *(v2 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = type metadata accessor for MLImageClassifier.DataSource(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  outlined init with copy of MLTrainingSessionParameters(v1, &v23, type metadata accessor for MLImageClassifier.DataSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v23, v6);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v18 = v23;
      v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      inited = swift_initStackObject(v19, v24);
      *(inited + 16) = 2;
      *(inited + 24) = 4;
      *(inited + 32) = 1684957547;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 72) = &type metadata for String;
      strcpy((inited + 48), "files_by_label");
      *(inited + 63) = -18;
      *(inited + 80) = 0x73656C6966;
      *(inited + 88) = 0xE500000000000000;
      v21 = specialized _NativeDictionary.mapValues<A>(_:)(v18);
      v18;
      *(inited + 120) = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : [String]]);
      *(inited + 96) = v21;
      return Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
    }

    v11 = v27;
    v28 = v2;
    (*(v2 + 32))(&v23, &v23, v27);
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
    v13 = swift_initStackObject(v12, v25);
    v13[2] = 2;
    v13[3] = 4;
    v13[4] = 1684957547;
    v13[5] = 0xE400000000000000;
    v13[9] = &type metadata for String;
    v13[6] = 0x5F64656C6562616CLL;
    v14 = 0xED000073656C6966;
  }

  else
  {
    v11 = v27;
    v28 = v2;
    (*(v2 + 32))(&v23, &v23, v27);
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
    v13 = swift_initStackObject(v12, v26);
    v13[2] = 2;
    v13[3] = 4;
    v13[4] = 1684957547;
    v13[5] = 0xE400000000000000;
    v14 = "session_id_column" + 0x8000000000000000;
    v13[9] = &type metadata for String;
    v13[6] = 0xD000000000000013;
  }

  v13[7] = v14;
  v13[10] = 1752457584;
  v13[11] = 0xE400000000000000;
  v15 = URL.path.getter(v12);
  v13[15] = &type metadata for String;
  v13[12] = v15;
  v13[13] = v16;
  v17 = Dictionary.init(dictionaryLiteral:)(v13, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
  (*(v28 + 8))(&v23, v11);
  return v17;
}

uint64_t MLImageClassifier.DataSource.init(dictionary:tableFile:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = v2;
  v5 = type metadata accessor for MLImageClassifier.DataSource(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  if (!*(a1 + 16) || (v9 = specialized __RawDictionaryStorage.find<A>(_:)(1684957547, 0xE400000000000000), (v10 & 1) == 0))
  {
    a1;
LABEL_27:
    v26 = type metadata accessor for URL(0);
    (*(*(v26 - 8) + 8))(v3, v26);
    v20 = 1;
    return __swift_storeEnumTagSinglePayload(v4, v20, 1, v5);
  }

  v33 = &v30;
  v37 = a2;
  outlined init with copy of Any(*(a1 + 56) + 32 * v9, v31);
  if (!swift_dynamicCast(&v34, v31, &type metadata for Any + 8, &type metadata for String, 6))
  {
    a1;
    goto LABEL_26;
  }

  v36 = v4;
  v11 = v34;
  v12 = v35;
  if (v34 ^ 0xD000000000000013 | v35 ^ (&aLabeledDirecto[-32] | 0x8000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000013, &aLabeledDirecto[-32] | 0x8000000000000000, v34, v35, 0) & 1) == 0)
  {
    if (v11 ^ 0x5F64656C6562616CLL | v12 ^ 0xED000073656C6966 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x5F64656C6562616CLL, 0xED000073656C6966, v11, v12, 0) & 1) == 0)
    {
      if (v11 ^ 0x79625F73656C6966 | v12 ^ 0xEE006C6562616C5FLL)
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)(0x79625F73656C6966, 0xEE006C6562616C5FLL, v11, v12, 0);
        v12;
        if ((v21 & 1) == 0)
        {
          v28 = type metadata accessor for URL(0);
          (*(*(v28 - 8) + 8))(v37, v28);
          a1;
          v20 = 1;
          v4 = v36;
          return __swift_storeEnumTagSinglePayload(v4, v20, 1, v5);
        }
      }

      else
      {
        v12;
      }

      specialized Dictionary.subscript.getter(0x73656C6966, 0xE500000000000000, a1);
      a1;
      v4 = v36;
      if (v32)
      {
        v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : [String]]);
        if (!swift_dynamicCast(&v34, v31, &type metadata for Any + 8, v22, 6))
        {
          goto LABEL_26;
        }

        v23 = v34;
        v24 = specialized _NativeDictionary.mapValues<A>(_:)(v34);
        v23;
        v25 = type metadata accessor for URL(0);
        (*(*(v25 - 8) + 8))(v37, v25);
        v15 = v33;
        *v33 = v24;
        v4 = v36;
        v29 = 2;
        goto LABEL_17;
      }
    }

    else
    {
      v12;
      specialized Dictionary.subscript.getter(1752457584, 0xE400000000000000, a1);
      a1;
      v4 = v36;
      if (v32)
      {
        if (!swift_dynamicCast(&v34, v31, &type metadata for Any + 8, &type metadata for String, 6))
        {
          goto LABEL_26;
        }

        v18 = v35;
        v15 = v33;
        URL.init(fileURLWithPath:)(v34, v35);
        v18;
        v19 = type metadata accessor for URL(0);
        (*(*(v19 - 8) + 8))(v37, v19);
        v29 = 1;
LABEL_17:
        v16 = v29;
        goto LABEL_18;
      }
    }

    _sypSgWOhTm_0(v31, &demangling cache variable for type metadata for Any?);
    goto LABEL_26;
  }

  v12;
  specialized Dictionary.subscript.getter(1752457584, 0xE400000000000000, a1);
  a1;
  if (!v32)
  {
    _sypSgWOhTm_0(v31, &demangling cache variable for type metadata for Any?);
    v4 = v36;
    goto LABEL_26;
  }

  v13 = swift_dynamicCast(&v34, v31, &type metadata for Any + 8, &type metadata for String, 6);
  v4 = v36;
  if (!v13)
  {
LABEL_26:
    v3 = v37;
    goto LABEL_27;
  }

  v14 = v35;
  v15 = v33;
  URL.init(fileURLWithPath:)(v34, v35);
  v14;
  v16 = 0;
  v17 = type metadata accessor for URL(0);
  (*(*(v17 - 8) + 8))(v37, v17);
LABEL_18:
  swift_storeEnumTagMultiPayload(v15, v5, v16);
  outlined init with take of MLClassifierMetrics(v15, v4, type metadata accessor for MLImageClassifier.DataSource);
  v20 = 0;
  return __swift_storeEnumTagSinglePayload(v4, v20, 1, v5);
}

uint64_t outlined copy of MLImageClassifier.ModelParameters.ClassifierType?(uint64_t a1)
{
  if (a1 != 2)
  {
    return a1;
  }

  return result;
}

uint64_t outlined consume of MLImageClassifier.ModelParameters.ClassifierType?(uint64_t a1)
{
  if (a1 != 2)
  {
    return a1;
  }

  return result;
}

uint64_t _sypSgWOhTm_0(uint64_t a1, uint64_t *a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(a2);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for MLSupportVectorClassifier.Model(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v16 = *a2;
    *v3 = *a2;
    v3 = (v16 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = a2[1];
    v3[1] = v5;
    v6 = a2[2];
    v3[2] = v6;
    v3[3] = a2[3];
    v7 = a2[4];
    v3[4] = v7;
    v8 = *(a3 + 24);
    v9 = v3 + v8;
    v10 = a2 + v8;
    v5;
    v6;
    v7;
    v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
    if (swift_getEnumCaseMultiPayload(v10, v11) == 1)
    {
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>);
      (*(*(v12 - 8) + 16))(v9, v10, v12);
      v13 = 1;
      v14 = v9;
      v15 = v11;
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>);
      (*(*(v17 - 8) + 16))(v9, v10, v17);
      v14 = v9;
      v15 = v11;
      v13 = 0;
    }

    swift_storeEnumTagMultiPayload(v14, v15, v13);
  }

  return v3;
}

uint64_t destroy for MLSupportVectorClassifier.Model(void *a1, uint64_t a2)
{
  a1[1];
  a1[2];
  a1[4];
  v2 = a1 + *(a2 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
  v4 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
  if (swift_getEnumCaseMultiPayload(v2, v3) == 1)
  {
    v4 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
  }

  v5 = __swift_instantiateConcreteTypeFromMangledName(v4);
  return (*(*(v5 - 8) + 8))(v2, v5);
}

void *initializeWithCopy for MLSupportVectorClassifier.Model(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = a2[1];
  a1[1] = v4;
  v5 = a2[2];
  a1[2] = v5;
  a1[3] = a2[3];
  v6 = a2[4];
  a1[4] = v6;
  v7 = *(a3 + 24);
  v8 = a1 + v7;
  v9 = a2 + v7;
  v4;
  v5;
  v6;
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v9, v10);
  v12 = EnumCaseMultiPayload == 1;
  v13 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
  if (EnumCaseMultiPayload == 1)
  {
    v13 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledName(v13);
  (*(*(v14 - 8) + 16))(v8, v9, v14);
  swift_storeEnumTagMultiPayload(v8, v10, v12);
  return a1;
}

void *assignWithCopy for MLSupportVectorClassifier.Model(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = a2[1];
  v6 = a1[1];
  a1[1] = v5;
  v5;
  v6;
  v7 = a2[2];
  v8 = a1[2];
  a1[2] = v7;
  v7;
  v8;
  a1[3] = a2[3];
  v9 = a2[4];
  v10 = a1[4];
  a1[4] = v9;
  v9;
  v10;
  if (a1 != a2)
  {
    v11 = *(a3 + 24);
    v12 = a2 + v11;
    v13 = a1 + v11;
    outlined destroy of Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>(v13);
    v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v12, v14);
    v16 = EnumCaseMultiPayload == 1;
    v17 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
    if (EnumCaseMultiPayload == 1)
    {
      v17 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
    }

    v18 = __swift_instantiateConcreteTypeFromMangledName(v17);
    (*(*(v18 - 8) + 16))(v13, v12, v18);
    swift_storeEnumTagMultiPayload(v13, v14, v16);
  }

  return a1;
}

uint64_t outlined destroy of Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t initializeWithTake for MLSupportVectorClassifier.Model(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a3 + 24);
  v5 = a1 + v4;
  v6 = v4 + a2;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v6, v7);
  v9 = EnumCaseMultiPayload == 1;
  v10 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
  if (EnumCaseMultiPayload == 1)
  {
    v10 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledName(v10);
  (*(*(v11 - 8) + 32))(v5, v6, v11);
  swift_storeEnumTagMultiPayload(v5, v7, v9);
  return a1;
}

void *assignWithTake for MLSupportVectorClassifier.Model(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = a1[1];
  a1[1] = a2[1];
  v5;
  v6 = a1[2];
  a1[2] = a2[2];
  v6;
  a1[3] = a2[3];
  v7 = a1[4];
  a1[4] = a2[4];
  v7;
  if (a1 != a2)
  {
    v8 = *(a3 + 24);
    v9 = a2 + v8;
    v10 = a1 + v8;
    outlined destroy of Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>(v10);
    v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v9, v11);
    v13 = EnumCaseMultiPayload == 1;
    v14 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
    if (EnumCaseMultiPayload == 1)
    {
      v14 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledName(v14);
    (*(*(v15 - 8) + 32))(v10, v9, v15);
    swift_storeEnumTagMultiPayload(v10, v11, v13);
  }

  return a1;
}

uint64_t sub_2818FD(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
    return __swift_getEnumTagSinglePayload(*(a3 + 24) + a1, a2, v5);
  }

  return result;
}

uint64_t sub_28198A(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + 8) = 2 * (a2 - 1);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
    return __swift_storeEnumTagSinglePayload(*(a4 + 24) + a1, a2, a2, v5);
  }

  return result;
}

uint64_t type metadata accessor for MLSupportVectorClassifier.Model(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLSupportVectorClassifier.Model;
  if (!type metadata singleton initialization cache for MLSupportVectorClassifier.Model)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLSupportVectorClassifier.Model);
  }

  return result;
}

uint64_t type metadata completion function for MLSupportVectorClassifier.Model(uint64_t a1)
{
  v3[0] = &unk_347F38;
  v3[1] = &unk_347F50;
  result = type metadata accessor for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>(319);
  if (v2 <= 0x3F)
  {
    v3[2] = *(result - 8) + 64;
    swift_initStructMetadata(a1, 256, 3, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>(uint64_t a1)
{
  result = lazy cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>;
  if (!lazy cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>);
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>);
    result = type metadata accessor for Either(a1, v2, v3, v4);
    if (!v5)
    {
      lazy cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>> = result;
    }
  }

  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents26ClassificationDistributionVySSGG_SSSgs5NeverOTg503_s8d129ML25MLSupportVectorClassifierV5ModelV7applied2to12eventHandler11TabularData0L5FrameVAK_y0A12MLComponents5EventVYbcSgtYaKFSSSgAL26fG56VySSGcfu_32f90808cfe034de74f1d450820ef1a2faAsPTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<String>) - 8);
    v3 = ((*(v2 + 80) + 32) & ~*(v2 + 80)) + a1;
    v10 = *(v2 + 72);
    do
    {
      KeyPath = swift_getKeyPath(&unk_347FE8);
      swift_getAtKeyPath(v3, KeyPath);

      v5 = v9;
      v6 = _swiftEmptyArrayStorage[2];
      v7 = v6 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v6)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v6 + 1, 1);
        v7 = v6 + 1;
        v5 = v9;
      }

      _swiftEmptyArrayStorage[2] = v7;
      *&_swiftEmptyArrayStorage[2 * v6 + 4] = v5;
      v3 += v10;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents26ClassificationDistributionVySiGG_SiSgs5NeverOTg503_s8d129ML25MLSupportVectorClassifierV5ModelV7applied2to12eventHandler11TabularData0L5FrameVAK_y0A12MLComponents5EventVYbcSgtYaKFSiSgAL26fG57VySiGcfu0_32be6a1569bf578dffa8811060c9259ebeAsPTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<Int>) - 8);
    v3 = ((*(v2 + 80) + 32) & ~*(v2 + 80)) + a1;
    v11 = *(v2 + 72);
    do
    {
      v10 = v1;
      KeyPath = swift_getKeyPath(&unk_348020);
      swift_getAtKeyPath(v3, KeyPath);

      v5 = v12;
      v6 = _swiftEmptyArrayStorage[2];
      v7 = v6 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v6)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v7, 1);
        v7 = v6 + 1;
        v5 = v12;
      }

      _swiftEmptyArrayStorage[2] = v7;
      v8 = 2 * v6;
      _swiftEmptyArrayStorage[v8 + 4] = v5;
      LOBYTE(_swiftEmptyArrayStorage[v8 + 5]) = v13 & 1;
      v3 += v11;
      v1 = v10 - 1;
    }

    while (v10 != 1);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t specialized FeatureVectorizer.Transformer.exportEncoders()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized FeatureVectorizer.Transformer.exportEncoders()(a1, a2, a3);
}

{
  v210 = a2;
  v5 = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureDescription?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v183 = &v180;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v184 = &v180;
  v193 = type metadata accessor for FeatureVectorizerConfiguration.Input(0);
  v194 = *(v193 - 8);
  v11 = *(v194 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v195 = &v180;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v221 = &v180;
  v217 = type metadata accessor for FeatureDescription(0);
  v222 = *(v217 - 8);
  v16 = *(v222 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v196 = &v180;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v197 = &v180;
  v21 = alloca(v16);
  v22 = alloca(v16);
  v208 = &v180;
  v201 = type metadata accessor for FeatureType.ShapedArrayParameters.DataType(0);
  v200 = *(v201 - 8);
  v23 = *(v200 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v185 = &v180;
  v26 = *(*(type metadata accessor for FeatureType(0) - 8) + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v186 = &v180;
  v189 = type metadata accessor for ModelKind(0);
  v188 = *(v189 - 8);
  v29 = *(v188 + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v190 = &v180;
  v224 = type metadata accessor for Model(0);
  v226 = *(v224 - 8);
  v32 = *(v226 + 64);
  v33 = alloca(v32);
  v34 = alloca(v32);
  v198 = &v180;
  v35 = alloca(v32);
  v36 = alloca(v32);
  v204 = &v180;
  v37 = alloca(v32);
  v38 = alloca(v32);
  v199 = &v180;
  v39 = alloca(v32);
  v40 = alloca(v32);
  v205 = &v180;
  v41 = alloca(v32);
  v42 = alloca(v32);
  Model.init()();
  v218 = &v180;
  Model.specificationVersion.setter(1);
  a1;
  ML16ColumnDescriptorVG_SSs5NeverOTg503_s8d131ML17FeatureVectorizerV11TransformerV10vectorized_13includingBias0A12MLComponents11DenseMatrixVyxG11TabularData0M5FrameV_SbtKFSSAA16fG54Vcfu_33_44daf68368b8b9c6f03dca699c8750fcAPSSTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML16ColumnDescriptorVG_SSs5NeverOTg503_s8d131ML17FeatureVectorizerV11TransformerV10vectorized_13includingBias0A12MLComponents11DenseMatrixVyxG11TabularData0M5FrameV_SbtKFSSAA16fG54Vcfu_33_44daf68368b8b9c6f03dca699c8750fcAPSSTf3nnnpk_nTf1cn_n(a1);
  v187 = v3;
  a1;
  v44 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(ML16ColumnDescriptorVG_SSs5NeverOTg503_s8d131ML17FeatureVectorizerV11TransformerV10vectorized_13includingBias0A12MLComponents11DenseMatrixVyxG11TabularData0M5FrameV_SbtKFSSAA16fG54Vcfu_33_44daf68368b8b9c6f03dca699c8750fcAPSSTf3nnnpk_nTf1cn_n);
  v215 = v44;
  v44;
  v45 = a3;
  a3;
  v46 = v210;
  v47 = specialized Set.contains(_:)(v210, v45, v44);
  v211 = v45;
  v209 = a1;
  if (v47)
  {
    v227 = v44;
    v211;
    v48 = 1;
    while (1)
    {
      v206 = v210;
      v207 = v211;
      v211;
      v49._countAndFlagsBits = 95;
      v49._object = 0xE100000000000000;
      String.append(_:)(v49);
      v213 = v48;
      v50 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
      v52 = v51;
      v49._countAndFlagsBits = v50;
      v49._object = v51;
      String.append(_:)(v49);
      v52;
      v53 = __OFADD__(1, v48++);
      if (v53)
      {
        BUG();
      }

      v46 = v206;
      v45 = v207;
      v207;
      v54 = specialized Set.contains(_:)(v46, v45, v227);
      v45;
      if ((v54 & 1) == 0)
      {
        break;
      }

      v45;
    }

    v5 = v209;
    v44 = v227;
  }

  v44;
  v45;
  v192 = v46;
  v191 = v45;
  specialized Set._Variant.insert(_:)(&v206, v46, v45);
  v207;
  v182 = *(v5 + 16);
  if (v182)
  {
    v5;
    v225 = 0;
    v55 = 0;
    v202._object = _swiftEmptyArrayStorage;
    v216 = _swiftEmptyArrayStorage;
    do
    {
      v181 = v55;
      v56 = 32 * v55;
      v202._countAndFlagsBits = *(v5 + 32 * v55 + 32);
      v57 = *(v5 + 32 * v55 + 40);
      v58 = *(v5 + 32 * v55 + 48);
      v59 = *(v5 + v56 + 56);
      v57;
      outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v58, v59);
      v60 = v57;
      v61 = v58;
      countAndFlagsBits = v202._countAndFlagsBits;
      ColumnDescriptor.featureDescription.getter(v202._countAndFlagsBits, v57, v61, v59);
      switch(v59)
      {
        case 0:
        case 1:
        case 2:
        case 3:
          FeatureVectorizerConfiguration.Input.init(name:size:)(countAndFlagsBits, v57, v61);
          outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v61, v59);
          if (__OFADD__(v61, v225))
          {
            BUG();
          }

          v225 += v61;
          (*(v222 + 16))(v196, v208, v217);
          v63 = Model.inputs.modify(&v206);
          v65 = v64;
          v66 = *v64;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v64);
          *v65 = v66;
          v227 = v63;
          if (!isUniquelyReferenced_nonNull_native)
          {
            v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v66[2] + 1, 1, v66);
            *v65 = v66;
          }

          v68 = v66[2];
          if (v66[3] >> 1 <= v68)
          {
            v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v66[3] >= 2uLL, v68 + 1, 1, v66);
            *v65 = v66;
          }

          v66[2] = v68 + 1;
          v69 = v222;
          v70 = v66 + ((*(v222 + 80) + 32) & ~*(v222 + 80)) + *(v222 + 72) * v68;
          v71 = v196;
          goto LABEL_16;
        case 4:
          v206 = 0x5F6465646F636E65;
          v207 = 0xE800000000000000;
          v57;
          v214 = v61;
          outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v61, 4);
          v97._countAndFlagsBits = countAndFlagsBits;
          v97._object = v60;
          v219 = v60;
          String.append(_:)(v97);
          v219;
          v98 = v206;
          v99 = v207;
          v100 = v215;
          v207;
          v223 = v100;
          LOBYTE(v100) = specialized Set.contains(_:)(v98, v99, v100);
          v99;
          if ((v100 & 1) == 0)
          {
            v227 = v98;
            v108 = v99;
            goto LABEL_60;
          }

          v101 = 1;
          v220 = v99;
          v203 = v98;
LABEL_36:
          v206 = v98;
          v207 = v99;
          v99;
          v102._countAndFlagsBits = 95;
          v102._object = 0xE100000000000000;
          String.append(_:)(v102);
          v213 = v101;
          v103 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
          v105 = v104;
          v102._countAndFlagsBits = v103;
          v102._object = v104;
          String.append(_:)(v102);
          v105;
          v53 = __OFADD__(1, v101);
          v106 = v101 + 1;
          if (v53)
          {
            BUG();
          }

          v212 = v106;
          v107 = v206;
          v108 = v207;
          v83 = *(v223 + 16) == 0;
          v227 = v206;
          if (v83)
          {
            v119 = v220;
          }

          else
          {
            Hasher.init(_seed:)(*(v223 + 40));
            v108;
            String.hash(into:)(&v206, v107);
            v109 = Hasher._finalize()();
            v110 = ~(-1 << *(v223 + 32));
            v111 = v110 & v109;
            v112 = *(v223 + 8 * ((v110 & v109) >> 6) + 56);
            if (_bittest64(&v112, v111))
            {
              v113 = v107;
              v114 = *(v223 + 48);
              do
              {
                if (!(v113 ^ *(v114 + 16 * v111) | v108 ^ *(v114 + 16 * v111 + 8)) || (v115 = _stringCompareWithSmolCheck(_:_:expecting:)(*(v114 + 16 * v111), *(v114 + 16 * v111 + 8), v113, v108, 0), v113 = v227, (v115 & 1) != 0))
                {
                  swift_bridgeObjectRelease_n(v108, 2);
                  v99 = v220;
                  v98 = v203;
                  v101 = v212;
                  goto LABEL_36;
                }

                v111 = v110 & (v111 + 1);
                v116 = *(v223 + 8 * (v111 >> 6) + 56);
              }

              while (_bittest64(&v116, v111));
            }

            v220;
            v119 = v108;
          }

          v119;
LABEL_60:
          v108;
          specialized Set._Variant.insert(_:)(&v206, v227, v108);
          v207;
          v139 = v214;
          v140 = *(v214 + 16);
          v108;
          FeatureVectorizerConfiguration.Input.init(name:size:)(v227, v108, v140);
          if (__OFADD__(v140, v225))
          {
            BUG();
          }

          v225 += v140;
          v141 = v205;
          specialized FeatureVectorizer.Transformer.makeOneHotEncoder(inputName:outputName:categories:)(v202._countAndFlagsBits, v219, v227, v108, v139);
          outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v139, 4);
          v108;
          (*(v226 + 16))(v199, v141, v224);
          v142 = v216;
          if (!swift_isUniquelyReferenced_nonNull_native(v216))
          {
            v142 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v142[2] + 1, 1, v142);
          }

          v143 = v142[2];
          v144 = v224;
          v145 = v226;
          if (v142[3] >> 1 <= v143)
          {
            v161 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v142[3] >= 2uLL, v143 + 1, 1, v142);
            v145 = v226;
            v144 = v224;
            v142 = v161;
          }

          v142[2] = v143 + 1;
          v146 = *(v145 + 80);
          v216 = v142;
          (*(v145 + 32))(v142 + ((v146 + 32) & ~v146) + *(v145 + 72) * v143, v199, v144);
          v147 = Model.outputs.getter();
          v148 = v184;
          specialized Collection.first.getter(v147);
          v147;
          v149 = v217;
          if (__swift_getEnumTagSinglePayload(v148, 1, v217) == 1)
          {
            BUG();
          }

          v227 = Model.inputs.modify(&v206);
          v151 = v150;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v152 = *(*v151 + 16);
          specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v152);
          v153 = *v151;
          *(v153 + 16) = v152 + 1;
          (*(v222 + 32))(v153 + ((*(v222 + 80) + 32) & ~*(v222 + 80)) + *(v222 + 72) * v152, v148, v149);
          (v227)(&v206, 0);
          v219;
          outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v214, 4);
          v138 = v205;
          goto LABEL_67;
        case 5:
          v206 = 0x5F6465646F636E65;
          v207 = 0xE800000000000000;
          v57;
          v214 = v61;
          outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v61, 5);
          v72._countAndFlagsBits = countAndFlagsBits;
          v72._object = v60;
          v219 = v60;
          String.append(_:)(v72);
          v219;
          v73 = v206;
          v74 = v207;
          v75 = v215;
          v207;
          v227 = v75;
          LOBYTE(v75) = specialized Set.contains(_:)(v73, v74, v75);
          v74;
          if ((v75 & 1) == 0)
          {
            v117 = v73;
            goto LABEL_51;
          }

          v212 = 1;
          v220 = v74;
          v203 = v73;
          break;
        case 6:
          FeatureVectorizerConfiguration.Input.init(name:size:)(countAndFlagsBits, v57, 1);
          outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v61, 6);
          if (__OFADD__(1, v225))
          {
            BUG();
          }

          ++v225;
          (*(v222 + 16))(v197, v208, v217);
          v227 = Model.inputs.modify(&v206);
          v93 = v92;
          v94 = *v92;
          v95 = swift_isUniquelyReferenced_nonNull_native(*v92);
          *v93 = v94;
          if (!v95)
          {
            v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v94[2] + 1, 1, v94);
            *v93 = v94;
          }

          v96 = v94[2];
          if (v94[3] >> 1 <= v96)
          {
            v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v94[3] >= 2uLL, v96 + 1, 1, v94);
            *v93 = v94;
          }

          v94[2] = v96 + 1;
          v69 = v222;
          v70 = v94 + ((*(v222 + 80) + 32) & ~*(v222 + 80)) + *(v222 + 72) * v96;
          v71 = v197;
LABEL_16:
          (*(v69 + 32))(v70, v71, v217);
          (v227)(&v206, 0);
          goto LABEL_68;
      }

      while (1)
      {
        v206 = v73;
        v207 = v74;
        v74;
        v76._countAndFlagsBits = 95;
        v76._object = 0xE100000000000000;
        String.append(_:)(v76);
        v77 = v212;
        v213 = v212;
        v78 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        v80 = v79;
        v76._countAndFlagsBits = v78;
        v76._object = v79;
        String.append(_:)(v76);
        v80;
        v53 = __OFADD__(1, v77);
        v81 = v77 + 1;
        if (v53)
        {
          BUG();
        }

        v212 = v81;
        v82 = v206;
        v74 = v207;
        v83 = *(v227 + 16) == 0;
        v223 = v206;
        if (v83)
        {
          break;
        }

        Hasher.init(_seed:)(*(v227 + 40));
        v74;
        String.hash(into:)(&v206, v82);
        v84 = Hasher._finalize()();
        v85 = ~(-1 << *(v227 + 32));
        v86 = v85 & v84;
        v87 = *(v227 + 8 * ((v85 & v84) >> 6) + 56);
        if (!_bittest64(&v87, v86))
        {
LABEL_47:
          v220;
          v118 = v74;
          goto LABEL_50;
        }

        v88 = v82;
        v89 = *(v227 + 48);
        while (v88 ^ *(v89 + 16 * v86) | v74 ^ *(v89 + 16 * v86 + 8))
        {
          v90 = _stringCompareWithSmolCheck(_:_:expecting:)(*(v89 + 16 * v86), *(v89 + 16 * v86 + 8), v88, v74, 0);
          v88 = v223;
          if (v90)
          {
            break;
          }

          v86 = v85 & (v86 + 1);
          v91 = *(v227 + 8 * (v86 >> 6) + 56);
          if (!_bittest64(&v91, v86))
          {
            goto LABEL_47;
          }
        }

        swift_bridgeObjectRelease_n(v74, 2);
        v74 = v220;
        v73 = v203;
      }

      v118 = v220;
LABEL_50:
      v118;
      v117 = v223;
LABEL_51:
      v74;
      specialized Set._Variant.insert(_:)(&v206, v117, v74);
      v207;
      v120 = v214;
      v121 = *(v214 + 16);
      v74;
      FeatureVectorizerConfiguration.Input.init(name:size:)(v117, v74, v121);
      if (__OFADD__(v121, v225))
      {
        BUG();
      }

      v122 = v121 + v225;
      v123 = v117;
      v124 = v204;
      specialized FeatureVectorizer.Transformer.makeDictionaryVectorizer(inputName:outputName:descriptors:)(v202._countAndFlagsBits, v219, v123, v74, v120);
      outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v120, 5);
      v74;
      (*(v226 + 16))(v198, v124, v224);
      v125 = v216;
      v126 = swift_isUniquelyReferenced_nonNull_native(v216);
      v225 = v122;
      if (!v126)
      {
        v125 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v125[2] + 1, 1, v125);
      }

      v127 = v125[2];
      v128 = v224;
      v129 = v226;
      if (v125[3] >> 1 <= v127)
      {
        v160 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v125[3] >= 2uLL, v127 + 1, 1, v125);
        v129 = v226;
        v128 = v224;
        v125 = v160;
      }

      v125[2] = v127 + 1;
      v130 = *(v129 + 80);
      v216 = v125;
      (*(v129 + 32))(v125 + ((v130 + 32) & ~v130) + *(v129 + 72) * v127, v198, v128);
      v131 = Model.outputs.getter();
      v132 = v183;
      specialized Collection.first.getter(v131);
      v131;
      v133 = v217;
      if (__swift_getEnumTagSinglePayload(v132, 1, v217) == 1)
      {
        BUG();
      }

      v227 = Model.inputs.modify(&v206);
      v135 = v134;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v136 = *(*v135 + 16);
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v136);
      v137 = *v135;
      *(v137 + 16) = v136 + 1;
      (*(v222 + 32))(v137 + ((*(v222 + 80) + 32) & ~*(v222 + 80)) + *(v222 + 72) * v136, v132, v133);
      (v227)(&v206, 0);
      v219;
      outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v214, 5);
      v138 = v204;
LABEL_67:
      (*(v226 + 8))(v138, v224);
LABEL_68:
      (*(v194 + 16))(v195, v221, v193);
      object = v202._object;
      if (!swift_isUniquelyReferenced_nonNull_native(v202._object))
      {
        object = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, object[2] + 1, 1, object);
      }

      v155 = object[2];
      if (object[3] >> 1 <= v155)
      {
        object = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(object[3] >= 2uLL, v155 + 1, 1, object);
      }

      v55 = v181 + 1;
      object[2] = v155 + 1;
      v156 = v194;
      v157 = *(v194 + 80);
      v202._object = object;
      v158 = object + ((v157 + 32) & ~v157) + *(v194 + 72) * v155;
      v159 = v193;
      (*(v194 + 32))(v158, v195, v193);
      (*(v156 + 8))(v221, v159);
      (*(v222 + 8))(v208, v217);
      v5 = v209;
    }

    while (v55 != v182);
    v209;
    v162 = v202._object;
  }

  else
  {
    v162 = _swiftEmptyArrayStorage;
    v225 = 0;
    v216 = _swiftEmptyArrayStorage;
  }

  v215;
  v163 = v190;
  FeatureVectorizerConfiguration.init(inputs:)(v162);
  (*(v188 + 104))(v163, enum case for ModelKind.featureVectorizer(_:), v189);
  Model.kind.setter(v163);
  v164 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>);
  v165 = swift_allocObject(v164, ((*(v222 + 80) + 32) & ~*(v222 + 80)) + *(v222 + 72), *(v222 + 80) | 7);
  v221 = v165;
  *(v165 + 16) = 1;
  *(v165 + 24) = 2;
  v166 = v185;
  (*(v200 + 104))(v185, enum case for FeatureType.ShapedArrayParameters.DataType.double(_:), v201);
  v167 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v168 = swift_allocObject(v167, 40, 7);
  v168[2] = 1;
  v168[3] = 2;
  v168[4] = v225;
  v169 = v186;
  static FeatureType.shapedArray(dataType:shape:optional:)(v166, v168, 0);
  v168;
  (*(v200 + 8))(v166, v201);
  FeatureDescription.init(name:type:description:)(v192, v191, v169, 0, 0xE000000000000000);
  v170 = v218;
  Model.outputs.setter(v221);
  v171 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Model>);
  v172 = *(v226 + 80);
  v173 = (v172 + 32) & ~*(v226 + 80);
  v174 = swift_allocObject(v171, v173 + *(v226 + 72), v172 | 7);
  *(v174 + 16) = 1;
  *(v174 + 24) = 2;
  v175 = v174 + v173;
  v176 = v224;
  v177 = v226;
  (*(v226 + 16))(v175, v170, v224);
  v206 = v216;
  specialized Array.append<A>(contentsOf:)(v174);
  v178 = v206;
  (*(v177 + 8))(v218, v176);
  return v178;
}

{
  return specialized FeatureVectorizer.Transformer.exportEncoders()(a1, a2, a3);
}

uint64_t specialized FeatureVectorizer.Transformer.makeOneHotEncoder(inputName:outputName:categories:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v31 = a3;
  v33 = a2;
  v34 = a1;
  v7 = v5;
  v35 = type metadata accessor for FeatureType(0);
  v36 = *(v35 - 8);
  v8 = *(v36 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v32 = v28;
  v41 = type metadata accessor for OneHotEncoderConfiguration.UnknownBehavior(0);
  v37 = *(v41 - 8);
  v11 = *(v37 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v39 = type metadata accessor for ModelKind(0);
  v40 = *(v39 - 8);
  v14 = *(v40 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  Model.init()();
  v38 = v7;
  Model.specificationVersion.setter(1);
  v29 = a5;
  a5;
  specialized MutableCollection<>.sort(by:)(&v29);
  v17 = v29;
  (*(v37 + 104))(v28, enum case for OneHotEncoderConfiguration.UnknownBehavior.error(_:), v41);
  OneHotEncoderConfiguration.init(orderedCategories:sparseOutput:unknownBehavior:)(v17, 1, v28);
  (*(v40 + 104))(v28, enum case for ModelKind.oneHotEncoder(_:), v39);
  Model.kind.setter(v28);
  v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>);
  v39 = v18;
  v19 = *(type metadata accessor for FeatureDescription(0) - 8);
  v20 = *(v19 + 80);
  v21 = (v20 + 32) & ~*(v19 + 80);
  v40 = v21 + *(v19 + 72);
  v20 |= 7uLL;
  v22 = swift_allocObject(v18, v40, v20);
  *(v22 + 16) = 1;
  *(v22 + 24) = 2;
  v41 = v22 + v21;
  v23 = v33;
  v33;
  v24 = v32;
  FeatureType.StringParameters.init(optional:)(0);
  (*(v36 + 104))(v24, enum case for FeatureType.string(_:), v35);
  FeatureDescription.init(name:type:description:)(v34, v23, v24, 0, 0xE000000000000000);
  Model.inputs.setter(v22);
  v25 = swift_allocObject(v39, v40, v20);
  *(v25 + 16) = 1;
  *(v25 + 24) = 2;
  v26 = v30;
  v30;
  static FeatureType.dictionaryWithIntKeys(optional:)(0);
  FeatureDescription.init(name:type:description:)(v31, v26, v24, 0, 0xE000000000000000);
  return Model.outputs.setter(v25);
}

uint64_t specialized FeatureVectorizer.Transformer.makeDictionaryVectorizer(inputName:outputName:descriptors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a4;
  v30 = a3;
  v33 = a2;
  v32 = a1;
  v7 = v5;
  v8 = *(*(type metadata accessor for FeatureType(0) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v34 = &v28;
  v37 = type metadata accessor for ModelKind(0);
  v38 = *(v37 - 8);
  v11 = *(v38 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  Model.init()();
  v36 = v7;
  Model.specificationVersion.setter(1);
  ML16ColumnDescriptorVG_SSs5NeverOTg503_s8d131ML17FeatureVectorizerV11TransformerV10vectorized_13includingBias0A12MLComponents11DenseMatrixVyxG11TabularData0M5FrameV_SbtKFSSAA16fG54Vcfu_33_44daf68368b8b9c6f03dca699c8750fcAPSSTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML16ColumnDescriptorVG_SSs5NeverOTg503_s8d131ML17FeatureVectorizerV11TransformerV10vectorized_13includingBias0A12MLComponents11DenseMatrixVyxG11TabularData0M5FrameV_SbtKFSSAA16fG54Vcfu_33_44daf68368b8b9c6f03dca699c8750fcAPSSTf3nnnpk_nTf1cn_n(a5);
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  v15 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &demangling cache variable for type metadata for [String], &protocol conformance descriptor for [A]);
  DictionaryVectorizerConfiguration.init<A>(keys:)(&ML16ColumnDescriptorVG_SSs5NeverOTg503_s8d131ML17FeatureVectorizerV11TransformerV10vectorized_13includingBias0A12MLComponents11DenseMatrixVyxG11TabularData0M5FrameV_SbtKFSSAA16fG54Vcfu_33_44daf68368b8b9c6f03dca699c8750fcAPSSTf3nnnpk_nTf1cn_n, v14, v15);
  (*(v38 + 104))(&v28, enum case for ModelKind.dictionaryVectorizer(_:), v37);
  Model.kind.setter(&v28);
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>);
  v37 = v16;
  v17 = *(type metadata accessor for FeatureDescription(0) - 8);
  v18 = *(v17 + 80);
  v19 = (v18 + 32) & ~*(v17 + 80);
  v38 = v19 + *(v17 + 72);
  v18 |= 7uLL;
  v20 = swift_allocObject(v16, v38, v18);
  *(v20 + 16) = 1;
  *(v20 + 24) = 2;
  v35 = v20 + v19;
  v21 = v33;
  v33;
  v22 = v34;
  static FeatureType.dictionaryWithStringKeys(optional:)(0);
  v23 = v21;
  v24 = v22;
  FeatureDescription.init(name:type:description:)(v32, v23, v22, 0, 0xE000000000000000);
  Model.inputs.setter(v20);
  v25 = swift_allocObject(v37, v38, v18);
  *(v25 + 16) = 1;
  *(v25 + 24) = 2;
  v26 = v31;
  v31;
  static FeatureType.dictionaryWithIntKeys(optional:)(0);
  FeatureDescription.init(name:type:description:)(v30, v26, v24, 0, 0xE000000000000000);
  return Model.outputs.setter(v25);
}

uint64_t MLSupportVectorClassifier.Model.exportAsCoreMLModel()()
{
  v1[47] = v0;
  v2 = type metadata accessor for Model(0);
  v1[48] = v2;
  v3 = *(v2 - 8);
  v1[49] = v3;
  v1[50] = swift_task_alloc((*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLSupportVectorClassifier.Model.exportAsCoreMLModel(), 0, 0);
}

{
  v8 = *(v0 + 376);
  v9 = *(v0 + 400);
  v1 = NSFullUserName();
  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(v2);
  v5 = v4;

  *(v0 + 88) = v3;
  *(v0 + 96) = v5;
  *(v0 + 104) = 0xD000000000000033;
  *(v0 + 112) = "RandomForestRegressor" + 0x8000000000000000;
  *(v0 + 120) = 0;
  *(v0 + 136) = 49;
  *(v0 + 144) = 0xE100000000000000;
  *(v0 + 152) = 0;
  *(v0 + 16) = v3;
  *(v0 + 24) = v5;
  *(v0 + 32) = 0xD000000000000033;
  *(v0 + 40) = "RandomForestRegressor" + 0x8000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 64) = 49;
  *(v0 + 72) = 0xE100000000000000;
  *(v0 + 80) = 0;
  outlined retain of MLModelMetadata((v0 + 88));
  outlined release of MLModelMetadata((v0 + 16), 0xE100000000000000);
  qmemcpy((v0 + 160), (v0 + 88), 0x48uLL);
  MLSupportVectorClassifier.Model.export(metadata:)((v0 + 160));
  qmemcpy((v0 + 304), (v0 + 160), 0x48uLL);
  outlined release of MLModelMetadata((v0 + 304), v0 + 232);
  type metadata accessor for MLModel();
  v6 = swift_task_alloc(208);
  *(v0 + 408) = v6;
  *v6 = v0;
  v6[1] = MLSupportVectorClassifier.Model.exportAsCoreMLModel();
  return static MLModel.compile(_:)(*(v0 + 400));
}

{
  v1 = *(v0 + 400);
  (*(*(v0 + 392) + 8))(v1, *(v0 + 384));
  v1;
  return (*(v0 + 8))(*(v0 + 424));
}

{
  (*(*(v0 + 392) + 8))(*(v0 + 400), *(v0 + 384));
  v1 = *(v0 + 416);
  *(v0 + 400);
  return (*(v0 + 8))();
}

uint64_t MLSupportVectorClassifier.Model.exportAsCoreMLModel()(uint64_t a1)
{
  v5 = *(*v2 + 408);
  v4 = *v2;
  *(*v2 + 416) = v1;
  v5;
  if (v1)
  {
    v6 = MLSupportVectorClassifier.Model.exportAsCoreMLModel();
  }

  else
  {
    *(v4 + 424) = a1;
    v6 = MLSupportVectorClassifier.Model.exportAsCoreMLModel();
  }

  return swift_task_switch(v6, 0, 0);
}

uint64_t MLSupportVectorClassifier.Model.computeMetrics(on:)(uint64_t a1, uint64_t a2)
{
  v3[4] = v2;
  v3[3] = a2;
  v3[2] = a1;
  v4 = (*(*(type metadata accessor for AnyColumn(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3[5] = swift_task_alloc(v4);
  v3[6] = swift_task_alloc(v4);
  v5 = type metadata accessor for DataFrame(0);
  v3[7] = v5;
  v6 = *(v5 - 8);
  v3[8] = v6;
  v7 = swift_task_alloc((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[9] = v7;
  v8 = swift_task_alloc(368);
  v3[10] = v8;
  *v8 = v3;
  v8[1] = MLSupportVectorClassifier.Model.computeMetrics(on:);
  return MLSupportVectorClassifier.Model.applied(to:eventHandler:)(v7, a2, 0, 0);
}

uint64_t MLSupportVectorClassifier.Model.computeMetrics(on:)()
{
  v2 = *(*v1 + 80);
  *(*v1 + 88) = v0;
  v2;
  if (v0)
  {
    v3 = MLSupportVectorClassifier.Model.computeMetrics(on:);
  }

  else
  {
    v3 = MLSupportVectorClassifier.Model.computeMetrics(on:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v9 = *(v0 + 72);
  v6 = *(v0 + 64);
  v7 = *(v0 + 56);
  v11 = *(v0 + 48);
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);
  v8 = *(v0 + 16);
  v10 = *(v0 + 24);
  v3 = *v2;
  v4 = v2[1];
  DataFrame.subscript.getter(*v2, v4);
  DataFrame.subscript.getter(v3, v4);
  AnyClassificationMetrics.init(_:_:)(v11, v1);
  (*(v6 + 8))(v9, v7);
  v9;
  v11;
  v1;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  *(v0 + 72);
  v2;
  v1;
  v3 = *(v0 + 88);
  return (*(v0 + 8))();
}

uint64_t MLSupportVectorClassifier.Model.predictions(from:)(uint64_t a1, uint64_t a2)
{
  v3[3] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DataFrame(0);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = swift_task_alloc((*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[6] = v6;
  v7 = swift_task_alloc(368);
  v3[7] = v7;
  *v7 = v3;
  v7[1] = MLSupportVectorClassifier.Model.predictions(from:);
  return MLSupportVectorClassifier.Model.applied(to:eventHandler:)(v6, a2, 0, 0);
}

uint64_t MLSupportVectorClassifier.Model.predictions(from:)()
{
  v2 = *(*v1 + 56);
  *(*v1 + 64) = v0;
  v2;
  if (v0)
  {
    v3 = closure #1 in closure #1 in closure #1 in closure #1 in static MLStyleTransfer.resume(_:);
  }

  else
  {
    v3 = MLSupportVectorClassifier.Model.predictions(from:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  DataFrame.subscript.getter(**(v0 + 24), *(*(v0 + 24) + 8));
  (*(v2 + 8))(v1, v3);
  v1;
  return (*(v0 + 8))();
}

uint64_t MLSupportVectorClassifier.Model.export(metadata:)(uint64_t *a1)
{
  v3 = v1;
  v31 = *a1;
  v32 = a1[1];
  v35 = a1[2];
  v36 = a1[3];
  v40 = a1[4];
  object = a1[5];
  v33 = a1[6];
  v34 = a1[7];
  v42 = a1[8];
  v4 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for String, &protocol witness table for String);
  MLSupportVectorClassifier.Model.export(userInfo:)();
  if (v2)
  {
    return v4;
  }

  v37 = 0;
  v6 = v4;
  v36;
  Model.modelDescription.setter(v35, v36);
  v34;
  Model.versionString.setter(v33, v34);
  v32;
  Model.author.setter(v31, v32);
  v7 = v40;
  if (!object)
  {
    v7 = 0;
  }

  v8 = 0xE000000000000000;
  if (object)
  {
    v8 = object;
  }

  object;
  v9 = v7;
  v10 = v3;
  Model.license.setter(v9, v8);
  v11 = v42;
  if (v42)
  {
    v12 = v42;
  }

  else
  {
    v12 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for String, &protocol witness table for String);
    v11 = 0;
  }

  v11;
  Model.metadata.setter(v12);
  v6;
  v13 = Model.metadata.modify(v29);
  v38 = v6;
  v14 = v13;
  v15 = v37;
  specialized Dictionary._Variant.merge<A>(_:uniquingKeysWith:)(v6, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v16);
  v42 = v15;
  v14(v29, 0);
  v17 = getOSVersion()();
  v39 = v10;
  countAndFlagsBits = v17._countAndFlagsBits;
  object = v17._object;
  v40 = Model.metadata.modify(v29);
  v20 = v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v19);
  v30 = *v20;
  *v20 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(countAndFlagsBits, object, 0xD00000000000001ALL, ("Recommender Model" + 0x8000000000000000), isUniquelyReferenced_nonNull_native);
  *v20 = v30;
  v40(v29, 0);
  v22 = Model.nestedModels.getter();
  v23 = v42;
  ML17MLImageClassifierV5f41V6export8metadata20featureExtractorType20dE92ADVAA0K8MetadataV_AC07FeatureiJ0OtKFSiAJcfu_32b63bdf5f6c975d31a36a8f37561ba444AJSiTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay20MLModelSpecification5ModelVG_Sis5NeverOTg5032_s8CreateML17MLImageClassifierV5f41V6export8metadata20featureExtractorType20dE92ADVAA0K8MetadataV_AC07FeatureiJ0OtKFSiAJcfu_32b63bdf5f6c975d31a36a8f37561ba444AJSiTf3nnnpk_nTf1cn_n(v22);
  v42 = v23;
  v38;
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

uint64_t specialized Transformer.applied<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = v3;
  v4[4] = a3;
  v4[3] = a2;
  v4[2] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v4[8] = swift_task_alloc((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Event(0, a2, v7);
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v4[11] = swift_task_alloc((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<String>);
  v4[12] = v10;
  v11 = *(v10 - 8);
  v4[13] = v11;
  v4[14] = swift_task_alloc((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
  v4[15] = v12;
  v13 = *(v12 - 8);
  v4[16] = v13;
  v4[17] = swift_task_alloc((*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized Transformer.applied<A>(to:eventHandler:), 0, 0);
}

{
  v4[5] = v3;
  v4[4] = a3;
  v4[3] = a2;
  v4[2] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v4[8] = swift_task_alloc((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Event(0, a2, v7);
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v4[11] = swift_task_alloc((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<Int>);
  v4[12] = v10;
  v11 = *(v10 - 8);
  v4[13] = v11;
  v4[14] = swift_task_alloc((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
  v4[15] = v12;
  v13 = *(v12 - 8);
  v4[16] = v13;
  v4[17] = swift_task_alloc((*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized Transformer.applied<A>(to:eventHandler:), 0, 0);
}

{
  v4[5] = v3;
  v4[4] = a3;
  v4[3] = a2;
  v4[2] = a1;
  v5 = type metadata accessor for MLSoundClassifier.Model(0);
  v4[6] = v5;
  v4[7] = swift_task_alloc((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Event(0, a2, v6);
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  v4[10] = swift_task_alloc((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>);
  v4[11] = v9;
  v10 = *(v9 - 8);
  v4[12] = v10;
  v4[13] = swift_task_alloc((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>);
  v4[14] = v11;
  v12 = *(v11 - 8);
  v4[15] = v12;
  v4[16] = swift_task_alloc((*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v4[17] = v13;
  v4[18] = swift_task_alloc((*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<String>);
  v4[19] = v14;
  v15 = *(v14 - 8);
  v4[20] = v15;
  v4[21] = swift_task_alloc((*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v4[22] = v16;
  v17 = *(v16 - 8);
  v4[23] = v17;
  v4[24] = swift_task_alloc((*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized Transformer.applied<A>(to:eventHandler:), 0, 0);
}

uint64_t specialized Transformer.applied<A>(to:eventHandler:)()
{
  v1 = *(*(v0 + 16) + 16);
  *(v0 + 144) = v1;
  v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0, _swiftEmptyArrayStorage);
  if (v1)
  {
    v3 = *(v0 + 128);
    v4 = *(v3 + 80);
    *(v0 + 200) = v4;
    v5 = *(v3 + 16);
    *(v0 + 152) = *(v3 + 72);
    *(v0 + 160) = v5;
    *(v0 + 176) = v2;
    *(v0 + 168) = 0;
    v6 = *(v0 + 136);
    v7 = *(v0 + 16);
    v8 = *(v0 + 120);
    v9 = v7 + ((v4 + 32) & ~v4);
    v7;
    v5(v6, v9, v8);
    static Task<>.checkCancellation()();
    v13 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type LinearSupportVectorClassifierModel<Double, String> and conformance LinearSupportVectorClassifierModel<A, B>, &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>, &protocol conformance descriptor for LinearSupportVectorClassifierModel<A, B>);
    v14 = swift_task_alloc(async function pointer to dispatch thunk of Transformer.applied(to:eventHandler:)[1]);
    *(v0 + 184) = v14;
    *v14 = v0;
    v14[1] = specialized Transformer.applied<A>(to:eventHandler:);
    v15 = *(v0 + 40);
    return dispatch thunk of Transformer.applied(to:eventHandler:)(*(v0 + 112), *(v0 + 136), *(v0 + 24), *(v0 + 32), *(v0 + 48), v13);
  }

  else
  {
    v10 = *(v0 + 112);
    v11 = *(v0 + 64);
    v12 = *(v0 + 88);
    *(v0 + 136);
    v10;
    v12;
    v11;
    return (*(v0 + 8))();
  }
}

{
  v3 = *(*v1 + 184);
  v2 = *v1;
  *(*v1 + 192) = v0;
  v3;
  if (v0)
  {
    *(v2 + 176);
    v4 = specialized Transformer.applied<A>(to:eventHandler:);
  }

  else
  {
    v4 = specialized Transformer.applied<A>(to:eventHandler:);
  }

  return swift_task_switch(v4, 0, 0);
}

{
  v1 = *(v0 + 176);
  v2 = *(v1 + 2);
  if (*(v1 + 3) >> 1 <= v2)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v1 + 3) >= 2uLL, v2 + 1, 1, *(v0 + 176));
  }

  v3 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  v6 = *(v0 + 24);
  *(v1 + 2) = v2 + 1;
  (*(v5 + 32))(&v1[((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v2], v3, v4);
  if (v6)
  {
    v32 = *(v0 + 144);
    v34 = *(v0 + 88);
    v38 = *(v0 + 80);
    v31 = *(v0 + 72);
    v7 = *(v0 + 64);
    v8 = *(v0 + 48);
    v33 = *(v0 + 24);
    v9 = *(v0 + 32);
    (*(*(v0 + 56) + 16))(v7, *(v0 + 40), v8);

    v35 = String.init<A>(describing:)(v7, v8);
    v36 = v10;
    v37 = *(v1 + 2);
    v11 = type metadata accessor for MetricsKey(0);
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Sendable);
    v13 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MetricsKey and conformance MetricsKey, &type metadata accessor for MetricsKey, &protocol conformance descriptor for MetricsKey);
    v14 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, v11, v12, v13);
    Event.init(origin:itemCount:totalItemCount:metrics:)(v35, v36, v37, v32, 0, v14);
    v33(v34);
    _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v33, v9);
    (*(v38 + 8))(v34, v31);
  }

  v15 = *(v0 + 168) + 1;
  v16 = *(v0 + 144);
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  if (v15 == v16)
  {
    *(v0 + 16);
    v17 = *(v0 + 112);
    v18 = *(v0 + 64);
    v19 = *(v0 + 88);
    *(v0 + 136);
    v17;
    v19;
    v18;
    v20 = *(v0 + 8);
    v21 = v1;
    return v20(v21);
  }

  v22 = *(v0 + 192);
  v23 = *(v0 + 168) + 1;
  *(v0 + 176) = v1;
  *(v0 + 168) = v23;
  (*(v0 + 160))(*(v0 + 136), *(v0 + 16) + ((*(v0 + 200) + 32) & ~*(v0 + 200)) + *(v0 + 152) * v23, *(v0 + 120));
  static Task<>.checkCancellation()();
  if (v22)
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
    v1;
    v24 = *(v0 + 136);
    v25 = *(v0 + 112);
    v26 = *(v0 + 88);
    v39 = *(v0 + 64);
    *(v0 + 16);
    v24;
    v25;
    v26;
    v21 = v39;
    v39;
    v20 = *(v0 + 8);
    return v20(v21);
  }

  v28 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type LinearSupportVectorClassifierModel<Double, String> and conformance LinearSupportVectorClassifierModel<A, B>, &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>, &protocol conformance descriptor for LinearSupportVectorClassifierModel<A, B>);
  v29 = swift_task_alloc(async function pointer to dispatch thunk of Transformer.applied(to:eventHandler:)[1]);
  *(v0 + 184) = v29;
  *v29 = v0;
  v29[1] = specialized Transformer.applied<A>(to:eventHandler:);
  v30 = *(v0 + 40);
  return dispatch thunk of Transformer.applied(to:eventHandler:)(*(v0 + 112), *(v0 + 136), *(v0 + 24), *(v0 + 32), *(v0 + 48), v28);
}

{
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  v6 = *(v0 + 192);
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 64);
  *(v0 + 16);
  v1;
  v2;
  v3;
  v4;
  return (*(v0 + 8))();
}

{
  v1 = *(*(v0 + 16) + 16);
  *(v0 + 144) = v1;
  v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0, _swiftEmptyArrayStorage);
  if (v1)
  {
    v3 = *(v0 + 128);
    v4 = *(v3 + 80);
    *(v0 + 200) = v4;
    v5 = *(v3 + 16);
    *(v0 + 152) = *(v3 + 72);
    *(v0 + 160) = v5;
    *(v0 + 176) = v2;
    *(v0 + 168) = 0;
    v6 = *(v0 + 136);
    v7 = *(v0 + 16);
    v8 = *(v0 + 120);
    v9 = v7 + ((v4 + 32) & ~v4);
    v7;
    v5(v6, v9, v8);
    static Task<>.checkCancellation()();
    v13 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type LinearSupportVectorClassifierModel<Double, Int> and conformance LinearSupportVectorClassifierModel<A, B>, &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>, &protocol conformance descriptor for LinearSupportVectorClassifierModel<A, B>);
    v14 = swift_task_alloc(async function pointer to dispatch thunk of Transformer.applied(to:eventHandler:)[1]);
    *(v0 + 184) = v14;
    *v14 = v0;
    v14[1] = specialized Transformer.applied<A>(to:eventHandler:);
    v15 = *(v0 + 40);
    return dispatch thunk of Transformer.applied(to:eventHandler:)(*(v0 + 112), *(v0 + 136), *(v0 + 24), *(v0 + 32), *(v0 + 48), v13);
  }

  else
  {
    v10 = *(v0 + 112);
    v11 = *(v0 + 64);
    v12 = *(v0 + 88);
    *(v0 + 136);
    v10;
    v12;
    v11;
    return (*(v0 + 8))();
  }
}

{
  v3 = *(*v1 + 184);
  v2 = *v1;
  *(*v1 + 192) = v0;
  v3;
  if (v0)
  {
    *(v2 + 176);
    v4 = specialized Transformer.applied<A>(to:eventHandler:);
  }

  else
  {
    v4 = specialized Transformer.applied<A>(to:eventHandler:);
  }

  return swift_task_switch(v4, 0, 0);
}

{
  v1 = *(v0 + 176);
  v2 = *(v1 + 2);
  if (*(v1 + 3) >> 1 <= v2)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v1 + 3) >= 2uLL, v2 + 1, 1, *(v0 + 176));
  }

  v3 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  v6 = *(v0 + 24);
  *(v1 + 2) = v2 + 1;
  (*(v5 + 32))(&v1[((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v2], v3, v4);
  if (v6)
  {
    v32 = *(v0 + 144);
    v34 = *(v0 + 88);
    v38 = *(v0 + 80);
    v31 = *(v0 + 72);
    v7 = *(v0 + 64);
    v8 = *(v0 + 48);
    v33 = *(v0 + 24);
    v9 = *(v0 + 32);
    (*(*(v0 + 56) + 16))(v7, *(v0 + 40), v8);

    v35 = String.init<A>(describing:)(v7, v8);
    v36 = v10;
    v37 = *(v1 + 2);
    v11 = type metadata accessor for MetricsKey(0);
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Sendable);
    v13 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MetricsKey and conformance MetricsKey, &type metadata accessor for MetricsKey, &protocol conformance descriptor for MetricsKey);
    v14 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, v11, v12, v13);
    Event.init(origin:itemCount:totalItemCount:metrics:)(v35, v36, v37, v32, 0, v14);
    v33(v34);
    _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v33, v9);
    (*(v38 + 8))(v34, v31);
  }

  v15 = *(v0 + 168) + 1;
  v16 = *(v0 + 144);
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  if (v15 == v16)
  {
    *(v0 + 16);
    v17 = *(v0 + 112);
    v18 = *(v0 + 64);
    v19 = *(v0 + 88);
    *(v0 + 136);
    v17;
    v19;
    v18;
    v20 = *(v0 + 8);
    v21 = v1;
    return v20(v21);
  }

  v22 = *(v0 + 192);
  v23 = *(v0 + 168) + 1;
  *(v0 + 176) = v1;
  *(v0 + 168) = v23;
  (*(v0 + 160))(*(v0 + 136), *(v0 + 16) + ((*(v0 + 200) + 32) & ~*(v0 + 200)) + *(v0 + 152) * v23, *(v0 + 120));
  static Task<>.checkCancellation()();
  if (v22)
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
    v1;
    v24 = *(v0 + 136);
    v25 = *(v0 + 112);
    v26 = *(v0 + 88);
    v39 = *(v0 + 64);
    *(v0 + 16);
    v24;
    v25;
    v26;
    v21 = v39;
    v39;
    v20 = *(v0 + 8);
    return v20(v21);
  }

  v28 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type LinearSupportVectorClassifierModel<Double, Int> and conformance LinearSupportVectorClassifierModel<A, B>, &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>, &protocol conformance descriptor for LinearSupportVectorClassifierModel<A, B>);
  v29 = swift_task_alloc(async function pointer to dispatch thunk of Transformer.applied(to:eventHandler:)[1]);
  *(v0 + 184) = v29;
  *v29 = v0;
  v29[1] = specialized Transformer.applied<A>(to:eventHandler:);
  v30 = *(v0 + 40);
  return dispatch thunk of Transformer.applied(to:eventHandler:)(*(v0 + 112), *(v0 + 136), *(v0 + 24), *(v0 + 32), *(v0 + 48), v28);
}

{
  v1 = *(*(v0 + 16) + 16);
  *(v0 + 200) = v1;
  v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0, _swiftEmptyArrayStorage);
  if (v1)
  {
    v3 = *(v0 + 184);
    v4 = *(v3 + 80);
    *(v0 + 272) = v4;
    v5 = *(v3 + 16);
    *(v0 + 208) = *(v3 + 72);
    *(v0 + 216) = v5;
    *(v0 + 232) = v2;
    *(v0 + 224) = 0;
    v6 = *(v0 + 192);
    v7 = *(v0 + 16);
    v8 = *(v0 + 176);
    v9 = v7 + ((v4 + 32) & ~v4);
    v7;
    v5(v6, v9, v8);
    static Task<>.checkCancellation()();
    v14 = *(v0 + 144);
    v15 = *(v0 + 136);
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 40) + *(*(v0 + 48) + 20), v14, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v14, v15);
    v17 = *(v0 + 144);
    if (EnumCaseMultiPayload == 1)
    {
      (*(*(v0 + 96) + 32))(*(v0 + 104), v17, *(v0 + 88));
      v18 = swift_task_alloc(async function pointer to FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)[1]);
      *(v0 + 256) = v18;
      *v18 = v0;
      v18[1] = specialized Transformer.applied<A>(to:eventHandler:);
      v19 = *(v0 + 104);
      return FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)(*(v0 + 168), *(v0 + 192), *(v0 + 24), *(v0 + 32), *(v0 + 88));
    }

    else
    {
      (*(*(v0 + 120) + 32))(*(v0 + 128), v17, *(v0 + 112));
      v20 = swift_task_alloc(async function pointer to LogisticRegressionClassifierModel.applied(to:eventHandler:)[1]);
      *(v0 + 240) = v20;
      *v20 = v0;
      v20[1] = specialized Transformer.applied<A>(to:eventHandler:);
      v21 = *(v0 + 128);
      return LogisticRegressionClassifierModel.applied(to:eventHandler:)(*(v0 + 168), *(v0 + 192), *(v0 + 24), *(v0 + 32), *(v0 + 112));
    }
  }

  else
  {
    v10 = *(v0 + 168);
    v11 = *(v0 + 144);
    v12 = *(v0 + 128);
    v23 = *(v0 + 104);
    v24 = *(v0 + 56);
    v22 = *(v0 + 80);
    *(v0 + 192);
    v10;
    v11;
    v12;
    v23;
    v22;
    v24;
    return (*(v0 + 8))();
  }
}

{
  v2 = *(*v1 + 240);
  *(*v1 + 248) = v0;
  v2;
  if (v0)
  {
    v3 = specialized Transformer.applied<A>(to:eventHandler:);
  }

  else
  {
    v3 = specialized Transformer.applied<A>(to:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 256);
  *(*v1 + 264) = v0;
  v2;
  if (v0)
  {
    v3 = specialized Transformer.applied<A>(to:eventHandler:);
  }

  else
  {
    v3 = specialized Transformer.applied<A>(to:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  v1 = *(v0 + 232);
  v42 = *(v0 + 248);
  v2 = *(v1 + 2);
  if (*(v1 + 3) >> 1 <= v2)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v1 + 3) >= 2uLL, v2 + 1, 1, v1);
  }

  v3 = *(v0 + 168);
  v4 = *(v0 + 152);
  v5 = *(v0 + 160);
  v6 = *(v0 + 24);
  *(v1 + 2) = v2 + 1;
  (*(v5 + 32))(&v1[((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v2], v3, v4);
  if (v6)
  {
    v35 = *(v0 + 200);
    v36 = *(v0 + 80);
    v45 = *(v0 + 72);
    v48 = *(v0 + 64);
    v7 = *(v0 + 56);
    v8 = *(v0 + 48);
    v40 = *(v0 + 24);
    v9 = *(v0 + 32);
    outlined init with copy of MLSoundClassifier.Model(*(v0 + 40), v7);

    v37 = String.init<A>(describing:)(v7, v8);
    v38 = v10;
    v39 = *(v1 + 2);
    v11 = type metadata accessor for MetricsKey(0);
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Sendable);
    v13 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MetricsKey and conformance MetricsKey, &type metadata accessor for MetricsKey, &protocol conformance descriptor for MetricsKey);
    v14 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, v11, v12, v13);
    Event.init(origin:itemCount:totalItemCount:metrics:)(v37, v38, v39, v35, 0, v14);
    v40(v36);
    _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v40, v9);
    (*(v45 + 8))(v36, v48);
  }

  v15 = *(v0 + 224) + 1;
  v16 = *(v0 + 200);
  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
  if (v15 == v16)
  {
    *(v0 + 16);
    v17 = *(v0 + 168);
    v18 = *(v0 + 144);
    v19 = *(v0 + 128);
    v49 = *(v0 + 104);
    v43 = *(v0 + 56);
    v46 = *(v0 + 80);
    *(v0 + 192);
    v17;
    v18;
    v19;
    v49;
    v46;
    v43;
    v20 = *(v0 + 8);
    v21 = v1;
    return v20(v21);
  }

  v22 = *(v0 + 224) + 1;
  *(v0 + 232) = v1;
  *(v0 + 224) = v22;
  (*(v0 + 216))(*(v0 + 192), *(v0 + 16) + ((*(v0 + 272) + 32) & ~*(v0 + 272)) + *(v0 + 208) * v22, *(v0 + 176));
  static Task<>.checkCancellation()();
  if (v42)
  {
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
    v1;
    v23 = *(v0 + 192);
    v24 = *(v0 + 168);
    v25 = *(v0 + 144);
    v41 = *(v0 + 128);
    v50 = *(v0 + 104);
    v47 = *(v0 + 80);
    v44 = *(v0 + 56);
    *(v0 + 16);
    v23;
    v24;
    v25;
    v41;
    v50;
    v47;
    v21 = v44;
    v44;
    v20 = *(v0 + 8);
    return v20(v21);
  }

  v27 = *(v0 + 144);
  v28 = *(v0 + 136);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 40) + *(*(v0 + 48) + 20), v27, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v27, v28);
  v30 = *(v0 + 144);
  if (EnumCaseMultiPayload == 1)
  {
    (*(*(v0 + 96) + 32))(*(v0 + 104), v30, *(v0 + 88));
    v31 = swift_task_alloc(async function pointer to FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)[1]);
    *(v0 + 256) = v31;
    *v31 = v0;
    v31[1] = specialized Transformer.applied<A>(to:eventHandler:);
    v32 = *(v0 + 104);
    return FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)(*(v0 + 168), *(v0 + 192), *(v0 + 24), *(v0 + 32), *(v0 + 88));
  }

  else
  {
    (*(*(v0 + 120) + 32))(*(v0 + 128), v30, *(v0 + 112));
    v33 = swift_task_alloc(async function pointer to LogisticRegressionClassifierModel.applied(to:eventHandler:)[1]);
    *(v0 + 240) = v33;
    *v33 = v0;
    v33[1] = specialized Transformer.applied<A>(to:eventHandler:);
    v34 = *(v0 + 128);
    return LogisticRegressionClassifierModel.applied(to:eventHandler:)(*(v0 + 168), *(v0 + 192), *(v0 + 24), *(v0 + 32), *(v0 + 112));
  }
}

{
  v10 = *(v0 + 248);
  v1 = *(v0 + 232);
  v2 = *(v0 + 192);
  v3 = *(v0 + 184);
  v4 = *(v0 + 176);
  (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  v1;
  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 192);
  v6 = *(v0 + 168);
  v7 = *(v0 + 144);
  v8 = *(v0 + 128);
  v13 = *(v0 + 104);
  v12 = *(v0 + 80);
  v11 = *(v0 + 56);
  *(v0 + 16);
  v5;
  v6;
  v7;
  v8;
  v13;
  v12;
  v11;
  return (*(v0 + 8))();
}

{
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  v1 = *(v0 + 232);
  v42 = *(v0 + 264);
  v2 = *(v1 + 2);
  if (*(v1 + 3) >> 1 <= v2)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v1 + 3) >= 2uLL, v2 + 1, 1, v1);
  }

  v3 = *(v0 + 168);
  v4 = *(v0 + 152);
  v5 = *(v0 + 160);
  v6 = *(v0 + 24);
  *(v1 + 2) = v2 + 1;
  (*(v5 + 32))(&v1[((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v2], v3, v4);
  if (v6)
  {
    v35 = *(v0 + 200);
    v36 = *(v0 + 80);
    v45 = *(v0 + 72);
    v48 = *(v0 + 64);
    v7 = *(v0 + 56);
    v8 = *(v0 + 48);
    v40 = *(v0 + 24);
    v9 = *(v0 + 32);
    outlined init with copy of MLSoundClassifier.Model(*(v0 + 40), v7);

    v37 = String.init<A>(describing:)(v7, v8);
    v38 = v10;
    v39 = *(v1 + 2);
    v11 = type metadata accessor for MetricsKey(0);
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Sendable);
    v13 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MetricsKey and conformance MetricsKey, &type metadata accessor for MetricsKey, &protocol conformance descriptor for MetricsKey);
    v14 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, v11, v12, v13);
    Event.init(origin:itemCount:totalItemCount:metrics:)(v37, v38, v39, v35, 0, v14);
    v40(v36);
    _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v40, v9);
    (*(v45 + 8))(v36, v48);
  }

  v15 = *(v0 + 224) + 1;
  v16 = *(v0 + 200);
  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
  if (v15 == v16)
  {
    *(v0 + 16);
    v17 = *(v0 + 168);
    v18 = *(v0 + 144);
    v19 = *(v0 + 128);
    v49 = *(v0 + 104);
    v43 = *(v0 + 56);
    v46 = *(v0 + 80);
    *(v0 + 192);
    v17;
    v18;
    v19;
    v49;
    v46;
    v43;
    v20 = *(v0 + 8);
    v21 = v1;
    return v20(v21);
  }

  v22 = *(v0 + 224) + 1;
  *(v0 + 232) = v1;
  *(v0 + 224) = v22;
  (*(v0 + 216))(*(v0 + 192), *(v0 + 16) + ((*(v0 + 272) + 32) & ~*(v0 + 272)) + *(v0 + 208) * v22, *(v0 + 176));
  static Task<>.checkCancellation()();
  if (v42)
  {
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
    v1;
    v23 = *(v0 + 192);
    v24 = *(v0 + 168);
    v25 = *(v0 + 144);
    v41 = *(v0 + 128);
    v50 = *(v0 + 104);
    v47 = *(v0 + 80);
    v44 = *(v0 + 56);
    *(v0 + 16);
    v23;
    v24;
    v25;
    v41;
    v50;
    v47;
    v21 = v44;
    v44;
    v20 = *(v0 + 8);
    return v20(v21);
  }

  v27 = *(v0 + 144);
  v28 = *(v0 + 136);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 40) + *(*(v0 + 48) + 20), v27, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v27, v28);
  v30 = *(v0 + 144);
  if (EnumCaseMultiPayload == 1)
  {
    (*(*(v0 + 96) + 32))(*(v0 + 104), v30, *(v0 + 88));
    v31 = swift_task_alloc(async function pointer to FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)[1]);
    *(v0 + 256) = v31;
    *v31 = v0;
    v31[1] = specialized Transformer.applied<A>(to:eventHandler:);
    v32 = *(v0 + 104);
    return FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)(*(v0 + 168), *(v0 + 192), *(v0 + 24), *(v0 + 32), *(v0 + 88));
  }

  else
  {
    (*(*(v0 + 120) + 32))(*(v0 + 128), v30, *(v0 + 112));
    v33 = swift_task_alloc(async function pointer to LogisticRegressionClassifierModel.applied(to:eventHandler:)[1]);
    *(v0 + 240) = v33;
    *v33 = v0;
    v33[1] = specialized Transformer.applied<A>(to:eventHandler:);
    v34 = *(v0 + 128);
    return LogisticRegressionClassifierModel.applied(to:eventHandler:)(*(v0 + 168), *(v0 + 192), *(v0 + 24), *(v0 + 32), *(v0 + 112));
  }
}

{
  v10 = *(v0 + 264);
  v1 = *(v0 + 232);
  v2 = *(v0 + 192);
  v3 = *(v0 + 184);
  v4 = *(v0 + 176);
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  v1;
  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 192);
  v6 = *(v0 + 168);
  v7 = *(v0 + 144);
  v8 = *(v0 + 128);
  v13 = *(v0 + 104);
  v12 = *(v0 + 80);
  v11 = *(v0 + 56);
  *(v0 + 16);
  v5;
  v6;
  v7;
  v8;
  v13;
  v12;
  v11;
  return (*(v0 + 8))();
}

{
  return specialized Transformer.applied<A>(to:eventHandler:)();
}

uint64_t MLSupportVectorClassifier.Model.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = v4;
  v5[10] = a4;
  v5[9] = a3;
  v5[8] = a2;
  v5[7] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<ClassificationDistribution<Int>>);
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v5[14] = swift_task_alloc((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v5[15] = v8;
  v9 = *(v8 - 8);
  v5[16] = v9;
  v5[17] = swift_task_alloc((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>);
  v5[18] = v10;
  v11 = *(v10 - 8);
  v5[19] = v11;
  v5[20] = swift_task_alloc((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<ClassificationDistribution<String>>);
  v5[21] = v12;
  v13 = *(v12 - 8);
  v5[22] = v13;
  v5[23] = swift_task_alloc((*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v5[24] = v14;
  v15 = *(v14 - 8);
  v5[25] = v15;
  v5[26] = swift_task_alloc((*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>);
  v5[27] = v16;
  v17 = *(v16 - 8);
  v5[28] = v17;
  v5[29] = swift_task_alloc((*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
  v5[30] = v18;
  v5[31] = swift_task_alloc((*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AnyColumn(0);
  v5[32] = v19;
  v20 = *(v19 - 8);
  v5[33] = v20;
  v21 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5[34] = swift_task_alloc(v21);
  v5[35] = swift_task_alloc(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Double>);
  v5[36] = v22;
  v23 = *(v22 - 8);
  v5[37] = v23;
  v5[38] = swift_task_alloc((*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLSupportVectorClassifier.Model.applied(to:eventHandler:), 0, 0);
}

uint64_t MLSupportVectorClassifier.Model.applied(to:eventHandler:)()
{
  v1 = v0[38];
  specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(v0[8], 0, *(v0[11] + 16), *(v0[11] + 24), *(v0[11] + 32));
  v2 = v0[31];
  v3 = v0[11];
  v4 = v0[30];
  v5 = static MLSupportVectorClassifier.Model.buildFeatures(from:)(v0[38]);
  v0[39] = v5;
  v6 = type metadata accessor for MLSupportVectorClassifier.Model(0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v3 + *(v6 + 24), v2, &demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v2, v4);
  v8 = v0[31];
  if (EnumCaseMultiPayload == 1)
  {
    (*(v0[19] + 32))(v0[20], v8, v0[18]);
    v9 = &async function pointer to specialized Transformer.applied<A>(to:eventHandler:) + async function pointer to specialized Transformer.applied<A>(to:eventHandler:);
    v10 = swift_task_alloc(208);
    v0[43] = v10;
    *v10 = v0;
    v10[1] = MLSupportVectorClassifier.Model.applied(to:eventHandler:);
    v11 = v0[20];
  }

  else
  {
    (*(v0[28] + 32))(v0[29], v8, v0[27]);
    v9 = &async function pointer to specialized Transformer.applied<A>(to:eventHandler:) + async function pointer to specialized Transformer.applied<A>(to:eventHandler:);
    v12 = swift_task_alloc(208);
    v0[40] = v12;
    *v12 = v0;
    v12[1] = MLSupportVectorClassifier.Model.applied(to:eventHandler:);
    v13 = v0[29];
  }

  return (v9)(v5, v0[9], v0[10]);
}

{
  v43 = *(v0 + 336);
  v1 = *(v0 + 328);
  v31 = *(v0 + 280);
  v2 = *(v0 + 208);
  v45 = *(v0 + 200);
  v33 = *(v0 + 192);
  v3 = *(v0 + 88);
  v41 = *(v0 + 184);
  v36 = *v3;
  v4 = v3[1];
  v4;
  *(v0 + 40) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents26ClassificationDistributionVySSGG_SSSgs5NeverOTg503_s8d129ML25MLSupportVectorClassifierV5ModelV7applied2to12eventHandler11TabularData0L5FrameVAK_y0A12MLComponents5EventVYbcSgtYaKFSSSgAL26fG56VySSGcfu_32f90808cfe034de74f1d450820ef1a2faAsPTf3nnnpk_nTf1cn_n(v43);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String?]);
  v6 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [String?] and conformance [A], &demangling cache variable for type metadata for [String?], &protocol conformance descriptor for [A]);
  Column.init<A>(name:contents:)(v36, v4, v0 + 40, &type metadata for String, v5, v6);
  Column.eraseToAnyColumn()(v33);
  (*(v45 + 8))(v2, v33);
  v4;
  v7._countAndFlagsBits = 0x6C696261626F7250;
  v7._object = 0xEB00000000797469;
  String.append(_:)(v7);
  v46 = v4;
  *(v0 + 48) = v43;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<String>);
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [ClassificationDistribution<String>]);
  v10 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [ClassificationDistribution<String>] and conformance [A], &demangling cache variable for type metadata for [ClassificationDistribution<String>], &protocol conformance descriptor for [A]);
  Column.init<A>(name:contents:)(v36, v46, v0 + 48, v8, v9, v10);
  v27 = *(v0 + 232);
  v38 = *(v0 + 224);
  v30 = *(v0 + 216);
  v23 = *(v0 + 184);
  v11 = *(v0 + 176);
  v12 = *(v0 + 168);
  v25 = *(v0 + 304);
  v24 = *(v0 + 296);
  v26 = *(v0 + 288);
  v40 = *(v0 + 280);
  v29 = *(v0 + 272);
  v44 = *(v0 + 264);
  v42 = *(v0 + 256);
  v37 = *(v0 + 248);
  v35 = *(v0 + 208);
  v34 = *(v0 + 160);
  v32 = *(v0 + 136);
  v28 = *(v0 + 56);
  v47 = *(v0 + 112);
  Column.eraseToAnyColumn()(v12);
  (*(v11 + 8))(v23, v12);
  (*(v38 + 8))(v27, v30);
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<AnyColumn>);
  v39 = *(v44 + 72);
  v14 = *(v44 + 80);
  v15 = (v14 + 32) & ~v14;
  v16 = swift_allocObject(v13, v15 + 2 * v39, v14 | 7);
  *(v16 + 16) = 2;
  *(v16 + 24) = 4;
  v17 = v16 + v15;
  v18 = *(v44 + 16);
  v18(v17, v40, v42);
  v18(v39 + v17, v29, v42);
  *(v0 + 32) = v16;
  v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [AnyColumn]);
  v20 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [AnyColumn] and conformance [A], &demangling cache variable for type metadata for [AnyColumn], &protocol conformance descriptor for [A]);
  DataFrame.init<A>(columns:)(v0 + 32, v19, v20);
  v21 = *(v44 + 8);
  v21(v29, v42);
  v21(v40, v42);
  (*(v24 + 8))(v25, v26);
  v25;
  v40;
  v29;
  v37;
  v27;
  v35;
  v23;
  v34;
  v32;
  v47;
  return (*(v0 + 8))();
}

{
  v43 = *(v0 + 360);
  v1 = *(v0 + 352);
  v31 = *(v0 + 280);
  v2 = *(v0 + 136);
  v45 = *(v0 + 128);
  v33 = *(v0 + 120);
  v3 = *(v0 + 88);
  v41 = *(v0 + 112);
  v36 = *v3;
  v4 = v3[1];
  v4;
  *(v0 + 16) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents26ClassificationDistributionVySiGG_SiSgs5NeverOTg503_s8d129ML25MLSupportVectorClassifierV5ModelV7applied2to12eventHandler11TabularData0L5FrameVAK_y0A12MLComponents5EventVYbcSgtYaKFSiSgAL26fG57VySiGcfu0_32be6a1569bf578dffa8811060c9259ebeAsPTf3nnnpk_nTf1cn_n(v43);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int?]);
  v6 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Int?] and conformance [A], &demangling cache variable for type metadata for [Int?], &protocol conformance descriptor for [A]);
  Column.init<A>(name:contents:)(v36, v4, v0 + 16, &type metadata for Int, v5, v6);
  Column.eraseToAnyColumn()(v33);
  (*(v45 + 8))(v2, v33);
  v4;
  v7._countAndFlagsBits = 0x6C696261626F7250;
  v7._object = 0xEB00000000797469;
  String.append(_:)(v7);
  v46 = v4;
  *(v0 + 24) = v43;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<Int>);
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [ClassificationDistribution<Int>]);
  v10 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [ClassificationDistribution<Int>] and conformance [A], &demangling cache variable for type metadata for [ClassificationDistribution<Int>], &protocol conformance descriptor for [A]);
  Column.init<A>(name:contents:)(v36, v46, v0 + 24, v8, v9, v10);
  v24 = *(v0 + 160);
  v38 = *(v0 + 152);
  v30 = *(v0 + 144);
  v32 = *(v0 + 112);
  v11 = *(v0 + 104);
  v28 = *(v0 + 56);
  v12 = *(v0 + 96);
  v26 = *(v0 + 304);
  v25 = *(v0 + 296);
  v27 = *(v0 + 288);
  v40 = *(v0 + 280);
  v29 = *(v0 + 272);
  v44 = *(v0 + 264);
  v42 = *(v0 + 256);
  v23 = *(v0 + 248);
  v37 = *(v0 + 232);
  v35 = *(v0 + 208);
  v34 = *(v0 + 184);
  v47 = *(v0 + 136);
  Column.eraseToAnyColumn()(v12);
  (*(v11 + 8))(v32, v12);
  (*(v38 + 8))(v24, v30);
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<AnyColumn>);
  v39 = *(v44 + 72);
  v14 = *(v44 + 80);
  v15 = (v14 + 32) & ~v14;
  v16 = swift_allocObject(v13, v15 + 2 * v39, v14 | 7);
  *(v16 + 16) = 2;
  *(v16 + 24) = 4;
  v17 = v16 + v15;
  v18 = *(v44 + 16);
  v18(v17, v40, v42);
  v18(v39 + v17, v29, v42);
  *(v0 + 32) = v16;
  v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [AnyColumn]);
  v20 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [AnyColumn] and conformance [A], &demangling cache variable for type metadata for [AnyColumn], &protocol conformance descriptor for [A]);
  DataFrame.init<A>(columns:)(v0 + 32, v19, v20);
  v21 = *(v44 + 8);
  v21(v29, v42);
  v21(v40, v42);
  (*(v25 + 8))(v26, v27);
  v26;
  v40;
  v29;
  v23;
  v37;
  v35;
  v34;
  v24;
  v47;
  v32;
  return (*(v0 + 8))();
}

{
  v10 = *(v0 + 328);
  v1 = *(v0 + 312);
  v2 = *(v0 + 304);
  v3 = *(v0 + 296);
  v4 = *(v0 + 288);
  (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
  (*(v3 + 8))(v2, v4);
  v1;
  v5 = *(v0 + 280);
  v6 = *(v0 + 272);
  v7 = *(v0 + 248);
  v8 = *(v0 + 232);
  v15 = *(v0 + 208);
  v14 = *(v0 + 184);
  v13 = *(v0 + 160);
  v11 = *(v0 + 112);
  v12 = *(v0 + 136);
  *(v0 + 304);
  v5;
  v6;
  v7;
  v8;
  v15;
  v14;
  v13;
  v12;
  v11;
  return (*(v0 + 8))();
}

{
  v10 = *(v0 + 352);
  v1 = *(v0 + 312);
  v2 = *(v0 + 304);
  v3 = *(v0 + 296);
  v4 = *(v0 + 288);
  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
  (*(v3 + 8))(v2, v4);
  v1;
  v5 = *(v0 + 280);
  v6 = *(v0 + 272);
  v7 = *(v0 + 248);
  v8 = *(v0 + 232);
  v15 = *(v0 + 208);
  v14 = *(v0 + 184);
  v13 = *(v0 + 160);
  v11 = *(v0 + 112);
  v12 = *(v0 + 136);
  *(v0 + 304);
  v5;
  v6;
  v7;
  v8;
  v15;
  v14;
  v13;
  v12;
  v11;
  return (*(v0 + 8))();
}

uint64_t MLSupportVectorClassifier.Model.applied(to:eventHandler:)(uint64_t a1)
{
  v5 = *(*v2 + 320);
  v4 = *v2;
  *(*v2 + 328) = v1;
  v5;
  if (v1)
  {
    v6 = MLSupportVectorClassifier.Model.applied(to:eventHandler:);
  }

  else
  {
    *(v4 + 312);
    *(v4 + 336) = a1;
    v6 = MLSupportVectorClassifier.Model.applied(to:eventHandler:);
  }

  return swift_task_switch(v6, 0, 0);
}

{
  v5 = *(*v2 + 344);
  v4 = *v2;
  *(*v2 + 352) = v1;
  v5;
  if (v1)
  {
    v6 = MLSupportVectorClassifier.Model.applied(to:eventHandler:);
  }

  else
  {
    *(v4 + 312);
    *(v4 + 360) = a1;
    v6 = MLSupportVectorClassifier.Model.applied(to:eventHandler:);
  }

  return swift_task_switch(v6, 0, 0);
}

void *static MLSupportVectorClassifier.Model.buildFeatures(from:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v35 = &v28;
  v6 = alloca(v3);
  v7 = alloca(v3);
  v37 = &v28;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Double>);
  v9 = DenseMatrix.rowCount.getter(v8);
  if (v9 <= 0)
  {
    v9 = 0;
  }

  v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0, _swiftEmptyArrayStorage);
  v32 = v8;
  v31 = a1;
  v11 = DenseMatrix.rowCount.getter(v8);
  v33 = v11;
  if (v11 < 0)
  {
    BUG();
  }

  if (v11)
  {
    v12 = 0;
    v13 = v37;
    v14 = 0;
    v36 = v1;
    v34 = v2;
    do
    {
      v38 = v14;
      v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
      v16 = swift_allocObject(v15, 40, 7);
      v16[2] = 1;
      v16[3] = 2;
      v17 = v12;
      v18 = v31;
      v16[4] = DenseMatrix.columnCount.getter(v32);
      v19 = alloca(32);
      v20 = alloca(32);
      v30 = v18;
      v29 = v17;
      v31 = v17;
      v21 = v38;
      MLShapedArray.init(unsafeUninitializedShape:initializingWith:)(v16, partial apply for closure #1 in static MLSupportVectorClassifier.Model.buildFeatures(from:), &v28, &type metadata for Double, &protocol witness table for Double);
      v38 = v21;
      v22 = v34;
      (*(v34 + 16))(v35, v13, v36);
      v23 = v10[2];
      if (v10[3] >> 1 <= v23)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v10[3] >= 2uLL, v23 + 1, 1, v10);
      }

      v24 = v29 + 1;
      v10[2] = v23 + 1;
      v12 = v24;
      v25 = v10 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v23;
      v26 = v36;
      (*(v22 + 32))(v25, v35, v36);
      v13 = v37;
      (*(v22 + 8))(v37, v26);
      v14 = v38;
    }

    while (v33 != v12);
  }

  return v10;
}

uint64_t key path getter for ClassificationDistribution.mostLikelyLabel : ClassificationDistribution<Int>()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<Int>);
  ClassificationDistribution.mostLikelyLabel.getter(v2);
  result = v4;
  *v1 = v4;
  *(v1 + 8) = v5;
  return result;
}

uint64_t closure #1 in static MLSupportVectorClassifier.Model.buildFeatures(from:)(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Double>);
  result = DenseMatrix.columnCount.getter(v5);
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v7 = a4;
    v15 = *a1;
    v8 = 0;
    v14 = result;
    do
    {
      v9 = v7;
      v10 = specialized DenseMatrix.subscript.read(v12, v7, v8);
      v13 = *v11;
      (v10)(v12, 0);
      v7 = v9;
      result = v14;
      *(v15 + 8 * v8++) = v13;
    }

    while (result != v8);
  }

  return result;
}

uint64_t protocol witness for Transformer.applied(to:eventHandler:) in conformance MLSupportVectorClassifier.Model(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc(368);
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = protocol witness for SupervisedEstimator.fitted<A, B>(to:validateOn:eventHandler:) in conformance MLImageClassifier.Classifier;
  return MLSupportVectorClassifier.Model.applied(to:eventHandler:)(a1, a2, a3, a4);
}

void MLSupportVectorClassifier.Model.export(userInfo:)()
{
  v150 = v1;
  v126 = v0;
  v127 = type metadata accessor for ModelKind(0);
  v128 = *(v127 - 8);
  v3 = *(v128 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v129 = &v112;
  v137 = type metadata accessor for FeatureType(0);
  v136 = *(v137 - 8);
  v6 = *(v136 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v135 = &v112;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Model?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v130 = &v112;
  v139 = type metadata accessor for Model(0);
  v133 = *(v139 - 8);
  v12 = *(v133 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v148 = &v112;
  v121 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>);
  v141 = *(v121 - 8);
  v15 = *(v141 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v122 = &v112;
  v123 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>);
  v149 = *(v123 - 8);
  v18 = *(v149 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v124 = &v112;
  v140 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
  v21 = *(*(v140 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v134 = &v112;
  v24 = alloca(v21);
  v25 = alloca(v21);
  v114 = &v112;
  v115 = type metadata accessor for URL.DirectoryHint(0);
  v146 = *(v115 - 8);
  v26 = *(v146 + 8);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v116 = &v112;
  v118 = type metadata accessor for UUID(0);
  v119 = *(v118 - 8);
  v29 = *(v119 + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v120 = &v112;
  v32 = type metadata accessor for URL(0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = alloca(v34);
  v36 = alloca(v34);
  v125 = &v112;
  v37 = alloca(v34);
  v38 = alloca(v34);
  v147 = &v112;
  v39 = alloca(v34);
  v40 = alloca(v34);
  v117 = &v112;
  v41 = alloca(v34);
  v42 = alloca(v34);
  v43 = v2;
  v44 = v2[2];
  v45 = v43[3];
  v144 = v43;
  v46 = v150;
  v47 = specialized FeatureVectorizer.Transformer.exportEncoders()(v44, v45, v43[4]);
  if (!v46)
  {
    v138 = v33;
    v131 = v44;
    v145 = v47;
    v142 = &v112;
    v143 = v32;
    v48 = objc_opt_self(NSFileManager);
    v49 = [v48 defaultManager];
    v50 = v49;
    NSFileManager.createTemporaryModelDirectory()();
    v150 = v51;
    if (v51)
    {
      v145;

      return;
    }

    v52 = [v48 defaultManager];
    v53 = v52;
    NSFileManager.temporaryModelDirectory.getter();

    v54 = v120;
    UUID.init()();
    v55 = UUID.uuidString.getter();
    v57 = v56;
    v132 = v56;
    (*(v119 + 8))(v54, v118);
    v113[0] = v55;
    v113[1] = v57;
    v58 = v116;
    v59 = v115;
    (*(v146 + 13))(v116, enum case for URL.DirectoryHint.inferFromPath(_:), v115);
    v60 = lazy protocol witness table accessor for type String and conformance String();
    v61 = v117;
    v62 = v147;
    URL.appending<A>(component:directoryHint:)(v113, v58, &type metadata for String, v60);
    (*(v146 + 1))(v58, v59);
    v132;
    v63 = *(v138 + 8);
    v64 = v143;
    v63(v62, v143);
    URL.appendingPathExtension(_:)(0x6C65646F6D6C6D2ELL, 0xE800000000000000);
    v146 = v63;
    v63(v61, v64);
    v147 = (v144 + *(type metadata accessor for MLSupportVectorClassifier.Model(0) + 24));
    v65 = v114;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v147, v114, &demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
    if (swift_getEnumCaseMultiPayload(v65, v140) == 1)
    {
      v66 = v122;
      v67 = v65;
      v68 = v121;
      (*(v141 + 32))(v122, v67, v121);
      v69 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type LinearSupportVectorClassifierModel<Double, Int> and conformance LinearSupportVectorClassifierModel<A, B>, &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>, &protocol conformance descriptor for LinearSupportVectorClassifierModel<A, B>);
      v70 = v142;
      v71 = v150;
      Transformer.export(to:)(v142, v68, v69);
      if (v71)
      {
        v145;
        v72 = v66;
        v73 = v68;
        v74 = v141;
LABEL_9:
        (*(v74 + 8))(v72, v73);
        v146(v70, v143);
        return;
      }

      v80 = v66;
      v81 = v68;
      v82 = v141;
    }

    else
    {
      v75 = v124;
      v76 = v65;
      v77 = v123;
      (*(v149 + 32))(v124, v76, v123);
      v78 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type LinearSupportVectorClassifierModel<Double, String> and conformance LinearSupportVectorClassifierModel<A, B>, &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>, &protocol conformance descriptor for LinearSupportVectorClassifierModel<A, B>);
      v70 = v142;
      v79 = v150;
      Transformer.export(to:)(v142, v77, v78);
      if (v79)
      {
        v145;
        v72 = v75;
        v73 = v77;
        v74 = v149;
        goto LABEL_9;
      }

      v80 = v75;
      v81 = v77;
      v82 = v149;
    }

    (*(v82 + 8))(v80, v81);
    v83 = v125;
    (*(v138 + 16))(v125, v142, v143);
    Model.init(contentsOf:)(v83);
    v150 = 0;
    v84 = v139;
    v85 = v130;
    specialized BidirectionalCollection.last.getter(v145);
    if (__swift_getEnumTagSinglePayload(v85, 1, v84) == 1)
    {
      BUG();
    }

    v86 = Model.outputs.getter();
    v141 = *(v133 + 8);
    (v141)(v85, v84);
    Model.inputs.setter(v86);
    v87 = *v144;
    v88 = v144[1];
    v88;
    v144 = v87;
    Model.predictedFeatureName.setter(v87, v88);
    v89 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for String, &protocol witness table for String);
    Model.metadata.setter(v89);
    v90 = v134;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v147, v134, &demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
    LODWORD(v149) = swift_getEnumCaseMultiPayload(v90, v140);
    v91 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>);
    v92 = *(type metadata accessor for FeatureDescription(0) - 8);
    v93 = swift_allocObject(v91, ((*(v92 + 80) + 32) & ~*(v92 + 80)) + 2 * *(v92 + 72), *(v92 + 80) | 7);
    *(v93 + 16) = 2;
    *(v93 + 24) = 4;
    v140 = v93;
    v147 = v88;
    v88;
    v94 = v135;
    if (v149 == 1)
    {
      FeatureType.IntParameters.init(optional:)(0);
      (*(v136 + 104))(v94, enum case for FeatureType.int(_:), v137);
      FeatureDescription.init(name:type:description:)(v144, v147, v94, 0, 0xE000000000000000);
      v149 = Model.predictedProbabilitiesName.getter();
      v96 = v95;
      static FeatureType.dictionaryWithIntKeys(optional:)(0);
    }

    else
    {
      FeatureType.StringParameters.init(optional:)(0);
      (*(v136 + 104))(v94, enum case for FeatureType.string(_:), v137);
      FeatureDescription.init(name:type:description:)(v144, v147, v94, 0, 0xE000000000000000);
      v149 = Model.predictedProbabilitiesName.getter();
      v96 = v97;
      static FeatureType.dictionaryWithStringKeys(optional:)(0);
    }

    FeatureDescription.init(name:type:description:)(v149, v96, v94, 0, 0xE000000000000000);
    Model.outputs.setter(v140);
    outlined destroy of Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>(v134);
    Model.init()();
    Model.specificationVersion.setter(1);
    v98 = v131;
    v131;
    v99 = v150;
    ML16ColumnDescriptorVG_20MLModelSpecification18FeatureDescriptionVs5NeverOTg503_s8d50ML18TreeRegressorModelV6export16internalMetadata20h33Specification0E0VSDyS2SGz_tKFAF18jk5VAA16fG54Vcfu0_33_3fd57c9cf8bb5b882e179ce0f1f8c55eAmKTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML16ColumnDescriptorVG_20MLModelSpecification18FeatureDescriptionVs5NeverOTg503_s8d50ML18TreeRegressorModelV6export16internalMetadata20h33Specification0E0VSDyS2SGz_tKFAF18jk5VAA16fG54Vcfu0_33_3fd57c9cf8bb5b882e179ce0f1f8c55eAmKTf3nnnpk_nTf1cn_n(v98);
    v150 = v99;
    v98;
    Model.inputs.setter(ML16ColumnDescriptorVG_20MLModelSpecification18FeatureDescriptionVs5NeverOTg503_s8d50ML18TreeRegressorModelV6export16internalMetadata20h33Specification0E0VSDyS2SGz_tKFAF18jk5VAA16fG54Vcfu0_33_3fd57c9cf8bb5b882e179ce0f1f8c55eAmKTf3nnnpk_nTf1cn_n);
    v101 = Model.outputs.getter();
    Model.outputs.setter(v101);
    v102 = v147;
    v147;
    Model.predictedFeatureName.setter(v144, v102);
    v103 = Model.predictedProbabilitiesName.getter();
    Model.predictedProbabilitiesName.setter(v103, v104);
    v105 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Model>);
    v106 = v133;
    v107 = *(v133 + 80);
    v108 = (v107 + 32) & ~*(v133 + 80);
    v109 = swift_allocObject(v105, v108 + *(v133 + 72), v107 | 7);
    *(v109 + 16) = 1;
    *(v109 + 24) = 2;
    (*(v106 + 16))(v109 + v108, v148, v139);
    v113[0] = v145;
    specialized Array.append<A>(contentsOf:)(v109);
    v110 = v129;
    PipelineClassifierConfiguration.init(models:names:)(v113[0], _swiftEmptyArrayStorage);
    (*(v128 + 104))(v110, enum case for ModelKind.pipelineClassifier(_:), v127);
    Model.kind.setter(v110);
    (v141)(v148, v139);
    v111 = v142;
    $defer #1 () in MLSupportVectorClassifier.Model.export(userInfo:)();
    v146(v111, v143);
  }
}

NSURL *$defer #1 () in MLSupportVectorClassifier.Model.export(userInfo:)()
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

double specialized ContiguousArray.subscript.getter(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    BUG();
  }

  if (*(a2 + 16) <= a1)
  {
    BUG();
  }

  return *(a2 + 8 * a1 + 32);
}

void (*specialized DenseMatrix.subscript.read(double *a1, unint64_t a2, unint64_t a3))()
{
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Double>);
  v5 = DenseMatrix.layout.getter(v4);
  v14 = DenseMatrix.storage.getter(v4);
  if (v5)
  {
    v6 = DenseMatrix.rowCount.getter(v4);
    v8 = a3;
    v7 = v6 * a3;
    if (!is_mul_ok(v6, v8))
    {
      BUG();
    }

    v9 = v7 + a2;
    if (__OFADD__(v7, a2))
    {
      BUG();
    }
  }

  else
  {
    v10 = DenseMatrix.columnCount.getter(v4);
    v11 = v10 * a2;
    if (!is_mul_ok(v10, a2))
    {
      BUG();
    }

    v12 = __OFADD__(a3, v11);
    v9 = a3 + v11;
    if (v12)
    {
      BUG();
    }
  }

  *a1 = specialized ContiguousArray.subscript.getter(v9, v14);

  return MLBoostedTreeRegressor.ModelParameters.maxDepth.modify;
}

uint64_t outlined init with copy of MLSoundClassifier.Model(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLSoundClassifier.Model(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined copy of ColumnDescriptor.ColumnTypeDescriptor(uint64_t a1, char a2)
{
  if ((a2 & 0xFE) == 4)
  {
    return a1;
  }

  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11TabularData6ColumnVySSG_Sis5NeverOTg5047_s8CreateML6LabelsO17encodeAnnotationsySaySiG11d8Data9AnyF13VFSiSSSgXEfU_SDySSSiGTf1cn_n(uint64_t a1, uint64_t *a2)
{
  v23 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v3 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
  v4 = dispatch thunk of Collection.count.getter(v2, v3);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v29 = _swiftEmptyArrayStorage;
  v5 = 0;
  if (v4 > 0)
  {
    v5 = v4;
  }

  v28 = v4;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v30 = v29;
  dispatch thunk of Collection.startIndex.getter(v2, v3);
  if (v28 < 0)
  {
    BUG();
  }

  v6 = 0;
  v24 = a1;
  v25 = v2;
  v26 = v3;
  do
  {
    v7 = __OFADD__(1, v6);
    v8 = v6 + 1;
    if (v7)
    {
      BUG();
    }

    v22 = v8;
    v9 = dispatch thunk of Collection.subscript.read(v21, v27, v2, v3);
    v11 = *v10;
    v12 = v10[1];
    v12;
    v9(v21, 0);
    v13 = v12;
    if (!v12)
    {
      v13 = 0xE000000000000000;
    }

    v14 = *v23;
    if (!*(*v23 + 16))
    {
      v12;
LABEL_21:
      v13;
      BUG();
    }

    if (!v12)
    {
      v11 = 0;
    }

    v12;
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v13);
    if ((v16 & 1) == 0)
    {
      goto LABEL_21;
    }

    v17 = *(*(v14 + 56) + 8 * v15);
    v12;
    v13;
    v18 = v30;
    v29 = v30;
    v19 = v30[2];
    if (v30[3] >> 1 <= v19)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v30[3] >= 2uLL, v19 + 1, 1);
      v18 = v29;
    }

    v18[2] = v19 + 1;
    v30 = v18;
    v18[v19 + 4] = v17;
    v2 = v25;
    v3 = v26;
    dispatch thunk of Collection.formIndex(after:)(v27, v25, v26);
    v6 = v22;
  }

  while (v22 != v28);
  return v30;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11TabularData6ColumnVySiG_Sis5NeverOTg5047_s8CreateML6LabelsO17encodeAnnotationsySaySiG11d8Data9AnyF13VFS2iSgXEfU0_SDyS2iGTf1cn_n(uint64_t a1, uint64_t *a2)
{
  v21 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v3 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
  v4 = dispatch thunk of Collection.count.getter(v2, v3);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v27 = _swiftEmptyArrayStorage;
  v5 = 0;
  if (v4 > 0)
  {
    v5 = v4;
  }

  v26 = v4;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v28 = v27;
  v25 = v3;
  dispatch thunk of Collection.startIndex.getter(v2, v3);
  if (v26 < 0)
  {
    BUG();
  }

  v6 = 0;
  v22 = a1;
  v23 = v2;
  do
  {
    if (__OFADD__(1, v6++))
    {
      BUG();
    }

    v8 = dispatch thunk of Collection.subscript.read(v20, v24, v2, v25);
    v10 = *v9;
    v11 = *(v9 + 8);
    v8(v20, 0);
    v12 = *v21;
    if (!*(*v21 + 16))
    {
      BUG();
    }

    if (v11)
    {
      v10 = 0;
    }

    v13 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
    if ((v14 & 1) == 0)
    {
      BUG();
    }

    v15 = *(*(v12 + 56) + 8 * v13);
    v16 = v28;
    v27 = v28;
    v17 = v28[2];
    v18 = v28[3];
    if (v18 >> 1 <= v17)
    {
      v28 = v15;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18 >= 2, v17 + 1, 1);
      v15 = v28;
      v16 = v27;
    }

    v16[2] = v17 + 1;
    v28 = v16;
    v16[v17 + 4] = v15;
    v2 = v23;
    dispatch thunk of Collection.formIndex(after:)(v24, v23, v25);
  }

  while (v6 != v26);
  return v28;
}

uint64_t specialized Set.union<A>(_:)(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v2 = -1 << *(a1 + 32);
  v3 = ~(-1 << -v2);
  if (-v2 >= 64)
  {
    v3 = -1;
  }

  v20 = a1 + 56;
  v18 = a1;
  v4 = *(a1 + 56) & v3;
  v17 = v2;
  v19 = (63 - v2) >> 6;
  for (i = 0; ; i = v6)
  {
    if (v4)
    {
      v6 = i;
      goto LABEL_25;
    }

    v7 = i + 1;
    if (__OFADD__(1, i))
    {
      BUG();
    }

    if (v7 >= v19)
    {
      goto LABEL_26;
    }

    v4 = *(v20 + 8 * v7);
    if (v4)
    {
      v6 = i + 1;
      goto LABEL_25;
    }

    v6 = i + 2;
    if (i + 2 >= v19)
    {
      goto LABEL_26;
    }

    v4 = *(v20 + 8 * v7 + 8);
    if (!v4)
    {
      v6 = i + 3;
      if (i + 3 >= v19)
      {
        goto LABEL_26;
      }

      v4 = *(v20 + 8 * v7 + 16);
      if (!v4)
      {
        v6 = i + 4;
        if (i + 4 >= v19)
        {
          goto LABEL_26;
        }

        v4 = *(v20 + 8 * v7 + 24);
        if (!v4)
        {
          v6 = i + 5;
          if (i + 5 >= v19)
          {
            goto LABEL_26;
          }

          v4 = *(v20 + 8 * v7 + 32);
          if (!v4)
          {
            v6 = i + 6;
            if (i + 6 >= v19)
            {
              goto LABEL_26;
            }

            v4 = *(v20 + 8 * v7 + 40);
            if (!v4)
            {
              break;
            }
          }
        }
      }
    }

LABEL_25:
    _BitScanForward64(&v9, v4);
    v4 &= v4 - 1;
    v10 = *(v18 + 48);
    v11 = (v6 << 10) | (16 * v9);
    v12 = *(v10 + v11);
    v13 = *(v10 + v11 + 8);
    v13;
    specialized Set._Variant.insert(_:)(v15, v12, v13);
    v15[1];
  }

  v8 = i + 7;
  if (i + 7 >= v19)
  {
    goto LABEL_26;
  }

  v4 = *(v20 + 8 * v7 + 48);
  if (v4)
  {
    v6 = i + 7;
    goto LABEL_25;
  }

  while (1)
  {
    v6 = v8 + 1;
    if (v8 + 1 >= v19)
    {
      break;
    }

    v4 = *(v18 + 8 * v8++ + 64);
    if (v4)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  outlined consume of [String : [Double]].Iterator._Variant(v18);
  return v16;
}

{
  v13 = a2;
  v2 = -1 << *(a1 + 32);
  v3 = ~(-1 << -v2);
  if (-v2 >= 64)
  {
    v3 = -1;
  }

  v15 = a1 + 56;
  v4 = *(a1 + 56) & v3;
  v14 = v2;
  v5 = (63 - v2) >> 6;
  for (i = 0; ; i = v7)
  {
    if (v4)
    {
      v7 = i;
      goto LABEL_25;
    }

    v8 = i + 1;
    if (__OFADD__(1, i))
    {
      BUG();
    }

    if (v8 >= v5)
    {
      goto LABEL_26;
    }

    v4 = *(v15 + 8 * v8);
    if (v4)
    {
      v7 = i + 1;
      goto LABEL_25;
    }

    v7 = i + 2;
    if (i + 2 >= v5)
    {
      goto LABEL_26;
    }

    v4 = *(v15 + 8 * v8 + 8);
    if (!v4)
    {
      v7 = i + 3;
      if (i + 3 >= v5)
      {
        goto LABEL_26;
      }

      v4 = *(v15 + 8 * v8 + 16);
      if (!v4)
      {
        v7 = i + 4;
        if (i + 4 >= v5)
        {
          goto LABEL_26;
        }

        v4 = *(v15 + 8 * v8 + 24);
        if (!v4)
        {
          v7 = i + 5;
          if (i + 5 >= v5)
          {
            goto LABEL_26;
          }

          v4 = *(v15 + 8 * v8 + 32);
          if (!v4)
          {
            v7 = i + 6;
            if (i + 6 >= v5)
            {
              goto LABEL_26;
            }

            v4 = *(v15 + 8 * v8 + 40);
            if (!v4)
            {
              break;
            }
          }
        }
      }
    }

LABEL_25:
    _BitScanForward64(&v10, v4);
    v4 &= v4 - 1;
    specialized Set._Variant.insert(_:)(&v12, *(*(a1 + 48) + ((v7 << 9) | (8 * v10))));
  }

  v9 = i + 7;
  if (i + 7 >= v5)
  {
    goto LABEL_26;
  }

  v4 = *(v15 + 8 * v8 + 48);
  if (v4)
  {
    v7 = i + 7;
    goto LABEL_25;
  }

  while (1)
  {
    v7 = v9 + 1;
    if (v9 + 1 >= v5)
    {
      break;
    }

    v4 = *(a1 + 8 * v9++ + 64);
    if (v4)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  outlined consume of [String : [Double]].Iterator._Variant(a1);
  return v13;
}

{
  v10 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v9 = a1;
    v3 = (a1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      *v3;
      specialized Set._Variant.insert(_:)(v8, v4, v5);
      v8[1];
      v3 += 2;
      --v2;
    }

    while (v2);
    v9;
    return v10;
  }

  else
  {
    v6 = a2;
    a1;
  }

  return v6;
}

char *static Labels.collected(from:_:)(uint64_t a1, uint64_t a2)
{
  v61 = v2;
  v62 = a2;
  v70 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v58 = *(v70 - 1);
  v3 = *(v58 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v64 = &v56;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<Int>>) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v73 = &v56;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyColumn?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v59 = &v56;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v71 = &v56;
  v68 = type metadata accessor for AnyColumn(0);
  v69 = *(v68 - 8);
  v14 = *(v69 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v65 = &v56;
  v17 = alloca(v14);
  v18 = alloca(v14);
  v63 = &v56;
  v60 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v19 = *(v60 - 8);
  v20 = v19[8];
  v21 = alloca(v20);
  v22 = alloca(v20);
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>) - 8) + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v72 = &v56;
  v26 = AnyColumn.wrappedElementType.getter();
  if (!swift_dynamicCastMetatype(v26, &type metadata for String))
  {
    v34 = v64;
    if (!swift_dynamicCastMetatype(v26, &type metadata for Int))
    {
      v48 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v48, 0, 0);
      *v49 = 0xD000000000000025;
      *(v49 + 8) = "start time column" + 0x8000000000000000;
      *(v49 + 16) = 0;
      *(v49 + 32) = 0;
      *(v49 + 48) = 1;
      return swift_willThrow(&type metadata for MLCreateError, v48);
    }

    v35 = AnyColumn.assumingType<A>(_:)(&type metadata for Int, &type metadata for Int);
    v66 = 0;
    v36 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
    v37 = v70;
    v71 = v36;
    OptionalColumnProtocol.filled(with:)(&v66, v70, v36);
    v72 = *(v58 + 8);
    (v72)(v34, v37, v35);
    v38 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_11TabularData12FilledColumnVyAD0E0VySiGGTt0g5();
    v39 = v59;
    outlined init with copy of AnyColumn?(v62, v59);
    v40 = v68;
    if (__swift_getEnumTagSinglePayload(v39, 1, v68) == 1)
    {
      outlined destroy of AnyColumn?(v39);
    }

    else
    {
      (*(v69 + 32))(v65, v39, v40);
      v51 = AnyColumn.assumingType<A>(_:)(&type metadata for Int, &type metadata for Int);
      v66 = 0;
      v52 = v70;
      OptionalColumnProtocol.filled(with:)(&v66, v70, v71);
      (v72)(v34, v52, v51);
      v53 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_11TabularData12FilledColumnVyAD0E0VySiGGTt0g5();
      v38 = specialized Set.union<A>(_:)(v53, v38);
      (*(v69 + 8))(v65, v68);
    }

    v38;
    v54 = specialized _copyCollectionToContiguousArray<A>(_:)(v38);
    v38;
    v66 = v54;
    v55 = v61;
    specialized MutableCollection<>.sort(by:)(&v66);
    if (!v55)
    {
      v47 = v38;
      goto LABEL_14;
    }

LABEL_15:

    BUG();
  }

  v73 = v19;
  v27 = AnyColumn.assumingType<A>(_:)(&type metadata for String, &type metadata for String);
  v66 = 0;
  v67 = 0xE000000000000000;
  v28 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
  v29 = v60;
  v64 = v28;
  OptionalColumnProtocol.filled(with:)(&v66, v60, v28);
  v30 = v73[1];
  v73 = &v56;
  v70 = v30;
  (v30)(&v56, v29, v27);
  v31 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_11TabularData12FilledColumnVyAD0E0VySSGGTt0g5();
  v32 = v71;
  outlined init with copy of AnyColumn?(v62, v71);
  v33 = v68;
  if (__swift_getEnumTagSinglePayload(v32, 1, v68) == 1)
  {
    outlined destroy of AnyColumn?(v71);
  }

  else
  {
    (*(v69 + 32))(v63, v71, v33);
    v41 = v73;
    v42 = AnyColumn.assumingType<A>(_:)(&type metadata for String, &type metadata for String);
    v66 = 0;
    v67 = 0xE000000000000000;
    v43 = v60;
    OptionalColumnProtocol.filled(with:)(&v66, v60, v64);
    (v70)(v41, v43, v42);
    v44 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_11TabularData12FilledColumnVyAD0E0VySSGGTt0g5();
    v31 = specialized Set.union<A>(_:)(v44, v31);
    (*(v69 + 8))(v63, v68);
  }

  v31;
  v45 = specialized _copyCollectionToContiguousArray<A>(_:)(v31);
  v31;
  v66 = v45;
  v46 = v61;
  specialized MutableCollection<>.sort(by:)(&v66);
  if (v46)
  {
    goto LABEL_15;
  }

  v47 = v31;
LABEL_14:
  v47;
  return v66;
}

uint64_t outlined init with copy of AnyColumn?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyColumn?);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined destroy of AnyColumn?(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyColumn?);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

void *Labels.encodeAnnotations(_:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v57 = *(v58 - 8);
  v5 = v57[8];
  v6 = alloca(v5);
  v7 = alloca(v5);
  v59 = &v53;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = alloca(v10);
  v12 = alloca(v10);
  v56 = a2;
  if ((a3 & 1) == 0)
  {
    v13 = _swiftEmptyDictionarySingleton;
    v62 = _swiftEmptyDictionarySingleton;
    v61 = *(a2 + 16);
    if (!v61)
    {
LABEL_25:
      v50 = v59;
      AnyColumn.assumingType<A>(_:)(&type metadata for Int, &type metadata for Int);
      ML6LabelsO17encodeAnnotationsySaySiG11d8Data9AnyF13VFS2iSgXEfU0_SDyS2iGTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11TabularData6ColumnVySiG_Sis5NeverOTg5047_s8CreateML6LabelsO17encodeAnnotationsySaySiG11d8Data9AnyF13VFS2iSgXEfU0_SDyS2iGTf1cn_n(v50, &v62);
      v36 = v50;
      v37 = v58;
      v38 = v57;
      goto LABEL_26;
    }

    v60 = a1;
    a2;
    v13 = _swiftEmptyDictionarySingleton;
    v39 = 0;
    while (1)
    {
      v64 = v39;
      v40 = *(v4 + 8 * v39 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v13);
      v65 = v13;
      v63 = v40;
      v43 = specialized __RawDictionaryStorage.find<A>(_:)(v40);
      v44 = (v42 & 1) == 0;
      v22 = __OFADD__(v13[2], v44);
      v45 = v13[2] + v44;
      if (v22)
      {
        BUG();
      }

      v46 = v42;
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<Int, Int>);
      v25 = v45;
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v45))
      {
        v43 = specialized __RawDictionaryStorage.find<A>(_:)(v63);
        LOBYTE(v28) = v28 & 1;
        if ((v46 & 1) != v28)
        {
          break;
        }
      }

      v47 = v64;
      v13 = v65;
      if (v46)
      {
        *(v65[7] + 8 * v43) = v64;
      }

      else
      {
        v65[(v43 >> 6) + 8] |= 1 << v43;
        *(v13[6] + 8 * v43) = v63;
        *(v13[7] + 8 * v43) = v47;
        v48 = v13[2];
        v22 = __OFADD__(1, v48);
        v49 = v48 + 1;
        if (v22)
        {
          BUG();
        }

        v13[2] = v49;
      }

      v39 = v47 + 1;
      v4 = v56;
      if (v61 == v39)
      {
        v62 = v13;
        v56;
        goto LABEL_25;
      }
    }

    v52 = &type metadata for Int;
LABEL_33:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v52, v25, v28, v26, v27);
    BUG();
  }

  v55 = &v53;
  v54 = v8;
  v59 = v9;
  v13 = _swiftEmptyDictionarySingleton;
  v62 = _swiftEmptyDictionarySingleton;
  v58 = *(a2 + 16);
  if (!v58)
  {
    goto LABEL_13;
  }

  v60 = a1;
  a2;
  v14 = (a2 + 40);
  v13 = _swiftEmptyDictionarySingleton;
  v15 = 0;
  do
  {
    v63 = v15;
    v16 = *(v14 - 1);
    v57 = v14;
    v17 = *v14;
    *v14;
    v18 = swift_isUniquelyReferenced_nonNull_native(v13);
    v65 = v13;
    v61 = v16;
    v64 = v17;
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v13[2], v21);
    v23 = v13[2] + v21;
    if (v22)
    {
      BUG();
    }

    v24 = v19;
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, Int>);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v18, v23))
    {
      v25 = v64;
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(v61, v64);
      LOBYTE(v28) = v28 & 1;
      if ((v24 & 1) != v28)
      {
        v52 = &type metadata for String;
        goto LABEL_33;
      }
    }

    v13 = v65;
    if (v24)
    {
      v29 = v63;
      *(v65[7] + 8 * v20) = v63;
      v64;
    }

    else
    {
      v65[(v20 >> 6) + 8] |= 1 << v20;
      v30 = v13[6];
      v31 = 16 * v20;
      *(v30 + v31) = v61;
      *(v30 + v31 + 8) = v64;
      v29 = v63;
      *(v13[7] + 8 * v20) = v63;
      v32 = v13[2];
      v22 = __OFADD__(1, v32);
      v33 = v32 + 1;
      if (v22)
      {
        BUG();
      }

      v13[2] = v33;
    }

    v15 = v29 + 1;
    v14 = v57 + 2;
  }

  while (v58 != v15);
  v62 = v13;
  v56;
LABEL_13:
  v34 = v55;
  AnyColumn.convertedToStrings()();
  ML6LabelsO17encodeAnnotationsySaySiG11d8Data9AnyF13VFS2iSgXEfU0_SDyS2iGTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11TabularData6ColumnVySSG_Sis5NeverOTg5047_s8CreateML6LabelsO17encodeAnnotationsySaySiG11d8Data9AnyF13VFSiSSSgXEfU_SDySSSiGTf1cn_n(v34, &v62);
  v36 = v34;
  v37 = v54;
  v38 = v59;
LABEL_26:
  (v38[1])(v36, v37);
  v13;
  return ML6LabelsO17encodeAnnotationsySaySiG11d8Data9AnyF13VFS2iSgXEfU0_SDyS2iGTf1cn_n;
}

char static Labels.== infix(_:_:)(void *a1, char a2, void *a3, char a4)
{
  if (a2)
  {
    if (a4)
    {
      return _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(a1, a3);
    }

    return 0;
  }

  if (a4)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(a1, a3);
}

uint64_t initializeBufferWithCopyOfBuffer for Labels(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v3;
  return a1;
}

uint64_t *assignWithCopy for Labels(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v4;
  v3;
  v5;
  return a1;
}

uint64_t *assignWithTake for Labels(uint64_t *a1, uint64_t *a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4;
  return a1;
}

uint64_t MLWordTagger.prediction(from:)()
{
  v9[0] = 32;
  v9[1] = 0xE100000000000000;
  v1 = lazy protocol witness table accessor for type String and conformance String();
  v2 = StringProtocol.components<A>(separatedBy:)(v9, &type metadata for String, &type metadata for String, v1, v1);
  v3 = *v0;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v2;
  v5 = [v3 predictedLabelsForTokens:isa];
  v6 = v5;

  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v6, &type metadata for String);
  return v7;
}

{
  v1 = *v0;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v3 = [v1 predictedLabelsForTokens:isa];
  v4 = v3;

  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v4, &type metadata for String);
  return v5;
}

uint64_t specialized MLWordTagger.predictions<A>(from:)(uint64_t a1)
{
  v4 = v2;
  v58 = v3;
  v5 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ColumnID<[Int]>) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v68 = &v54;
  v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Int]>);
  v63 = *(v65 - 8);
  v9 = *(v63 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v69 = &v54;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v70 = &v54;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ColumnID<[String]>) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v66 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String]>);
  v64 = *(v66 - 8);
  v17 = *(v64 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v72 = &v54;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v71 = &v54;
  a1;
  v62 = v5;
  DataFrame.init()(a1);
  v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  ColumnID.init(_:_:)(1954047348, 0xE400000000000000, v22);
  v67 = a1;
  v23 = *(a1 + 16);
  Column.init(_:capacity:)(&v54, v23, v22);
  ColumnID.init(_:_:)(0x6C6562616CLL, 0xE500000000000000, v22);
  v60 = v22;
  Column.init(_:capacity:)(&v54, v23, v22);
  v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
  v25 = v68;
  ColumnID.init(_:_:)(0x736874676E656CLL, 0xE700000000000000, v24);
  Column.init(_:capacity:)(v25, v23, v24);
  ColumnID.init(_:_:)(0x6E6F697461636F6CLL, 0xE900000000000073, v24);
  v61 = v24;
  Column.init(_:capacity:)(v25, v23, v24);
  v59 = v23;
  if (v23)
  {
    v26 = (v67 + 40);
    while (1)
    {
      v27 = *(v26 - 1);
      v54 = v26;
      v28 = *v26;
      *v26;
      v29 = MLWordTagger.predictTokensAndLabels(text:)(v27, v28);
      v68 = v4;
      if (v4)
      {
        break;
      }

      v33 = v30;
      v34 = v32;
      v35 = v29;
      v56 = v29;
      v57 = v31;
      v28;
      v73[0] = v33;
      v36 = v66;
      v55 = v33;
      Column.append(_:)(v73, v66);
      v73[0] = v35;
      Column.append(_:)(v73, v36);
      v73[0] = v34;
      v37 = v65;
      Column.append(_:)(v73, v65);
      v38 = v57;
      v73[0] = v57;
      Column.append(_:)(v73, v37);
      v34;
      v38;
      v55;
      v56;
      v26 = v54 + 2;
      v39 = v59-- == 1;
      v4 = v68;
      if (v39)
      {
        goto LABEL_5;
      }
    }

    v67;
    v28;
    v49 = *(v63 + 8);
    v50 = v65;
    v49(v69, v65);
    v49(v70, v50);
    v51 = *(v64 + 8);
    v52 = v66;
    v51(v72, v66);
    v51(v71, v52);
    v53 = type metadata accessor for DataFrame(0);
    return (*(*(v53 - 8) + 8))(v62, v53);
  }

  else
  {
LABEL_5:
    v67;
    v40 = v60;
    DataFrame.append<A>(column:)(v71, v60);
    DataFrame.append<A>(column:)(v72, v40);
    v41 = v61;
    DataFrame.append<A>(column:)(v70, v61);
    v42 = v69;
    DataFrame.append<A>(column:)(v69, v41);
    v43 = *(v63 + 8);
    v44 = v42;
    v45 = v65;
    v43(v44, v65);
    v43(v70, v45);
    v46 = *(v64 + 8);
    v47 = v66;
    v46(v72, v66);
    return (v46)(v71, v47);
  }
}

uint64_t MLWordTagger.predictions<A>(from:)(uint64_t a1, uint64_t a2, void *a3)
{
  v76 = v4;
  v69 = v5;
  v78 = a3;
  v6 = v3;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ColumnID<[Int]>) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v77 = &v64;
  v79 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Int]>);
  v73 = *(v79 - 8);
  v10 = *(v73 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v82 = &v64;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v81 = &v64;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ColumnID<[String]>) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v80 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String]>);
  v74 = *(v80 - 8);
  v18 = *(v74 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v84 = &v64;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v83 = &v64;
  v23 = *(a2 - 8);
  v24 = *(v23 + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  (*(v23 + 16))(&v64, a1);
  v27 = Array.init<A>(_:)(&v64, &type metadata for String, a2, v78);
  v72 = v6;
  DataFrame.init()(&v64);
  v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  ColumnID.init(_:_:)(1954047348, 0xE400000000000000, v28);
  v29 = *(v27 + 16);
  Column.init(_:capacity:)(&v64, v29, v28);
  ColumnID.init(_:_:)(0x6C6562616CLL, 0xE500000000000000, v28);
  v70 = v28;
  Column.init(_:capacity:)(&v64, v29, v28);
  v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
  v31 = v77;
  ColumnID.init(_:_:)(0x736874676E656CLL, 0xE700000000000000, v30);
  Column.init(_:capacity:)(v31, v29, v30);
  ColumnID.init(_:_:)(0x6E6F697461636F6CLL, 0xE900000000000073, v30);
  v71 = v30;
  Column.init(_:capacity:)(v31, v29, v30);
  v32 = *(v27 + 16);
  v75 = v27;
  if (v32)
  {
    v33 = (v27 + 40);
    while (1)
    {
      v77 = v32;
      v34 = *(v33 - 1);
      v35 = *v33;
      *v33;
      v36 = v76;
      v37 = MLWordTagger.predictTokensAndLabels(text:)(v34, v35);
      if (v36)
      {
        break;
      }

      v76 = 0;
      v41 = v35;
      v78 = v33;
      v42 = v37;
      v66 = v37;
      v43 = v38;
      v65 = v38;
      v67 = v39;
      v44 = v40;
      v68 = v40;
      v41;
      v85[0] = v43;
      v45 = v80;
      Column.append(_:)(v85, v80);
      v85[0] = v42;
      v46 = v78;
      Column.append(_:)(v85, v45);
      v85[0] = v44;
      v47 = v79;
      Column.append(_:)(v85, v79);
      v48 = v67;
      v85[0] = v67;
      Column.append(_:)(v85, v47);
      v68;
      v48;
      v65;
      v66;
      v33 = v46 + 2;
      v32 = (v77 - 1);
      if (v77 == (&dword_0 + 1))
      {
        goto LABEL_5;
      }
    }

    v75;
    v35;
    v59 = *(v73 + 8);
    v60 = v79;
    v59(v82, v79);
    v59(v81, v60);
    v61 = *(v74 + 8);
    v62 = v80;
    v61(v84, v80);
    v61(v83, v62);
    v63 = type metadata accessor for DataFrame(0);
    return (*(*(v63 - 8) + 8))(v72, v63);
  }

  else
  {
LABEL_5:
    v75;
    v49 = v70;
    DataFrame.append<A>(column:)(v83, v70);
    DataFrame.append<A>(column:)(v84, v49);
    v50 = v81;
    v51 = v71;
    DataFrame.append<A>(column:)(v81, v71);
    v52 = v82;
    DataFrame.append<A>(column:)(v82, v51);
    v53 = *(v73 + 8);
    v54 = v52;
    v55 = v79;
    v53(v54, v79);
    v53(v50, v55);
    v56 = *(v74 + 8);
    v57 = v80;
    v56(v84, v80);
    return (v56)(v83, v57);
  }
}

uint64_t MLWordTagger.predictTokensAndLabels(text:)()
{
  v17[5] = v0;
  v2 = *v1;
  v3 = String._bridgeToObjectiveC()();
  v4 = NLPSequenceModelCopyPredictedTokensAndLabelsForText(v2, v3);

  if (!v4 || (v17[0] = 0, static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)(v4, v17, &type metadata for AnyHashable, &type metadata for Any + 8, &protocol witness table for AnyHashable), v4, (v5 = v17[0]) == 0))
  {
    v14 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v14, 0, 0);
    v7 = 0xD00000000000001DLL;
    v16 = "n the trained model.";
    goto LABEL_25;
  }

  v21 = 0x7272416C6562614CLL;
  v22 = 0xEA00000000007961;
  AnyHashable.init<A>(_:)(&v21, &type metadata for String, &protocol witness table for String);
  specialized Dictionary.subscript.getter(v17, v5);
  outlined destroy of AnyHashable(v17);
  if (!v20)
  {
    v5;
    outlined destroy of Any?(v19);
    v7 = 0xD000000000000024;
LABEL_15:
    v14 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v14, 0, 0);
    v16 = "No output returned for input.";
    goto LABEL_25;
  }

  v24 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  v7 = 0xD000000000000024;
  if (!swift_dynamicCast(&v21, v19, &type metadata for Any + 8, v6, 6))
  {
    v24;
    goto LABEL_15;
  }

  v25 = v21;
  v21 = 0x7272416E656B6F54;
  v22 = 0xEA00000000007961;
  AnyHashable.init<A>(_:)(&v21, &type metadata for String, &protocol witness table for String);
  v8 = v24;
  specialized Dictionary.subscript.getter(v17, v24);
  outlined destroy of AnyHashable(v17);
  if (!v20)
  {
    v25;
    v8;
    outlined destroy of Any?(v19);
LABEL_18:
    v14 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v14, 0, 0);
    v16 = "ray from prediction.";
    goto LABEL_25;
  }

  if (!swift_dynamicCast(&v21, v19, &type metadata for Any + 8, v6, 6))
  {
    v25;
    v24;
    goto LABEL_18;
  }

  v23 = v21;
  v21 = 0xD000000000000017;
  v22 = "ray from prediction." + 0x8000000000000000;
  AnyHashable.init<A>(_:)(&v21, &type metadata for String, &protocol witness table for String);
  v9 = v24;
  specialized Dictionary.subscript.getter(v17, v24);
  outlined destroy of AnyHashable(v17);
  if (!v20)
  {
    v23;
    v25;
    v9;
    outlined destroy of Any?(v19);
LABEL_21:
    v14 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v14, 0, 0);
    v7 = 0xD00000000000002DLL;
    v16 = "TokenRangeLocationArray";
    goto LABEL_25;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
  if (!swift_dynamicCast(&v21, v19, &type metadata for Any + 8, v10, 6))
  {
    v23;
    v25;
    v24;
    goto LABEL_21;
  }

  v18 = v10;
  v11 = v21;
  v21 = 0xD000000000000015;
  v22 = "cation array from prediction." + 0x8000000000000000;
  AnyHashable.init<A>(_:)(&v21, &type metadata for String, &protocol witness table for String);
  v12 = v24;
  specialized Dictionary.subscript.getter(v17, v24);
  v12;
  outlined destroy of AnyHashable(v17);
  if (v20)
  {
    if (swift_dynamicCast(&v21, v19, &type metadata for Any + 8, v18, 6))
    {
      return v25;
    }

    v11;
    v23;
    v25;
  }

  else
  {
    v11;
    v23;
    v25;
    outlined destroy of Any?(v19);
  }

  v14 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v14, 0, 0);
  v7 = 0xD00000000000002BLL;
  v16 = "TokenRangeLengthArray";
LABEL_25:
  *v15 = v7;
  *(v15 + 8) = v16 | 0x8000000000000000;
  *(v15 + 16) = 0;
  *(v15 + 32) = 0;
  *(v15 + 48) = 0;
  return swift_willThrow(&type metadata for MLCreateError, v14);
}

uint64_t MLWordTagger.predictions(from:)(uint64_t a1, __m128 a2)
{
  v20 = v3;
  v21 = v4;
  v22 = v2;
  v5 = type metadata accessor for DataFrame(0);
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v23 = &v19;
  v9 = alloca(v6);
  v10 = alloca(v6);
  if (*(a1 + 8) || (v11 = *a1, outlined copy of Result<_DataTable, Error>(*a1, 0), _UntypedColumn.type.getter(), outlined consume of Result<_DataTable, Error>(v11, 0), v26 != 2))
  {
    v17 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v17, 0, 0);
    *v18 = 0xD00000000000002ALL;
    *(v18 + 8) = "logisticRegressor" + 0x8000000000000000;
    *(v18 + 16) = 0;
    *(v18 + 32) = 0;
    *(v18 + 48) = 1;
    return swift_willThrow(&type metadata for MLCreateError, v17);
  }

  else
  {
    outlined copy of Result<_DataTable, Error>(v11, 0);
    MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v11, 0, *a2.i64);
    v24 = &v19;
    v13 = v20;
    specialized MLWordTagger.predictions<A>(from:)(MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5);
    result = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
    if (!v13)
    {
      v15 = v23;
      v16 = v24;
      *a2.i64 = (*(v25 + 16))(v23, v24, v5);
      MLDataTable.init(_:convertArraysToShapedArrays:)(v15, 0, a2);
      return (*(v25 + 8))(v16, v5);
    }
  }

  return result;
}

void *MLWordTagger.predictionWithConfidence(from:)()
{
  v5[0] = 32;
  v5[1] = 0xE100000000000000;
  v1 = lazy protocol witness table accessor for type String and conformance String();
  v2 = StringProtocol.components<A>(separatedBy:)(v5, &type metadata for String, &type metadata for String, v1, v1);
  v3 = MLWordTagger.predictionWithAllTagsAndConfidences(tokens:tags:)(v2, *(v0 + 8));
  v2;
  return v3;
}

void *MLWordTagger.predictionWithAllTagsAndConfidences(tokens:tags:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = NLModel.predictedLabelHypotheses(forTokens:maximumCount:)(a1, *(a2 + 16));
  v60 = *(v4 + 16);
  if (!v60)
  {
    v4;
    return _swiftEmptyArrayStorage;
  }

  v5 = *(v4 + 32);
  v6 = v5[2];
  v7 = *(a2 + 16);
  if (v7 < v6)
  {
    v69 = _swiftEmptyArrayStorage;
    goto LABEL_4;
  }

  v69 = _swiftEmptyArrayStorage;
  v11 = 1;
  v61 = v4;
  while (2)
  {
    v64 = v11;
    if (v6 == v7)
    {
      v5;
      if (swift_isUniquelyReferenced_nonNull_native(v69))
      {
        v12 = v69;
      }

      else
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v69[2] + 1, 1, v69);
      }

      v13 = v12[2];
      if (v12[3] >> 1 <= v13)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v12[3] >= 2uLL, v13 + 1, 1, v12);
      }

      v14 = v64;
      v12[2] = v13 + 1;
      v69 = v12;
      v12[v13 + 4] = v5;
      goto LABEL_80;
    }

    specialized _NativeDictionary.makeIterator()(v5);
    v15 = v58;
    v16 = v59;
    v17 = (v57 + 64) >> 6;
    v18 = 0.0;
    while (1)
    {
      if (v16)
      {
        v19 = v15;
        goto LABEL_38;
      }

      v20 = v15 + 1;
      if (__OFADD__(1, v15))
      {
        BUG();
      }

      if (v20 >= v17)
      {
        goto LABEL_39;
      }

      v16 = *(v56 + 8 * v20);
      if (v16)
      {
        v19 = v15 + 1;
        goto LABEL_38;
      }

      v19 = v15 + 2;
      if (v15 + 2 >= v17)
      {
        goto LABEL_39;
      }

      v16 = *(v56 + 8 * v20 + 8);
      if (!v16)
      {
        v19 = v15 + 3;
        if (v15 + 3 >= v17)
        {
          goto LABEL_39;
        }

        v16 = *(v56 + 8 * v20 + 16);
        if (!v16)
        {
          v19 = v15 + 4;
          if (v15 + 4 >= v17)
          {
            goto LABEL_39;
          }

          v16 = *(v56 + 8 * v20 + 24);
          if (!v16)
          {
            v19 = v15 + 5;
            if (v15 + 5 >= v17)
            {
              goto LABEL_39;
            }

            v16 = *(v56 + 8 * v20 + 32);
            if (!v16)
            {
              v19 = v15 + 6;
              if (v15 + 6 >= v17)
              {
                goto LABEL_39;
              }

              v16 = *(v56 + 8 * v20 + 40);
              if (!v16)
              {
                v19 = v15 + 7;
                if (v15 + 7 >= v17)
                {
                  goto LABEL_39;
                }

                v16 = *(v56 + 8 * v20 + 48);
                if (!v16)
                {
                  v19 = v15 + 8;
                  if (v15 + 8 >= v17)
                  {
                    goto LABEL_39;
                  }

                  v16 = *(v56 + 8 * v20 + 56);
                  if (!v16)
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }

LABEL_38:
      _BitScanForward64(&v22, v16);
      v16 &= v16 - 1;
      v18 = v18 + *(*(v55 + 56) + ((v19 << 9) | (8 * v22)));
      v15 = v19;
    }

    v21 = v15 + 9;
    while (v21 < v17)
    {
      v16 = *(v56 + 8 * v21++);
      if (v16)
      {
        v19 = v21 - 1;
        goto LABEL_38;
      }
    }

LABEL_39:
    swift_bridgeObjectRetain_n(v5, 3);
    outlined consume of [String : [Double]].Iterator._Variant(v55);
    v23 = a2;
    v24 = *(a2 + 16) - v5[2];
    v5;
    v62 = (1.0 - v18) / v24;
    v25 = 1 << *(a2 + 32);
    v26 = ~(-1 << v25);
    if (v25 >= 64)
    {
      v26 = -1;
    }

    v27 = *(a2 + 56) & v26;
    v68 = (v25 + 63) >> 6;
    a2;
    v28 = 0;
    while (2)
    {
      if (v27)
      {
LABEL_43:
        v29 = v28;
LABEL_58:
        _BitScanForward64(&v31, v27);
        v66 = v27 & (v27 - 1);
        v32 = *(v23 + 48);
        v65 = v29;
        v33 = (v29 << 10) | (16 * v31);
        v34 = *(v32 + v33);
        v35 = *(v32 + v33 + 8);
        v36 = v5[2];
        v35;
        if (v36 && (v5, specialized __RawDictionaryStorage.find<A>(_:)(v34, v35), v38 = v37, v5, (v38 & 1) != 0))
        {
          v35;
          v28 = v65;
          v23 = a2;
          v27 = v66;
        }

        else
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v5);
          v63 = v34;
          v40 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v35);
          v41 = (v39 & 1) == 0;
          v42 = __OFADD__(v5[2], v41);
          v43 = v5[2] + v41;
          if (v42)
          {
            BUG();
          }

          v71 = v39;
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, Double>);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v43))
          {
            v40 = specialized __RawDictionaryStorage.find<A>(_:)(v63, v35);
            LOBYTE(v45) = v45 & 1;
            LOBYTE(v46) = v71;
            v23 = a2;
            if ((v71 & 1) != v45)
            {
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v35, v45, v46, v44);
              BUG();
            }

            v47 = v63;
          }

          else
          {
            v23 = a2;
            v47 = v63;
            LOBYTE(v46) = v71;
          }

          if (v46)
          {
            *(v5[7] + 8 * v40) = v62;
            v35;
          }

          else
          {
            v5[(v40 >> 6) + 8] |= 1 << v40;
            v48 = v5[6];
            v49 = 16 * v40;
            *(v48 + v49) = v47;
            *(v48 + v49 + 8) = v35;
            *(v5[7] + 8 * v40) = v62;
            v50 = v5[2];
            v42 = __OFADD__(1, v50);
            v51 = v50 + 1;
            if (v42)
            {
              BUG();
            }

            v5[2] = v51;
          }

          v28 = v65;
          v27 = v66;
        }

        continue;
      }

      break;
    }

    v30 = v28 + 1;
    if (__OFADD__(1, v28))
    {
      BUG();
    }

    if (v30 >= v68)
    {
      goto LABEL_75;
    }

    v27 = *(v23 + 8 * v30 + 56);
    if (v27)
    {
      v29 = v28 + 1;
      goto LABEL_58;
    }

    v29 = v28 + 2;
    if (v28 + 2 >= v68)
    {
      goto LABEL_75;
    }

    v27 = *(v23 + 8 * v30 + 64);
    if (v27)
    {
      goto LABEL_58;
    }

    v29 = v28 + 3;
    if (v28 + 3 >= v68)
    {
      goto LABEL_75;
    }

    v27 = *(v23 + 8 * v30 + 72);
    if (v27)
    {
      goto LABEL_58;
    }

    v29 = v28 + 4;
    if (v28 + 4 >= v68)
    {
      goto LABEL_75;
    }

    v27 = *(v23 + 8 * v30 + 80);
    if (v27)
    {
      goto LABEL_58;
    }

    v29 = v28 + 5;
    if (v28 + 5 >= v68)
    {
      goto LABEL_75;
    }

    v27 = *(v23 + 8 * v30 + 88);
    if (v27)
    {
      goto LABEL_58;
    }

    v29 = v28 + 6;
    if (v28 + 6 >= v68)
    {
      goto LABEL_75;
    }

    v27 = *(v23 + 8 * v30 + 96);
    if (v27)
    {
      goto LABEL_58;
    }

    v52 = v28 + 7;
    while (v52 < v68)
    {
      v27 = *(v23 + 8 * v52++ + 56);
      if (v27)
      {
        v28 = v52 - 1;
        goto LABEL_43;
      }
    }

LABEL_75:

    v5;
    if (swift_isUniquelyReferenced_nonNull_native(v69))
    {
      v53 = v69;
    }

    else
    {
      v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v69[2] + 1, 1, v69);
    }

    v54 = v53[2];
    if (v53[3] >> 1 <= v54)
    {
      v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v53[3] >= 2uLL, v54 + 1, 1, v53);
    }

    v53[2] = v54 + 1;
    v69 = v53;
    v53[v54 + 4] = v5;
    v5;
    v14 = v64;
LABEL_80:
    v4 = v61;
    if (v14 != v60)
    {
      if (v14 >= *(v61 + 16))
      {
        BUG();
      }

      v5 = *(v61 + 8 * v14 + 32);
      v11 = v14 + 1;
      v6 = v5[2];
      v7 = *(a2 + 16);
      if (v7 < v6)
      {
LABEL_4:
        v4;
        v69;
        v8 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v8, 0, 0);
        *v9 = 0xD000000000000034;
        *(v9 + 8) = " elements must be Strings." + 0x8000000000000000;
        *(v9 + 16) = 0;
        *(v9 + 32) = 0;
        *(v9 + 48) = 0;
        return swift_willThrow(&type metadata for MLCreateError, v8);
      }

      continue;
    }

    break;
  }

  v61;
  return v69;
}

uint64_t NeuralNetwork.Layer.ConvolutionParameters.init(from:)(uint64_t a1)
{
  v65 = a1;
  v2 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v53 = &v53;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NeuralNetwork.Extent<Int>) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v54 = &v53;
  v57 = type metadata accessor for TensorShape(0);
  v67 = *(v57 - 8);
  v9 = *(v67 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v58 = &v53;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NeuralNetwork.WeightParameters?) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v63 = &v53;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v60 = &v53;
  v66 = type metadata accessor for Tensor(0);
  v71 = *(v66 - 8);
  v18 = *(v71 + 8);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v64 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  v21 = *(*(v64 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v62 = &v53;
  v24 = type metadata accessor for Conv1D(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  NeuralNetwork.Layer.ConvolutionParameters.init()();
  v29 = v65 + *(type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0) + 20);
  v55 = v24;
  v56 = v25;
  (*(v25 + 16))(&v53, v29, v24);
  Conv1D.weight.getter();
  v30 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  v31 = *(v71 + 1);
  v32 = v2;
  v61 = &v53;
  v33 = v66;
  v71 = v31;
  v31(&v53, v66);
  v34 = v62;
  NeuralNetwork.WeightParameters.init(_:updatable:)(v30, 0);
  NeuralNetwork.Layer.ConvolutionParameters.weights.setter(v34);
  v35 = v60;
  v70 = &v53;
  Conv1D.bias.getter();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, v33);
  v59 = v32;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Tensor?(v35);
  }

  else
  {
    v37 = v35;
    v38 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
    v71(v37, v33);
    v39 = v63;
    NeuralNetwork.WeightParameters.init(_:updatable:)(v38, 0);
    __swift_storeEnumTagSinglePayload(v39, 0, 1, v64);
    NeuralNetwork.Layer.ConvolutionParameters.bias.setter(v39);
  }

  v40 = v33;
  v41 = v61;
  Conv1D.weight.getter();
  v42 = v58;
  Tensor.shape.getter();
  v71(v41, v40);
  v43 = TensorShape.subscript.getter(0);
  v67 = *(v67 + 8);
  v44 = v57;
  (v67)(v42, v57);
  NeuralNetwork.Layer.ConvolutionParameters.outputChannelCount.setter(v43);
  Conv1D.weight.getter();
  Tensor.shape.getter();
  v71(v41, v66);
  v45 = TensorShape.subscript.getter(1);
  (v67)(v42, v44);
  NeuralNetwork.Layer.ConvolutionParameters.kernelChannelCount.setter(v45);
  v46 = Conv1D.groupCount.getter();
  NeuralNetwork.Layer.ConvolutionParameters.groupCount.setter(v46);
  v68 = 1;
  v69 = Conv1D.kernelSize.getter(v46, v44, v47, &v68);
  v48 = v54;
  NeuralNetwork.Extent.init(height:width:)(&v68, &v69, &type metadata for Int, &protocol witness table for Int);
  NeuralNetwork.Layer.ConvolutionParameters.kernelSize.setter(v48);
  v68 = 1;
  v69 = Conv1D.stride.getter(v48, &v69, v49, &v68);
  NeuralNetwork.Extent.init(height:width:)(&v68, &v69, &type metadata for Int, &protocol witness table for Int);
  NeuralNetwork.Layer.ConvolutionParameters.strides.setter(v48);
  v68 = 1;
  v69 = Conv1D.dilation.getter();
  NeuralNetwork.Extent.init(height:width:)(&v68, &v69, &type metadata for Int, &protocol witness table for Int);
  NeuralNetwork.Layer.ConvolutionParameters.dilationFactor.setter(v48);
  v50 = v53;
  NeuralNetwork.ValidPaddingParameters.init()();
  LODWORD(v43) = enum case for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind.valid(_:);
  v51 = type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind(0);
  (*(*(v51 - 8) + 104))(v50, v43, v51);
  __swift_storeEnumTagSinglePayload(v50, 0, 1, v51);
  NeuralNetwork.Layer.ConvolutionParameters.padding.setter(v50);
  outlined destroy of MLFewShotSoundClassifier.CausalConv1D(v65, type metadata accessor for MLFewShotSoundClassifier.CausalConv1D);
  return (*(v56 + 8))(v70, v55);
}

{
  v63 = a1;
  v2 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v51 = &v51;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NeuralNetwork.Extent<Int>) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v52 = &v51;
  v55 = type metadata accessor for TensorShape(0);
  v66 = *(v55 - 8);
  v9 = *(v66 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v56 = &v51;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NeuralNetwork.WeightParameters?) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v60 = &v51;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v58 = &v51;
  v64 = type metadata accessor for Tensor(0);
  v68 = *(v64 - 8);
  v18 = v68[8];
  v19 = alloca(v18);
  v20 = alloca(v18);
  v61 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  v21 = *(*(v61 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v59 = &v51;
  v24 = type metadata accessor for Conv2D(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v67[1] = v2;
  NeuralNetwork.Layer.ConvolutionParameters.init()();
  v53 = v24;
  v54 = v25;
  (*(v25 + 16))(&v51, v63, v24);
  Conv2D.weight.getter();
  v29 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  v30 = v68[1];
  v57 = &v51;
  v31 = v58;
  v32 = v64;
  v65 = v30;
  v30(&v51, v64);
  v33 = v59;
  NeuralNetwork.WeightParameters.init(_:updatable:)(v29, 0);
  NeuralNetwork.Layer.ConvolutionParameters.weights.setter(v33);
  v68 = &v51;
  v34 = v32;
  Conv2D.bias.getter();
  if (__swift_getEnumTagSinglePayload(v31, 1, v32) == 1)
  {
    outlined destroy of Tensor?(v31);
  }

  else
  {
    v35 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
    v65(v31, v34);
    v36 = v60;
    NeuralNetwork.WeightParameters.init(_:updatable:)(v35, 0);
    __swift_storeEnumTagSinglePayload(v36, 0, 1, v61);
    NeuralNetwork.Layer.ConvolutionParameters.bias.setter(v36);
  }

  v37 = v57;
  Conv2D.weight.getter();
  v38 = v56;
  Tensor.shape.getter();
  v65(v37, v34);
  v39 = TensorShape.subscript.getter(0);
  v66 = *(v66 + 8);
  v40 = v55;
  (v66)(v38, v55);
  NeuralNetwork.Layer.ConvolutionParameters.outputChannelCount.setter(v39);
  Conv2D.weight.getter();
  Tensor.shape.getter();
  v65(v37, v64);
  v41 = TensorShape.subscript.getter(1);
  (v66)(v38, v40);
  NeuralNetwork.Layer.ConvolutionParameters.kernelChannelCount.setter(v41);
  v42 = v68;
  v43 = Conv2D.groupCount.getter();
  NeuralNetwork.Layer.ConvolutionParameters.groupCount.setter(v43);
  v62 = Conv2D.kernelSize.getter();
  Conv2D.kernelSize.getter();
  v67[0] = v44;
  v45 = v52;
  NeuralNetwork.Extent.init(height:width:)(&v62, v67, &type metadata for Int, &protocol witness table for Int);
  NeuralNetwork.Layer.ConvolutionParameters.kernelSize.setter(v45);
  v62 = Conv2D.stride.getter();
  Conv2D.stride.getter();
  v67[0] = v46;
  NeuralNetwork.Extent.init(height:width:)(&v62, v67, &type metadata for Int, &protocol witness table for Int);
  NeuralNetwork.Layer.ConvolutionParameters.strides.setter(v45);
  v62 = Conv2D.dilation.getter();
  Conv2D.dilation.getter();
  v67[0] = v47;
  NeuralNetwork.Extent.init(height:width:)(&v62, v67, &type metadata for Int, &protocol witness table for Int);
  NeuralNetwork.Layer.ConvolutionParameters.dilationFactor.setter(v45);
  v48 = v51;
  NeuralNetwork.ValidPaddingParameters.init()();
  LODWORD(v41) = enum case for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind.valid(_:);
  v49 = type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind(0);
  (*(*(v49 - 8) + 104))(v48, v41, v49);
  __swift_storeEnumTagSinglePayload(v48, 0, 1, v49);
  NeuralNetwork.Layer.ConvolutionParameters.padding.setter(v48);
  outlined destroy of MLFewShotSoundClassifier.CausalConv1D(v63, type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D);
  return (*(v54 + 8))(v42, v53);
}

uint64_t outlined destroy of MLFewShotSoundClassifier.CausalConv1D(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL static MLObjectDetector.ModelParameters.ModelAlgorithmType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if ((v2 & 1) == 0)
    {
      return *a1 == *a2;
    }

    return 0;
  }

  result = 1;
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLObjectDetector.ModelParameters.ModelAlgorithmType(uint64_t a1, int a2)
{
  result = 0;
  if (a2)
  {
    if (*(a1 + 9))
    {
      return (*a1 + 1);
    }
  }

  return result;
}

void storeEnumTagSinglePayload for MLObjectDetector.ModelParameters.ModelAlgorithmType(uint64_t a1, int a2, int a3)
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

  *a1 = 0;
  *(a1 + 8) = 0;
  *a1 = a2 - 1;
  v3 = 1;
  if (a3)
  {
LABEL_6:
    *(a1 + 9) = v3;
  }
}

uint64_t getEnumTag for MLObjectDetector.ModelParameters.ModelAlgorithmType(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

char destructiveInjectEnumTag for MLObjectDetector.ModelParameters.ModelAlgorithmType(uint64_t a1, int a2)
{
  if (a2)
  {
    *a1 = (a2 - 1);
    result = 1;
  }

  else
  {
    result = 0;
  }

  *(a1 + 8) = result;
  return result;
}

void *MLImageClassifier.DataSource.stratifiedSplit(proportions:seed:)(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    BUG();
  }

  v4 = v3;
  v10 = a1;
  v5 = type metadata accessor for MersenneTwisterGenerator();
  swift_allocObject(v5, 136, 7);
  v9 = MersenneTwisterGenerator.init(seed:)(a2);
  v6 = static _ImageUtilities.getImageURLsAndLabels(from:)(v3);
  if (v2)
  {
  }

  else
  {
    v7 = v6;
    v4 = specialized stratifiedSplitGenerator<A>(proportions:generator:fileURLAndLabel:)(v10, &v9, v6);

    v7;
  }

  return v4;
}

void *MLImageClassifier.DataSource.stratifiedSplit<A>(proportions:generator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = static _ImageUtilities.getImageURLsAndLabels(from:)(v5);
  if (!v4)
  {
    v8 = v7;
    v6 = stratifiedSplitGenerator<A>(proportions:generator:fileURLAndLabel:)(a1, a2, v7, a3, a4);
    v8;
  }

  return v6;
}

uint64_t *initializeBufferWithCopyOfBuffer for MLImageClassifier.DataSource(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) == 0)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
    if (EnumCaseMultiPayload == 2)
    {
      v9 = *a2;
      *v3 = *a2;
      v9;
      v14 = 2;
    }

    else
    {
      if (EnumCaseMultiPayload != 1)
      {
        v12 = type metadata accessor for URL(0);
        (*(*(v12 - 8) + 16))(a1, a2, v12);
        v11 = a3;
        v10 = 0;
        goto LABEL_9;
      }

      v7 = type metadata accessor for URL(0);
      (*(*(v7 - 8) + 16))(a1, a2, v7);
      v14 = 1;
    }

    v10 = v14;
    a1 = v3;
    v11 = a3;
LABEL_9:
    swift_storeEnumTagMultiPayload(a1, v11, v10);
    return v3;
  }

  v8 = *a2;
  *v3 = *a2;
  v3 = (v8 + ((v4 + 16) & ~v4));
  v8;
  return v3;
}

uint64_t destroy for MLImageClassifier.DataSource(void *a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload(a1, a2);
  if (result == 2)
  {
    return *a1;
  }

  if (result <= 1)
  {
    v3 = type metadata accessor for URL(0);
    return (*(*(v3 - 8) + 8))(a1, v3);
  }

  return result;
}

uint64_t *initializeWithCopy for MLImageClassifier.DataSource(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
  if (EnumCaseMultiPayload == 2)
  {
    v7 = *a2;
    *v4 = *a2;
    v7;
    v12 = 2;
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      v10 = type metadata accessor for URL(0);
      (*(*(v10 - 8) + 16))(a1, a2, v10);
      v9 = a3;
      v8 = 0;
      goto LABEL_7;
    }

    v6 = type metadata accessor for URL(0);
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    v12 = 1;
  }

  v8 = v12;
  a1 = v4;
  v9 = a3;
LABEL_7:
  swift_storeEnumTagMultiPayload(a1, v9, v8);
  return v4;
}

void *assignWithCopy for MLImageClassifier.DataSource(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    outlined destroy of MLImageClassifier.DataSource(a1);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
    if (EnumCaseMultiPayload == 2)
    {
      v7 = *a2;
      *v3 = *a2;
      v7;
      v12 = 2;
    }

    else
    {
      if (EnumCaseMultiPayload != 1)
      {
        v10 = type metadata accessor for URL(0);
        (*(*(v10 - 8) + 16))(a1, a2, v10);
        v9 = a3;
        v8 = 0;
        goto LABEL_8;
      }

      v6 = type metadata accessor for URL(0);
      (*(*(v6 - 8) + 16))(a1, a2, v6);
      v12 = 1;
    }

    v8 = v12;
    a1 = v3;
    v9 = a3;
LABEL_8:
    swift_storeEnumTagMultiPayload(a1, v9, v8);
  }

  return v3;
}

uint64_t type metadata accessor for MLImageClassifier.DataSource(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLImageClassifier.DataSource;
  if (!type metadata singleton initialization cache for MLImageClassifier.DataSource)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLImageClassifier.DataSource);
  }

  return result;
}

void *initializeWithTake for MLImageClassifier.DataSource(void *__dst, void *__src, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for URL(0);
    (*(*(v8 - 8) + 32))(__dst, __src, v8);
    v7 = 1;
    v6 = a3;
    goto LABEL_5;
  }

  if (!EnumCaseMultiPayload)
  {
    v5 = type metadata accessor for URL(0);
    (*(*(v5 - 8) + 32))(__dst, __src, v5);
    v6 = a3;
    v7 = 0;
LABEL_5:
    swift_storeEnumTagMultiPayload(__dst, v6, v7);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

void *assignWithTake for MLImageClassifier.DataSource(void *__dst, void *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLImageClassifier.DataSource(__dst);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for URL(0);
    (*(*(v8 - 8) + 32))(__dst, __src, v8);
    v7 = 1;
    v6 = a3;
    goto LABEL_6;
  }

  if (!EnumCaseMultiPayload)
  {
    v5 = type metadata accessor for URL(0);
    (*(*(v5 - 8) + 32))(__dst, __src, v5);
    v6 = a3;
    v7 = 0;
LABEL_6:
    swift_storeEnumTagMultiPayload(__dst, v6, v7);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata completion function for MLImageClassifier.DataSource(uint64_t a1)
{
  result = type metadata accessor for URL(319);
  if (v4 <= 0x3F)
  {
    v5[0] = *(result - 8) + 64;
    v5[1] = v5[0];
    v5[2] = &value witness table for Builtin.BridgeObject + 64;
    swift_initEnumMetadataMultiPayload(a1, 256, 3, v5, v2, v3);
    return 0;
  }

  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML22MLBoostedTreeRegressorV15ModelParametersV010ValidationD0OTg503_s8g4ML22ijk100V30trainWithRecommendedParameters12trainingData010validationK012targetColumn14featureColumnsSayACG07c5K00K5e24V_ALSgSSSaySSGSgtKFZAC05l6I0V010N21K0OALcASmcfu_AsLcfu0_AOXMtTf1ncn_nTm(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v21 = a3;
  v20 = v3;
  v4 = type metadata accessor for DataFrame(0);
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  outlined init with copy of DataFrame?(a1, &v18);
  if (__swift_getEnumTagSinglePayload(&v18, 1, v4) == 1)
  {
    v11 = v21(0);
    v12 = v20;
    v13 = 1;
    v14 = v11;
  }

  else
  {
    v15 = v19;
    (*(v19 + 32))(&v18, &v18, v4);
    v16 = v20;
    (*(v15 + 16))(v20, &v18, v4);
    v21 = v21(0);
    swift_storeEnumTagMultiPayload(v16, v21, 2);
    (*(v15 + 8))(&v18, v4);
    v12 = v16;
    v13 = 0;
    v14 = v21;
  }

  return __swift_storeEnumTagSinglePayload(v12, v13, 1, v14);
}

void *static MLLogisticRegressionClassifier.trainWithRecommendedParameters(trainingData:validationData:targetColumn:featureColumns:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = v5;
  v28 = a5;
  v29 = a4;
  v30 = a3;
  v33 = a2;
  v31 = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLogisticRegressionClassifier.ModelParameters.ValidationData?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v13 = alloca(v10);
  v14 = alloca(v10);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML22MLBoostedTreeRegressorV15ModelParametersV010ValidationD0OTg503_s8g4ML22ijk100V30trainWithRecommendedParameters12trainingData010validationK012targetColumn14featureColumnsSayACG07c5K00K5e24V_ALSgSSSaySSGSgtKFZAC05l6I0V010N21K0OALcASmcfu_AsLcfu0_AOXMtTf1ncn_nTm(a2, v27, type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData);
  v32 = v5;
  if (__swift_getEnumTagSinglePayload(&v21, 1, v9) == 1)
  {
    swift_storeEnumTagMultiPayload(&v21, v9, 3);
    if (__swift_getEnumTagSinglePayload(&v21, 1, v9) != 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v21, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.ModelParameters.ValidationData?);
    }
  }

  else
  {
    outlined init with take of MLClassifierMetrics(&v21, &v21, type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData);
  }

  v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLLogisticRegressionClassifier.ModelParameters>);
  inited = swift_initStackObject(v15, v22);
  *(inited + 16) = 2;
  *(inited + 24) = 4;
  outlined init with copy of MLTrainingSessionParameters(&v21, &v21, type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData);
  MLLogisticRegressionClassifier.ModelParameters.init(validation:maxIterations:l1Penalty:l2Penalty:stepSize:convergenceThreshold:featureRescaling:)(&v21, 10, 1, 0.0, 0.01, 1.0, 0.01);
  outlined init with copy of MLTrainingSessionParameters(&v21, &v21, type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData);
  MLLogisticRegressionClassifier.ModelParameters.init(validation:maxIterations:l1Penalty:l2Penalty:stepSize:convergenceThreshold:featureRescaling:)(&v21, 10, 1, 0.01, 0.01, 1.0, 0.01);
  v33 = &v21;
  v17 = alloca(48);
  v18 = alloca(48);
  v23 = v31;
  v24 = v30;
  v25 = v29;
  v26 = v28;
  ML30MLLogisticRegressionClassifierV15ModelParametersVG_AHsAE_pTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML30MLLogisticRegressionClassifierV15ModelParametersVG_AHsAE_pTg5(partial apply for closure #1 in static MLLogisticRegressionClassifier.trainWithRecommendedParameters(trainingData:validationData:targetColumn:featureColumns:), &v21, inited);
  outlined destroy of MLActivityClassifier.ModelParameters(&v21, type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData);
  swift_setDeallocating(inited);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  return ML30MLLogisticRegressionClassifierV15ModelParametersVG_AHsAE_pTg5;
}

uint64_t closure #1 in static MLLogisticRegressionClassifier.trainWithRecommendedParameters(trainingData:validationData:targetColumn:featureColumns:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void (*)(uint64_t *, uint64_t, uint64_t), uint64_t), void *a6)
{
  v19 = a3;
  v21 = v6;
  v23 = a6;
  v20 = v7;
  v22 = a1;
  v10 = type metadata accessor for DataFrame(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  (*(v11 + 16))(&v17, a2, v10);
  outlined init with copy of MLLogisticRegressionClassifier.ModelParameters(v22, v18);
  a5;
  a4;
  v15 = v20;
  result = MLLogisticRegressionClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(&v17, v19, a4, a5, v18);
  if (v15)
  {
    result = v23;
    *v23 = v15;
  }

  return result;
}

uint64_t static MLSupportVectorClassifier.trainWithRecommendedParameters(trainingData:validationData:targetColumn:featureColumns:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v53 = v5;
  v41 = a5;
  v42 = a4;
  v43 = a3;
  v44 = a1;
  v45 = type metadata accessor for DataFrame(0);
  v47 = *(v45 - 8);
  v6 = *(v47 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v50 = &v35;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSupportVectorClassifier.ModelParameters.ValidationData?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v16 = alloca(v13);
  v17 = alloca(v13);
  v46 = &v35;
  v18 = alloca(v13);
  v19 = alloca(v13);
  v20 = v12;
  v21 = v53;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML22MLBoostedTreeRegressorV15ModelParametersV010ValidationD0OTg503_s8g4ML22ijk100V30trainWithRecommendedParameters12trainingData010validationK012targetColumn14featureColumnsSayACG07c5K00K5e24V_ALSgSSSaySSGSgtKFZAC05l6I0V010N21K0OALcASmcfu_AsLcfu0_AOXMtTf1ncn_nTm(a2, v40, type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData);
  v53 = v21;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v35, 1, v20);
  v48 = v20;
  if (EnumTagSinglePayload == 1)
  {
    swift_storeEnumTagMultiPayload(&v35, v20, 3);
    if (__swift_getEnumTagSinglePayload(&v35, 1, v20) != 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v35, &demangling cache variable for type metadata for MLSupportVectorClassifier.ModelParameters.ValidationData?);
    }
  }

  else
  {
    outlined init with take of MLClassifierMetrics(&v35, &v35, type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData);
  }

  v52 = &v35;
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLSupportVectorClassifier>);
  v24 = *(type metadata accessor for MLSupportVectorClassifier(0) - 8);
  v25 = *(v24 + 80);
  v26 = (v25 + 32) & ~*(v24 + 80);
  v27 = swift_allocObject(v23, v26 + *(v24 + 72), v25 | 7);
  *(v27 + 16) = 1;
  *(v27 + 24) = 2;
  v51 = v27;
  v49 = v26 + v27;
  (*(v47 + 16))(v50, v44, v45);
  v28 = v46;
  outlined init with copy of MLTrainingSessionParameters(&v35, v46, type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData);
  memset(v36, 0, sizeof(v36));
  v35 = 11;
  v37 = xmmword_33FD20;
  v38 = 1;
  outlined init with copy of MLTrainingSessionParameters(v28, &v35, type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData);
  v39[3] = v48;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v39);
  outlined init with take of MLClassifierMetrics(&v35, boxed_opaque_existential_0, type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData);
  v30 = v41;
  v41;
  v31 = v42;
  v42;
  outlined assign with take of Any?(v39, v36);
  outlined destroy of MLActivityClassifier.ModelParameters(v28, type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData);
  v32 = v53;
  MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(v50, v43, v31, v30, &v35);
  if (v32)
  {
    v33 = v51;
    *(v51 + 16) = 0;

    outlined destroy of MLActivityClassifier.ModelParameters(v52, type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData);
    return v33;
  }

  else
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v52, type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData);
    return v51;
  }
}

uint64_t static MLBoostedTreeClassifier.trainWithRecommendedParameters(trainingData:validationData:targetColumn:featureColumns:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v47 = a5;
  v48 = a4;
  v49 = a3;
  v51 = a1;
  v52 = type metadata accessor for DataFrame(0);
  v53 = *(v52 - 8);
  v6 = *(v53 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v57 = v36;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLBoostedTreeClassifier.ModelParameters.ValidationData?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v54 = v36;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v50 = v36;
  v18 = alloca(v13);
  v19 = alloca(v13);
  v20 = v12;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML22MLBoostedTreeRegressorV15ModelParametersV010ValidationD0OTg503_s8g4ML22ijk100V30trainWithRecommendedParameters12trainingData010validationK012targetColumn14featureColumnsSayACG07c5K00K5e24V_ALSgSSSaySSGSgtKFZAC05l6I0V010N21K0OALcASmcfu_AsLcfu0_AOXMtTf1ncn_nTm(a2, v46, type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData);
  v55 = v5;
  v58 = v20;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36, 1, v20);
  v60 = v36;
  if (EnumTagSinglePayload == 1)
  {
    v22 = v58;
    swift_storeEnumTagMultiPayload(v36, v58, 3);
    if (__swift_getEnumTagSinglePayload(v36, 1, v22) != 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v36, &demangling cache variable for type metadata for MLBoostedTreeClassifier.ModelParameters.ValidationData?);
    }
  }

  else
  {
    outlined init with take of MLClassifierMetrics(v36, v36, type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData);
  }

  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLBoostedTreeClassifier>);
  v24 = *(type metadata accessor for MLBoostedTreeClassifier(0) - 8);
  v25 = *(v24 + 80);
  v26 = (v25 + 32) & ~*(v24 + 80);
  v27 = swift_allocObject(v23, v26 + *(v24 + 72), v25 | 7);
  *(v27 + 16) = 1;
  *(v27 + 24) = 2;
  v59 = v27;
  v56 = v26 + v27;
  (*(v53 + 16))(v57, v51, v52);
  v28 = v50;
  outlined init with copy of MLTrainingSessionParameters(v60, v50, type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData);
  memset(v36, 0, sizeof(v36));
  v37 = 6;
  v38 = 10;
  v39 = _mm_loadh_ps(&qword_33D880);
  v40 = 42;
  v41 = 0x3FD3333333333333;
  v42 = 0;
  v43 = 1;
  v44 = xmmword_343970;
  v29 = v54;
  outlined init with copy of MLTrainingSessionParameters(v28, v54, type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData);
  v45[3] = v58;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v45);
  outlined init with take of MLClassifierMetrics(v29, boxed_opaque_existential_0, type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData);
  v31 = v47;
  v47;
  v32 = v48;
  v48;
  outlined assign with take of Any?(v45, v36);
  outlined destroy of MLActivityClassifier.ModelParameters(v28, type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData);
  v33 = v55;
  MLBoostedTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(v57, v49, v32, v31, v36);
  if (v33)
  {
    v34 = v59;
    *(v59 + 16) = 0;

    outlined destroy of MLActivityClassifier.ModelParameters(v60, type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData);
    return v34;
  }

  else
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v60, type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData);
    return v59;
  }
}

uint64_t static MLDecisionTreeClassifier.trainWithRecommendedParameters(trainingData:validationData:targetColumn:featureColumns:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void *, uint64_t))
{
  v53 = v5;
  v41 = a5;
  v42 = a4;
  v43 = a3;
  v44 = a1;
  v45 = type metadata accessor for DataFrame(0);
  v47 = *(v45 - 8);
  v6 = *(v47 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v50 = &v35;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLDecisionTreeClassifier.ModelParameters.ValidationData?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v16 = alloca(v13);
  v17 = alloca(v13);
  v46 = &v35;
  v18 = alloca(v13);
  v19 = alloca(v13);
  v20 = v12;
  v21 = v53;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML22MLBoostedTreeRegressorV15ModelParametersV010ValidationD0OTg503_s8g4ML22ijk100V30trainWithRecommendedParameters12trainingData010validationK012targetColumn14featureColumnsSayACG07c5K00K5e24V_ALSgSSSaySSGSgtKFZAC05l6I0V010N21K0OALcASmcfu_AsLcfu0_AOXMtTf1ncn_nTm(a2, v40, type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData);
  v53 = v21;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v35, 1, v20);
  v48 = v20;
  if (EnumTagSinglePayload == 1)
  {
    swift_storeEnumTagMultiPayload(&v35, v20, 3);
    if (__swift_getEnumTagSinglePayload(&v35, 1, v20) != 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v35, &demangling cache variable for type metadata for MLDecisionTreeClassifier.ModelParameters.ValidationData?);
    }
  }

  else
  {
    outlined init with take of MLClassifierMetrics(&v35, &v35, type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData);
  }

  v52 = &v35;
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLDecisionTreeClassifier>);
  v24 = *(type metadata accessor for MLDecisionTreeClassifier(0) - 8);
  v25 = *(v24 + 80);
  v26 = (v25 + 32) & ~*(v24 + 80);
  v27 = swift_allocObject(v23, v26 + *(v24 + 72), v25 | 7);
  *(v27 + 16) = 1;
  *(v27 + 24) = 2;
  v51 = v27;
  v49 = v26 + v27;
  (*(v47 + 16))(v50, v44, v45);
  v28 = v46;
  outlined init with copy of MLTrainingSessionParameters(&v35, v46, type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData);
  memset(v36, 0, sizeof(v36));
  v35 = 6;
  v37 = _mm_loadh_ps(&qword_33D880);
  v38 = 42;
  outlined init with copy of MLTrainingSessionParameters(v28, &v35, type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData);
  v39[3] = v48;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v39);
  outlined init with take of MLClassifierMetrics(&v35, boxed_opaque_existential_0, type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData);
  v30 = v41;
  v41;
  v31 = v42;
  v42;
  outlined assign with take of Any?(v39, v36);
  outlined destroy of MLActivityClassifier.ModelParameters(v28, type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData);
  v32 = v53;
  MLDecisionTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(v50, v43, v31, v30, &v35);
  if (v32)
  {
    v33 = v51;
    *(v51 + 16) = 0;

    outlined destroy of MLActivityClassifier.ModelParameters(v52, type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData);
    return v33;
  }

  else
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v52, type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData);
    return v51;
  }
}

uint64_t static MLRandomForestClassifier.trainWithRecommendedParameters(trainingData:validationData:targetColumn:featureColumns:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v44 = a5;
  v45 = a4;
  v46 = a3;
  v47 = a1;
  v49 = type metadata accessor for DataFrame(0);
  v50 = *(v49 - 8);
  v6 = *(v50 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v54 = v36;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLRandomForestClassifier.ModelParameters.ValidationData?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v51 = v36;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v48 = v36;
  v18 = alloca(v13);
  v19 = alloca(v13);
  v20 = v12;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML22MLBoostedTreeRegressorV15ModelParametersV010ValidationD0OTg503_s8g4ML22ijk100V30trainWithRecommendedParameters12trainingData010validationK012targetColumn14featureColumnsSayACG07c5K00K5e24V_ALSgSSSaySSGSgtKFZAC05l6I0V010N21K0OALcASmcfu_AsLcfu0_AOXMtTf1ncn_nTm(a2, v43, type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData);
  v52 = v5;
  v55 = v20;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36, 1, v20);
  v57 = v36;
  if (EnumTagSinglePayload == 1)
  {
    v22 = v55;
    swift_storeEnumTagMultiPayload(v36, v55, 3);
    if (__swift_getEnumTagSinglePayload(v36, 1, v22) != 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v36, &demangling cache variable for type metadata for MLRandomForestClassifier.ModelParameters.ValidationData?);
    }
  }

  else
  {
    outlined init with take of MLClassifierMetrics(v36, v36, type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData);
  }

  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLRandomForestClassifier>);
  v24 = *(type metadata accessor for MLRandomForestClassifier(0) - 8);
  v25 = *(v24 + 80);
  v26 = (v25 + 32) & ~*(v24 + 80);
  v27 = swift_allocObject(v23, v26 + *(v24 + 72), v25 | 7);
  *(v27 + 16) = 1;
  *(v27 + 24) = 2;
  v56 = v27;
  v53 = v26 + v27;
  (*(v50 + 16))(v54, v47, v49);
  v28 = v48;
  outlined init with copy of MLTrainingSessionParameters(v57, v48, type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData);
  memset(v36, 0, sizeof(v36));
  v37 = 6;
  v38 = 10;
  v39 = _mm_loadh_ps(&qword_33D880);
  v40 = 42;
  v41 = xmmword_33E240;
  v29 = v51;
  outlined init with copy of MLTrainingSessionParameters(v28, v51, type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData);
  v42[3] = v55;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v42);
  outlined init with take of MLClassifierMetrics(v29, boxed_opaque_existential_0, type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData);
  v31 = v44;
  v44;
  v32 = v45;
  v45;
  outlined assign with take of Any?(v42, v36);
  outlined destroy of MLActivityClassifier.ModelParameters(v28, type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData);
  v33 = v52;
  MLRandomForestClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(v54, v46, v32, v31, v36);
  if (v33)
  {
    v34 = v56;
    *(v56 + 16) = 0;

    outlined destroy of MLActivityClassifier.ModelParameters(v57, type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData);
    return v34;
  }

  else
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v57, type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData);
    return v56;
  }
}

void *static MLLinearRegressor.trainWithRecommendedParameters(trainingData:validationData:targetColumn:featureColumns:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = v5;
  v28 = a5;
  v29 = a4;
  v30 = a3;
  v33 = a2;
  v31 = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLinearRegressor.ModelParameters.ValidationData?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v13 = alloca(v10);
  v14 = alloca(v10);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML22MLBoostedTreeRegressorV15ModelParametersV010ValidationD0OTg503_s8g4ML22ijk100V30trainWithRecommendedParameters12trainingData010validationK012targetColumn14featureColumnsSayACG07c5K00K5e24V_ALSgSSSaySSGSgtKFZAC05l6I0V010N21K0OALcASmcfu_AsLcfu0_AOXMtTf1ncn_nTm(a2, v27, type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData);
  v32 = v5;
  if (__swift_getEnumTagSinglePayload(&v21, 1, v9) == 1)
  {
    swift_storeEnumTagMultiPayload(&v21, v9, 3);
    if (__swift_getEnumTagSinglePayload(&v21, 1, v9) != 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v21, &demangling cache variable for type metadata for MLLinearRegressor.ModelParameters.ValidationData?);
    }
  }

  else
  {
    outlined init with take of MLClassifierMetrics(&v21, &v21, type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData);
  }

  v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLLinearRegressor.ModelParameters>);
  inited = swift_initStackObject(v15, v22);
  *(inited + 16) = 2;
  *(inited + 24) = 4;
  outlined init with copy of MLTrainingSessionParameters(&v21, &v21, type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData);
  MLLinearRegressor.ModelParameters.init(validation:maxIterations:l1Penalty:l2Penalty:stepSize:convergenceThreshold:featureRescaling:)(&v21, 10, 1, 0.0, 0.01, 1.0, 0.01);
  outlined init with copy of MLTrainingSessionParameters(&v21, &v21, type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData);
  MLLinearRegressor.ModelParameters.init(validation:maxIterations:l1Penalty:l2Penalty:stepSize:convergenceThreshold:featureRescaling:)(&v21, 10, 1, 0.01, 0.01, 1.0, 0.01);
  v33 = &v21;
  v17 = alloca(48);
  v18 = alloca(48);
  v23 = v31;
  v24 = v30;
  v25 = v29;
  v26 = v28;
  ML17MLLinearRegressorV15ModelParametersVG_AHsAE_pTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML17MLLinearRegressorV15ModelParametersVG_AHsAE_pTg5(partial apply for closure #1 in static MLLinearRegressor.trainWithRecommendedParameters(trainingData:validationData:targetColumn:featureColumns:), &v21, inited);
  outlined destroy of MLActivityClassifier.ModelParameters(&v21, type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData);
  swift_setDeallocating(inited);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  return ML17MLLinearRegressorV15ModelParametersVG_AHsAE_pTg5;
}

uint64_t closure #1 in static MLLinearRegressor.trainWithRecommendedParameters(trainingData:validationData:targetColumn:featureColumns:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v19 = a3;
  v21 = v6;
  v23 = a6;
  v20 = v7;
  v22 = a1;
  v10 = type metadata accessor for DataFrame(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  (*(v11 + 16))(&v17, a2, v10);
  outlined init with copy of MLLinearRegressor.ModelParameters(v22, v18);
  a5;
  a4;
  v15 = v20;
  result = MLLinearRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(&v17, v19, a4, a5, v18);
  if (v15)
  {
    result = v23;
    *v23 = v15;
  }

  return result;
}

uint64_t static MLBoostedTreeRegressor.trainWithRecommendedParameters(trainingData:validationData:targetColumn:featureColumns:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v47 = a5;
  v48 = a4;
  v49 = a3;
  v51 = a1;
  v52 = type metadata accessor for DataFrame(0);
  v53 = *(v52 - 8);
  v6 = *(v53 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v57 = v36;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLBoostedTreeRegressor.ModelParameters.ValidationData?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v54 = v36;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v50 = v36;
  v18 = alloca(v13);
  v19 = alloca(v13);
  v20 = v12;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML22MLBoostedTreeRegressorV15ModelParametersV010ValidationD0OTg503_s8g4ML22ijk100V30trainWithRecommendedParameters12trainingData010validationK012targetColumn14featureColumnsSayACG07c5K00K5e24V_ALSgSSSaySSGSgtKFZAC05l6I0V010N21K0OALcASmcfu_AsLcfu0_AOXMtTf1ncn_nTm(a2, v46, type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData);
  v55 = v5;
  v58 = v20;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36, 1, v20);
  v60 = v36;
  if (EnumTagSinglePayload == 1)
  {
    v22 = v58;
    swift_storeEnumTagMultiPayload(v36, v58, 3);
    if (__swift_getEnumTagSinglePayload(v36, 1, v22) != 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v36, &demangling cache variable for type metadata for MLBoostedTreeRegressor.ModelParameters.ValidationData?);
    }
  }

  else
  {
    outlined init with take of MLClassifierMetrics(v36, v36, type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData);
  }

  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLBoostedTreeRegressor>);
  v24 = *(type metadata accessor for MLBoostedTreeRegressor(0) - 8);
  v25 = *(v24 + 80);
  v26 = (v25 + 32) & ~*(v24 + 80);
  v27 = swift_allocObject(v23, v26 + *(v24 + 72), v25 | 7);
  *(v27 + 16) = 1;
  *(v27 + 24) = 2;
  v59 = v27;
  v56 = v26 + v27;
  (*(v53 + 16))(v57, v51, v52);
  v28 = v50;
  outlined init with copy of MLTrainingSessionParameters(v60, v50, type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData);
  memset(v36, 0, sizeof(v36));
  v37 = 6;
  v38 = 10;
  v39 = _mm_loadh_ps(&qword_33D880);
  v40 = 42;
  v41 = 0x3FD3333333333333;
  v42 = 0;
  v43 = 1;
  v44 = xmmword_343970;
  v29 = v54;
  outlined init with copy of MLTrainingSessionParameters(v28, v54, type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData);
  v45[3] = v58;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v45);
  outlined init with take of MLClassifierMetrics(v29, boxed_opaque_existential_0, type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData);
  v31 = v47;
  v47;
  v32 = v48;
  v48;
  outlined assign with take of Any?(v45, v36);
  outlined destroy of MLActivityClassifier.ModelParameters(v28, type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData);
  v33 = v55;
  MLBoostedTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(v57, v49, v32, v31, v36);
  if (v33)
  {
    v34 = v59;
    *(v59 + 16) = 0;

    outlined destroy of MLActivityClassifier.ModelParameters(v60, type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData);
    return v34;
  }

  else
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v60, type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData);
    return v59;
  }
}

uint64_t static MLDecisionTreeRegressor.trainWithRecommendedParameters(trainingData:validationData:targetColumn:featureColumns:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, Swift::Int a5)
{
  v55 = v5;
  v43 = a5;
  v44 = a4;
  v45 = a3;
  v46 = a1;
  v47 = type metadata accessor for DataFrame(0);
  v6 = *(v47 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v52 = v37;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLDecisionTreeRegressor.ModelParameters.ValidationData?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v13 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v50 = v37;
  v17 = alloca(v14);
  v18 = alloca(v14);
  v48 = v37;
  v19 = alloca(v14);
  v20 = alloca(v14);
  v21 = v13;
  v22 = v55;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML22MLBoostedTreeRegressorV15ModelParametersV010ValidationD0OTg503_s8g4ML22ijk100V30trainWithRecommendedParameters12trainingData010validationK012targetColumn14featureColumnsSayACG07c5K00K5e24V_ALSgSSSaySSGSgtKFZAC05l6I0V010N21K0OALcASmcfu_AsLcfu0_AOXMtTf1ncn_nTm(a2, v42, type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData);
  v55 = v22;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, 1, v21);
  v49 = v21;
  if (EnumTagSinglePayload == 1)
  {
    swift_storeEnumTagMultiPayload(v37, v21, 3);
    if (__swift_getEnumTagSinglePayload(v37, 1, v21) != 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v37, &demangling cache variable for type metadata for MLDecisionTreeRegressor.ModelParameters.ValidationData?);
    }
  }

  else
  {
    outlined init with take of MLClassifierMetrics(v37, v37, type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData);
  }

  v54 = v37;
  v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLDecisionTreeRegressor>);
  v25 = *(type metadata accessor for MLDecisionTreeRegressor(0) - 8);
  v26 = *(v25 + 80);
  v27 = (v26 + 32) & ~*(v25 + 80);
  v28 = swift_allocObject(v24, v27 + *(v25 + 72), v26 | 7);
  *(v28 + 16) = 1;
  *(v28 + 24) = 2;
  v53 = v28;
  v51 = v27 + v28;
  (*(v6 + 16))(v52, v46, v47);
  v29 = v48;
  outlined init with copy of MLTrainingSessionParameters(v37, v48, type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData);
  memset(v37, 0, sizeof(v37));
  v38 = 6;
  v39 = _mm_loadh_ps(&qword_33D880);
  v40 = 42;
  v30 = v50;
  outlined init with copy of MLTrainingSessionParameters(v29, v50, type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData);
  v41[3] = v49;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v41);
  outlined init with take of MLClassifierMetrics(v30, boxed_opaque_existential_0, type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData);
  v32 = v43;
  v43;
  v33 = v44;
  v44;
  outlined assign with take of Any?(v41, v37);
  outlined destroy of MLActivityClassifier.ModelParameters(v29, type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData);
  v34 = v55;
  MLDecisionTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(v52, v45, v33, v32, v37);
  if (v34)
  {
    v35 = v53;
    *(v53 + 16) = 0;

    outlined destroy of MLActivityClassifier.ModelParameters(v54, type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData);
    return v35;
  }

  else
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v54, type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData);
    return v53;
  }
}

uint64_t static MLRandomForestRegressor.trainWithRecommendedParameters(trainingData:validationData:targetColumn:featureColumns:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v46 = a5;
  v47 = a4;
  v48 = a3;
  v49 = a1;
  v51 = type metadata accessor for DataFrame(0);
  v52 = *(v51 - 8);
  v6 = *(v52 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v56 = v36;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLRandomForestRegressor.ModelParameters.ValidationData?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v53 = v36;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v50 = v36;
  v18 = alloca(v13);
  v19 = alloca(v13);
  v20 = v12;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML22MLBoostedTreeRegressorV15ModelParametersV010ValidationD0OTg503_s8g4ML22ijk100V30trainWithRecommendedParameters12trainingData010validationK012targetColumn14featureColumnsSayACG07c5K00K5e24V_ALSgSSSaySSGSgtKFZAC05l6I0V010N21K0OALcASmcfu_AsLcfu0_AOXMtTf1ncn_nTm(a2, v45, type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData);
  v54 = v5;
  v57 = v20;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36, 1, v20);
  v59 = v36;
  if (EnumTagSinglePayload == 1)
  {
    v22 = v57;
    swift_storeEnumTagMultiPayload(v36, v57, 3);
    if (__swift_getEnumTagSinglePayload(v36, 1, v22) != 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v36, &demangling cache variable for type metadata for MLRandomForestRegressor.ModelParameters.ValidationData?);
    }
  }

  else
  {
    outlined init with take of MLClassifierMetrics(v36, v36, type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData);
  }

  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLRandomForestRegressor>);
  v24 = *(type metadata accessor for MLRandomForestRegressor(0) - 8);
  v25 = *(v24 + 80);
  v26 = (v25 + 32) & ~*(v24 + 80);
  v27 = swift_allocObject(v23, v26 + *(v24 + 72), v25 | 7);
  *(v27 + 16) = 1;
  *(v27 + 24) = 2;
  v58 = v27;
  v55 = v26 + v27;
  (*(v52 + 16))(v56, v49, v51);
  v28 = v50;
  outlined init with copy of MLTrainingSessionParameters(v59, v50, type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData);
  memset(v36, 0, sizeof(v36));
  v42 = 0;
  v43 = 0;
  v37 = 6;
  v38 = 10;
  v39 = _mm_loadh_ps(&qword_33D880);
  v40 = 42;
  v41 = xmmword_33E240;
  v29 = v53;
  outlined init with copy of MLTrainingSessionParameters(v28, v53, type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData);
  v44[3] = v57;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v44);
  outlined init with take of MLClassifierMetrics(v29, boxed_opaque_existential_0, type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData);
  v31 = v46;
  v46;
  v32 = v47;
  v47;
  outlined assign with take of Any?(v44, v36);
  outlined destroy of MLActivityClassifier.ModelParameters(v28, type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData);
  v33 = v54;
  MLRandomForestRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(v56, v48, v32, v31, v36);
  if (v33)
  {
    v34 = v58;
    *(v58 + 16) = 0;

    outlined destroy of MLActivityClassifier.ModelParameters(v59, type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData);
    return v34;
  }

  else
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v59, type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData);
    return v58;
  }
}

uint64_t MLHandPoseClassifier.DataSource.keypointsWithAnnotations()(__m128 a1)
{
  v82 = v2;
  v63 = v1;
  v69 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v68 = *(v69 - 8);
  v4 = *(v68 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v64 = &v62;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyColumn?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v75 = &v62;
  v83 = type metadata accessor for AnyColumn(0);
  v74 = *(v83 - 1);
  v10 = v74[8];
  v11 = alloca(v10);
  v12 = alloca(v10);
  v70 = &v62;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v79 = &v62;
  v15 = type metadata accessor for DataFrame(0);
  v84 = *(v15 - 8);
  v16 = *(v84 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v72 = &v62;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v85 = &v62;
  v21 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  v22 = *(*(v21 - 8) + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  outlined init with copy of MLHandPoseClassifier.DataSource(v3, &v62);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v62, v21);
  if (EnumCaseMultiPayload == 5)
  {
    v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
    v31 = v30[12];
    v66 = *(&v62 + v31);
    v81 = *(&v62 + v31 + 8);
    v32 = v30[16];
    v65 = *(&v62 + v32);
    v80 = *(&v62 + v32 + 8);
    v33 = v30[20];
    v34 = *(&v62 + v33);
    v76 = *(&v62 + v33 + 8);
    v73 = v15;
    (*(v84 + 32))(v85, &v62, v15);
    v35 = v79;
    v71 = v34;
    DataFrame.subscript.getter(v34, v76);
    v36 = AnyColumn.wrappedElementType.getter();
    v37 = v74[1];
    (v37)(v35, v83);
    if (v36 == &type metadata for String)
    {
      v67 = v37;
      v41 = v64;
      v42 = v71;
      v43 = v76;
      DataFrame.subscript.getter(v71, v76, &type metadata for String);
      v44 = v82;
      Column<A>.parseAsJSONArrays()();
      if (v44)
      {
        v38 = v85;
        v44;
        (*(v68 + 8))(v41, v69);
        v45 = v75;
        __swift_storeEnumTagSinglePayload(v75, 1, 1, v83);
        outlined destroy of AnyColumn?(v45);
        v82 = 0;
      }

      else
      {
        v82 = 0;
        (*(v68 + 8))(v41, v69);
        v46 = v83;
        __swift_storeEnumTagSinglePayload(v75, 0, 1, v83);
        v47 = v70;
        v48 = v46;
        v49 = v74;
        (v74[4])(v70, v75, v48);
        v50 = v47;
        v51 = v83;
        (v49[2])(v79, v50, v83);
        v43;
        v52 = v42;
        v38 = v85;
        DataFrame.subscript.setter(v79, v52, v43);
        (v67)(v70, v51);
      }
    }

    else
    {
      v38 = v85;
    }

    v53 = v72;
    v54 = v73;
    v55 = v84;
    *a1.i64 = (*(v84 + 16))(v72, v38, v73);
    v56 = v82;
    MLDataTable.init(_:convertArraysToShapedArrays:)(v53, 0, a1);
    if (v56)
    {
      (*(v55 + 8))(v38, v54);
      v76;
      v80;
      return v81;
    }

    v86 = v77;
    LOBYTE(v87) = v78;
    v57 = v71;
    v58 = v76;
    static MLHandPoseClassifier.reformatKeypointsDataTable(table:featureColumn:)(&v86, v71, v76);
    static _VideoUtilities.renameFeatureTableColumns(table:sessionIdColumn:featureColumn:labelColumn:)(&v86, v66, v81, v57, v58, v65, v80);
    (*(v84 + 8))(v85, v73);
    v81;
    v80;
    v58;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v26 = v63;
    v74 = v64;
    v85 = v65;
    v79 = v66;
    v83 = v67;
    v27 = v68;
    v28 = v69;
    v86 = v62;
    LOBYTE(v87) = v63 & 1;
    v84 = v62;
    outlined copy of Result<_DataTable, Error>(v62, v63);
    v72 = v27;
    v29 = v82;
    static MLHandPoseClassifier.reformatKeypointsDataTable(table:featureColumn:)(&v86, v27, v28);
    if (v29)
    {
      outlined consume of Result<_DataTable, Error>(v86, v87);
      v85;
      v83;
      v28;
      return outlined consume of Result<_DataTable, Error>(v84, v26);
    }

    v40 = v83;
    static _VideoUtilities.renameFeatureTableColumns(table:sessionIdColumn:featureColumn:labelColumn:)(&v86, v74, v85, v72, v28, v79, v83);
    v85;
    v40;
    v28;
    outlined consume of Result<_DataTable, Error>(v84, v26);
  }

  else
  {
    type metadata accessor for MLHandPoseClassifier.FeatureExtractor();
    v39 = v82;
    static MLHandPoseClassifier.FeatureExtractor.extractFeatures(from:startingSessionId:)(v3, 0, a1);
    if (v39)
    {
      return outlined destroy of MLHandPoseClassifier.DataSource(&v62);
    }

    v86 = v77;
    LOBYTE(v87) = v78;
    outlined destroy of MLHandPoseClassifier.DataSource(&v62);
  }

  result = v86;
  v60 = v87;
  v61 = v63;
  *v63 = v86;
  *(v61 + 8) = v60;
  return result;
}

uint64_t type metadata accessor for MLHandPoseClassifier.DataSource(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLHandPoseClassifier.DataSource;
  if (!type metadata singleton initialization cache for MLHandPoseClassifier.DataSource)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLHandPoseClassifier.DataSource);
  }

  return result;
}

uint64_t outlined init with copy of MLHandPoseClassifier.DataSource(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t MLHandPoseClassifier.DataSource.labeledMedia()(__m128 a1)
{
  v3 = static _ImageUtilities.getDataSourceSynopsisForHandPoseClassifier(from:)(v2, a1);
  v6 = v5;
  if (!v1)
  {
    v7 = v3;
    v4;
    v7;
  }

  return v6;
}

uint64_t MLHandPoseClassifier.DataSource.imagesWithAnnotations()(__m128 a1)
{
  *&v153 = v2;
  v159 = v3;
  v145 = v1;
  v158 = type metadata accessor for DataFrame(0);
  v152 = *(v158 - 8);
  v4 = *(v152 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v142 = &v122;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v155._countAndFlagsBits = &v122;
  v9 = type metadata accessor for UTType(0);
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = alloca(v11);
  v13 = alloca(v11);
  ML14_UntypedColumnC_s5Error_pTt1g5 = &v122;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v146 = &v122;
  v156 = type metadata accessor for URL(0);
  v157 = *(v156 - 1);
  v16 = v157[8];
  v17 = alloca(v16);
  v18 = alloca(v16);
  v149 = &v122;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v155._object = &v122;
  v21 = alloca(v16);
  v22 = alloca(v16);
  v151 = &v122;
  v23 = alloca(v16);
  v24 = alloca(v16);
  v154 = &v122;
  v25 = alloca(v16);
  v26 = alloca(v16);
  v147 = &v122;
  v27 = alloca(v16);
  v28 = alloca(v16);
  v148 = &v122;
  v29 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  v30 = *(*(v29 - 8) + 64);
  v31 = alloca(v30);
  v32 = alloca(v30);
  outlined init with copy of MLHandPoseClassifier.DataSource(v159, &v122);
  switch(swift_getEnumCaseMultiPayload(&v122, v29))
  {
    case 0u:
      v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
      v34 = &v122 + v33[12];
      v35 = v33[16];
      v155._countAndFlagsBits = *(&v122 + v35);
      v159 = *(__src + v35);
      v36 = v33[20];
      v152 = *(&v122 + v36);
      v158 = *(__src + v36);
      v37 = v157;
      v38 = v157[4];
      v38(v154, &v122, v156);
      v39 = v151;
      v40 = v34;
      v41 = v156;
      v38(v151, v40, v156);
      (v37[2])(v155._object, v39, v41);
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
      LOBYTE(v125) = 1;
      v126 = 44;
      v127 = 0xE100000000000000;
      v128 = 0;
      v129 = 0xE000000000000000;
      v130 = 92;
      v131 = 0xE100000000000000;
      v132 = 1;
      v133 = 34;
      v134 = 0xE100000000000000;
      v135 = 1;
      v136 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
      v137 = 10;
      v138 = 0xE100000000000000;
      v139 = 0;
      v140 = 1;
      v141 = 0;
      outlined retain of MLDataTable.ParsingOptions(__src);
      outlined release of MLDataTable.ParsingOptions(&v125, 92);
      memcpy(__dst, __src, sizeof(__dst));
      v42 = v153;
      MLDataTable.init(contentsOf:options:)(v155._object, __dst);
      v43 = v156;
      v44 = v37;
      v45 = v154;
      if (v42)
      {
        v46 = v44[1];
        v46(v151, v156);
        v158;
        v159;
        return (v46)(v45, v43);
      }

      *&v153 = 0;
      v160 = v143;
      LOBYTE(v161) = v144;
      v79._countAndFlagsBits = v155._countAndFlagsBits;
      v80 = v159;
      v79._object = v159;
      MLDataTable.subscript.getter(v79);
      object = *&__dst[0];
      v82 = BYTE8(__dst[0]);
      if (BYTE8(__dst[0]) || (outlined copy of Result<_DataTable, Error>(*&__dst[0], 0), v155._object = object, _UntypedColumn.type.getter(), object = v155._object, outlined consume of Result<_DataTable, Error>(v155._object, 0), v143 != 2))
      {
        outlined consume of Result<_DataTable, Error>(object, v82);
        v158;
        *&__dst[0] = 0;
        *(&__dst[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(26);
        *(&__dst[0] + 1);
        *&__dst[0] = 0x206E6D756C6F43;
        *(&__dst[0] + 1) = 0xE700000000000000;
        v100._countAndFlagsBits = v155._countAndFlagsBits;
        v100._object = v80;
        String.append(_:)(v100);
        v80;
        v100._countAndFlagsBits = 0xD000000000000011;
        String.append(_:)(v100);
        v153 = __dst[0];
        v100._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v100._object, 0, 0);
        *v101 = v153;
        *(v101 + 16) = 0;
        *(v101 + 32) = 0;
        *(v101 + 48) = 0;
        swift_willThrow(&type metadata for MLCreateError, v100._object);
        v102 = v157[1];
        v103 = v151;
        v104 = v156;
LABEL_28:
        v102(v103, v104);
        v102(v154, v104);
        return outlined consume of Result<_DataTable, Error>(v160, v161);
      }

      outlined copy of Result<_DataTable, Error>(object, 0);
      _UntypedColumn.valueAtIndex(index:)(0, 0.0);
      v84 = *(&__dst[0] + 1);
      v83 = *&__dst[0];
      if (LOBYTE(__dst[1]) != 2)
      {
        outlined consume of MLDataValue(*&__dst[0], *(&__dst[0] + 1), __dst[1]);
        v83 = 0;
        v84 = 0xE000000000000000;
      }

      outlined consume of Result<_DataTable, Error>(v155._object, 0);
      *&__dst[0] = v83;
      *(&__dst[0] + 1) = v84;
      v85 = String.init<A>(_:)(__dst, &type metadata for String, &protocol witness table for String, &protocol witness table for String);
      v87 = v86;
      URL.init(fileURLWithPath:)(v85, v86);
      v87;
      v88 = objc_opt_self(NSFileManager);
      v89 = [v88 defaultManager];
      v90 = v89;
      URL.path.getter(v89);
      v92 = v91;
      v93 = String._bridgeToObjectiveC()();
      v92;
      LOBYTE(v92) = [v90 fileExistsAtPath:v93];

      if (v92)
      {
        v94 = v159;
        v95 = v158;
        countAndFlagsBits = v155._countAndFlagsBits;
      }

      else
      {
        v105 = v155._object;
        outlined copy of Result<_DataTable, Error>(v155._object, 0);
        MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v105, 0, 0.0);
        v107 = alloca(24);
        v108 = alloca(32);
        *(&__src[0] + 1) = v154;
        v109 = v153;
        v110 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_SSs5NeverOTg5(partial apply for closure #1 in static _VideoUtilities.getVideoURLsAndAnnotations(from:), &v122, MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5);
        *&v153 = v109;
        MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
        *&__dst[0] = v110;
        v111 = alloca(24);
        v112 = alloca(24);
        *(&__src[0] + 1) = __dst;
        ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
        v114 = v113;
        *&__dst[0];
        v94 = v159;
        v159;
        MLDataTable.willMutate()();
        *&__dst[0] = ML14_UntypedColumnC_s5Error_pTt1g5;
        BYTE8(__dst[0]) = v114 & 1;
        countAndFlagsBits = v155._countAndFlagsBits;
        MLDataTable.setColumnImpl(newColumn:named:)(__dst, v155._countAndFlagsBits, v94);
        v94;
        outlined consume of Result<_DataTable, Error>(*&__dst[0], SBYTE8(__dst[0]));
        if (!v161)
        {
          v115 = v160;
          outlined copy of Result<_DataTable, Error>(v160, 0);
          _DataTable.columnNamesDidChange()();
          outlined consume of Result<_DataTable, Error>(v115, 0);
        }

        v95 = v158;
      }

      v116 = v153;
      static _ImageUtilities.renameImageTableColumns(table:imageColumn:labelColumn:)(&v160, countAndFlagsBits, v94, v152, v95);
      v117 = v94;
      v104 = v156;
      v118 = v157;
      if (v116)
      {
        v117;
        v95;
        outlined consume of Result<_DataTable, Error>(v155._object, 0);
        v102 = v118[1];
        v102(v149, v104);
        v103 = v151;
        goto LABEL_28;
      }

      v117;
      v95;
      outlined consume of Result<_DataTable, Error>(v155._object, 0);
      v119 = v118[1];
      v119(v149, v104);
      v119(v151, v104);
      v119(v154, v104);
LABEL_36:
      result = v160;
      v120 = v161;
      v121 = v145;
      *v145 = v160;
      *(v121 + 8) = v120;
      return result;
    case 1u:
      v158 = v9;
      v159 = v10;
      v63 = v147;
      v54 = v156;
      v55 = v157;
      (v157[4])(v147, &v122, v156);
      v64 = ML14_UntypedColumnC_s5Error_pTt1g5;
      static UTType.image.getter();
      v65 = v153;
      v66 = static _FileUtilities.collectFilesLabeledByDirectoryName(at:type:)(v63, v64);
      if (v65)
      {
        (*(v159 + 1))(ML14_UntypedColumnC_s5Error_pTt1g5, v158);
        v59 = v147;
        return (v55[1])(v59, v54);
      }

      v76 = v66;
      v77 = v147;
      v78 = ML14_UntypedColumnC_s5Error_pTt1g5;
      goto LABEL_25;
    case 2u:
      v158 = v9;
      v159 = v10;
      v53 = v148;
      v54 = v156;
      v55 = v157;
      (v157[4])(v148, &v122, v156);
      v56 = v146;
      static UTType.image.getter();
      v57 = v153;
      v58 = static _FileUtilities.collectFilesLabeledByFileName(at:type:)(v53, v56);
      if (v57)
      {
        (*(v159 + 1))(v146, v158);
        v59 = v148;
        return (v55[1])(v59, v54);
      }

      v76 = v58;
      v77 = v148;
      v78 = v146;
LABEL_25:
      (*(v159 + 1))(v78, v158);
      static _ImageUtilities.generateImageTable(_:)(v76);
      v76;
      v99 = v126;
      v160 = v125;
      LOBYTE(v161) = v126 & 1;
      LOBYTE(v126) = v126 & 1;
      outlined copy of Result<_DataTable, Error>(v125, v99);
      static _ImageUtilities.validateImageInput(trainingData:imageColumn:labelColumn:)(&v125, 0x7461506567616D69, 0xE900000000000068, 0x6C6562616CLL, 0xE500000000000000);
      outlined consume of Result<_DataTable, Error>(v125, v126);
      (v157[1])(v77, v54);
      goto LABEL_36;
    case 3u:
      v60 = *&__src[1];
      v61 = *&__src[2];
      v62 = *&__src[3];
      outlined consume of Result<_DataTable, Error>(v122, __src[0]);
      v62;
      v61;
      v60;
      return MLDataTable.init()();
    case 4u:
      v48 = __src[0];
      v159 = *(&__src[0] + 1);
      v157 = *(&__src[1] + 1);
      v49 = *&__src[1];
      v50 = *&__src[2];
      v160 = v122;
      LOBYTE(v161) = __src[0] & 1;
      v156 = v122;
      outlined copy of Result<_DataTable, Error>(v122, __src[0]);
      v51 = v159;
      v159 = v50;
      v52 = v153;
      static _ImageUtilities.renameImageTableColumns(table:imageColumn:labelColumn:)(&v160, v51, v49, v157, v50);
      if (!v52)
      {
        v49;
        v159;
        outlined consume of Result<_DataTable, Error>(v156, v48);
        goto LABEL_36;
      }

      v49;
      v159;
      outlined consume of Result<_DataTable, Error>(v156, v48);
      return outlined consume of Result<_DataTable, Error>(v160, v161);
    case 5u:
      v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      *(__src + v67[12]);
      *(__src + v67[16]);
      *(__src + v67[20]);
      MLDataTable.init()();
      return (*(v152 + 8))(&v122, v158);
    case 6u:
      v68 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
      v69 = *(v68 + 48);
      v157 = *(&v122 + v69);
      v156 = *(__src + v69);
      v70 = *(v68 + 64);
      v154 = *(&v122 + v70);
      v159 = *(__src + v70);
      v71 = v155._countAndFlagsBits;
      v72 = v158;
      v73 = v152;
      (*(v152 + 32))(v155._countAndFlagsBits, &v122, v158);
      v74 = v142;
      *a1.i64 = (*(v73 + 16))(v142, v71, v72);
      v75 = v153;
      MLDataTable.init(_:convertArraysToShapedArrays:)(v74, 0, a1);
      if (v75)
      {
        (*(v73 + 8))(v155._countAndFlagsBits, v158);
        v159;
        return v156;
      }

      v160 = v125;
      LOBYTE(v161) = v126;
      v97 = v156;
      v98 = v159;
      static _ImageUtilities.renameImageTableColumns(table:imageColumn:labelColumn:)(&v160, v157, v156, v154, v159);
      (*(v73 + 8))(v155._countAndFlagsBits, v158);
      v97;
      v98;
      goto LABEL_36;
  }
}

uint64_t MLHandPoseClassifier.DataSource.extractKeypoints()(__m128 a1)
{
  v108 = v2;
  in = v3;
  v101 = v1;
  v94 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Data>);
  v93 = *(v94 - 8);
  v4 = *(v93 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v85 = &v81;
  v91 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v90 = *(v91 - 8);
  v7 = *(v90 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v84 = &v81;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyColumn?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v86 = &v81;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v83 = &v81;
  v105 = type metadata accessor for AnyColumn(0);
  v99 = *(v105 - 1);
  v15 = *(v99 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v95 = &v81;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v92 = &v81;
  v20 = alloca(v15);
  v21 = alloca(v15);
  v100 = &v81;
  v22 = type metadata accessor for DataFrame(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v104 = &v81;
  v27 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  v28 = *(*(v27 - 8) + 64);
  v29 = alloca(v28);
  v30 = alloca(v28);
  outlined init with copy of MLHandPoseClassifier.DataSource(in, &v81);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v81, v27);
  if (EnumCaseMultiPayload == 5)
  {
    v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
    v38 = v37[12];
    v88 = *(&v81 + v38);
    v103 = *(&v81 + v38 + 8);
    v39 = v37[16];
    v87 = *(&v81 + v39);
    v98 = *(&v81 + v39 + 8);
    v40 = v37[20];
    v41 = *(&v81 + v40);
    in = *(&v81 + v40 + 8);
    v97 = v23;
    v42 = *(v23 + 32);
    v96 = v22;
    v89 = v42;
    v42(v104, &v81, v22);
    v43 = v100;
    v106._countAndFlagsBits = v41;
    DataFrame.subscript.getter(v41, in);
    v44 = AnyColumn.wrappedElementType.getter();
    v45 = *(v99 + 8);
    v46 = v105;
    v45(v43, v105);
    if (v44 == &type metadata for String)
    {
      v102 = v45;
      v50 = v84;
      DataFrame.subscript.getter(v106._countAndFlagsBits, in, &type metadata for String);
      v51 = v83;
      v52 = v108;
      Column<A>.parseAsJSONArrays()();
      if (!v52)
      {
        v108 = 0;
        (*(v90 + 8))(v50, v91);
        v67 = v51;
        v68 = v51;
        v69 = v105;
        __swift_storeEnumTagSinglePayload(v68, 0, 1, v105);
        v70 = v92;
        v71 = v67;
        v72 = v99;
        (*(v99 + 32))(v92, v71, v69);
        (*(v72 + 16))(v43, v70, v69);
        v73 = in;
        in;
        v74 = v43;
        countAndFlagsBits = v106._countAndFlagsBits;
        v48 = v73;
        DataFrame.subscript.setter(v74, v106._countAndFlagsBits, v73);
        v102(v92, v69);
        v57 = countAndFlagsBits;
        goto LABEL_18;
      }

      v48 = in;
      v52;
      (*(v90 + 8))(v50, v91);
      __swift_storeEnumTagSinglePayload(v51, 1, 1, v105);
      v53 = v51;
    }

    else
    {
      DataFrame.subscript.getter(v106._countAndFlagsBits, in);
      v47 = AnyColumn.wrappedElementType.getter();
      v45(v43, v46);
      if (v47 != &type metadata for Data)
      {
        v48 = in;
LABEL_17:
        v57 = v106._countAndFlagsBits;
LABEL_18:
        v58._countAndFlagsBits = v57;
        v58._object = v48;
        v59 = v104;
        DataFrame.flattenNestedArrays(in:shape:)(v58, &outlined read-only object #0 of MLHandPoseClassifier.DataSource.extractKeypoints());
        if (v60)
        {
          (*(v97 + 8))(v59, v96);
          v103;
          v61 = v98;
        }

        else
        {
          v62 = v57;
          v63 = v98;
          static _VideoUtilities.renameFeatureColumns(dataFrame:sessionIdColumn:featureColumn:labelColumn:)(v59, v88, v103, v62, v48, v87, v98);
          v89(v101, v59, v96);
          v103;
          v61 = v63;
        }

        v61;
        v36 = v48;
        return v36;
      }

      v102 = v45;
      v54 = v85;
      DataFrame.subscript.getter(v106._countAndFlagsBits, in, &type metadata for Data);
      v55 = v86;
      v56 = v108;
      Column<A>.parseAsJSONArrays()();
      if (!v56)
      {
        v108 = 0;
        (*(v93 + 8))(v54, v94);
        v76 = v105;
        __swift_storeEnumTagSinglePayload(v55, 0, 1, v105);
        v77 = v95;
        v78 = v55;
        v79 = v99;
        (*(v99 + 32))(v95, v78, v76);
        (*(v79 + 16))(v100, v77, v76);
        v80 = in;
        in;
        v57 = v106._countAndFlagsBits;
        v48 = v80;
        DataFrame.subscript.setter(v100, v106._countAndFlagsBits, v80);
        v102(v95, v105);
        goto LABEL_18;
      }

      v48 = in;
      v56;
      (*(v93 + 8))(v54, v94);
      __swift_storeEnumTagSinglePayload(v55, 1, 1, v105);
      v53 = v55;
    }

    outlined destroy of AnyColumn?(v53);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v105 = v83;
    in = v84;
    v104 = v85;
    v32 = v86;
    v33 = v87;
    v34 = v88;
    v106._object = v81;
    LOBYTE(v107) = v82;
    v35 = v108;
    static MLHandPoseClassifier.reformatKeypointsDataTable(table:featureColumn:)(&v106._object, v87, v88);
    if (!v35)
    {
      static _VideoUtilities.renameFeatureTableColumns(table:sessionIdColumn:featureColumn:labelColumn:)(&v106._object, v105, in, v33, v34, v104, v32);
      v34;
      v32;
      in;
      object = v106._object;
      v65 = v107;
      v81 = v106._object;
      v82 = v107;
      outlined copy of Result<_DataTable, Error>(v106._object, v107);
      DataFrame.init(_:)(&v81);
      return outlined consume of Result<_DataTable, Error>(object, v65);
    }

    outlined consume of Result<_DataTable, Error>(v106._object, v107);
    in;
    v32;
    v36 = v34;
    return v36;
  }

  type metadata accessor for MLHandPoseClassifier.FeatureExtractor();
  v49 = v108;
  static MLHandPoseClassifier.FeatureExtractor.extractFeatures(from:startingSessionId:)(in, 0, a1);
  if (!v49)
  {
    v81 = v106._object;
    v82 = v107;
    DataFrame.init(_:)(&v81);
  }

  return outlined destroy of MLHandPoseClassifier.DataSource(&v81);
}

uint64_t MLHandPoseClassifier.DataSource.gatherAnnotatedFileNames()()
{
  v225._object = v1;
  _._countAndFlagsBits = v2;
  v215 = v0;
  v205 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v204 = *(v205 - 8);
  v3 = *(v204 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v206 = &v197;
  v203 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>);
  v202 = *(v203 - 8);
  v6 = *(v202 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v212 = &v197;
  v213 = type metadata accessor for CSVType(0);
  v210 = *(v213 - 8);
  v9 = *(v210 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v208 = &v197;
  v12 = *(*(type metadata accessor for CSVReadingOptions(0) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v207 = &v197;
  v15 = *(*(type metadata accessor for JSONReadingOptions(0) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v200 = &v197;
  v222._object = type metadata accessor for DataFrame(0);
  v220 = *(v222._object - 1);
  v18 = *(v220 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v225._countAndFlagsBits = &v197;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v223._object = &v197;
  v23 = alloca(v18);
  v24 = alloca(v18);
  v209 = &v197;
  v25 = alloca(v18);
  v26 = alloca(v18);
  v201 = &v197;
  v27 = alloca(v18);
  v28 = alloca(v18);
  v211 = &v197;
  v29 = type metadata accessor for UTType(0);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = alloca(v31);
  v33 = alloca(v31);
  v222._countAndFlagsBits = &v197;
  v34 = alloca(v31);
  v35 = alloca(v31);
  v217 = &v197;
  v224 = type metadata accessor for URL(0);
  v223._countAndFlagsBits = *(v224 - 1);
  v36 = *(v223._countAndFlagsBits + 64);
  v37 = alloca(v36);
  v38 = alloca(v36);
  v214 = &v197;
  v39 = alloca(v36);
  v40 = alloca(v36);
  v216 = &v197;
  v41 = alloca(v36);
  v42 = alloca(v36);
  v219._countAndFlagsBits = &v197;
  v43 = alloca(v36);
  v44 = alloca(v36);
  v221 = &v197;
  v45 = alloca(v36);
  v46 = alloca(v36);
  v218 = &v197;
  v47 = alloca(v36);
  v48 = alloca(v36);
  v219._object = &v197;
  v49 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  v50 = *(*(v49 - 8) + 64);
  v51 = alloca(v50);
  v52 = alloca(v50);
  outlined init with copy of MLHandPoseClassifier.DataSource(_._countAndFlagsBits, &v197);
  switch(swift_getEnumCaseMultiPayload(&v197, v49))
  {
    case 0u:
      v53 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
      v54 = &v197 + v53[12];
      v55 = v53[16];
      v225._countAndFlagsBits = *(&v197 + v55);
      _._countAndFlagsBits = *(&v197 + v55 + 8);
      v56 = v53[20];
      v222._countAndFlagsBits = *(&v197 + v56);
      v223._object = *(&v197 + v56 + 8);
      v57 = *(v223._countAndFlagsBits + 32);
      v58 = v224;
      v57(v221, &v197, v224);
      countAndFlagsBits = v219._countAndFlagsBits;
      v57(v219._countAndFlagsBits, v54, v58);
      v60 = URL.pathExtension.getter();
      v62 = v61;
      if (!(v60 ^ 0x6E6F736A | v61 ^ 0xE400000000000000))
      {
        v61;
        v63 = v216;
LABEL_16:
        (*(v223._countAndFlagsBits + 16))(v63, countAndFlagsBits, v224);
        v102 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
        v103 = swift_allocObject(v102, 64, 7);
        v219._object = v103;
        v103[2] = 2;
        v103[3] = 4;
        v103[4] = v225._countAndFlagsBits;
        v103[5] = _._countAndFlagsBits;
        v103[6] = v222._countAndFlagsBits;
        v103[7] = v223._object;
        v104 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, JSONType)>);
        v217 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, JSONType));
        v105 = *(v217 - 1);
        v213 = *(v105 + 72);
        v106 = *(v105 + 80);
        v107 = (v106 + 32) & ~*(v105 + 80);
        v108 = swift_allocObject(v104, v107 + 2 * v213, v106 | 7);
        *(v108 + 16) = 2;
        *(v108 + 24) = 4;
        v109 = v108 + v107;
        v110 = v108 + v107 + *(v217 + 12);
        *(v108 + v107) = v225._countAndFlagsBits;
        *(v108 + v107 + 8) = _._countAndFlagsBits;
        LODWORD(v218) = enum case for JSONType.string(_:);
        v214 = type metadata accessor for JSONType(0);
        v111 = *(*(v214 - 1) + 104);
        v112 = v110;
        object = v223._object;
        v111(v112, v218, v214);
        v114 = v213;
        v115 = v109 + v213 + *(v217 + 12);
        *(v213 + v109) = v222._countAndFlagsBits;
        *(v114 + v109 + 8) = object;
        v116 = v214;
        v111(v115, v218, v214);
        swift_bridgeObjectRetain_n(_._countAndFlagsBits, 2);
        swift_bridgeObjectRetain_n(object, 2);
        v117 = Dictionary.init(dictionaryLiteral:)(v108, &type metadata for String, v116, &protocol witness table for String);
        v118 = v200;
        JSONReadingOptions.init()();
        v119 = v201;
        v120 = v225._object;
        DataFrame.init(contentsOfJSONFile:columns:types:options:)(v216, v219._object, v117, v118);
        v225._object = v120;
        if (v120)
        {
          v121 = *(v223._countAndFlagsBits + 8);
          v122 = v224;
          v121(v219._countAndFlagsBits, v224);
          v223._object;
          _._countAndFlagsBits;
          v123 = v221;
          v124 = v122;
          return v121(v123, v124);
        }

        v143 = v119;
        goto LABEL_33;
      }

      v101 = _stringCompareWithSmolCheck(_:_:expecting:)(v60, v61, 1852797802, 0xE400000000000000, 0);
      v62;
      v63 = v216;
      if (v101)
      {
        goto LABEL_16;
      }

      (*(v223._countAndFlagsBits + 16))(v214, countAndFlagsBits, v224);
      v144 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
      v145 = swift_allocObject(v144, 64, 7);
      v217 = v145;
      v145[2] = 2;
      v145[3] = 4;
      v145[4] = v225._countAndFlagsBits;
      v145[5] = _._countAndFlagsBits;
      v145[6] = v222._countAndFlagsBits;
      v145[7] = v223._object;
      v146 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, CSVType)>);
      v147 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, CSVType));
      v148 = *(v147 - 8);
      v219._object = *(v148 + 72);
      v149 = *(v148 + 80);
      v150 = (v149 + 32) & ~*(v148 + 80);
      v151 = swift_allocObject(v146, v150 + 2 * v219._object, v149 | 7);
      *(v151 + 16) = 2;
      *(v151 + 24) = 4;
      v152 = (v151 + v150);
      v153 = v151 + v150 + *(v147 + 48);
      *v152 = v225._countAndFlagsBits;
      v152[1] = _._countAndFlagsBits;
      LODWORD(v216) = enum case for CSVType.string(_:);
      v154 = *(v210 + 104);
      (v154)(v153, enum case for CSVType.string(_:), v213);
      v218 = v154;
      v155 = v219._object;
      v156 = v152 + v219._object + *(v147 + 48);
      *(v219._object + v152) = v222._countAndFlagsBits;
      v157 = v223._object;
      *(v152 + v155 + 8) = v223._object;
      v158 = v213;
      (v154)(v156, v216, v213);
      swift_bridgeObjectRetain_n(_._countAndFlagsBits, 2);
      swift_bridgeObjectRetain_n(v157, 2);
      v159 = Dictionary.init(dictionaryLiteral:)(v151, &type metadata for String, v158, &protocol witness table for String);
      v219._object = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 1 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
      v216 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 2 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
      v160 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 3 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
      v161 = v208;
      (v218)(v208, enum case for CSVType.double(_:), v158);
      v162 = v207;
      CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)(1, v219._object, v216, v160, v161, 1, 1, 0, 44, 0xE100000000000000, 92, 0xE100000000000000);
      v143 = v209;
      v163 = v225._object;
      DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)(v214, v217, 0, 0, 1, v159, v162);
      v225._object = v163;
      if (v163)
      {
        v121 = *(v223._countAndFlagsBits + 8);
        v164 = v224;
        v121(v219._countAndFlagsBits, v224);
        v223._object;
        _._countAndFlagsBits;
        v123 = v221;
        v124 = v164;
        return v121(v123, v124);
      }

LABEL_33:
      v165 = _._countAndFlagsBits;
      _._countAndFlagsBits = *(v220 + 32);
      (_._countAndFlagsBits)(v211, v143, v222._object);
      v166 = v206;
      DataFrame.subscript.getter(v225._countAndFlagsBits, v165, &type metadata for String);
      v198 = 0;
      v199 = 0xE000000000000000;
      v167 = lazy protocol witness table accessor for type Column<String> and conformance Column<A>();
      v168 = v205;
      OptionalColumnProtocol.filled(with:)(&v198, v205, v167);
      (*(v204 + 8))(v166, v168);
      v169 = alloca(24);
      v170 = alloca(32);
      v199 = v221;
      v171 = v225._object;
      v172 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11TabularData12FilledColumnVyAF0G0VySSGG_SSSgs5NeverOTg5(partial apply for closure #3 in MLObjectDetector.DataSource.gatherAnnotatedFileNames(), &v197);
      v225._object = v171;
      v165;
      v173 = v172;
      v174 = v225._countAndFlagsBits;
      v175 = v211;
      DataFrame.subscript.setter(v173, v225._countAndFlagsBits, v165, &type metadata for String, &type metadata for String);
      v176._countAndFlagsBits = 0x7461506567616D69;
      v176._object = 0xE900000000000068;
      v177._countAndFlagsBits = v174;
      v177._object = v165;
      DataFrame.renameColumn(_:to:)(v177, v176);
      v165;
      v178._countAndFlagsBits = 0x6C6562616CLL;
      v178._object = 0xE500000000000000;
      v177._countAndFlagsBits = v222._countAndFlagsBits;
      v179 = v223._object;
      v177._object = v223._object;
      v180 = v175;
      DataFrame.renameColumn(_:to:)(v177, v178);
      v179;
      (*(v202 + 8))(v212, v203);
      v181 = *(v223._countAndFlagsBits + 8);
      v182 = v224;
      v181(v219._countAndFlagsBits, v224);
      v183 = v215;
      v177._object = v180;
      v184 = v222._object;
      (_._countAndFlagsBits)(v215, v177._object, v222._object);
      __swift_storeEnumTagSinglePayload(v183, 0, 1, v184);
      return v181(v221, v182);
    case 1u:
      _._countAndFlagsBits = v29;
      v220 = v30;
      v83 = v218;
      v84 = v224;
      v71 = v223._countAndFlagsBits;
      v85 = (*(v223._countAndFlagsBits + 32))(v218, &v197, v224);
      v86 = v222._countAndFlagsBits;
      static UTType.image.getter(v85);
      v87 = v225._object;
      v88 = static _FileUtilities.collectFilesLabeledByDirectoryName(at:type:)(v83, v86);
      v225._object = v87;
      if (v87)
      {
        (*(v220 + 8))(v222._countAndFlagsBits, _._countAndFlagsBits);
        v76 = v218;
        v77 = v84;
        return (*(v71 + 8))(v76, v77);
      }

      v135 = v88;
      (*(v220 + 8))(v222._countAndFlagsBits, _._countAndFlagsBits);
      v136 = v225._object;
      v137 = specialized _NativeDictionary.mapValues<A>(_:)(v135);
      v225._object = v136;
      v135;
      v132 = v215;
      _s11TabularData0B5FrameV8CreateMLE9expanding14keysColumnName06valueshI0ACSDySSSayxGG_S2StclufCSS_Tt3g5(v137, 0x6C6562616CLL, 0xE500000000000000, 0x7461506567616D69, 0xE900000000000068);
      v133 = v218;
      v134 = v84;
      goto LABEL_23;
    case 2u:
      _._countAndFlagsBits = v29;
      v70 = v219._object;
      v71 = v223._countAndFlagsBits;
      v72 = (*(v223._countAndFlagsBits + 32))(v219._object, &v197, v224);
      v73 = v217;
      static UTType.image.getter(v72);
      v74 = v225._object;
      v75 = static _FileUtilities.collectFilesLabeledByFileName(at:type:)(v70, v73);
      v225._object = v74;
      if (v74)
      {
        (*(v30 + 8))(v217, _._countAndFlagsBits);
        v76 = v219._object;
        v77 = v224;
        return (*(v71 + 8))(v76, v77);
      }

      v129 = v75;
      (*(v30 + 8))(v217, _._countAndFlagsBits);
      v130 = v225._object;
      v131 = specialized _NativeDictionary.mapValues<A>(_:)(v129);
      v225._object = v130;
      v129;
      v132 = v215;
      _s11TabularData0B5FrameV8CreateMLE9expanding14keysColumnName06valueshI0ACSDySSSayxGG_S2StclufCSS_Tt3g5(v131, 0x6C6562616CLL, 0xE500000000000000, 0x7461506567616D69, 0xE900000000000068);
      v133 = v219._object;
      v134 = v224;
LABEL_23:
      (*(v71 + 8))(v133, v134);
      v81 = v132;
      v82 = 0;
LABEL_24:
      v138 = v222._object;
      return __swift_storeEnumTagSinglePayload(v81, v82, 1, v138);
    case 3u:
      v78 = v200;
      v79 = v202;
      v80 = v204;
      outlined consume of Result<_DataTable, Error>(v197, v198);
      v80;
      v79;
      v78;
      v81 = v215;
      v82 = 1;
      goto LABEL_24;
    case 4u:
      v64 = v198;
      _._countAndFlagsBits = v199;
      v65 = v200;
      v219._countAndFlagsBits = v201;
      v224 = v202;
      v198 = v197;
      LOBYTE(v199) = v64 & 1;
      v223._countAndFlagsBits = v197;
      LODWORD(v221) = v64;
      outlined copy of Result<_DataTable, Error>(v197, v64);
      DataFrame.init(_:)(&v198);
      v222._countAndFlagsBits = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any.Type>);
      v66 = swift_allocObject(v222._countAndFlagsBits, 40, 7);
      v66[2] = 1;
      v66[3] = 2;
      v66[4] = &type metadata for String;
      v67._countAndFlagsBits = _._countAndFlagsBits;
      v225._countAndFlagsBits = v65;
      v67._object = v65;
      DataFrame.validateColumnTypes(_:_:context:)(v67, v66, __PAIR128__(0xEF656D616E20656CLL, 0x6966206567616D49));
      v225._object = v68;
      if (v68)
      {
        v66;
        (*(v220 + 8))(v223._object, v222._object);
        outlined consume of Result<_DataTable, Error>(v223._countAndFlagsBits, v221);
        v69 = v224;
LABEL_20:
        v69;
        v100 = v225._countAndFlagsBits;
        return v100;
      }

      v66;
      v125 = swift_allocObject(v222._countAndFlagsBits, 40, 7);
      v125[2] = 1;
      v125[3] = 2;
      v125[4] = &type metadata for String;
      v126._countAndFlagsBits = v219._countAndFlagsBits;
      v127 = v224;
      v126._object = v224;
      DataFrame.validateColumnTypes(_:_:context:)(v126, v125, __PAIR128__(0xE500000000000000, 0x6C6562614CLL));
      v225._object = v128;
      if (v128)
      {
        v125;
        (*(v220 + 8))(v223._object, v222._object);
        outlined consume of Result<_DataTable, Error>(v223._countAndFlagsBits, v221);
        v69 = v127;
        goto LABEL_20;
      }

      v125;
      v185._countAndFlagsBits = 0x7461506567616D69;
      v185._object = 0xE900000000000068;
      v186._countAndFlagsBits = _._countAndFlagsBits;
      v187 = v225._countAndFlagsBits;
      v186._object = v225._countAndFlagsBits;
      v188 = v223._object;
      DataFrame.renameColumn(_:to:)(v186, v185);
      v187;
      v186._countAndFlagsBits = v219._countAndFlagsBits;
      v186._object = v127;
      v189._countAndFlagsBits = 0x6C6562616CLL;
      v189._object = 0xE500000000000000;
      DataFrame.renameColumn(_:to:)(v186, v189);
      outlined consume of Result<_DataTable, Error>(v223._countAndFlagsBits, v221);
      v127;
      v190 = v215;
      v191 = v222._object;
      (*(v220 + 32))(v215, v188, v222._object);
      goto LABEL_37;
    case 5u:
      v90 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      *(&v197 + v90[12] + 8);
      *(&v197 + v90[16] + 8);
      *(&v197 + v90[20] + 8);
      v91 = v222._object;
      __swift_storeEnumTagSinglePayload(v215, 1, 1, v222._object);
      return (*(v220 + 8))(&v197, v91);
    case 6u:
      v92 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
      v93 = *(v92 + 48);
      v94 = *(&v197 + v93);
      _._countAndFlagsBits = *(&v197 + v93 + 8);
      v95 = *(v92 + 64);
      v223._countAndFlagsBits = *(&v197 + v95);
      v224 = *(&v197 + v95 + 8);
      v223._object = *(v220 + 32);
      (v223._object)(v225._countAndFlagsBits, &v197, v222._object);
      v221 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any.Type>);
      v96 = swift_allocObject(v221, 40, 7);
      v96[2] = 1;
      v96[3] = 2;
      v96[4] = &type metadata for String;
      v219._countAndFlagsBits = v94;
      v97._countAndFlagsBits = v94;
      v98 = _._countAndFlagsBits;
      v97._object = _._countAndFlagsBits;
      DataFrame.validateColumnTypes(_:_:context:)(v97, v96, __PAIR128__(0xEF656D616E20656CLL, 0x6966206567616D49));
      v225._object = v99;
      if (v99)
      {
        v96;
        (*(v220 + 8))(v225._countAndFlagsBits, v222._object);
        v98;
        v100 = v224;
        return v100;
      }

      v96;
      v139 = swift_allocObject(v221, 40, 7);
      v139[2] = 1;
      v139[3] = 2;
      v139[4] = &type metadata for String;
      v140._countAndFlagsBits = v223._countAndFlagsBits;
      v141 = v224;
      v140._object = v224;
      DataFrame.validateColumnTypes(_:_:context:)(v140, v139, __PAIR128__(0xE500000000000000, 0x6C6562614CLL));
      v225._object = v142;
      if (v142)
      {
        v139;
        (*(v220 + 8))(v225._countAndFlagsBits, v222._object);
        _._countAndFlagsBits;
        v100 = v141;
        return v100;
      }

      v139;
      v192._countAndFlagsBits = 0x7461506567616D69;
      v192._object = 0xE900000000000068;
      v193._countAndFlagsBits = v219._countAndFlagsBits;
      v194 = _._countAndFlagsBits;
      v193._object = _._countAndFlagsBits;
      v195 = v225._countAndFlagsBits;
      DataFrame.renameColumn(_:to:)(v193, v192);
      v194;
      v193._countAndFlagsBits = v223._countAndFlagsBits;
      v193._object = v141;
      v196._countAndFlagsBits = 0x6C6562616CLL;
      v196._object = 0xE500000000000000;
      DataFrame.renameColumn(_:to:)(v193, v196);
      v141;
      v190 = v215;
      v191 = v222._object;
      (v223._object)(v215, v195, v222._object);
LABEL_37:
      v81 = v190;
      v82 = 0;
      v138 = v191;
      return __swift_storeEnumTagSinglePayload(v81, v82, 1, v138);
  }
}

uint64_t MLHandPoseClassifier.DataSource.stratifiedSplit(proportions:seed:labelColumn:)(void *a1, uint64_t a2, uint64_t a3, void *a4, __m128 a5)
{
  v8 = v6;
  v35 = a4;
  v36._countAndFlagsBits = a3;
  v40 = a2;
  v36._object = a1;
  v37 = v5;
  v9 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  outlined init with copy of MLHandPoseClassifier.DataSource(v7, &v33);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v33, v9);
  if (EnumCaseMultiPayload == 5)
  {
    v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
    v18 = v17[12];
    *v38 = *(&v33 + v18);
    *v43 = *(&v33 + v18 + 8);
    *(&v33 + v17[16] + 8);
    *(&v33 + v17[20] + 8);
    v19 = type metadata accessor for DataFrame(0);
    *a5.i64 = (*(*(v19 - 8) + 8))(&v33, v19);
LABEL_5:
    MLHandPoseClassifier.DataSource.keypointsWithAnnotations()(a5);
    if (v8)
    {
      return *v43;
    }

    v21 = v40;
    if (v40 < 0)
    {
      BUG();
    }

    v22 = v41;
    v34 = v41;
    LOBYTE(v39) = v42;
    v23 = type metadata accessor for MersenneTwisterGenerator();
    swift_allocObject(v23, 136, 7);
    v41 = MersenneTwisterGenerator.init(seed:)(v21);
    v24 = v39;
    v25 = v22;
    v26 = *v43;
    v32._object = v35;
    v32._countAndFlagsBits = v36._countAndFlagsBits;
    specialized stratifiedSplitBySequenceGenerator<A>(proportions:generator:dataTable:by:on:)(v36._object, &v41, v25, v39, *v38, *v43, *a5.i64, v32);
    v26;

    return outlined consume of Result<_DataTable, Error>(v34, v24);
  }

  if (EnumCaseMultiPayload == 3)
  {
    v39 = v33;
    *v38 = v35;
    *v43 = v36._countAndFlagsBits;
    v14 = v33;
    v15 = v34;
    v37;
    v16 = v14;
    v8 = v6;
    v16;
    outlined consume of Result<_DataTable, Error>(v39, v15);
    goto LABEL_5;
  }

  MLHandPoseClassifier.DataSource.imagesWithAnnotations()(a5);
  if (v6)
  {
    return outlined destroy of MLHandPoseClassifier.DataSource(&v33);
  }

  v27 = v40;
  if (v40 < 0)
  {
    BUG();
  }

  *v43 = v41;
  v28 = v42;
  v29 = type metadata accessor for MersenneTwisterGenerator();
  swift_allocObject(v29, 136, 7);
  v41 = MersenneTwisterGenerator.init(seed:)(v27);
  v30 = v28;
  LODWORD(v40) = v28;
  v31 = *v43;
  specialized stratifiedSplitGenerator<A>(proportions:generator:dataTable:on:)(v36._object, &v41, *v43, v30, v36._countAndFlagsBits, v35, *a5.i64);

  outlined consume of Result<_DataTable, Error>(v31, v40);
  return outlined destroy of MLHandPoseClassifier.DataSource(&v33);
}

void *_sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<String>);
    v28 = static _SetStorage.allocate(capacity:)(v2);
    v24 = *(a1 + 16);
    if (v24)
    {
      v25 = a1 + 32;
      v3 = 0;
      v26 = a1;
      do
      {
        if (v3 >= *(v1 + 16))
        {
          BUG();
        }

        v4 = *(v25 + 16 * v3);
        v5 = *(v25 + 16 * v3 + 8);
        Hasher.init(_seed:)(v28[5]);
        v5;
        String.hash(into:)(v23, v4);
        v6 = Hasher._finalize()();
        v7 = v28;
        v8 = ~(-1 << *(v28 + 32));
        v9 = v8 & v6;
        v10 = (v8 & v6) >> 6;
        v11 = v28[v10 + 7];
        v12 = 1 << v9;
        if (_bittest64(&v11, v9))
        {
          v13 = v28[6];
          v14 = *(v13 + 16 * v9);
          v15 = *(v13 + 16 * v9 + 8);
          v16 = v4;
          if (v14 != v4 || v15 != v5)
          {
            v27 = v28[6];
            while ((_stringCompareWithSmolCheck(_:_:expecting:)(v14, v15, v16, v5, 0) & 1) == 0)
            {
              v9 = v8 & (v9 + 1);
              v10 = v9 >> 6;
              v7 = v28;
              v11 = v28[(v9 >> 6) + 7];
              v12 = 1 << v9;
              if (!_bittest64(&v11, v9))
              {
                goto LABEL_15;
              }

              v14 = *(v27 + 16 * v9);
              v15 = *(v27 + 16 * v9 + 8);
              v16 = v4;
              if (v14 == v4 && v15 == v5)
              {
                break;
              }
            }
          }

          v5;
        }

        else
        {
LABEL_15:
          v7[v10 + 7] = v11 | v12;
          v17 = v7[6];
          v18 = 16 * v9;
          *(v17 + v18) = v4;
          *(v17 + v18 + 8) = v5;
          v19 = v7[2];
          v20 = __OFADD__(1, v19);
          v21 = v19 + 1;
          if (v20)
          {
            BUG();
          }

          v7[2] = v21;
        }

        ++v3;
        v1 = v26;
      }

      while (v3 != v24);
    }
  }

  else
  {
    v28 = &_swiftEmptySetSingleton;
  }

  v1;
  return v28;
}

void *initializeBufferWithCopyOfBuffer for MLHandPoseClassifier.DataSource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + ((v4 + 16) & ~v4));
  }

  else
  {
    switch(swift_getEnumCaseMultiPayload(a2, a3))
    {
      case 0u:
        v6 = type metadata accessor for URL(0);
        v43 = *(*(v6 - 8) + 16);
        v43(a1, a2, v6);
        v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
        v43(a1 + v7[12], a2 + v7[12], v6);
        v8 = v7[16];
        *(a1 + v8) = *(a2 + v8);
        v9 = *(a2 + v8 + 8);
        *(v3 + v8 + 8) = v9;
        v10 = v7[20];
        *(v3 + v10) = *(a2 + v10);
        v11 = *(a2 + v10 + 8);
        *(v3 + v10 + 8) = v11;
        v9;
        v11;
        v12 = v3;
        v13 = a3;
        v14 = 0;
        goto LABEL_12;
      case 1u:
        v26 = type metadata accessor for URL(0);
        (*(*(v26 - 8) + 16))(a1, a2, v26);
        v42 = 1;
        goto LABEL_11;
      case 2u:
        v20 = type metadata accessor for URL(0);
        (*(*(v20 - 8) + 16))(a1, a2, v20);
        v42 = 2;
        goto LABEL_11;
      case 3u:
        v21 = *a2;
        v22 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v22);
        *a1 = v21;
        *(a1 + 8) = v22;
        *(a1 + 16) = *(a2 + 16);
        v23 = *(a2 + 24);
        v3[3] = v23;
        v3[4] = *(a2 + 32);
        v24 = *(a2 + 40);
        v3[5] = v24;
        v3[6] = *(a2 + 48);
        v25 = *(a2 + 56);
        v3[7] = v25;
        v23;
        v24;
        v25;
        v42 = 3;
        goto LABEL_11;
      case 4u:
        v16 = *a2;
        v17 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v17);
        *a1 = v16;
        *(a1 + 8) = v17;
        *(a1 + 16) = *(a2 + 16);
        v18 = *(a2 + 24);
        v3[3] = v18;
        v3[4] = *(a2 + 32);
        v19 = *(a2 + 40);
        v3[5] = v19;
        v18;
        v19;
        v42 = 4;
        goto LABEL_11;
      case 5u:
        v27 = type metadata accessor for DataFrame(0);
        (*(*(v27 - 8) + 16))(a1, a2, v27);
        v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v29 = v28[12];
        *(a1 + v29) = *(a2 + v29);
        v30 = *(a2 + v29 + 8);
        *(v3 + v29 + 8) = v30;
        v31 = v28[16];
        *(v3 + v31) = *(a2 + v31);
        v32 = *(a2 + v31 + 8);
        *(v3 + v31 + 8) = v32;
        v33 = v28[20];
        *(v3 + v33) = *(a2 + v33);
        v34 = *(a2 + v33 + 8);
        *(v3 + v33 + 8) = v34;
        v30;
        v32;
        v34;
        v42 = 5;
        goto LABEL_11;
      case 6u:
        v35 = type metadata accessor for DataFrame(0);
        (*(*(v35 - 8) + 16))(a1, a2, v35);
        v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
        v37 = *(v36 + 48);
        *(a1 + v37) = *(a2 + v37);
        v38 = *(a2 + v37 + 8);
        *(v3 + v37 + 8) = v38;
        v39 = *(v36 + 64);
        *(v3 + v39) = *(a2 + v39);
        v40 = *(a2 + v39 + 8);
        *(v3 + v39 + 8) = v40;
        v38;
        v40;
        v42 = 6;
LABEL_11:
        v14 = v42;
        v12 = v3;
        v13 = a3;
LABEL_12:
        swift_storeEnumTagMultiPayload(v12, v13, v14);
        break;
    }
  }

  return v3;
}

uint64_t destroy for MLHandPoseClassifier.DataSource(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload(a1, a2);
  switch(result)
  {
    case 0:
      v4 = type metadata accessor for URL(0);
      v5 = *(*(v4 - 8) + 8);
      v5(a1, v4);
      v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
      v5(a1 + v6[12], v4);
      *(a1 + v6[16] + 8);
      v7 = v6[20];
      goto LABEL_8;
    case 1:
    case 2:
      v3 = type metadata accessor for URL(0);
      return (*(*(v3 - 8) + 8))(a1, v3);
    case 3:
      outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
      *(a1 + 24);
      *(a1 + 40);
      return *(a1 + 56);
    case 4:
      outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
      *(a1 + 24);
      return *(a1 + 40);
    case 5:
      v8 = type metadata accessor for DataFrame(0);
      (*(*(v8 - 8) + 8))(a1, v8);
      v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      *(a1 + v9[12] + 8);
      *(a1 + v9[16] + 8);
      v7 = v9[20];
      goto LABEL_8;
    case 6:
      v10 = type metadata accessor for DataFrame(0);
      (*(*(v10 - 8) + 8))(a1, v10);
      v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
      *(a1 + *(v11 + 48) + 8);
      v7 = *(v11 + 64);
LABEL_8:
      result = *(a1 + v7 + 8);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t initializeWithCopy for MLHandPoseClassifier.DataSource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload(a2, a3))
  {
    case 0u:
      v5 = type metadata accessor for URL(0);
      v41 = *(*(v5 - 8) + 16);
      v41(a1, a2, v5);
      v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
      v41(a1 + v6[12], a2 + v6[12], v5);
      v7 = v6[16];
      *(a1 + v7) = *(a2 + v7);
      v8 = *(a2 + v7 + 8);
      *(a1 + v7 + 8) = v8;
      v9 = v6[20];
      *(a1 + v9) = *(a2 + v9);
      v10 = *(a2 + v9 + 8);
      *(a1 + v9 + 8) = v10;
      v8;
      v10;
      v11 = a1;
      v12 = a3;
      v13 = 0;
      goto LABEL_10;
    case 1u:
      v24 = type metadata accessor for URL(0);
      (*(*(v24 - 8) + 16))(a1, a2, v24);
      v40 = 1;
      goto LABEL_9;
    case 2u:
      v18 = type metadata accessor for URL(0);
      (*(*(v18 - 8) + 16))(a1, a2, v18);
      v40 = 2;
      goto LABEL_9;
    case 3u:
      v19 = *a2;
      v20 = *(a2 + 8);
      outlined copy of Result<_DataTable, Error>(*a2, v20);
      *a1 = v19;
      *(a1 + 8) = v20;
      *(a1 + 16) = *(a2 + 16);
      v21 = *(a2 + 24);
      *(a1 + 24) = v21;
      *(a1 + 32) = *(a2 + 32);
      v22 = *(a2 + 40);
      *(a1 + 40) = v22;
      *(a1 + 48) = *(a2 + 48);
      v23 = *(a2 + 56);
      *(a1 + 56) = v23;
      v21;
      v22;
      v23;
      v40 = 3;
      goto LABEL_9;
    case 4u:
      v14 = *a2;
      v15 = *(a2 + 8);
      outlined copy of Result<_DataTable, Error>(*a2, v15);
      *a1 = v14;
      *(a1 + 8) = v15;
      *(a1 + 16) = *(a2 + 16);
      v16 = *(a2 + 24);
      *(a1 + 24) = v16;
      *(a1 + 32) = *(a2 + 32);
      v17 = *(a2 + 40);
      *(a1 + 40) = v17;
      v16;
      v17;
      v40 = 4;
      goto LABEL_9;
    case 5u:
      v25 = type metadata accessor for DataFrame(0);
      (*(*(v25 - 8) + 16))(a1, a2, v25);
      v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      v27 = v26[12];
      *(a1 + v27) = *(a2 + v27);
      v28 = *(a2 + v27 + 8);
      *(a1 + v27 + 8) = v28;
      v29 = v26[16];
      *(a1 + v29) = *(a2 + v29);
      v30 = *(a2 + v29 + 8);
      *(a1 + v29 + 8) = v30;
      v31 = v26[20];
      *(a1 + v31) = *(a2 + v31);
      v32 = *(a2 + v31 + 8);
      *(a1 + v31 + 8) = v32;
      v28;
      v30;
      v32;
      v40 = 5;
      goto LABEL_9;
    case 6u:
      v33 = type metadata accessor for DataFrame(0);
      (*(*(v33 - 8) + 16))(a1, a2, v33);
      v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
      v35 = *(v34 + 48);
      *(a1 + v35) = *(a2 + v35);
      v36 = *(a2 + v35 + 8);
      *(a1 + v35 + 8) = v36;
      v37 = *(v34 + 64);
      *(a1 + v37) = *(a2 + v37);
      v38 = *(a2 + v37 + 8);
      *(a1 + v37 + 8) = v38;
      v36;
      v38;
      v40 = 6;
LABEL_9:
      v13 = v40;
      v11 = a1;
      v12 = a3;
LABEL_10:
      swift_storeEnumTagMultiPayload(v11, v12, v13);
      return a1;
  }
}

uint64_t assignWithCopy for MLHandPoseClassifier.DataSource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of MLHandPoseClassifier.DataSource(a1);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
    switch(EnumCaseMultiPayload)
    {
      case 0u:
        v33 = EnumCaseMultiPayload;
        v11 = type metadata accessor for URL(0);
        v31 = *(*(v11 - 8) + 16);
        v31(a1, a2, v11);
        v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
        v13 = v11;
        EnumCaseMultiPayload = v33;
        v31(a1 + v12[12], a2 + v12[12], v13);
        v14 = v12[16];
        *(a1 + v14) = *(a2 + v14);
        v9 = *(a2 + v14 + 8);
        *(a1 + v14 + 8) = v9;
        v15 = v12[20];
        goto LABEL_10;
      case 1u:
      case 2u:
        v6 = type metadata accessor for URL(0);
        (*(*(v6 - 8) + 16))(a1, a2, v6);
        goto LABEL_13;
      case 3u:
        v16 = *a2;
        v34 = EnumCaseMultiPayload;
        v17 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v17);
        *a1 = v16;
        *(a1 + 8) = v17;
        EnumCaseMultiPayload = v34;
        *(a1 + 16) = *(a2 + 16);
        v18 = *(a2 + 24);
        *(a1 + 24) = v18;
        *(a1 + 32) = *(a2 + 32);
        v19 = *(a2 + 40);
        *(a1 + 40) = v19;
        *(a1 + 48) = *(a2 + 48);
        v20 = *(a2 + 56);
        *(a1 + 56) = v20;
        goto LABEL_8;
      case 4u:
        v7 = *a2;
        v32 = EnumCaseMultiPayload;
        v8 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v8);
        *a1 = v7;
        *(a1 + 8) = v8;
        EnumCaseMultiPayload = v32;
        *(a1 + 16) = *(a2 + 16);
        v9 = *(a2 + 24);
        *(a1 + 24) = v9;
        *(a1 + 32) = *(a2 + 32);
        v10 = *(a2 + 40);
        *(a1 + 40) = v10;
        goto LABEL_11;
      case 5u:
        v21 = type metadata accessor for DataFrame(0);
        (*(*(v21 - 8) + 16))(a1, a2, v21);
        v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v23 = v22[12];
        *(a1 + v23) = *(a2 + v23);
        v18 = *(a2 + v23 + 8);
        *(a1 + v23 + 8) = v18;
        v24 = v22[16];
        *(a1 + v24) = *(a2 + v24);
        v19 = *(a2 + v24 + 8);
        *(a1 + v24 + 8) = v19;
        v25 = v22[20];
        *(a1 + v25) = *(a2 + v25);
        v20 = *(a2 + v25 + 8);
        *(a1 + v25 + 8) = v20;
LABEL_8:
        v18;
        v19;
        v26 = v20;
        break;
      case 6u:
        v27 = type metadata accessor for DataFrame(0);
        (*(*(v27 - 8) + 16))(a1, a2, v27);
        v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
        v29 = *(v28 + 48);
        *(a1 + v29) = *(a2 + v29);
        v9 = *(a2 + v29 + 8);
        *(a1 + v29 + 8) = v9;
        v15 = *(v28 + 64);
LABEL_10:
        *(a1 + v15) = *(a2 + v15);
        v10 = *(a2 + v15 + 8);
        *(a1 + v15 + 8) = v10;
LABEL_11:
        v9;
        v26 = v10;
        break;
    }

    v26;
LABEL_13:
    swift_storeEnumTagMultiPayload(a1, a3, EnumCaseMultiPayload);
  }

  return a1;
}

char *initializeWithTake for MLHandPoseClassifier.DataSource(char *__dst, char *__src, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload(__src, a3))
  {
    case 0u:
      v4 = type metadata accessor for URL(0);
      v16 = *(*(v4 - 8) + 32);
      v16(__dst, __src, v4);
      v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
      v16(&__dst[v5[12]], &__src[v5[12]], v4);
      *&__dst[v5[16]] = *&__src[v5[16]];
      *&__dst[v5[20]] = *&__src[v5[20]];
      v6 = a3;
      v7 = 0;
      goto LABEL_9;
    case 1u:
      v10 = type metadata accessor for URL(0);
      (*(*(v10 - 8) + 32))(__dst, __src, v10);
      v15 = 1;
      goto LABEL_8;
    case 2u:
      v9 = type metadata accessor for URL(0);
      (*(*(v9 - 8) + 32))(__dst, __src, v9);
      v15 = 2;
      goto LABEL_8;
    case 5u:
      v11 = type metadata accessor for DataFrame(0);
      (*(*(v11 - 8) + 32))(__dst, __src, v11);
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      *&__dst[v12[12]] = *&__src[v12[12]];
      *&__dst[v12[16]] = *&__src[v12[16]];
      *&__dst[v12[20]] = *&__src[v12[20]];
      v15 = 5;
      goto LABEL_8;
    case 6u:
      v13 = type metadata accessor for DataFrame(0);
      (*(*(v13 - 8) + 32))(__dst, __src, v13);
      v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
      *&__dst[*(v14 + 48)] = *&__src[*(v14 + 48)];
      *&__dst[*(v14 + 64)] = *&__src[*(v14 + 64)];
      v15 = 6;
LABEL_8:
      v7 = v15;
      v6 = a3;
LABEL_9:
      swift_storeEnumTagMultiPayload(__dst, v6, v7);
      result = __dst;
      break;
    default:
      result = memcpy(__dst, __src, *(*(a3 - 8) + 64));
      break;
  }

  return result;
}

char *assignWithTake for MLHandPoseClassifier.DataSource(char *__dst, char *__src, uint64_t a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLHandPoseClassifier.DataSource(__dst);
    switch(swift_getEnumCaseMultiPayload(__src, a3))
    {
      case 0u:
        v4 = type metadata accessor for URL(0);
        v16 = *(*(v4 - 8) + 32);
        v16(__dst, __src, v4);
        v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
        v16(&__dst[v5[12]], &__src[v5[12]], v4);
        *&__dst[v5[16]] = *&__src[v5[16]];
        *&__dst[v5[20]] = *&__src[v5[20]];
        v6 = a3;
        v7 = 0;
        goto LABEL_10;
      case 1u:
        v10 = type metadata accessor for URL(0);
        (*(*(v10 - 8) + 32))(__dst, __src, v10);
        v15 = 1;
        goto LABEL_9;
      case 2u:
        v9 = type metadata accessor for URL(0);
        (*(*(v9 - 8) + 32))(__dst, __src, v9);
        v15 = 2;
        goto LABEL_9;
      case 5u:
        v11 = type metadata accessor for DataFrame(0);
        (*(*(v11 - 8) + 32))(__dst, __src, v11);
        v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *&__dst[v12[12]] = *&__src[v12[12]];
        *&__dst[v12[16]] = *&__src[v12[16]];
        *&__dst[v12[20]] = *&__src[v12[20]];
        v15 = 5;
        goto LABEL_9;
      case 6u:
        v13 = type metadata accessor for DataFrame(0);
        (*(*(v13 - 8) + 32))(__dst, __src, v13);
        v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
        *&__dst[*(v14 + 48)] = *&__src[*(v14 + 48)];
        *&__dst[*(v14 + 64)] = *&__src[*(v14 + 64)];
        v15 = 6;
LABEL_9:
        v7 = v15;
        v6 = a3;
LABEL_10:
        swift_storeEnumTagMultiPayload(__dst, v6, v7);
        return __dst;
      default:
        return memcpy(__dst, __src, *(*(a3 - 8) + 64));
    }
  }

  return __dst;
}

uint64_t type metadata completion function for MLHandPoseClassifier.DataSource(uint64_t a1)
{
  v1 = type metadata accessor for URL(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v4 = *(v1 - 8) + 64;
    v12 = v4;
    v13 = v4;
    v14 = &unk_3482A8;
    v15 = &unk_3482A8;
    swift_getTupleTypeLayout(v11, 0, 4);
    v18[0] = v11;
    v18[1] = v4;
    v18[2] = v4;
    v18[3] = &unk_3482C0;
    v18[4] = &unk_3482D8;
    v5 = type metadata accessor for DataFrame(319);
    v2 = v5;
    if (v6 <= 0x3F)
    {
      v12 = *(v5 - 8) + 64;
      v7 = v12;
      v13 = &unk_3482A8;
      v14 = &unk_3482A8;
      v15 = &unk_3482A8;
      v2 = 0;
      swift_getTupleTypeLayout(v16, 0, 4);
      v18[5] = v16;
      swift_getTupleTypeLayout3(v17, v7, &unk_3482A8, &unk_3482A8);
      v18[6] = v17;
      swift_initEnumMetadataMultiPayload(a1, 256, 7, v18, v8, v9);
    }
  }

  return v2;
}

uint64_t static MLLinearRegressor.ModelParameters.firstIncompatibility(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 32) == *(a2 + 32))
  {
    v4 = *(a1 + 40);
    if (v4 == *(a2 + 40))
    {
      v5 = *(a1 + 48);
      if (v5 == *(a2 + 48))
      {
        v6 = *(a1 + 56);
        if (v6 == *(a2 + 56))
        {
          v7 = *(a1 + 64);
          if (v7 == *(a2 + 64))
          {
            v8 = *(a1 + 72);
            v9 = *(a2 + 72);
            if (v8 == v9)
            {
              v15 = 0;
              v14 = 0;
              v11 = 0;
              v12 = 0;
              result = 0;
              v13 = 0;
            }

            else
            {
              result = 0x65736C6166;
              v11 = 0x65736C6166;
              if (v8)
              {
                v11 = 1702195828;
              }

              v12 = (v8 ^ 1u | 0xFFFFFFFFFFFFFFE4) << 56;
              if (v9)
              {
                result = 1702195828;
              }

              v13 = (v9 ^ 1u | 0xFFFFFFFFFFFFFFE4) << 56;
              v14 = 0xEF676E696C616373;
              v15 = 0x2065727574616546;
            }
          }

          else
          {
            v14 = "e at least one element" + 0x8000000000000000;
            v27 = *(a2 + 64);
            v11 = Double.description.getter(v7);
            v12 = v22;
            result = Double.description.getter(v27);
            v15 = 0xD000000000000015;
          }
        }

        else
        {
          v26 = *(a2 + 56);
          v11 = Double.description.getter(v6);
          v12 = v21;
          result = Double.description.getter(v26);
          v14 = 0xE900000000000065;
          v15 = 0x7A69732070657453;
        }
      }

      else
      {
        v14 = 0xEA00000000007974;
        v25 = *(a2 + 48);
        v11 = Double.description.getter(v5);
        v12 = v20;
        result = Double.description.getter(v25);
        v15 = 0x6C616E657020324CLL;
      }
    }

    else
    {
      v14 = 0xEA00000000007974;
      v15 = 0x6C616E657020314CLL;
      v24 = *(a2 + 40);
      v11 = Double.description.getter(v4);
      v12 = v19;
      result = Double.description.getter(v24);
    }
  }

  else
  {
    v23 = *(a1 + 32);
    v16 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v18 = v17;
    v11 = v16;
    result = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v12 = v18;
    v14 = 0xEF736E6F69746172;
    v15 = 0x657469202E78614DLL;
  }

  *v3 = v15;
  v3[1] = v14;
  v3[2] = v11;
  v3[3] = v12;
  v3[4] = result;
  v3[5] = v13;
  return result;
}

uint64_t protocol witness for TrainingSessionDelegate.extractFeatures(from:) in conformance TreeClassifierTrainingSessionDelegate(uint64_t a1)
{
  v2 = swift_task_alloc(16);
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for TrainingSessionDelegate.extractFeatures(from:) in conformance TreeClassifierTrainingSessionDelegate;
  return ((&_s8CreateML23TrainingSessionDelegatePAAE15extractFeatures4fromSi_Sb8finishedtSi_tYaKFAA014TreeClassifiercdE0C_Tt0g5Tu + _s8CreateML23TrainingSessionDelegatePAAE15extractFeatures4fromSi_Sb8finishedtSi_tYaKFAA014TreeClassifiercdE0C_Tt0g5Tu))(a1);
}

{
  return protocol witness for TrainingSessionDelegate.evaluate(from:) in conformance SoundClassifierTrainingSessionDelegate(a1);
}

uint64_t protocol witness for TrainingSessionDelegate.extractFeatures(from:) in conformance MLStyleTransfer.TrainingSessionDelegate()
{
  v1 = swift_task_alloc(16);
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for TrainingSessionDelegate.evaluate(from:) in conformance SoundClassifierTrainingSessionDelegate;
  return _s8CreateML23TrainingSessionDelegatePAAE15extractFeatures4fromSi_Sb8finishedtSi_tYaKFAA013TreeRegressorcdE0C_Tt0g5();
}

uint64_t protocol witness for TrainingSessionDelegate.extractFeatures(from:) in conformance LogisticRegressionClassifierTrainingSessionDelegate(uint64_t a1)
{
  v2 = swift_task_alloc(16);
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for TrainingSessionDelegate.extractFeatures(from:) in conformance TreeClassifierTrainingSessionDelegate;
  return ((&_s8CreateML23TrainingSessionDelegatePAAE15extractFeatures4fromSi_Sb8finishedtSi_tYaKFAA028LogisticRegressionClassifiercdE0C_Tt0g5Tu + _s8CreateML23TrainingSessionDelegatePAAE15extractFeatures4fromSi_Sb8finishedtSi_tYaKFAA028LogisticRegressionClassifiercdE0C_Tt0g5Tu))(a1);
}

uint64_t protocol witness for TrainingSessionDelegate.extractFeatures(from:) in conformance ActivityClassifierTrainingSessionDelegate()
{
  v1 = swift_task_alloc(16);
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for TrainingSessionDelegate.extractFeatures(from:) in conformance TreeClassifierTrainingSessionDelegate;
  return _s8CreateML23TrainingSessionDelegatePAAE15extractFeatures4fromSi_Sb8finishedtSi_tYaKFAA013TreeRegressorcdE0C_Tt0g5();
}

uint64_t protocol witness for TrainingSessionDelegate.extractFeatures(from:) in conformance LinearRegressorTrainingSessionDelegate(uint64_t a1)
{
  v2 = swift_task_alloc(16);
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for TrainingSessionDelegate.extractFeatures(from:) in conformance TreeClassifierTrainingSessionDelegate;
  return ((&_s8CreateML23TrainingSessionDelegatePAAE15extractFeatures4fromSi_Sb8finishedtSi_tYaKFAA015LinearRegressorcdE0C_Tt0g5Tu + _s8CreateML23TrainingSessionDelegatePAAE15extractFeatures4fromSi_Sb8finishedtSi_tYaKFAA015LinearRegressorcdE0C_Tt0g5Tu))(a1);
}

uint64_t protocol witness for TrainingSessionDelegate.extractFeatures(from:) in conformance TreeRegressorTrainingSessionDelegate(uint64_t a1)
{
  v2 = swift_task_alloc(16);
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for TrainingSessionDelegate.extractFeatures(from:) in conformance TreeClassifierTrainingSessionDelegate;
  return ((&_s8CreateML23TrainingSessionDelegatePAAE15extractFeatures4fromSi_Sb8finishedtSi_tYaKFAA013TreeRegressorcdE0C_Tt0g5Tu + _s8CreateML23TrainingSessionDelegatePAAE15extractFeatures4fromSi_Sb8finishedtSi_tYaKFAA013TreeRegressorcdE0C_Tt0g5Tu))(a1);
}

void MLLinearRegressor.predictions(from:)(uint64_t a1)
{
  v22 = v2;
  v20 = v1;
  v19 = type metadata accessor for DataFrame(0);
  v5 = *(v19 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v17 = &v15;
  v9 = type metadata accessor for MLLinearRegressor(0);
  v10 = *(v9 + 28);
  v16 = v3;
  v11._rawValue = *(v3 + v10);
  v18 = a1;
  DataFrame.validateContainsColumns(_:context:)(v11, __PAIR128__(0xE700000000000000, 0x65727574616546));
  if (!v12)
  {
    v21 = v9;
    v22 = v5;
    v13 = v17;
    v14 = v16;
    MLLinearRegressor.Model.applied(to:eventHandler:)(v18, 0, 0);
    DataFrame.subscript.getter(*(v14 + *(v21 + 24)), *(v14 + *(v21 + 24) + 8));
    (*(v22 + 8))(v13, v19);
  }
}

uint64_t type metadata accessor for MLLinearRegressor(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLLinearRegressor;
  if (!type metadata singleton initialization cache for MLLinearRegressor)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLLinearRegressor);
  }

  return result;
}

uint64_t MLLinearRegressor.predictions(from:)(uint64_t a1, __m128 a2)
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
  MLLinearRegressor.predictions(from:)(&v13);
  if (v11)
  {
    return (*(v18 + 8))(&v13, v17);
  }

  *a2.i64 = (*(v18 + 8))(&v13, v17);
  return MLUntypedColumn.init(_:convertArraysToShapedArrays:)(&v13, 1, a2);
}

void MLLinearRegressor.evaluation(on:)(uint64_t a1)
{
  v33 = a1;
  v3 = v1;
  v4 = type metadata accessor for MLLinearRegressor(0);
  v30 = *(v4 - 8);
  v29 = *(v30 + 64);
  v5 = alloca(v29);
  v6 = alloca(v29);
  v34 = v25;
  v35 = type metadata accessor for DataFrame(0);
  v7 = *(v35 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v36 = v25;
  v28 = v4;
  v11 = *(v4 + 28);
  v27 = v2;
  DataFrame.validateContainsColumns(_:context:)(*(v2 + v11), __PAIR128__(0xE700000000000000, 0x65727574616546));
  if (!v12)
  {
    v32 = v7;
    v31 = v8;
    v37 = v3;
    v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
    inited = swift_initStackObject(v13, v26);
    inited[2] = 1;
    inited[3] = 2;
    v15 = *(v28 + 24);
    v16 = v27;
    v17 = *(v27 + v15 + 8);
    inited[4] = *(v27 + v15);
    inited[5] = v17;
    v17;
    v18 = v33;
    DataFrame.validateContainsColumns(_:context:)(inited, __PAIR128__(0xE500000000000000, 0x6C6562614CLL));
    swift_setDeallocating(inited);
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    if (!v12)
    {
      v19 = v32;
      (*(v32 + 16))(v36, v18, v35);
      outlined init with copy of MLTrainingSessionParameters(v16, v34, type metadata accessor for MLLinearRegressor);
      v20 = *(v19 + 80);
      v21 = ~*(v19 + 80) & (v20 + 16);
      v22 = *(v30 + 80);
      v23 = ~v22 & (v21 + v22 + v31);
      v24 = swift_allocObject(&unk_394E00, v23 + v29, v22 | v20 | 7);
      (*(v19 + 32))(v24 + v21, v36, v35);
      outlined init with take of MLClassifierMetrics(v34, v24 + v23, type metadata accessor for MLLinearRegressor);
      specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLLinearRegressor.computeMetrics(on:), v24);

      return;
    }

    v3 = v37;
  }

  *v3 = v12;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
}

uint64_t MLLinearRegressor.evaluation(on:)(uint64_t a1)
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
  MLLinearRegressor.evaluation(on:)(&v9);
  return (*(v3 + 8))(&v9, v2);
}

uint64_t MLLinearRegressor.write(to:metadata:)(uint64_t a1, const void *a2)
{
  v44 = v3;
  v49 = a2;
  v50 = a1;
  v4 = *(*(type metadata accessor for MLLinearRegressor.Model(0) - 8) + 64);
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
  result = static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(v50, 0x65527261656E694CLL, 0xEF726F7373657267, 0x6C65646F6D6C6DLL, 0xE700000000000000);
  if (!v2)
  {
    v45 = 0;
    v51 = &v34;
    v48 = v7;
    v49 = v11;
    v50 = v12;
    v17 = v46;
    outlined init with copy of MLTrainingSessionParameters(v44, v46, type metadata accessor for MLLinearRegressor.Model);
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
    outlined destroy of MLActivityClassifier.ModelParameters(v30, type metadata accessor for MLLinearRegressor.Model);
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

uint64_t MLLinearRegressor.write(toFile:metadata:)(uint64_t a1, uint64_t a2, const void *a3)
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
  MLLinearRegressor.write(to:metadata:)(v17, v17);
  return (*(v25 + 8))(v17, v10, v15);
}

unint64_t MLLinearRegressor.description.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for MLLinearRegressor(0);
  v5 = v2 + v4[8];
  v24 = MLLinearRegressor.ModelParameters.description.getter(0, a2);
  v7 = v6;
  v8 = v4[9];
  v19 = *(v3 + v8);
  v21 = *(v3 + v8 + 8);
  v23 = *(v3 + v8 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(v19, v21, v23);
  v26 = MLRegressorMetrics.description.getter();
  v10 = v9;
  outlined consume of Result<_RegressorMetrics, Error>(v19, v21, v23);
  v11 = v4[10];
  LOBYTE(v4) = *(v3 + v11 + 16) & 1;
  v20 = *(v3 + v11);
  v22 = *(v3 + v11 + 8);
  outlined copy of Result<_RegressorMetrics, Error>(v20, v22, *(v3 + v11 + 16));
  v18._countAndFlagsBits = MLRegressorMetrics.description.getter();
  v18._object = v12;
  outlined consume of Result<_RegressorMetrics, Error>(v20, v22, v4);
  v13._countAndFlagsBits = v24;
  v25 = v7;
  v13._object = v7;
  String.append(_:)(v13);
  v13._countAndFlagsBits = v26;
  v13._object = v10;
  String.append(_:)(v13);
  v13._countAndFlagsBits = 0xD00000000000001ELL;
  v13._object = "ActivityClassifier\n\nParameters\n" + 0x8000000000000000;
  String.append(_:)(v13);
  "ActivityClassifier\n\nParameters\n" + 0x8000000000000000;
  if (v4)
  {
    v14 = v10;
    object = v18._object;
  }

  else
  {
    String.append(_:)(v18);
    v16._countAndFlagsBits = 0xD000000000000020;
    object = "\nPerformance on Training Data\n" + 0x8000000000000000;
    v16._object = "\nPerformance on Training Data\n" + 0x8000000000000000;
    String.append(_:)(v16);
    v10;
    v14 = v18._object;
  }

  v14;
  object;
  v25;
  return 0xD00000000000001CLL;
}

NSAttributedString MLLinearRegressor.playgroundDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSAttributedString, NSAttributedString_ptr);
  v3._countAndFlagsBits = MLLinearRegressor.description.getter(0, &lazy cache variable for type metadata for NSAttributedString);
  v3._object = v4;
  result.super.isa = NSAttributedString.__allocating_init(string:)(v3).super.isa;
  v1[3].super.isa = v2;
  v1->super.isa = result.super.isa;
  return result;
}

uint64_t specialized CoreMLExportable.exportAsCoreMLModel()()
{
  v1[29] = v0;
  v2 = type metadata accessor for Model(0);
  v1[30] = v2;
  v3 = *(v2 - 8);
  v1[31] = v3;
  v1[32] = swift_task_alloc((*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized CoreMLExportable.exportAsCoreMLModel(), 0, 0);
}

{
  v8 = *(v0 + 232);
  v9 = *(v0 + 256);
  v1 = NSFullUserName();
  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(v2);
  v5 = v4;

  *(v0 + 88) = v3;
  *(v0 + 96) = v5;
  *(v0 + 104) = 0xD000000000000033;
  *(v0 + 112) = "RandomForestRegressor" + 0x8000000000000000;
  *(v0 + 120) = 0;
  *(v0 + 136) = 49;
  *(v0 + 144) = 0xE100000000000000;
  *(v0 + 152) = 0;
  qmemcpy((v0 + 160), (v0 + 88), 0x48uLL);
  *(v0 + 16) = v3;
  *(v0 + 24) = v5;
  *(v0 + 32) = 0xD000000000000033;
  *(v0 + 40) = "RandomForestRegressor" + 0x8000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 64) = 49;
  *(v0 + 72) = 0xE100000000000000;
  *(v0 + 80) = 0;
  outlined retain of MLModelMetadata((v0 + 88));
  outlined release of MLModelMetadata((v0 + 16), v0 + 160);
  specialized CoreMLExportable.export(metadata:)((v0 + 160));
  outlined release of MLModelMetadata((v0 + 88), v0 + 160);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLModel, MLModel_ptr);
  v6 = swift_task_alloc(208);
  *(v0 + 264) = v6;
  *v6 = v0;
  v6[1] = specialized CoreMLExportable.exportAsCoreMLModel();
  return static MLModel.compile(_:)(*(v0 + 256));
}

{
  v1[29] = v0;
  v2 = type metadata accessor for Model(0);
  v1[30] = v2;
  v3 = *(v2 - 8);
  v1[31] = v3;
  v1[32] = swift_task_alloc((*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized CoreMLExportable.exportAsCoreMLModel(), 0, 0);
}

{
  v8 = *(v0 + 232);
  v9 = *(v0 + 256);
  v1 = NSFullUserName();
  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(v2);
  v5 = v4;

  *(v0 + 88) = v3;
  *(v0 + 96) = v5;
  *(v0 + 104) = 0xD000000000000033;
  *(v0 + 112) = "RandomForestRegressor" + 0x8000000000000000;
  *(v0 + 120) = 0;
  *(v0 + 136) = 49;
  *(v0 + 144) = 0xE100000000000000;
  *(v0 + 152) = 0;
  qmemcpy((v0 + 160), (v0 + 88), 0x48uLL);
  *(v0 + 16) = v3;
  *(v0 + 24) = v5;
  *(v0 + 32) = 0xD000000000000033;
  *(v0 + 40) = "RandomForestRegressor" + 0x8000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 64) = 49;
  *(v0 + 72) = 0xE100000000000000;
  *(v0 + 80) = 0;
  outlined retain of MLModelMetadata((v0 + 88));
  outlined release of MLModelMetadata((v0 + 16), v0 + 160);
  specialized CoreMLExportable.export(metadata:)((v0 + 160));
  outlined release of MLModelMetadata((v0 + 88), v0 + 160);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLModel, MLModel_ptr);
  v6 = swift_task_alloc(208);
  *(v0 + 264) = v6;
  *v6 = v0;
  v6[1] = specialized CoreMLExportable.exportAsCoreMLModel();
  return static MLModel.compile(_:)(*(v0 + 256));
}

{
  v1[29] = v0;
  v2 = type metadata accessor for Model(0);
  v1[30] = v2;
  v3 = *(v2 - 8);
  v1[31] = v3;
  v1[32] = swift_task_alloc((*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized CoreMLExportable.exportAsCoreMLModel(), 0, 0);
}

{
  v8 = *(v0 + 232);
  v9 = *(v0 + 256);
  v1 = NSFullUserName();
  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(v2);
  v5 = v4;

  *(v0 + 88) = v3;
  *(v0 + 96) = v5;
  *(v0 + 104) = 0xD000000000000033;
  *(v0 + 112) = "RandomForestRegressor" + 0x8000000000000000;
  *(v0 + 120) = 0;
  *(v0 + 136) = 49;
  *(v0 + 144) = 0xE100000000000000;
  *(v0 + 152) = 0;
  qmemcpy((v0 + 160), (v0 + 88), 0x48uLL);
  *(v0 + 16) = v3;
  *(v0 + 24) = v5;
  *(v0 + 32) = 0xD000000000000033;
  *(v0 + 40) = "RandomForestRegressor" + 0x8000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 64) = 49;
  *(v0 + 72) = 0xE100000000000000;
  *(v0 + 80) = 0;
  outlined retain of MLModelMetadata((v0 + 88));
  outlined release of MLModelMetadata((v0 + 16), v0 + 160);
  specialized CoreMLExportable.export(metadata:)((v0 + 160));
  outlined release of MLModelMetadata((v0 + 88), v0 + 160);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLModel, MLModel_ptr);
  v6 = swift_task_alloc(208);
  *(v0 + 264) = v6;
  *v6 = v0;
  v6[1] = specialized CoreMLExportable.exportAsCoreMLModel();
  return static MLModel.compile(_:)(*(v0 + 256));
}

{
  v1[29] = v0;
  v2 = type metadata accessor for Model(0);
  v1[30] = v2;
  v3 = *(v2 - 8);
  v1[31] = v3;
  v1[32] = swift_task_alloc((*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized CoreMLExportable.exportAsCoreMLModel(), 0, 0);
}

{
  v8 = *(v0 + 232);
  v9 = *(v0 + 256);
  v1 = NSFullUserName();
  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(v2);
  v5 = v4;

  *(v0 + 88) = v3;
  *(v0 + 96) = v5;
  *(v0 + 104) = 0xD000000000000033;
  *(v0 + 112) = "RandomForestRegressor" + 0x8000000000000000;
  *(v0 + 120) = 0;
  *(v0 + 136) = 49;
  *(v0 + 144) = 0xE100000000000000;
  *(v0 + 152) = 0;
  qmemcpy((v0 + 160), (v0 + 88), 0x48uLL);
  *(v0 + 16) = v3;
  *(v0 + 24) = v5;
  *(v0 + 32) = 0xD000000000000033;
  *(v0 + 40) = "RandomForestRegressor" + 0x8000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 64) = 49;
  *(v0 + 72) = 0xE100000000000000;
  *(v0 + 80) = 0;
  outlined retain of MLModelMetadata((v0 + 88));
  outlined release of MLModelMetadata((v0 + 16), v0 + 160);
  specialized CoreMLExportable.export(metadata:)(v0 + 160);
  outlined release of MLModelMetadata((v0 + 88), v0 + 160);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLModel, MLModel_ptr);
  v6 = swift_task_alloc(208);
  *(v0 + 264) = v6;
  *v6 = v0;
  v6[1] = specialized CoreMLExportable.exportAsCoreMLModel();
  return static MLModel.compile(_:)(*(v0 + 256));
}

{
  v1[29] = v0;
  v2 = type metadata accessor for Model(0);
  v1[30] = v2;
  v3 = *(v2 - 8);
  v1[31] = v3;
  v1[32] = swift_task_alloc((*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized CoreMLExportable.exportAsCoreMLModel(), 0, 0);
}

{
  v8 = *(v0 + 232);
  v9 = *(v0 + 256);
  v1 = NSFullUserName();
  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(v2);
  v5 = v4;

  *(v0 + 88) = v3;
  *(v0 + 96) = v5;
  *(v0 + 104) = 0xD000000000000033;
  *(v0 + 112) = "RandomForestRegressor" + 0x8000000000000000;
  *(v0 + 120) = 0;
  *(v0 + 136) = 49;
  *(v0 + 144) = 0xE100000000000000;
  *(v0 + 152) = 0;
  qmemcpy((v0 + 160), (v0 + 88), 0x48uLL);
  *(v0 + 16) = v3;
  *(v0 + 24) = v5;
  *(v0 + 32) = 0xD000000000000033;
  *(v0 + 40) = "RandomForestRegressor" + 0x8000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 64) = 49;
  *(v0 + 72) = 0xE100000000000000;
  *(v0 + 80) = 0;
  outlined retain of MLModelMetadata((v0 + 88));
  outlined release of MLModelMetadata((v0 + 16), v0 + 160);
  specialized CoreMLExportable.export(metadata:)((v0 + 160));
  outlined release of MLModelMetadata((v0 + 88), v0 + 160);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLModel, MLModel_ptr);
  v6 = swift_task_alloc(208);
  *(v0 + 264) = v6;
  *v6 = v0;
  v6[1] = specialized CoreMLExportable.exportAsCoreMLModel();
  return static MLModel.compile(_:)(*(v0 + 256));
}

{
  v1 = *(v0 + 256);
  (*(*(v0 + 248) + 8))(v1, *(v0 + 240));
  v1;
  return (*(v0 + 8))(*(v0 + 280));
}

{
  (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));
  v1 = *(v0 + 272);
  *(v0 + 256);
  return (*(v0 + 8))();
}

{
  return specialized CoreMLExportable.exportAsCoreMLModel()();
}

{
  return specialized CoreMLExportable.exportAsCoreMLModel()();
}

{
  return specialized CoreMLExportable.exportAsCoreMLModel()();
}

uint64_t specialized CoreMLExportable.exportAsCoreMLModel()(uint64_t a1)
{
  v5 = *(*v2 + 264);
  v4 = *v2;
  *(*v2 + 272) = v1;
  v5;
  if (v1)
  {
    v6 = specialized CoreMLExportable.exportAsCoreMLModel();
  }

  else
  {
    *(v4 + 280) = a1;
    v6 = specialized CoreMLExportable.exportAsCoreMLModel();
  }

  return swift_task_switch(v6, 0, 0);
}

{
  v5 = *(*v2 + 264);
  v4 = *v2;
  *(*v2 + 272) = v1;
  v5;
  if (v1)
  {
    v6 = specialized CoreMLExportable.exportAsCoreMLModel();
  }

  else
  {
    *(v4 + 280) = a1;
    v6 = specialized CoreMLExportable.exportAsCoreMLModel();
  }

  return swift_task_switch(v6, 0, 0);
}

{
  v5 = *(*v2 + 264);
  v4 = *v2;
  *(*v2 + 272) = v1;
  v5;
  if (v1)
  {
    v6 = specialized CoreMLExportable.exportAsCoreMLModel();
  }

  else
  {
    *(v4 + 280) = a1;
    v6 = specialized CoreMLExportable.exportAsCoreMLModel();
  }

  return swift_task_switch(v6, 0, 0);
}

uint64_t _s8CreateML18MLRegressorMetricsV4data20predictionColumnName5modelAC11TabularData0K5FrameV_SSxtYaKc0A12MLComponents0J11TransformerRzlufCAA17MLLinearRegressorV5ModelV_Tt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a5;
  v5[11] = a4;
  v5[10] = a3;
  v5[9] = a2;
  v5[8] = a1;
  v6 = type metadata accessor for AnyColumn(0);
  v5[13] = v6;
  v7 = *(v6 - 8);
  v5[14] = v7;
  v5[15] = swift_task_alloc((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DataFrame(0);
  v5[16] = v8;
  v9 = *(v8 - 8);
  v5[17] = v9;
  v5[18] = swift_task_alloc((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  MLLinearRegressor.Model.applied(to:eventHandler:)(a2, 0, 0);
  v5[19] = 0;
  return swift_task_switch(_s8CreateML18MLRegressorMetricsV4data20predictionColumnName5modelAC11TabularData0K5FrameV_SSxtYaKc0A12MLComponents0J11TransformerRzlufCAA17MLLinearRegressorV5ModelV_Tt3g5TY0_, 0, 0);
}

uint64_t _s8CreateML18MLRegressorMetricsV4data20predictionColumnName5modelAC11TabularData0K5FrameV_SSxtYaKc0A12MLComponents0J11TransformerRzlufCAA17MLLinearRegressorV5ModelV_Tt3g5TY0_()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[14];
  v4 = v0[13];
  DataFrame.subscript.getter(v0[10], v0[11]);
  v5 = AnyColumn.convertedToDoubles()();
  v6 = *(v3 + 8);
  v6(v2, v4);
  v46 = v5;
  if (!v5)
  {
    v58 = v0[18];
    v61 = v0[17];
    v47 = v0[16];
    v18 = v0[15];
    v44 = v0[13];
    v52 = v0[12];
    v19 = v0[11];
    v49 = v0[9];
    v55 = v6;
    v20 = v0[10];
    *&v40 = 0;
    *(&v40 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v21._object = "Expected a linear classifier." + 0x8000000000000000;
    v21._countAndFlagsBits = 0xD000000000000031;
    String.append(_:)(v21);
    DataFrame.subscript.getter(v20, v19);
    v19;
    v22 = AnyColumn.wrappedElementType.getter();
    v55(v18, v44);
    v23 = _typeName(_:qualified:)(v22, 0);
    v25 = v24;
    v21._countAndFlagsBits = v23;
    v21._object = v24;
    String.append(_:)(v21);
    v25;
    v21._countAndFlagsBits = 46;
    v21._object = 0xE100000000000000;
    String.append(_:)(v21);
    v21._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v21._object, 0, 0);
    *v26 = v40;
    *(v26 + 16) = 0;
    *(v26 + 32) = 0;
    *(v26 + 48) = 1;
    swift_willThrow(&type metadata for MLCreateError, v21._object);
    outlined destroy of MLActivityClassifier.ModelParameters(v52, type metadata accessor for MLLinearRegressor.Model);
    v27 = *(v61 + 8);
    v27(v49, v47);
LABEL_6:
    v36 = v0[18];
    v37 = v0[15];
    v27(v36, v0[16]);
    v36;
    v37;
    v17 = v0[1];
    return v17();
  }

  v7 = v0[15];
  v8 = v0[13];
  v9 = v0[9];
  DataFrame.subscript.getter(v0[10], v0[11]);
  v10 = AnyColumn.convertedToDoubles()();
  v6(v7, v8);
  if (!v10)
  {
    v53 = v0[17];
    v50 = v0[16];
    v28 = v0[15];
    v56 = v0[13];
    v45 = v0[12];
    v29 = v0[11];
    v62 = v0[9];
    v59 = v0[10];

    *&v41 = 0;
    *(&v41 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v30._object = "Expected a linear classifier." + 0x8000000000000000;
    v30._countAndFlagsBits = 0xD000000000000031;
    String.append(_:)(v30);
    DataFrame.subscript.getter(v59, v29);
    v29;
    v31 = AnyColumn.wrappedElementType.getter();
    v6(v28, v56);
    v32 = _typeName(_:qualified:)(v31, 0);
    v34 = v33;
    v30._countAndFlagsBits = v32;
    v30._object = v33;
    String.append(_:)(v30);
    v34;
    v30._countAndFlagsBits = 46;
    v30._object = 0xE100000000000000;
    String.append(_:)(v30);
    v30._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v30._object, 0, 0);
    *v35 = v41;
    *(v35 + 16) = 0;
    *(v35 + 32) = 0;
    *(v35 + 48) = 1;
    swift_willThrow(&type metadata for MLCreateError, v30._object);
    outlined destroy of MLActivityClassifier.ModelParameters(v45, type metadata accessor for MLLinearRegressor.Model);
    v27 = *(v53 + 8);
    v27(v62, v50);
    goto LABEL_6;
  }

  v51 = v0[18];
  v54 = v0[17];
  v43 = v0[16];
  v60 = v0[15];
  v39 = v0[12];
  v48 = v0[8];
  v57 = v0[9];
  v0[11];
  v0[3] = v46;
  v0[4] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ContiguousArray<Double>);
  v12 = lazy protocol witness table accessor for type Double and conformance Double();
  v13 = v10;
  v14 = lazy protocol witness table accessor for type ContiguousArray<Double> and conformance ContiguousArray<A>();
  maximumAbsoluteError<A, B, C>(_:_:)(v0 + 3, v0 + 4, &type metadata for Double, v11, v11, v12, v14, v14);
  v42 = v0[2];
  v0[6] = v46;
  v0[7] = v13;
  rootMeanSquaredError<A, B, C>(_:_:)(v0 + 6, v0 + 7, &type metadata for Double, v11, v11, v12, v14, v14);
  outlined destroy of MLActivityClassifier.ModelParameters(v39, type metadata accessor for MLLinearRegressor.Model);
  v15 = *(v54 + 8);
  v15(v57, v43);
  v15(v51, v43);

  v16 = v0[5];
  *v48 = v42;
  *(v48 + 8) = v16;
  *(v48 + 16) = 0;
  v51;
  v60;
  v17 = v0[1];
  return v17();
}

uint64_t _s8CreateML18MLRegressorMetricsV4data20predictionColumnName5modelAC11TabularData0K5FrameV_SSxtYaKc0A12MLComponents0J11TransformerRzlufCAA17MLLinearRegressorV5ModelV_Tt3g5TY1_()
{
  v1 = *(v0 + 136);
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 96), type metadata accessor for MLLinearRegressor.Model);
  v2 = *(v0 + 152);
  v3 = *(v0 + 144);
  v4 = *(v0 + 120);
  (*(v1 + 8))(*(v0 + 72), *(v0 + 128));
  v3;
  v4;
  return (*(v0 + 8))();
}

uint64_t MLLinearRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(void (*a1)(uint64_t *, uint64_t, uint64_t), uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v135 = a4;
  v136 = a3;
  v7 = v5;
  v133 = a2;
  v123 = v6;
  v142 = a5;
  v140 = a1;
  v8 = type metadata accessor for MLLinearRegressor(0);
  v119 = *(v8 - 8);
  v127 = *(v119 + 64);
  v9 = alloca(v127);
  v10 = alloca(v127);
  v126 = &v104;
  v137 = type metadata accessor for DataFrame(0);
  v144 = *(v137 - 8);
  v11 = *(v144 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v130 = &v104;
  v129 = v11;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v128 = &v104;
  v118 = *(type metadata accessor for MLLinearRegressor.Model(0) - 8);
  v16 = *(v118 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v116 = &v104;
  v117 = v16;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v139 = &v104;
  v132 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearRegressor<Double>.Configuration);
  v125 = *(v132 - 1);
  v21 = *(v125 + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v131 = &v104;
  v24 = alloca(v21);
  v25 = alloca(v21);
  v113 = &v104;
  v114 = type metadata accessor for MLLinearRegressor.Regressor(0);
  v26 = *(*(v114 - 8) + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v138 = &v104;
  v124 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  v29 = *(*(v124 - 1) + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v145 = &v104;
  v121 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v32 = *(*(v121 - 8) + 64);
  v33 = alloca(v32);
  v34 = alloca(v32);
  v120 = &v104;
  v35 = alloca(v32);
  v36 = alloca(v32);
  v143 = &v104;
  v37 = *(v8 + 36);
  *(v7 + v37 + 16) = 0;
  *(v7 + v37) = 0;
  v115 = v8;
  v38 = *(v8 + 40);
  v39 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v40 = swift_allocError(&type metadata for MLCreateError, v39, 0, 0);
  *v41 = 0xD0000000000000C0;
  *(v41 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v41 + 16) = 0;
  *(v41 + 32) = 0;
  *(v41 + 48) = 0;
  *(v7 + v38) = v40;
  *(v7 + v38 + 8) = 0;
  v122 = v38;
  *(v7 + v38 + 16) = 1;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v142, &v104, &demangling cache variable for type metadata for Any?);
  if (!v105)
  {
    BUG();
  }

  v141 = v7;
  v134 = v7 + v37;
  v42 = v143;
  v43 = v143 + *(v121 + 48);
  outlined init with take of Any(&v104, &v111);
  swift_dynamicCast(v145, &v111, &type metadata for Any + 8, v124, 7);
  v44 = v140;
  v45 = v123;
  MLLinearRegressor.ModelParameters.ValidationData.generateDataFrames(trainingData:)(v42, v43, v140);
  if (v45)
  {
    v136;
    v135;
    outlined destroy of MLLinearRegressor.ModelParameters(v142);
    (*(v144 + 8))(v44, v137);
    outlined destroy of MLActivityClassifier.ModelParameters(v145, type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData);
LABEL_4:
    v46 = v141;
    v48 = v134;
LABEL_6:
    outlined consume of Result<_RegressorMetrics, Error>(*v48, *(v48 + 8), *(v48 + 16));
    return outlined consume of Result<_RegressorMetrics, Error>(*(v46 + v122), *(v46 + v122 + 8), *(v46 + v122 + 16));
  }

  outlined destroy of MLActivityClassifier.ModelParameters(v145, type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData);
  v47 = v135;
  v50 = static _FeatureUtilities.selectFeaturesFromTrainingData(trainingData:targetColumn:featureColumns:)(v143, v133, v136, v135);
  v47;
  outlined init with copy of MLLinearRegressor.ModelParameters(v142, &v111);
  v51 = v138;
  *v138 = v133;
  v52 = v136;
  *(v51 + 8) = v136;
  *(v51 + 16) = v50;
  outlined init with copy of MLLinearRegressor.ModelParameters(&v111, v51 + 24);
  v145 = 0;
  outlined init with copy of MLLinearRegressor.ModelParameters(&v111, &v104);
  v53 = v52;
  v54 = lazy protocol witness table accessor for type Double and conformance Double();
  v53;
  v135 = v50;
  v50;
  v55 = v113;
  LinearRegressor.Configuration.init()(&type metadata for Double, &protocol witness table for Double, v54);
  v56 = v132;
  LinearRegressor.Configuration.maximumIterations.setter(v106, v132);
  LinearRegressor.Configuration.l1Penalty.setter(v56, v107);
  LinearRegressor.Configuration.l2Penalty.setter(v56, v108);
  LinearRegressor.Configuration.stepSize.setter(v56, v109);
  LinearRegressor.Configuration.convergenceThreshold.setter(v56, v110);
  outlined destroy of MLLinearRegressor.ModelParameters(&v104);
  v57 = v125;
  (*(v125 + 16))(v131, v55, v56);
  v58 = *(v114 + 28);
  BaseLinearRegressor.init(configuration:)(v131);
  outlined destroy of MLLinearRegressor.ModelParameters(&v111);
  (*(v57 + 8))(v55, v56);
  v59 = v143;
  v60 = v143;
  v61 = v138;
  v62 = v145;
  MLLinearRegressor.Regressor.fitted(to:validateOn:eventHandler:)(v143, v43, 0, 0);
  if (v62)
  {
    v136;
    v135;
    outlined destroy of MLLinearRegressor.ModelParameters(v142);
    (*(v144 + 8))(v140, v137);
    outlined destroy of MLActivityClassifier.ModelParameters(v61, type metadata accessor for MLLinearRegressor.Regressor);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v59, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    goto LABEL_4;
  }

  v145 = 0;
  if (!AnalyticsReporter.init()())
  {
    v63 = DataFrame.shape.getter(v60);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_linearRegressor, __PAIR128__(("vectorized_features" + 0x8000000000000000), 0xD000000000000015), v63);
  }

  v64 = v115;
  v65 = v115[6];
  v66 = v141;
  *(v141 + v65) = v133;
  *(v66 + v65 + 8) = v136;
  v123 = v66 + v64[8];
  outlined init with copy of MLLinearRegressor.ModelParameters(v142, v123);
  *(v66 + v64[7]) = v135;
  v67 = v116;
  outlined init with copy of MLTrainingSessionParameters(v139, v116, type metadata accessor for MLLinearRegressor.Model);
  v68 = *(v118 + 80);
  v69 = ~*(v118 + 80) & (v68 + 16);
  v70 = swift_allocObject(&unk_394E28, v69 + v117, v68 | 7);
  outlined init with take of MLClassifierMetrics(v67, v70 + v69, type metadata accessor for MLLinearRegressor.Model);
  v71 = v145;
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLLinearRegressor.init(trainingData:targetColumn:featureColumns:parameters:), v70);
  v145 = v71;
  if (v71)
  {

    outlined destroy of MLLinearRegressor.ModelParameters(v142);
    (*(v144 + 8))(v140, v137);
    outlined destroy of MLActivityClassifier.ModelParameters(v139, type metadata accessor for MLLinearRegressor.Model);
    outlined destroy of MLActivityClassifier.ModelParameters(v138, type metadata accessor for MLLinearRegressor.Regressor);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v143, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v135;
    v136;
    v46 = v141;
    v48 = v134;
LABEL_16:
    outlined destroy of MLLinearRegressor.ModelParameters(v123);
    goto LABEL_6;
  }

  v73 = v72;

  v74 = v64[5];
  v124 = v73;
  v75 = v141;
  *(v141 + v74) = v73;
  outlined init with copy of MLTrainingSessionParameters(v139, v75, type metadata accessor for MLLinearRegressor.Model);
  v76 = v144;
  v131 = *(v144 + 16);
  (v131)(v128, v143, v137);
  outlined init with copy of MLTrainingSessionParameters(v75, v126, type metadata accessor for MLLinearRegressor);
  v77 = *(v76 + 80);
  v78 = ~*(v76 + 80) & (v77 + 16);
  v79 = *(v119 + 80);
  v80 = ~v79 & (v78 + v79 + v129);
  v81 = v79 | v77 | 7;
  v127 += v80;
  v82 = swift_allocObject(&unk_394E50, v127, v81);
  v133 = v78;
  v83 = v82 + v78;
  v84 = *(v144 + 32);
  v84(v83, v128, v137);
  outlined init with take of MLClassifierMetrics(v126, v80 + v82, type metadata accessor for MLLinearRegressor);
  v85 = v145;
  specialized blockAwait<A>(_:)(&closure #1 in MLLinearRegressor.computeMetrics(on:)partial apply, v82);
  v145 = v85;
  if (v85)
  {

    outlined destroy of MLLinearRegressor.ModelParameters(v142);
    (*(v144 + 8))(v140, v137);
LABEL_15:
    outlined destroy of MLActivityClassifier.ModelParameters(v139, type metadata accessor for MLLinearRegressor.Model);
    outlined destroy of MLActivityClassifier.ModelParameters(v138, type metadata accessor for MLLinearRegressor.Regressor);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v143, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v48 = v134;
    v46 = v141;
    outlined destroy of MLActivityClassifier.ModelParameters(v141, type metadata accessor for MLLinearRegressor.Model);
    v135;
    v136;

    goto LABEL_16;
  }

  v132 = v84;
  v125 = v81;
  v129 = v80;

  v86 = v112;
  v87 = v134;
  outlined consume of Result<_RegressorMetrics, Error>(*v134, *(v134 + 8), *(v134 + 16));
  *v87 = v111;
  *(v87 + 16) = v86;
  v88 = v120;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v143, v120, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v89 = v88 + *(v121 + 48);
  v90 = v137;
  if (__swift_getEnumTagSinglePayload(v89, 1, v137) == 1)
  {
    outlined destroy of MLLinearRegressor.ModelParameters(v142);
    v91 = v89;
    v92 = *(v144 + 8);
    v92(v140, v90);
    outlined destroy of MLActivityClassifier.ModelParameters(v139, type metadata accessor for MLLinearRegressor.Model);
    outlined destroy of MLActivityClassifier.ModelParameters(v138, type metadata accessor for MLLinearRegressor.Regressor);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v143, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v91, &demangling cache variable for type metadata for DataFrame?);
    return (v92)(v88, v90);
  }

  else
  {
    v93 = v130;
    (v132)(v130, v89, v90);
    v94 = v90;
    v144 = *(v144 + 8);
    (v144)(v88, v90);
    v95 = v128;
    (v131)(v128, v93, v94);
    v96 = v126;
    outlined init with copy of MLTrainingSessionParameters(v141, v126, type metadata accessor for MLLinearRegressor);
    v97 = swift_allocObject(&unk_394E78, v127, v125);
    (v132)(v97 + v133, v95, v94);
    outlined init with take of MLClassifierMetrics(v96, v97 + v129, type metadata accessor for MLLinearRegressor);
    v98 = v145;
    specialized blockAwait<A>(_:)(&closure #1 in MLLinearRegressor.computeMetrics(on:)partial apply, v97);
    v145 = v98;
    if (v98)
    {

      outlined destroy of MLLinearRegressor.ModelParameters(v142);
      v99 = v144;
      (v144)(v140, v94);
      v99(v130, v94);
      goto LABEL_15;
    }

    outlined destroy of MLLinearRegressor.ModelParameters(v142);
    v100 = v144;
    (v144)(v140, v94);
    v100(v130, v94);
    outlined destroy of MLActivityClassifier.ModelParameters(v139, type metadata accessor for MLLinearRegressor.Model);
    outlined destroy of MLActivityClassifier.ModelParameters(v138, type metadata accessor for MLLinearRegressor.Regressor);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v143, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v101 = v112;
    v102 = v122;
    v103 = v141;
    result = outlined consume of Result<_RegressorMetrics, Error>(*(v141 + v122), *(v141 + v122 + 8), *(v141 + v122 + 16));
    *(v103 + v102) = v111;
    *(v103 + v102 + 16) = v101;
  }

  return result;
}