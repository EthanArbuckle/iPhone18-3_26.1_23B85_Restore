char MLProgress.phase.setter(char *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

uint64_t MLProgress.totalItemCount.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t MLProgress.metrics.setter(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 40), a2;
  *(v2 + 40) = a1;
  return result;
}

uint64_t MLProgress.init(phase:)(char *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  result = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v4);
  *v2 = 0;
  *(v2 + 8) = v3;
  *(v2 + 16) = 0;
  *(v2 + 32) = 1;
  *(v2 + 40) = result;
  return result;
}

void MLProgress.init(progress:)(id a1)
{
  v2 = a1;
  v3 = v1;
  v4 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v67 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v4);
  v5 = [a1 userInfo];
  v6 = v5;
  v60 = type metadata accessor for NSProgressUserInfoKey(0);
  v66 = &type metadata for Any + 8;
  v61 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type NSProgressUserInfoKey and conformance NSProgressUserInfoKey, type metadata accessor for NSProgressUserInfoKey, &protocol conformance descriptor for NSProgressUserInfoKey);
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(v6, v60, &type metadata for Any + 8, v61);

  if (one-time initialization token for elapsedTimeKey != -1)
  {
    swift_once(&one-time initialization token for elapsedTimeKey, one-time initialization function for elapsedTimeKey);
  }

  v8 = static MLProgress.elapsedTimeKey;
  specialized Dictionary.subscript.getter(v8, v7);

  v7;
  if (!*(&v64 + 1))
  {
    goto LABEL_18;
  }

  v9 = v66;
  if (!swift_dynamicCast(v56, &v63, v66, &type metadata for Double, 6))
  {
    goto LABEL_19;
  }

  v52 = *&v56[0];
  v10 = [a1 userInfo];
  v11 = v10;
  v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(v11, v60, v9, v61);

  if (one-time initialization token for phaseKey != -1)
  {
    swift_once(&one-time initialization token for phaseKey, one-time initialization function for phaseKey);
  }

  v13 = static MLProgress.phaseKey;
  specialized Dictionary.subscript.getter(v13, v12);

  v12;
  if (!*(&v64 + 1))
  {
    goto LABEL_18;
  }

  v14 = v66;
  if (!swift_dynamicCast(v56, &v63, v66, &type metadata for MLPhase, 6))
  {
LABEL_19:
    v67;

    goto LABEL_20;
  }

  v53 = LOBYTE(v56[0]);
  v15 = [a1 userInfo];
  v16 = v15;
  v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(v16, v60, v14, v61);

  if (one-time initialization token for itemCountKey != -1)
  {
    swift_once(&one-time initialization token for itemCountKey, one-time initialization function for itemCountKey);
  }

  v18 = static MLProgress.itemCountKey;
  specialized Dictionary.subscript.getter(v18, v17);

  v17;
  if (!*(&v64 + 1))
  {
LABEL_18:

    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v63, &demangling cache variable for type metadata for Any?);
    v67;
LABEL_20:
    *(v3 + 32) = 0;
    *(v3 + 16) = 0;
    *v3 = 0;
    return;
  }

  v19 = v66;
  if (!swift_dynamicCast(v56, &v63, v66, &type metadata for Int, 6))
  {
    goto LABEL_19;
  }

  v54 = *&v56[0];
  v20 = [a1 userInfo];
  v21 = v20;
  v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(v21, v60, v19, v61);

  if (one-time initialization token for totalItemCountKey != -1)
  {
    swift_once(&one-time initialization token for totalItemCountKey, one-time initialization function for totalItemCountKey);
  }

  v23 = static MLProgress.totalItemCountKey;
  specialized Dictionary.subscript.getter(v23, v22);

  v22;
  if (*(&v64 + 1))
  {
    v24 = swift_dynamicCast(v56, &v63, v66, &type metadata for Int, 6);
    if (v24)
    {
      v25 = *&v56[0];
    }

    else
    {
      v25 = 0;
    }

    v26 = v24 ^ 1;
  }

  else
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v63, &demangling cache variable for type metadata for Any?);
    v26 = 1;
    v25 = 0;
  }

  v68 = v26;
  v55 = v25;
  v27 = 0;
  v57 = v3;
  v62 = a1;
  do
  {
    v28 = *(&outlined read-only object #0 of static MLProgress.Metric.allCases.getter + v27 + 32);
    if (v28 != 6 || type metadata accessor for URL(0) == &type metadata for Double)
    {
      v29 = [v2 userInfo];
      v30 = v29;
      v31 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(v30, v60, v66, v61);

      switch(v28)
      {
        case 0:
          v32 = &static MLProgress.lossKey;
          if (one-time initialization token for lossKey != -1)
          {
            swift_once(&one-time initialization token for lossKey, one-time initialization function for lossKey);
            v32 = &static MLProgress.lossKey;
          }

          break;
        case 1:
          v32 = &static MLProgress.contentLossKey;
          if (one-time initialization token for contentLossKey != -1)
          {
            swift_once(&one-time initialization token for contentLossKey, one-time initialization function for contentLossKey);
            v32 = &static MLProgress.contentLossKey;
          }

          break;
        case 2:
          v32 = &static MLProgress.styleLossKey;
          if (one-time initialization token for styleLossKey != -1)
          {
            swift_once(&one-time initialization token for styleLossKey, one-time initialization function for styleLossKey);
            v32 = &static MLProgress.styleLossKey;
          }

          break;
        case 3:
          v32 = &static MLProgress.accuracyKey;
          if (one-time initialization token for accuracyKey != -1)
          {
            swift_once(&one-time initialization token for accuracyKey, one-time initialization function for accuracyKey);
            v32 = &static MLProgress.accuracyKey;
          }

          break;
        case 4:
          v32 = &static MLProgress.validationLossKey;
          if (one-time initialization token for validationLossKey != -1)
          {
            swift_once(&one-time initialization token for validationLossKey, one-time initialization function for validationLossKey);
            v32 = &static MLProgress.validationLossKey;
          }

          break;
        case 5:
          v32 = &static MLProgress.validationAccuracyKey;
          if (one-time initialization token for validationAccuracyKey != -1)
          {
            swift_once(&one-time initialization token for validationAccuracyKey, one-time initialization function for validationAccuracyKey);
            v32 = &static MLProgress.validationAccuracyKey;
          }

          break;
        case 6:
          v32 = &static MLProgress.stylizedImageKey;
          if (one-time initialization token for stylizedImageKey != -1)
          {
            swift_once(&one-time initialization token for stylizedImageKey, one-time initialization function for stylizedImageKey);
            v32 = &static MLProgress.stylizedImageKey;
          }

          break;
        case 7:
          v32 = &static MLProgress.rootMeanSquaredErrorKey;
          if (one-time initialization token for rootMeanSquaredErrorKey != -1)
          {
            swift_once(&one-time initialization token for rootMeanSquaredErrorKey, one-time initialization function for rootMeanSquaredErrorKey);
            v32 = &static MLProgress.rootMeanSquaredErrorKey;
          }

          break;
        case 8:
          v32 = &static MLProgress.maximumErrorKey;
          if (one-time initialization token for maximumErrorKey != -1)
          {
            swift_once(&one-time initialization token for maximumErrorKey, one-time initialization function for maximumErrorKey);
            v32 = &static MLProgress.maximumErrorKey;
          }

          break;
        case 9:
          v32 = &static MLProgress.validationRootMeanSquaredErrorKey;
          if (one-time initialization token for validationRootMeanSquaredErrorKey != -1)
          {
            swift_once(&one-time initialization token for validationRootMeanSquaredErrorKey, one-time initialization function for validationRootMeanSquaredErrorKey);
            v32 = &static MLProgress.validationRootMeanSquaredErrorKey;
          }

          break;
        case 10:
          v32 = &static MLProgress.validationMaximumErrorKey;
          if (one-time initialization token for validationMaximumErrorKey != -1)
          {
            swift_once(&one-time initialization token for validationMaximumErrorKey, one-time initialization function for validationMaximumErrorKey);
            v32 = &static MLProgress.validationMaximumErrorKey;
          }

          break;
      }

      v33 = *v32;
      v34 = v33;
      if (*(v31 + 16) && (v35 = specialized __RawDictionaryStorage.find<A>(_:)(v33), (v36 & 1) != 0))
      {
        outlined init with copy of Any(*(v31 + 56) + 32 * v35, &v63);
      }

      else
      {
        v64 = 0;
        v63 = 0;
      }

      v31;
      if (!*(&v64 + 1))
      {
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v63, &demangling cache variable for type metadata for Any?);
LABEL_61:
        v2 = v62;
        goto LABEL_62;
      }

      v65 = v28;
      if (!swift_dynamicCast(v56, &v63, v66, &type metadata for Double, 6))
      {
        goto LABEL_61;
      }

      *(&v64 + 1) = &type metadata for Double;
      *&v63 = *&v56[0];
      outlined init with take of Any(&v63, v56);
      v37 = v67;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v67);
      v59 = v37;
      v58 = v65;
      v39 = specialized __RawDictionaryStorage.find<A>(_:)(v65);
      v69 = v40;
      v41 = (v40 & 1) == 0;
      v42 = __OFADD__(*(v37 + 16), v41);
      v43 = *(v37 + 16) + v41;
      if (v42)
      {
        BUG();
      }

      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<MLProgress.Metric, Any>);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v43))
      {
        v39 = specialized __RawDictionaryStorage.find<A>(_:)(v58);
        LOBYTE(v45) = v45 & 1;
        LOBYTE(v46) = v69;
        v3 = v57;
        if ((v69 & 1) != v45)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for MLProgress.Metric, v43, v45, v46, v44);
          BUG();
        }

        v2 = v62;
      }

      else
      {
        v3 = v57;
        v2 = v62;
        LOBYTE(v46) = v69;
      }

      v47 = v59;
      v67 = v59;
      if (v46)
      {
        v48 = (*(v59 + 56) + 32 * v39);
        __swift_destroy_boxed_opaque_existential_1Tm(v48);
        outlined init with take of Any(v56, v48);
      }

      else
      {
        *(v59 + 8 * (v39 >> 6) + 64) |= 1 << v39;
        *(*(v47 + 48) + v39) = v65;
        outlined init with take of Any(v56, (*(v47 + 56) + 32 * v39));
        v49 = *(v67 + 16);
        v42 = __OFADD__(1, v49);
        v50 = v49 + 1;
        if (v42)
        {
          BUG();
        }

        *(v67 + 16) = v50;
      }
    }

LABEL_62:
    ++v27;
  }

  while (v27 != 11);

  v51 = v68;
  *v3 = v52;
  *(v3 + 8) = v53;
  *(v3 + 16) = v54;
  *(v3 + 24) = v55;
  *(v3 + 32) = v51 & 1;
  *(v3 + 40) = v67;
}

CreateML::MLProgress::Metric_optional __swiftcall MLProgress.Metric.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MLProgress.Metric.init(rawValue:), rawValue);
  rawValue._object, rawValue._countAndFlagsBits;
  result.value = CreateML_MLProgress_Metric_unknownDefault;
  if (v3 < 0xB)
  {
    result.value = v3;
  }

  v2->value = result.value;
  return result;
}

unint64_t MLProgress.Metric.rawValue.getter()
{
  switch(*v0)
  {
    case 0:
      v1 = *v0;
      result = 1936945004;
      break;
    case 1:
      result = 0x4C746E65746E6F63;
      break;
    case 2:
      result = 0x736F4C656C797473;
      break;
    case 3:
      result = 0x7963617275636361;
      break;
    case 4:
      result = 0x69746164696C6176;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0x456D756D6978616DLL;
      break;
    case 9:
      result = 0xD00000000000001ELL;
      break;
    case 0xA:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MLProgress.Metric()
{
  v1 = v0;
  result = MLProgress.Metric.rawValue.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

CreateML::MLProgress::CodingKeys_optional __swiftcall MLProgress.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  if (stringValue._countAndFlagsBits ^ 0x5464657370616C65 | stringValue._object ^ 0xEB00000000656D69 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x5464657370616C65, 0xEB00000000656D69, stringValue._countAndFlagsBits, stringValue._object, 0) & 1) == 0)
  {
    if (stringValue._countAndFlagsBits ^ 0x6573616870 | stringValue._object ^ 0xE500000000000000 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x6573616870, 0xE500000000000000, stringValue._countAndFlagsBits, stringValue._object, 0) & 1) == 0)
    {
      if (stringValue._countAndFlagsBits ^ 0x6F72506573616870 | stringValue._object ^ 0xED00007373657267 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x6F72506573616870, 0xED00007373657267, stringValue._countAndFlagsBits, stringValue._object, 0) & 1) == 0)
      {
        if (stringValue._countAndFlagsBits ^ 0x7363697274656DLL | stringValue._object ^ 0xE700000000000000)
        {
          v2 = _stringCompareWithSmolCheck(_:_:expecting:)(0x7363697274656DLL, 0xE700000000000000, stringValue._countAndFlagsBits, stringValue._object, 0);
          stringValue._object, 0xE700000000000000;
          return (4 - (v2 & 1));
        }

        else
        {
          stringValue._object, 0xE700000000000000;
          return 3;
        }
      }

      else
      {
        stringValue._object, 0xED00007373657267;
        return 2;
      }
    }

    else
    {
      stringValue._object, 0xE500000000000000;
      return 1;
    }
  }

  else
  {
    stringValue._object, 0xEB00000000656D69;
    return 0;
  }
}

uint64_t MLProgress.CodingKeys.stringValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      result = 0x5464657370616C65;
      break;
    case 1:
      result = 0x6573616870;
      break;
    case 2:
      result = 0x6F72506573616870;
      break;
    case 3:
      result = 0x7363697274656DLL;
      break;
  }

  return result;
}

CreateML::MLProgress::CodingKeys_optional protocol witness for CodingKey.init(stringValue:) in conformance MLProgress.CodingKeys(Swift::String a1)
{
  v2 = v1;
  result.value = MLProgress.CodingKeys.init(stringValue:)(a1).value;
  v2->value = result.value;
  return result;
}

uint64_t MLProgress.init(from:)(void *a1, double a2)
{
  v23 = v3;
  v22 = v2;
  v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedDecodingContainer<MLProgress.CodingKeys>);
  v26 = *(v25 - 8);
  v4 = *(v26 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v27 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v7);
  v8 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v8);
  v9 = lazy protocol witness table accessor for type MLProgress.CodingKeys and conformance MLProgress.CodingKeys();
  v30 = &v21;
  v10 = v27;
  dispatch thunk of Decoder.container<A>(keyedBy:)(&type metadata for MLProgress.CodingKeys, &type metadata for MLProgress.CodingKeys, v9, v8, v24);
  if (v3 == 0.0)
  {
    v28 = 0;
    KeyedDecodingContainer.decode(_:forKey:)(&v28, v25);
    v23 = a2;
    v29 = 1;
    v11 = lazy protocol witness table accessor for type MLPhase and conformance MLPhase();
    v12 = v25;
    KeyedDecodingContainer.decode<A>(_:forKey:)(&type metadata for MLPhase, &v29, v25, &type metadata for MLPhase, v11);
    LOBYTE(v24) = v31;
    v14 = v12;
    v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLProgress.Metric : Double]);
    v32[0] = 3;
    v16 = lazy protocol witness table accessor for type [MLProgress.Metric : Double] and conformance <> [A : B](&lazy protocol witness table cache variable for type [MLProgress.Metric : Double] and conformance <> [A : B], lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric, &protocol witness table for Double, &protocol conformance descriptor for <> [A : B]);
    KeyedDecodingContainer.decode<A>(_:forKey:)(v15, v32, v14, v15, v16);
    v17 = v21;
    v18 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v21);
    v17;
    (*(v26 + 8))(v30, v25);
    v18;
    v27;
    v19 = v22;
    *v22 = v23;
    *(v19 + 8) = v24;
    *(v19 + 1) = 0;
    *(v19 + 32) = 1;
    *(v19 + 5) = v18;
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v20 = v18;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v20 = v10;
  }

  return v20;
}

uint64_t MLProgress.encode(to:)(void *a1)
{
  v19 = v1;
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedEncodingContainer<MLProgress.CodingKeys>);
  v18 = *(v14 - 8);
  v3 = *(v18 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v15 = *v2;
  v24 = *(v2 + 8);
  v17 = *(v2 + 40);
  v6 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  v7 = lazy protocol witness table accessor for type MLProgress.CodingKeys and conformance MLProgress.CodingKeys();
  v8 = v14;
  dispatch thunk of Encoder.container<A>(keyedBy:)(&type metadata for MLProgress.CodingKeys, &type metadata for MLProgress.CodingKeys, v7, v6, v16);
  v20 = 0;
  KeyedEncodingContainer.encode(_:forKey:)(&v20, v14, v15);
  if (v1)
  {
    return (*(v18 + 8))(&v13, v14);
  }

  v21 = v24;
  v22 = 1;
  v10 = lazy protocol witness table accessor for type MLPhase and conformance MLPhase();
  KeyedEncodingContainer.encode<A>(_:forKey:)(&v21, &v22, v14, &type metadata for MLPhase, v10);
  v19 = specialized Dictionary.compactMapValues<A>(_:)(v17);
  v13 = v19;
  v23 = 3;
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLProgress.Metric : Double]);
  v12 = lazy protocol witness table accessor for type [MLProgress.Metric : Double] and conformance <> [A : B](&lazy protocol witness table cache variable for type [MLProgress.Metric : Double] and conformance <> [A : B], lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric, &protocol witness table for Double, &protocol conformance descriptor for <> [A : B]);
  KeyedEncodingContainer.encode<A>(_:forKey:)(&v13, &v23, v8, v11, v12);
  (*(v18 + 8))(&v13, v8);
  return v19;
}

NSString one-time initialization function for elapsedTimeKey()
{
  result = String._bridgeToObjectiveC()();
  static MLProgress.elapsedTimeKey = result;
  return result;
}

NSString one-time initialization function for phaseKey()
{
  result = String._bridgeToObjectiveC()();
  static MLProgress.phaseKey = result;
  return result;
}

NSString one-time initialization function for itemCountKey()
{
  result = String._bridgeToObjectiveC()();
  static MLProgress.itemCountKey = result;
  return result;
}

NSString one-time initialization function for totalItemCountKey()
{
  result = String._bridgeToObjectiveC()();
  static MLProgress.totalItemCountKey = result;
  return result;
}

NSString one-time initialization function for lossKey()
{
  result = String._bridgeToObjectiveC()();
  static MLProgress.lossKey = result;
  return result;
}

NSString one-time initialization function for contentLossKey()
{
  result = String._bridgeToObjectiveC()();
  static MLProgress.contentLossKey = result;
  return result;
}

NSString one-time initialization function for styleLossKey()
{
  result = String._bridgeToObjectiveC()();
  static MLProgress.styleLossKey = result;
  return result;
}

NSString one-time initialization function for accuracyKey()
{
  result = String._bridgeToObjectiveC()();
  static MLProgress.accuracyKey = result;
  return result;
}

NSString one-time initialization function for validationLossKey()
{
  result = String._bridgeToObjectiveC()();
  static MLProgress.validationLossKey = result;
  return result;
}

NSString one-time initialization function for validationAccuracyKey()
{
  result = String._bridgeToObjectiveC()();
  static MLProgress.validationAccuracyKey = result;
  return result;
}

NSString one-time initialization function for stylizedImageKey()
{
  result = String._bridgeToObjectiveC()();
  static MLProgress.stylizedImageKey = result;
  return result;
}

NSString one-time initialization function for rootMeanSquaredErrorKey()
{
  result = String._bridgeToObjectiveC()();
  static MLProgress.rootMeanSquaredErrorKey = result;
  return result;
}

NSString one-time initialization function for maximumErrorKey()
{
  result = String._bridgeToObjectiveC()();
  static MLProgress.maximumErrorKey = result;
  return result;
}

NSString one-time initialization function for validationRootMeanSquaredErrorKey()
{
  result = String._bridgeToObjectiveC()();
  static MLProgress.validationRootMeanSquaredErrorKey = result;
  return result;
}

NSString one-time initialization function for validationMaximumErrorKey()
{
  result = String._bridgeToObjectiveC()();
  static MLProgress.validationMaximumErrorKey = result;
  return result;
}

id static MLProgress.elapsedTimeKey.getter(void *a1, id *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once(a1, a3);
  }

  return *a2;
}

uint64_t lazy protocol witness table accessor for type MLProgress.CodingKeys and conformance MLProgress.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLProgress.CodingKeys and conformance MLProgress.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLProgress.CodingKeys and conformance MLProgress.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLProgress.CodingKeys, &type metadata for MLProgress.CodingKeys);
    lazy protocol witness table cache variable for type MLProgress.CodingKeys and conformance MLProgress.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLProgress.CodingKeys and conformance MLProgress.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLProgress.CodingKeys and conformance MLProgress.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLProgress.CodingKeys, &type metadata for MLProgress.CodingKeys);
    lazy protocol witness table cache variable for type MLProgress.CodingKeys and conformance MLProgress.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLProgress.CodingKeys and conformance MLProgress.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLProgress.CodingKeys and conformance MLProgress.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLProgress.CodingKeys, &type metadata for MLProgress.CodingKeys);
    lazy protocol witness table cache variable for type MLProgress.CodingKeys and conformance MLProgress.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLProgress.CodingKeys and conformance MLProgress.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLProgress.CodingKeys and conformance MLProgress.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLProgress.CodingKeys, &type metadata for MLProgress.CodingKeys);
    lazy protocol witness table cache variable for type MLProgress.CodingKeys and conformance MLProgress.CodingKeys = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [MLProgress.Metric] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [MLProgress.Metric] and conformance [A];
  if (!lazy protocol witness table cache variable for type [MLProgress.Metric] and conformance [A])
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for [MLProgress.Metric]);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v1);
    lazy protocol witness table cache variable for type [MLProgress.Metric] and conformance [A] = result;
  }

  return result;
}

uint64_t initializeWithCopy for MLProgress(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  v3;
  return a1;
}

uint64_t assignWithCopy for MLProgress(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 40);
  v4 = *(a1 + 40);
  *(a1 + 40) = v3;
  v3;
  v4, a2;
  return a1;
}

_OWORD *__swift_memcpy48_8(_OWORD *a1, __int128 *a2)
{
  result = a1;
  v3 = *a2;
  v4 = a2[1];
  a1[2] = a2[2];
  a1[1] = v4;
  *a1 = v3;
  return result;
}

uint64_t assignWithTake for MLProgress(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  v3, a2;
  return a1;
}

uint64_t getEnumTagSinglePayload for MLProgress(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*(a1 + 40) & 0xFFFFFFFF00000001) != 0 ? -1 : *(a1 + 40) >> 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLProgress(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 48) = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *(a1 + 48) = 0;
    }

    if (a2)
    {
      *(a1 + 40) = 2 * (a2 - 1);
    }
  }
}

uint64_t getEnumTagSinglePayload for MLProgress.Metric(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 < 0xF6)
    {
      goto LABEL_13;
    }

    v2 = a2 + 10;
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
      v5 = *a1 + (v4 << 8) - 11;
    }

    else
    {
LABEL_13:
      v6 = *a1;
      v7 = v6 - 11;
      v8 = v6 < 0xB;
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

uint64_t storeEnumTagSinglePayload for MLProgress.Metric(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  LODWORD(result) = 0;
  if (a3 >= 0xF6)
  {
    v4 = a3 + 10;
    LODWORD(result) = 1;
    if (v4 >= 0xFF00)
    {
      LODWORD(result) = 2 * (v4 >= 0xFFFF00) + 2;
    }
  }

  if (a2 > 0xF5)
  {
    v5 = a2 - 246;
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
          *a1 = a2 + 10;
        }

        break;
      case 5:
        JUMPOUT(0x145CF8);
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for MLProgress.CodingKeys(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  LODWORD(result) = 0;
  if (a3 >= 0xFD)
  {
    v4 = a3 + 3;
    LODWORD(result) = 1;
    if (v4 >= 0xFF00)
    {
      LODWORD(result) = 2 * (v4 >= 0xFFFF00) + 2;
    }
  }

  if (a2 > 0xFC)
  {
    v5 = a2 - 253;
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
          *a1 = a2 + 3;
        }

        break;
      case 5:
        JUMPOUT(0x145DD0);
    }
  }

  return result;
}

uint64_t outlined init with take of (key: MetricsKey, value: Double)(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (key: MetricsKey, value: Double));
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8NSNumberCG_Sis5NeverOTg5074_s8CreateML24MLFewShotSoundClassifierV5write2toy10Foundation3URLV_tKFSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_n(uint64_t a1)
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

uint64_t *MLFewShotSoundClassifier.TemporalClassifier.makeConvBlock(name:input:output:layer:)(__int128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v60 = a5;
  v61 = a4;
  v74 = a2;
  *&v73 = a1;
  v7 = *(*(type metadata accessor for NeuralNetwork.Border(0) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v79 = &v60;
  v10 = *(*(type metadata accessor for NeuralNetwork.Layer.PadParameters.Kind(0) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v76 = &v60;
  v63 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  v13 = *(*(v63 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v69 = &v60;
  v68 = type metadata accessor for NeuralNetwork.Layer.Kind(0);
  v78 = *(v68 - 8);
  v16 = *(v78 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v70 = &v60;
  v72 = type metadata accessor for NeuralNetwork.Layer(0);
  v77 = *(v72 - 8);
  v19 = *(v77 + 8);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v62 = &v60;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v64 = &v60;
  v24 = alloca(v19);
  v25 = alloca(v19);
  v66 = &v60;
  v71 = a1;
  *(&v73 + 1) = *(&a1 + 1);
  BYTE8(a1);
  v26._object = 0xE400000000000000;
  v26._countAndFlagsBits = 1684107359;
  String.append(_:)(v26);
  v75 = v71;
  v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  v28 = swift_allocObject(v27, 48, 7);
  v28[2] = 1;
  v28[3] = 2;
  v28[4] = v74;
  v28[5] = a3;
  v74 = v27;
  v29 = swift_allocObject(v27, 48, 7);
  *(v29 + 16) = 1;
  *(v29 + 24) = 2;
  v30 = v29;
  v67 = v29;
  v71 = v73;
  BYTE8(v73);
  a3;
  v26._countAndFlagsBits = 0x74756F5F6461705FLL;
  v26._object = 0xE800000000000000;
  String.append(_:)(v26);
  *(v30 + 32) = v71;
  v31 = v69;
  outlined init with copy of MLTrainingSessionParameters(a6, v69, type metadata accessor for MLFewShotSoundClassifier.CausalConv1D);
  v32 = v76;
  static NeuralNetwork.Layer.PadParameters.Kind.constant(value:)(0.0);
  v33 = v79;
  NeuralNetwork.Border.init(leadingHeight:trailingHeight:leadingWidth:trailingWidth:)(0, 0, *v31, 0);
  v34 = v70;
  NeuralNetwork.Layer.PadParameters.init(kind:amount:)(v32, v33);
  outlined destroy of MLFewShotSoundClassifier.CausalConv1D(v31);
  v65 = *(v78 + 104);
  v65(v34, enum case for NeuralNetwork.Layer.Kind.pad(_:), v68);
  v35 = v66;
  NeuralNetwork.Layer.init(name:inputNames:outputNames:kind:)(v75, *(&v75 + 1), v28, v67, v34);
  v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
  v37 = v36[2];
  if (v36[3] >> 1 <= v37)
  {
    v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v36[3] >= 2, v37 + 1, 1, v36);
  }

  v79 = v36;
  v36[2] = v37 + 1;
  v76 = ((*(v77 + 80) + 32) & ~*(v77 + 80));
  v38 = *(v77 + 4);
  v78 = *(v77 + 9);
  v77 = v38;
  v38(v36 + v76 + v78 * v37, v35, v72);
  v39 = v73;
  v71 = v73;
  v40 = *(&v73 + 1);
  BYTE8(v73);
  v41._countAndFlagsBits = 0x6431766E6F635FLL;
  v41._object = 0xE700000000000000;
  String.append(_:)(v41);
  v75 = v71;
  v42 = v74;
  v43 = swift_allocObject(v74, 48, 7);
  *(v43 + 16) = 1;
  *(v43 + 24) = 2;
  *&v71 = v39;
  *(&v71 + 1) = v40;
  v40;
  v41._countAndFlagsBits = 0x74756F5F6461705FLL;
  v41._object = 0xE800000000000000;
  String.append(_:)(v41);
  *(v43 + 32) = v71;
  v44 = swift_allocObject(v42, 48, 7);
  *(v44 + 16) = 1;
  *(v44 + 24) = 2;
  *&v71 = v39;
  *(&v71 + 1) = v40;
  v40;
  v41._countAndFlagsBits = 0x756F5F766E6F635FLL;
  v41._object = 0xE900000000000074;
  String.append(_:)(v41);
  *(v44 + 32) = v71;
  v45 = v69;
  outlined init with copy of MLTrainingSessionParameters(a6, v69, type metadata accessor for MLFewShotSoundClassifier.CausalConv1D);
  v46 = v70;
  NeuralNetwork.Layer.ConvolutionParameters.init(from:)(v45);
  v65(v46, enum case for NeuralNetwork.Layer.Kind.convolution(_:), v68);
  v47 = v64;
  v48 = v46;
  v49 = v79;
  NeuralNetwork.Layer.init(name:inputNames:outputNames:kind:)(v75, *(&v75 + 1), v43, v44, v48);
  v50 = v49[2];
  if (v49[3] >> 1 <= v50)
  {
    v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v49[3] >= 2, v50 + 1, 1, v49);
  }

  v79 = v49;
  v49[2] = v50 + 1;
  v77(v76 + v49 + v78 * v50, v47, v72);
  v51 = v73;
  v71 = v73;
  v52 = *(&v73 + 1);
  BYTE8(v73);
  v53._countAndFlagsBits = 0x746176697463615FLL;
  v53._object = 0xEB000000006E6F69;
  String.append(_:)(v53);
  v54 = v71;
  *&v71 = v51;
  *(&v71 + 1) = v52;
  v52;
  v53._countAndFlagsBits = 0x756F5F766E6F635FLL;
  v53._object = 0xE900000000000074;
  String.append(_:)(v53);
  v55 = *(&v71 + 1);
  v56 = v62;
  static NeuralNetwork.Layer.leakyRelu(name:inputName:outputName:negativeSlope:)(v54, *(&v54 + 1), v71, *(&v71 + 1), v61, v60, *(a6 + *(v63 + 24)));
  *(&v54 + 1);
  v53._countAndFlagsBits = v55;
  v57 = v79;
  v53._countAndFlagsBits;
  v58 = v57[2];
  if (v57[3] >> 1 <= v58)
  {
    v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v57[3] >= 2, v58 + 1, 1, v57);
  }

  v57[2] = v58 + 1;
  v77(v76 + v57 + v78 * v58, v56, v72);
  return v57;
}

void *MLFewShotSoundClassifier.TemporalClassifier.largeMarginClassifierLayers(framewiseEmbeddingShape:)(uint64_t a1)
{
  v94 = v1;
  v103 = v2;
  v106 = a1;
  v3 = type metadata accessor for Dense(0);
  v95 = *(v3 - 1);
  v4 = *(v95 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v89 = &v78;
  v82 = type metadata accessor for NeuralNetwork.Layer.SliceParameters.Axis(0);
  v83 = *(v82 - 8);
  v7 = *(v83 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v84 = &v78;
  v79 = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0);
  v10 = *(*(v79 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v102 = &v78;
  v100 = type metadata accessor for NeuralNetwork.Layer.Kind(0);
  v80 = *(v100 - 8);
  v13 = *(v80 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v99 = &v78;
  v105 = type metadata accessor for NeuralNetwork.Layer(0);
  v107 = *(v105 - 8);
  v16 = v107[8];
  v17 = alloca(v16);
  v18 = alloca(v16);
  v19 = alloca(v16);
  v20 = alloca(v16);
  v90 = &v78;
  v21 = alloca(v16);
  v22 = alloca(v16);
  v91 = &v78;
  v23 = alloca(v16);
  v24 = alloca(v16);
  v92 = &v78;
  v25 = alloca(v16);
  v26 = alloca(v16);
  v93 = &v78;
  v27 = alloca(v16);
  v28 = alloca(v16);
  v101 = &v78;
  v29 = alloca(v16);
  v30 = alloca(v16);
  v87 = &v78;
  v31 = alloca(v16);
  v32 = alloca(v16);
  v88 = &v78;
  v33 = alloca(v16);
  v34 = alloca(v16);
  v81 = &v78;
  v35 = alloca(v16);
  v36 = alloca(v16);
  v37 = specialized BidirectionalCollection.last.getter(v106);
  if (v38)
  {
    v39 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v39, 0, 0);
    *v40 = 0xD00000000000002CLL;
    *(v40 + 8) = "framewiseEmbedding" + 0x8000000000000000;
    *(v40 + 16) = 0;
    *(v40 + 32) = 0;
    *(v40 + 48) = 2;
    swift_willThrow(&type metadata for MLCreateError, v39);
  }

  else
  {
    v96 = v37;
    v98 = v3;
    v97 = &v78;
    v85 = &v78;
    v86 = 0xD00000000000001ALL;
    static NeuralNetwork.Layer.expandDimensions(name:inputName:outputName:axes:)(0x646E61707865, 0xE600000000000000, 0xD000000000000012, "fixedLengthEmbedding" + 0x8000000000000000, 0xD00000000000001ALL, "ing shape must not be empty." + 0x8000000000000000, &outlined read-only object #0 of MLFewShotSoundClassifier.TemporalClassifier.largeMarginClassifierLayers(framewiseEmbeddingShape:));
    v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
    v42 = v41[2];
    v43 = v41[3];
    if (v43 >> 1 <= v42)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v43 >= 2, v42 + 1, 1, v41);
    }

    v41[2] = v42 + 1;
    v106 = (*(v107 + 80) + 32) & ~*(v107 + 80);
    v44 = v107[4];
    v104 = v107[9];
    v107 = v44;
    (v44)(v41 + v106 + v104 * v42, v85, v105);
    v45 = v81;
    static NeuralNetwork.Layer.transpose(name:inputName:outputName:axes:)(0x736F70736E617274, 0xE900000000000065, v86, "ing shape must not be empty." + 0x8000000000000000, 0xD00000000000001CLL, "validationMaximumError" + 0x8000000000000000, &outlined read-only object #1 of MLFewShotSoundClassifier.TemporalClassifier.largeMarginClassifierLayers(framewiseEmbeddingShape:));
    v46 = v41[2];
    if (v41[3] >> 1 <= v46)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v41[3] >= 2uLL, v46 + 1, 1, v41);
    }

    v41[2] = v46 + 1;
    (v107)(v41 + v106 + v104 * v46, v45, v105);
    v47 = v102;
    outlined init with copy of MLTrainingSessionParameters(v103, v102, type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D);
    v48 = v99;
    NeuralNetwork.Layer.ConvolutionParameters.init(from:)(v47);
    v102 = *(v80 + 104);
    (v102)(v48, enum case for NeuralNetwork.Layer.Kind.convolution(_:), v100);
    NeuralNetwork.Layer.init(name:inputNames:outputNames:kind:)(0xD000000000000010, "expandedFramewiseEmbedding" + 0x8000000000000000, &outlined read-only object #2 of MLFewShotSoundClassifier.TemporalClassifier.largeMarginClassifierLayers(framewiseEmbeddingShape:), &outlined read-only object #3 of MLFewShotSoundClassifier.TemporalClassifier.largeMarginClassifierLayers(framewiseEmbeddingShape:), v48);
    v49 = v41[2];
    if (v41[3] >> 1 <= v49)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v41[3] >= 2uLL, v49 + 1, 1, v41);
    }

    v41[2] = v49 + 1;
    (v107)(v41 + v106 + v104 * v49, v88, v105);
    static NeuralNetwork.Layer.leakyRelu(name:inputName:outputName:negativeSlope:)(0xD000000000000019, "featureReduction" + 0x8000000000000000, 0x64656375646572, 0xE700000000000000, 0xD000000000000010, "featureReductionLeakyRelu" + 0x8000000000000000, *(v103 + *(v79 + 20)));
    v50 = v41[2];
    if (v41[3] >> 1 <= v50)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v41[3] >= 2uLL, v50 + 1, 1, v41);
    }

    v41[2] = v50 + 1;
    (v107)(v41 + v106 + v104 * v50, v87, v105);
    static NeuralNetwork.Layer.transpose(name:inputName:outputName:axes:)(0x736F70736E617274, 0xE900000000000065, 0xD000000000000010, "featureReductionLeakyRelu" + 0x8000000000000000, 0x6E69646465626D65, 0xE900000000000067, &outlined read-only object #4 of MLFewShotSoundClassifier.TemporalClassifier.largeMarginClassifierLayers(framewiseEmbeddingShape:));
    v51 = v41[2];
    if (v41[3] >> 1 <= v51)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v41[3] >= 2uLL, v51 + 1, 1, v41);
    }

    v41[2] = v51 + 1;
    (v107)(v41 + v106 + v104 * v51, v101, v105);
    v78 = v41;
    v52 = type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork(0);
    v53 = v103;
    *&v54 = 12643;
    *(&v54 + 1) = 0xE200000000000000;
    v55 = MLFewShotSoundClassifier.TemporalClassifier.makeConvBlock(name:input:output:layer:)(v54, 0x6E69646465626D65, 0xE900000000000067, 12643, 0xE200000000000000, v103 + v52[5]);
    specialized Array.append<A>(contentsOf:)(v55);
    *&v54 = 12899;
    *(&v54 + 1) = 0xE200000000000000;
    v56 = MLFewShotSoundClassifier.TemporalClassifier.makeConvBlock(name:input:output:layer:)(v54, 12643, 0xE200000000000000, 12899, 0xE200000000000000, v53 + v52[6]);
    specialized Array.append<A>(contentsOf:)(v56);
    *&v54 = 13155;
    *(&v54 + 1) = 0xE200000000000000;
    v57 = MLFewShotSoundClassifier.TemporalClassifier.makeConvBlock(name:input:output:layer:)(v54, 12899, 0xE200000000000000, 13155, 0xE200000000000000, v53 + v52[7]);
    specialized Array.append<A>(contentsOf:)(v57);
    *&v54 = 13411;
    *(&v54 + 1) = 0xE200000000000000;
    v58 = MLFewShotSoundClassifier.TemporalClassifier.makeConvBlock(name:input:output:layer:)(v54, 13155, 0xE200000000000000, 13411, 0xE200000000000000, v53 + v52[8]);
    specialized Array.append<A>(contentsOf:)(v58);
    v59 = v96 - 1;
    if (__OFSUB__(v96, 1))
    {
      BUG();
    }

    v60 = v84;
    v61 = v82;
    v62 = v83;
    (*(v83 + 104))(v84, enum case for NeuralNetwork.Layer.SliceParameters.Axis.width(_:), v82);
    static NeuralNetwork.Layer.slice(name:inputName:outputName:startIndex:endIndex:stride:axis:)(0x6563696C73, 0xE500000000000000, 13411, 0xE200000000000000, 0x646563696C73, 0xE600000000000000, v59, v96, 1, v60);
    (*(v62 + 8))(v60, v61);
    v3 = v78;
    if (!swift_isUniquelyReferenced_nonNull_native(v78))
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
    }

    v63 = v95;
    v64 = v3[2];
    if (v3[3] >> 1 <= v64)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v3[3] >= 2uLL, v64 + 1, 1, v3);
    }

    v3[2] = v64 + 1;
    (v107)(v3 + v106 + v104 * v64, v93, v105);
    v65 = *(type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(0) + 20) + v103;
    v66 = *(v63 + 16);
    v67 = v89;
    v103 = v65;
    v101 = v66;
    (v66)(v89, v65, v98);
    v68 = v99;
    NeuralNetwork.Layer.InnerProductParameters.init(from:)(v67);
    v69 = enum case for NeuralNetwork.Layer.Kind.innerProduct(_:);
    (v102)(v68, enum case for NeuralNetwork.Layer.Kind.innerProduct(_:), v100);
    NeuralNetwork.Layer.init(name:inputNames:outputNames:kind:)(12644, 0xE200000000000000, &outlined read-only object #5 of MLFewShotSoundClassifier.TemporalClassifier.largeMarginClassifierLayers(framewiseEmbeddingShape:), &outlined read-only object #6 of MLFewShotSoundClassifier.TemporalClassifier.largeMarginClassifierLayers(framewiseEmbeddingShape:), v68);
    v70 = v3[2];
    if (v3[3] >> 1 <= v70)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v3[3] >= 2uLL, v70 + 1, 1, v3);
    }

    v3[2] = v70 + 1;
    (v107)(v3 + v106 + v104 * v70, v92, v105);
    static NeuralNetwork.Layer.relu(name:inputName:outputName:)(0x756C65725F3164, 0xE700000000000000, 12644, 0xE200000000000000, 0x756C65725F3164, 0xE700000000000000);
    v71 = v3[2];
    if (v3[3] >> 1 <= v71)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v3[3] >= 2uLL, v71 + 1, 1, v3);
    }

    v3[2] = v71 + 1;
    (v107)(v3 + v106 + v104 * v71, v91, v105);
    v72 = type metadata accessor for MLFewShotSoundClassifier.MLP(0);
    v73 = v89;
    (v101)(v89, *(v72 + 20) + v103, v98);
    v74 = v99;
    NeuralNetwork.Layer.InnerProductParameters.init(from:)(v73);
    (v102)(v74, v69, v100);
    NeuralNetwork.Layer.init(name:inputNames:outputNames:kind:)(12900, 0xE200000000000000, &outlined read-only object #7 of MLFewShotSoundClassifier.TemporalClassifier.largeMarginClassifierLayers(framewiseEmbeddingShape:), &outlined read-only object #8 of MLFewShotSoundClassifier.TemporalClassifier.largeMarginClassifierLayers(framewiseEmbeddingShape:), v74);
    v75 = v3[2];
    if (v3[3] >> 1 <= v75)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v3[3] >= 2uLL, v75 + 1, 1, v3);
    }

    v3[2] = v75 + 1;
    (v107)(v3 + v106 + v104 * v75, v90, v105);
    static NeuralNetwork.Layer.softmax(name:inputName:outputName:)(0x78616D74666F73, 0xE700000000000000, 12900, 0xE200000000000000, 0x62614C7373616C63, 0xEF73626F72506C65);
    v76 = v3[2];
    if (v3[3] >> 1 <= v76)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v3[3] >= 2uLL, v76 + 1, 1, v3);
    }

    v3[2] = v76 + 1;
    (v107)(v3 + v106 + v104 * v76, v97, v105);
  }

  return v3;
}

uint64_t MLFewShotSoundClassifier.TemporalClassifier.branchClassifier(input:classLabels:framewiseEmbeddingShape:exemplar:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v112 = v5;
  v101 = v6;
  v111 = a4;
  v107 = a3;
  v93 = a2;
  v106 = v4;
  v78 = type metadata accessor for ModelKind(0);
  v79 = *(v78 - 8);
  v7 = *(v79 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v80 = &v77;
  v82 = type metadata accessor for NeuralNetworkClassifier.ClassLabels(0);
  v83 = *(v82 - 8);
  v10 = *(v83 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v84 = &v77;
  v86 = type metadata accessor for NeuralNetwork.ArrayShapeMapping(0);
  v87 = *(v86 - 8);
  v13 = *(v87 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v88 = &v77;
  v94 = type metadata accessor for NeuralNetworkClassifier(0);
  v81 = *(v94 - 8);
  v16 = *(v81 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v85 = &v77;
  v100 = type metadata accessor for FeatureType.ShapedArrayParameters.DataType(0);
  v108 = *(v100 - 8);
  v19 = *(v108 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v91 = &v77;
  v89 = type metadata accessor for FeatureType(0);
  v90 = *(v89 - 8);
  v22 = *(v90 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v99 = &v77;
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NeuralNetwork?) - 8) + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v102 = &v77;
  v110 = type metadata accessor for NeuralNetwork.Layer(0);
  v28 = *(v110 - 8);
  v29 = *(v28 + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v109 = &v77;
  v95 = type metadata accessor for NeuralNetwork(0);
  v96 = *(v95 - 8);
  v32 = *(v96 + 64);
  v33 = alloca(v32);
  v34 = alloca(v32);
  v97 = &v77;
  v35 = alloca(v32);
  v36 = alloca(v32);
  v111 = MLFewShotSoundClassifier.TemporalClassifier.cosineSimilarity(input:exemplar:)(a1, v111);
  v37 = v112;
  v38 = MLFewShotSoundClassifier.TemporalClassifier.largeMarginClassifierLayers(framewiseEmbeddingShape:)(v107);
  if (v37)
  {
    return v111;
  }

  v103 = a1;
  v101 = 0;
  v98 = &v77;
  NeuralNetwork.init(layers:preprocessors:)(v38, _swiftEmptyArrayStorage);
  v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<NeuralNetwork.Layer>);
  v41 = *(v28 + 72);
  v112 = v28;
  v42 = *(v28 + 80);
  v43 = (v42 + 32) & ~*(v28 + 80);
  v44 = swift_allocObject(v40, v43 + 2 * v41, v42 | 7);
  *(v44 + 16) = 2;
  *(v44 + 24) = 4;
  static NeuralNetwork.Layer.constant(name:outputName:shape:values:)(0x746E6174736E6F63, 0xED000073626F7250, 0x746E6174736E6F63, 0xED000073626F7250, &outlined read-only object #0 of MLFewShotSoundClassifier.TemporalClassifier.branchClassifier(input:classLabels:framewiseEmbeddingShape:exemplar:), &outlined read-only object #1 of MLFewShotSoundClassifier.TemporalClassifier.branchClassifier(input:classLabels:framewiseEmbeddingShape:exemplar:));
  v104 = v41;
  static NeuralNetwork.Layer.squeezeAll(name:inputName:outputName:)(0x657A6565757173, 0xE700000000000000, 0x746E6174736E6F63, 0xED000073626F7250, 0x62614C7373616C63, 0xEF73626F72506C65);
  v45 = v97;
  NeuralNetwork.init(layers:preprocessors:)(v44, _swiftEmptyArrayStorage);
  v46 = v102;
  v47 = v95;
  (*(v96 + 16))(v102, v45, v95);
  __swift_storeEnumTagSinglePayload(v46, 0, 1, v47);
  static NeuralNetwork.Layer.branch(name:inputName:ifBranch:elseBranch:)(0x68636E617262, 0xE600000000000000, 0x6C616E676973, 0xE600000000000000, v98, v46);
  outlined destroy of NeuralNetwork?(v46);
  v48 = v111;
  v49 = swift_isUniquelyReferenced_nonNull_native(v111) == 0;
  v50 = v48;
  if (v49)
  {
    v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v48 + 2) + 1, 1, v48);
  }

  v51 = *(v50 + 2);
  v52 = v50;
  v53 = *(v50 + 3);
  v54 = v110;
  v55 = v112;
  if (v53 >> 1 <= v51)
  {
    v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v53 >= 2, v51 + 1, 1, v52);
    v55 = v112;
    v54 = v110;
    v52 = v76;
  }

  v111 = v52;
  *(v52 + 2) = v51 + 1;
  (*(v55 + 32))(&v52[v43 + v104 * v51], v109, v54);
  Model.init()();
  Model.specificationVersion.setter(4);
  v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>);
  v109 = v56;
  v105 = type metadata accessor for FeatureDescription(0);
  v57 = *(v105 - 1);
  v58 = *(v57 + 72);
  v59 = *(v57 + 80);
  v60 = (v59 + 32) & ~*(v57 + 80);
  v102 = (v60 + 2 * v58);
  v104 = v60;
  v112 = v58;
  v110 = v59 | 7;
  v61 = swift_allocObject(v56, v102, v59 | 7);
  v92 = v61;
  *(v61 + 16) = 2;
  *(v61 + 24) = 4;
  (*(v57 + 16))(v61 + v60, v103, v105);
  LODWORD(v103) = enum case for FeatureType.ShapedArrayParameters.DataType.float32(_:);
  v105 = *(v108 + 104);
  v62 = v91;
  v63 = v100;
  (v105)(v91, enum case for FeatureType.ShapedArrayParameters.DataType.float32(_:), v100);
  static FeatureType.shapedArray(dataType:shape:optional:)(v62, v107, 0);
  v108 = *(v108 + 8);
  (v108)(v62, v63);
  FeatureDescription.init(name:type:description:)(0xD000000000000012, "fixedLengthEmbedding" + 0x8000000000000000, v99, 0, 0xE000000000000000);
  Model.inputs.setter(v92);
  v64 = swift_allocObject(v109, v102, v110);
  v107 = v64;
  *(v64 + 16) = 2;
  *(v64 + 24) = 4;
  v65 = v62;
  (v105)(v62, v103, v100);
  v66 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v67 = swift_allocObject(v66, 56, 7);
  v67[2] = 3;
  v67[3] = 6;
  v67[4] = 1;
  v67[5] = 1;
  v67[6] = *(v93 + 16);
  v68 = v99;
  static FeatureType.shapedArray(dataType:shape:optional:)(v65, v67, 0);
  v67;
  (v108)(v65, v100);
  FeatureDescription.init(name:type:description:)(0x62614C7373616C63, 0xEF73626F72506C65, v68, 0, 0xE000000000000000);
  FeatureType.StringParameters.init(optional:)(0);
  (*(v90 + 104))(v68, enum case for FeatureType.string(_:), v89);
  FeatureDescription.init(name:type:description:)(0x62614C7373616C63, 0xEA00000000006C65, v68, 0, 0xE000000000000000);
  Model.outputs.setter(v107);
  Model.predictedFeatureName.setter(0x62614C7373616C63, 0xEA00000000006C65);
  Model.predictedProbabilitiesName.setter(0x62614C7373616C63, 0xEF73626F72506C65);
  v69 = v85;
  NeuralNetworkClassifier.init(layers:preprocessors:)(v111, _swiftEmptyArrayStorage);
  v70 = v88;
  (*(v87 + 104))(v88, enum case for NeuralNetwork.ArrayShapeMapping.exactArrayMapping(_:), v86);
  NeuralNetworkClassifier.arrayInputShapeMapping.setter(v70);
  NeuralNetworkClassifier.labelProbabilityLayerName.setter(0x62614C7373616C63, 0xEF73626F72506C65);
  v71 = v84;
  LOBYTE(v67) = v93;
  *v84 = v93;
  (*(v83 + 104))(v71, enum case for NeuralNetworkClassifier.ClassLabels.string(_:), v82);
  v67;
  NeuralNetworkClassifier.classLabels.setter(v71);
  v72 = v80;
  v73 = v81;
  (*(v81 + 16))(v80, v69, v94);
  (*(v79 + 104))(v72, enum case for ModelKind.neuralNetworkClassifier(_:), v78);
  Model.kind.setter(v72);
  (*(v73 + 8))(v69, v94);
  v74 = *(v96 + 8);
  v75 = v95;
  v74(v97, v95);
  return (v74)(v98, v75);
}

char *MLFewShotSoundClassifier.TemporalClassifier.cosineSimilarity(input:exemplar:)(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v34 = type metadata accessor for NeuralNetwork.Layer(0);
  v35 = *(v34 - 8);
  v2 = *(v35 + 8);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v29 = &v27;
  v5 = alloca(v2);
  v6 = alloca(v2);
  v30 = &v27;
  v7 = alloca(v2);
  v8 = alloca(v2);
  v31 = &v27;
  v9 = alloca(v2);
  v10 = alloca(v2);
  v32 = &v27;
  v11 = alloca(v2);
  v12 = alloca(v2);
  v13 = FeatureDescription.name.getter();
  v15 = v14;
  v28 = &v27;
  static NeuralNetwork.Layer.expandDimensions(name:inputName:outputName:axes:)(0x6E49646E61707865, 0xEB00000000747570, v13, v14, 0x6E49646E61707865, 0xEB00000000747570, &outlined read-only object #0 of MLFewShotSoundClassifier.TemporalClassifier.cosineSimilarity(input:exemplar:));
  v15;
  v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
  v17 = *(v16 + 2);
  v18 = *(v16 + 3);
  if (v18 >> 1 <= v17)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v18 >= 2, v17 + 1, 1, v16);
  }

  *(v16 + 2) = v17 + 1;
  v19 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v20 = *(v35 + 4);
  v33 = *(v35 + 9);
  v35 = v20;
  v20(&v16[v33 * v17 + v19], v28, v34);
  static NeuralNetwork.Layer.constant(name:outputName:shape:values:)(0x72616C706D657865, 0xE800000000000000, 0x72616C706D657865, 0xE800000000000000, &outlined read-only object #1 of MLFewShotSoundClassifier.TemporalClassifier.cosineSimilarity(input:exemplar:), v27);
  v21 = *(v16 + 2);
  v22 = v21 + 1;
  if (*(v16 + 3) >> 1 <= v21)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v16 + 3) >= 2uLL, v22, 1, v16);
  }

  *(v16 + 2) = v22;
  v35(&v16[v33 * v21 + v19], v32, v34);
  static NeuralNetwork.Layer.constant(name:outputName:shape:values:)(0x6854656E69736F63, 0xEF646C6F68736572, 0x6854656E69736F63, 0xEF646C6F68736572, &outlined read-only object #2 of MLFewShotSoundClassifier.TemporalClassifier.cosineSimilarity(input:exemplar:), &outlined read-only object #3 of MLFewShotSoundClassifier.TemporalClassifier.cosineSimilarity(input:exemplar:));
  v23 = *(v16 + 2);
  if (*(v16 + 3) >> 1 <= v23)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v16 + 3) >= 2uLL, v23 + 1, 1, v16);
  }

  *(v16 + 2) = v23 + 1;
  v35(&v16[v33 * v23 + v19], v31, v34);
  static NeuralNetwork.Layer.cosineSimilarity(name:inputNames:outputName:)(0xD000000000000010, "activatedReduced" + 0x8000000000000000, 0x72616C706D657865, 0xE800000000000000, 0x6E49646E61707865, 0xEB00000000747570, 0xD000000000000010, "activatedReduced" + 0x8000000000000000);
  v24 = *(v16 + 2);
  if (*(v16 + 3) >> 1 <= v24)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v16 + 3) >= 2uLL, v24 + 1, 1, v16);
  }

  *(v16 + 2) = v24 + 1;
  v35(&v16[v33 * v24 + v19], v30, v34);
  static NeuralNetwork.Layer.broadcastableSubtract(name:inputNames:outputName:)(0x7463617274627573, 0xE800000000000000, 0xD000000000000010, "activatedReduced" + 0x8000000000000000, 0x6854656E69736F63, 0xEF646C6F68736572, 0x6C616E676973, 0xE600000000000000);
  v25 = *(v16 + 2);
  if (*(v16 + 3) >> 1 <= v25)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v16 + 3) >= 2uLL, v25 + 1, 1, v16);
  }

  *(v16 + 2) = v25 + 1;
  v35(&v16[v19 + v33 * v25], v29, v34);
  return v16;
}

uint64_t MLFewShotSoundClassifier.TemporalClassifier.soundPrintKCustomModel(input:fixedOutput:framewiseEmbeddingShape:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v33 = a2;
  v42 = a1;
  v41 = v3;
  v29 = type metadata accessor for ModelKind(0);
  v30 = *(v29 - 8);
  v4 = *(v30 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v31 = &v28;
  v34 = type metadata accessor for FeatureType.ShapedArrayParameters.DataType(0);
  v35 = *(v34 - 8);
  v7 = *(v35 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v36 = &v28;
  v10 = *(*(type metadata accessor for FeatureType(0) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v40 = &v28;
  Model.init()();
  Model.specificationVersion.setter(4);
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>);
  v38 = v13;
  v14 = type metadata accessor for FeatureDescription(0);
  v15 = *(v14 - 8);
  v39 = v14;
  v37 = *(v15 + 72);
  v16 = *(v15 + 80);
  v17 = (v16 + 32) & ~*(v15 + 80);
  v16 |= 7uLL;
  v18 = swift_allocObject(v13, v17 + v37, v16);
  *(v18 + 16) = 1;
  *(v18 + 24) = 2;
  v19 = *(v15 + 16);
  v19(v18 + v17, v42, v14);
  Model.inputs.setter(v18);
  v20 = swift_allocObject(v38, v17 + 2 * v37, v16);
  v42 = v20;
  *(v20 + 16) = 2;
  *(v20 + 24) = 4;
  v19(v20 + v17, v33, v39);
  v21 = v36;
  v22 = v34;
  v23 = v35;
  (*(v35 + 104))(v36, enum case for FeatureType.ShapedArrayParameters.DataType.float32(_:), v34);
  static FeatureType.shapedArray(dataType:shape:optional:)(v21, v32, 0);
  (*(v23 + 8))(v21, v22);
  FeatureDescription.init(name:type:description:)(0xD000000000000012, "fixedLengthEmbedding" + 0x8000000000000000, v40, 0, 0xE000000000000000);
  Model.outputs.setter(v42);
  v24 = type metadata accessor for CustomModelConfiguration.ParameterValue(0);
  v25 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v24, &protocol witness table for String);
  v26 = v31;
  CustomModelConfiguration.init(className:parameters:)(0xD000000000000029, "cosineSimilarity" + 0x8000000000000000, v25);
  (*(v30 + 104))(v26, enum case for ModelKind.custom(_:), v29);
  return Model.kind.setter(v26);
}

uint64_t MLFewShotSoundClassifier.TemporalClassifier.pipeline(classLabels:inferenceWindowSize:framewiseEmbeddingShape:exemplar:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v57 = v5;
  v60 = v6;
  v58 = a4;
  v61 = a3;
  v74 = a2;
  v59 = a1;
  v68 = v4;
  v65 = type metadata accessor for ModelKind(0);
  v64 = *(v65 - 8);
  v7 = *(v64 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v66 = &v57;
  v70 = type metadata accessor for Model(0);
  v71 = *(v70 - 8);
  v10 = *(v71 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v69 = &v57;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v75 = &v57;
  v62 = type metadata accessor for FeatureType.ShapedArrayParameters.DataType(0);
  v78 = *(v62 - 8);
  v15 = *(v78 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v18 = *(*(type metadata accessor for FeatureType(0) - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v76 = &v57;
  v72 = type metadata accessor for FeatureDescription(0);
  v73 = *(v72 - 8);
  v21 = *(v73 + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v67 = &v57;
  v24 = alloca(v21);
  v25 = alloca(v21);
  v77 = &v57;
  v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v27 = swift_allocObject(v26, 56, 7);
  v27[2] = 3;
  v27[3] = 6;
  v27[4] = 1;
  v27[5] = 1;
  v27[6] = v74;
  LODWORD(v74) = enum case for FeatureType.ShapedArrayParameters.DataType.float32(_:);
  v63 = *(v78 + 104);
  v28 = v62;
  v63(&v57, enum case for FeatureType.ShapedArrayParameters.DataType.float32(_:), v62);
  static FeatureType.shapedArray(dataType:shape:optional:)(&v57, v27, 0);
  v27;
  v78 = *(v78 + 8);
  (v78)(&v57, v28);
  v29 = v76;
  FeatureDescription.init(name:type:description:)(0x6F696475615F6474, 0xE800000000000000, v76, 0, 0xE000000000000000);
  v63(&v57, v74, v28);
  static FeatureType.shapedArray(dataType:shape:optional:)(&v57, &outlined read-only object #0 of MLFewShotSoundClassifier.TemporalClassifier.pipeline(classLabels:inferenceWindowSize:framewiseEmbeddingShape:exemplar:), 0);
  (v78)(&v57, v28);
  v30 = v67;
  FeatureDescription.init(name:type:description:)(0xD000000000000014, "lid temporal dimension." + 0x8000000000000000, v29, 0, 0xE000000000000000);
  v31 = v61;
  MLFewShotSoundClassifier.TemporalClassifier.soundPrintKCustomModel(input:fixedOutput:framewiseEmbeddingShape:)(v77, v30, v61);
  v32 = v57;
  MLFewShotSoundClassifier.TemporalClassifier.branchClassifier(input:classLabels:framewiseEmbeddingShape:exemplar:)(v30, v59, v31, v58);
  if (v32)
  {
    (*(v71 + 8))(v75, v70);
    v33 = *(v73 + 8);
    v34 = v30;
  }

  else
  {
    Model.init()();
    v76 = 0;
    Model.specificationVersion.setter(4);
    v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>);
    v36 = *(v73 + 80);
    v37 = (v36 + 32) & ~*(v73 + 80);
    v38 = v73;
    v39 = swift_allocObject(v35, v37 + *(v73 + 72), v36 | 7);
    *(v39 + 16) = 1;
    *(v39 + 24) = 2;
    (*(v38 + 16))(v39 + v37, v77, v72);
    Model.inputs.setter(v39);
    v40 = Model.outputs.getter();
    Model.outputs.setter(v40);
    Model.predictedFeatureName.setter(0x62614C7373616C63, 0xEA00000000006C65);
    Model.predictedProbabilitiesName.setter(0x62614C7373616C63, 0xEF73626F72506C65);
    v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Model>);
    v42 = v71;
    v78 = *(v71 + 72);
    v43 = *(v71 + 80);
    v44 = (v43 + 32) & ~*(v71 + 80);
    v45 = swift_allocObject(v41, v44 + 2 * v78, v43 | 7);
    *(v45 + 16) = 2;
    *(v45 + 24) = 4;
    v46 = v45 + v44;
    v47 = *(v42 + 16);
    v48 = v70;
    v47(v46, v75, v70);
    v49 = v78 + v46;
    v50 = v69;
    v47(v49, v69, v48);
    v51 = v66;
    PipelineConfiguration.init(models:names:)(v45, _swiftEmptyArrayStorage);
    (*(v64 + 104))(v51, enum case for ModelKind.pipeline(_:), v65);
    Model.kind.setter(v51);
    v52 = *(v71 + 8);
    v53 = v50;
    v54 = v70;
    v52(v53, v70);
    v52(v75, v54);
    v33 = *(v73 + 8);
    v34 = v67;
  }

  v55 = v72;
  v33(v34, v72);
  return v33(v77, v55);
}

uint64_t MLFewShotSoundClassifier.write(to:)(uint64_t a1)
{
  v48 = v1;
  v49 = v2;
  v47 = a1;
  v41 = type metadata accessor for Model(0);
  v3 = *(v41 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v45 = v40;
  v7 = type metadata accessor for URL(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = v48;
  result = static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(v47, 0xD000000000000016, ("total_item_count" + 0x8000000000000000), 0x6C65646F6D6C6DLL, 0xE700000000000000);
  if (!v12)
  {
    v43 = 0;
    v42 = v3;
    v46 = v40;
    v47 = v7;
    v48 = v8;
    v14 = type metadata accessor for MLFewShotSoundClassifier(0);
    v15 = *(v49 + *(v14 + 48));
    v16 = [v15 trainingDataEmbeddings];
    v17 = v16;
    v18 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLMultiArray, MLMultiArray_ptr);
    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v17, v18);

    if (specialized Array._getCount()(v19))
    {
      v44 = v14;
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v19 & 0xC000000000000003) == 0, v19);
      if ((v19 & 0xC000000000000003) != 0)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)(0, v19);
      }

      else
      {
        v20 = *(v19 + 32);
      }

      v21 = v20;
      v19;
      v22 = [v21 shape];
      v23 = v22;

      v24 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
      v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v23, v24);

      v26 = [v15 exemplar];
      v27 = v26;
      v28 = v43;
      v29 = UnsafeBufferPointer.init(_:)(v27, &type metadata for Float);
      if (v28)
      {
        (*(v48 + 8))(v46, v47);
        return v25;
      }

      v43 = specialized _copyCollectionToContiguousArray<A>(_:)(v29, v30);
      v33 = v49 + *(v44 + 40);
      v49 = *(v49 + *(v44 + 32));
      objc_msgSend_stret(v40, v15, "inferenceWindowSize");
      v34 = v40[0];
      ML24MLFewShotSoundClassifierV5write2toy10Foundation3URLV_tKFSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8NSNumberCG_Sis5NeverOTg5074_s8CreateML24MLFewShotSoundClassifierV5write2toy10Foundation3URLV_tKFSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_n(v25);
      v44 = 0;
      v25;
      v36 = v49;
      v49 = ML24MLFewShotSoundClassifierV5write2toy10Foundation3URLV_tKFSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_n;
      v37 = v44;
      MLFewShotSoundClassifier.TemporalClassifier.pipeline(classLabels:inferenceWindowSize:framewiseEmbeddingShape:exemplar:)(v36, v34, ML24MLFewShotSoundClassifierV5write2toy10Foundation3URLV_tKFSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_n, v43);
      if (!v37)
      {

        v49;
        v38 = v46;
        Model.write(to:)(v46);
        v39 = v47;
        (*(v42 + 8))(v45, v41);
        return (*(v48 + 8))(v38, v39);
      }

      v49;
    }

    else
    {
      v19;
      v31 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v31, 0, 0);
      *v32 = 0xD000000000000037;
      *(v32 + 8) = "FewShotSoundClassifier" + 0x8000000000000000;
      *(v32 + 16) = 0;
      *(v32 + 32) = 0;
      *(v32 + 48) = 2;
      swift_willThrow(&type metadata for MLCreateError, v31);
    }

    return (*(v48 + 8))(v46, v47);
  }

  return result;
}

uint64_t outlined destroy of NeuralNetwork?(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NeuralNetwork?);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t outlined destroy of MLFewShotSoundClassifier.CausalConv1D(uint64_t a1)
{
  v1 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t MLImageClassifier.evaluation(on:)(uint64_t a1)
{
  v27 = v2;
  v28 = a1;
  v29 = v1;
  v3 = *(type metadata accessor for MLImageClassifier(0) - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *(type metadata accessor for MLImageClassifier.DataSource(0) - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v26 = v24;
  outlined init with copy of MLTrainingSessionParameters(a1, v24, type metadata accessor for MLImageClassifier.DataSource);
  outlined init with copy of MLTrainingSessionParameters(v27, v24, type metadata accessor for MLImageClassifier);
  v11 = *(v7 + 80);
  v12 = ~*(v7 + 80) & (v11 + 16);
  v13 = *(v3 + 80);
  v14 = ~v13 & (v12 + v13 + v8);
  v15 = swift_allocObject(&unk_391FB8, v14 + v4, v13 | v11 | 7);
  outlined init with take of MLClassifierMetrics(v26, v15 + v12, type metadata accessor for MLImageClassifier.DataSource);
  outlined init with take of MLClassifierMetrics(v24, v15 + v14, type metadata accessor for MLImageClassifier);
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLImageClassifier.evaluation(on:), v15);
  v17 = v16;

  v25 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [(predicted: String, label: String)]);
  v19 = lazy protocol witness table accessor for type [(predicted: String, label: String)] and conformance [A]();
  v20 = v29;
  ClassificationMetrics.init<A>(_:)(&v25, &type metadata for String, v18, &protocol witness table for String, v19);
  v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  swift_storeEnumTagMultiPayload(v20, v21, 0);
  v22 = type metadata accessor for MLClassifierMetrics.Contents(0);
  return swift_storeEnumTagMultiPayload(v20, v22, 0);
}

{
  v7[0] = v1;
  v2 = type metadata accessor for MLImageClassifier.DataSource(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v7[0] = a1;
  swift_storeEnumTagMultiPayload(v7, v2, 2);
  a1;
  MLImageClassifier.evaluation(on:)(v7);
  return outlined destroy of MLImageClassifier.DataSource(v7);
}

uint64_t closure #1 in MLImageClassifier.evaluation(on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a2;
  v3[2] = a1;
  v4 = *(type metadata accessor for MLImageClassifier(0) - 8);
  v3[5] = v4;
  v5 = *(v4 + 64);
  v3[6] = v5;
  v3[7] = swift_task_alloc((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in MLImageClassifier.evaluation(on:), 0, 0);
}

uint64_t closure #1 in MLImageClassifier.evaluation(on:)()
{
  v1 = static _ImageUtilities.getImageURLsAndLabels(from:)(*(v0 + 24));
  v2 = specialized _NativeDictionary.mapValues<A>(_:)(v1);
  v1;
  v12 = *(v0 + 56);
  v3 = *(v0 + 48);
  v4 = *(v0 + 40);
  outlined init with copy of MLTrainingSessionParameters(*(v0 + 32), v12, type metadata accessor for MLImageClassifier);
  v5 = *(v4 + 80);
  v6 = ~*(v4 + 80) & (v5 + 16);
  v7 = swift_allocObject(&unk_391FE0, v6 + v3, v5 | 7);
  outlined init with take of MLClassifierMetrics(v12, v7 + v6, type metadata accessor for MLImageClassifier);
  v8 = specialized _NativeDictionary.mapValues<A>(_:)(v2, partial apply for implicit closure #2 in implicit closure #1 in closure #1 in MLImageClassifier.evaluation(on:));

  v10 = *(v0 + 16);
  v13 = *(v0 + 56);
  v11 = specialized Sequence.flatMap<A>(_:)(v8);

  *v10 = v11;
  v13;
  return (*(v0 + 8))();
}

uint64_t sub_149183()
{
  v1 = type metadata accessor for MLImageClassifier.DataSource(0);
  v2 = *(v1 - 8);
  v35 = *(v2 + 80);
  v3 = ~*(v2 + 80) & (v35 + 16);
  v4 = v3 + *(v2 + 64);
  v39 = type metadata accessor for MLImageClassifier(0);
  v5 = *(v39 - 8);
  v36 = *(v5 + 80);
  v6 = ~v36 & (v36 + v4);
  v37 = *(v5 + 64);
  v38 = v0;
  v7 = (v0 + v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v7, v1);
  if (EnumCaseMultiPayload == 2)
  {
    *v7;
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v9 = type metadata accessor for URL(0);
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  v10 = (v0 + v6);

  if (*(v0 + v6 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v10 + 3);
  }

  v11 = v39;
  if (v10[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v10 + 7);
  }

  v12 = v10 + *(v39 + 24);
  v42 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v13 = swift_getEnumCaseMultiPayload(v12, v42);
  switch(v13)
  {
    case 2:
      *v12;
      break;
    case 1:
      v40 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v16 = &v12[*(v40 + 20)];
      v17 = type metadata accessor for DataFrame(0);
      v18 = v16;
      v19 = *(*(v17 - 8) + 8);
      v19(v18, v17);
      v20 = v17;
      v11 = v39;
      v19(&v12[*(v40 + 24)], v20);
      break;
    case 0:
      v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v12, v14) == 1)
      {
        v15 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v15 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v21 = __swift_instantiateConcreteTypeFromMangledName(v15);
      (*(*(v21 - 8) + 8))(v12, v21);
      break;
  }

  v22 = v10 + *(v11 + 28);
  v23 = swift_getEnumCaseMultiPayload(v22, v42);
  switch(v23)
  {
    case 2:
      *v22;
      break;
    case 1:
      v41 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v26 = &v22[*(v41 + 20)];
      v27 = type metadata accessor for DataFrame(0);
      v43 = *(*(v27 - 8) + 8);
      v28 = v26;
      v11 = v39;
      v43(v28, v27);
      v43(&v22[*(v41 + 24)], v27);
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

      v29 = __swift_instantiateConcreteTypeFromMangledName(v25);
      (*(*(v29 - 8) + 8))(v22, v29);
      break;
  }

  v30 = v10 + *(v11 + 32);
  v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v32 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
  if (swift_getEnumCaseMultiPayload(v30, v31) == 1)
  {
    v32 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
  }

  v33 = __swift_instantiateConcreteTypeFromMangledName(v32);
  (*(*(v33 - 8) + 8))(v30, v33);
  return swift_deallocObject(v38, v37 + v6, v36 | v35 | 7);
}

uint64_t partial apply for closure #1 in MLImageClassifier.evaluation(on:)(uint64_t a1)
{
  v3 = *(type metadata accessor for MLImageClassifier.DataSource(0) - 8);
  v4 = ~*(v3 + 80) & (*(v3 + 80) + 16);
  v5 = v4 + *(v3 + 64);
  v6 = *(*(type metadata accessor for MLImageClassifier(0) - 8) + 80);
  v7 = swift_task_alloc(64);
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLImageClassifier.evaluation(on:)(a1, v1 + v4, v1 + ((v6 + v5) & ~v6));
}

uint64_t outlined destroy of MLImageClassifier.DataSource(uint64_t a1)
{
  v1 = type metadata accessor for MLImageClassifier.DataSource(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t sub_149926()
{
  v32 = type metadata accessor for MLImageClassifier(0);
  v1 = *(v32 - 1);
  v2 = *(v1 + 80);
  v3 = ~*(v1 + 80) & (v2 + 16);
  v29 = *(v1 + 64);
  v4 = (v3 + v0);

  v28 = v0;
  if (*(v0 + v3 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v4 + 3);
  }

  if (v4[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v4 + 7);
  }

  v5 = v4 + v32[6];
  v33 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v5, v33);
  switch(EnumCaseMultiPayload)
  {
    case 2:
      *v5;
      break;
    case 1:
      v30 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v35 = v2;
      v9 = &v5[*(v30 + 20)];
      v10 = type metadata accessor for DataFrame(0);
      v31 = *(*(v10 - 8) + 8);
      v11 = v9;
      v2 = v35;
      v31(v11, v10);
      v31(&v5[*(v30 + 24)], v10);
      break;
    case 0:
      v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v5, v7) == 1)
      {
        v8 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v8 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v12 = __swift_instantiateConcreteTypeFromMangledName(v8);
      (*(*(v12 - 8) + 8))(v5, v12);
      break;
  }

  v13 = v4 + v32[7];
  v14 = swift_getEnumCaseMultiPayload(v13, v33);
  switch(v14)
  {
    case 2:
      *v13;
      break;
    case 1:
      v34 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v17 = &v13[*(v34 + 20)];
      v36 = v2;
      v18 = type metadata accessor for DataFrame(0);
      v19 = v17;
      v20 = *(*(v18 - 8) + 8);
      v20(v19, v18);
      v21 = v18;
      v2 = v36;
      v20(&v13[*(v34 + 24)], v21);
      break;
    case 0:
      v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v13, v15) == 1)
      {
        v16 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v16 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v22 = __swift_instantiateConcreteTypeFromMangledName(v16);
      (*(*(v22 - 8) + 8))(v13, v22);
      break;
  }

  v23 = v4 + v32[8];
  v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v25 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
  if (swift_getEnumCaseMultiPayload(v23, v24) == 1)
  {
    v25 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
  }

  v26 = __swift_instantiateConcreteTypeFromMangledName(v25);
  (*(*(v26 - 8) + 8))(v23, v26);
  return swift_deallocObject(v28, v29 + v3, v2 | 7);
}

void *specialized _NativeDictionary.mapValues<A>(_:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<String, [String]>);
  v4 = static _DictionaryStorage.copy(original:)(a1);
  v5 = 1 << *(a1 + 32);
  v6 = ~(-1 << v5);
  if (v5 >= 64)
  {
    v6 = -1;
  }

  v31 = a1;
  v7 = *(a1 + 64) & v6;
  v8 = v4;
  v30 = (v5 + 63) >> 6;
  v9 = 0;
  v29 = v4;
  while (1)
  {
    if (v7)
    {
      _BitScanForward64(&v10, v7);
      v28 = (v7 - 1) & v7;
      v27 = v9;
      v11 = v10 | (v9 << 6);
      goto LABEL_17;
    }

    v12 = v9 + 1;
    if (__OFADD__(1, v9))
    {
      BUG();
    }

    if (v12 >= v30)
    {
      return v8;
    }

    v13 = *(v31 + 8 * v12 + 64);
    if (!v13)
    {
      break;
    }

LABEL_16:
    _BitScanForward64(&v15, v13);
    v28 = v13 & (v13 - 1);
    v11 = v15 | (v12 << 6);
    v27 = v12;
LABEL_17:
    v16 = *(v31 + 48);
    v17 = *(*(v31 + 56) + 8 * v11);
    v24 = *(v16 + 16 * v11);
    v18 = *(v16 + 16 * v11 + 8);
    v17;
    v18;
    v25 = a2(v17);
    v17;
    if (v2)
    {
      v18;
      v8 = v29;

      return v8;
    }

    v8 = v29;
    v29[(v11 >> 6) + 8] |= 1 << v11;
    v19 = v29[6];
    *(v19 + 16 * v11) = v24;
    *(v19 + 16 * v11 + 8) = v18;
    *(v29[7] + 8 * v11) = v25;
    v20 = v29[2];
    v21 = __OFADD__(1, v20);
    v22 = v20 + 1;
    if (v21)
    {
      BUG();
    }

    v29[2] = v22;
    v9 = v27;
    v7 = v28;
  }

  v14 = v9 + 2;
  if (v9 + 2 >= v30)
  {
    return v8;
  }

  v13 = *(v31 + 8 * v12 + 72);
  if (v13)
  {
    goto LABEL_15;
  }

  v14 = v9 + 3;
  if (v9 + 3 >= v30)
  {
    return v8;
  }

  v13 = *(v31 + 8 * v12 + 80);
  if (v13)
  {
    goto LABEL_15;
  }

  v14 = v9 + 4;
  if (v9 + 4 >= v30)
  {
    return v8;
  }

  v13 = *(v31 + 8 * v12 + 88);
  if (v13)
  {
LABEL_15:
    v12 = v14;
    goto LABEL_16;
  }

  while (v9 + 5 < v30)
  {
    v13 = *(v31 + 8 * v9++ + 104);
    if (v13)
    {
      v12 = v9 + 4;
      goto LABEL_16;
    }
  }

  return v8;
}

void *initializeBufferWithCopyOfBuffer for MLLinearRegressor.Model(void *a1, void *a2, uint64_t a3)
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

    v10 = *(a3 + 24);
    v11 = v3 + v10;
    v12 = a2 + v10;
    v13 = type metadata accessor for BaseLinearRegressorModel(0);
    (*(*(v13 - 8) + 16))(v11, v12, v13);
  }

  return v3;
}

uint64_t destroy for MLLinearRegressor.Model(void *a1, uint64_t a2)
{
  a1[1], a2;
  v3 = a1[2];
  if (v3)
  {
    v3, a2;
    a1[4], a2;
  }

  v4 = a1 + *(a2 + 24);
  v5 = type metadata accessor for BaseLinearRegressorModel(0);
  return (*(*(v5 - 8) + 8))(v4, v5);
}

void *initializeWithCopy for MLLinearRegressor.Model(void *a1, void *a2, uint64_t a3)
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

  v8 = *(a3 + 24);
  v9 = a1 + v8;
  v10 = a2 + v8;
  v11 = type metadata accessor for BaseLinearRegressorModel(0);
  (*(*(v11 - 8) + 16))(v9, v10, v11);
  return a1;
}

void *assignWithCopy for MLLinearRegressor.Model(void *a1, void *a2, uint64_t a3)
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
      outlined destroy of FeatureVectorizer<Double>.Transformer((a1 + 2));
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

  v13 = *(a3 + 24);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = type metadata accessor for BaseLinearRegressorModel(0);
  (*(*(v16 - 8) + 24))(v14, v15, v16);
  return a1;
}

uint64_t initializeWithTake for MLLinearRegressor.Model(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a3 + 24);
  v4 = a1 + v3;
  v5 = v3 + a2;
  v6 = type metadata accessor for BaseLinearRegressorModel(0);
  (*(*(v6 - 8) + 32))(v4, v5, v6);
  return a1;
}

void *assignWithTake for MLLinearRegressor.Model(void *a1, void *a2, uint64_t a3)
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
      outlined destroy of FeatureVectorizer<Double>.Transformer((a1 + 2));
      *v6 = *v7;
      a1[4] = a2[4];
    }
  }

  else
  {
    a1[4] = a2[4];
    *v6 = *v7;
  }

  v11 = *(a3 + 24);
  v12 = a1 + v11;
  v13 = a2 + v11;
  v14 = type metadata accessor for BaseLinearRegressorModel(0);
  (*(*(v14 - 8) + 40))(v12, v13, v14);
  return a1;
}

uint64_t sub_14A217(uint64_t a1, unsigned int a2, uint64_t a3)
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
    v5 = type metadata accessor for BaseLinearRegressorModel(0);
    return __swift_getEnumTagSinglePayload(*(a3 + 24) + a1, a2, v5);
  }

  return result;
}

uint64_t sub_14A29F(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + 8) = 2 * (a2 - 1);
  }

  else
  {
    v5 = type metadata accessor for BaseLinearRegressorModel(0);
    return __swift_storeEnumTagSinglePayload(*(a4 + 24) + a1, a2, a2, v5);
  }

  return result;
}

uint64_t type metadata accessor for MLLinearRegressor.Model(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLLinearRegressor.Model;
  if (!type metadata singleton initialization cache for MLLinearRegressor.Model)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLLinearRegressor.Model);
  }

  return result;
}

uint64_t type metadata completion function for MLLinearRegressor.Model(uint64_t a1)
{
  v3[0] = &unk_343058;
  v3[1] = &unk_343070;
  result = type metadata accessor for BaseLinearRegressorModel(319);
  if (v2 <= 0x3F)
  {
    v3[2] = *(result - 8) + 64;
    swift_initStructMetadata(a1, 256, 3, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t MLLinearRegressor.Model.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v5;
  v38 = a3;
  v34 = a2;
  v29 = v3;
  v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v33 = *(v28 - 8);
  v7 = *(v33 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v30 = &v27;
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Double>);
  v31 = *(v32 - 8);
  v10 = *(v31 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v13 = v5[2];
  if (!v13)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001CLL, "ressorModel.swift" + 0x8000000000000000, "CreateML/MLLinearRegressor.Model.swift", 38, 2, 25, 0);
    BUG();
  }

  result = specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(a1, 1u, v13, v5[3], v5[4]);
  if (!v4)
  {
    v35 = 0;
    v15 = v5 + *(type metadata accessor for MLLinearRegressor.Model(0) + 24);
    v36 = &v27;
    v16 = BaseLinearRegressorModel.applied(features:eventHandler:)(&v27, v34, v38);
    v38 = *v6;
    v17 = v6[1];
    v37 = v16;
    v17;
    v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ContiguousArray<Double>);
    v19 = lazy protocol witness table accessor for type ContiguousArray<Double> and conformance ContiguousArray<A>(&lazy protocol witness table cache variable for type ContiguousArray<Double> and conformance ContiguousArray<A>, &demangling cache variable for type metadata for ContiguousArray<Double>, &protocol conformance descriptor for ContiguousArray<A>);
    v20 = v30;
    Column.init<A>(name:contents:)(v38, v17, &v37, &type metadata for Double, v18, v19);
    v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<AnyColumn>);
    v22 = type metadata accessor for AnyColumn(0);
    v23 = swift_allocObject(v21, ((*(*(v22 - 8) + 80) + 32) & ~*(*(v22 - 8) + 80)) + *(*(v22 - 8) + 72), *(*(v22 - 8) + 80) | 7);
    *(v23 + 16) = 1;
    *(v23 + 24) = 2;
    v24 = v28;
    Column.eraseToAnyColumn()(v28);
    v37 = v23;
    v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [AnyColumn]);
    v26 = lazy protocol witness table accessor for type ContiguousArray<Double> and conformance ContiguousArray<A>(&lazy protocol witness table cache variable for type [AnyColumn] and conformance [A], &demangling cache variable for type metadata for [AnyColumn], &protocol conformance descriptor for [A]);
    DataFrame.init<A>(columns:)(&v37, v25, v26);
    (*(v33 + 8))(v20, v24);
    return (*(v31 + 8))(v36, v32);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MLLinearRegressor.Model and conformance MLLinearRegressor.Model()
{
  result = lazy protocol witness table cache variable for type MLLinearRegressor.Model and conformance MLLinearRegressor.Model;
  if (!lazy protocol witness table cache variable for type MLLinearRegressor.Model and conformance MLLinearRegressor.Model)
  {
    v1 = type metadata accessor for MLLinearRegressor.Model(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for MLLinearRegressor.Model, v1);
    lazy protocol witness table cache variable for type MLLinearRegressor.Model and conformance MLLinearRegressor.Model = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ContiguousArray<Double> and conformance ContiguousArray<A>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!*a1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstract(a2);
    result = swift_getWitnessTable(a3, v5);
    *a1 = result;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for MLActionClassifier.PersistentParameters(uint64_t *a1, uint64_t a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v21 = *a2;
    *v4 = *a2;
    v4 = (v21 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = a3;
    v7 = type metadata accessor for MLActionClassifier.DataSource(0);
    v96 = v6;
    v103 = v7;
    switch(swift_getEnumCaseMultiPayload(a2, v7))
    {
      case 0u:
        v8 = type metadata accessor for URL(0);
        v9 = *(*(v8 - 8) + 16);
        v9(a1, a2, v8);
        v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v9((a1 + v10[12]), a2 + v10[12], v8);
        v11 = v10[16];
        *(a1 + v11) = *(a2 + v11);
        v12 = *(a2 + v11 + 8);
        *(v4 + v11 + 8) = v12;
        v13 = v10[20];
        *(v4 + v13) = *(a2 + v13);
        v14 = *(a2 + v13 + 8);
        *(v4 + v13 + 8) = v14;
        v15 = v10[24];
        *(v4 + v15) = *(a2 + v15);
        v16 = *(a2 + v15 + 8);
        *(v4 + v15 + 8) = v16;
        v17 = v10[28];
        *(v4 + v17) = *(a2 + v17);
        v18 = *(a2 + v17 + 8);
        *(v4 + v17 + 8) = v18;
        v12;
        v14;
        v16;
        LOBYTE(v12) = v18;
        v6 = v96;
        v12;
        a1 = v4;
        v19 = v103;
        v20 = 0;
        goto LABEL_13;
      case 1u:
        v35 = type metadata accessor for URL(0);
        (*(*(v35 - 8) + 16))(a1, a2, v35);
        v93 = 1;
        goto LABEL_9;
      case 2u:
        v28 = type metadata accessor for URL(0);
        (*(*(v28 - 8) + 16))(a1, a2, v28);
        v93 = 2;
LABEL_9:
        v20 = v93;
        v19 = v7;
        goto LABEL_13;
      case 3u:
        v29 = *a2;
        v30 = v6;
        v31 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v31);
        *a1 = v29;
        *(a1 + 8) = v31;
        a1[2] = *(a2 + 16);
        v32 = *(a2 + 24);
        v4[3] = v32;
        v4[4] = *(a2 + 32);
        v33 = *(a2 + 40);
        v4[5] = v33;
        v4[6] = *(a2 + 48);
        v34 = *(a2 + 56);
        v4[7] = v34;
        v32;
        v33;
        LOBYTE(v32) = v34;
        v6 = v30;
        v32;
        v92 = 3;
        goto LABEL_12;
      case 4u:
        v22 = *a2;
        v23 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v23);
        *a1 = v22;
        *(a1 + 8) = v23;
        a1[2] = *(a2 + 16);
        v24 = *(a2 + 24);
        v4[3] = v24;
        v4[4] = *(a2 + 32);
        v25 = *(a2 + 40);
        v4[5] = v25;
        v4[6] = *(a2 + 48);
        v26 = *(a2 + 56);
        v4[7] = v26;
        v4[8] = *(a2 + 64);
        v27 = *(a2 + 72);
        v4[9] = v27;
        v24;
        v25;
        LOBYTE(v24) = v26;
        v6 = v96;
        v24;
        v27;
        v92 = 4;
        goto LABEL_12;
      case 5u:
        v36 = type metadata accessor for DataFrame(0);
        (*(*(v36 - 8) + 16))(a1, a2, v36);
        v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v38 = v37[12];
        *(a1 + v38) = *(a2 + v38);
        v39 = *(a2 + v38 + 8);
        *(v4 + v38 + 8) = v39;
        v40 = v37[16];
        *(v4 + v40) = *(a2 + v40);
        v41 = *(a2 + v40 + 8);
        *(v4 + v40 + 8) = v41;
        v42 = v37[20];
        *(v4 + v42) = *(a2 + v42);
        v43 = v6;
        v44 = *(a2 + v42 + 8);
        *(v4 + v42 + 8) = v44;
        v39;
        v41;
        LOBYTE(v39) = v44;
        v6 = v43;
        v39;
        v92 = 5;
        goto LABEL_12;
      case 6u:
        v45 = type metadata accessor for DataFrame(0);
        (*(*(v45 - 8) + 16))(a1, a2, v45);
        v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v47 = v46[12];
        *(a1 + v47) = *(a2 + v47);
        v48 = *(a2 + v47 + 8);
        *(v4 + v47 + 8) = v48;
        v49 = v46[16];
        *(v4 + v49) = *(a2 + v49);
        v50 = *(a2 + v49 + 8);
        *(v4 + v49 + 8) = v50;
        v51 = v46[20];
        *(v4 + v51) = *(a2 + v51);
        v52 = *(a2 + v51 + 8);
        *(v4 + v51 + 8) = v52;
        v53 = v46[24];
        *(v4 + v53) = *(a2 + v53);
        v54 = *(a2 + v53 + 8);
        *(v4 + v53 + 8) = v54;
        v48;
        v50;
        LOBYTE(v48) = v52;
        v6 = v96;
        v48;
        v54;
        v92 = 6;
LABEL_12:
        v20 = v92;
        a1 = v4;
        v19 = v103;
LABEL_13:
        swift_storeEnumTagMultiPayload(a1, v19, v20);
        v55 = v6[5];
        v56 = v4 + v55;
        v57 = a2 + v55;
        v58 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
        if (swift_getEnumCaseMultiPayload(v57, v58) != 1)
        {
          JUMPOUT(0x14AB5ALL);
        }

        v97 = v58;
        switch(swift_getEnumCaseMultiPayload(v57, v103))
        {
          case 0u:
            v98 = type metadata accessor for URL(0);
            v94 = *(*(v98 - 8) + 16);
            v94(v56, v57, v98);
            v59 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
            v94(&v56[v59[12]], v57 + v59[12], v98);
            v60 = v59[16];
            *&v56[v60] = *(v57 + v60);
            v61 = *(v57 + v60 + 8);
            *&v56[v60 + 8] = v61;
            v62 = v59[20];
            *&v56[v62] = *(v57 + v62);
            v99 = *(v57 + v62 + 8);
            *&v56[v62 + 8] = v99;
            v63 = v59[24];
            *&v56[v63] = *(v57 + v63);
            v95 = *(v57 + v63 + 8);
            *&v56[v63 + 8] = v95;
            v64 = v59[28];
            *&v56[v64] = *(v57 + v64);
            v65 = *(v57 + v64 + 8);
            *&v56[v64 + 8] = v65;
            v61;
            v99;
            v95;
            v65;
            JUMPOUT(0x14AB55);
          case 1u:
            v73 = type metadata accessor for URL(0);
            (*(*(v73 - 8) + 16))(v56, v57, v73);
            swift_storeEnumTagMultiPayload(v56, v103, 1);
            break;
          case 2u:
            v68 = type metadata accessor for URL(0);
            (*(*(v68 - 8) + 16))(v56, v57, v68);
            swift_storeEnumTagMultiPayload(v56, v103, 2);
            break;
          case 3u:
            v101 = *v57;
            v69 = *(v57 + 8);
            outlined copy of Result<_DataTable, Error>(*v57, v69);
            *v56 = v101;
            v56[8] = v69;
            *(v56 + 2) = *(v57 + 16);
            v70 = *(v57 + 24);
            *(v56 + 3) = v70;
            *(v56 + 4) = *(v57 + 32);
            v71 = *(v57 + 40);
            *(v56 + 5) = v71;
            *(v56 + 6) = *(v57 + 48);
            v72 = *(v57 + 56);
            *(v56 + 7) = v72;
            v70;
            v71;
            v72;
            swift_storeEnumTagMultiPayload(v56, v103, 3);
            break;
          case 4u:
            v100 = *v57;
            v66 = *(v57 + 8);
            outlined copy of Result<_DataTable, Error>(*v57, v66);
            *v56 = v100;
            v56[8] = v66;
            *(v56 + 2) = *(v57 + 16);
            v67 = *(v57 + 24);
            *(v56 + 3) = v67;
            *(v56 + 4) = *(v57 + 32);
            *(v56 + 5) = *(v57 + 40);
            *(v56 + 6) = *(v57 + 48);
            *(v56 + 7) = *(v57 + 56);
            *(v56 + 8) = *(v57 + 64);
            *(v56 + 9) = *(v57 + 72);
            v67;
            JUMPOUT(0x14ABE7);
          case 5u:
            v74 = type metadata accessor for DataFrame(0);
            (*(*(v74 - 8) + 16))(v56, v57, v74);
            v75 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
            v76 = v75[12];
            *&v56[v76] = *(v57 + v76);
            v77 = *(v57 + v76 + 8);
            *&v56[v76 + 8] = v77;
            v78 = v75[16];
            *&v56[v78] = *(v57 + v78);
            v79 = *(v57 + v78 + 8);
            *&v56[v78 + 8] = v79;
            v80 = v75[20];
            *&v56[v80] = *(v57 + v80);
            v81 = *(v57 + v80 + 8);
            *&v56[v80 + 8] = v81;
            v77;
            v79;
            v81;
            swift_storeEnumTagMultiPayload(v56, v103, 5);
            break;
          case 6u:
            v82 = type metadata accessor for DataFrame(0);
            (*(*(v82 - 8) + 16))(v56, v57, v82);
            v83 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
            v84 = v83[12];
            *&v56[v84] = *(v57 + v84);
            v85 = *(v57 + v84 + 8);
            *&v56[v84 + 8] = v85;
            v86 = v83[16];
            *&v56[v86] = *(v57 + v86);
            v87 = *(v57 + v86 + 8);
            *&v56[v86 + 8] = v87;
            v88 = v83[20];
            *&v56[v88] = *(v57 + v88);
            v102 = *(v57 + v88 + 8);
            *&v56[v88 + 8] = v102;
            v89 = v83[24];
            *&v56[v89] = *(v57 + v89);
            v90 = *(v57 + v89 + 8);
            *&v56[v89 + 8] = v90;
            v85;
            v87;
            v102;
            v90;
            swift_storeEnumTagMultiPayload(v56, v103, 6);
            break;
          case 7u:
            JUMPOUT(0x14AE60);
        }

        swift_storeEnumTagMultiPayload(v56, v97, 1);
        *(v4 + v96[6]) = *(a2 + v96[6]);
        *(v4 + v96[7]) = *(a2 + v96[7]);
        *(v4 + v96[8]) = *(a2 + v96[8]);
        *(v4 + v96[9]) = *(a2 + v96[9]);
        *(v4 + v96[10]) = *(a2 + v96[10]);
        break;
    }
  }

  return v4;
}

uint64_t destroy for MLActionClassifier.PersistentParameters(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = type metadata accessor for MLActionClassifier.DataSource(0);
  switch(swift_getEnumCaseMultiPayload(a1, v4))
  {
    case 0u:
      v7 = type metadata accessor for URL(0);
      v8 = *(*(v7 - 8) + 8);
      v8(a1, v7);
      v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v8(a1 + v9[12], v7);
      v2 = a2;
      *(a1 + v9[16] + 8);
      *(a1 + v9[20] + 8);
      *(a1 + v9[24] + 8);
      v10 = v9[28];
      goto LABEL_8;
    case 1u:
    case 2u:
      v5 = type metadata accessor for URL(0);
      (*(*(v5 - 8) + 8))(a1, v5);
      break;
    case 3u:
      outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
      *(a1 + 24);
      *(a1 + 40);
      v6 = *(a1 + 56);
      goto LABEL_9;
    case 4u:
      outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
      *(a1 + 24);
      *(a1 + 40);
      *(a1 + 56);
      v6 = *(a1 + 72);
      goto LABEL_9;
    case 5u:
      v11 = type metadata accessor for DataFrame(0);
      (*(*(v11 - 8) + 8))(a1, v11);
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      *(a1 + v12[12] + 8);
      *(a1 + v12[16] + 8);
      v10 = v12[20];
      goto LABEL_8;
    case 6u:
      v13 = type metadata accessor for DataFrame(0);
      (*(*(v13 - 8) + 8))(a1, v13);
      v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      *(a1 + v14[12] + 8);
      *(a1 + v14[16] + 8);
      *(a1 + v14[20] + 8);
      v10 = v14[24];
LABEL_8:
      v6 = *(a1 + v10 + 8);
LABEL_9:
      v6;
      break;
    default:
      break;
  }

  v15 = *(v2 + 20) + a1;
  v16 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
  result = swift_getEnumCaseMultiPayload(v15, v16);
  if (result == 1)
  {
    result = swift_getEnumCaseMultiPayload(v15, v4);
    switch(result)
    {
      case 0:
        v19 = type metadata accessor for URL(0);
        v20 = *(*(v19 - 8) + 8);
        v20(v15, v19);
        v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v20(v15 + v21[12], v19);
        *(v15 + v21[16] + 8);
        *(v15 + v21[20] + 8);
        *(v15 + v21[24] + 8);
        v22 = v21[28];
        goto LABEL_19;
      case 1:
      case 2:
        v18 = type metadata accessor for URL(0);
        return (*(*(v18 - 8) + 8))(v15, v18);
      case 3:
        outlined consume of Result<_DataTable, Error>(*v15, *(v15 + 8));
        *(v15 + 24);
        *(v15 + 40);
        return *(v15 + 56);
      case 4:
        outlined consume of Result<_DataTable, Error>(*v15, *(v15 + 8));
        *(v15 + 24);
        *(v15 + 40);
        *(v15 + 56);
        return *(v15 + 72);
      case 5:
        v23 = type metadata accessor for DataFrame(0);
        (*(*(v23 - 8) + 8))(v15, v23);
        v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *(v15 + v24[12] + 8);
        *(v15 + v24[16] + 8);
        v22 = v24[20];
        goto LABEL_19;
      case 6:
        v25 = type metadata accessor for DataFrame(0);
        (*(*(v25 - 8) + 8))(v15, v25);
        v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *(v15 + v26[12] + 8);
        *(v15 + v26[16] + 8);
        *(v15 + v26[20] + 8);
        v22 = v26[24];
LABEL_19:
        result = *(v15 + v22 + 8);
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t initializeWithCopy for MLActionClassifier.PersistentParameters(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = type metadata accessor for MLActionClassifier.DataSource(0);
  v97 = v5;
  switch(swift_getEnumCaseMultiPayload(a2, v5))
  {
    case 0u:
      v6 = type metadata accessor for URL(0);
      v7 = *(*(v6 - 8) + 16);
      v7(a1, a2, v6);
      v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v7(a1 + v8[12], a2 + v8[12], v6);
      v9 = v8[16];
      *(a1 + v9) = *(a2 + v9);
      v10 = *(a2 + v9 + 8);
      *(a1 + v9 + 8) = v10;
      v11 = v8[20];
      *(a1 + v11) = *(a2 + v11);
      v12 = *(a2 + v11 + 8);
      *(a1 + v11 + 8) = v12;
      v13 = v8[24];
      *(a1 + v13) = *(a2 + v13);
      v14 = *(a2 + v13 + 8);
      *(a1 + v13 + 8) = v14;
      v15 = v8[28];
      *(a1 + v15) = *(a2 + v15);
      v16 = *(a2 + v15 + 8);
      *(a1 + v15 + 8) = v16;
      v10;
      v12;
      v14;
      v16;
      v17 = a1;
      v18 = v97;
      v19 = 0;
      break;
    case 1u:
      v32 = type metadata accessor for URL(0);
      (*(*(v32 - 8) + 16))(a1, a2, v32);
      v91 = 1;
      goto LABEL_8;
    case 2u:
      v26 = type metadata accessor for URL(0);
      (*(*(v26 - 8) + 16))(a1, a2, v26);
      v91 = 2;
      goto LABEL_8;
    case 3u:
      v27 = *a2;
      v28 = *(a2 + 8);
      outlined copy of Result<_DataTable, Error>(*a2, v28);
      *a1 = v27;
      *(a1 + 8) = v28;
      *(a1 + 16) = *(a2 + 16);
      v29 = *(a2 + 24);
      *(a1 + 24) = v29;
      *(a1 + 32) = *(a2 + 32);
      v30 = *(a2 + 40);
      *(a1 + 40) = v30;
      *(a1 + 48) = *(a2 + 48);
      v31 = *(a2 + 56);
      *(a1 + 56) = v31;
      v29;
      v30;
      v31;
      v91 = 3;
      goto LABEL_8;
    case 4u:
      v20 = *a2;
      v21 = *(a2 + 8);
      outlined copy of Result<_DataTable, Error>(*a2, v21);
      *a1 = v20;
      *(a1 + 8) = v21;
      *(a1 + 16) = *(a2 + 16);
      v22 = *(a2 + 24);
      *(a1 + 24) = v22;
      *(a1 + 32) = *(a2 + 32);
      v23 = *(a2 + 40);
      *(a1 + 40) = v23;
      *(a1 + 48) = *(a2 + 48);
      v24 = *(a2 + 56);
      *(a1 + 56) = v24;
      *(a1 + 64) = *(a2 + 64);
      v25 = *(a2 + 72);
      *(a1 + 72) = v25;
      v22;
      v23;
      v24;
      v25;
      v90 = 4;
      goto LABEL_10;
    case 5u:
      v33 = type metadata accessor for DataFrame(0);
      (*(*(v33 - 8) + 16))(a1, a2, v33);
      v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      v35 = v34[12];
      *(a1 + v35) = *(a2 + v35);
      v36 = *(a2 + v35 + 8);
      *(a1 + v35 + 8) = v36;
      v37 = v34[16];
      *(a1 + v37) = *(a2 + v37);
      v38 = *(a2 + v37 + 8);
      *(a1 + v37 + 8) = v38;
      v39 = v34[20];
      *(a1 + v39) = *(a2 + v39);
      v40 = *(a2 + v39 + 8);
      *(a1 + v39 + 8) = v40;
      v36;
      v38;
      v40;
      v91 = 5;
LABEL_8:
      v19 = v91;
      v17 = a1;
      v18 = v5;
      break;
    case 6u:
      v41 = type metadata accessor for DataFrame(0);
      (*(*(v41 - 8) + 16))(a1, a2, v41);
      v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v43 = v42[12];
      *(a1 + v43) = *(a2 + v43);
      v44 = *(a2 + v43 + 8);
      *(a1 + v43 + 8) = v44;
      v45 = v42[16];
      *(a1 + v45) = *(a2 + v45);
      v46 = *(a2 + v45 + 8);
      *(a1 + v45 + 8) = v46;
      v47 = v42[20];
      *(a1 + v47) = *(a2 + v47);
      v48 = *(a2 + v47 + 8);
      *(a1 + v47 + 8) = v48;
      v49 = v42[24];
      *(a1 + v49) = *(a2 + v49);
      v50 = *(a2 + v49 + 8);
      *(a1 + v49 + 8) = v50;
      v44;
      v46;
      v48;
      v50;
      v90 = 6;
LABEL_10:
      v19 = v90;
      v17 = a1;
      v18 = v97;
      break;
  }

  swift_storeEnumTagMultiPayload(v17, v18, v19);
  v51 = a3[5];
  v52 = (a1 + v51);
  v53 = a2 + v51;
  v54 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v53, v54) == 1)
  {
    v93 = v54;
    switch(swift_getEnumCaseMultiPayload(v53, v97))
    {
      case 0u:
        v95 = type metadata accessor for URL(0);
        v98 = *(*(v95 - 8) + 16);
        v98(v52, v53, v95);
        v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v98(&v52[v55[12]], v53 + v55[12], v95);
        v56 = v55[16];
        *&v52[v56] = *(v53 + v56);
        v57 = *(v53 + v56 + 8);
        *&v52[v56 + 8] = v57;
        v58 = v55[20];
        *&v52[v58] = *(v53 + v58);
        v99 = *(v53 + v58 + 8);
        *&v52[v58 + 8] = v99;
        v59 = v55[24];
        *&v52[v59] = *(v53 + v59);
        v96 = *(v53 + v59 + 8);
        *&v52[v59 + 8] = v96;
        v60 = v55[28];
        *&v52[v60] = *(v53 + v60);
        v61 = *(v53 + v60 + 8);
        *&v52[v60 + 8] = v61;
        v57;
        v99;
        v96;
        v61;
        JUMPOUT(0x14B6E7);
      case 1u:
        type metadata accessor for URL(0);
        JUMPOUT(0x14B82CLL);
      case 2u:
        v64 = type metadata accessor for URL(0);
        (*(*(v64 - 8) + 16))(v52, v53, v64);
        v69 = 2;
        v70 = v52;
        v71 = v97;
        goto LABEL_25;
      case 3u:
        v65 = *v53;
        v101 = *(v53 + 8);
        outlined copy of Result<_DataTable, Error>(*v53, v101);
        *v52 = v65;
        v52[8] = v101;
        *(v52 + 2) = *(v53 + 16);
        v66 = *(v53 + 24);
        *(v52 + 3) = v66;
        *(v52 + 4) = *(v53 + 32);
        v67 = *(v53 + 40);
        *(v52 + 5) = v67;
        *(v52 + 6) = *(v53 + 48);
        v68 = *(v53 + 56);
        *(v52 + 7) = v68;
        v66;
        v67;
        v68;
        v92 = 3;
        goto LABEL_24;
      case 4u:
        v62 = *v53;
        v100 = *(v53 + 8);
        outlined copy of Result<_DataTable, Error>(*v53, v100);
        *v52 = v62;
        v52[8] = v100;
        *(v52 + 2) = *(v53 + 16);
        v63 = *(v53 + 24);
        *(v52 + 3) = v63;
        *(v52 + 4) = *(v53 + 32);
        *(v52 + 5) = *(v53 + 40);
        *(v52 + 6) = *(v53 + 48);
        *(v52 + 7) = *(v53 + 56);
        *(v52 + 8) = *(v53 + 64);
        *(v52 + 9) = *(v53 + 72);
        v63;
        JUMPOUT(0x14B778);
      case 5u:
        v72 = type metadata accessor for DataFrame(0);
        (*(*(v72 - 8) + 16))(v52, v53, v72);
        v73 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v74 = v73[12];
        *&v52[v74] = *(v53 + v74);
        v75 = *(v53 + v74 + 8);
        *&v52[v74 + 8] = v75;
        v76 = v73[16];
        *&v52[v76] = *(v53 + v76);
        v77 = *(v53 + v76 + 8);
        *&v52[v76 + 8] = v77;
        v78 = v73[20];
        *&v52[v78] = *(v53 + v78);
        v79 = *(v53 + v78 + 8);
        *&v52[v78 + 8] = v79;
        v75;
        v77;
        v79;
        v92 = 5;
        goto LABEL_24;
      case 6u:
        v80 = type metadata accessor for DataFrame(0);
        (*(*(v80 - 8) + 16))(v52, v53, v80);
        v81 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v82 = v81[12];
        *&v52[v82] = *(v53 + v82);
        v83 = *(v53 + v82 + 8);
        *&v52[v82 + 8] = v83;
        v84 = v81[16];
        *&v52[v84] = *(v53 + v84);
        v102 = *(v53 + v84 + 8);
        *&v52[v84 + 8] = v102;
        v85 = v81[20];
        *&v52[v85] = *(v53 + v85);
        v86 = *(v53 + v85 + 8);
        *&v52[v85 + 8] = v86;
        v87 = v81[24];
        *&v52[v87] = *(v53 + v87);
        v88 = *(v53 + v87 + 8);
        *&v52[v87 + 8] = v88;
        v83;
        v102;
        v86;
        v88;
        v92 = 6;
LABEL_24:
        v69 = v92;
        v70 = v52;
        v71 = v97;
LABEL_25:
        swift_storeEnumTagMultiPayload(v70, v71, v69);
        swift_storeEnumTagMultiPayload(v52, v93, 1);
        break;
    }
  }

  else
  {
    memcpy(v52, v53, *(*(v54 - 8) + 64));
  }

  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  return a1;
}

uint64_t assignWithCopy for MLActionClassifier.PersistentParameters(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = a2;
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLActionClassifier.DataSource);
    v6 = type metadata accessor for MLActionClassifier.DataSource(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, v6);
    v80 = a3;
    switch(EnumCaseMultiPayload)
    {
      case 0u:
        v77 = type metadata accessor for URL(0);
        v15 = *(*(v77 - 8) + 16);
        v15(a1, a2, v77);
        v82 = v6;
        v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v15(a1 + v16[12], a2 + v16[12], v77);
        v17 = v16[16];
        *(a1 + v17) = *(a2 + v17);
        v18 = *(a2 + v17 + 8);
        *(a1 + v17 + 8) = v18;
        v19 = v16[20];
        *(a1 + v19) = *(a2 + v19);
        v20 = *(a2 + v19 + 8);
        *(a1 + v19 + 8) = v20;
        v21 = v16[24];
        *(a1 + v21) = *(a2 + v21);
        v22 = *(a2 + v21 + 8);
        *(a1 + v21 + 8) = v22;
        v23 = v16[28];
        *(a1 + v23) = *(a2 + v23);
        v24 = *(a2 + v23 + 8);
        *(a1 + v23 + 8) = v24;
        v18;
        v20;
        v22;
        v14 = v24;
        v6 = v82;
        goto LABEL_10;
      case 1u:
      case 2u:
        v7 = type metadata accessor for URL(0);
        (*(*(v7 - 8) + 16))(a1, a2, v7);
        goto LABEL_12;
      case 3u:
        v25 = v6;
        v26 = *a2;
        v27 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v27);
        *a1 = v26;
        *(a1 + 8) = v27;
        *(a1 + 16) = *(a2 + 16);
        v28 = *(a2 + 24);
        *(a1 + 24) = v28;
        *(a1 + 32) = *(a2 + 32);
        v29 = *(a2 + 40);
        *(a1 + 40) = v29;
        *(a1 + 48) = *(a2 + 48);
        v30 = *(a2 + 56);
        *(a1 + 56) = v30;
        goto LABEL_8;
      case 4u:
        v8 = v6;
        v9 = *a2;
        v10 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v10);
        *a1 = v9;
        *(a1 + 8) = v10;
        *(a1 + 16) = *(a2 + 16);
        v11 = *(a2 + 24);
        *(a1 + 24) = v11;
        *(a1 + 32) = *(a2 + 32);
        v12 = *(a2 + 40);
        *(a1 + 40) = v12;
        *(a1 + 48) = *(a2 + 48);
        v13 = *(a2 + 56);
        *(a1 + 56) = v13;
        *(a1 + 64) = *(a2 + 64);
        v81 = *(a2 + 72);
        *(a1 + 72) = v81;
        v11;
        LOBYTE(v11) = v12;
        v6 = v8;
        a3 = v80;
        v11;
        v13;
        v14 = v81;
        break;
      case 5u:
        v31 = type metadata accessor for DataFrame(0);
        (*(*(v31 - 8) + 16))(a1, a2, v31);
        v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v33 = v32[12];
        *(a1 + v33) = *(a2 + v33);
        v28 = *(a2 + v33 + 8);
        *(a1 + v33 + 8) = v28;
        v34 = v32[16];
        *(a1 + v34) = *(a2 + v34);
        v25 = v6;
        v29 = *(a2 + v34 + 8);
        *(a1 + v34 + 8) = v29;
        v35 = v32[20];
        *(a1 + v35) = *(a2 + v35);
        v30 = *(a2 + v35 + 8);
        *(a1 + v35 + 8) = v30;
LABEL_8:
        v28;
        v36 = v29;
        v6 = v25;
        a3 = v80;
        v36;
        v14 = v30;
        break;
      case 6u:
        v37 = type metadata accessor for DataFrame(0);
        (*(*(v37 - 8) + 16))(a1, a2, v37);
        v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v39 = v38[12];
        *(a1 + v39) = *(a2 + v39);
        v40 = *(a2 + v39 + 8);
        *(a1 + v39 + 8) = v40;
        v41 = v38[16];
        *(a1 + v41) = *(a2 + v41);
        v83 = *(a2 + v41 + 8);
        *(a1 + v41 + 8) = v83;
        v42 = v38[20];
        *(a1 + v42) = *(a2 + v42);
        v43 = *(a2 + v42 + 8);
        *(a1 + v42 + 8) = v43;
        v44 = v38[24];
        *(a1 + v44) = *(a2 + v44);
        v45 = v6;
        v46 = *(a2 + v44 + 8);
        *(a1 + v44 + 8) = v46;
        v40;
        v83;
        v43;
        v14 = v46;
        v6 = v45;
LABEL_10:
        a3 = v80;
        break;
    }

    v14;
LABEL_12:
    swift_storeEnumTagMultiPayload(a1, v6, EnumCaseMultiPayload);
    v47 = a3[5];
    v48 = (a1 + v47);
    v49 = a2 + v47;
    outlined destroy of MLActivityClassifier.ModelParameters(v48, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
    v50 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(v49, v50) == 1)
    {
      v78 = v50;
      v84 = v6;
      v51 = swift_getEnumCaseMultiPayload(v49, v6);
      switch(v51)
      {
        case 0u:
          v86 = type metadata accessor for URL(0);
          v90 = *(*(v86 - 8) + 16);
          v53 = v48;
          v90(v48, v49, v86);
          v54 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v90(&v53[v54[12]], v49 + v54[12], v86);
          v55 = v54[16];
          *&v53[v55] = *(v49 + v55);
          v56 = *(v49 + v55 + 8);
          *&v53[v55 + 8] = v56;
          v57 = v54[20];
          *&v53[v57] = *(v49 + v57);
          *&v53[v57 + 8] = *(v49 + v57 + 8);
          v58 = v54[24];
          *&v53[v58] = *(v49 + v58);
          *&v53[v58 + 8] = *(v49 + v58 + 8);
          v59 = v54[28];
          *&v53[v59] = *(v49 + v59);
          *&v53[v59 + 8] = *(v49 + v59 + 8);
          v56;
          JUMPOUT(0x14BF33);
        case 1u:
        case 2u:
          v52 = type metadata accessor for URL(0);
          (*(*(v52 - 8) + 16))(v48, v49, v52);
          JUMPOUT(0x14BDE0);
        case 3u:
          v87 = *v49;
          v91 = *(v49 + 8);
          outlined copy of Result<_DataTable, Error>(*v49, v91);
          *v48 = v87;
          v48[8] = v91;
          *(v48 + 2) = *(v49 + 16);
          *(v48 + 3) = *(v49 + 24);
          *(v48 + 4) = *(v49 + 32);
          v60 = *(v49 + 40);
          JUMPOUT(0x14BF91);
        case 4u:
          v85 = *v49;
          v89 = *(v49 + 8);
          outlined copy of Result<_DataTable, Error>(*v49, v89);
          *v48 = v85;
          v48[8] = v89;
          *(v48 + 2) = *(v49 + 16);
          *(v48 + 3) = *(v49 + 24);
          *(v48 + 4) = *(v49 + 32);
          *(v48 + 5) = *(v49 + 40);
          *(v48 + 6) = *(v49 + 48);
          *(v48 + 7) = *(v49 + 56);
          *(v48 + 8) = *(v49 + 64);
          JUMPOUT(0x14BE62);
        case 5u:
          v61 = type metadata accessor for DataFrame(0);
          v62 = v48;
          (*(*(v61 - 8) + 16))(v48, v49, v61);
          v63 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          v64 = v63[12];
          *&v48[v64] = *(v49 + v64);
          v65 = *(v49 + v64 + 8);
          *&v48[v64 + 8] = v65;
          v66 = v63[16];
          *&v48[v66] = *(v49 + v66);
          v67 = *(v49 + v66 + 8);
          *&v62[v66 + 8] = v67;
          v68 = v63[20];
          *&v62[v68] = *(v49 + v68);
          v92 = v51;
          v69 = *(v49 + v68 + 8);
          *&v62[v68 + 8] = v69;
          break;
        case 6u:
          v70 = type metadata accessor for DataFrame(0);
          v62 = v48;
          (*(*(v70 - 8) + 16))(v48, v49, v70);
          v71 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v72 = v71[12];
          *&v48[v72] = *(v49 + v72);
          v65 = *(v49 + v72 + 8);
          *&v48[v72 + 8] = v65;
          v73 = v71[16];
          *&v48[v73] = *(v49 + v73);
          v88 = *(v49 + v73 + 8);
          *&v48[v73 + 8] = v88;
          v74 = v71[20];
          *&v48[v74] = *(v49 + v74);
          v67 = *(v49 + v74 + 8);
          *&v62[v74 + 8] = v67;
          v75 = v71[24];
          *&v62[v75] = *(v49 + v75);
          v92 = v51;
          v69 = *(v49 + v75 + 8);
          *&v62[v75 + 8] = v69;
          v65;
          LOBYTE(v65) = v88;
          break;
        case 7u:
          JUMPOUT(0x14C15CLL);
      }

      v65;
      v67;
      v69;
      swift_storeEnumTagMultiPayload(v62, v84, v92);
      swift_storeEnumTagMultiPayload(v62, v78, 1);
    }

    else
    {
      memcpy(v48, v49, *(*(v50 - 8) + 64));
    }

    a3 = v80;
    v4 = a2;
  }

  *(a1 + a3[6]) = *(v4 + a3[6]);
  *(a1 + a3[7]) = *(v4 + a3[7]);
  *(a1 + a3[8]) = *(v4 + a3[8]);
  *(a1 + a3[9]) = *(v4 + a3[9]);
  *(a1 + a3[10]) = *(v4 + a3[10]);
  return a1;
}

char *initializeWithTake for MLActionClassifier.PersistentParameters(char *__dst, char *__src, int *a3)
{
  v6 = type metadata accessor for MLActionClassifier.DataSource(0);
  v38 = v6;
  switch(swift_getEnumCaseMultiPayload(__src, v6))
  {
    case 0u:
      v7 = type metadata accessor for URL(0);
      v39 = *(*(v7 - 8) + 32);
      v39(__dst, __src, v7);
      v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v39(&__dst[v8[12]], &__src[v8[12]], v7);
      *&__dst[v8[16]] = *&__src[v8[16]];
      *&__dst[v8[20]] = *&__src[v8[20]];
      *&__dst[v8[24]] = *&__src[v8[24]];
      *&__dst[v8[28]] = *&__src[v8[28]];
      v9 = v38;
      v10 = 0;
      goto LABEL_9;
    case 1u:
      v12 = type metadata accessor for URL(0);
      (*(*(v12 - 8) + 32))(__dst, __src, v12);
      v33 = 1;
      goto LABEL_8;
    case 2u:
      v11 = type metadata accessor for URL(0);
      (*(*(v11 - 8) + 32))(__dst, __src, v11);
      v33 = 2;
      goto LABEL_8;
    case 5u:
      v13 = type metadata accessor for DataFrame(0);
      (*(*(v13 - 8) + 32))(__dst, __src, v13);
      v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      *&__dst[v14[12]] = *&__src[v14[12]];
      *&__dst[v14[16]] = *&__src[v14[16]];
      *&__dst[v14[20]] = *&__src[v14[20]];
      v33 = 5;
      goto LABEL_8;
    case 6u:
      v15 = type metadata accessor for DataFrame(0);
      (*(*(v15 - 8) + 32))(__dst, __src, v15);
      v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      *&__dst[v16[12]] = *&__src[v16[12]];
      *&__dst[v16[16]] = *&__src[v16[16]];
      *&__dst[v16[20]] = *&__src[v16[20]];
      *&__dst[v16[24]] = *&__src[v16[24]];
      v33 = 6;
LABEL_8:
      v10 = v33;
      v9 = v6;
LABEL_9:
      swift_storeEnumTagMultiPayload(__dst, v9, v10);
      break;
    default:
      memcpy(__dst, __src, *(*(v6 - 8) + 64));
      break;
  }

  v40 = a3;
  v17 = a3[5];
  v18 = &__dst[v17];
  v19 = &__src[v17];
  v20 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v19, v20) == 1)
  {
    v35 = v20;
    switch(swift_getEnumCaseMultiPayload(v19, v38))
    {
      case 0u:
        v37 = type metadata accessor for URL(0);
        v36 = *(*(v37 - 8) + 32);
        v36(v18, v19, v37);
        v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v36(&v18[v21[12]], &v19[v21[12]], v37);
        *&v18[v21[16]] = *&v19[v21[16]];
        *&v18[v21[20]] = *&v19[v21[20]];
        *&v18[v21[24]] = *&v19[v21[24]];
        *&v18[v21[28]] = *&v19[v21[28]];
        v22 = v18;
        v23 = v38;
        v24 = 0;
        goto LABEL_20;
      case 1u:
        v27 = type metadata accessor for URL(0);
        (*(*(v27 - 8) + 32))(v18, v19, v27);
        v34 = 1;
        goto LABEL_19;
      case 2u:
        v26 = type metadata accessor for URL(0);
        (*(*(v26 - 8) + 32))(v18, v19, v26);
        v34 = 2;
        goto LABEL_19;
      case 5u:
        v28 = type metadata accessor for DataFrame(0);
        (*(*(v28 - 8) + 32))(v18, v19, v28);
        v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *&v18[v29[12]] = *&v19[v29[12]];
        *&v18[v29[16]] = *&v19[v29[16]];
        *&v18[v29[20]] = *&v19[v29[20]];
        v34 = 5;
        goto LABEL_19;
      case 6u:
        v30 = type metadata accessor for DataFrame(0);
        (*(*(v30 - 8) + 32))(v18, v19, v30);
        v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *&v18[v31[12]] = *&v19[v31[12]];
        *&v18[v31[16]] = *&v19[v31[16]];
        *&v18[v31[20]] = *&v19[v31[20]];
        *&v18[v31[24]] = *&v19[v31[24]];
        v34 = 6;
LABEL_19:
        v24 = v34;
        v22 = v18;
        v23 = v38;
LABEL_20:
        swift_storeEnumTagMultiPayload(v22, v23, v24);
        break;
      default:
        memcpy(v18, v19, *(*(v38 - 8) + 64));
        break;
    }

    v25 = v40;
    swift_storeEnumTagMultiPayload(v18, v35, 1);
  }

  else
  {
    memcpy(v18, v19, *(*(v20 - 8) + 64));
    v25 = v40;
  }

  *&__dst[v25[6]] = *&__src[v25[6]];
  *&__dst[v25[7]] = *&__src[v25[7]];
  *&__dst[v25[8]] = *&__src[v25[8]];
  *&__dst[v25[9]] = *&__src[v25[9]];
  *&__dst[v25[10]] = *&__src[v25[10]];
  return __dst;
}

char *assignWithTake for MLActionClassifier.PersistentParameters(char *__dst, char *__src, int *a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(__dst, type metadata accessor for MLActionClassifier.DataSource);
    v6 = type metadata accessor for MLActionClassifier.DataSource(0);
    v40 = v6;
    switch(swift_getEnumCaseMultiPayload(__src, v6))
    {
      case 0u:
        v7 = type metadata accessor for URL(0);
        v38 = *(*(v7 - 8) + 32);
        v38(__dst, __src, v7);
        v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v38(&__dst[v8[12]], &__src[v8[12]], v7);
        *&__dst[v8[16]] = *&__src[v8[16]];
        *&__dst[v8[20]] = *&__src[v8[20]];
        *&__dst[v8[24]] = *&__src[v8[24]];
        *&__dst[v8[28]] = *&__src[v8[28]];
        v9 = v40;
        v10 = 0;
        goto LABEL_10;
      case 1u:
        v12 = type metadata accessor for URL(0);
        (*(*(v12 - 8) + 32))(__dst, __src, v12);
        v33 = 1;
        goto LABEL_9;
      case 2u:
        v11 = type metadata accessor for URL(0);
        (*(*(v11 - 8) + 32))(__dst, __src, v11);
        v33 = 2;
        goto LABEL_9;
      case 5u:
        v13 = type metadata accessor for DataFrame(0);
        (*(*(v13 - 8) + 32))(__dst, __src, v13);
        v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *&__dst[v14[12]] = *&__src[v14[12]];
        *&__dst[v14[16]] = *&__src[v14[16]];
        *&__dst[v14[20]] = *&__src[v14[20]];
        v33 = 5;
        goto LABEL_9;
      case 6u:
        v15 = type metadata accessor for DataFrame(0);
        (*(*(v15 - 8) + 32))(__dst, __src, v15);
        v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *&__dst[v16[12]] = *&__src[v16[12]];
        *&__dst[v16[16]] = *&__src[v16[16]];
        *&__dst[v16[20]] = *&__src[v16[20]];
        *&__dst[v16[24]] = *&__src[v16[24]];
        v33 = 6;
LABEL_9:
        v10 = v33;
        v9 = v6;
LABEL_10:
        swift_storeEnumTagMultiPayload(__dst, v9, v10);
        break;
      default:
        memcpy(__dst, __src, *(*(v6 - 8) + 64));
        break;
    }

    v39 = a3;
    v17 = a3[5];
    v18 = &__dst[v17];
    v19 = &__src[v17];
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
    v20 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(v19, v20) == 1)
    {
      v35 = v20;
      switch(swift_getEnumCaseMultiPayload(v19, v40))
      {
        case 0u:
          v36 = type metadata accessor for URL(0);
          v37 = *(*(v36 - 8) + 32);
          v21 = v18;
          v37(v18, v19, v36);
          v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v37(&v21[v22[12]], &v19[v22[12]], v36);
          *&v21[v22[16]] = *&v19[v22[16]];
          *&v21[v22[20]] = *&v19[v22[20]];
          *&v21[v22[24]] = *&v19[v22[24]];
          *&v21[v22[28]] = *&v19[v22[28]];
          v23 = v21;
          v24 = v40;
          v25 = 0;
          goto LABEL_21;
        case 1u:
          v27 = type metadata accessor for URL(0);
          v21 = v18;
          (*(*(v27 - 8) + 32))(v18, v19, v27);
          v34 = 1;
          goto LABEL_20;
        case 2u:
          v26 = type metadata accessor for URL(0);
          v21 = v18;
          (*(*(v26 - 8) + 32))(v18, v19, v26);
          v34 = 2;
          goto LABEL_20;
        case 5u:
          v28 = type metadata accessor for DataFrame(0);
          v21 = v18;
          (*(*(v28 - 8) + 32))(v18, v19, v28);
          v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          *&v18[v29[12]] = *&v19[v29[12]];
          *&v18[v29[16]] = *&v19[v29[16]];
          *&v18[v29[20]] = *&v19[v29[20]];
          v34 = 5;
          goto LABEL_20;
        case 6u:
          v30 = type metadata accessor for DataFrame(0);
          v21 = v18;
          (*(*(v30 - 8) + 32))(v18, v19, v30);
          v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          *&v18[v31[12]] = *&v19[v31[12]];
          *&v18[v31[16]] = *&v19[v31[16]];
          *&v18[v31[20]] = *&v19[v31[20]];
          *&v18[v31[24]] = *&v19[v31[24]];
          v34 = 6;
LABEL_20:
          v25 = v34;
          v23 = v18;
          v24 = v40;
LABEL_21:
          swift_storeEnumTagMultiPayload(v23, v24, v25);
          break;
        default:
          v21 = v18;
          memcpy(v18, v19, *(*(v40 - 8) + 64));
          break;
      }

      swift_storeEnumTagMultiPayload(v21, v35, 1);
    }

    else
    {
      memcpy(v18, v19, *(*(v20 - 8) + 64));
    }

    a3 = v39;
  }

  *&__dst[a3[6]] = *&__src[a3[6]];
  *&__dst[a3[7]] = *&__src[a3[7]];
  *&__dst[a3[8]] = *&__src[a3[8]];
  *&__dst[a3[9]] = *&__src[a3[9]];
  *&__dst[a3[10]] = *&__src[a3[10]];
  return __dst;
}

uint64_t sub_14CADD(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a1;
  v5 = type metadata accessor for MLActionClassifier.DataSource(0);
  if (*(*(v5 - 8) + 84) != a2)
  {
    v5 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
    v4 = *(a3 + 20) + a1;
  }

  return __swift_getEnumTagSinglePayload(v4, a2, v5);
}

uint64_t sub_14CB44(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = type metadata accessor for MLActionClassifier.DataSource(0);
  if (*(*(v7 - 8) + 84) != a3)
  {
    v7 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
    v6 = *(a4 + 20) + a1;
  }

  return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
}

uint64_t type metadata accessor for MLActionClassifier.PersistentParameters(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLActionClassifier.PersistentParameters;
  if (!type metadata singleton initialization cache for MLActionClassifier.PersistentParameters)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLActionClassifier.PersistentParameters);
  }

  return result;
}

uint64_t type metadata completion function for MLActionClassifier.PersistentParameters(uint64_t a1)
{
  result = type metadata accessor for MLActionClassifier.DataSource(319);
  if (v2 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    result = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(319);
    if (v3 <= 0x3F)
    {
      v4[1] = *(result - 8) + 64;
      v4[2] = &value witness table for Builtin.Int64 + 64;
      v4[3] = &value witness table for Builtin.Int64 + 64;
      v4[4] = &value witness table for Builtin.Int64 + 64;
      v4[5] = &value witness table for Builtin.Int64 + 64;
      v4[6] = &value witness table for Builtin.Int64 + 64;
      v4[7] = &value witness table for () + 64;
      swift_initStructMetadata(a1, 256, 8, v4, a1 + 16);
      return 0;
    }
  }

  return result;
}

NSURL *MLActionClassifier.PersistentParameters.init(sessionDirectory:)(uint64_t *a1)
{
  v139 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLActionClassifier.ModelParameters.ValidationData?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v134 = &v119;
  v132 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
  v6 = *(*(v132 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v122 = &v119;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLActionClassifier.DataSource?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v133 = &v119;
  v129 = type metadata accessor for MLActionClassifier.DataSource(0);
  v12 = *(*(v129 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v135 = &v119;
  v121 = type metadata accessor for DataFrame(0);
  v120 = *(v121 - 8);
  v15 = *(v120 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v130 = &v119;
  v151 = type metadata accessor for URL(0);
  v147 = *(v151 - 8);
  v18 = *(v147 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v131 = &v119;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v140 = &v119;
  v23 = alloca(v18);
  v24 = alloca(v18);
  v142 = &v119;
  v25 = alloca(v18);
  v26 = alloca(v18);
  v27 = alloca(v18);
  v28 = alloca(v18);
  URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEE00617461446E6FLL);
  URL.appendingPathComponent(_:)(0xD000000000000010, "ObjectDetectorMetrics." + 0x8000000000000000);
  v29 = Data.init(contentsOf:options:)(&v119, 0);
  v141 = v2;
  if (v2)
  {
    v31 = *(v147 + 8);
    v32 = v151;
    v31(a1, v151);
    v31(&v119, v32);
    v31(&v119, v32);
    return __stack_chk_guard;
  }

  v33 = v30;
  v150 = &v119;
  v145 = a1;
  v34 = v29;
  v148 = *(v147 + 8);
  v148(&v119, v151);
  v35 = objc_opt_self(NSPropertyListSerialization);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v144 = v33;
  v155[0] = 0;
  v37 = [v35 propertyListWithData:isa options:0 format:0 error:v155];
  v38 = v37;

  v39 = v155[0];
  if (!v38)
  {
    v63 = v39;
    _convertNSErrorToError(_:)(v39);

    swift_willThrow(v63, "propertyListWithData:options:format:error:");
    outlined consume of Data._Representation(v34, v144);
    v64 = v151;
    v65 = v148;
    v148(v145, v151);
    v65(v150, v64);
    return __stack_chk_guard;
  }

  v143 = v34;
  _bridgeAnyObjectToAny(_:)(v38);
  swift_unknownObjectRelease(v38);
  outlined init with copy of Any(v172, v155);
  v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
  if (!swift_dynamicCast(__src, v155, &type metadata for Any + 8, v40, 6))
  {
    v66 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v66, 0, 0);
    *v67 = 0xD000000000000037;
    *(v67 + 8) = "parameters.plist" + 0x8000000000000000;
    *(v67 + 16) = 0;
    *(v67 + 32) = 0;
    *(v67 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v66);
    outlined consume of Data._Representation(v143, v144);
    v61 = v145;
    v59 = v151;
    v62 = v151;
    v60 = v148;
    goto LABEL_21;
  }

  v146 = &type metadata for Any + 8;
  v41 = *&__src[0];
  specialized Dictionary.subscript.getter(0x69735F6863746162, 0xEA0000000000657ALL, *&__src[0]);
  v42 = v148;
  if (!v156)
  {
    v41;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v155, &demangling cache variable for type metadata for Any?);
LABEL_24:
    v68 = v151;
LABEL_28:
    v69 = v150;
LABEL_29:
    v70 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v70, 0, 0);
    *v71 = 0xD00000000000003FLL;
    *(v71 + 8) = "labeled_directories" + 0x8000000000000000;
    *(v71 + 16) = 0;
    *(v71 + 32) = 0;
    *(v71 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v70);
    outlined consume of Data._Representation(v143, v144);
    v42(v145, v68);
    __swift_destroy_boxed_opaque_existential_1Tm(v172);
    v42(v69, v68);
    return __stack_chk_guard;
  }

  v149 = v41;
  if (!swift_dynamicCast(__src, v155, v146, &type metadata for Int, 6))
  {
    v149;
    goto LABEL_24;
  }

  v43 = *&__src[0];
  v44 = v149;
  specialized Dictionary.subscript.getter(0x726574695F78616DLL, 0xEE00736E6F697461, v149);
  if (!v156)
  {
    goto LABEL_25;
  }

  if (!swift_dynamicCast(__src, v155, v146, &type metadata for Int, 6))
  {
LABEL_26:
    v149;
    goto LABEL_27;
  }

  v136 = v40;
  v45 = *&__src[0];
  v44 = v149;
  specialized Dictionary.subscript.getter(0x6D6172665F6D756ELL, 0xEA00000000007365, v149);
  if (!v156)
  {
LABEL_25:
    v44;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v155, &demangling cache variable for type metadata for Any?);
LABEL_27:
    v68 = v151;
    v42 = v148;
    goto LABEL_28;
  }

  if (!swift_dynamicCast(__src, v155, v146, &type metadata for Int, 6))
  {
    goto LABEL_26;
  }

  v137 = *&__src[0];
  v44 = v149;
  specialized Dictionary.subscript.getter(0xD000000000000014, ("Empty training input." + 0x8000000000000000), v149);
  if (!v156)
  {
    goto LABEL_25;
  }

  if (!swift_dynamicCast(__src, v155, v146, &type metadata for Int, 6))
  {
    goto LABEL_26;
  }

  v123 = *&__src[0];
  v46 = v149;
  specialized Dictionary.subscript.getter(0x7246746567726174, 0xEF65746152656D61, v149);
  if (!v156)
  {
    v46;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v155, &demangling cache variable for type metadata for Any?);
LABEL_33:
    v68 = v151;
    v69 = v150;
    v42 = v148;
    goto LABEL_29;
  }

  if (!swift_dynamicCast(__src, v155, v146, &type metadata for Double, 6))
  {
    v149;
    goto LABEL_33;
  }

  v47 = type metadata accessor for MLActionClassifier.PersistentParameters(0);
  v48 = v47[6];
  v49 = v47[7];
  v138 = v47;
  v50 = v47[8];
  v124 = *&__src[0];
  v51 = v139;
  *(v139 + v48) = v43;
  v52 = v51;
  *(v51 + v49) = v45;
  *(v51 + v50) = v137;
  v53 = v142;
  URL.appendingPathComponent(_:)(1635017060, 0xE400000000000000);
  specialized Dictionary.subscript.getter(0x676E696E69617274, 0xE800000000000000, v149);
  if (!v171)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v170, &demangling cache variable for type metadata for Any?);
    goto LABEL_35;
  }

  if (!swift_dynamicCast(v155, v170, v146, v136, 6))
  {
LABEL_35:
    v73 = v151;
    v74 = v140;
    (*(v147 + 16))(v140, v142, v151);
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
    LOBYTE(v155[0]) = 1;
    v155[1] = &stru_20 + 12;
    v155[2] = 0xE100000000000000;
    v156 = 0;
    v157 = 0xE000000000000000;
    v158 = 92;
    v159 = 0xE100000000000000;
    v160 = 1;
    v161 = 34;
    v162 = 0xE100000000000000;
    v163 = 1;
    v164 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
    v165 = 10;
    v166 = 0xE100000000000000;
    v167 = 0;
    v168 = 1;
    v169 = 0;
    outlined retain of MLDataTable.ParsingOptions(__src);
    outlined release of MLDataTable.ParsingOptions(v155, 0xE000000000000000);
    memcpy(__dst, __src, 0x90uLL);
    v75 = v141;
    MLDataTable.init(contentsOf:options:)(v74, __dst);
    if (v75)
    {
      outlined consume of Data._Representation(v143, v144);
      v149;
      v76 = v148;
      v148(v145, v73);
      v76(v142, v73);
      __swift_destroy_boxed_opaque_existential_1Tm(v172);
      v76(v150, v73);
      return __stack_chk_guard;
    }

    __dst[0] = __dst[18];
    LOBYTE(__dst[1]) = v153;
    DataFrame.init(_:)(__dst);
    v77 = DataFrame.columns.getter();
    MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11TabularData9AnyColumnVG_SSs5NeverOTg504_s11d75Data0B5FrameV8CreateMLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n(v77);
    v141 = 0;
    v77;
    v79 = 0x7472617473;
    *(&v80 + 1) = 0xE500000000000000;
    *&v80 = 0x7472617473;
    v81 = specialized Sequence<>.contains(_:)(v80, MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n);
    MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n;
    if ((v81 & 1) == 0)
    {
      v79 = 0;
    }

    v140 = v79;
    v82 = 0;
    if (v81)
    {
      v82 = 0xE500000000000000;
    }

    v133 = v82;
    v83 = DataFrame.columns.getter();
    v84 = v141;
    v85 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11TabularData9AnyColumnVG_SSs5NeverOTg504_s11d75Data0B5FrameV8CreateMLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n(v83);
    v141 = v84;
    v83;
    v86 = 6581861;
    *&v87 = 6581861;
    *(&v87 + 1) = 0xE300000000000000;
    v88 = specialized Sequence<>.contains(_:)(v87, v85);
    v85;
    v89 = 0;
    if ((v88 & 1) == 0)
    {
      v86 = 0;
    }

    v135 = v86;
    if (v88)
    {
      v89 = 0xE300000000000000;
    }

    v137 = v89;
    v90 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
    v128 = v90[12];
    v127 = v90[16];
    v126 = v90[20];
    v125 = v90[24];
    v91 = v139;
    v92 = v130;
    v93 = v121;
    v94 = v120;
    (*(v120 + 16))(v139, v130, v121);
    v95 = v128;
    *(v91 + v128) = 0x7461506F65646976;
    *(v91 + v95 + 8) = 0xE900000000000068;
    (*(v94 + 8))(v92, v93);
    v96 = v127;
    *(v91 + v127) = 0x6C6562616CLL;
    *(v91 + v96 + 8) = 0xE500000000000000;
    v97 = v126;
    *(v91 + v126) = v140;
    *(v91 + v97 + 8) = v133;
    v52 = v91;
    v98 = v125;
    *(v91 + v125) = v135;
    *(v91 + v98 + 8) = v137;
    swift_storeEnumTagMultiPayload(v91, v129, 6);
    goto LABEL_47;
  }

  v54 = v155[0];
  v55 = v131;
  (*(v147 + 16))(v131, v53, v151);
  v56 = v133;
  MLActionClassifier.DataSource.init(dictionary:tableFile:)(v54, v55);
  if (__swift_getEnumTagSinglePayload(v56, 1, v129) == 1)
  {
    v149;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v56, &demangling cache variable for type metadata for MLActionClassifier.DataSource?);
    v57 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v57, 0, 0);
    *v58 = 0xD000000000000035;
    *(v58 + 8) = "o load validation data." + 0x8000000000000000;
    *(v58 + 16) = 0;
    *(v58 + 32) = 0;
    *(v58 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v57);
    outlined consume of Data._Representation(v143, v144);
    v59 = v151;
    v60 = v148;
    v148(v145, v151);
    v61 = v142;
    v62 = v59;
LABEL_21:
    v60(v61, v62);
    __swift_destroy_boxed_opaque_existential_1Tm(v172);
    v60(v150, v59);
    return __stack_chk_guard;
  }

  v99 = v56;
  v100 = v135;
  outlined init with take of MLClassifierMetrics(v99, v135, type metadata accessor for MLActionClassifier.DataSource);
  outlined init with take of MLClassifierMetrics(v100, v51, type metadata accessor for MLActionClassifier.DataSource);
LABEL_47:
  specialized Dictionary.subscript.getter(0x69746164696C6176, 0xEA00000000006E6FLL, v149);
  if (!v156)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v155, &demangling cache variable for type metadata for Any?);
    goto LABEL_52;
  }

  if (!swift_dynamicCast(__src, v155, v146, v136, 6))
  {
LABEL_52:
    v107 = v138;
    swift_storeEnumTagMultiPayload(v52 + v138[5], v132, 2);
LABEL_53:
    v108 = v107[9];
    *(v52 + v107[10]) = v123;
    *(v52 + v108) = v124;
    v109 = v149;
    specialized Dictionary.subscript.getter(0x687469726F676C61, 0xE90000000000006DLL, v149);
    v109;
    if (v156)
    {
      LODWORD(v110) = swift_dynamicCast(__src, v155, v146, v136, 6);
      if (v110)
      {
        v110 = MLActionClassifier.ModelParameters.ModelAlgorithmType.init(dictionary:)(*&__src[0]);
        if (LOBYTE(v155[0]) != 1)
        {
          outlined consume of Data._Representation(v143, v144);
          v111 = v151;
          v112 = v148;
          v148(v145, v151);
          v112(v142, v111);
          __swift_destroy_boxed_opaque_existential_1Tm(v172);
          v112(v150, v111);
          return __stack_chk_guard;
        }
      }
    }

    else
    {
      v110 = outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v155, &demangling cache variable for type metadata for Any?);
    }

    LOBYTE(v110) = 1;
    LODWORD(v147) = v110;
    v105 = "rRegressor.Model.swift";
    v106 = v150;
    v104 = 0xD000000000000028;
    goto LABEL_59;
  }

  v101 = *&__src[0];
  v102 = v131;
  (*(v147 + 16))(v131, v150, v151);
  v103 = v134;
  MLActionClassifier.ModelParameters.ValidationData.init(dictionary:tableFile:)(v101, v102);
  if (__swift_getEnumTagSinglePayload(v103, 1, v132) != 1)
  {
    v118 = v122;
    outlined init with take of MLClassifierMetrics(v134, v122, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
    v107 = v138;
    v52 = v139;
    outlined init with take of MLClassifierMetrics(v118, v139 + v138[5], type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
    goto LABEL_53;
  }

  v149;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v134, &demangling cache variable for type metadata for MLActionClassifier.ModelParameters.ValidationData?);
  v104 = 0xD000000000000037;
  v105 = "ion Classification algorithm.";
  LODWORD(v147) = 0;
  v106 = v150;
LABEL_59:
  v113 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v113, 0, 0);
  *v114 = v104;
  *(v114 + 8) = v105 | 0x8000000000000000;
  *(v114 + 16) = 0;
  *(v114 + 32) = 0;
  *(v114 + 48) = 0;
  swift_willThrow(&type metadata for MLCreateError, v113);
  outlined consume of Data._Representation(v143, v144);
  v115 = v151;
  v116 = v148;
  v148(v145, v151);
  v116(v142, v115);
  __swift_destroy_boxed_opaque_existential_1Tm(v172);
  v116(v106, v115);
  v117 = v139;
  outlined destroy of MLActivityClassifier.ModelParameters(v139, type metadata accessor for MLActionClassifier.DataSource);
  if (v147)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v138[5] + v117, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
  }

  return __stack_chk_guard;
}

uint64_t MLActionClassifier.DataSource.init(dictionary:tableFile:)(uint64_t a1, uint64_t a2)
{
  *(&v98 + 1) = a2;
  v3 = v2;
  v92 = type metadata accessor for DataFrame(0);
  *&v85 = *(v92 - 8);
  v4 = *(v85 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v91 = &v60;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v89 = &v60;
  v97 = type metadata accessor for URL(0);
  *&v98 = *(v97 - 8);
  v9 = *(v98 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = alloca(v9);
  v13 = alloca(v9);
  v14 = type metadata accessor for MLActionClassifier.DataSource(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  if (*(a1 + 16))
  {
    v86 = &v60;
    v99 = v14;
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(1684957547, 0xE400000000000000);
    if ((v19 & 1) == 0)
    {
LABEL_18:
      a1;
LABEL_21:
      v14 = v99;
      goto LABEL_22;
    }

    v96 = v3;
    outlined init with copy of Any(*(a1 + 56) + 32 * v18, &v62);
    v95 = &type metadata for Any + 8;
    if (!swift_dynamicCast(__src, &v62, &type metadata for Any + 8, &type metadata for String, 6))
    {
      a1;
      v3 = v96;
      goto LABEL_21;
    }

    v20 = *(&__src[0] + 1);
    if (!(*&__src[0] ^ 0x726F746365726964 | *(&__src[0] + 1) ^ 0xE900000000000079) || (v93 = *&__src[0], (_stringCompareWithSmolCheck(_:_:expecting:)(0x726F746365726964, 0xE900000000000079, *&__src[0], *(&__src[0] + 1), 0) & 1) != 0))
    {
      v20;
      specialized Dictionary.subscript.getter(1752457584, 0xE400000000000000, a1);
      v3 = v96;
      if (!v65)
      {
        a1;
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v62, &demangling cache variable for type metadata for Any?);
        goto LABEL_21;
      }

      if (swift_dynamicCast(__src, &v62, v95, &type metadata for String, 6))
      {
        v21 = __src[0];
        specialized Dictionary.subscript.getter(0x697461746F6E6E61, 0xEF656C69665F6E6FLL, a1);
        if (v65)
        {
          if (!swift_dynamicCast(__src, &v62, v95, &type metadata for String, 6))
          {
            goto LABEL_52;
          }

          v22 = *(&__src[0] + 1);
          v89 = *&__src[0];
          specialized Dictionary.subscript.getter(0x6F635F6F65646976, 0xEC0000006E6D756CLL, a1);
          if (v65)
          {
            v92 = v22;
            if (!swift_dynamicCast(__src, &v62, v95, &type metadata for String, 6))
            {
LABEL_51:
              a1;
              a1 = v92;
LABEL_52:
              a1;
              *(&v21 + 1);
              goto LABEL_53;
            }

            v23 = *(&__src[0] + 1);
            *&v85 = *&__src[0];
            specialized Dictionary.subscript.getter(0x6F635F6C6562616CLL, 0xEC0000006E6D756CLL, a1);
            if (v65)
            {
              if (swift_dynamicCast(__src, &v62, v95, &type metadata for String, 6))
              {
                v84 = *(&__src[0] + 1);
                v93 = *&__src[0];
                specialized Dictionary.subscript.getter(0x6F635F6C6562616CLL, 0xEC0000006E6D756CLL, a1);
                if (v65)
                {
                  if (swift_dynamicCast(__src, &v62, v95, &type metadata for String, 6))
                  {
                    v90 = __src[0];
LABEL_66:
                    specialized Dictionary.subscript.getter(0x6F635F6C6562616CLL, 0xEC0000006E6D756CLL, a1);
                    a1;
                    v91 = v23;
                    if (v65)
                    {
                      if (swift_dynamicCast(__src, &v62, v95, &type metadata for String, 6))
                      {
                        v41 = *(&__src[0] + 1);
                        v40 = *&__src[0];
                      }

                      else
                      {
                        v40 = 0;
                        v41 = 0;
                      }

                      v83 = v41;
                      v95 = v40;
                    }

                    else
                    {
                      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v62, &demangling cache variable for type metadata for Any?);
                      v95 = 0;
                      v83 = 0;
                    }

                    v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
                    v31 = v86;
                    v43 = v86 + v42[12];
                    v44 = v42[16];
                    v82 = v42[20];
                    v81 = v42[24];
                    v80 = v42[28];
                    URL.init(fileURLWithPath:)(v21, *(&v21 + 1));
                    *(&v21 + 1);
                    v45 = v92;
                    URL.init(fileURLWithPath:)(v89, v92);
                    v45;
                    (*(v98 + 8))(*(&v98 + 1), v97);
                    *(v31 + v44) = v85;
                    *(v31 + v44 + 8) = v91;
                    v46 = v82;
                    *(v31 + v82) = v93;
                    *(v31 + v46 + 8) = v84;
                    *(v31 + v81) = v90;
                    v47 = v80;
                    *(v31 + v80) = v95;
                    *(v31 + v47 + 8) = v83;
                    v48 = v31;
                    v14 = v99;
                    v49 = v99;
                    v50 = 0;
                    goto LABEL_73;
                  }
                }

                else
                {
                  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v62, &demangling cache variable for type metadata for Any?);
                }

                v90 = 0uLL;
                goto LABEL_66;
              }

              a1;
              a1 = v23;
              goto LABEL_51;
            }

            a1;
            v23;
            a1 = v92;
          }

          else
          {
            a1;
            a1 = v22;
          }
        }

        a1;
        *(&v21 + 1);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v62, &demangling cache variable for type metadata for Any?);
LABEL_53:
        (*(v98 + 8))(*(&v98 + 1), v97);
LABEL_54:
        v27 = 1;
        v3 = v96;
        v14 = v99;
        return __swift_storeEnumTagSinglePayload(v3, v27, 1, v14);
      }

      goto LABEL_18;
    }

    if (!(v93 ^ 0xD000000000000013 | v20 ^ (&aLabeledDirecto[-32] | 0x8000000000000000)) || (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000013, &aLabeledDirecto[-32] | 0x8000000000000000, v93, v20, 0) & 1) != 0)
    {
      v20;
      specialized Dictionary.subscript.getter(1752457584, 0xE400000000000000, a1);
      a1;
      if (v65)
      {
        v29 = swift_dynamicCast(__src, &v62, v95, &type metadata for String, 6);
        v3 = v96;
        v14 = v99;
        if (v29)
        {
          v30 = *(&__src[0] + 1);
          v31 = v86;
          URL.init(fileURLWithPath:)(*&__src[0], *(&__src[0] + 1));
          v30;
          (*(v98 + 8))(*(&v98 + 1), v97);
          swift_storeEnumTagMultiPayload(v31, v14, 1);
LABEL_31:
          outlined init with take of MLClassifierMetrics(v31, v3, type metadata accessor for MLActionClassifier.DataSource);
          v27 = 0;
          return __swift_storeEnumTagSinglePayload(v3, v27, 1, v14);
        }

        goto LABEL_36;
      }

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v62, &demangling cache variable for type metadata for Any?);
      v3 = v96;
      goto LABEL_35;
    }

    if (!(v93 ^ 0x5F64656C6562616CLL | v20 ^ 0xED000073656C6966) || (_stringCompareWithSmolCheck(_:_:expecting:)(0x5F64656C6562616CLL, 0xED000073656C6966, v93, v20, 0) & 1) != 0)
    {
      v20;
      specialized Dictionary.subscript.getter(1752457584, 0xE400000000000000, a1);
      a1;
      v3 = v96;
      if (v65)
      {
        v32 = swift_dynamicCast(__src, &v62, v95, &type metadata for String, 6);
        v14 = v99;
        if (v32)
        {
          v33 = *(&__src[0] + 1);
          v31 = v86;
          URL.init(fileURLWithPath:)(*&__src[0], *(&__src[0] + 1));
          v33;
          (*(v98 + 8))(*(&v98 + 1), v97);
          swift_storeEnumTagMultiPayload(v31, v14, 2);
          goto LABEL_31;
        }

LABEL_36:
        v24 = *(&v98 + 1);
        v26 = v98;
        v25 = v97;
        goto LABEL_23;
      }

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v62, &demangling cache variable for type metadata for Any?);
LABEL_35:
      v14 = v99;
      goto LABEL_36;
    }

    if (!(v93 ^ 0xD000000000000016 | v20 ^ (&aLabeledKeypoin[-32] | 0x8000000000000000)) || (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000016, &aLabeledKeypoin[-32] | 0x8000000000000000, v93, v20, 0) & 1) != 0)
    {
      v20;
      (*(v98 + 16))(&v60, *(&v98 + 1), v97);
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
      LOBYTE(v62) = 1;
      v63 = 44;
      v64 = 0xE100000000000000;
      v65 = 0;
      v66 = 0xE000000000000000;
      v67 = 92;
      v68 = 0xE100000000000000;
      v69 = 1;
      v70 = 34;
      v71 = 0xE100000000000000;
      v72 = 1;
      v73 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
      v74 = 10;
      v75 = 0xE100000000000000;
      v76 = 0;
      v77 = 1;
      v78 = 0;
      outlined retain of MLDataTable.ParsingOptions(__src);
      outlined release of MLDataTable.ParsingOptions(&v62, 0xE000000000000000);
      memcpy(__dst, __src, sizeof(__dst));
      MLDataTable.init(contentsOf:options:)(&v60, __dst);
      v87 = v94;
      LOBYTE(v88) = BYTE8(v94);
      static MLActionClassifier.reformatKeypointsDataTable(table:featureColumn:)(&v87, 0x746E696F7079656BLL, 0xE900000000000073);
      v3 = v96;
      v14 = v99;
      specialized Dictionary.subscript.getter(0xD000000000000011, ("labeled_keypoints_data" + 0x8000000000000000), a1);
      if (__dst[3])
      {
        if (swift_dynamicCast(&v94, __dst, v95, &type metadata for String, 6))
        {
          v34 = v94;
          specialized Dictionary.subscript.getter(0x6F635F6C6562616CLL, 0xEC0000006E6D756CLL, a1);
          if (__dst[3])
          {
            if (swift_dynamicCast(&v94, __dst, v95, &type metadata for String, 6))
            {
              v92 = v34;
              v35 = *(&v94 + 1);
              v89 = v94;
              specialized Dictionary.subscript.getter(0x5F65727574616566, 0xEE006E6D756C6F63, a1);
              a1;
              if (__dst[3])
              {
                if (swift_dynamicCast(&v94, __dst, v95, &type metadata for String, 6))
                {
                  v85 = v94;
                  v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
                  v37 = v36[12];
                  v95 = v36[16];
                  v91 = v36[20];
                  __dst[0] = v87;
                  LOBYTE(__dst[1]) = v88;
                  outlined copy of Result<_DataTable, Error>(v87, v88);
                  v31 = v86;
                  DataFrame.init(_:)(__dst);
                  (*(v98 + 8))(*(&v98 + 1), v97);
                  outlined consume of Result<_DataTable, Error>(v87, v88);
                  *(v31 + v37) = v92;
                  *(v31 + v37 + 8) = *(&v34 + 1);
                  v38 = v95;
                  *&v95[v31] = v89;
                  *&v38[v31 + 8] = v35;
                  *(v91 + v31) = v85;
                  v59 = 5;
LABEL_107:
                  v50 = v59;
                  v48 = v31;
                  v14 = v99;
                  v49 = v99;
LABEL_73:
                  swift_storeEnumTagMultiPayload(v48, v49, v50);
                  v3 = v96;
                  goto LABEL_31;
                }

                v35;
                *(&v34 + 1);
              }

              else
              {
                v35;
                *(&v34 + 1);
                outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(__dst, &demangling cache variable for type metadata for Any?);
              }

              v3 = v96;
            }

            else
            {
              a1;
              *(&v34 + 1);
            }
          }

          else
          {
            a1;
            *(&v34 + 1);
            outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(__dst, &demangling cache variable for type metadata for Any?);
          }

          v14 = v99;
        }

        else
        {
          a1;
        }
      }

      else
      {
        a1;
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(__dst, &demangling cache variable for type metadata for Any?);
      }

      (*(v98 + 8))(*(&v98 + 1), v97);
      outlined consume of Result<_DataTable, Error>(v87, v88);
      goto LABEL_24;
    }

    v39 = &aLabeledVideoDa[-32] | 0x8000000000000000;
    if (v93 ^ 0xD000000000000012 | v39 ^ v20)
    {
      v51 = _stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000012, v39, v93, v20, 0);
      v20;
      if ((v51 & 1) == 0)
      {
        (*(v98 + 8))(*(&v98 + 1), v97);
        a1;
        goto LABEL_54;
      }
    }

    else
    {
      v20;
    }

    (*(v98 + 16))(&v60, *(&v98 + 1), v97);
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
    LOBYTE(v62) = 1;
    v63 = 44;
    v64 = 0xE100000000000000;
    v65 = 0;
    v66 = 0xE000000000000000;
    v67 = 92;
    v68 = 0xE100000000000000;
    v69 = 1;
    v70 = 34;
    v71 = 0xE100000000000000;
    v72 = 1;
    v73 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
    v74 = 10;
    v75 = 0xE100000000000000;
    v76 = 0;
    v77 = 1;
    v78 = 0;
    outlined retain of MLDataTable.ParsingOptions(__src);
    outlined release of MLDataTable.ParsingOptions(&v62, 0xE000000000000000);
    memcpy(__dst, __src, sizeof(__dst));
    MLDataTable.init(contentsOf:options:)(&v60, __dst);
    __dst[0] = v94;
    LOBYTE(__dst[1]) = BYTE8(v94);
    v52 = v91;
    DataFrame.init(_:)(__dst);
    v53 = v85;
    v54 = *(v85 + 32);
    v54(v89, v52, v92);
    specialized Dictionary.subscript.getter(0x6F635F6F65646976, 0xEC0000006E6D756CLL, a1);
    if (__dst[3])
    {
      if (swift_dynamicCast(&v94, __dst, v95, &type metadata for String, 6))
      {
        v91 = *(&v94 + 1);
        v93 = v94;
        specialized Dictionary.subscript.getter(0x6F635F6C6562616CLL, 0xEC0000006E6D756CLL, a1);
        if (__dst[3])
        {
          if (swift_dynamicCast(&v94, __dst, v95, &type metadata for String, 6))
          {
            v84 = *(&v94 + 1);
            *&v85 = v94;
            specialized Dictionary.subscript.getter(0x6F635F6C6562616CLL, 0xEC0000006E6D756CLL, a1);
            if (__dst[3])
            {
              if (swift_dynamicCast(&v94, __dst, v95, &type metadata for String, 6))
              {
                v90 = v94;
                goto LABEL_101;
              }
            }

            else
            {
              outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(__dst, &demangling cache variable for type metadata for Any?);
            }

            v90 = 0uLL;
LABEL_101:
            specialized Dictionary.subscript.getter(0x6F635F6C6562616CLL, 0xEC0000006E6D756CLL, a1);
            a1;
            (*(v98 + 8))(*(&v98 + 1), v97);
            if (__dst[3])
            {
              if (swift_dynamicCast(&v94, __dst, v95, &type metadata for String, 6))
              {
                v98 = v94;
LABEL_106:
                v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
                v56 = v55[12];
                v57 = v55[16];
                v58 = v55[20];
                v97 = v55[24];
                v31 = v86;
                v54(v86, v89, v92);
                *(v31 + v56) = v93;
                *(v31 + v56 + 8) = v91;
                *(v31 + v57) = v85;
                *(v31 + v57 + 8) = v84;
                *(v31 + v58) = v90;
                *(v31 + v97) = v98;
                v59 = 6;
                goto LABEL_107;
              }
            }

            else
            {
              outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(__dst, &demangling cache variable for type metadata for Any?);
            }

            v98 = 0uLL;
            goto LABEL_106;
          }

          a1;
          v91;
        }

        else
        {
          a1;
          v91;
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(__dst, &demangling cache variable for type metadata for Any?);
        }

        v3 = v96;
        v14 = v99;
        v53 = v85;
LABEL_98:
        (*(v98 + 8))(*(&v98 + 1), v97);
        (*(v53 + 8))(v89, v92);
        goto LABEL_24;
      }

      a1;
    }

    else
    {
      a1;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(__dst, &demangling cache variable for type metadata for Any?);
    }

    v3 = v96;
    v14 = v99;
    goto LABEL_98;
  }

  a1;
LABEL_22:
  v24 = *(&v98 + 1);
  v25 = v97;
  v26 = v98;
LABEL_23:
  (*(v26 + 8))(v24, v25);
LABEL_24:
  v27 = 1;
  return __swift_storeEnumTagSinglePayload(v3, v27, 1, v14);
}

uint64_t MLActionClassifier.ModelParameters.ValidationData.init(dictionary:tableFile:)(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v3 = v2;
  v4 = type metadata accessor for URL(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v39 = &v37;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLActionClassifier.DataSource?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v38 = &v37;
  v12 = type metadata accessor for MLActionClassifier.DataSource(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v40 = &v37;
  v52 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
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
            MLActionClassifier.DataSource.init(dictionary:tableFile:)(v49, v28);
            (*(v5 + 8))(v50, v4);
            v30 = v29;
            v22 = 1;
            if (__swift_getEnumTagSinglePayload(v30, 1, v12) == 1)
            {
              outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v30, &demangling cache variable for type metadata for MLActionClassifier.DataSource?);
              v25 = 1;
              v3 = v51;
              goto LABEL_11;
            }

            v34 = v30;
            v35 = v40;
            outlined init with take of MLClassifierMetrics(v34, v40, type metadata accessor for MLActionClassifier.DataSource);
            v36 = v35;
            v24 = v47;
            outlined init with take of MLClassifierMetrics(v36, v47, type metadata accessor for MLActionClassifier.DataSource);
LABEL_29:
            v23 = v52;
            goto LABEL_7;
          }
        }

        else
        {
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v41, &demangling cache variable for type metadata for Any?);
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
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v41, &demangling cache variable for type metadata for Any?);
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
  v22 = 2;
  v23 = v52;
  v24 = v47;
LABEL_7:
  swift_storeEnumTagMultiPayload(v24, v23, v22);
  v3 = v51;
  outlined init with take of MLClassifierMetrics(v24, v51, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
  v25 = 0;
  return __swift_storeEnumTagSinglePayload(v3, v25, 1, v23);
}

uint64_t MLActionClassifier.ModelParameters.ModelAlgorithmType.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  if (!*(a1 + 16) || (v3 = specialized __RawDictionaryStorage.find<A>(_:)(0x687469726F676C61, 0xE90000000000006DLL), (v4 & 1) == 0))
  {
    v10 = 0;
    v9 = 0;
    a1;
    goto LABEL_8;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v3, &v9);
  a1;
  if (!*(&v10 + 1))
  {
LABEL_8:
    result = outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v9, &demangling cache variable for type metadata for Any?);
    goto LABEL_9;
  }

  result = swift_dynamicCast(&v11, &v9, &type metadata for Any + 8, &type metadata for String, 6);
  if (!result)
  {
LABEL_9:
    v7 = 1;
    goto LABEL_10;
  }

  v6 = v12;
  if (v11 ^ 0x6E63677473 | v12 ^ 0xE500000000000000)
  {
    v7 = 0;
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)(0x6E63677473, 0xE500000000000000, v11, v12, 0);
    result = v6;
    if (v8)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  result = v12;
  v7 = 0;
LABEL_10:
  *v2 = v7;
  return result;
}

NSURL *MLActionClassifier.PersistentParameters.save(toSessionDirectory:)(uint64_t a1)
{
  v58 = v1;
  v70 = a1;
  v3 = *(*(type metadata accessor for MLActionClassifier.DataSource(0) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v65 = &v54;
  v61 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
  v6 = *(*(v61 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v62 = &v54;
  v76 = type metadata accessor for URL(0);
  v67 = *(v76 - 8);
  v9 = *(v67 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v69 = &v54;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v60 = &v54;
  v14 = alloca(v9);
  v15 = alloca(v9);
  v59 = &v54;
  v66 = type metadata accessor for MLActionClassifier.ModelParameters(0);
  v16 = *(*(v66 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v68 = &v54;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v74 = &v54;
  v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
  inited = swift_initStackObject(v21, v79);
  *(inited + 16) = 8;
  *(inited + 24) = 16;
  *(inited + 32) = 0x676E696E69617274;
  *(inited + 40) = 0xE800000000000000;
  v72 = v2;
  v23 = MLActionClassifier.DataSource.dictionary.getter();
  v75 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
  *(inited + 72) = v75;
  *(inited + 48) = v23;
  *(inited + 80) = 0x69746164696C6176;
  *(inited + 88) = 0xEA00000000006E6FLL;
  v24 = type metadata accessor for MLActionClassifier.PersistentParameters(0);
  v63 = v2 + v24[5];
  v25 = v74;
  outlined init with copy of MLTrainingSessionParameters(v63, v74, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
  v57 = *&v72[v24[6]];
  v71 = *&v72[v24[7]];
  v56 = *&v72[v24[8]];
  v64 = v24[10];
  v55 = *&v72[v64];
  v73 = *&v72[v24[9]];
  *(v25 + *(v66 + 32)) = v55;
  v26 = MLActionClassifier.ModelParameters.ValidationData.dictionary.getter();
  outlined destroy of MLActivityClassifier.ModelParameters(v25, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
  v27 = v75;
  *(inited + 120) = v75;
  *(inited + 96) = v26;
  *(inited + 128) = 0x69735F6863746162;
  *(inited + 136) = 0xEA0000000000657ALL;
  *(inited + 168) = &type metadata for Int;
  *(inited + 144) = v57;
  *(inited + 176) = 0x6D6172665F6D756ELL;
  *(inited + 184) = 0xEA00000000007365;
  *(inited + 216) = &type metadata for Int;
  *(inited + 192) = v56;
  strcpy((inited + 224), "max_iterations");
  *(inited + 239) = -18;
  *(inited + 264) = &type metadata for Int;
  *(inited + 240) = v71;
  *(inited + 272) = 0xD000000000000014;
  *(inited + 280) = "Empty training input." + 0x8000000000000000;
  *(inited + 312) = &type metadata for Int;
  *(inited + 288) = v55;
  *(inited + 320) = 0x687469726F676C61;
  *(inited + 328) = 0xE90000000000006DLL;
  v28 = MLActionClassifier.ModelParameters.ModelAlgorithmType.dictionary.getter();
  *(inited + 360) = v27;
  *(inited + 336) = v28;
  *(inited + 368) = 0x7246746567726174;
  *(inited + 376) = 0xEF65746152656D61;
  *(inited + 408) = &type metadata for Double;
  v29 = v73;
  *(inited + 384) = v73;
  v30 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
  v31 = objc_opt_self(NSPropertyListSerialization);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v30;
  v77 = 0;
  v33 = [v31 dataWithPropertyList:isa format:200 options:0 error:&v77];
  v34 = v33;

  v35 = v77;
  if (v34)
  {
    v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)(v34);
    v38 = v37;

    v39 = v59;
    URL.appendingPathComponent(_:)(0xD000000000000010, "ObjectDetectorMetrics." + 0x8000000000000000);
    v40 = v58;
    Data.write(to:options:)(v39, 0, v36, v38);
    if (v40)
    {
      (*(v67 + 8))(v39, v76);
      v41 = v36;
      v42 = v38;
    }

    else
    {
      v75 = v36;
      v74 = v38;
      v73 = *(v67 + 8);
      *v29.i64 = v73(v39, v76);
      MLActionClassifier.DataSource.table.getter(v29);
      v44 = v78;
      if (v78 != -1)
      {
        v71 = v77;
        v78 &= 1u;
        v45 = v60;
        URL.appendingPathComponent(_:)(1635017060, 0xE400000000000000);
        MLDataTable.write(to:)(v45);
        v73(v45, v76);
        outlined consume of MLDataTable?(v71, v44);
      }

      v46 = v68;
      outlined init with copy of MLTrainingSessionParameters(v63, v68, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
      *(v46 + *(v66 + 32)) = *&v72[v64];
      v47 = v46;
      v48 = v62;
      outlined init with copy of MLTrainingSessionParameters(v47, v62, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
      if (swift_getEnumCaseMultiPayload(v48, v61) == 1)
      {
        v49 = v65;
        outlined init with take of MLClassifierMetrics(v48, v65, type metadata accessor for MLActionClassifier.DataSource);
        MLActionClassifier.DataSource.table.getter(v29);
        outlined destroy of MLActivityClassifier.ModelParameters(v49, type metadata accessor for MLActionClassifier.DataSource);
        v50 = v78;
        v51 = v77;
      }

      else
      {
        v50 = -1;
        v51 = 0;
      }

      v52 = v69;
      outlined destroy of MLActivityClassifier.ModelParameters(v68, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
      if (v50 != -1)
      {
        v77 = v51;
        v78 = v50 & 1;
        v72 = v51;
        URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEE00617461446E6FLL);
        MLDataTable.write(to:)(v52);
        v73(v52, v76);
        outlined consume of Data._Representation(v75, v74);
        outlined consume of MLDataTable?(v72, v50);
        return __stack_chk_guard;
      }

      v41 = v75;
      v42 = v74;
    }

    outlined consume of Data._Representation(v41, v42);
  }

  else
  {
    v43 = v35;
    _convertNSErrorToError(_:)(v35);

    swift_willThrow(v43, "dataWithPropertyList:format:options:error:");
  }

  return __stack_chk_guard;
}

uint64_t MLActionClassifier.DataSource.dictionary.getter()
{
  v86 = type metadata accessor for URL(0);
  v85 = *(v86 - 8);
  v1 = *(v85 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v4 = alloca(v1);
  v5 = alloca(v1);
  v84 = &v60;
  v6 = alloca(v1);
  v7 = alloca(v1);
  v8 = type metadata accessor for MLActionClassifier.DataSource(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  outlined init with copy of MLTrainingSessionParameters(v0, &v60, type metadata accessor for MLActionClassifier.DataSource);
  switch(swift_getEnumCaseMultiPayload(&v60, v8))
  {
    case 0u:
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v13 = &v60 + v12[12];
      v77 = *(&v60 + v12[16]);
      v76 = *(&v60 + v12[20]);
      v14 = v12[24];
      v80 = *(&v60 + v14);
      v78 = *(&v60 + v14 + 8);
      v15 = v12[28];
      v79 = *(&v60 + v15);
      v82 = *(&v60 + v15 + 8);
      v16 = *(v85 + 32);
      v17 = v86;
      v16(&v60, &v60, v86);
      v16(v84, v13, v17);
      v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      v19 = swift_allocObject(v18, 272, 7);
      *(v19 + 16) = 5;
      *(v19 + 24) = 10;
      *(v19 + 32) = 1684957547;
      *(v19 + 40) = 0xE400000000000000;
      *(v19 + 72) = &type metadata for String;
      *(v19 + 48) = 0x726F746365726964;
      *(v19 + 56) = 0xE900000000000079;
      *(v19 + 80) = 1752457584;
      *(v19 + 88) = 0xE400000000000000;
      v83 = &v60;
      v20 = URL.path.getter(v18);
      *(v19 + 120) = &type metadata for String;
      *(v19 + 96) = v20;
      *(v19 + 104) = v21;
      *(v19 + 128) = 0x697461746F6E6E61;
      *(v19 + 136) = 0xEF656C69665F6E6FLL;
      *(v19 + 168) = v17;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v19 + 144));
      (*(v85 + 16))(boxed_opaque_existential_0, v84, v17);
      strcpy((v19 + 176), "video_column");
      *(v19 + 189) = 0;
      *(v19 + 190) = -5120;
      *(v19 + 216) = &type metadata for String;
      *(v19 + 192) = v77;
      strcpy((v19 + 224), "label_column");
      *(v19 + 237) = 0;
      *(v19 + 238) = -5120;
      *(v19 + 264) = &type metadata for String;
      *(v19 + 240) = v76;
      v23 = Dictionary.init(dictionaryLiteral:)(v19, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
      if (v78)
      {
        v74 = &type metadata for String;
        *&v73 = v80;
        *(&v73 + 1) = v78;
        outlined init with take of Any(&v73, v75);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v23);
        v81 = v23;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v75, 0xD000000000000011, ("labeled_video_data" + 0x8000000000000000), isUniquelyReferenced_nonNull_native);
        v23 = v81;
      }

      v25 = v85;
      v26 = v86;
      if (v82)
      {
        v74 = &type metadata for String;
        *&v73 = v79;
        *(&v73 + 1) = v82;
        outlined init with take of Any(&v73, v75);
        v27 = swift_isUniquelyReferenced_nonNull_native(v23);
        v81 = v23;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v75, 0x656D69745F646E65, 0xEF6E6D756C6F635FLL, v27);
        v23 = v81;
      }

      v28 = *(v25 + 8);
      v28(v84, v26);
      v28(v83, v26);
      return v23;
    case 1u:
      v32 = v85;
      (*(v85 + 32))(&v60, &v60, v86);
      v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      inited = swift_initStackObject(v33, v72);
      inited[2] = 2;
      inited[3] = 4;
      inited[4] = 1684957547;
      inited[5] = 0xE400000000000000;
      v35 = "session_id_column" + 0x8000000000000000;
      inited[9] = &type metadata for String;
      inited[6] = 0xD000000000000013;
      goto LABEL_11;
    case 2u:
      v32 = v85;
      (*(v85 + 32))(&v60, &v60, v86);
      v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      inited = swift_initStackObject(v33, v71);
      inited[2] = 2;
      inited[3] = 4;
      inited[4] = 1684957547;
      inited[5] = 0xE400000000000000;
      inited[9] = &type metadata for String;
      inited[6] = 0x5F64656C6562616CLL;
      v35 = 0xED000073656C6966;
LABEL_11:
      inited[7] = v35;
      inited[10] = 1752457584;
      inited[11] = 0xE400000000000000;
      v40 = URL.path.getter(v33);
      inited[15] = &type metadata for String;
      inited[12] = v40;
      inited[13] = v41;
      v23 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
      (*(v32 + 8))(&v60, v86);
      return v23;
    case 3u:
      v36 = v62;
      v37 = v63;
      v38 = v64;
      v39 = v65;
      v86 = v66;
      v85 = v67;
      outlined consume of Result<_DataTable, Error>(v60, v61);
      goto LABEL_13;
    case 4u:
      v84 = v62;
      v29 = v63;
      v85 = v64;
      v30 = v65;
      v82 = v66;
      v31 = v67;
      v83 = v68;
      v86 = v69;
      outlined consume of Result<_DataTable, Error>(v60, v61);
      goto LABEL_15;
    case 5u:
      v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      v43 = v42[12];
      v36 = *(&v60 + v43);
      v37 = *(&v60 + v43 + 8);
      v44 = v42[16];
      v38 = *(&v60 + v44);
      v39 = *(&v60 + v44 + 8);
      v45 = v42[20];
      v86 = *(&v60 + v45);
      v85 = *(&v60 + v45 + 8);
      v46 = type metadata accessor for DataFrame(0);
      (*(*(v46 - 8) + 8))(&v60, v46);
LABEL_13:
      v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      v48 = swift_initStackObject(v47, &v60);
      *(v48 + 16) = 4;
      *(v48 + 24) = 8;
      *(v48 + 32) = 1684957547;
      *(v48 + 40) = 0xE400000000000000;
      *(v48 + 72) = &type metadata for String;
      *(v48 + 48) = 0xD000000000000016;
      *(v48 + 56) = "start_time_column" + 0x8000000000000000;
      *(v48 + 80) = 0xD000000000000011;
      *(v48 + 88) = "labeled_keypoints_data" + 0x8000000000000000;
      *(v48 + 120) = &type metadata for String;
      *(v48 + 96) = v36;
      *(v48 + 104) = v37;
      strcpy((v48 + 128), "label_column");
      *(v48 + 141) = 0;
      *(v48 + 142) = -5120;
      *(v48 + 168) = &type metadata for String;
      *(v48 + 144) = v38;
      *(v48 + 152) = v39;
      strcpy((v48 + 176), "feature_column");
      *(v48 + 191) = -18;
      *(v48 + 216) = &type metadata for String;
      *(v48 + 192) = v86;
      *(v48 + 200) = v85;
      v23 = Dictionary.init(dictionaryLiteral:)(v48, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
      break;
    case 6u:
      v49 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v50 = v49[12];
      v84 = *(&v60 + v50);
      v29 = *(&v60 + v50 + 8);
      v51 = v49[16];
      v85 = *(&v60 + v51);
      v30 = *(&v60 + v51 + 8);
      v52 = v49[20];
      v82 = *(&v60 + v52);
      v31 = *(&v60 + v52 + 8);
      v53 = v49[24];
      v83 = *(&v60 + v53);
      v86 = *(&v60 + v53 + 8);
      v54 = type metadata accessor for DataFrame(0);
      (*(*(v54 - 8) + 8))(&v60, v54);
LABEL_15:
      v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      v56 = swift_initStackObject(v55, v70);
      *(v56 + 16) = 3;
      *(v56 + 24) = 6;
      *(v56 + 32) = 1684957547;
      *(v56 + 40) = 0xE400000000000000;
      *(v56 + 72) = &type metadata for String;
      *(v56 + 48) = 0xD000000000000012;
      *(v56 + 56) = "augmentation_options" + 0x8000000000000000;
      strcpy((v56 + 80), "video_column");
      *(v56 + 93) = 0;
      *(v56 + 94) = -5120;
      *(v56 + 120) = &type metadata for String;
      *(v56 + 96) = v84;
      *(v56 + 104) = v29;
      strcpy((v56 + 128), "label_column");
      *(v56 + 141) = 0;
      *(v56 + 142) = -5120;
      *(v56 + 168) = &type metadata for String;
      *(v56 + 144) = v85;
      *(v56 + 152) = v30;
      v23 = Dictionary.init(dictionaryLiteral:)(v56, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
      if (v31)
      {
        v74 = &type metadata for String;
        *&v73 = v82;
        *(&v73 + 1) = v31;
        outlined init with take of Any(&v73, v75);
        v57 = swift_isUniquelyReferenced_nonNull_native(v23);
        v81 = v23;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v75, 0xD000000000000011, ("labeled_video_data" + 0x8000000000000000), v57);
        v23 = v81;
      }

      if (v86)
      {
        v74 = &type metadata for String;
        *&v73 = v83;
        *(&v73 + 1) = v86;
        outlined init with take of Any(&v73, v75);
        v58 = swift_isUniquelyReferenced_nonNull_native(v23);
        v81 = v23;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v75, 0x656D69745F646E65, 0xEF6E6D756C6F635FLL, v58);
        v23 = v81;
      }

      break;
  }

  return v23;
}

uint64_t MLActionClassifier.ModelParameters.ValidationData.dictionary.getter()
{
  v1 = *(*(type metadata accessor for MLActionClassifier.DataSource(0) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v4 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  outlined init with copy of MLTrainingSessionParameters(v0, &v23, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v23, v4);
  if (!EnumCaseMultiPayload)
  {
    v13 = v24;
    v14 = v25;
    v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
    v31 = v23;
    inited = swift_initStackObject(v15, &v23);
    inited[2] = 2;
    inited[3] = 4;
    inited[4] = 1684957547;
    inited[5] = 0xE400000000000000;
    inited[9] = &type metadata for String;
    inited[6] = 0x74696C7073;
    inited[7] = 0xE500000000000000;
    inited[10] = 1635017060;
    inited[11] = 0xE400000000000000;
    v28 = v31;
    v29 = v13;
    v30 = v14;
    v17 = MLSplitStrategy.dictionary.getter();
    inited[15] = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
    inited[12] = v17;
    v18 = &type metadata for Any + 8;
    v19 = inited;
    return Dictionary.init(dictionaryLiteral:)(v19, &type metadata for String, v18, &protocol witness table for String);
  }

  if (EnumCaseMultiPayload != 1)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
    v21 = swift_initStackObject(v20, v27);
    v21[2] = 1;
    v21[3] = 2;
    v21[4] = 1684957547;
    v21[5] = 0xE400000000000000;
    v21[9] = &type metadata for String;
    v21[6] = 1701736302;
    v21[7] = 0xE400000000000000;
    v18 = &type metadata for Any + 8;
    v19 = v21;
    return Dictionary.init(dictionaryLiteral:)(v19, &type metadata for String, v18, &protocol witness table for String);
  }

  outlined init with take of MLClassifierMetrics(&v23, &v23, type metadata accessor for MLActionClassifier.DataSource);
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
  v10 = swift_initStackObject(v9, v26);
  v10[2] = 2;
  v10[3] = 4;
  v10[4] = 1684957547;
  v10[5] = 0xE400000000000000;
  v10[9] = &type metadata for String;
  v10[6] = 0x756F735F61746164;
  v10[7] = 0xEB00000000656372;
  v10[10] = 1635017060;
  v10[11] = 0xE400000000000000;
  v11 = MLActionClassifier.DataSource.dictionary.getter();
  v10[15] = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
  v10[12] = v11;
  v12 = Dictionary.init(dictionaryLiteral:)(v10, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
  outlined destroy of MLActivityClassifier.ModelParameters(&v23, type metadata accessor for MLActionClassifier.DataSource);
  return v12;
}

uint64_t MLActionClassifier.ModelParameters.ModelAlgorithmType.dictionary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
  inited = swift_initStackObject(v0, v3);
  inited[2] = 1;
  inited[3] = 2;
  inited[4] = 0x687469726F676C61;
  inited[5] = 0xE90000000000006DLL;
  inited[9] = &type metadata for String;
  inited[6] = 0x6E63677473;
  inited[7] = 0xE500000000000000;
  return Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
}

void *MLActionClassifier.DataSource.table.getter(__m128 a1)
{
  v89 = v2;
  v88 = v1;
  v77 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v76 = *(v77 - 8);
  v3 = *(v76 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v70 = &v69;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyColumn?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v85 = &v69;
  v84 = type metadata accessor for AnyColumn(0);
  v75 = *(v84 - 8);
  v9 = *(v75 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v78 = &v69;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v80 = &v69;
  v14 = type metadata accessor for DataFrame(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v82 = &v69;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v81 = &v69;
  v21 = alloca(v16);
  v22 = alloca(v16);
  v23 = alloca(v16);
  v24 = alloca(v16);
  v74 = &v69;
  v25 = type metadata accessor for MLActionClassifier.DataSource(0);
  v26 = *(*(v25 - 8) + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  outlined init with copy of MLTrainingSessionParameters(v89, &v69, type metadata accessor for MLActionClassifier.DataSource);
  switch(swift_getEnumCaseMultiPayload(&v69, v25))
  {
    case 0u:
      v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v36 = &v69 + v35[12];
      *(&v69 + v35[16] + 8);
      *(&v69 + v35[20] + 8);
      *(&v69 + v35[24] + 8);
      *(&v69 + v35[28] + 8);
      v37 = type metadata accessor for URL(0);
      v38 = *(*(v37 - 8) + 8);
      v38(v36, v37);
      v38(&v69, v37);
      goto LABEL_11;
    case 1u:
    case 2u:
      v29 = type metadata accessor for URL(0);
      (*(*(v29 - 8) + 8))(&v69, v29);
LABEL_11:
      result = v88;
      *v88 = 0;
      *(result + 8) = -1;
      return result;
    case 3u:
      v39 = v69;
      v40 = v70;
      v41 = v74;
      v42 = v76;
      v72;
      v41;
      v42;
      v86 = v39;
      v87 = v40 & 1;
      outlined copy of Result<_DataTable, Error>(v39, v40);
      static MLActionClassifier.reformatKeypointsDataTable(table:featureColumn:)(&v86, 0x746E696F7079656BLL, 0xE900000000000073);
      outlined consume of Result<_DataTable, Error>(v39, v40);
      goto LABEL_12;
    case 4u:
      v30 = v69;
      LOBYTE(v89) = v70;
      v31 = v74;
      v32 = v76;
      v33 = v78;
      v72;
      v31;
      v33;
      v32;
      result = v88;
      *v88 = v30;
      *(result + 8) = v89;
      return result;
    case 5u:
      v82 = &v69;
      v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      *(&v69 + v43[12] + 8);
      *(&v69 + v43[16] + 8);
      v44 = v43[20];
      v45 = *(&v69 + v44);
      v46 = *(&v69 + v44 + 8);
      v81 = v14;
      v89 = v15;
      (*(v15 + 32))(v74, &v69, v14);
      v47 = v80;
      v83 = v45;
      v48 = v46;
      v49 = v46;
      v50 = v74;
      DataFrame.subscript.getter(v45, v49);
      v51 = AnyColumn.wrappedElementType.getter();
      v52 = *(v75 + 8);
      v52(v47, v84);
      v79 = v48;
      if (v51 == &type metadata for String)
      {
        v71 = v52;
        v57 = v70;
        DataFrame.subscript.getter(v83, v48, &type metadata for String);
        Column<A>.parseAsJSONArrays()();
        (*(v76 + 8))(v57, v77);
        v58 = v84;
        __swift_storeEnumTagSinglePayload(v85, 0, 1, v84);
        v59 = v78;
        v60 = v58;
        v61 = v75;
        (*(v75 + 32))(v78, v85, v60);
        v62 = v59;
        v63 = v84;
        (*(v61 + 16))(v80, v62, v84);
        v48;
        DataFrame.subscript.setter(v80, v83, v48);
        v71(v78, v63);
      }

      v53 = v89;
      v64 = v82;
      v65 = v81;
      *a1.i64 = (*(v89 + 16))(v82, v50, v81);
      MLDataTable.init(_:convertArraysToShapedArrays:)(v64, 0, a1);
      v86 = v72;
      v87 = v73;
      v66 = v79;
      static MLActionClassifier.reformatKeypointsDataTable(table:featureColumn:)(&v86, v83, v79);
      (*(v53 + 8))(v50, v65);
      v66;
      goto LABEL_12;
    case 6u:
      v54 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      *(&v69 + v54[12] + 8);
      *(&v69 + v54[16] + 8);
      *(&v69 + v54[20] + 8);
      *(&v69 + v54[24] + 8);
      v55 = v81;
      (*(v15 + 32))(v81, &v69, v14);
      v56 = v82;
      *a1.i64 = (*(v15 + 16))(v82, v55, v14);
      MLDataTable.init(_:convertArraysToShapedArrays:)(v56, 0, a1);
      (*(v15 + 8))(v55, v14);
LABEL_12:
      result = v86;
      v67 = v87;
      v68 = v88;
      *v88 = v86;
      *(v68 + 8) = v67;
      return result;
  }
}

uint64_t type metadata completion function for Either(uint64_t a1)
{
  v1 = swift_checkMetadataState(319, *(a1 + 16));
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v9[0] = *(v1 - 8) + 64;
    v4 = swift_checkMetadataState(319, *(a1 + 24));
    v2 = v4;
    if (v7 <= 0x3F)
    {
      v9[1] = *(v4 - 8) + 64;
      v2 = 0;
      swift_initEnumMetadataMultiPayload(a1, 0, 2, v9, v5, v6);
    }
  }

  return v2;
}

void *initializeBufferWithCopyOfBuffer for Either(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = *(v4 - 8);
  if (*(v7 + 64) > v6)
  {
    v6 = *(v7 + 64);
  }

  v8 = (*(v5 + 80) | *(v7 + 80));
  if (v8 > 7 || v6 + 1 > 0x18 || ((*(v5 + 80) | *(v7 + 80)) & 0x100000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    v12;
    return (v12 + ((v8 + 16) & ~v8));
  }

  else
  {
    v9 = a2[v6];
    if (v9 >= 2)
    {
      v10 = 4;
      if (v6 < 4)
      {
        v10 = v6;
      }

      switch(v10)
      {
        case 0:
          break;
        case 1:
          v11 = *a2;
          goto LABEL_15;
        case 2:
          v11 = *a2;
          goto LABEL_15;
        case 3:
          v11 = *a2 | (a2[2] << 16);
          goto LABEL_15;
        case 4:
          v11 = *a2;
LABEL_15:
          if (v6 < 4)
          {
            v11 |= (v9 - 2) << (8 * v6);
          }

          v9 = v11 + 2;
          break;
      }
    }

    if (v9 == 1)
    {
      (*(v7 + 16))(a1, a2, v4);
      *(a1 + v6) = 1;
    }

    else
    {
      (*(v5 + 16))(a1);
      *(a1 + v6) = 0;
    }
  }

  return a1;
}

uint64_t destroy for Either(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  v7 = *(v4 - 8);
  if (*(v7 + 64) > v6)
  {
    v6 = *(v7 + 64);
  }

  v8 = a1[v6];
  if (v8 >= 2)
  {
    v9 = 4;
    if (v6 < 4)
    {
      v9 = v6;
    }

    switch(v9)
    {
      case 0:
        break;
      case 1:
        v10 = *a1;
        goto LABEL_11;
      case 2:
        v10 = *a1;
        goto LABEL_11;
      case 3:
        v10 = *a1 | (a1[2] << 16);
        goto LABEL_11;
      case 4:
        v10 = *a1;
LABEL_11:
        if (v6 < 4)
        {
          v10 |= (v8 - 2) << (8 * v6);
        }

        v8 = v10 + 2;
        break;
    }
  }

  if (v8 == 1)
  {
    v5 = *(v4 - 8);
    v3 = v4;
  }

  return (*(v5 + 8))(a1, v3);
}

uint64_t initializeWithCopy for Either(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = *(v5 - 8);
  if (*(v8 + 64) > v7)
  {
    v7 = *(v8 + 64);
  }

  v10 = a2[v7];
  if (v10 >= 2)
  {
    v11 = 4;
    if (v7 < 4)
    {
      v11 = v7;
    }

    switch(v11)
    {
      case 0:
        break;
      case 1:
        v12 = *a2;
        goto LABEL_11;
      case 2:
        v12 = *a2;
        goto LABEL_11;
      case 3:
        v12 = *a2 | (a2[2] << 16);
        goto LABEL_11;
      case 4:
        v12 = *a2;
LABEL_11:
        if (v7 < 4)
        {
          v12 |= (v10 - 2) << (8 * v7);
        }

        v10 = v12 + 2;
        break;
    }
  }

  if (v10 == 1)
  {
    v6 = *(v5 - 8);
    v4 = v5;
  }

  (*(v6 + 16))(a1, a2, v4);
  *(a1 + v7) = v10 == 1;
  return a1;
}

unsigned __int8 *assignWithCopy for Either(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = *(a3 + 16);
    v5 = *(a3 + 24);
    v6 = *(v4 - 8);
    v7 = *(v6 + 64);
    v8 = *(v5 - 8);
    if (*(v8 + 64) > v7)
    {
      v7 = *(v8 + 64);
    }

    v9 = a1[v7];
    v10 = 4;
    if (v9 < 2)
    {
LABEL_8:
      v12 = a2;
    }

    else
    {
      v11 = v7;
      if (v7 >= 4)
      {
        v11 = 4;
      }

      switch(v11)
      {
        case 0:
          goto LABEL_8;
        case 1:
          v13 = *a1;
          break;
        case 2:
          v13 = *a1;
          break;
        case 3:
          v13 = *a1 | (a1[2] << 16);
          break;
        case 4:
          v13 = *a1;
          break;
      }

      v12 = a2;
      if (v7 < 4)
      {
        v13 |= (v9 - 2) << (8 * v7);
      }

      v10 = (v13 + 2);
      v9 = v10;
    }

    v14 = v9 == 1;
    v15 = *(v4 - 8);
    v24 = *(v5 - 8);
    if (v14)
    {
      v15 = *(v5 - 8);
    }

    v16 = v4;
    if (v14)
    {
      v16 = v5;
    }

    (*(v15 + 8))(a1, v16, v10);
    v17 = v12;
    v18 = v12[v7];
    if (v18 < 2)
    {
LABEL_24:
      v20 = v5;
      v21 = v24;
    }

    else
    {
      v19 = 4;
      if (v7 < 4)
      {
        v19 = v7;
      }

      switch(v19)
      {
        case 0:
          goto LABEL_24;
        case 1:
          v22 = *v17;
          break;
        case 2:
          v22 = *v17;
          break;
        case 3:
          v22 = *v17 | (v17[2] << 16);
          break;
        case 4:
          v22 = *v17;
          break;
      }

      v20 = v5;
      v21 = v24;
      if (v7 < 4)
      {
        v22 |= (v18 - 2) << (8 * v7);
      }

      v18 = v22 + 2;
    }

    if (v18 == 1)
    {
      v6 = v21;
      v4 = v20;
    }

    (*(v6 + 16))(a1, v17, v4);
    a1[v7] = v18 == 1;
  }

  return a1;
}

uint64_t initializeWithTake for Either(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = *(v5 - 8);
  if (*(v8 + 64) > v7)
  {
    v7 = *(v8 + 64);
  }

  v10 = a2[v7];
  if (v10 >= 2)
  {
    v11 = 4;
    if (v7 < 4)
    {
      v11 = v7;
    }

    switch(v11)
    {
      case 0:
        break;
      case 1:
        v12 = *a2;
        goto LABEL_11;
      case 2:
        v12 = *a2;
        goto LABEL_11;
      case 3:
        v12 = *a2 | (a2[2] << 16);
        goto LABEL_11;
      case 4:
        v12 = *a2;
LABEL_11:
        if (v7 < 4)
        {
          v12 |= (v10 - 2) << (8 * v7);
        }

        v10 = v12 + 2;
        break;
    }
  }

  if (v10 == 1)
  {
    v6 = *(v5 - 8);
    v4 = v5;
  }

  (*(v6 + 32))(a1, a2, v4);
  *(a1 + v7) = v10 == 1;
  return a1;
}

unsigned __int8 *assignWithTake for Either(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = *(a3 + 16);
    v5 = *(a3 + 24);
    v6 = *(v4 - 8);
    v7 = *(v6 + 64);
    v8 = *(v5 - 8);
    if (*(v8 + 64) > v7)
    {
      v7 = *(v8 + 64);
    }

    v9 = a1[v7];
    v10 = 4;
    if (v9 < 2)
    {
LABEL_8:
      v12 = a2;
    }

    else
    {
      v11 = v7;
      if (v7 >= 4)
      {
        v11 = 4;
      }

      switch(v11)
      {
        case 0:
          goto LABEL_8;
        case 1:
          v13 = *a1;
          break;
        case 2:
          v13 = *a1;
          break;
        case 3:
          v13 = *a1 | (a1[2] << 16);
          break;
        case 4:
          v13 = *a1;
          break;
      }

      v12 = a2;
      if (v7 < 4)
      {
        v13 |= (v9 - 2) << (8 * v7);
      }

      v10 = (v13 + 2);
      v9 = v10;
    }

    v14 = v9 == 1;
    v15 = *(v4 - 8);
    v24 = *(v5 - 8);
    if (v14)
    {
      v15 = *(v5 - 8);
    }

    v16 = v4;
    if (v14)
    {
      v16 = v5;
    }

    (*(v15 + 8))(a1, v16, v10);
    v17 = v12;
    v18 = v12[v7];
    if (v18 < 2)
    {
LABEL_24:
      v20 = v5;
      v21 = v24;
    }

    else
    {
      v19 = 4;
      if (v7 < 4)
      {
        v19 = v7;
      }

      switch(v19)
      {
        case 0:
          goto LABEL_24;
        case 1:
          v22 = *v17;
          break;
        case 2:
          v22 = *v17;
          break;
        case 3:
          v22 = *v17 | (v17[2] << 16);
          break;
        case 4:
          v22 = *v17;
          break;
      }

      v20 = v5;
      v21 = v24;
      if (v7 < 4)
      {
        v22 |= (v18 - 2) << (8 * v7);
      }

      v18 = v22 + 2;
    }

    if (v18 == 1)
    {
      v6 = v21;
      v4 = v20;
    }

    (*(v6 + 32))(a1, v17, v4);
    a1[v7] = v18 == 1;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for Either(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (*(*(*(a3 + 24) - 8) + 64) > v3)
  {
    v3 = *(*(*(a3 + 24) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v4 = v3 + 1;
  if ((v3 + 1) > 3)
  {
LABEL_6:
    v5 = a1[v4];
    goto LABEL_14;
  }

  v7 = ((~(-1 << (8 * v4)) + a2 - 254) >> (8 * v4)) + 1;
  if (v7 > 0xFFFF)
  {
    v5 = *&a1[v4];
  }

  else
  {
    if (v7 <= 0xFF)
    {
      if (v7 < 2)
      {
        goto LABEL_22;
      }

      goto LABEL_6;
    }

    v5 = *&a1[v4];
  }

LABEL_14:
  if (v5)
  {
    v8 = (v5 - 1) << (8 * v4);
    v9 = 0;
    if (v4 >= 4)
    {
      v8 = 0;
    }

    if (v4)
    {
      v10 = 4;
      if (v4 < 4)
      {
        v10 = v4;
      }

      switch(v10)
      {
        case 1:
          v9 = *a1;
          break;
        case 2:
          v9 = *a1;
          break;
        case 3:
          v9 = *a1 | (a1[2] << 16);
          break;
        case 4:
          v9 = *a1;
          break;
      }
    }

    return (v8 | v9) + 255;
  }

LABEL_22:
  v11 = a1[v3];
  result = 0;
  if (v11 >= 2)
  {
    return (v11 ^ 0xFF) + 1;
  }

  return result;
}

unint64_t storeEnumTagSinglePayload for Either(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  result = *(*(*(a4 + 16) - 8) + 64);
  v5 = *(*(*(a4 + 24) - 8) + 64);
  if (v5 > result)
  {
    result = v5;
  }

  v6 = result + 1;
  v7 = 0;
  if (a3 >= 0xFF)
  {
    if (v6 > 3)
    {
      v12 = 1;
LABEL_11:
      v7 = v12;
      goto LABEL_12;
    }

    v8 = ((~(-1 << (8 * v6)) + a3 - 254) >> (8 * v6)) + 1;
    if (v8 > 0xFFFF)
    {
      v12 = 4;
      goto LABEL_11;
    }

    v7 = 0;
    if (v8 >= 2)
    {
      v7 = ((v8 | 0x200000000uLL) - 256) >> 32;
    }
  }

LABEL_12:
  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 >= 4)
    {
      v10 = 1;
      __bzero(a1, result + 1);
      *a1 = v9;
      result = v7;
      switch(v7)
      {
        case 0u:
          return result;
        case 1u:
          goto LABEL_28;
        case 2u:
          goto LABEL_30;
        case 3u:
          goto LABEL_32;
        case 4u:
          goto LABEL_29;
      }
    }

    v10 = (v9 >> (8 * v6)) + 1;
    result = v7;
    if (v6)
    {
      v11 = v9 & ~(-1 << (8 * v6));
      __bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v11;
          result = v7;
          switch(v7)
          {
            case 0u:
              return result;
            case 1u:
              goto LABEL_28;
            case 2u:
              goto LABEL_30;
            case 3u:
              goto LABEL_32;
            case 4u:
              goto LABEL_29;
          }
        }

        *a1 = a2 + 1;
        result = v7;
        switch(v7)
        {
          case 0u:
            return result;
          case 1u:
            goto LABEL_28;
          case 2u:
            goto LABEL_30;
          case 3u:
            goto LABEL_32;
          case 4u:
            goto LABEL_29;
        }
      }

      *a1 = v11;
      *(a1 + 2) = BYTE2(v11);
      result = v7;
      switch(v7)
      {
        case 0u:
          return result;
        case 1u:
          goto LABEL_28;
        case 2u:
          goto LABEL_30;
        case 3u:
          goto LABEL_32;
        case 4u:
          goto LABEL_29;
      }
    }

    switch(v7)
    {
      case 0u:
        return result;
      case 1u:
LABEL_28:
        *(a1 + v6) = v10;
        break;
      case 2u:
LABEL_30:
        *(a1 + v6) = v10;
        break;
      case 3u:
LABEL_32:
        BUG();
      case 4u:
LABEL_29:
        *(a1 + v6) = v10;
        break;
    }
  }

  else
  {
    switch(v7)
    {
      case 0u:
        goto LABEL_23;
      case 1u:
        *(a1 + v6) = 0;
        goto LABEL_23;
      case 2u:
        *(a1 + v6) = 0;
        goto LABEL_23;
      case 3u:
        goto LABEL_32;
      case 4u:
        *(a1 + v6) = 0;
LABEL_23:
        if (a2)
        {
          *(a1 + result) = -a2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTag for Either(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  if (*(*(*(a2 + 24) - 8) + 64) > v2)
  {
    v2 = *(*(*(a2 + 24) - 8) + 64);
  }

  result = a1[v2];
  if (result >= 2)
  {
    v4 = 4;
    if (v2 < 4)
    {
      v4 = v2;
    }

    switch(v4)
    {
      case 0:
        return result;
      case 1:
        v5 = *a1;
        goto LABEL_11;
      case 2:
        v5 = *a1;
        goto LABEL_11;
      case 3:
        v5 = *a1 | (a1[2] << 16);
        goto LABEL_11;
      case 4:
        v5 = *a1;
LABEL_11:
        if (v2 < 4)
        {
          v5 |= (result - 2) << (8 * v2);
        }

        result = (v5 + 2);
        break;
    }
  }

  return result;
}

unint64_t destructiveInjectEnumTag for Either(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 > 1)
  {
    v4 = *(a3 + 24);
    v5 = *(*(*(a3 + 16) - 8) + 64);
    if (*(*(v4 - 8) + 64) > v5)
    {
      v5 = *(*(v4 - 8) + 64);
    }

    v6 = a2 - 2;
    if (v5 < 4)
    {
      v7 = v6 & ~(-1 << (8 * v5));
      *(a1 + v5) = (v6 >> (8 * v5)) + 2;
      result = __bzero(a1, v5);
      if (v5 == 3)
      {
        *a1 = v7;
        *(a1 + 2) = BYTE2(v7);
      }

      else if (v5 == 2)
      {
        *a1 = v7;
      }

      else
      {
        *a1 = v7;
      }
    }

    else
    {
      *(a1 + v5) = 2;
      result = __bzero(a1, v5);
      *a1 = v6;
    }
  }

  else
  {
    result = *(*(*(a3 + 16) - 8) + 64);
    if (*(*(*(a3 + 24) - 8) + 64) > result)
    {
      result = *(*(*(a3 + 24) - 8) + 64);
    }

    *(a1 + result) = a2;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for MLActivityClassifier.Configuration(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v12 = *a2;
    *v3 = *a2;
    v3 = (v12 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = a2[1];
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 3);
    v5 = a2[5];
    *(a1 + 40) = v5;
    *(a1 + 48) = a2[6];
    v6 = a2[7];
    *(a1 + 56) = v6;
    *(a1 + 64) = a2[8];
    v19 = a2[9];
    *(a1 + 72) = v19;
    v7 = *(a3 + 44);
    __dst = (a1 + v7);
    v8 = a2 + v7;
    v9 = v5;
    v10 = type metadata accessor for DataFrame(0);
    v9;
    v6;
    v19;
    if (__swift_getEnumTagSinglePayload(v8, 1, v10))
    {
      v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
      memcpy(__dst, v8, *(*(v11 - 8) + 64));
    }

    else
    {
      (*(*(v10 - 8) + 16))(__dst, v8, v10);
      __swift_storeEnumTagSinglePayload(__dst, 0, 1, v10);
    }

    v13 = *(a3 + 48);
    v14 = v3 + v13;
    v15 = a2 + v13;
    if (__swift_getEnumTagSinglePayload(a2 + v13, 1, v10))
    {
      v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
      memcpy(v14, v15, *(*(v16 - 8) + 64));
    }

    else
    {
      (*(*(v10 - 8) + 16))(v14, v15, v10);
      __swift_storeEnumTagSinglePayload(v14, 0, 1, v10);
    }
  }

  return v3;
}

uint64_t destroy for MLActivityClassifier.Configuration(void *a1, uint64_t a2)
{
  a1[5];
  a1[7];
  a1[9];
  v2 = a1 + *(a2 + 44);
  v3 = type metadata accessor for DataFrame(0);
  if (!__swift_getEnumTagSinglePayload(v2, 1, v3))
  {
    (*(*(v3 - 8) + 8))(v2, v3);
  }

  v4 = a1 + *(a2 + 48);
  result = __swift_getEnumTagSinglePayload(v4, 1, v3);
  if (!result)
  {
    return (*(*(v3 - 8) + 8))(v4, v3);
  }

  return result;
}

uint64_t initializeWithCopy for MLActivityClassifier.Configuration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  *(a1 + 48) = *(a2 + 48);
  v4 = *(a2 + 56);
  *(a1 + 56) = v4;
  *(a1 + 64) = *(a2 + 64);
  v14 = *(a2 + 72);
  *(a1 + 72) = v14;
  v5 = *(a3 + 44);
  __dst = (a1 + v5);
  v6 = (a2 + v5);
  v15 = type metadata accessor for DataFrame(0);
  v3;
  v4;
  v14;
  if (__swift_getEnumTagSinglePayload(v6, 1, v15))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(__dst, v6, *(*(v7 - 8) + 64));
  }

  else
  {
    (*(*(v15 - 8) + 16))(__dst, v6, v15);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v15);
  }

  v8 = *(a3 + 48);
  v9 = (a1 + v8);
  v10 = (v8 + a2);
  if (__swift_getEnumTagSinglePayload(v8 + a2, 1, v15))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(v9, v10, *(*(v11 - 8) + 64));
  }

  else
  {
    (*(*(v15 - 8) + 16))(v9, v10, v15);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v15);
  }

  return a1;
}

uint64_t assignWithCopy for MLActivityClassifier.Configuration(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a1 + 40);
  *(a1 + 40) = v5;
  v5;
  v6;
  *(a1 + 48) = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = *(a1 + 56);
  *(a1 + 56) = v7;
  v7;
  v8;
  *(a1 + 64) = *(a2 + 64);
  v9 = *(a2 + 72);
  v10 = *(a1 + 72);
  *(a1 + 72) = v9;
  v9;
  v10;
  v28 = a3;
  v11 = a3[11];
  v12 = a1 + v11;
  v13 = (a2 + v11);
  v14 = type metadata accessor for DataFrame(0);
  __dst = v12;
  LODWORD(v12) = __swift_getEnumTagSinglePayload(v12, 1, v14);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  if (v12)
  {
    if (EnumTagSinglePayload)
    {
      v16 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v17 = __dst;
LABEL_6:
      memcpy(v17, v13, v16);
      goto LABEL_9;
    }

    (*(*(v14 - 8) + 16))(__dst, v13, v14);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v14);
  }

  else
  {
    v18 = *(v14 - 8);
    if (EnumTagSinglePayload)
    {
      (*(v18 + 8))(__dst, v14);
      v16 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v17 = __dst;
      goto LABEL_6;
    }

    (*(v18 + 24))(__dst, v13, v14);
  }

LABEL_9:
  v19 = v28[12];
  v20 = (v19 + a2);
  v29 = (a1 + v19);
  v21 = __swift_getEnumTagSinglePayload(a1 + v19, 1, v14);
  v22 = __swift_getEnumTagSinglePayload(v20, 1, v14);
  if (v21)
  {
    if (!v22)
    {
      (*(*(v14 - 8) + 16))(v29, v20, v14);
      __swift_storeEnumTagSinglePayload(v29, 0, 1, v14);
      return a1;
    }

    v23 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
    v24 = v29;
  }

  else
  {
    v25 = *(v14 - 8);
    if (!v22)
    {
      (*(v25 + 24))(v29, v20, v14);
      return a1;
    }

    (*(v25 + 8))(v29, v14);
    v23 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
    v24 = v29;
  }

  memcpy(v24, v20, v23);
  return a1;
}

uint64_t initializeWithTake for MLActivityClassifier.Configuration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  v3 = *(a3 + 44);
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
    (*(*(v6 - 8) + 32))(v4, v5, v6);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v6);
  }

  v8 = *(a3 + 48);
  v9 = (a1 + v8);
  v10 = (v8 + a2);
  if (__swift_getEnumTagSinglePayload(v8 + a2, 1, v6))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(v9, v10, *(*(v11 - 8) + 64));
  }

  else
  {
    (*(*(v6 - 8) + 32))(v9, v10, v6);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v6);
  }

  return a1;
}

uint64_t assignWithTake for MLActivityClassifier.Configuration(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v5 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  v5;
  *(a1 + 48) = *(a2 + 48);
  v6 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  v6;
  *(a1 + 64) = *(a2 + 64);
  v7 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  v7;
  v25 = a3;
  v8 = a3[11];
  v9 = a1 + v8;
  v10 = (a2 + v8);
  v11 = type metadata accessor for DataFrame(0);
  __dst = v9;
  LODWORD(v9) = __swift_getEnumTagSinglePayload(v9, 1, v11);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  if (v9)
  {
    if (EnumTagSinglePayload)
    {
      v13 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v14 = __dst;
LABEL_6:
      memcpy(v14, v10, v13);
      goto LABEL_9;
    }

    (*(*(v11 - 8) + 32))(__dst, v10, v11);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v11);
  }

  else
  {
    v15 = *(v11 - 8);
    if (EnumTagSinglePayload)
    {
      (*(v15 + 8))(__dst, v11);
      v13 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v14 = __dst;
      goto LABEL_6;
    }

    (*(v15 + 40))(__dst, v10, v11);
  }

LABEL_9:
  v16 = v25[12];
  v17 = (v16 + a2);
  v26 = (a1 + v16);
  v18 = __swift_getEnumTagSinglePayload(a1 + v16, 1, v11);
  v19 = __swift_getEnumTagSinglePayload(v17, 1, v11);
  if (v18)
  {
    if (!v19)
    {
      (*(*(v11 - 8) + 32))(v26, v17, v11);
      __swift_storeEnumTagSinglePayload(v26, 0, 1, v11);
      return a1;
    }

    v20 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
    v21 = v26;
  }

  else
  {
    v22 = *(v11 - 8);
    if (!v19)
    {
      (*(v22 + 40))(v26, v17, v11);
      return a1;
    }

    (*(v22 + 8))(v26, v11);
    v20 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
    v21 = v26;
  }

  memcpy(v21, v17, v20);
  return a1;
}

uint64_t sub_152508(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    result = 0;
    if ((*(a1 + 40) & 0xFFFFFFFF00000001) == 0)
    {
      return (*(a1 + 40) >> 1) + 1;
    }
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    return __swift_getEnumTagSinglePayload(*(a3 + 44) + a1, a2, v5);
  }

  return result;
}

uint64_t sub_152586(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + 40) = 2 * (a2 - 1);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    return __swift_storeEnumTagSinglePayload(*(a4 + 44) + a1, a2, a2, v5);
  }

  return result;
}

uint64_t type metadata accessor for MLActivityClassifier.Configuration(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLActivityClassifier.Configuration;
  if (!type metadata singleton initialization cache for MLActivityClassifier.Configuration)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLActivityClassifier.Configuration);
  }

  return result;
}

uint64_t type metadata completion function for MLActivityClassifier.Configuration(uint64_t a1)
{
  v3[0] = &value witness table for Builtin.Int64 + 64;
  v3[1] = "\t";
  v3[2] = &value witness table for Builtin.Int64 + 64;
  v3[3] = &value witness table for Builtin.Int64 + 64;
  v3[4] = &value witness table for Builtin.BridgeObject + 64;
  v3[5] = &unk_343148;
  v3[6] = &unk_343148;
  result = type metadata accessor for DataFrame?(319);
  if (v2 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    v5 = v4;
    swift_initStructMetadata(a1, 256, 9, v3, a1 + 16);
    return 0;
  }

  return result;
}

MLModel __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> NLModel.asCoreML()()
{
  v55 = v0;
  v66 = type metadata accessor for UUID(0);
  v56 = *(v66 - 1);
  v1 = *(v56 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v57 = &v54;
  v4 = type metadata accessor for URL(0);
  v61 = *(v4 - 1);
  v5 = *(v61 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v58 = &v54;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v62 = &v54;
  v10 = alloca(v5);
  v11 = alloca(v5);
  v12 = alloca(v5);
  v13 = alloca(v5);
  v67 = &v54;
  v14 = alloca(v5);
  v15 = alloca(v5);
  v64 = &v54;
  v16 = objc_opt_self(NSFileManager);
  v17 = [v16 defaultManager];
  v65 = v17;
  NSFileManager.createTemporaryModelDirectory()();
  if (v18)
  {

    return v4;
  }

  v60 = 0;
  NSFileManager.temporaryModelDirectory.getter();
  v19 = v57;
  UUID.init()();
  v59 = UUID.uuidString.getter();
  v63 = v4;
  v21 = v20;
  (*(v56 + 8))(v19, v66);
  URL.appendingPathComponent(_:)(v59, v21);
  v21;
  URL.appendingPathExtension(_:)(0x6C65646F6D6C6DLL, 0xE700000000000000);
  v22 = *(v61 + 8);
  v23 = v22(&v54, v63);
  URL._bridgeToObjectiveC()(v23);
  v25 = v24;
  v26 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for AnyHashable, &type metadata for Any + 8, &protocol witness table for AnyHashable);
  v68 = 0;
  v27 = v26;
  v28 = outlined bridged method (mnbnnn) of @objc NLModel.writeMLModel(to:options:)(v25, v26, &v68, v55);

  v29 = v68;
  if (!v28)
  {
    v45 = v68;
    _convertNSErrorToError(_:)(v29);

    swift_willThrow(v45, v27);
    v46 = v67;
    v4 = v63;
    v47 = v63;
LABEL_9:
    v22(v46, v47);
    v22(v64, v4);
    return v4;
  }

  v66 = v22;
  v30 = objc_opt_self(MLModel);
  v31 = v29;
  URL._bridgeToObjectiveC()(v31);
  v33 = v32;
  v68 = 0;
  v34 = [v30 compileModelAtURL:v32 error:&v68];
  v35 = v34;

  v36 = v68;
  if (!v35)
  {
    v48 = v68;
    _convertNSErrorToError(_:)(v36);

    swift_willThrow(v48, "compileModelAtURL:error:");
    v49 = v65;
    v50 = v67;
    $defer #1 () in NLModel.asCoreML()(v65);

    v46 = v50;
    v4 = v63;
    v47 = v63;
    v22 = v66;
    goto LABEL_9;
  }

  v37 = v62;
  static URL._unconditionallyBridgeFromObjectiveC(_:)(v35);
  v36;

  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for MLModel, MLModel_ptr);
  v38 = v58;
  v39 = v63;
  (*(v61 + 16))(v58, v37, v63);
  v40 = v60;
  v41 = @nonobjc MLModel.__allocating_init(contentsOf:)(v38);
  if (v40)
  {
    (v66)(v62, v39);
    v42 = v65;
    v43 = v67;
    $defer #1 () in NLModel.asCoreML()(v65);

    v44 = v43;
    v4 = v66;
    (v66)(v44, v39);
    (v4)(v64, v39);
  }

  else
  {
    v4 = v41;
    (v66)(v62, v39);
    v52 = v65;
    $defer #1 () in NLModel.asCoreML()(v65);

    v53 = v66;
    (v66)(v67, v39);
    v53(v64, v39);
  }

  return v4;
}

uint64_t NLModel.write(to:defaultName:metadata:)(uint64_t a1, uint64_t a2, unint64_t a3, const void *a4)
{
  v13 = v4;
  v15 = v5;
  v16 = a4;
  v14 = a3;
  v6 = type metadata accessor for URL(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v17 = v12;
  result = static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(a1, a2, v14, 0x6C65646F6D6C6DLL, 0xE700000000000000);
  if (!v4)
  {
    qmemcpy(v12, v16, sizeof(v12));
    NLModel.writeModel(to:metadata:)(v17, v12);
    return (*(v7 + 8))(v17, v6);
  }

  return result;
}

uint64_t NLModel.write(toFile:defaultName:metadata:)(Swift::String string, void *a2, void *a3, const void *a4)
{
  v14 = v4;
  v16 = v5;
  v17 = a4;
  v15 = a3;
  stringa = string._object;
  v7 = type metadata accessor for URL(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v19 = &v14;
  v12 = v15;
  stringa = a2;
  result = static _ValidationUtilities.validateWriteLocation(atPath:defaultName:)(string, a2, v15);
  if (!v4)
  {
    NLModel.write(to:defaultName:metadata:)(v19, stringa, v12, v17);
    return (*(v8 + 8))(v19, v7);
  }

  return result;
}

NSURL *$defer #1 () in NLModel.asCoreML()(id a1)
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

NSURL *NLModel.writeModel(to:metadata:)(uint64_t a1, uint64_t a2)
{
  v17 = v2;
  v3 = __stack_chk_guard;
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *a2;
    type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NLModel, NLModel_ptr);
    v18[0] = v5;
    v18[1] = v4;
    v6 = *(a2 + 32);
    v7 = *(a2 + 48);
    v19 = *(a2 + 16);
    v20 = v6;
    v21 = v7;
    v22 = *(a2 + 64);
    v3 = static NLModel.buildMetadataOptions(_:)(v18);
    v8 = v3;
  }

  else
  {
    v8 = 0;
  }

  URL._bridgeToObjectiveC()(v3);
  v10 = v9;
  if (v8)
  {
    v11.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v8;
  }

  else
  {
    v11.super.isa = 0;
  }

  v18[0] = 0;
  v12 = v10;
  v13 = [v17 writeMLModelToURL:v10 options:v11.super.isa error:v18];

  v14 = v18[0];
  if (v13)
  {
    v18[0];
  }

  else
  {
    v16 = v18[0];
    _convertNSErrorToError(_:)(v14);

    swift_willThrow(v16, "writeMLModelToURL:options:error:");
  }

  return __stack_chk_guard;
}

void *static NLModel.buildMetadataOptions(_:)(uint64_t a1)
{
  v25 = *a1;
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v27 = *(a1 + 32);
  v24 = *(a1 + 40);
  v26 = *(a1 + 48);
  v23 = *(a1 + 64);
  *&v28 = static String._unconditionallyBridgeFromObjectiveC(_:)(MLModelDescriptionKey);
  *(&v28 + 1) = v3;
  AnyHashable.init<A>(_:)(&v28, &type metadata for String, &protocol witness table for String);
  v29 = &type metadata for String;
  *&v28 = v1;
  *(&v28 + 1) = v2;
  outlined init with take of Any(&v28, v22);
  v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
  v30 = _swiftEmptyDictionarySingleton;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, v21, isUniquelyReferenced_nonNull_native);
  v5 = v30;
  outlined destroy of AnyHashable(v21);
  *&v28 = static String._unconditionallyBridgeFromObjectiveC(_:)(MLModelVersionStringKey);
  *(&v28 + 1) = v6;
  AnyHashable.init<A>(_:)(&v28, &type metadata for String, &protocol witness table for String);
  v29 = &type metadata for String;
  v28 = v26;
  v7 = BYTE8(v26);
  outlined init with take of Any(&v28, v22);
  v7;
  v8 = swift_isUniquelyReferenced_nonNull_native(v5);
  v30 = v5;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, v21, v8);
  v9 = v30;
  outlined destroy of AnyHashable(v21);
  *&v28 = static String._unconditionallyBridgeFromObjectiveC(_:)(MLModelAuthorKey);
  *(&v28 + 1) = v10;
  AnyHashable.init<A>(_:)(&v28, &type metadata for String, &protocol witness table for String);
  v29 = &type metadata for String;
  v28 = v25;
  v11 = BYTE8(v25);
  outlined init with take of Any(&v28, v22);
  v11;
  v12 = swift_isUniquelyReferenced_nonNull_native(v9);
  v30 = v9;
  v13 = v24;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, v21, v12);
  v14 = v30;
  outlined destroy of AnyHashable(v21);
  if (v13)
  {
    *&v28 = static String._unconditionallyBridgeFromObjectiveC(_:)(MLModelLicenseKey);
    *(&v28 + 1) = v15;
    v13;
    AnyHashable.init<A>(_:)(&v28, &type metadata for String, &protocol witness table for String);
    v29 = &type metadata for String;
    *&v28 = v27;
    *(&v28 + 1) = v13;
    outlined init with take of Any(&v28, v22);
    v16 = swift_isUniquelyReferenced_nonNull_native(v14);
    v30 = v14;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, v21, v16);
    v14 = v30;
    outlined destroy of AnyHashable(v21);
  }

  v17 = v23;
  if (v23)
  {
    *&v28 = static String._unconditionallyBridgeFromObjectiveC(_:)(MLModelCreatorDefinedKey);
    *(&v28 + 1) = v18;
    v17;
    AnyHashable.init<A>(_:)(&v28, &type metadata for String, &protocol witness table for String);
    v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : String]);
    *&v28 = v17;
    outlined init with take of Any(&v28, v22);
    v19 = swift_isUniquelyReferenced_nonNull_native(v14);
    v30 = v14;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, v21, v19);
    v14 = v30;
    outlined destroy of AnyHashable(v21);
  }

  return v14;
}

uint64_t outlined bridged method (mnbnnn) of @objc NLModel.writeMLModel(to:options:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  a2, &type metadata for AnyHashable;
  LODWORD(a4) = [a4 writeMLModelToURL:a1 options:isa error:a3];

  return a4;
}

uint64_t *specialized OptionSet.intersection(_:)(uint64_t a1, uint64_t a2)
{
  *result = a2 & a1;
  return result;
}

{
  return specialized OptionSet.intersection(_:)(a1, a2);
}

BOOL specialized OptionSet<>.insert(_:)(void *a1, uint64_t a2)
{
  v3 = a2 & *v2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  result = v3 != a2;
  *a1 = a2;
  return result;
}

{
  return specialized OptionSet<>.insert(_:)(a1, a2);
}

void specialized OptionSet<>.formUnion(_:)(uint64_t a1)
{
  *v1 |= a1;
}

{
  specialized OptionSet<>.formUnion(_:)(a1);
}

void specialized OptionSet<>.formIntersection(_:)(uint64_t a1)
{
  *v1 &= a1;
}

{
  specialized OptionSet<>.formIntersection(_:)(a1);
}

uint64_t static MLActionClassifier.reformatKeypointsDataTable(table:featureColumn:)(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = v3;
  v5 = *(a1 + 8);
  v40 = *a1;
  v41 = v5;
  v38 = a2;
  v6._countAndFlagsBits = a2;
  *&v36 = a3;
  v6._object = a3;
  MLDataTable.subscript.getter(v6);
  if (LOBYTE(v39._object) == 1)
  {
    outlined consume of Result<_DataTable, Error>(v39._countAndFlagsBits, 1);
  }

  else
  {

    _UntypedColumn.type.getter();
    outlined consume of Result<_DataTable, Error>(v39._countAndFlagsBits, 0);
    outlined consume of Result<_DataTable, Error>(v39._countAndFlagsBits, 0);
    if (v40 == 3)
    {
      v7 = *(a1 + 8);
      v39._countAndFlagsBits = *a1;
      LOBYTE(v39._object) = v7;
      v8._countAndFlagsBits = v38;
      v8._object = v36;
      MLDataTable.subscript.getter(v8);
      specialized MLUntypedColumn.map<A>(skipUndefined:_:)(1, partial apply for closure #1 in static MLActionClassifier.reformatKeypointsDataTable(table:featureColumn:), 0, v40, v41);
      outlined consume of Result<_DataTable, Error>(v40, v41);
      countAndFlagsBits = v39._countAndFlagsBits;
      LOBYTE(v42) = v39._object;
      v9 = *(a1 + 8);
      v40 = *a1;
      v41 = v9;
      v8._countAndFlagsBits = v38;
      v8._object = v36;
      MLDataTable.subscript.getter(v8);
      v10 = -1;
      v35 = -1;
      if (!LOBYTE(v39._object))
      {
        v11 = *(v39._countAndFlagsBits + 16);

        v10 = CMLColumn.size.getter();
        outlined consume of Result<_DataTable, Error>(v39._countAndFlagsBits, 0);
      }

      outlined consume of Result<_DataTable, Error>(v39._countAndFlagsBits, v39._object);
      v42 = v42;
      specialized MLDataColumn.dropMissing()(countAndFlagsBits, v42);
      if (!v41)
      {
        v34 = v10;
        v12 = *(v40 + 16);
        outlined copy of Result<_DataTable, Error>(v40, 0);
        v10 = v34;
        v35 = CMLColumn.size.getter();
        outlined consume of Result<_DataTable, Error>(v40, 0);
      }

      outlined consume of Result<_DataTable, Error>(v40, v41);
      v13 = __OFSUB__(v10, v35);
      v14 = v10 - v35;
      if (v13)
      {
        BUG();
      }

      if (v14)
      {
        v39._countAndFlagsBits = 0;
        v39._object = 0xE000000000000000;
        _StringGuts.grow(_:)(236);
        v15._object = "validation_confusion" + 0x8000000000000000;
        v15._countAndFlagsBits = 0xD00000000000003DLL;
        String.append(_:)(v15);
        v16 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        v18 = v17;
        v15._countAndFlagsBits = v16;
        v15._object = v17;
        String.append(_:)(v15);
        v18;
        v15._object = "mn into MLMultiArray format. " + 0x8000000000000000;
        v15._countAndFlagsBits = 0xD00000000000006BLL;
        String.append(_:)(v15);
        v19 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        v21 = v20;
        v15._countAndFlagsBits = v19;
        v15._object = v20;
        String.append(_:)(v15);
        v21;
        v15._object = 0xE200000000000000;
        v15._countAndFlagsBits = 8236;
        String.append(_:)(v15);
        v40 = 18;
        v22 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        v24 = v23;
        v15._countAndFlagsBits = v22;
        v15._object = v23;
        String.append(_:)(v15);
        v24;
        v15._object = "ld have a dimension of [1, " + 0x8000000000000000;
        v15._countAndFlagsBits = 0xD00000000000003CLL;
        String.append(_:)(v15);
        v15._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v15._object, 0, 0);
        *v25 = v39;
        *(v25 + 16) = 0;
        *(v25 + 32) = 0;
        *(v25 + 48) = 0;
        swift_willThrow(&type metadata for MLCreateError, v15._object);
        return outlined consume of Result<_DataTable, Error>(countAndFlagsBits, v42);
      }

      v36;
      specialized MLDataTable.subscript.setter(countAndFlagsBits, v42, v38, v36);
    }
  }

  v28 = *(a1 + 8);
  v39._countAndFlagsBits = *a1;
  v27 = v39._countAndFlagsBits;
  LOBYTE(v39._object) = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v29, v32);
  inited[2] = 1;
  inited[3] = 2;
  inited[4] = v38;
  v31 = v36;
  inited[5] = v36;
  LOBYTE(v40) = 5;
  v31;
  outlined copy of Result<_DataTable, Error>(v27, v28);
  static _ValidationUtilities.validateTableTypes(table:columns:type:)(&v39, inited, &v40);
  outlined consume of Result<_DataTable, Error>(v39._countAndFlagsBits, v39._object);
  swift_setDeallocating(inited);
  return specialized _ContiguousArrayStorage.__deallocating_deinit();
}

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger(0);
  __swift_allocate_value_buffer(v0, static MLActionClassifier.logger);
  __swift_project_value_buffer(v0, static MLActionClassifier.logger);
  return Logger.init(subsystem:category:)(0xD000000000000012, "Target Frame Rate" + 0x8000000000000000, 0xD000000000000012, &unk_343200 + 0x8000000000000000);
}

{
  v0 = type metadata accessor for Logger(0);
  __swift_allocate_value_buffer(v0, static MLHandActionClassifier.logger);
  __swift_project_value_buffer(v0, static MLHandActionClassifier.logger);
  return Logger.init(subsystem:category:)(0xD000000000000012, "Target Frame Rate" + 0x8000000000000000, 0xD000000000000016, &property descriptor for MLHandActionClassifier.modelParameters + 0x8000000000000000);
}

uint64_t static MLActionClassifier._defaultSessionParameters.getter()
{
  v1 = v0;
  if (one-time initialization token for _defaultSessionParameters != -1)
  {
    swift_once(&one-time initialization token for _defaultSessionParameters, one-time initialization function for _defaultSessionParameters);
  }

  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  v3 = __swift_project_value_buffer(v2, static MLActionClassifier._defaultSessionParameters);
  return outlined init with copy of MLTrainingSessionParameters(v3, v1, type metadata accessor for MLTrainingSessionParameters);
}

uint64_t MLActionClassifier.modelParameters.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLActionClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 20), v2, type metadata accessor for MLActionClassifier.ModelParameters);
}

uint64_t type metadata accessor for MLActionClassifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLActionClassifier;
  if (!type metadata singleton initialization cache for MLActionClassifier)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLActionClassifier);
  }

  return result;
}

uint64_t MLActionClassifier.Prediction.frameRange.getter()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t MLActionClassifier.Prediction.results.setter(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 16), a2;
  *(v2 + 16) = a1;
  return result;
}

uint64_t MLActionClassifier.init(trainingData:parameters:)(uint64_t a1, uint64_t a2, __m128 a3)
{
  v52 = v4;
  v36[1] = v3;
  v50 = type metadata accessor for MLActionClassifier.ModelParameters(0);
  v38 = *(v50 - 8);
  v37 = *(v38 + 64);
  v5 = alloca(v37);
  v6 = alloca(v37);
  v41 = v36;
  v7 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v45 = v36;
  v11 = *(*(type metadata accessor for MLActionClassifier.DataSource(0) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v39 = v36;
  v14 = v52;
  MLActionClassifier.ModelParameters.ValidationData.extractAnnotations(trainingData:)(&v53, &v42, a3);
  if (v14)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(a2, type metadata accessor for MLActionClassifier.ModelParameters);
    return outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLActionClassifier.DataSource);
  }

  v40 = v7;
  v49 = a2;
  v52 = 0;
  v46 = a1;
  v16 = v53;
  v47 = v42;
  v56 = v43;
  v17 = v54;
  if (v54 == 0xFF)
  {
    v48 = v53;
    MLActionClassifier.DataSource.keypointsWithAnnotations(targetFrameRate:)(0x403E000000000000uLL);
    v19 = v53;
    v55 = v54;
  }

  else
  {
    type metadata accessor for MLActionClassifier.FeatureExtractor();
    v42 = v16;
    v43 = v17 & 1;
    v48 = *(v49 + *(v50 + 40));
    outlined copy of Result<_DataTable, Error>(v16, v17);
    v18 = v52;
    static MLActionClassifier.FeatureExtractor.extractFeatures(from:targetFrameRate:)(&v42, *&v48);
    if (v18)
    {
      outlined consume of MLDataTable?(v47, v56);
      outlined consume of MLDataTable?(v16, v17);
      outlined destroy of MLActivityClassifier.ModelParameters(v49, type metadata accessor for MLActionClassifier.ModelParameters);
      outlined destroy of MLActivityClassifier.ModelParameters(v46, type metadata accessor for MLActionClassifier.DataSource);
      return outlined consume of MLDataTable?(v16, v17);
    }

    v48 = v16;
    outlined consume of MLDataTable?(v16, v17);
    v19 = v53;
    v55 = v54;
  }

  v51 = v17;
  v20 = v56;
  v44 = v19;
  v21 = v50;
  if (v56 == -1)
  {
    v22 = v45;
    outlined init with copy of MLTrainingSessionParameters(v49, v45, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
    if (swift_getEnumCaseMultiPayload(v22, v40) != 1)
    {
      v52 = 0;
      outlined destroy of MLActivityClassifier.ModelParameters(v22, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
      empty = tc_v1_sframe_create_empty(0);
      if (!empty)
      {
        BUG();
      }

      v25 = empty;
      v45 = 0;
      v26 = type metadata accessor for CMLTable();
      v27 = swift_allocObject(v26, 24, 7);
      *(v27 + 16) = v25;
      v28 = type metadata accessor for _DataTable();
      swift_allocObject(v28, 40, 7);
      v50 = _DataTable.init(impl:)(v27);
      goto LABEL_15;
    }

    v23 = v39;
    outlined init with take of MLClassifierMetrics(v22, v39, type metadata accessor for MLActionClassifier.DataSource);
    MLActionClassifier.DataSource.keypointsWithAnnotations(targetFrameRate:)(0x403E000000000000uLL);
    v52 = 0;
    outlined destroy of MLActivityClassifier.ModelParameters(v23, type metadata accessor for MLActionClassifier.DataSource);
  }

  else
  {
    type metadata accessor for MLActionClassifier.FeatureExtractor();
    v42 = v47;
    v43 = v20 & 1;
    static MLActionClassifier.FeatureExtractor.extractFeatures(from:targetFrameRate:)(&v42, *(v49 + *(v21 + 40)));
    v52 = 0;
  }

  v29 = v53;
  v50 = v53;
  LOBYTE(v29) = v54;
  v45 = v29;
LABEL_15:
  outlined init with copy of MLTrainingSessionParameters(v49, v41, type metadata accessor for MLActionClassifier.ModelParameters);
  v30 = *(v38 + 80);
  v31 = ~*(v38 + 80) & (v30 + 41);
  v32 = swift_allocObject(&unk_392078, v31 + v37, v30 | 7);
  v33 = v44;
  *(v32 + 16) = v44;
  v34 = v55;
  *(v32 + 24) = v55 & 1;
  *(v32 + 32) = v50;
  *(v32 + 40) = v45 & 1;
  outlined init with take of MLClassifierMetrics(v41, v32 + v31, type metadata accessor for MLActionClassifier.ModelParameters);
  outlined copy of Result<_DataTable, Error>(v33, v34);
  LOBYTE(v31) = v45;
  outlined copy of Result<_DataTable, Error>(v50, v45);
  v35 = v52;
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLActionClassifier.init(trainingData:parameters:), v32);
  v52 = v35;

  outlined consume of MLDataTable?(v47, v56);
  outlined consume of MLDataTable?(v48, v51);
  outlined consume of Result<_DataTable, Error>(v50, v31);
  outlined consume of Result<_DataTable, Error>(v44, v34);
  outlined destroy of MLActivityClassifier.ModelParameters(v49, type metadata accessor for MLActionClassifier.ModelParameters);
  return outlined destroy of MLActivityClassifier.ModelParameters(v46, type metadata accessor for MLActionClassifier.DataSource);
}

uint64_t closure #1 in MLActionClassifier.init(trainingData:parameters:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 72) = a6;
  *(v6 + 26) = a5;
  *(v6 + 64) = a4;
  *(v6 + 25) = a3;
  *(v6 + 56) = a2;
  *(v6 + 48) = a1;
  v10 = type metadata accessor for MLActionClassifier.ModelParameters(0);
  *(v6 + 80) = swift_task_alloc((*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined copy of Result<_DataTable, Error>(a2, a3);
  outlined copy of Result<_DataTable, Error>(a4, a5);
  return swift_task_switch(closure #1 in MLActionClassifier.init(trainingData:parameters:), 0, 0);
}

uint64_t closure #1 in MLActionClassifier.init(trainingData:parameters:)()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 72);
  v3 = *(v0 + 25);
  v4 = *(v0 + 26);
  v5 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 24) = v3 & 1;
  *(v0 + 32) = v5;
  *(v0 + 40) = v4 & 1;
  outlined init with copy of MLTrainingSessionParameters(v2, v1, type metadata accessor for MLActionClassifier.ModelParameters);
  v6 = swift_task_alloc(96);
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = closure #1 in MLHandPoseClassifier.init(trainingData:parameters:);
  return MLActionClassifier.init(trainingFeatures:validationFeatures:parameters:)(*(v0 + 48), v0 + 16, v0 + 32, *(v0 + 80));
}

uint64_t MLActionClassifier.init(trainingFeatures:validationFeatures:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  *(v4 + 16) = a1;
  *(v4 + 32) = *a2;
  *(v4 + 84) = *(a2 + 8);
  *(v4 + 40) = *a3;
  *(v4 + 85) = *(a3 + 8);
  return swift_task_switch(MLActionClassifier.init(trainingFeatures:validationFeatures:parameters:), 0, 0);
}

uint64_t MLActionClassifier.init(trainingFeatures:validationFeatures:parameters:)()
{
  v19 = v0 | 0x1000000000000000;
  v18 = v1;
  v2 = *(v1 + 85);
  v3 = *(v1 + 40);
  v4 = *(v1 + 84);
  v5 = *(v1 + 24);
  v16 = *(v1 + 32);
  v17 = v4;
  v14 = v3;
  v15 = v2;
  v6 = static MLActionClassifier.convertParameters(_:trainingFeatures:validationFeatures:)(v5, &v16, &v14);
  *(v1 + 48) = v6;
  v7 = v6;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  outlined consume of Result<_DataTable, Error>(*(v1 + 40), *(v1 + 85));
  v10 = *(type metadata accessor for MLActionClassifier(0) + 20);
  *(v1 + 80) = v10;
  outlined init with copy of MLTrainingSessionParameters(v9, v10 + v8, type metadata accessor for MLActionClassifier.ModelParameters);
  v11 = type metadata accessor for _Model();
  swift_allocObject(v11, 48, 7);

  v12 = swift_task_alloc(112);
  *(v1 + 56) = v12;
  *v12 = v1;
  v12[1] = MLActionClassifier.init(trainingFeatures:validationFeatures:parameters:);
  return _Model.init(type:parameters:modelOptions:)(22, v7, 0);
}

{
  **(v0 + 16) = *(v0 + 72);
  if (AnalyticsReporter.init()())
  {
    v1 = *(v0 + 48);
    v2 = *(v0 + 32);
    v3 = *(v0 + 84);
    outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 24), type metadata accessor for MLActionClassifier.ModelParameters);

    outlined consume of Result<_DataTable, Error>(v2, v3);
  }

  else
  {
    v4 = *(v0 + 84);
    v5 = *(v0 + 32);
    outlined copy of Result<_DataTable, Error>(v5, v4);
    v17 = MLDataTable.size.getter();
    outlined consume of Result<_DataTable, Error>(v5, v4 & 1);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_actionClassifier, __PAIR128__(("nClassifier.swift" + 0x8000000000000000), 0xD000000000000010), v17);
    v16 = v4 & 1;
    v6._countAndFlagsBits = 0x6C6562616CLL;
    v6._object = 0xE500000000000000;
    MLDataTable.subscript.getter(v6);
    outlined consume of Result<_DataTable, Error>(v5, v16);
    MLUntypedColumn.dropDuplicates()();
    outlined consume of Result<_DataTable, Error>(v12, v13);
    if (v15)
    {
      outlined consume of Result<_DataTable, Error>(v14, 1);
      v7 = -1.0;
    }

    else
    {
      v8 = *(v14 + 16);

      LODWORD(v8) = CMLColumn.size.getter();
      outlined consume of Result<_DataTable, Error>(v14, 0);
      outlined consume of Result<_DataTable, Error>(v14, 0);
      v7 = v8;
    }

    v9 = *(v0 + 24);
    v18 = *(v0 + 48);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_actionClassifier, __PAIR128__(("Number of Annotations" + 0x8000000000000000), 0xD000000000000010), v7);
    v10 = type metadata accessor for MLActionClassifier.ModelParameters(0);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_actionClassifier, __PAIR128__(0xEE00736E6F697461, 0x726574492078614DLL), *(v9 + v10[6]));
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_actionClassifier, __PAIR128__(("Number of Labels" + 0x8000000000000000), 0xD000000000000016), *(v9 + v10[7]));
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_actionClassifier, __PAIR128__(0xEA0000000000657ALL, 0x6953206863746142), *(v9 + v10[5]));

    outlined destroy of MLActivityClassifier.ModelParameters(v9, type metadata accessor for MLActionClassifier.ModelParameters);
  }

  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 24);
  v2 = *(v0 + 48);
  v3 = *(v0 + 16) + *(v0 + 80);

  outlined destroy of MLActivityClassifier.ModelParameters(v1, type metadata accessor for MLActionClassifier.ModelParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLActionClassifier.ModelParameters);
  v4 = *(v0 + 64);
  return (*(v0 + 8))();
}

uint64_t MLActionClassifier.init(trainingFeatures:validationFeatures:parameters:)(uint64_t a1)
{
  v5 = *(*v2 + 56);
  v4 = *v2;
  *(*v2 + 64) = v1;
  v5;
  if (v1)
  {
    outlined consume of Result<_DataTable, Error>(*(v4 + 32), *(v4 + 84));
    v6 = MLActionClassifier.init(trainingFeatures:validationFeatures:parameters:);
  }

  else
  {
    *(v4 + 72) = a1;
    v6 = MLActionClassifier.init(trainingFeatures:validationFeatures:parameters:);
  }

  return swift_task_switch(v6, 0, 0);
}

uint64_t static MLActionClassifier.convertParameters(_:trainingFeatures:validationFeatures:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = v3;
  v39 = a1;
  v37 = type metadata accessor for _Model.Parameters(0);
  v5 = *(*(v37 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v34 = &v32;
  v41 = *a2;
  v8 = *(a2 + 8);
  v38 = *a3;
  v9 = *(a3 + 8);
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v11 = empty;
  v12 = type metadata accessor for CMLParameters();
  v13 = swift_allocObject(v12, 24, 7);
  *(v13 + 16) = v11;
  v14 = v13;
  v35 = v41;
  v36 = v8 & 1;
  v15 = v40;
  CMLParameters.setTraining(table:)(&v35);
  if (v15)
  {
  }

  else
  {
    v35 = v38;
    v36 = v9 & 1;
    CMLParameters.setValidation(table:)(&v35);
    v17 = v14;
    v40 = type metadata accessor for CMLFeatureValue();
    v18 = CMLFeatureValue.__allocating_init(_:)(0x6C6562616CLL, 0xE500000000000000);
    CMLParameters.add(key:featureValue:)(75, v18);

    v19 = CMLFeatureValue.__allocating_init(_:)(0x746E696F7079656BLL, 0xE900000000000073);
    CMLParameters.add(key:featureValue:)(73, v19);

    v20 = CMLFeatureValue.__allocating_init(_:)(0x5F6E6F6973736573, 0xEA00000000006469);
    CMLParameters.add(key:featureValue:)(74, v20);

    v21 = tc_v1_flex_dict_create(0);
    if (!v21)
    {
      BUG();
    }

    v22 = v21;
    v23 = type metadata accessor for CMLDictionary();
    inited = swift_initStackObject(v23, v33);
    *(inited + 16) = v22;
    v41 = inited;
    v25 = type metadata accessor for MLActionClassifier.ModelParameters(0);
    v26 = *(v25 + 32);
    v38 = v25;
    v35 = *(v39 + v26);
    MLActionClassifier.VideoAugmentationOptions.setOptions(in:)(inited);
    v27 = *(v39 + *(v25 + 24));
    v28 = v34;
    *v34 = v27;
    swift_storeEnumTagMultiPayload(v28, v37, 0);
    CMLDictionary.add(_:)(v28);
    outlined destroy of MLActivityClassifier.ModelParameters(v28, type metadata accessor for _Model.Parameters);
    *v28 = *(v39 + *(v38 + 20));
    swift_storeEnumTagMultiPayload(v28, v37, 1);
    CMLDictionary.add(_:)(v28);
    outlined destroy of MLActivityClassifier.ModelParameters(v28, type metadata accessor for _Model.Parameters);
    *v28 = *(v39 + *(v38 + 28));
    swift_storeEnumTagMultiPayload(v28, v37, 23);
    CMLDictionary.add(_:)(v28);
    outlined destroy of MLActivityClassifier.ModelParameters(v28, type metadata accessor for _Model.Parameters);
    v29 = v41;

    v30 = CMLFeatureValue.__allocating_init(_:)(v29);
    v14 = v17;
    CMLParameters.add(key:featureValue:)(47, v30);

    v31 = v41;
    swift_setDeallocating(v41);
    tc_v1_release(*(v31 + 16));
  }

  return v14;
}

uint64_t MLActionClassifier.init(model:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a2;
  v3[2] = a1;
  v4 = type metadata accessor for _Model();
  swift_allocObject(v4, 48, 7);

  v5 = swift_task_alloc(80);
  v3[5] = v5;
  *v5 = v3;
  v5[1] = MLActionClassifier.init(model:parameters:);
  return _Model.init(impl:)(a2);
}

uint64_t MLActionClassifier.init(model:parameters:)(uint64_t a1)
{
  v5 = *(*v2 + 40);
  v4 = *v2;
  *(*v2 + 48) = v1;
  v5;
  if (v1)
  {
    v6 = MLActionClassifier.init(model:parameters:);
  }

  else
  {
    *(v4 + 56) = a1;
    v6 = MLActionClassifier.init(model:parameters:);
  }

  return swift_task_switch(v6, 0, 0);
}

uint64_t MLActionClassifier.init(model:parameters:)()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);

  *v3 = v1;
  v5 = type metadata accessor for MLActionClassifier(0);
  outlined init with take of MLClassifierMetrics(v2, v3 + *(v5 + 20), type metadata accessor for MLActionClassifier.ModelParameters);
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  outlined destroy of MLActivityClassifier.ModelParameters(v2, type metadata accessor for MLActionClassifier.ModelParameters);
  v3 = *(v0 + 48);
  return (*(v0 + 8))();
}

uint64_t MLActionClassifier.init(checkpoint:)(uint64_t a1)
{
  v18 = v1;
  v3 = *(type metadata accessor for MLCheckpoint(0) - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v19 = a1;
  outlined init with copy of MLTrainingSessionParameters(a1, &v17, type metadata accessor for MLCheckpoint);
  v7 = *(v3 + 80);
  v8 = ~*(v3 + 80) & (v7 + 16);
  v9 = swift_allocObject(&unk_3920A0, v8 + v4, v7 | 7);
  outlined init with take of MLClassifierMetrics(&v17, v9 + v8, type metadata accessor for MLCheckpoint);
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLActionClassifier.init(checkpoint:), v9);
  if (v2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLCheckpoint);
  }

  else
  {
    v12 = v10;

    v13 = v18;
    *v18 = v12;
    v14 = v13 + *(type metadata accessor for MLActionClassifier(0) + 20);
    *v14 = 0;
    *(v14 + 8) = 256;
    v15 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
    swift_storeEnumTagMultiPayload(v14, v15, 0);
    outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLCheckpoint);
    v16 = type metadata accessor for MLActionClassifier.ModelParameters(0);
    *&v14[v16[5]] = 32;
    *&v14[v16[6]] = 80;
    *&v14[v16[7]] = 30;
    *&v14[v16[8]] = 1;
    result = v16[10];
    *&v14[result] = 0x403E000000000000;
  }

  return result;
}

void *static MLActionClassifier.train(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = static MLActionClassifier.makeTrainingSession(trainingData:parameters:sessionParameters:)(a1, a2, a3);
  if (!v3)
  {
    v5 = result;
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLActionClassifier>);
    v7 = swift_allocObject(v6, *(v6 + 48), *(v6 + 52));
    return specialized MLJob.init(_:)(v7, v5);
  }

  return result;
}

void *static MLActionClassifier.makeTrainingSession(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = v3;
  v26 = a2;
  v24 = a1;
  v5 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v25 = &v21;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v10 = *(*(type metadata accessor for MLActionClassifier.ModelParameters(0) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v13 = *(*(type metadata accessor for MLActionClassifier.DataSource(0) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  outlined init with copy of MLTrainingSessionParameters(v24, &v21, type metadata accessor for MLActionClassifier.DataSource);
  outlined init with copy of MLTrainingSessionParameters(v26, &v21, type metadata accessor for MLActionClassifier.ModelParameters);
  v26 = a3;
  outlined init with copy of MLTrainingSessionParameters(a3, &v21, type metadata accessor for MLTrainingSessionParameters);
  v16 = type metadata accessor for ActionClassifierTrainingSessionDelegate(0);
  swift_allocObject(v16, *(v16 + 48), *(v16 + 52));
  v17 = v23;
  result = ActionClassifierTrainingSessionDelegate.init(trainingData:modelParameters:sessionParameters:)(&v21, &v21, &v21);
  if (!v17)
  {
    v22[3] = v16;
    v22[4] = &protocol witness table for ActionClassifierTrainingSessionDelegate;
    v22[0] = result;
    v19 = v25;
    outlined init with copy of MLTrainingSessionParameters(v26, v25, type metadata accessor for MLTrainingSessionParameters);
    v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLActionClassifier>);
    swift_allocObject(v20, *(v20 + 48), *(v20 + 52));
    return specialized MLTrainingSession.init(delegate:parameters:modelType:)(v22, v19, 22);
  }

  return result;
}

void *static MLActionClassifier.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLActionClassifier>);
  v2 = swift_allocObject(v1, *(v1 + 48), *(v1 + 52));

  return specialized MLJob.init(_:)(v2, a1);
}

void *static MLActionClassifier.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v2 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v12 = v11;
  v5 = alloca(v2);
  v6 = alloca(v2);
  outlined init with copy of MLTrainingSessionParameters(a1, v11, type metadata accessor for MLTrainingSessionParameters);
  v7 = type metadata accessor for ActionClassifierTrainingSessionDelegate(0);
  swift_allocObject(v7, *(v7 + 48), *(v7 + 52));
  result = ActionClassifierTrainingSessionDelegate.init(sessionParameters:)(v11);
  if (!v1)
  {
    v11[3] = v7;
    v11[4] = &protocol witness table for ActionClassifierTrainingSessionDelegate;
    v11[0] = result;
    v9 = v12;
    outlined init with copy of MLTrainingSessionParameters(a1, v12, type metadata accessor for MLTrainingSessionParameters);
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLActionClassifier>);
    swift_allocObject(v10, *(v10 + 48), *(v10 + 52));
    return specialized MLTrainingSession.init(delegate:parameters:modelType:)(v11, v9, 22);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static MLActionClassifier.resume(_:)(uint64_t a1, char a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v59 = a5;
  v60 = a4;
  v63 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLActionClassifier, Error>);
  v8 = *(*(v7 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = v51;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TaskPriority?) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v61 = v51;
  v53 = type metadata accessor for MLActionClassifier.PersistentParameters(0);
  v15 = *(*(v53 - 1) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v55 = v51;
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?) - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v54 = v51;
  v21 = type metadata accessor for MLActionClassifier.ModelParameters(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v26 = alloca(v23);
  v27 = alloca(v23);
  v28 = alloca(v23);
  v29 = alloca(v23);
  if (a2)
  {
    v30 = v63;
    v51[0] = v63;
    swift_storeEnumTagMultiPayload(v51, v7, 1);
    swift_errorRetain(v30);
    v60(v51);
    v31 = &demangling cache variable for type metadata for Result<MLActionClassifier, Error>;
  }

  else
  {
    v57 = v21;
    v63 = v22;
    v56 = v51;
    v62 = v51;
    outlined init with copy of TabularRegressionTask(direct field offset for MLTrainingSession.delegate + a3, v51);
    v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingSessionDelegate);
    v33 = type metadata accessor for ActionClassifierTrainingSessionDelegate(0);
    result = swift_dynamicCast(&v52, v51, v32, v33, 6);
    if (!result)
    {
      return result;
    }

    v35 = v52;
    v36 = v52 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingParameters;
    swift_beginAccess(v52 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingParameters, v51, 0, 0);
    v11 = v54;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v36, v54, &demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?);
    v37 = v53;
    if (!__swift_getEnumTagSinglePayload(v11, 1, v53))
    {
      v58 = v35;
      v38 = v55;
      outlined init with copy of MLTrainingSessionParameters(v11, v55, type metadata accessor for MLActionClassifier.PersistentParameters);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v11, &demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?);
      outlined init with copy of MLTrainingSessionParameters(v38 + v37[5], v51, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
      v39 = *(v38 + v37[7]);
      v40 = *(v38 + v37[8]);
      v41 = *(v38 + v37[10]);
      v42 = *(v38 + v37[9]);
      v43 = v57;
      *(v51 + v57[5]) = *(v38 + v37[6]);
      *(v51 + v43[6]) = v39;
      *(v51 + v43[7]) = v40;
      *(v51 + v43[8]) = v41;
      *(v51 + v43[10]) = v42;
      outlined destroy of MLActivityClassifier.ModelParameters(v38, type metadata accessor for MLActionClassifier.PersistentParameters);
      v44 = v62;
      outlined init with take of MLClassifierMetrics(v51, v62, type metadata accessor for MLActionClassifier.ModelParameters);
      v45 = type metadata accessor for TaskPriority(0);
      __swift_storeEnumTagSinglePayload(v61, 1, 1, v45);
      v46 = v56;
      outlined init with copy of MLTrainingSessionParameters(v44, v56, type metadata accessor for MLActionClassifier.ModelParameters);
      v47 = *(v63 + 80);
      v48 = ~*(v63 + 80) & (v47 + 40);
      v49 = (v23 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
      v50 = swift_allocObject(&unk_392148, v49 + 16, v47 | 7);
      *(v50 + 16) = 0;
      *(v50 + 32) = v58;
      outlined init with take of MLClassifierMetrics(v46, v50 + v48, type metadata accessor for MLActionClassifier.ModelParameters);
      *(v50 + v49) = v60;
      *(v50 + v49 + 8) = v59;

      _sScTss5NeverORs_rlE8priority9operationScTyxABGScPSg_xyYaYAcntcfCyt_Tt1g5(v61, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in static MLActionClassifier.resume(_:), v50);

      return outlined destroy of MLActivityClassifier.ModelParameters(v62, type metadata accessor for MLActionClassifier.ModelParameters);
    }

    v31 = &demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?;
  }

  return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v11, v31);
}

uint64_t closure #1 in closure #1 in closure #1 in static MLActionClassifier.resume(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a7;
  v7[4] = a6;
  v7[3] = a5;
  v7[2] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLActionClassifier, Error>);
  v7[6] = swift_task_alloc((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in closure #1 in closure #1 in static MLActionClassifier.resume(_:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in static MLActionClassifier.resume(_:)()
{
  v1 = swift_task_alloc(32);
  *(v0 + 56) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc(64);
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = closure #1 in closure #1 in closure #1 in static MLActionClassifier.resume(_:);
  return ((&_ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC18MLActionClassifierV_Tt1g5Tu + _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC18MLActionClassifierV_Tt1g5Tu))(*(v0 + 48), &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static MLActionClassifier.resume(_:), v1);
}

{
  v1 = *(*v0 + 56);
  v3 = *v0;
  *(*v0 + 64);
  v1;
  return swift_task_switch(closure #1 in closure #1 in closure #1 in static MLActionClassifier.resume(_:), 0, 0);
}

{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  (*(v0 + 32))(v2);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v2, &demangling cache variable for type metadata for Result<MLActionClassifier, Error>);
  v2;
  return (*(v0 + 8))();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in static MLActionClassifier.resume(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a2;
  v3[2] = a1;
  v4 = type metadata accessor for MLActionClassifier.ModelParameters(0);
  v3[5] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in closure #1 in closure #1 in closure #1 in static MLActionClassifier.resume(_:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in static MLActionClassifier.resume(_:)()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_model);
  outlined init with copy of MLTrainingSessionParameters(v0[4], v0[5], type metadata accessor for MLActionClassifier.ModelParameters);

  v2 = swift_task_alloc(64);
  v0[6] = v2;
  *v2 = v0;
  v2[1] = closure #1 in closure #1 in closure #1 in closure #1 in static MLActionClassifier.resume(_:);
  return MLActionClassifier.init(model:parameters:)(v0[2], v1, v0[5]);
}

{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;
  v2;
  if (v0)
  {
    return swift_task_switch(closure #1 in closure #1 in closure #1 in closure #1 in static MLActionClassifier.resume(_:), 0, 0);
  }

  *(v3 + 40);
  return (*(v3 + 8))();
}

{
  *(v0 + 40);
  v1 = *(v0 + 56);
  return (*(v0 + 8))();
}

uint64_t static MLActionClassifier.buildFeatureTable(features:labels:sessionIds:videoFiles:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v22 = a3;
  v20 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLUntypedColumn)>);
  inited = swift_initStackObject(v5, v15);
  *(inited + 16) = 4;
  *(inited + 24) = 8;
  *(inited + 32) = 0x746E696F7079656BLL;
  *(inited + 40) = 0xE900000000000073;
  v23 = a1;
  v16 = &v23;
  a1;
  *(inited + 48) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  *(inited + 56) = v7 & 1;
  v23;
  *(inited + 64) = 0x6C6562616CLL;
  *(inited + 72) = 0xE500000000000000;
  v23 = a2;
  v17 = &v23;
  a2;
  *(inited + 80) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  *(inited + 88) = v8 & 1;
  v23;
  *(inited + 96) = 0x5F6E6F6973736573;
  *(inited + 104) = 0xEA00000000006469;
  v23 = v22;
  v18 = &v23;
  v22;
  *(inited + 112) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  *(inited + 120) = v9 & 1;
  v23;
  *(inited + 128) = 0x7461506F65646976;
  *(inited + 136) = 0xE900000000000068;
  v23 = v21;
  v19 = &v23;
  v21;
  *(inited + 144) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
  *(inited + 152) = v10 & 1;
  v23;
  v11 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for MLUntypedColumn, &protocol witness table for String);
  _s8CreateML11MLDataTableV20uniqueKeysWithValuesACx_tKcSTRzSS3key_AA15MLUntypedColumnV5valuet7ElementRtzlufCSDySSAGG_Tt1g5(v11);
  result = v23;
  v13 = v24;
  v14 = v20;
  *v20 = v23;
  *(v14 + 8) = v13;
  return result;
}

void closure #1 in static MLActionClassifier.reformatKeypointsDataTable(table:featureColumn:)(uint64_t a1)
{
  if (*(a1 + 16) == 3)
  {
    v2 = *a1;
    static MLActionClassifier.convertSequenceToMultiArray(value:)(&v2);
  }

  else
  {
    *v1 = 0;
  }
}

void static MLActionClassifier.convertSequenceToMultiArray(value:)(uint64_t *a1)
{
  v139 = v1;
  v2 = *a1;
  v135 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
  specialized ContiguousArray.reserveCapacity(_:)(3);
  v3 = objc_allocWithZone(NSNumber);
  [v3 initWithInteger:1];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v3);
  v4 = _swiftEmptyArrayStorage[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v4);
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v4);
  specialized ContiguousArray._endMutation()(v4);
  v5 = objc_allocWithZone(NSNumber);
  [v5 initWithInteger:3];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v5);
  v6 = _swiftEmptyArrayStorage[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v6);
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v6);
  specialized ContiguousArray._endMutation()(v6);
  v7 = objc_allocWithZone(NSNumber);
  [v7 initWithInteger:18];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v7);
  v8 = _swiftEmptyArrayStorage[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v8);
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v8);
  specialized ContiguousArray._endMutation()(v8);
  objc_allocWithZone(MLMultiArray);
  v9 = @nonobjc MLMultiArray.init(shape:dataType:)(_swiftEmptyArrayStorage, 65600);
  if (!v9)
  {
    goto LABEL_67;
  }

  v10 = v9;
  v125 = UnsafeMutableBufferPointer.init(_:)(v10, &type metadata for Double);
  v141 = v10;

  v11 = CMLSequence.size.getter();
  v12 = specialized RandomAccessCollection<>.distance(from:to:)(0, v11);

  if (v12 != 1)
  {

LABEL_67:
    *v139 = 0;
    return;
  }

  v121[1] = v2;
  v13 = 0.0;
  v122 = 0;

LABEL_4:
  specialized EnumeratedSequence.Iterator.next()(v13);
  v14 = *&v135;
  v15 = v136;
  v16 = v137;
  v17 = v138;
  if (v138 == 3)
  {
    outlined copy of MLDataValue(v136, v137, 3u);
    outlined copy of MLDataValue(v15, v16, 3u);
    v134 = v15;
    v131 = v16;
    v18 = CMLSequence.size.getter();
    v16 = v131;
    v15 = v134;
    v19 = specialized RandomAccessCollection<>.distance(from:to:)(0, v18);
    v133 = v14;
    outlined consume of (offset: Int, element: MLDataValue)?(v14, v15, v16, 3);
    if (v19 == 3)
    {
      outlined copy of MLDataValue(v15, v16, 3u);
      v20 = 0;
      while (1)
      {
        if (v20 == CMLSequence.size.getter())
        {

          v105 = v133;
          v106 = v131;
          outlined consume of (offset: Int, element: MLDataValue)?(v133, v15, v131, 3);
          outlined consume of (offset: Int, element: MLDataValue)?(v105, v15, v106, 3);
          goto LABEL_4;
        }

        v22 = v20;
        v21 = CMLSequence.value(at:)(v20);
        MLDataValue.init(_:)(v21, v13);
        v23 = v135;
        v130 = v136;
        v24 = v137;
        v25 = CMLSequence.size.getter();
        v124 = v22;
        if (v22 >= v25)
        {
          BUG();
        }

        v26 = v130;
        if (v24 != 3)
        {
          break;
        }

        outlined copy of MLDataValue(*&v23, v130, 3u);
        outlined copy of MLDataValue(*&v23, v26, 3u);
        v27 = CMLSequence.size.getter();
        if (CMLSequence.size.getter() < 0)
        {
          BUG();
        }

        v28 = v23;
        v29 = CMLSequence.size.getter();
        v132 = v28;
        outlined consume of MLDataValue(*&v28, v26, 3);
        if (v27 < 0 || v29 < v27)
        {
          BUG();
        }

        if (v27 != 18)
        {
          v23 = v132;
          outlined consume of MLDataValue(*&v132, v26, 3);
          v24 = 3;
          break;
        }

        v30 = v132;

        if (CMLSequence.size.getter())
        {
          v31 = 0;
          while (1)
          {
            v32 = CMLSequence.value(at:)(v31);
            v33 = CMLFeatureValue.type.getter();
            v123 = v31;
            switch(v33)
            {
              case 0:
                v34 = v32[2];

                v142 = COERCE_DOUBLE(specialized handling<A, B>(_:_:)(v34));
                v32;
                object = 0;
                v143 = 0.0;
                goto LABEL_39;
              case 1:
                v71 = v32[2];

                specialized handling<A, B>(_:_:)(v71);
                v140 = v13;
                *&v70 = COERCE_DOUBLE(v32);
                v13 = v140;
                v142 = v140;
                LOBYTE(v70) = 1;
                goto LABEL_37;
              case 2:

                v64 = CMLFeatureValue.stringValue()();
                v142 = *&v64._countAndFlagsBits;
                if (v65)
                {
                  v65;

                  BUG();
                }

                object = v64._object;
                *&v66 = COERCE_DOUBLE(v32);
                LOBYTE(v66) = 2;
                v143 = *&v66;
                goto LABEL_39;
              case 3:
                v67 = v32[2];

                v68 = specialized handling<A, B>(_:_:)(v67);
                if (!v68)
                {
                  BUG();
                }

                v32;
                v69 = type metadata accessor for CMLSequence();
                *&v70 = COERCE_DOUBLE(swift_allocObject(v69, 25, 7));
                *(v70 + 16) = v68;
                v142 = *&v70;
                *(v70 + 24) = 1;
                LOBYTE(v70) = 3;
                goto LABEL_37;
              case 4:
                v36 = v32[2];

                v37 = specialized handling<A, B>(_:_:)(v36);
                if (!v37)
                {
                  BUG();
                }

                v129 = v32;
                v38 = type metadata accessor for CMLDictionary();
                *&v39 = COERCE_DOUBLE(swift_initStackObject(v38, &v118));
                *(v39 + 16) = v37;
                v128 = COERCE_DOUBLE(_swiftEmptyDictionarySingleton);
                swift_retain_n(v39, 2);
                v40 = 0;
                v142 = COERCE_DOUBLE(_swiftEmptyDictionarySingleton);
                v140 = *&v39;
                while (v40 != CMLDictionary.size.getter())
                {
                  CMLDictionary.keyAndValue(at:)(v40);
                  v42 = v41;
                  v40 = specialized RandomAccessCollection<>.index(after:)(v40);
                  v43 = CMLFeatureValue.stringValue()();
                  if (v44)
                  {
                    v44;

                    *&v39 = v140;
                  }

                  else
                  {
                    v45 = v43._object;
                    v143 = *&v43._countAndFlagsBits;

                    MLDataValue.init(_:)(v42, v13);

                    v127 = v135;
                    v126 = v136;
                    v144 = v137;
                    *&v46 = v143;
                    v135 = v143;
                    v136 = v45;
                    LOBYTE(v137) = 2;
                    v47 = v45;
                    *(&v46 + 1) = v45;
                    v48 = v142;
                    specialized __RawDictionaryStorage.find<A>(_:)(v46, 2, v13);
                    *&v46 = (v50 & 1) == 0;
                    v51 = __OFADD__(*(*&v48 + 16), v46);
                    v52 = *(*&v48 + 16) + v46;
                    if (v51)
                    {
                      BUG();
                    }

                    v53 = v50;
                    if (*(*&v48 + 24) < v52)
                    {
                      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v52, 1u);
                      *&v54 = v143;
                      *(&v54 + 1) = v47;
                      specialized __RawDictionaryStorage.find<A>(_:)(v54, 2, v13);
                      LOBYTE(v56) = v56 & 1;
                      v57 = v53;
                      if ((v53 & 1) != v56)
                      {
                        LOBYTE(v57) = v53 & 1;
                        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for MLDataValue, v47, v56, v57, v55);
                        BUG();
                      }
                    }

                    if (v53)
                    {
                      v115 = swift_allocError(&type metadata for _MergeError, &protocol witness table for _MergeError, 0, 0);
                      swift_willThrow(&type metadata for _MergeError, &protocol witness table for _MergeError);
                      v121[0] = v115;
                      swift_errorRetain(v115);
                      v116 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
                      if (swift_dynamicCast(&demangling cache variable for type metadata for Error, v121, v116, &type metadata for _MergeError, 0))
                      {
                        v119 = 0;
                        v120 = 0xE000000000000000;
                        _StringGuts.grow(_:)(30);
                        v117._object = "Swift/NativeDictionary.swift" + 0x8000000000000000;
                        v117._countAndFlagsBits = 0xD00000000000001BLL;
                        String.append(_:)(v117);
                        _print_unlocked<A, B>(_:_:)(&v135, &v119, &type metadata for MLDataValue, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
                        v117._countAndFlagsBits = 39;
                        v117._object = 0xE100000000000000;
                        String.append(_:)(v117);
                        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v119, v120, "Swift/NativeDictionary.swift", 28, 2, 783, 0);
                        BUG();
                      }

                      outlined consume of MLDataValue(*&v127, v126, v144);
                      outlined consume of MLDataValue(*&v135, v136, v137);

                      v121[0];
                      swift_unexpectedError(v115, "Swift/Dictionary.swift", 22, 1, 489);
                      BUG();
                    }

                    v58 = v128;
                    *(*&v128 + 8 * (v49 >> 6) + 64) |= 1 << v49;
                    v59 = *(*&v58 + 48);
                    v60 = 24 * v49;
                    *(v59 + v60) = v143;
                    *(v59 + v60 + 8) = v47;
                    *(v59 + v60 + 16) = 2;
                    v61 = *(*&v58 + 56);
                    *(v61 + v60) = v127;
                    *(v61 + v60 + 8) = v126;
                    *(v61 + v60 + 16) = v144;
                    v62 = *(*&v58 + 16);
                    v51 = __OFADD__(1, v62);
                    v63 = v62 + 1;
                    if (v51)
                    {
                      BUG();
                    }

                    v142 = v58;
                    *(*&v58 + 16) = v63;
                    *&v39 = v140;
                  }
                }

                v129;
                *&v101 = COERCE_DOUBLE(v39);
                LOBYTE(v101) = 4;
                v143 = *&v101;
                object = 0;
                v31 = v123;
                goto LABEL_39;
              case 5:
                *&v72 = COERCE_DOUBLE();
                LOBYTE(v72) = 6;
                v143 = *&v72;
                v142 = 0.0;
                goto LABEL_38;
              case 6:

                MLDataValue.MultiArrayType.init(from:)(v32);
                v142 = v135;
                if (v135 == 0.0)
                {
                  BUG();
                }

                *&v70 = COERCE_DOUBLE();
                LOBYTE(v70) = 5;
LABEL_37:
                v143 = *&v70;
LABEL_38:
                object = 0;
LABEL_39:
                if (v31 >= CMLSequence.size.getter())
                {
                  BUG();
                }

                v129 = object;
                v73 = v141;
                v74 = [v141 strides];
                v75 = v74;
                v140 = COERCE_DOUBLE(type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr));
                v76 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v75, *&v140);

                if ((v76 & 0xC000000000000003) != 0)
                {
                  v77 = specialized _ArrayBuffer._getElementSlowPath(_:)(0, v76);
                }

                else
                {
                  if (!*(&dword_10 + (v76 & 0xFFFFFFFFFFFFF8)))
                  {
                    BUG();
                  }

                  v77 = *(v76 + 32);
                }

                v78 = v77;
                v76;
                v79 = [v78 integerValue];

                v81 = v79;
                v80 = v133 * v79;
                if (!is_mul_ok(v133, v81))
                {
                  BUG();
                }

                v82 = [v73 strides];
                v83 = v82;
                v84 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v83, *&v140);

                if ((v84 & 0xC000000000000003) != 0)
                {
                  v85 = specialized _ArrayBuffer._getElementSlowPath(_:)(1, v84);
                }

                else
                {
                  if (*(&dword_10 + (v84 & 0xFFFFFFFFFFFFF8)) < 2uLL)
                  {
                    BUG();
                  }

                  v85 = *(v84 + 40);
                }

                v86 = v85;
                v84;
                v87 = [v86 integerValue];

                v89 = v87;
                v88 = v124 * v87;
                if (!is_mul_ok(v124, v89))
                {
                  BUG();
                }

                v51 = __OFADD__(v88, v80);
                v90 = v88 + v80;
                if (v51)
                {
                  BUG();
                }

                v91 = [v141 strides];
                v92 = v91;
                v93 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v92, *&v140);
                (objc_release)(v92);
                if ((v93 & 0xC000000000000003) != 0)
                {
                  v95 = specialized _ArrayBuffer._getElementSlowPath(_:)(2, v93);
                  v94 = v130;
                }

                else
                {
                  v94 = v130;
                  if (*(&dword_10 + (v93 & 0xFFFFFFFFFFFFF8)) < 3uLL)
                  {
                    BUG();
                  }

                  v95 = *(v93 + 48);
                }

                v93;
                v96 = [v95 integerValue];

                v97 = v123;
                v99 = v96;
                v98 = v123 * v96;
                if (!is_mul_ok(v123, v99))
                {
                  BUG();
                }

                v51 = __OFADD__(v98, v90);
                v100 = v98 + v90;
                if (v51)
                {
                  BUG();
                }

                if (LOBYTE(v143))
                {
                  v30 = v132;
                  if (LOBYTE(v143) != 1)
                  {
                    outlined consume of MLDataValue(*&v142, v129, SLOBYTE(v143));
                    outlined consume of MLDataValue(*&v30, v94, 3);
                    outlined consume of MLDataValue(*&v30, v94, 3);
                    v107 = v133;
                    v108 = v134;
                    v109 = v131;
                    outlined consume of (offset: Int, element: MLDataValue)?(v133, v134, v131, 3);
                    outlined consume of (offset: Int, element: MLDataValue)?(v107, v108, v109, 3);

                    goto LABEL_71;
                  }

                  *(v125 + 8 * v100) = v142;
                }

                else
                {
                  v13 = SLODWORD(v142);
                  *(v125 + 8 * v100) = SLODWORD(v142);
                  v30 = v132;
                }

                v31 = v97 + 1;
                if (v31 == CMLSequence.size.getter())
                {
                  goto LABEL_64;
                }

                break;
            }
          }
        }

LABEL_64:
        v102 = v124 + 1;

        v103 = v130;
        outlined consume of MLDataValue(*&v30, v130, 3);
        v104 = *&v30;
        v20 = v102;
        outlined consume of MLDataValue(v104, v103, 3);
        v15 = v134;
      }

      outlined consume of MLDataValue(*&v23, v26, v24);
      v110 = v133;
      v111 = v134;
      v112 = v131;
      outlined consume of (offset: Int, element: MLDataValue)?(v133, v134, v131, 3);
      outlined consume of (offset: Int, element: MLDataValue)?(v110, v111, v112, 3);
LABEL_71:

      goto LABEL_67;
    }

    v113 = v133;
    outlined consume of (offset: Int, element: MLDataValue)?(v133, v15, v16, 3);
    v17 = 3;
  }

  else
  {
    if (v138 == 255)
    {

      MLDataValue.MultiArrayType.init(_:)(v141);
      *v139 = v135;
      return;
    }

    v113 = *&v135;
  }

  v114 = v139;
  outlined consume of (offset: Int, element: MLDataValue)?(v113, v15, v16, v17);
  *v114 = 0;
}

void *MLActionClassifier.prediction(from:)(void *a1)
{
  v2 = *(*v1 + 24);
  v3 = MLActionClassifier.modelPrediction(on:using:)(a1, v2);

  return v3;
}

void *MLActionClassifier.modelPrediction(on:using:)(void *a1, void *a2)
{
  v4 = (v3 + *(type metadata accessor for MLActionClassifier(0) + 20));
  v5 = type metadata accessor for MLActionClassifier.ModelParameters(0);
  v6 = static _VideoUtilities.getHumanKeyPointsFromVideoUrl(url:startTime:endTime:targetFrameRate:)(a1, kCMTimeZero.value, *&kCMTimeZero.timescale, kCMTimeZero.epoch, kCMTimeIndefinite.value, *&kCMTimeIndefinite.timescale, *(v4 + *(v5 + 40)), kCMTimeIndefinite.epoch);
  if (!v2)
  {
    v23 = v6[2];
    if (v23)
    {
      v19 = v4;
      v21 = v6;
      specialized ContiguousArray.reserveCapacity(_:)(v23);
      v7 = 0;
      do
      {
        v8 = v21[v7 + 4];
        v7 = (v7 + 1);
        v8;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v8);
        v9 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v9);
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v9);
        specialized ContiguousArray._endMutation()(v9);
      }

      while (v23 != v7);
      v21;
      v4 = v19;
    }

    else
    {
      v6;
    }

    v10 = static _VideoUtilities.generatePredictionWindows(frameKeypoints:windowSize:numOfKeypoints:)(_swiftEmptyArrayStorage, *(v4 + *(v5 + 28)), 18);
    _swiftEmptyArrayStorage;
    v12 = *(v10 + 16);
    if (v12)
    {
      v18 = v10;
      v13 = (v10 + 40);
      v4 = _swiftEmptyArrayStorage;
      do
      {
        v22 = v12;
        v17 = *v13;
        v24 = *(v13 - 1);
        MLActionClassifier.modelPrediction(on:using:)(v24, a2);
        v20 = v14;
        if (!swift_isUniquelyReferenced_nonNull_native(v4))
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
        }

        v15 = v4[2];
        if (v4[3] >> 1 <= v15)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v4[3] >= 2uLL, v15 + 1, 1, v4);
        }

        v4[2] = v15 + 1;
        v16 = 3 * v15;
        *&v4[v16 + 4] = v17;
        v4[v16 + 6] = v20;

        v13 = (v13 + 24);
        v12 = v22 - 1;
      }

      while (v22 != 1);
      v18;
    }

    else
    {
      v10;
      return _swiftEmptyArrayStorage;
    }
  }

  return v4;
}

void *closure #1 in MLActionClassifier.predictions(from:)(void *a1, uint64_t a2, void *a3)
{
  v9 = v3;
  v5 = *(*a2 + 24);
  v6 = MLActionClassifier.modelPrediction(on:using:)(a1, v5);

  if (v4)
  {
    result = a3;
    *a3 = v4;
  }

  else
  {
    result = v9;
    *v9 = v6;
  }

  return result;
}

void MLActionClassifier.modelPrediction(on:using:)(void *a1, void *a2)
{
  v4 = [a1 shape];
  v5 = v4;
  v6 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v5, v6);

  v8 = specialized Array._getCount()(v7);
  v7;
  if (v8 != 3)
  {
    goto LABEL_19;
  }

  v9 = [a1 shape];
  v10 = v9;
  v66 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v10, v6);

  v11 = *(type metadata accessor for MLActionClassifier(0) + 20) + v3;
  v12 = *(*(type metadata accessor for MLActionClassifier.ModelParameters(0) + 28) + v11);
  v90[0] = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)(3);
  v13 = objc_allocWithZone(NSNumber);
  [v13 initWithInteger:v12];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v13);
  v68 = v6;
  v14 = _swiftEmptyArrayStorage[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v14);
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v14);
  specialized ContiguousArray._endMutation()(v14);
  v15 = objc_allocWithZone(NSNumber);
  [v15 initWithInteger:3];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v15);
  v16 = _swiftEmptyArrayStorage[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v16);
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v16);
  specialized ContiguousArray._endMutation()(v16);
  v17 = objc_allocWithZone(NSNumber);
  [v17 initWithInteger:18];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v17);
  v18 = _swiftEmptyArrayStorage[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v18);
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v18);
  specialized ContiguousArray._endMutation()(v18);
  LOBYTE(v18) = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo8NSNumberC_Tt1g5(v66, _swiftEmptyArrayStorage);
  v66;

  if (v18)
  {
    v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
    inited = swift_initStackObject(v19, v91);
    inited[2] = 1;
    inited[3] = 2;
    inited[4] = 0x7365736F70;
    inited[5] = 0xE500000000000000;
    v21 = objc_opt_self(MLFeatureValue);
    v22 = [v21 featureValueWithMultiArray:a1];
    v23 = v22;
    inited[9] = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLFeatureValue, MLFeatureValue_ptr);
    inited[6] = v23;
    v24 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
    objc_allocWithZone(MLDictionaryFeatureProvider);
    v25 = @nonobjc MLDictionaryFeatureProvider.init(dictionary:)(v24);
    if (!v2)
    {
      v90[0] = 0;
      v26 = v25;
      v27 = [a2 predictionFromFeatures:v25 error:v90];
      v28 = v27;
      v29 = v90[0];
      if (v28)
      {
        v70 = v26;
        v30 = v28;
        v90[0];
        v31 = String._bridgeToObjectiveC()();
        v71 = v30;
        v32 = [v30 featureValueForName:v31];
        v33 = v32;

        if (v33)
        {
          v34 = [v33 dictionaryValue];
          v35 = v34;

          v36 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(v35, &type metadata for AnyHashable, v68, &protocol witness table for AnyHashable);
          v37 = *(v36 + 16);
          if (v37)
          {
            v76 = _swiftEmptyArrayStorage;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37, 0);
            v73 = _swiftEmptyArrayStorage;
            v38 = specialized Dictionary.startIndex.getter(v36);
            v40 = v36 + 64;
            v41 = v37 - 1;
            v63 = v36 + 64;
            for (i = v36; ; v39 = *(i + 36))
            {
              if (v38 < 0 || v38 >= 1 << *(v36 + 32))
              {
                BUG();
              }

              v67 = v41;
              v42 = v38 >> 6;
              v43 = *(v40 + 8 * (v38 >> 6));
              if (!_bittest64(&v43, v38))
              {
                BUG();
              }

              if (v39 != *(v36 + 36))
              {
                BUG();
              }

              v69 = 1 << v38;
              v61 = v39;
              v44 = v38;
              outlined init with copy of AnyHashable(*(v36 + 48) + 40 * v38, v90);
              v65 = v44;
              v45 = *(*(v36 + 56) + 8 * v44);
              v90[5] = v45;
              outlined init with copy of AnyHashable(v90, v87);
              v89 = v45;
              v85 = v88;
              v86 = v45;
              v84[1] = v87[1];
              v84[0] = v87[0];
              v46 = v45;
              v46;
              outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v90, &demangling cache variable for type metadata for (key: AnyHashable, value: NSNumber));
              outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v84, v79, &demangling cache variable for type metadata for (key: AnyHashable, value: NSNumber));

              v83 = v80;
              v47 = *&v79[0];
              v82[1] = v79[1];
              v82[0] = v79[0];
              swift_dynamicCast(&v74, v82, &type metadata for AnyHashable, &type metadata for String, 7);
              outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v84, v77, &demangling cache variable for type metadata for (key: AnyHashable, value: NSNumber));
              v48 = v78;
              [v78 doubleValue];

              outlined destroy of AnyHashable(v77);
              outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v84, &demangling cache variable for type metadata for (key: AnyHashable, value: NSNumber));
              v49 = v74;
              v50 = v75;
              v51 = v73;
              v76 = v73;
              v52 = v73[2];
              v53 = v52 + 1;
              if (v73[3] >> 1 <= v52)
              {
                v64 = v75;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v73[3] >= 2uLL, v53, 1);
                v53 = v52 + 1;
                v50 = v64;
                v51 = v76;
              }

              v51[2] = v53;
              v54 = 3 * v52;
              v51[v54 + 4] = v49;
              v51[v54 + 5] = v50;
              v51[v54 + 6] = v47;
              v36 = i;
              v55 = -1 << *(i + 32);
              if (v65 >= -v55)
              {
                BUG();
              }

              v40 = v63;
              if ((v69 & *(v63 + 8 * v42)) == 0)
              {
                BUG();
              }

              if (v61 != *(i + 36))
              {
                BUG();
              }

              v73 = v51;
              v38 = _HashTable.occupiedBucket(after:)(v65, v63, ~v55);
              v41 = v67 - 1;
              if (!v67)
              {
                break;
              }
            }

            i;
            swift_unknownObjectRelease(v71);
          }

          else
          {
            v36;
            swift_unknownObjectRelease(v71);
          }
        }

        else
        {
          v59 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          swift_allocError(&type metadata for MLCreateError, v59, 0, 0);
          *v60 = 0xD000000000000028;
          *(v60 + 8) = "labelProbabilities" + 0x8000000000000000;
          *(v60 + 16) = 0;
          *(v60 + 32) = 0;
          *(v60 + 48) = 0;
          swift_willThrow(&type metadata for MLCreateError, v59);

          swift_unknownObjectRelease(v30);
        }
      }

      else
      {
        v58 = v90[0];
        _convertNSErrorToError(_:)(v29);

        swift_willThrow(v58, "predictionFromFeatures:error:");
      }
    }
  }

  else
  {
LABEL_19:
    v56 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v56, 0, 0);
    *v57 = 0xD000000000000025;
    *(v57 + 8) = "rt requested type" + 0x8000000000000000;
    *(v57 + 16) = 0;
    *(v57 + 32) = 0;
    *(v57 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v56);
  }
}