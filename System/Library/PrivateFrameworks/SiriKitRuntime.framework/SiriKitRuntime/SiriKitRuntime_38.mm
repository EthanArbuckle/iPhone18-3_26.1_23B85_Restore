uint64_t *StopRepromptFeatureFlag.forceEnabled.unsafeMutableAddressor()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  return &static StopRepromptFeatureFlag.forceEnabled;
}

uint64_t static StopRepromptFeatureFlag.forceEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }
}

uint64_t StopRepromptFeatureFlag.isEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  v0 = static StopRepromptFeatureFlag.forceEnabled;
  os_unfair_lock_lock((static StopRepromptFeatureFlag.forceEnabled + 20));
  v1 = *(v0 + 16);
  if (v1 == 2)
  {
    v3[3] = &type metadata for StopRepromptFeatureFlag;
    v3[4] = lazy protocol witness table accessor for type StopRepromptFeatureFlag and conformance StopRepromptFeatureFlag();
    LOBYTE(v1) = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  os_unfair_lock_unlock((v0 + 20));
  return v1 & 1;
}

unint64_t lazy protocol witness table accessor for type StopRepromptFeatureFlag and conformance StopRepromptFeatureFlag()
{
  result = lazy protocol witness table cache variable for type StopRepromptFeatureFlag and conformance StopRepromptFeatureFlag;
  if (!lazy protocol witness table cache variable for type StopRepromptFeatureFlag and conformance StopRepromptFeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StopRepromptFeatureFlag and conformance StopRepromptFeatureFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StopRepromptFeatureFlag and conformance StopRepromptFeatureFlag;
  if (!lazy protocol witness table cache variable for type StopRepromptFeatureFlag and conformance StopRepromptFeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StopRepromptFeatureFlag and conformance StopRepromptFeatureFlag);
  }

  return result;
}

Swift::Int StopRepromptFeatureFlag.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](0);
  return Hasher._finalize()();
}

Swift::String_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SiriEnvironment.getValue(provider:key:)(Swift::String provider, Swift::String key)
{
  object = key._object;
  countAndFlagsBits = key._countAndFlagsBits;
  if (SiriEnvironment.getProvider(name:)(provider._countAndFlagsBits, provider._object))
  {
    swift_getObjectType();
    v4._countAndFlagsBits = countAndFlagsBits;
    v4._object = object;
    v5 = SiriEnvironmentStringKeyedValueFetching.getValue(forKey:)(v4);
    v6 = v5.value._countAndFlagsBits;
    v7 = v5.value._object;
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = v6;
  v9 = v7;
  result.value._object = v9;
  result.value._countAndFlagsBits = v8;
  return result;
}

uint64_t key path getter for CurrentRequest.refId : CurrentRequest@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CurrentRequest.refId.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path getter for CurrentRequest.aceId : CurrentRequest@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CurrentRequest.aceId.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path getter for CurrentRequest.executionRequestId : CurrentRequest@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CurrentRequest.executionRequestId.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path getter for CurrentRequest.sessionHandoffContinuityID : CurrentRequest@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CurrentRequest.sessionHandoffContinuityID.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path getter for CurrentRequest.peerName : CurrentRequest@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CurrentRequest.peerName.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path getter for CurrentRequest.speechPackage : CurrentRequest@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CurrentRequest.speechPackage.getter();
  *a2 = result;
  return result;
}

uint64_t key path getter for CurrentRequest.resultCandidateId : CurrentRequest@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = CurrentRequest.resultCandidateId.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path getter for CurrentRequest.asrOnDevice : CurrentRequest@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = CurrentRequest.asrOnDevice.getter();
  *a2 = result;
  return result;
}

uint64_t StringKeyedValue.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t StringKeyedValue.valueType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StringKeyedValue() + 24);
  v4 = type metadata accessor for TypeIdentifier();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StringKeyedValue.init<A, B>(name:keyPath:valueType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = a3;
  v7 = *(type metadata accessor for StringKeyedValue() + 24);
  v8 = type metadata accessor for TypeIdentifier();
  v9 = *(*(v8 - 8) + 32);

  return v9(&a5[v7], a4, v8);
}

uint64_t <=> infix<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X8>)
{
  v8 = *a3;
  v9 = type metadata accessor for TypeIdentifier();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v8 + *MEMORY[0x1E69E77B0] + 8);

  TypeIdentifier.init(for:)();
  return StringKeyedValue.init<A, B>(name:keyPath:valueType:)(a1, a2, a3, v12, a4);
}

uint64_t makeStringKeys(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14SiriKitRuntime16StringKeyedValueV5valuetSgMd, &_sSS3key_14SiriKitRuntime16StringKeyedValueV5valuetSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v87 = (&v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v75 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_14SiriKitRuntime16StringKeyedValueVtSgMd, &_sSS_14SiriKitRuntime16StringKeyedValueVtSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v75 - v10);
  v12 = type metadata accessor for StringKeyedValue();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v89 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v82 = &v75 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v75 - v19);
  v76 = *(a1 + 16);
  if (!v76)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v21 = 0;
  v78 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v88 = *(v18 + 72);
  v22 = MEMORY[0x1E69E7CC8];
  v77 = xmmword_1DCA66060;
  v81 = v11;
  v75 = (&v75 - v19);
LABEL_4:
  outlined init with copy of StringKeyedValue(v78 + v88 * v21, v20);
  v79 = v21 + 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_14SiriKitRuntime16StringKeyedValueVtGMd, &_ss23_ContiguousArrayStorageCySS_14SiriKitRuntime16StringKeyedValueVtGMR);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_14SiriKitRuntime16StringKeyedValueVtMd, &_sSS_14SiriKitRuntime16StringKeyedValueVtMR);
  v24 = *(v23 - 8);
  v25 = *(v24 + 72);
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v77;
  v28 = (v27 + v26);
  v29 = *(v23 + 48);
  v30 = v20[1];
  *v28 = *v20;
  v28[1] = v30;
  outlined init with copy of StringKeyedValue(v20, v27 + v26 + v29);
  v31 = v23;

  v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_14SiriKitRuntime16StringKeyedValueVTt0g5Tf4g_n(v27);
  swift_setDeallocating();
  outlined destroy of ReferenceResolutionClientProtocol?(v27 + v26, &_sSS_14SiriKitRuntime16StringKeyedValueVtMd, &_sSS_14SiriKitRuntime16StringKeyedValueVtMR);
  swift_deallocClassInstance();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v92 = v22;
  v34 = *(v32 + 64);
  v80 = v32 + 64;
  v35 = 1 << *(v32 + 32);
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  else
  {
    v36 = -1;
  }

  v37 = v36 & v34;
  v38 = (v35 + 63) >> 6;
  v85 = (v24 + 48);
  v86 = (v24 + 56);
  v84 = v32;

  v39 = 0;
  v83 = v31;
  while (1)
  {
    v91 = isUniquelyReferenced_nonNull_native;
    if (!v37)
    {
      break;
    }

    v40 = v7;
    v41 = v39;
LABEL_19:
    v43 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
    v44 = v43 | (v41 << 6);
    v45 = (*(v84 + 48) + 16 * v44);
    v47 = *v45;
    v46 = v45[1];
    v48 = v82;
    outlined init with copy of StringKeyedValue(*(v84 + 56) + v44 * v88, v82);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14SiriKitRuntime16StringKeyedValueV5valuetMd, &_sSS3key_14SiriKitRuntime16StringKeyedValueV5valuetMR);
    v50 = *(v49 + 48);
    *v40 = v47;
    *(v40 + 1) = v46;
    v7 = v40;
    outlined init with take of StringKeyedValue(v48, &v40[v50]);
    (*(*(v49 - 8) + 56))(v40, 0, 1, v49);

    v90 = v41;
    v11 = v81;
    v31 = v83;
LABEL_20:
    v51 = v87;
    outlined init with take of (key: String, value: StringKeyedValue)?(v7, v87);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14SiriKitRuntime16StringKeyedValueV5valuetMd, &_sSS3key_14SiriKitRuntime16StringKeyedValueV5valuetMR);
    v53 = 1;
    if ((*(*(v52 - 8) + 48))(v51, 1, v52) != 1)
    {
      v54 = *(v52 + 48);
      v55 = v87;
      v57 = *v87;
      v56 = v87[1];
      outlined init with copy of StringKeyedValue(v87 + v54, v11 + *(v31 + 48));
      *v11 = v57;
      v11[1] = v56;

      outlined destroy of ReferenceResolutionClientProtocol?(v55, &_sSS3key_14SiriKitRuntime16StringKeyedValueV5valuetMd, &_sSS3key_14SiriKitRuntime16StringKeyedValueV5valuetMR);
      v53 = 0;
    }

    (*v86)(v11, v53, 1, v31);
    if ((*v85)(v11, 1, v31) == 1)
    {

      v20 = v75;
      outlined destroy of StringKeyedValue(v75);
      v21 = v79;
      if (v79 == v76)
      {
        return v22;
      }

      goto LABEL_4;
    }

    v58 = v7;
    v59 = *v11;
    v60 = v11[1];
    outlined init with take of StringKeyedValue(v11 + *(v31 + 48), v89);
    v62 = specialized __RawDictionaryStorage.find<A>(_:)(v59, v60);
    v63 = v22[2];
    v64 = (v61 & 1) == 0;
    v65 = v63 + v64;
    if (__OFADD__(v63, v64))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v66 = v61;
    if (v22[3] >= v65)
    {
      if (v91)
      {
        v22 = v92;
        if (v61)
        {
          goto LABEL_8;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v22 = v92;
        if (v66)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v65, v91 & 1);
      v67 = specialized __RawDictionaryStorage.find<A>(_:)(v59, v60);
      if ((v66 & 1) != (v68 & 1))
      {
        goto LABEL_40;
      }

      v62 = v67;
      v22 = v92;
      if (v66)
      {
LABEL_8:

        outlined assign with take of StringKeyedValue(v89, v22[7] + v62 * v88);
        goto LABEL_9;
      }
    }

    v22[(v62 >> 6) + 8] |= 1 << v62;
    v69 = (v22[6] + 16 * v62);
    *v69 = v59;
    v69[1] = v60;
    outlined init with take of StringKeyedValue(v89, v22[7] + v62 * v88);
    v70 = v22[2];
    v71 = __OFADD__(v70, 1);
    v72 = v70 + 1;
    if (v71)
    {
      goto LABEL_39;
    }

    v22[2] = v72;
LABEL_9:
    isUniquelyReferenced_nonNull_native = 1;
    v39 = v90;
    v7 = v58;
  }

  if (v38 <= v39 + 1)
  {
    v42 = v39 + 1;
  }

  else
  {
    v42 = v38;
  }

  while (1)
  {
    v41 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v41 >= v38)
    {
      v90 = v42 - 1;
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14SiriKitRuntime16StringKeyedValueV5valuetMd, &_sSS3key_14SiriKitRuntime16StringKeyedValueV5valuetMR);
      (*(*(v73 - 8) + 56))(v7, 1, 1, v73);
      v37 = 0;
      goto LABEL_20;
    }

    v37 = *(v80 + 8 * v41);
    ++v39;
    if (v37)
    {
      v40 = v7;
      goto LABEL_19;
    }
  }

  __break(1u);
  return MEMORY[0x1E69E7CC8];
}

Swift::String_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SiriEnvironmentStringKeyedValueFetching.getValue(forKey:)(Swift::String forKey)
{
  v4 = v2;
  v5 = v1;
  object = forKey._object;
  countAndFlagsBits = forKey._countAndFlagsBits;
  v8 = type metadata accessor for TypeIdentifier();
  v46 = *(v8 - 8);
  v47 = v8;
  v9 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v43 = &v40 - v12;
  v44 = type metadata accessor for TypeInformation();
  v42 = *(v44 - 8);
  v13 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v41 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for StringKeyedValue();
  v15 = *(v40 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v40 - v21;
  v23 = *(v4 + 24);
  v24 = v3;
  v48 = v5;
  v25 = v23(v5, v4, v20);
  if (*(v25 + 16) && (v26 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object), (v27 & 1) != 0))
  {
    outlined init with copy of StringKeyedValue(*(v25 + 56) + *(v15 + 72) * v26, v18);

    outlined init with take of StringKeyedValue(v18, v22);
    v28 = *(v22 + 2);
    *&v50 = v24;
    swift_unknownObjectRetain();
    swift_getAtAnyKeyPath();
    swift_unknownObjectRelease();
    if (v53)
    {
      outlined init with take of Any(&v52, v54);
      v30 = v46;
      v29 = v47;
      (*(v46 + 16))(v43, &v22[*(v40 + 24)], v47);
      v31 = v41;
      TypeInformation.init(for:)();
      v32 = TypeInformation.isOptional.getter();
      (*(v42 + 8))(v31, v44);
      v33 = v55;
      v34 = v45;
      if ((v32 & 1) == 0)
      {
        goto LABEL_7;
      }

      outlined init with take of Any(v54, &v49);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
      swift_dynamicCast();
      if (v51)
      {
        outlined init with take of Any(&v50, &v52);
        outlined init with take of Any(&v52, v54);
LABEL_7:
        outlined init with copy of Any(v54, &v52);
        if (swift_dynamicCast())
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v54);
          v25 = *(&v50 + 1);
          v24 = v50;
LABEL_19:
          outlined destroy of StringKeyedValue(v22);
          goto LABEL_10;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        TypeIdentifier.init(for:)();
        static Transformation.defaultLengthLimit.getter();
        static Transformation.transform<A>(_:to:lengthLimit:)();
        if (v33)
        {

          (*(v30 + 8))(v34, v29);
        }

        else
        {
          (*(v30 + 8))(v34, v29);
          v25 = *(&v52 + 1);
          if (*(&v52 + 1))
          {
            v24 = v52;
            goto LABEL_18;
          }
        }

        outlined init with copy of Any(v54, &v52);
        v24 = String.init<A>(describing:)();
        v25 = v38;
LABEL_18:
        __swift_destroy_boxed_opaque_existential_1Tm(v54);
        goto LABEL_19;
      }

      outlined destroy of StringKeyedValue(v22);
      outlined destroy of ReferenceResolutionClientProtocol?(&v50, &_sypSgMd, &_sypSgMR);
      v24 = 0;
      v25 = 0;
    }

    else
    {
      outlined destroy of StringKeyedValue(v22);
      outlined destroy of ReferenceResolutionClientProtocol?(&v52, &_sypSgMd, &_sypSgMR);
      v24 = 0;
      v25 = 0;
    }
  }

  else
  {

    lazy protocol witness table accessor for type StringKeyedValueFetchingError and conformance StringKeyedValueFetchingError();
    swift_allocError();
    *v35 = countAndFlagsBits;
    v35[1] = object;
    swift_willThrow();
  }

LABEL_10:
  v36 = v24;
  v37 = v25;
  result.value._object = v37;
  result.value._countAndFlagsBits = v36;
  return result;
}

uint64_t SiriEnvironment.getProvider(name:)(uint64_t a1, uint64_t a2)
{
  v4 = dispatch thunk of SiriEnvironment.providers.getter();
  v5 = v4;
  v6 = v4 + 64;
  v7 = 1 << *(v4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v4 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v32 = MEMORY[0x1E69E7CC0];
  while (v9)
  {
LABEL_9:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    outlined init with copy of Any(*(v5 + 56) + ((v12 << 11) | (32 * v14)), v35);
    outlined init with take of Any(v35, &v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A35EnvironmentStringKeyedValueFetching_pMd, &_s14SiriKitRuntime0A35EnvironmentStringKeyedValueFetching_pMR);
    result = swift_dynamicCast();
    if (result && v34)
    {
      v31 = v34;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32[2] + 1, 1, v32);
        v32 = result;
      }

      v16 = v32[2];
      v15 = v32[3];
      v17 = v16 + 1;
      v18 = v31;
      if (v16 >= v15 >> 1)
      {
        v29 = v32[2];
        v30 = v16 + 1;
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v32);
        v16 = v29;
        v17 = v30;
        v18 = v31;
        v32 = result;
      }

      v32[2] = v17;
      *&v32[2 * v16 + 4] = v18;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      return result;
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  v19 = v32[2];
  if (v19)
  {
    v20 = 0;
    v21 = v32 + 5;
    while (v20 < v32[2])
    {
      v22 = *(v21 - 1);
      v23 = *v21;
      ObjectType = swift_getObjectType();
      v25 = *(v23 + 16);
      swift_unknownObjectRetain();
      if (v25(ObjectType, v23) == a1 && v26 == a2)
      {

LABEL_27:

        return v22;
      }

      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v28)
      {
        goto LABEL_27;
      }

      ++v20;
      result = swift_unknownObjectRelease();
      v21 += 2;
      if (v19 == v20)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_30;
  }

LABEL_25:

  return 0;
}

uint64_t type metadata accessor for StringKeyedValue()
{
  result = type metadata singleton initialization cache for StringKeyedValue;
  if (!type metadata singleton initialization cache for StringKeyedValue)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of StringKeyedValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StringKeyedValue();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of (key: String, value: StringKeyedValue)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14SiriKitRuntime16StringKeyedValueV5valuetSgMd, &_sSS3key_14SiriKitRuntime16StringKeyedValueV5valuetSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of StringKeyedValue(uint64_t a1)
{
  v2 = type metadata accessor for StringKeyedValue();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined assign with take of StringKeyedValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StringKeyedValue();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type StringKeyedValueFetchingError and conformance StringKeyedValueFetchingError()
{
  result = lazy protocol witness table cache variable for type StringKeyedValueFetchingError and conformance StringKeyedValueFetchingError;
  if (!lazy protocol witness table cache variable for type StringKeyedValueFetchingError and conformance StringKeyedValueFetchingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StringKeyedValueFetchingError and conformance StringKeyedValueFetchingError);
  }

  return result;
}

uint64_t specialized CallStateEnvironmentProvider.stringKeys.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime16StringKeyedValueVGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime16StringKeyedValueVGMR);
  v0 = type metadata accessor for StringKeyedValue();
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DCA6B020;
  v4 = (v3 + v2);
  KeyPath = swift_getKeyPath();
  type metadata accessor for AFCallState(0);
  v6 = v4 + *(v0 + 24);
  TypeIdentifier.init(for:)();
  *v4 = 0x746174536C6C6163;
  v4[1] = 0xE900000000000065;
  v4[2] = KeyPath;
  v7 = (v4 + v1);
  v8 = swift_getKeyPath();
  v9 = v4 + v1 + *(v0 + 24);
  TypeIdentifier.init(for:)();
  *v7 = 0x656B616570536E6FLL;
  v7[1] = 0xE900000000000072;
  v7[2] = v8;
  v10 = v4 + 2 * v1;
  v11 = swift_getKeyPath();
  v12 = &v10[*(v0 + 24)];
  TypeIdentifier.init(for:)();
  strcpy(v10, "isDropInCall");
  v10[13] = 0;
  *(v10 + 7) = -5120;
  *(v10 + 2) = v11;
  v13 = makeStringKeys(_:)(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v13;
}

uint64_t specialized CurrentDevice.stringKeys.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime16StringKeyedValueVGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime16StringKeyedValueVGMR);
  v0 = type metadata accessor for StringKeyedValue();
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DCA74640;
  v4 = (v3 + v2);
  KeyPath = swift_getKeyPath();
  type metadata accessor for DeviceIdiom();
  v6 = v4 + *(v0 + 24);
  TypeIdentifier.init(for:)();
  *v4 = 0x6449656369766564;
  v4[1] = 0xEB000000006D6F69;
  v4[2] = KeyPath;
  v7 = (v4 + v1);
  v8 = swift_getKeyPath();
  v9 = v4 + v1 + *(v0 + 24);
  TypeIdentifier.init(for:)();
  *v7 = 0xD000000000000015;
  v7[1] = 0x80000001DCA7B3F0;
  v7[2] = v8;
  v10 = (v4 + 2 * v1);
  v11 = swift_getKeyPath();
  v12 = v10 + *(v0 + 24);
  TypeIdentifier.init(for:)();
  *v10 = 0xD000000000000014;
  v10[1] = 0x80000001DCA89CB0;
  v10[2] = v11;
  v13 = (v4 + 3 * v1);
  v14 = swift_getKeyPath();
  type metadata accessor for SiriVoiceGender();
  v15 = v13 + *(v0 + 24);
  TypeIdentifier.init(for:)();
  *v13 = 0x63696F5669726973;
  v13[1] = 0xEF7265646E654765;
  v13[2] = v14;
  v16 = (v4 + 4 * v1);
  v17 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v18 = v16 + *(v0 + 24);
  TypeIdentifier.init(for:)();
  *v16 = 0xD000000000000017;
  v16[1] = 0x80000001DCA82310;
  v16[2] = v17;
  v19 = (v4 + 5 * v1);
  v20 = swift_getKeyPath();
  type metadata accessor for Locale();
  v21 = v19 + *(v0 + 24);
  TypeIdentifier.init(for:)();
  *v19 = 0x61636F4C69726973;
  v19[1] = 0xEA0000000000656CLL;
  v19[2] = v20;
  v22 = (v4 + 6 * v1);
  v23 = swift_getKeyPath();
  v24 = v22 + *(v0 + 24);
  TypeIdentifier.init(for:)();
  *v22 = 0xD000000000000015;
  v22[1] = 0x80000001DCA7B3D0;
  v22[2] = v23;
  v25 = (v4 + 7 * v1);
  v26 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
  v27 = v25 + *(v0 + 24);
  TypeIdentifier.init(for:)();
  *v25 = 0xD000000000000021;
  v25[1] = 0x80000001DCA82330;
  v25[2] = v26;
  v28 = &v4[v1];
  v29 = swift_getKeyPath();
  type metadata accessor for Restrictions();
  v30 = v28 + *(v0 + 24);
  TypeIdentifier.init(for:)();
  *v28 = 0xD000000000000012;
  v28[1] = 0x80000001DCA82370;
  v28[2] = v29;
  v31 = (v4 + 9 * v1);
  v32 = swift_getKeyPath();
  v33 = v31 + *(v0 + 24);
  TypeIdentifier.init(for:)();
  *v31 = 0xD000000000000010;
  v31[1] = 0x80000001DCA89CD0;
  v31[2] = v32;
  v34 = (v4 + 10 * v1);
  v35 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
  v36 = v34 + *(v0 + 24);
  TypeIdentifier.init(for:)();
  *v34 = 0x6C43656369766564;
  v34[1] = 0xEB00000000737361;
  v34[2] = v35;
  v37 = makeStringKeys(_:)(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v37;
}

uint64_t specialized NetworkAvailability.stringKeys.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime16StringKeyedValueVGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime16StringKeyedValueVGMR);
  v0 = type metadata accessor for StringKeyedValue();
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DCA6EB80;
  v4 = (v3 + v2);
  KeyPath = swift_getKeyPath();
  v6 = v4 + *(v0 + 24);
  TypeIdentifier.init(for:)();
  *v4 = 0x616C696176417369;
  v4[1] = 0xEB00000000656C62;
  v4[2] = KeyPath;
  v7 = (v4 + v1);
  v8 = swift_getKeyPath();
  v9 = v4 + v1 + *(v0 + 24);
  TypeIdentifier.init(for:)();
  *v7 = 0x736E657078457369;
  v7[1] = 0xEB00000000657669;
  v7[2] = v8;
  v10 = v4 + 2 * v1;
  v11 = swift_getKeyPath();
  v12 = &v10[*(v0 + 24)];
  TypeIdentifier.init(for:)();
  strcpy(v10, "isConstrained");
  *(v10 + 7) = -4864;
  *(v10 + 2) = v11;
  v13 = (v4 + 3 * v1);
  v14 = swift_getKeyPath();
  v15 = v13 + *(v0 + 24);
  TypeIdentifier.init(for:)();
  *v13 = 0xD000000000000010;
  v13[1] = 0x80000001DCA89C90;
  v13[2] = v14;
  v16 = makeStringKeys(_:)(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v16;
}

uint64_t specialized CurrentRequest.stringKeys.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime16StringKeyedValueVGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime16StringKeyedValueVGMR);
  v0 = type metadata accessor for StringKeyedValue();
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DCA76BE0;
  v4 = (v3 + v2);
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v6 = v4 + *(v0 + 24);
  TypeIdentifier.init(for:)();
  *v4 = 0x6449666572;
  v4[1] = 0xE500000000000000;
  v4[2] = KeyPath;
  v7 = (v4 + v1);
  v8 = swift_getKeyPath();
  v9 = v4 + v1 + *(v0 + 24);
  TypeIdentifier.init(for:)();
  *v7 = 0x6449656361;
  v7[1] = 0xE500000000000000;
  v7[2] = v8;
  v10 = (v4 + 2 * v1);
  v11 = swift_getKeyPath();
  v12 = v10 + *(v0 + 24);
  TypeIdentifier.init(for:)();
  *v10 = 0xD000000000000012;
  v10[1] = 0x80000001DCA7AEC0;
  v10[2] = v11;
  v13 = (v4 + 3 * v1);
  v14 = swift_getKeyPath();
  v15 = v13 + *(v0 + 24);
  TypeIdentifier.init(for:)();
  *v13 = 0xD00000000000001ALL;
  v13[1] = 0x80000001DCA7B340;
  v13[2] = v14;
  v16 = (v4 + 4 * v1);
  v17 = swift_getKeyPath();
  v18 = v16 + *(v0 + 24);
  TypeIdentifier.init(for:)();
  *v16 = 0x656D614E72656570;
  v16[1] = 0xE800000000000000;
  v16[2] = v17;
  v19 = (v4 + 5 * v1);
  v20 = swift_getKeyPath();
  type metadata accessor for InputOrigin();
  v21 = v19 + *(v0 + 24);
  TypeIdentifier.init(for:)();
  *v19 = 0x69724F7475706E69;
  v19[1] = 0xEB000000006E6967;
  v19[2] = v20;
  v22 = (v4 + 6 * v1);
  v23 = swift_getKeyPath();
  type metadata accessor for InteractionType();
  v24 = v22 + *(v0 + 24);
  TypeIdentifier.init(for:)();
  *v22 = 0x7463617265746E69;
  v22[1] = 0xEF657079546E6F69;
  v22[2] = v23;
  v25 = (v4 + 7 * v1);
  v26 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v27 = v25 + *(v0 + 24);
  TypeIdentifier.init(for:)();
  *v25 = 0x756F536F69647561;
  v25[1] = 0xEB00000000656372;
  v25[2] = v26;
  v28 = &v4[v1];
  v29 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v30 = v28 + *(v0 + 24);
  TypeIdentifier.init(for:)();
  *v28 = 0xD000000000000010;
  v28[1] = 0x80000001DCA867E0;
  v28[2] = v29;
  v31 = v4 + 9 * v1;
  v32 = swift_getKeyPath();
  type metadata accessor for ResponseMode();
  v33 = &v31[*(v0 + 24)];
  TypeIdentifier.init(for:)();
  strcpy(v31, "responseMode");
  v31[13] = 0;
  *(v31 + 7) = -5120;
  *(v31 + 2) = v32;
  v34 = v4 + 10 * v1;
  v35 = swift_getKeyPath();
  type metadata accessor for MultiUserState();
  v36 = &v34[*(v0 + 24)];
  TypeIdentifier.init(for:)();
  strcpy(v34, "multiUserState");
  v34[15] = -18;
  *(v34 + 2) = v35;
  v37 = v4 + 11 * v1;
  v38 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v39 = &v37[*(v0 + 24)];
  TypeIdentifier.init(for:)();
  strcpy(v37, "bargeInContext");
  v37[15] = -18;
  *(v37 + 2) = v38;
  v40 = (v4 + 12 * v1);
  v41 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  v42 = v40 + *(v0 + 24);
  TypeIdentifier.init(for:)();
  *v40 = 0x74616E696769726FLL;
  v40[1] = 0xEF656D6F48676E69;
  v40[2] = v41;
  v43 = v4 + 13 * v1;
  v44 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15AFSpeechPackageCSgMd, &_sSo15AFSpeechPackageCSgMR);
  v45 = &v43[*(v0 + 24)];
  TypeIdentifier.init(for:)();
  strcpy(v43, "speechPackage");
  *(v43 + 7) = -4864;
  *(v43 + 2) = v44;
  v46 = (v4 + 14 * v1);
  v47 = swift_getKeyPath();
  v48 = v46 + *(v0 + 24);
  TypeIdentifier.init(for:)();
  *v46 = 0xD000000000000011;
  v46[1] = 0x80000001DCA7AB40;
  v46[2] = v47;
  v49 = (v4 + 15 * v1);
  v50 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
  v51 = v49 + *(v0 + 24);
  TypeIdentifier.init(for:)();
  *v49 = 0x7665446E4F727361;
  v49[1] = 0xEB00000000656369;
  v49[2] = v50;
  v52 = &v4[2 * v1];
  v53 = swift_getKeyPath();
  type metadata accessor for RequestPositionInSession();
  v54 = v52 + *(v0 + 24);
  TypeIdentifier.init(for:)();
  *v52 = 0xD000000000000011;
  v52[1] = 0x80000001DCA86900;
  v52[2] = v53;
  v55 = makeStringKeys(_:)(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v55;
}

uint64_t instantiation function for generic protocol witness table for CurrentDevice(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CurrentDevice and conformance CurrentDevice(&lazy protocol witness table cache variable for type CurrentDevice and conformance CurrentDevice, MEMORY[0x1E69D3580]);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for NetworkAvailability(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CurrentDevice and conformance CurrentDevice(&lazy protocol witness table cache variable for type NetworkAvailability and conformance NetworkAvailability, MEMORY[0x1E69D3638]);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for CurrentRequest(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CurrentDevice and conformance CurrentDevice(&lazy protocol witness table cache variable for type CurrentRequest and conformance CurrentRequest, MEMORY[0x1E69CE570]);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for CallStateEnvironmentProvider(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CurrentDevice and conformance CurrentDevice(&lazy protocol witness table cache variable for type CallStateEnvironmentProvider and conformance CallStateEnvironmentProvider, MEMORY[0x1E69D0098]);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CurrentDevice and conformance CurrentDevice(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for StringKeyedValue(char *a1, char *a2, uint64_t a3)
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
    v5 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v5;
    *(a1 + 2) = *(a2 + 2);
    v6 = *(a3 + 24);
    v8 = type metadata accessor for TypeIdentifier();
    v9 = *(*(v8 - 8) + 16);

    v9(&v3[v6], &a2[v6], v8);
  }

  return v3;
}

uint64_t destroy for StringKeyedValue(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);

  v5 = *(a1 + 16);

  v6 = *(a2 + 24);
  v7 = type metadata accessor for TypeIdentifier();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1 + v6, v7);
}

char *initializeWithCopy for StringKeyedValue(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  *(a1 + 2) = *(a2 + 2);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for TypeIdentifier();
  v8 = *(*(v7 - 8) + 16);

  v8(&a1[v6], &a2[v6], v7);
  return a1;
}

char *assignWithCopy for StringKeyedValue(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a1 + 1);
  *(a1 + 1) = *(a2 + 1);

  v7 = *(a1 + 2);
  *(a1 + 2) = *(a2 + 2);

  v8 = *(a3 + 24);
  v9 = type metadata accessor for TypeIdentifier();
  (*(*(v9 - 8) + 24))(&a1[v8], &a2[v8], v9);
  return a1;
}

uint64_t initializeWithTake for StringKeyedValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a3 + 24);
  v6 = type metadata accessor for TypeIdentifier();
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  return a1;
}

char *assignWithTake for StringKeyedValue(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  v7 = *(a1 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v8 = *(a1 + 2);
  *(a1 + 2) = *(a2 + 2);

  v9 = *(a3 + 24);
  v10 = type metadata accessor for TypeIdentifier();
  (*(*(v10 - 8) + 40))(&a1[v9], &a2[v9], v10);
  return a1;
}

uint64_t type metadata completion function for StringKeyedValue()
{
  result = type metadata accessor for TypeIdentifier();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *StubCamBridge.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static StubCamBridge.shared;
}

uint64_t StubCamBridge.camBridgeState.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t StubCamBridge.camBridgeState.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t StubCamBridge.warmupCalls.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t StubCamBridge.rankCallsArgs.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t StubCamBridge.rankCallsArgs.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t StubCamBridge.RankCallArgs.rcId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t StubCamBridge.RankCallArgs.rankerContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StubCamBridge.RankCallArgs() + 24);
  v4 = type metadata accessor for RankerContext();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StubCamBridge.RankCallArgs.init(rcId:actions:rankerContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = a3;
  v7 = *(type metadata accessor for StubCamBridge.RankCallArgs() + 24);
  v8 = type metadata accessor for RankerContext();
  v9 = *(*(v8 - 8) + 32);

  return v9(&a5[v7], a4, v8);
}

uint64_t StubCamBridge.asyncWarmUpIfSupported()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v13[-v3];
  swift_beginAccess();
  v5 = *(v0 + 24);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_5;
  }

  *(v0 + 24) = v7;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  if (one-time initialization token for shared != -1)
  {
LABEL_5:
    swift_once();
  }

  swift_beginAccess();
  v9 = static MessageBusActor.shared;
  v10 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;

  return _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in StubCamBridge.asyncWarmUpIfSupported(), v11);
}

uint64_t StubCamBridge.commit(rcId:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t StubCamBridge.commit(action:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t StubCamBridge.rank(rcId:actions:rankerContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for CamParse();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v56 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_7SiriCam15ActionCandidateV7elementtMd, &_sSi6offset_7SiriCam15ActionCandidateV7elementtMR);
  v12 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  v52 = (&v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v54 = &v46 - v15;
  v53 = type metadata accessor for RankedAction();
  v57 = *(v53 - 8);
  v16 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for StubCamBridge.RankCallArgs();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v24 + 32);
  v26 = type metadata accessor for RankerContext();
  (*(*(v26 - 8) + 16))(&v23[v25], a4, v26);
  *v23 = a1;
  *(v23 + 1) = a2;
  *(v23 + 2) = a3;
  swift_beginAccess();
  v27 = *(v4 + 32);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 32) = v27;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27[2] + 1, 1, v27);
    *(v4 + 32) = v27;
  }

  v30 = v27[2];
  v29 = v27[3];
  if (v30 >= v29 >> 1)
  {
    v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v29 > 1, v30 + 1, 1, v27);
  }

  v27[2] = v30 + 1;
  outlined init with take of StubCamBridge.RankCallArgs(v23, v27 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v30);
  *(v4 + 32) = v27;
  swift_endAccess();
  v31 = *(a3 + 16);
  v32 = MEMORY[0x1E69E7CC0];
  if (v31)
  {
    v59 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31, 0);
    v33 = 0;
    v51 = type metadata accessor for ActionCandidate();
    v34 = *(v51 - 8);
    v35 = *(v34 + 16);
    v49 = v34 + 16;
    v50 = v35;
    v36 = a3 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    v32 = v59;
    v37 = *(v34 + 72);
    v47 = (v34 + 32);
    v48 = v37;
    v46 = v57 + 32;
    do
    {
      v58 = v32;
      v39 = v54;
      v38 = v55;
      v40 = *(v55 + 48);
      v41 = v51;
      v50(&v54[v40], v36, v51);
      v42 = v52;
      *v52 = v33;
      (*v47)(v42 + *(v38 + 48), &v39[v40], v41);
      ActionCandidate.flowHandlerId.getter();
      ActionCandidate.parse.getter();
      ActionCandidate.userData.getter();
      v32 = v58;
      RankedAction.init(flowHandlerId:parse:score:alternatives:userData:)();
      outlined destroy of ReferenceResolutionClientProtocol?(v42, &_sSi6offset_7SiriCam15ActionCandidateV7elementtMd, &_sSi6offset_7SiriCam15ActionCandidateV7elementtMR);
      v59 = v32;
      v44 = *(v32 + 16);
      v43 = *(v32 + 24);
      if (v44 >= v43 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v43 > 1, v44 + 1, 1);
        v32 = v59;
      }

      ++v33;
      *(v32 + 16) = v44 + 1;
      (*(v57 + 32))(v32 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v44, v18, v53);
      v36 += v48;
      --v31;
    }

    while (v31);
  }

  return v32;
}

uint64_t StubCamBridge.action(requestId:camId:rcId:speechPackage:rankedActions:inputOrigin:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t StubCamBridge.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a1;
  v5[6] = a5;
  v6 = type metadata accessor for Parse();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v9 = type metadata accessor for Input();
  v5[11] = v9;
  v10 = *(v9 - 8);
  v5[12] = v10;
  v11 = *(v10 + 64) + 15;
  v5[13] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v13 = type metadata accessor for PluginAction();
  v5[15] = v13;
  v14 = *(v13 - 8);
  v5[16] = v14;
  v15 = *(v14 + 64) + 15;
  v5[17] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](StubCamBridge.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:), v16, 0);
}

uint64_t StubCamBridge.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:)()
{
  if (*(v0[6] + 16))
  {
    v1 = v0[17];
    v2 = v0[13];
    v3 = v0[14];
    v4 = v0[12];
    v31 = v0[11];
    v5 = v0[10];
    v6 = v0[7];
    v7 = v0[8];
    v8 = *(type metadata accessor for RankedAction() - 8);
    v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v10 = type metadata accessor for ActionParaphrase();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
    RankedAction.toPluginAction(withSpeechPackage:withParaphrase:)(0, v3, v1);
    outlined destroy of ReferenceResolutionClientProtocol?(v3, &_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
    PluginAction.input.getter();
    Input.parse.getter();
    (*(v4 + 8))(v2, v31);
    v11 = (*(v7 + 88))(v5, v6);
    LODWORD(v9) = *MEMORY[0x1E69D0178];
    (*(v7 + 8))(v5, v6);
    v13 = v0[16];
    v12 = v0[17];
    v14 = v0[15];
    if (v11 == v9)
    {
      v15 = v0[5];
      (*(v0[8] + 104))(v0[9], v11, v0[7]);
      Input.init(parse:)();
      (*(v13 + 8))(v12, v14);
      v16 = type metadata accessor for CamOutput();
      swift_storeEnumTagMultiPayload();
      (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
    }

    else
    {
      v19 = v0[5];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow12PluginActionVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow12PluginActionVGMR);
      v20 = *(v13 + 72);
      v21 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1DCA66060;
      (*(v13 + 32))(v22 + v21, v12, v14);
      *v19 = v22;
      v23 = type metadata accessor for CamOutput();
      swift_storeEnumTagMultiPayload();
      (*(*(v23 - 8) + 56))(v19, 0, 1, v23);
    }
  }

  else
  {
    v17 = v0[5];
    (*(v0[8] + 104))(v0[9], *MEMORY[0x1E69D0178], v0[7]);
    Input.init(parse:)();
    v18 = type metadata accessor for CamOutput();
    swift_storeEnumTagMultiPayload();
    (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
  }

  v24 = v0[17];
  v25 = v0[13];
  v26 = v0[14];
  v28 = v0[9];
  v27 = v0[10];

  v29 = v0[1];

  return v29();
}

void *one-time initialization function for shared()
{
  type metadata accessor for StubCamBridge();
  v0 = swift_allocObject();
  result = StubCamBridge.init()();
  static StubCamBridge.shared = v0;
  return result;
}

uint64_t type metadata accessor for StubCamBridge.RankCallArgs()
{
  result = type metadata singleton initialization cache for StubCamBridge.RankCallArgs;
  if (!type metadata singleton initialization cache for StubCamBridge.RankCallArgs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for closure #1 in StubCamBridge.asyncWarmUpIfSupported()()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in CamBridgeImpl.asyncWarmUpIfSupported()();
}

uint64_t StubCamBridge.__allocating_init()()
{
  v0 = swift_allocObject();
  StubCamBridge.init()();
  return v0;
}

uint64_t static StubCamBridge.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static StubCamBridge.shared.setter(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static StubCamBridge.shared = a1;
}

uint64_t (*static StubCamBridge.shared.modify())()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static FeatureToggle.forceEnabled.modify in conformance AmbiguityFeatureFlags;
}

uint64_t key path getter for static StubCamBridge.shared : StubCamBridge.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static StubCamBridge.shared;
}

uint64_t key path setter for static StubCamBridge.shared : StubCamBridge.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = one-time initialization token for shared;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static StubCamBridge.shared = v1;
}

uint64_t StubCamBridge.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t StubCamBridge.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

void *StubCamBridge.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(*(v11 - 8) + 56);
  v12(v10, 1, 1, v11);
  v12(v7, 1, 1, v11);
  v12(v4, 1, 1, v11);
  v13 = type metadata accessor for CamBridgeState();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  *(v16 + 16) = MEMORY[0x1E69E7CC8];
  outlined init with take of UUID?(v10, v16 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_requestLoggingId);
  outlined init with take of UUID?(v7, v16 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_camLoggingId);
  outlined init with take of UUID?(v4, v16 + OBJC_IVAR____TtC14SiriKitRuntime14CamBridgeState_caarLoggingId);
  v0[2] = v16;
  v0[3] = 0;
  v0[4] = MEMORY[0x1E69E7CC0];
  return v0;
}

uint64_t protocol witness for CamBridge.camBridgeState.getter in conformance StubCamBridge()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
}

uint64_t protocol witness for CamBridge.action(requestId:camId:rcId:speechPackage:rankedActions:inputOrigin:) in conformance StubCamBridge()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t protocol witness for CamBridge.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:) in conformance StubCamBridge(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return StubCamBridge.selectAction(rcId:speechPackage:rankedActions:conversationHelperInput:conversationHelper:inputOrigin:)(a1, v8, v9, v10, a5);
}

uint64_t protocol witness for CamBridge.rank(rcId:actions:rankerContext:) in conformance StubCamBridge(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](protocol witness for CamBridge.rank(rcId:actions:rankerContext:) in conformance StubCamBridge, v6, 0);
}

uint64_t protocol witness for CamBridge.rank(rcId:actions:rankerContext:) in conformance StubCamBridge()
{
  v1 = **(v0 + 72);
  v2 = StubCamBridge.rank(rcId:actions:rankerContext:)(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t outlined init with take of StubCamBridge.RankCallArgs(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StubCamBridge.RankCallArgs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *initializeBufferWithCopyOfBuffer for StubCamBridge.RankCallArgs(char *a1, char *a2, uint64_t a3)
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
    v5 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v5;
    *(a1 + 2) = *(a2 + 2);
    v6 = *(a3 + 24);
    v8 = type metadata accessor for RankerContext();
    v9 = *(*(v8 - 8) + 16);

    v9(&v3[v6], &a2[v6], v8);
  }

  return v3;
}

uint64_t destroy for StubCamBridge.RankCallArgs(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);

  v5 = *(a1 + 16);

  v6 = *(a2 + 24);
  v7 = type metadata accessor for RankerContext();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1 + v6, v7);
}

char *initializeWithCopy for StubCamBridge.RankCallArgs(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  *(a1 + 2) = *(a2 + 2);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for RankerContext();
  v8 = *(*(v7 - 8) + 16);

  v8(&a1[v6], &a2[v6], v7);
  return a1;
}

char *assignWithCopy for StubCamBridge.RankCallArgs(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a1 + 1);
  *(a1 + 1) = *(a2 + 1);

  v7 = *(a1 + 2);
  *(a1 + 2) = *(a2 + 2);

  v8 = *(a3 + 24);
  v9 = type metadata accessor for RankerContext();
  (*(*(v9 - 8) + 24))(&a1[v8], &a2[v8], v9);
  return a1;
}

uint64_t initializeWithTake for StubCamBridge.RankCallArgs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a3 + 24);
  v6 = type metadata accessor for RankerContext();
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  return a1;
}

char *assignWithTake for StubCamBridge.RankCallArgs(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  v7 = *(a1 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v8 = *(a1 + 2);
  *(a1 + 2) = *(a2 + 2);

  v9 = *(a3 + 24);
  v10 = type metadata accessor for RankerContext();
  (*(*(v10 - 8) + 40))(&a1[v9], &a2[v9], v10);
  return a1;
}

uint64_t type metadata completion function for StubCamBridge.RankCallArgs()
{
  result = type metadata accessor for RankerContext();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t FeatureToggle<>.isEnabled.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = (*(a3 + 16))(a1, a3);
  MEMORY[0x1E12A1380](v12, v4, v8, a1, MEMORY[0x1E69E6370], *(a3 + 8));

  v9 = v12[0];
  if (LOBYTE(v12[0]) == 2)
  {
    v12[3] = a1;
    v12[4] = a2;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
    (*(*(a1 - 8) + 16))(boxed_opaque_existential_0, v4, a1);
    v9 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  return v9 & 1;
}

uint64_t FeatureToggle<>.withForcedEnabled<A>(_:block:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v26 = a5;
  v27 = a6;
  v24[1] = a3;
  v25 = a2;
  v11 = a1;
  v24[0] = a8;
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (*(v17 + 16))(v18, v17, v14);
  MEMORY[0x1E12A1380](v28, v8, v19, a4, MEMORY[0x1E69E6370], *(a7 + 8));

  v20 = LOBYTE(v28[0]);
  (*(v12 + 16))(v16, v8, a4);
  v29 = v11;
  v21 = (*(a7 + 32))(v28, a4, a7);
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  v22 = v21(v28, 0);
  v25(v22);
  return $defer #1 <A><A1>() in FeatureToggle<>.withForcedEnabled<A>(_:block:)(v20, v8, a4, v26, v27, a7);
}

uint64_t FeatureToggle<>.withForcedEnabled<A>(_:block:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 96) = a8;
  *(v9 + 104) = v8;
  *(v9 + 80) = a6;
  *(v9 + 88) = a7;
  *(v9 + 64) = a4;
  *(v9 + 72) = a5;
  *(v9 + 146) = a2;
  *(v9 + 48) = a1;
  *(v9 + 56) = a3;
  v10 = *(a5 - 8);
  *(v9 + 112) = v10;
  v11 = *(v10 + 64) + 15;
  *(v9 + 120) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](FeatureToggle<>.withForcedEnabled<A>(_:block:), 0, 0);
}

uint64_t FeatureToggle<>.withForcedEnabled<A>(_:block:)()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 72);
  v15 = *(v0 + 56);
  v6 = *(v0 + 146);
  v7 = (*(v4 + 16))(v5, v4);
  MEMORY[0x1E12A1380](v3, v7, v5, MEMORY[0x1E69E6370], *(v4 + 8));

  *(v0 + 147) = *(v0 + 144);
  (*(v2 + 16))(v1, v3, v5);
  *(v0 + 145) = v6;
  v8 = (*(v4 + 32))(v0 + 16, v5, v4);
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  v8(v0 + 16, 0);
  v14 = (v15 + *v15);
  v9 = v15[1];
  v10 = swift_task_alloc();
  *(v0 + 128) = v10;
  *v10 = v0;
  v10[1] = FeatureToggle<>.withForcedEnabled<A>(_:block:);
  v11 = *(v0 + 64);
  v12 = *(v0 + 48);

  return v14(v12);
}

{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = FeatureToggle<>.withForcedEnabled<A>(_:block:);
  }

  else
  {
    v3 = FeatureToggle<>.withForcedEnabled<A>(_:block:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 120);
  $defer #1 <A><A1>() in FeatureToggle<>.withForcedEnabled<A>(_:block:)(*(v0 + 147), *(v0 + 104), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 120);
  $defer #1 <A><A1>() in FeatureToggle<>.withForcedEnabled<A>(_:block:)(*(v0 + 147), *(v0 + 104), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  v2 = *(v0 + 8);
  v3 = *(v0 + 136);

  return v2();
}

uint64_t $defer #1 <A><A1>() in FeatureToggle<>.withForcedEnabled<A>(_:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1;
  v9 = *(*(a3 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  if (v13 == 2)
  {
    v14 = (*(a6 + 32))(v20, a3, a6, v12);
    v15 = *(a6 + 8);
    type metadata accessor for Dictionary();
    Dictionary.removeValue(forKey:)();
    return v14(v20, 0);
  }

  else
  {
    (*(v11 + 16))(&v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v12);
    v20[39] = v8;
    v17 = (*(a6 + 32))(v20, a3, a6);
    v18 = *(a6 + 8);
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    return v17(v20, 0);
  }
}

uint64_t *SydneyConversationFeatureFlags.forceEnabled.unsafeMutableAddressor()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  return &static SydneyConversationFeatureFlags.forceEnabled;
}

uint64_t (*static SydneyConversationFeatureFlags.forceEnabled.modify())()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static FeatureToggle.forceEnabled.modify in conformance AmbiguityFeatureFlags;
}

const char *SydneyConversationFeatureFlags.feature.getter(char a1)
{
  if (!a1)
  {
    return "fall2022_conversation_runtime";
  }

  if (a1 == 1)
  {
    return "SKESiriCorrectionsCheckUndo";
  }

  return "SKESiriCorrectionsUndoFollowup";
}

Swift::Int SydneyConversationFeatureFlags.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](a1);
  return Hasher._finalize()();
}

const char *protocol witness for FeatureFlagsKey.feature.getter in conformance SydneyConversationFeatureFlags()
{
  v1 = "SKESiriCorrectionsCheckUndo";
  if (*v0 != 1)
  {
    v1 = "SKESiriCorrectionsUndoFollowup";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "fall2022_conversation_runtime";
  }
}

uint64_t (*protocol witness for static FeatureToggle.forceEnabled.modify in conformance SydneyConversationFeatureFlags())()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static FeatureToggle.forceEnabled.modify in conformance AmbiguityFeatureFlags;
}

uint64_t *SiriKitFlowFeatureFlagDefinitions.forceEnabled.unsafeMutableAddressor()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  return &static SiriKitFlowFeatureFlagDefinitions.forceEnabled;
}

uint64_t (*static SiriKitFlowFeatureFlagDefinitions.forceEnabled.modify())()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static FeatureToggle.forceEnabled.modify in conformance AmbiguityFeatureFlags;
}

uint64_t (*protocol witness for static FeatureToggle.forceEnabled.modify in conformance SiriKitFlowFeatureFlagDefinitions())()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static FeatureToggle.forceEnabled.modify in conformance AmbiguityFeatureFlags;
}

uint64_t *SiriPlaybackControlFeature.forceEnabled.unsafeMutableAddressor()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  return &static SiriPlaybackControlFeature.forceEnabled;
}

uint64_t (*static SiriPlaybackControlFeature.forceEnabled.modify())()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static FeatureToggle.forceEnabled.modify in conformance AmbiguityFeatureFlags;
}

uint64_t (*protocol witness for static FeatureToggle.forceEnabled.modify in conformance SiriPlaybackControlFeature())()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static FeatureToggle.forceEnabled.modify in conformance AmbiguityFeatureFlags;
}

uint64_t *SiriPhoneFeature.forceEnabled.unsafeMutableAddressor()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  return &static SiriPhoneFeature.forceEnabled;
}

uint64_t (*static SiriPhoneFeature.forceEnabled.modify())()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static AmbiguityFeatureFlags.forceEnabled.modify;
}

uint64_t (*protocol witness for static FeatureToggle.forceEnabled.modify in conformance SiriPhoneFeature())()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static FeatureToggle.forceEnabled.modify in conformance AmbiguityFeatureFlags;
}

uint64_t *LinkFeature.forceEnabled.unsafeMutableAddressor()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  return &static LinkFeature.forceEnabled;
}

uint64_t static SydneyConversationFeatureFlags.forceEnabled.getter(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *a2;
}

uint64_t static SydneyConversationFeatureFlags.forceEnabled.setter(uint64_t a1, void *a2, uint64_t *a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a3;
  *a3 = a1;
}

uint64_t (*static LinkFeature.forceEnabled.modify())()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static FeatureToggle.forceEnabled.modify in conformance AmbiguityFeatureFlags;
}

uint64_t key path getter for static SydneyConversationFeatureFlags.forceEnabled : SydneyConversationFeatureFlags.Type@<X0>(void *a1@<X3>, void *a2@<X4>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a3 = *a2;
}

uint64_t key path setter for static SydneyConversationFeatureFlags.forceEnabled : SydneyConversationFeatureFlags.Type(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = *a1;
  v8 = *a5;

  if (v8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = *a6;
  *a6 = v7;
}

Swift::Int LinkFeature.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](0);
  return Hasher._finalize()();
}

unint64_t instantiation function for generic protocol witness table for SydneyConversationFeatureFlags(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SydneyConversationFeatureFlags and conformance SydneyConversationFeatureFlags();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for SiriKitFlowFeatureFlagDefinitions(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SiriKitFlowFeatureFlagDefinitions and conformance SiriKitFlowFeatureFlagDefinitions();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for SiriPlaybackControlFeature(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SiriPlaybackControlFeature and conformance SiriPlaybackControlFeature();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for SiriPhoneFeature(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SiriPhoneFeature and conformance SiriPhoneFeature();
  *(a1 + 8) = result;
  return result;
}

uint64_t protocol witness for static FeatureToggle.forceEnabled.getter in conformance SydneyConversationFeatureFlags(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a4;
}

uint64_t protocol witness for static FeatureToggle.forceEnabled.setter in conformance SydneyConversationFeatureFlags(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  if (*a4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = *a5;
  *a5 = a1;
}

uint64_t (*protocol witness for static FeatureToggle.forceEnabled.modify in conformance LinkFeature())()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static FeatureToggle.forceEnabled.modify in conformance AmbiguityFeatureFlags;
}

unint64_t instantiation function for generic protocol witness table for LinkFeature(uint64_t a1)
{
  result = lazy protocol witness table accessor for type LinkFeature and conformance LinkFeature();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v25 = a1;
  v6 = type metadata accessor for UsoEntitySpan();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v22 = v7;
    v23 = a3;
    v14 = *(v7 + 16);
    v13 = v7 + 16;
    v24 = v14;
    v15 = (v13 - 8);
    v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    while (1)
    {
      v24(v11, v16, v6, v9);
      v18 = v25(v11);
      if (v3)
      {
        return (*v15)(v11, v6);
      }

      if (v18)
      {
        break;
      }

      (*v15)(v11, v6);
      v16 += v17;
      if (!--v12)
      {
        v19 = 1;
        v7 = v22;
        a3 = v23;
        return (*(v7 + 56))(a3, v19, 1, v6);
      }
    }

    v7 = v22;
    a3 = v23;
    (*(v22 + 32))(v23, v11, v6);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v7 + 56))(a3, v19, 1, v6);
}

SiriKitRuntime::SystemCommandsAffinityScorer __swiftcall SystemCommandsAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CCF0;
  v1 = 0xD00000000000002FLL;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t *SystemCommandsAffinityScorer.kHKEntityTypes.unsafeMutableAddressor()
{
  if (one-time initialization token for kHKEntityTypes != -1)
  {
    swift_once();
  }

  return &static SystemCommandsAffinityScorer.kHKEntityTypes;
}

uint64_t *SystemCommandsAffinityScorer.kHAExactNamespaceMatches.unsafeMutableAddressor()
{
  if (one-time initialization token for kHAExactNamespaceMatches != -1)
  {
    swift_once();
  }

  return &static SystemCommandsAffinityScorer.kHAExactNamespaceMatches;
}

uint64_t one-time initialization function for kCarCommandsExactNamespaceMatches()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for kCarCommandsExactNamespaceMatches);
  result = swift_arrayDestroy();
  static SystemCommandsAffinityScorer.kCarCommandsExactNamespaceMatches = v0;
  return result;
}

uint64_t *SystemCommandsAffinityScorer.kCarCommandsExactNamespaceMatches.unsafeMutableAddressor()
{
  if (one-time initialization token for kCarCommandsExactNamespaceMatches != -1)
  {
    swift_once();
  }

  return &static SystemCommandsAffinityScorer.kCarCommandsExactNamespaceMatches;
}

uint64_t UsoTask.isExpandedSupportedSettingTask.getter()
{
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v4)
  {
    goto LABEL_9;
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v3, v2, &_sypSgMd, &_sypSgMR);
  type metadata accessor for UsoTask_checkExistence_common_Setting();
  if (!swift_dynamicCast())
  {
    type metadata accessor for UsoTask_noVerb_common_Setting();
    if (!swift_dynamicCast())
    {
      type metadata accessor for UsoTask_open_common_Setting();
      if (!swift_dynamicCast())
      {
        type metadata accessor for UsoTask_set_common_Setting();
        if (!swift_dynamicCast())
        {
          type metadata accessor for UsoTask_toggle_common_Setting();
          if (!swift_dynamicCast())
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v2);
LABEL_9:
            v0 = 0;
            goto LABEL_10;
          }
        }
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  v0 = 1;
LABEL_10:
  outlined destroy of ReferenceResolutionClientProtocol?(v3, &_sypSgMd, &_sypSgMR);
  return v0;
}

uint64_t Siri_Nlu_External_UsoGraph.isIdentifierMatchGuestMode.getter()
{
  v27 = type metadata accessor for Google_Protobuf_StringValue();
  v0 = *(v27 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = Siri_Nlu_External_UsoGraph.identifiers.getter();
  v10 = v9;
  v25[0] = *(v9 + 16);
  if (!v25[0])
  {
LABEL_14:

    return 0;
  }

  v11 = 0;
  v26 = v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v25[1] = v5 + 16;
  v12 = (v0 + 8);
  v13 = (v5 + 8);
  while (1)
  {
    if (v11 >= *(v10 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    (*(v5 + 16))(v8, v26 + *(v5 + 72) * v11, v4);
    Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
    v15 = Google_Protobuf_StringValue.value.getter();
    v17 = v16;
    (*v12)(v3, v27);
    if (v15 == 0x61436D6574737973 && v17 == 0xEE0079726F676574)
    {
    }

    else
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        (*v13)(v8, v4);
        goto LABEL_4;
      }
    }

    if (Siri_Nlu_External_UsoEntityIdentifier.value.getter() == 0x6D676E6972616873 && v19 == 0xEB0000000065646FLL)
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*v13)(v8, v4);
    if (v14)
    {
      goto LABEL_15;
    }

LABEL_4:
    if (v25[0] == ++v11)
    {
      goto LABEL_14;
    }
  }

  (*v13)(v8, v4);
LABEL_15:

  if (one-time initialization token for executor == -1)
  {
    goto LABEL_16;
  }

LABEL_20:
  swift_once();
LABEL_16:
  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.executor);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1DC659000, v22, v23, "SystemCommandsAffinityScorer | Found guest mode identifier", v24, 2u);
    MEMORY[0x1E12A2F50](v24, -1, -1);
  }

  return 1;
}

uint64_t specialized SystemCommandsAffinityScorer.isIdentifierMatchLock(on:)()
{
  v27 = type metadata accessor for Google_Protobuf_StringValue();
  v0 = *(v27 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = Siri_Nlu_External_UsoGraph.identifiers.getter();
  v10 = v9;
  v25[0] = *(v9 + 16);
  if (!v25[0])
  {
LABEL_14:

    return 0;
  }

  v11 = 0;
  v26 = v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v25[1] = v5 + 16;
  v12 = (v0 + 8);
  v13 = (v5 + 8);
  while (1)
  {
    if (v11 >= *(v10 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    (*(v5 + 16))(v8, v26 + *(v5 + 72) * v11, v4);
    Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
    v15 = Google_Protobuf_StringValue.value.getter();
    v17 = v16;
    (*v12)(v3, v27);
    if (v15 == 0x74416D6574737973 && v17 == 0xEF65747562697274)
    {
    }

    else
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        (*v13)(v8, v4);
        goto LABEL_4;
      }
    }

    if (Siri_Nlu_External_UsoEntityIdentifier.value.getter() == 1801678700 && v19 == 0xE400000000000000)
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*v13)(v8, v4);
    if (v14)
    {
      goto LABEL_15;
    }

LABEL_4:
    if (v25[0] == ++v11)
    {
      goto LABEL_14;
    }
  }

  (*v13)(v8, v4);
LABEL_15:

  if (one-time initialization token for executor == -1)
  {
    goto LABEL_16;
  }

LABEL_20:
  swift_once();
LABEL_16:
  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.executor);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1DC659000, v22, v23, "SystemCommandsAffinityScorer | Found lock identifier", v24, 2u);
    MEMORY[0x1E12A2F50](v24, -1, -1);
  }

  return 1;
}

uint64_t specialized SystemCommandsAffinityScorer.isIdentifierMatchScreen(on:)()
{
  v27 = type metadata accessor for Google_Protobuf_StringValue();
  v0 = *(v27 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = Siri_Nlu_External_UsoGraph.identifiers.getter();
  v10 = v9;
  v25[0] = *(v9 + 16);
  if (!v25[0])
  {
LABEL_14:

    return 0;
  }

  v11 = 0;
  v26 = v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v25[1] = v5 + 16;
  v12 = (v0 + 8);
  v13 = (v5 + 8);
  while (1)
  {
    if (v11 >= *(v10 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    (*(v5 + 16))(v8, v26 + *(v5 + 72) * v11, v4);
    Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
    v15 = Google_Protobuf_StringValue.value.getter();
    v17 = v16;
    (*v12)(v3, v27);
    if (v15 == 0x61436D6574737973 && v17 == 0xEE0079726F676574)
    {
    }

    else
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        (*v13)(v8, v4);
        goto LABEL_4;
      }
    }

    if (Siri_Nlu_External_UsoEntityIdentifier.value.getter() == 0x6E6565726373 && v19 == 0xE600000000000000)
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*v13)(v8, v4);
    if (v14)
    {
      goto LABEL_15;
    }

LABEL_4:
    if (v25[0] == ++v11)
    {
      goto LABEL_14;
    }
  }

  (*v13)(v8, v4);
LABEL_15:

  if (one-time initialization token for executor == -1)
  {
    goto LABEL_16;
  }

LABEL_20:
  swift_once();
LABEL_16:
  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.executor);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1DC659000, v22, v23, "SystemCommandsAffinityScorer | Found screen identifier", v24, 2u);
    MEMORY[0x1E12A2F50](v24, -1, -1);
  }

  return 1;
}

BOOL specialized SystemCommandsAffinityScorer.isIdentifierMatchAnswerProduct(on:)()
{
  v23 = type metadata accessor for Google_Protobuf_StringValue();
  v0 = *(v23 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v4 = *(v25 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Siri_Nlu_External_UsoGraph.identifiers.getter();
  v9 = 0;
  v24 = *(v8 + 16);
  v22 = v4 + 16;
  v10 = (v0 + 8);
  v11 = (v4 + 8);
  while (1)
  {
    v13 = v9;
    if (v24 == v9)
    {

      return v24 != v13;
    }

    if (v9 >= *(v8 + 16))
    {
      __break(1u);
      goto LABEL_15;
    }

    (*(v4 + 16))(v7, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v9, v25);
    Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
    v14 = Google_Protobuf_StringValue.value.getter();
    v16 = v15;
    (*v10)(v3, v23);
    if (v14 == 0x7250726577736E61 && v16 == 0xED0000746375646FLL)
    {
      break;
    }

    ++v9;
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*v11)(v7, v25);
    if (v12)
    {
      goto LABEL_8;
    }
  }

  (*v11)(v7, v25);
LABEL_8:

  if (one-time initialization token for executor == -1)
  {
    goto LABEL_9;
  }

LABEL_15:
  swift_once();
LABEL_9:
  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.executor);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1DC659000, v18, v19, "SystemCommandsAffinityScorer | Found answerProduct identifier", v20, 2u);
    MEMORY[0x1E12A2F50](v20, -1, -1);
  }

  return v24 != v13;
}

uint64_t specialized SystemCommandsAffinityScorer.isIdentifierMatchProduct(on:)()
{
  v27 = type metadata accessor for Google_Protobuf_StringValue();
  v0 = *(v27 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = Siri_Nlu_External_UsoGraph.identifiers.getter();
  v10 = v9;
  v25[0] = *(v9 + 16);
  if (!v25[0])
  {
LABEL_14:

    return 0;
  }

  v11 = 0;
  v26 = v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v25[1] = v5 + 16;
  v12 = (v0 + 8);
  v13 = (v5 + 8);
  while (1)
  {
    if (v11 >= *(v10 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    (*(v5 + 16))(v8, v26 + *(v5 + 72) * v11, v4);
    Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
    v15 = Google_Protobuf_StringValue.value.getter();
    v17 = v16;
    (*v12)(v3, v27);
    if (v15 == 0x7250726577736E61 && v17 == 0xED0000746375646FLL)
    {
    }

    else
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        (*v13)(v8, v4);
        goto LABEL_4;
      }
    }

    if (Siri_Nlu_External_UsoEntityIdentifier.value.getter() == 0x746375646F7270 && v19 == 0xE700000000000000)
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*v13)(v8, v4);
    if (v14)
    {
      goto LABEL_15;
    }

LABEL_4:
    if (v25[0] == ++v11)
    {
      goto LABEL_14;
    }
  }

  (*v13)(v8, v4);
LABEL_15:

  if (one-time initialization token for executor == -1)
  {
    goto LABEL_16;
  }

LABEL_20:
  swift_once();
LABEL_16:
  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.executor);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1DC659000, v22, v23, "SystemCommandsAffinityScorer | Found product identifier", v24, 2u);
    MEMORY[0x1E12A2F50](v24, -1, -1);
  }

  return 1;
}

BOOL specialized SystemCommandsAffinityScorer.hasHKExactMatch(_:)(uint64_t a1)
{
  v107 = type metadata accessor for SpanProperty();
  v2 = *(v107 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v106 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for IdentifierNamespace();
  v5 = *(v96 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v95 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for UsoEntitySpan();
  v8 = *(v99 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  v12 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82);
  v81 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v80 - v15;
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  v83 = &v80 - v19;
  v94 = *(a1 + 16);
  v84 = v8;
  if (v94)
  {
    v21 = *(v8 + 16);
    v20 = v8 + 16;
    v92 = v21;
    v91 = a1 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v22 = 0;
    v90 = *MEMORY[0x1E69D1B18];
    v89 = (v5 + 104);
    v88 = (v5 + 8);
    v104 = (v2 + 8);
    v105 = v2 + 16;
    v85 = (v20 - 8);
    v93 = v20;
    v87 = *(v20 + 56);
    v86 = xmmword_1DCA66060;
    v23 = v99;
    v101 = v2;
    v102 = v16;
    v100 = v11;
    while (1)
    {
      v103 = v22;
      v92(v11, v91 + v87 * v22, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      inited = swift_initStackObject();
      *(inited + 16) = v86;
      v26 = v95;
      v25 = v96;
      (*v89)(v95, v90, v96);
      v27 = IdentifierNamespace.rawValue.getter();
      v29 = v28;
      (*v88)(v26, v25);
      *(inited + 32) = v27;
      *(inited + 40) = v29;
      v30 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of String(inited + 32);
      v31 = UsoEntitySpan.properties.getter();
      v32 = *(v31 + 16);
      if (v32)
      {
        v98 = v30;
        v108 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32, 0);
        v33 = v108;
        v34 = *(v2 + 80);
        v97 = v31;
        v35 = v31 + ((v34 + 32) & ~v34);
        v36 = *(v2 + 72);
        v37 = *(v2 + 16);
        do
        {
          v38 = v106;
          v39 = v107;
          v37(v106, v35, v107);
          v40 = SpanProperty.key.getter();
          v42 = v41;
          (*v104)(v38, v39);
          v108 = v33;
          v44 = *(v33 + 16);
          v43 = *(v33 + 24);
          if (v44 >= v43 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1);
            v33 = v108;
          }

          *(v33 + 16) = v44 + 1;
          v45 = v33 + 16 * v44;
          *(v45 + 32) = v40;
          *(v45 + 40) = v42;
          v35 += v36;
          --v32;
        }

        while (v32);

        v2 = v101;
        v16 = v102;
        v11 = v100;
        v30 = v98;
      }

      else
      {

        v33 = MEMORY[0x1E69E7CC0];
      }

      v46 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v33);

      v47 = specialized Set.isDisjoint(with:)(v46, v30);

      if ((v47 & 1) == 0)
      {
        if (one-time initialization token for kHKEntityTypes != -1)
        {
          swift_once();
        }

        if (UsoEntitySpan.anyPropertiesValueMatchAny(value:)(static SystemCommandsAffinityScorer.kHKEntityTypes) && UsoEntitySpan.hasExactMatch()())
        {
          break;
        }
      }

      if (one-time initialization token for kHAExactNamespaceMatches != -1)
      {
        swift_once();
      }

      v48 = static SystemCommandsAffinityScorer.kHAExactNamespaceMatches;
      v49 = UsoEntitySpan.properties.getter();
      v50 = *(v49 + 16);
      if (v50)
      {
        v98 = v48;
        v108 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50, 0);
        v51 = v108;
        v52 = *(v2 + 80);
        v97 = v49;
        v53 = v49 + ((v52 + 32) & ~v52);
        v54 = *(v2 + 72);
        v55 = *(v2 + 16);
        do
        {
          v56 = v106;
          v57 = v107;
          v55(v106, v53, v107);
          v58 = SpanProperty.key.getter();
          v60 = v59;
          (*v104)(v56, v57);
          v108 = v51;
          v62 = *(v51 + 16);
          v61 = *(v51 + 24);
          if (v62 >= v61 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1);
            v51 = v108;
          }

          *(v51 + 16) = v62 + 1;
          v63 = v51 + 16 * v62;
          *(v63 + 32) = v58;
          *(v63 + 40) = v60;
          v53 += v54;
          --v50;
        }

        while (v50);

        v2 = v101;
        v16 = v102;
        v11 = v100;
        v48 = v98;
      }

      else
      {

        v51 = MEMORY[0x1E69E7CC0];
      }

      v64 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v51);

      v65 = specialized Set.isDisjoint(with:)(v64, v48);

      if ((v65 & 1) == 0 && UsoEntitySpan.isAttachmentFull()())
      {
        break;
      }

      v22 = v103 + 1;
      v23 = v99;
      (*v85)(v11, v99);
      if (v22 == v94)
      {
        v66 = 1;
        goto LABEL_30;
      }
    }

    v67 = v83;
    v23 = v99;
    (*(v84 + 32))(v83, v11, v99);
    v66 = 0;
  }

  else
  {
    v66 = 1;
    v23 = v99;
LABEL_30:
    v67 = v83;
  }

  (*(v84 + 56))(v67, v66, 1, v23, v18);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v68 = type metadata accessor for Logger();
  __swift_project_value_buffer(v68, static Logger.executor);
  outlined init with copy of ReferenceResolutionClientProtocol?(v67, v16, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v108 = v72;
    *v71 = 136315138;
    outlined init with copy of ReferenceResolutionClientProtocol?(v16, v81, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
    v73 = String.init<A>(describing:)();
    v75 = v74;
    outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
    v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, &v108);

    *(v71 + 4) = v76;
    _os_log_impl(&dword_1DC659000, v69, v70, "HomeAutomationAffinityScorer - Found HomeKitSpan with ExactMatch %s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v72);
    MEMORY[0x1E12A2F50](v72, -1, -1);
    MEMORY[0x1E12A2F50](v71, -1, -1);
  }

  else
  {

    outlined destroy of ReferenceResolutionClientProtocol?(v16, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  }

  v77 = v83;
  v78 = (*(v84 + 48))(v83, 1, v99) != 1;
  outlined destroy of ReferenceResolutionClientProtocol?(v77, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  return v78;
}

uint64_t specialized SystemCommandsAffinityScorer.hasEverywhereUserEntity(usoTask:)()
{
  v0 = type metadata accessor for UsoEntity_common_UserEntity.DefinedValues();
  v1 = *(v0 - 8);
  v2 = *(v1 + 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSg_AFtMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSg_AFtMR);
  v5 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v7 = &v48 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - v16;
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v77[3])
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v77, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology33Uso_VerbTemplate_ReferenceTriggerCyAA0C21Entity_common_SettingCGMd, &_s12SiriOntology33Uso_VerbTemplate_ReferenceTriggerCyAA0C21Entity_common_SettingCGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v70 = v0;
  v73 = v17;
  v62 = v14;
  v18 = v76;
  v19 = dispatch thunk of Uso_VerbTemplate_ReferenceTrigger.userEntities.getter();
  if (!v19)
  {
LABEL_75:

    return 0;
  }

  v20 = v19;
  v21 = v1;
  v77[0] = MEMORY[0x1E69E7CC0];
  v22 = v19 & 0xFFFFFFFFFFFFFF8;
  if (v19 >> 62)
  {
    goto LABEL_87;
  }

  v23 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v61 = v11;
  v58 = v4;
  v54 = v18;
  if (v23)
  {
    v4 = 0;
    v11 = (v20 & 0xC000000000000001);
    v55 = MEMORY[0x1E69E7CC0];
    do
    {
      v18 = v4;
      while (1)
      {
        if (v11)
        {
          MEMORY[0x1E12A1FE0](v18, v20);
          v4 = (v18 + 1);
          if (__OFADD__(v18, 1))
          {
            goto LABEL_83;
          }
        }

        else
        {
          if (v18 >= *(v22 + 16))
          {
            goto LABEL_84;
          }

          v24 = *(v20 + 8 * v18 + 32);

          v4 = (v18 + 1);
          if (__OFADD__(v18, 1))
          {
            goto LABEL_83;
          }
        }

        dispatch thunk of CodeGenListEntry.entry.getter();

        if (v76)
        {
          break;
        }

        ++v18;
        if (v4 == v23)
        {
          v18 = v54;
          goto LABEL_24;
        }
      }

      MEMORY[0x1E12A1680](v25);
      if (*((v77[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v26 = *((v77[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v55 = v77[0];
      v18 = v54;
    }

    while (v4 != v23);
  }

  else
  {
    v55 = MEMORY[0x1E69E7CC0];
  }

LABEL_24:

  v20 = v55;
  if (v55 >> 62)
  {
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
LABEL_74:

    goto LABEL_75;
  }

  v27 = 0;
  v52 = v20 & 0xC000000000000001;
  v51 = v20 & 0xFFFFFFFFFFFFFF8;
  v50 = v20 + 32;
  v66 = *MEMORY[0x1E69D1518];
  v64 = (v21 + 56);
  v65 = (v21 + 104);
  v59 = v21 + 48;
  v57 = (v21 + 32);
  v60 = (v21 + 8);
  v49 = v4;
  while (1)
  {
    if (v52)
    {
      v21 = MEMORY[0x1E12A1FE0](v27, v20);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_85;
      }
    }

    else
    {
      if (v27 >= *(v51 + 16))
      {
        goto LABEL_86;
      }

      v21 = *(v50 + 8 * v27);

      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_85;
      }
    }

    v56 = v29;
    v30 = dispatch thunk of UsoEntity_common_UserEntity.associatedUserEntities.getter();
    if (!v30)
    {
      goto LABEL_29;
    }

    v31 = v30;
    v77[0] = v22;
    v20 = v30 & 0xFFFFFFFFFFFFFF8;
    if (v30 >> 62)
    {
      v18 = __CocoaSet.count.getter();
      v32 = v22;
      if (!v18)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v18 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v32 = v22;
      if (!v18)
      {
        goto LABEL_50;
      }
    }

    v4 = 0;
    v22 = v31 & 0xC000000000000001;
    do
    {
      v71 = v32;
      v33 = v4;
      while (1)
      {
        if (v22)
        {
          MEMORY[0x1E12A1FE0](v33, v31);
          v4 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            goto LABEL_79;
          }
        }

        else
        {
          if (v33 >= *(v20 + 16))
          {
            goto LABEL_80;
          }

          v34 = *(v31 + 8 * v33 + 32);

          v4 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
LABEL_87:
            v23 = __CocoaSet.count.getter();
            goto LABEL_6;
          }
        }

        dispatch thunk of CodeGenListEntry.entry.getter();

        v11 = v76;
        if (v76)
        {
          break;
        }

        ++v33;
        if (v4 == v18)
        {
          v32 = v71;
          goto LABEL_50;
        }
      }

      MEMORY[0x1E12A1680](v35);
      if (*((v77[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v36 = *((v77[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v32 = v77[0];
    }

    while (v4 != v18);
LABEL_50:
    v53 = v21;

    v4 = v32 >> 62 ? __CocoaSet.count.getter() : *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = v62;
    v22 = v59;
    v21 = &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd;
    v20 = &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR;
    if (v4)
    {
      break;
    }

LABEL_28:

    v18 = v54;
    v22 = MEMORY[0x1E69E7CC0];
    v20 = v55;
    v4 = v49;
    v21 = v53;
LABEL_29:

    v27 = v56;
    if (v56 == v4)
    {
      goto LABEL_74;
    }
  }

  v18 = 0;
  v68 = v32 & 0xFFFFFFFFFFFFFF8;
  v69 = v32 & 0xC000000000000001;
  v71 = v32;
  v67 = v4;
  while (1)
  {
    if (v69)
    {
      v37 = MEMORY[0x1E12A1FE0](v18, v32);
      v38 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_81;
      }
    }

    else
    {
      if (v18 >= *(v68 + 16))
      {
        goto LABEL_82;
      }

      v37 = *(v32 + 8 * v18 + 32);

      v38 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_81;
      }
    }

    v74 = v18;
    v75 = v38;
    v39 = v73;
    dispatch thunk of UsoEntity_common_UserEntity.definedValue.getter();
    v40 = v70;
    (*v65)(v11, v66, v70);
    (*v64)(v11, 0, 1, v40);
    v41 = *(v72 + 48);
    outlined init with copy of ReferenceResolutionClientProtocol?(v39, v7, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v11, &v7[v41], &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
    v42 = *v22;
    if ((*v22)(v7, 1, v40) == 1)
    {
      break;
    }

    v63 = v37;
    v43 = v61;
    outlined init with copy of ReferenceResolutionClientProtocol?(v7, v61, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
    if (v42(&v7[v41], 1, v40) == 1)
    {

      v11 = v62;
      outlined destroy of ReferenceResolutionClientProtocol?(v62, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v73, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
      (*v60)(v43, v40);
      goto LABEL_55;
    }

    v44 = v58;
    (*v57)(v58, &v7[v41], v40);
    _s12SiriOntology21PayloadAttachmentInfoV0D4TypeOAESYAAWlTm_0(&lazy protocol witness table cache variable for type UsoEntity_common_UserEntity.DefinedValues and conformance UsoEntity_common_UserEntity.DefinedValues, MEMORY[0x1E69D1530]);
    v45 = dispatch thunk of static Equatable.== infix(_:_:)();

    v46 = *v60;
    (*v60)(v44, v40);
    v11 = v62;
    outlined destroy of ReferenceResolutionClientProtocol?(v62, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v73, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
    v46(v43, v40);
    v22 = v59;
    outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
    v32 = v71;
    if (v45)
    {
      goto LABEL_78;
    }

LABEL_56:
    v18 = v74 + 1;
    v4 = v67;
    if (v75 == v67)
    {
      goto LABEL_28;
    }
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v39, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
  if (v42(&v7[v41], 1, v40) != 1)
  {
LABEL_55:
    outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSg_AFtMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSg_AFtMR);
    v32 = v71;
    goto LABEL_56;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMd, &_s12SiriOntology021UsoEntity_common_UserD0C13DefinedValuesOSgMR);
LABEL_78:

  return 1;
}

BOOL specialized SystemCommandsAffinityScorer.hasHKFuzzyMatch(_:)(uint64_t a1)
{
  matched = type metadata accessor for MatchInfo.MatchSignals();
  v2 = *(matched - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](matched);
  v5 = &v131 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9MatchInfoVSgMd, &_s12SiriOntology9MatchInfoVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v148 = &v131 - v8;
  v154 = type metadata accessor for MatchInfo();
  v9 = *(v154 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v154);
  v165 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v150 = &v131 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v149 = &v131 - v17;
  v152 = type metadata accessor for PayloadAttachmentInfo.AttachmentType();
  v18 = *(v152 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v152);
  v140 = &v131 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v139 = &v131 - v22;
  v181 = type metadata accessor for SpanProperty();
  v23 = *(v181 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v181);
  v180 = &v131 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for IdentifierNamespace();
  v26 = *(v175 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v175);
  v174 = &v131 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for UsoEntitySpan();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v131 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  v34 = *(*(v132 - 8) + 64);
  MEMORY[0x1EEE9AC00](v132);
  v131 = &v131 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v133 = &v131 - v37;
  v39.n128_f64[0] = MEMORY[0x1EEE9AC00](v38);
  v138 = &v131 - v40;
  v41 = *(a1 + 16);
  v162 = v29;
  v141 = v30;
  v160 = v41;
  if (!v41)
  {
    v115 = 1;
    v116 = v30;
LABEL_36:
    v117 = v138;
    goto LABEL_39;
  }

  v43 = *(v30 + 16);
  v42 = v30 + 16;
  v158 = v43;
  v157 = a1 + ((*(v42 + 64) + 32) & ~*(v42 + 64));
  v172 = (v26 + 104);
  v156 = *MEMORY[0x1E69D1B18];
  v171 = (v26 + 8);
  v179 = v23 + 16;
  v178 = (v23 + 8);
  v151 = *MEMORY[0x1E69D1B28];
  v145 = (v18 + 48);
  v137 = (v18 + 32);
  v136 = (v18 + 104);
  v135 = *MEMORY[0x1E69D1B60];
  v134 = (v18 + 8);
  v144 = (v18 + 56);
  v44 = 0;
  v146 = (v9 + 48);
  v142 = (v9 + 32);
  v143 = (v9 + 8);
  v153 = (v42 - 8);
  v159 = v42;
  v155 = *(v42 + 56);
  v169 = xmmword_1DCA66060;
  v161 = v5;
  v45 = v165;
  v46 = v23;
  v177 = v23;
  v173 = v33;
  v170 = (v2 + 8);
  while (1)
  {
    v176 = v44;
    v158(v33, v157 + v155 * v44, v29);
    v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = v169;
    v48 = v174;
    v49 = v175;
    v167 = *v172;
    v167(v174, v156, v175);
    v50 = IdentifierNamespace.rawValue.getter();
    v52 = v51;
    v166 = *v171;
    v166(v48, v49);
    *(inited + 32) = v50;
    *(inited + 40) = v52;
    v53 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of String(inited + 32);
    v54 = UsoEntitySpan.properties.getter();
    v55 = *(v54 + 16);
    if (v55)
    {
      v164 = v53;
      v183 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v55, 0);
      v56 = v183;
      v57 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v163 = v54;
      v58 = v54 + v57;
      v59 = v46;
      v60 = *(v46 + 72);
      v61 = *(v59 + 16);
      do
      {
        v62 = v180;
        v63 = v181;
        v61(v180, v58, v181);
        v64 = SpanProperty.key.getter();
        v66 = v65;
        (*v178)(v62, v63);
        v183 = v56;
        v68 = *(v56 + 16);
        v67 = *(v56 + 24);
        if (v68 >= v67 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1);
          v56 = v183;
        }

        *(v56 + 16) = v68 + 1;
        v69 = v56 + 16 * v68;
        *(v69 + 32) = v64;
        *(v69 + 40) = v66;
        v58 += v60;
        --v55;
      }

      while (v55);

      v29 = v162;
      v5 = v161;
      v45 = v165;
      v46 = v177;
      v53 = v164;
    }

    else
    {

      v56 = MEMORY[0x1E69E7CC0];
    }

    v70 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v56);

    v71 = specialized Set.isDisjoint(with:)(v70, v53);

    v33 = v173;
    v72 = v170;
    if (v71)
    {
      goto LABEL_47;
    }

    if (one-time initialization token for kHKEntityTypes != -1)
    {
      swift_once();
    }

    if (!UsoEntitySpan.anyPropertiesValueMatchAny(value:)(static SystemCommandsAffinityScorer.kHKEntityTypes))
    {
LABEL_47:
      v73 = swift_initStackObject();
      *(v73 + 16) = v169;
      v74 = v174;
      v75 = v175;
      v167(v174, v151, v175);
      v76 = IdentifierNamespace.rawValue.getter();
      v78 = v77;
      v166(v74, v75);
      *(v73 + 32) = v76;
      *(v73 + 40) = v78;
      v79 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(v73);
      swift_setDeallocating();
      outlined destroy of String(v73 + 32);
      v80 = UsoEntitySpan.properties.getter();
      v81 = *(v80 + 16);
      if (v81)
      {
        v168 = v79;
        v183 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v81, 0);
        v82 = v183;
        v83 = (*(v46 + 80) + 32) & ~*(v46 + 80);
        v167 = v80;
        v84 = v80 + v83;
        v85 = v46;
        v86 = *(v46 + 72);
        v87 = *(v85 + 16);
        do
        {
          v89 = v180;
          v88 = v181;
          v87(v180, v84, v181);
          v90 = SpanProperty.key.getter();
          v92 = v91;
          (*v178)(v89, v88);
          v183 = v82;
          v94 = *(v82 + 16);
          v93 = *(v82 + 24);
          if (v94 >= v93 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v93 > 1), v94 + 1, 1);
            v82 = v183;
          }

          *(v82 + 16) = v94 + 1;
          v95 = v82 + 16 * v94;
          *(v95 + 32) = v90;
          *(v95 + 40) = v92;
          v84 += v86;
          --v81;
        }

        while (v81);

        v29 = v162;
        v5 = v161;
        v45 = v165;
        v46 = v177;
        v79 = v168;
      }

      else
      {

        v82 = MEMORY[0x1E69E7CC0];
      }

      v96 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v82);

      v97 = specialized Set.isDisjoint(with:)(v96, v79);

      v33 = v173;
      v72 = v170;
      if (v97)
      {
        goto LABEL_4;
      }
    }

    v98 = v150;
    UsoEntitySpan.payloadAttachmentInfo.getter();
    v99 = v98;
    v100 = type metadata accessor for PayloadAttachmentInfo();
    v101 = *(v100 - 8);
    if ((*(v101 + 48))(v99, 1, v100) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v99, &_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
      v102 = v149;
      (*v144)(v149, 1, 1, v152);
LABEL_27:
      outlined destroy of ReferenceResolutionClientProtocol?(v102, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
      v46 = v177;
      goto LABEL_29;
    }

    v102 = v149;
    PayloadAttachmentInfo.attachmentType.getter();
    (*(v101 + 8))(v99, v100);
    if ((*v145)(v102, 1, v152) == 1)
    {
      goto LABEL_27;
    }

    v103 = v139;
    v104 = v152;
    (*v137)(v139, v102, v152);
    v105 = v140;
    (*v136)(v140, v135, v104);
    _s12SiriOntology21PayloadAttachmentInfoV0D4TypeOAESYAAWlTm_0(&lazy protocol witness table cache variable for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType, MEMORY[0x1E69D1B68]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v106 = *v134;
    (*v134)(v105, v104);
    v106(v103, v104);
    v46 = v177;
    if (v183 == v182)
    {
      goto LABEL_38;
    }

LABEL_29:
    v107 = v148;
    UsoEntitySpan.matchInfo.getter();
    v108 = v154;
    if ((*v146)(v107, 1, v154) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v107, &_s12SiriOntology9MatchInfoVSgMd, &_s12SiriOntology9MatchInfoVSgMR);
      goto LABEL_4;
    }

    (*v142)(v45, v107, v108);
    static MatchInfo.MatchSignals.approximateMatch.getter();
    v109 = MatchInfo.hasMatchSignals(_:)();
    v110 = *v72;
    (*v72)(v5, matched);
    if (v109)
    {
      break;
    }

    static MatchInfo.MatchSignals.partialMatch.getter();
    v111 = MatchInfo.hasMatchSignals(_:)();
    v112 = matched;
    v113 = v111;
    v110(v5, matched);
    if (v113)
    {
      break;
    }

    static MatchInfo.MatchSignals.aliasMatch.getter();
    v114 = MatchInfo.hasMatchSignals(_:)();
    v110(v5, v112);
    (*v143)(v45, v154);
    v46 = v177;
    if (v114)
    {
      goto LABEL_38;
    }

LABEL_4:
    v44 = v176 + 1;
    (*v153)(v33, v29);
    if (v44 == v160)
    {
      v115 = 1;
      v116 = v141;
      goto LABEL_36;
    }
  }

  (*v143)(v45, v154);
LABEL_38:
  v116 = v141;
  v117 = v138;
  (*(v141 + 32))(v138, v33, v29);
  v115 = 0;
LABEL_39:
  (*(v116 + 56))(v117, v115, 1, v29, v39);
  v118 = v133;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v119 = type metadata accessor for Logger();
  __swift_project_value_buffer(v119, static Logger.executor);
  outlined init with copy of ReferenceResolutionClientProtocol?(v117, v118, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  v120 = Logger.logObject.getter();
  v121 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v120, v121))
  {
    v122 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    v183 = v123;
    *v122 = 136315138;
    outlined init with copy of ReferenceResolutionClientProtocol?(v118, v131, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
    v124 = String.init<A>(describing:)();
    v126 = v125;
    outlined destroy of ReferenceResolutionClientProtocol?(v118, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
    v127 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v126, &v183);
    v117 = v138;

    *(v122 + 4) = v127;
    _os_log_impl(&dword_1DC659000, v120, v121, "HomeAutomationAffinityScorer - Found HomeKitSpan with FuzzyMatch %s", v122, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v123);
    v128 = v123;
    v29 = v162;
    MEMORY[0x1E12A2F50](v128, -1, -1);
    MEMORY[0x1E12A2F50](v122, -1, -1);
  }

  else
  {

    outlined destroy of ReferenceResolutionClientProtocol?(v118, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  }

  v129 = (*(v141 + 48))(v117, 1, v29) != 1;
  outlined destroy of ReferenceResolutionClientProtocol?(v117, &_s12SiriOntology13UsoEntitySpanVSgMd, &_s12SiriOntology13UsoEntitySpanVSgMR);
  return v129;
}

uint64_t specialized SystemCommandsAffinityScorer.isIdentifierMatchCarCommands(on:)()
{
  v35 = type metadata accessor for Google_Protobuf_StringValue();
  v0 = *(v35 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = Siri_Nlu_External_UsoGraph.identifiers.getter();
  v28 = *(v9 + 16);
  if (!v28)
  {
LABEL_21:

    return 0;
  }

  v10 = 0;
  v31 = v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v29 = (v0 + 8);
  v30 = v5 + 16;
  v32 = (v5 + 8);
  v33 = v9;
  v34 = v4;
  while (1)
  {
    if (v10 >= *(v9 + 16))
    {
      __break(1u);
LABEL_23:
      swift_once();
      goto LABEL_18;
    }

    (*(v5 + 16))(v8, v31 + *(v5 + 72) * v10, v4);
    if (one-time initialization token for kCarCommandsExactNamespaceMatches != -1)
    {
      swift_once();
    }

    v11 = static SystemCommandsAffinityScorer.kCarCommandsExactNamespaceMatches;
    Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
    v12 = Google_Protobuf_StringValue.value.getter();
    v14 = v13;
    (*v29)(v3, v35);
    if (*(v11 + 16))
    {
      v15 = *(v11 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      v16 = Hasher._finalize()();
      v17 = -1 << *(v11 + 32);
      v18 = v16 & ~v17;
      if ((*(v11 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
      {
        break;
      }
    }

LABEL_3:
    ++v10;
    v4 = v34;
    (*v32)(v8, v34);

    v9 = v33;
    if (v10 == v28)
    {
      goto LABEL_21;
    }
  }

  v19 = ~v17;
  while (1)
  {
    v20 = (*(v11 + 48) + 16 * v18);
    v21 = *v20 == v12 && v20[1] == v14;
    if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v18 = (v18 + 1) & v19;
    if (((*(v11 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  (*v32)(v8, v34);
  if (one-time initialization token for executor != -1)
  {
    goto LABEL_23;
  }

LABEL_18:
  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.executor);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1DC659000, v23, v24, "SystemCommandsAffinityScorer | Found car commands identifier", v25, 2u);
    MEMORY[0x1E12A2F50](v25, -1, -1);
  }

  return 1;
}

uint64_t specialized SystemCommandsAffinityScorer.score(input:environment:)()
{
  v179 = type metadata accessor for Google_Protobuf_StringValue();
  v164 = *(v179 - 8);
  isa = v164[8].isa;
  MEMORY[0x1EEE9AC00](v179);
  v178 = (&v156 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v166 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v180 = *(v166 - 8);
  v2 = v180[8];
  MEMORY[0x1EEE9AC00](v166);
  v162 = (&v156 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v160 = &v156 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v161 = &v156 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v165 = (&v156 - v9);
  MEMORY[0x1EEE9AC00](v10);
  v163 = &v156 - v11;
  v12 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v169 = *(v12 - 8);
  v170 = v12;
  v13 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v168 = &v156 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v156 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Siri_Nlu_External_UserParse();
  v175 = *(v20 - 8);
  v176 = v20;
  v21 = v175[8];
  MEMORY[0x1EEE9AC00](v20);
  v174 = (&v156 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v173 = &v156 - v25;
  v26 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v27 = *(v26 - 8);
  v171 = v26;
  v172 = v27;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v167 = &v156 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v177 = &v156 - v31;
  v32 = type metadata accessor for USOParse();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v156 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for Parse();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v156 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v38 + 88))(v41, v37) != *MEMORY[0x1E69D0168])
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    __swift_project_value_buffer(v55, static Logger.executor);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_1DC659000, v56, v57, "SystemCommandsAffinityScorer | Got unexpected parse", v58, 2u);
      MEMORY[0x1E12A2F50](v58, -1, -1);
    }

    (*(v38 + 8))(v41, v37);
    return 1;
  }

  v43 = *(v38 + 96);
  v42 = (v38 + 96);
  v43(v41, v37);
  (*(v33 + 32))(v36, v41, v32);
  v44 = specialized static AffinityScorerUtils.getTask(_:)();
  v45 = v32;
  if (!v44)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    __swift_project_value_buffer(v60, static Logger.executor);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_1DC659000, v61, v62, "SystemCommandsAffinityScorer | Could not extract usoTask from parse", v63, 2u);
      MEMORY[0x1E12A2F50](v63, -1, -1);
    }

    (*(v33 + 8))(v36, v45);
    return 0;
  }

  v159 = v44;
  v156 = v32;
  v158 = v33;
  v46 = v174;
  v157 = v36;
  v47 = USOParse.userParse.getter();
  v48 = MEMORY[0x1E129C0F0](v47);
  (v175[1])(v46, v176);
  v49 = *(v48 + 16);
  v50 = v177;
  if (!v49)
  {
LABEL_8:

    v53 = 1;
    v54 = v173;
LABEL_21:
    (*(v16 + 56))(v54, v53, 1, v15);
    if ((*(v16 + 48))(v54, 1, v15) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v54, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
      v64 = v158;
      v65 = v156;
      v66 = v157;
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v67 = type metadata accessor for Logger();
      __swift_project_value_buffer(v67, static Logger.executor);
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_1DC659000, v68, v69, "SystemCommandsAffinityScorer | Could not extract userStatedTask", v70, 2u);
        MEMORY[0x1E12A2F50](v70, -1, -1);
      }

      else
      {
      }

      v64[1](v66, v65);
      return 0;
    }

    v71 = v168;
    Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
    (*(v16 + 8))(v54, v15);
    v72 = v167;
    Siri_Nlu_External_UserStatedTask.task.getter();
    (*(v169 + 8))(v71, v170);
    (*(v172 + 32))(v50, v72, v171);
    v73 = UsoTask.isExpandedSupportedSettingTask.getter();
    v74 = v158;
    if ((v73 & 1) != 0 && (Siri_Nlu_External_UsoGraph.isIdentifierMatchGuestMode.getter() & 1) == 0)
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v84 = type metadata accessor for Logger();
      __swift_project_value_buffer(v84, static Logger.executor);

      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v181 = v88;
        *v87 = 136315138;
        v89 = UsoTask.verbString.getter();
        v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v90, &v181);

        *(v87 + 4) = v91;
        _os_log_impl(&dword_1DC659000, v85, v86, "SystemCommandsAffinityScorer | found unsuported setting task %s", v87, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v88);
        MEMORY[0x1E12A2F50](v88, -1, -1);
        MEMORY[0x1E12A2F50](v87, -1, -1);
      }

      (*(v172 + 8))(v50, v171);
      v74[1](v157, v156);
      return 0;
    }

    if (specialized SystemCommandsAffinityScorer.isIdentifierMatchLock(on:)())
    {
      if (specialized SystemCommandsAffinityScorer.isIdentifierMatchScreen(on:)())
      {
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v75 = type metadata accessor for Logger();
        __swift_project_value_buffer(v75, static Logger.executor);
        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          *v78 = 0;
          _os_log_impl(&dword_1DC659000, v76, v77, "SystemCommandsAffinityScorer | providing override score for 'lock screen' task", v78, 2u);
          MEMORY[0x1E12A2F50](v78, -1, -1);
        }

        (*(v172 + 8))(v50, v171);
        v74[1](v157, v156);
        return 4;
      }

      if (!specialized SystemCommandsAffinityScorer.isIdentifierMatchAnswerProduct(on:)())
      {
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v123 = type metadata accessor for Logger();
        __swift_project_value_buffer(v123, static Logger.executor);
        v124 = Logger.logObject.getter();
        v125 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v124, v125))
        {
          v59 = 2;
          v126 = swift_slowAlloc();
          *v126 = 0;
          _os_log_impl(&dword_1DC659000, v124, v125, "SystemCommandsAffinityScorer | providing default score for ambiguous lock task", v126, 2u);
          MEMORY[0x1E12A2F50](v126, -1, -1);

          (*(v172 + 8))(v50, v171);
          v74[1](v157, v156);
        }

        else
        {

          (*(v172 + 8))(v50, v171);
          v74[1](v157, v156);
          return 2;
        }

        return v59;
      }

      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v92 = type metadata accessor for Logger();
      __swift_project_value_buffer(v92, static Logger.executor);
      v81 = Logger.logObject.getter();
      v93 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v81, v93))
      {
        v94 = swift_slowAlloc();
        *v94 = 0;
        _os_log_impl(&dword_1DC659000, v81, v93, "SystemCommandsAffinityScorer | providing high score for lock product task", v94, 2u);
        MEMORY[0x1E12A2F50](v94, -1, -1);
      }

LABEL_57:

      (*(v172 + 8))(v50, v171);
      v74[1](v157, v156);
      return 3;
    }

    static UsoTask_CodegenConverter.convert(task:)();

    if (v183)
    {
      type metadata accessor for UsoTask_disable_common_Setting();
      if (swift_dynamicCast())
      {

        if (specialized SystemCommandsAffinityScorer.isIdentifierMatchProduct(on:)())
        {
          if (one-time initialization token for executor != -1)
          {
            swift_once();
          }

          v80 = type metadata accessor for Logger();
          __swift_project_value_buffer(v80, static Logger.executor);
          v81 = Logger.logObject.getter();
          v82 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v81, v82))
          {
            v83 = swift_slowAlloc();
            *v83 = 0;
            _os_log_impl(&dword_1DC659000, v81, v82, "SystemCommandsAffinityScorer | providing high score for turn off product task", v83, 2u);
            MEMORY[0x1E12A2F50](v83, -1, -1);
          }

          goto LABEL_57;
        }
      }
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v181, &_sypSgMd, &_sypSgMR);
    }

    v95 = Siri_Nlu_External_UsoGraph.identifiers.getter();
    v48 = v166;
    v52 = v165;
    v176 = *(v95 + 16);
    if (v176)
    {
      v50 = 0;
      v96 = 0;
      v97 = v164 + 1;
      v174 = v180 + 2;
      v175 = v180 + 1;
      while (1)
      {
        if (v50 >= *(v95 + 16))
        {
          __break(1u);
          goto LABEL_102;
        }

        v98 = v95;
        v51 = v180[2];
        v51(v52, v95 + ((*(v180 + 80) + 32) & ~*(v180 + 80)) + v180[9] * v50, v48);
        v99 = v178;
        Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
        v100 = Google_Protobuf_StringValue.value.getter();
        v19 = v101;
        v102 = (v97->isa)(v99, v179);
        v42 = &v156;
        v181 = v100;
        v182 = v19;
        MEMORY[0x1EEE9AC00](v102);
        *(&v156 - 2) = &v181;
        LOBYTE(v100) = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, (&v156 - 4), &outlined read-only object #0 of one-time initialization function for kSupportedIdentifierNamespaces);

        if (v100)
        {
          break;
        }

        ++v50;
        (*v175)(v52, v48);
        v95 = v98;
        if (v176 == v50)
        {
          goto LABEL_64;
        }
      }

      v19 = v163;
      (v180[4])(v163, v52, v48);
      v181 = Siri_Nlu_External_UsoEntityIdentifier.value.getter();
      v182 = v103;
      MEMORY[0x1EEE9AC00](v181);
      *(&v156 - 2) = &v181;
      v104 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v156 - 4), &outlined read-only object #0 of one-time initialization function for kUnsupportedIdentifierValues);

      v42 = v162;
      if (v104)
      {
        v105 = v158;
        v106 = v177;
        v107 = v51;
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v108 = type metadata accessor for Logger();
        __swift_project_value_buffer(v108, static Logger.executor);
        v109 = v161;
        v110 = v166;
        v107(v161, v19, v166);
        v111 = Logger.logObject.getter();
        v112 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          v115 = v107;
          v116 = v114;
          v181 = v114;
          *v113 = 136315138;
          v115(v160, v109, v110);
          v117 = String.init<A>(describing:)();
          v119 = v118;
          v120 = v109;
          v121 = *v175;
          (*v175)(v120, v110);
          v122 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v119, &v181);

          *(v113 + 4) = v122;
          _os_log_impl(&dword_1DC659000, v111, v112, "SystemCommandsAffinityScorer | found unsupported identifier %s", v113, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v116);
          MEMORY[0x1E12A2F50](v116, -1, -1);
          MEMORY[0x1E12A2F50](v113, -1, -1);

          v121(v163, v110);
          (*(v172 + 8))(v177, v171);
        }

        else
        {

          v133 = *v175;
          (*v175)(v109, v110);
          v133(v19, v110);
          (*(v172 + 8))(v106, v171);
        }

        v105[1](v157, v156);
        return 0;
      }

      v127 = specialized static AffinityScorerUtils.getEntitySpans(_:)();
      v128 = specialized SystemCommandsAffinityScorer.hasHKExactMatch(_:)(v127);
      v52 = v158;
      v48 = v156;
      v50 = v177;
      if (!v128 && (specialized SystemCommandsAffinityScorer.hasEverywhereUserEntity(usoTask:)() & 1) == 0)
      {
        v134 = specialized SystemCommandsAffinityScorer.hasHKFuzzyMatch(_:)(v127);

        if (!v134)
        {
          goto LABEL_90;
        }

        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v135 = type metadata accessor for Logger();
        __swift_project_value_buffer(v135, static Logger.executor);
        v136 = Logger.logObject.getter();
        v137 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v136, v137))
        {
          v138 = swift_slowAlloc();
          *v138 = 0;
          v139 = "SystemCommandsAffinityScorer | found fuzzy match with HomeKit entity, returning .default";
          goto LABEL_95;
        }

        goto LABEL_96;
      }

      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v129 = type metadata accessor for Logger();
      __swift_project_value_buffer(v129, static Logger.executor);
      v130 = Logger.logObject.getter();
      v131 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v130, v131))
      {
        v132 = swift_slowAlloc();
        *v132 = 0;
        _os_log_impl(&dword_1DC659000, v130, v131, "SystemCommandsAffinityScorer | found full match with HomeKit entity or everywhere, returning .low", v132, 2u);
        MEMORY[0x1E12A2F50](v132, -1, -1);
      }

      (*v175)(v19, v166);
      (*(v172 + 8))(v50, v171);
      v52[1](v157, v48);
    }

    else
    {
LABEL_64:

      (*(v172 + 8))(v177, v171);
      v158[1](v157, v156);
    }

    return 1;
  }

  v42 = 0;
  v51 = (v16 + 16);
  v52 = (v16 + 8);
  while (v42 < *(v48 + 16))
  {
    (*(v16 + 16))(v19, v48 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v42, v15);
    if (Siri_Nlu_External_UserDialogAct.hasUserStatedTask.getter())
    {

      v54 = v173;
      (*(v16 + 32))(v173, v19, v15);
      v53 = 0;
      goto LABEL_21;
    }

    v42 = (v42 + 1);
    (*v52)(v19, v15);
    if (v49 == v42)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_90:
  if (specialized SystemCommandsAffinityScorer.isIdentifierMatchCarCommands(on:)())
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v140 = type metadata accessor for Logger();
    __swift_project_value_buffer(v140, static Logger.executor);
    v136 = Logger.logObject.getter();
    v137 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      *v138 = 0;
      v139 = "SystemCommandsAffinityScorer | found a car commands identifier, returning .default";
LABEL_95:
      _os_log_impl(&dword_1DC659000, v136, v137, v139, v138, 2u);
      MEMORY[0x1E12A2F50](v138, -1, -1);

      (*v175)(v19, v166);
      (*(v172 + 8))(v50, v171);
      v52[1](v157, v48);
      return 2;
    }

LABEL_96:

    (*v175)(v19, v166);
    (*(v172 + 8))(v50, v171);
    v52[1](v157, v48);
    return 2;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v141 = type metadata accessor for Logger();
  __swift_project_value_buffer(v141, static Logger.executor);
  v96 = v166;
  v51(v42, v19, v166);
  v97 = Logger.logObject.getter();
  v142 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v97, v142))
  {
    v143 = swift_slowAlloc();
    LODWORD(v179) = v142;
    v144 = v143;
    v180 = swift_slowAlloc();
    v181 = v180;
    *v144 = 136315138;
    v178 = v97;
    v145 = v42;
    v51(v160, v42, v96);
    v146 = String.init<A>(describing:)();
    v148 = v147;
    v149 = v48;
    v150 = *v175;
    (*v175)(v145, v96);
    v151 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v146, v148, &v181);

    v152 = v144;
    *(v144 + 4) = v151;
    v153 = v178;
    _os_log_impl(&dword_1DC659000, v178, v179, "SystemCommandsAffinityScorer | Found matching identifier %s", v152, 0xCu);
    v154 = v180;
    __swift_destroy_boxed_opaque_existential_1Tm(v180);
    MEMORY[0x1E12A2F50](v154, -1, -1);
    MEMORY[0x1E12A2F50](v152, -1, -1);

    v150(v163, v96);
    (*(v172 + 8))(v50, v171);
    v52[1](v157, v149);
  }

  else
  {
LABEL_102:

    v155 = *v175;
    (*v175)(v42, v96);
    v155(v19, v96);
    (*(v172 + 8))(v50, v171);
    v52[1](v157, v48);
  }

  return 3;
}

uint64_t _s12SiriOntology21PayloadAttachmentInfoV0D4TypeOAESYAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t protocol witness for Tagger.save(tag:) in conformance TaggingService(uint64_t a1)
{
  v4 = *v1;
  v5 = *(MEMORY[0x1E69CE1D8] + 4);
  v8 = (*MEMORY[0x1E69CE1D8] + MEMORY[0x1E69CE1D8]);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);

  return v8(a1);
}

uint64_t dispatch thunk of Tagger.save(tag:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);

  return v11(a1, a2, a3);
}

uint64_t TaskData.attribute.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t TaskData.reformedIntent.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t TaskData.refTaskId.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t TaskData.statusReason.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t TaskData.stepType.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t TaskData.taskId.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t TaskData.taskType.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t TaskData.debugDescription.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(55);
  MEMORY[0x1E12A1580](0xD000000000000019, 0x80000001DCA89E10);
  MEMORY[0x1E12A1580](v1[12], v1[13]);
  MEMORY[0x1E12A1580](0x79546B736174202CLL, 0xEC000000203A6570);
  MEMORY[0x1E12A1580](v1[14], v1[15]);
  MEMORY[0x1E12A1580](0x795470657473202CLL, 0xEC000000203A6570);
  MEMORY[0x1E12A1580](v1[10], v1[11]);
  return 0;
}

__n128 TaskData.init(taskId:taskType:stepType:statusReason:activities:attribute:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11)
{
  v17 = specialized static SiriKitMetricsUtils.formulateIntentTypeName(intentTypeName:)(a3, a4);
  v19 = v18;

  result = a10;
  *a9 = a10;
  a9[1].n128_u64[0] = a11;
  a9[1].n128_u8[8] = 0;
  a9[2].n128_u64[0] = 0;
  a9[2].n128_u64[1] = 0xE000000000000000;
  a9[3].n128_u64[0] = 0;
  a9[3].n128_u64[1] = 0xE000000000000000;
  a9[4].n128_u64[0] = a7;
  a9[4].n128_u64[1] = a8;
  a9[5].n128_u64[0] = a5;
  a9[5].n128_u64[1] = a6;
  a9[6].n128_u64[0] = a1;
  a9[6].n128_u64[1] = a2;
  a9[7].n128_u64[0] = v17;
  a9[7].n128_u64[1] = v19;
  a9[8].n128_u64[0] = 0x3FD999999999999ALL;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TaskData.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized TaskData.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TaskData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TaskData.CodingKeys and conformance TaskData.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TaskData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TaskData.CodingKeys and conformance TaskData.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t lazy protocol witness table accessor for type DefaultFlowActivity and conformance DefaultFlowActivity()
{
  result = lazy protocol witness table cache variable for type DefaultFlowActivity and conformance DefaultFlowActivity;
  if (!lazy protocol witness table cache variable for type DefaultFlowActivity and conformance DefaultFlowActivity)
  {
    type metadata accessor for DefaultFlowActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultFlowActivity and conformance DefaultFlowActivity);
  }

  return result;
}

uint64_t *assignWithCopy for TaskData(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  a1[1] = a2[1];
  v5 = a1[2];
  a1[2] = a2[2];

  *(a1 + 24) = *(a2 + 24);
  a1[4] = a2[4];
  v6 = a1[5];
  a1[5] = a2[5];

  a1[6] = a2[6];
  v7 = a1[7];
  a1[7] = a2[7];

  a1[8] = a2[8];
  v8 = a1[9];
  a1[9] = a2[9];

  a1[10] = a2[10];
  v9 = a1[11];
  a1[11] = a2[11];

  a1[12] = a2[12];
  v10 = a1[13];
  a1[13] = a2[13];

  a1[14] = a2[14];
  v11 = a1[15];
  a1[15] = a2[15];

  a1[16] = a2[16];
  return a1;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t *assignWithTake for TaskData(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a2[2];
  v6 = a1[2];
  a1[1] = a2[1];
  a1[2] = v5;

  *(a1 + 24) = *(a2 + 24);
  v7 = a2[5];
  v8 = a1[5];
  a1[4] = a2[4];
  a1[5] = v7;

  v9 = a2[7];
  v10 = a1[7];
  a1[6] = a2[6];
  a1[7] = v9;

  v11 = a2[9];
  v12 = a1[9];
  a1[8] = a2[8];
  a1[9] = v11;

  v13 = a2[11];
  v14 = a1[11];
  a1[10] = a2[10];
  a1[11] = v13;

  v15 = a2[13];
  v16 = a1[13];
  a1[12] = a2[12];
  a1[13] = v15;

  v17 = a2[15];
  v18 = a1[15];
  a1[14] = a2[14];
  a1[15] = v17;

  a1[16] = a2[16];
  return a1;
}

uint64_t getEnumTagSinglePayload for TaskData(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TaskData(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized TaskData.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974697669746361 && a2 == 0xEA00000000007365;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x655364726143656DLL && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656D726F666572 && a2 == 0xEE00746E65746E49 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x496B736154666572 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6552737574617473 && a2 == 0xEC0000006E6F7361 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6570795470657473 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x64496B736174 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x657079546B736174 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 9;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t *TaskLoggingEventSink.instance.unsafeMutableAddressor()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  return &static TaskLoggingEventSink.instance;
}

uint64_t TaskLoggingEventSink.receive(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v3;
  v11[5] = a1;
  v11[6] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in TaskLoggingEventSink.receive(_:_:), v11);
}

uint64_t protocol witness for MetricsState.taskId.getter in conformance TaskLoggingEventSink.SiriKitEventMetricsState()
{
  v1 = *(*v0 + 24);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  return v2;
}

uint64_t protocol witness for MetricsState.interactionId.getter in conformance TaskLoggingEventSink.SiriKitEventMetricsState()
{
  v1 = *(*v0 + 16);
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);

  return v2;
}

uint64_t protocol witness for MetricsState.taskStepStartTime.getter in conformance TaskLoggingEventSink.SiriKitEventMetricsState()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v6, *(*v0 + 24) + OBJC_IVAR____TtC14SiriKitRuntime8FlowTask_creationTime, v1, v4);
  Date.timeIntervalSince1970.getter();
  v8 = v7;
  (*(v2 + 8))(v6, v1);
  return v8;
}

uint64_t protocol witness for MetricsState.executionRequestId.getter in conformance TaskLoggingEventSink.SiriKitEventMetricsState()
{
  v1 = *(*v0 + 16);
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);

  return v2;
}

uint64_t TaskLoggingEventSink.__allocating_init(loggingService:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t static TaskLoggingEventSink.instance.getter()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }
}

uint64_t TaskLoggingEventSink.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t TaskLoggingEventSink.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for SiriKitEventSink.receive(_:_:) in conformance TaskLoggingEventSink(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - v7;
  v9 = *v2;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v9;
  v11[5] = a1;
  v11[6] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &closure #1 in TaskLoggingEventSink.receive(_:_:)partial apply, v11);
}

uint64_t protocol witness for SiriKitEventSink.receiveAsync(_:_:) in conformance TaskLoggingEventSink(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return TaskLoggingEventSink.receiveAsync(_:_:)(a1, a2);
}

uint64_t closure #1 in TaskLoggingEventSink.receive(_:_:)partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in TaskLoggingEventSink.receive(_:_:)(a1, v4, v5, v6, v7, v8);
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t *TaskLoggingService.instance.unsafeMutableAddressor()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  return &static TaskLoggingService.instance;
}

BOOL FLOWSchemaFLOWStateType.isLastTaskStep.getter(unsigned int a1)
{
  result = 1;
  if (a1 > 5 || ((1 << a1) & 0x34) == 0)
  {
    return a1 == 128;
  }

  return result;
}

uint64_t TaskLoggingService.logTaskStep(activityType:eventContext:eventTime:task:app:attribute:domainContext:domainFlowActivity:intent:intentTypeName:parameterName:responseId:statusDescription:statusReason:platformContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, void *a8, unint64_t a9, void *a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, NSObject *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  v21 = v20;
  v145 = a8;
  v160 = a7;
  v157 = a6;
  v164 = a3;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v151 = &v143 - v29;
  v167 = a2;
  v153 = a11;
  v152 = a10;
  if (a12)
  {
    v165 = a11;
    v30 = a12;
  }

  else
  {
    if (a10)
    {
      v31 = [a10 typeName];
      v165 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      a2 = v167;
    }

    else
    {
      v33 = 0xE700000000000000;
      v165 = 0x6E776F6E6B6E55;
    }

    v30 = v33;
  }

  v162 = a17;
  v163 = a18;
  v159 = a14;
  v156 = a13;
  swift_bridgeObjectRetain_n();
  v168 = a19;
  v155 = a1;
  v146 = ActivityType.asSELFTypeAndReason(_:)(a19);
  v35 = v34;
  v36 = SiriKitEventContext.resultCandidateId.getter();
  v38 = 13101;
  if (v37)
  {
    v38 = v36;
  }

  v149 = v38;
  if (v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = 0xE200000000000000;
  }

  v40 = *(a2 + 80);
  v41 = *(a2 + 88);
  v42 = *(a4 + 24);
  v169 = *(a4 + 16);
  v170 = v40;
  v172 = v42;
  v43 = [objc_allocWithZone(MEMORY[0x1E69CEB08]) init];
  v161 = a4;
  v166 = v30;
  v171 = v41;
  v158 = a5;
  v154 = a12;
  if (v43)
  {
    v147 = v43;
    v148 = [objc_allocWithZone(MEMORY[0x1E69CEB98]) init];
    if (v148)
    {
      v44 = TaskLoggingService.constructMetaData(resultCandidateId:executionRequestId:taskId:)(v149, v39, v170, v41, v169, v172);
      if (v44)
      {
        v144 = v44;
        v45 = [objc_allocWithZone(MEMORY[0x1E69CEB00]) init];
        if (v45)
        {
          v46 = v45;
          v47 = *(v21 + 152);
          (*(v21 + 144))(v173, a5);
          v48 = v174;
          v49 = v175;
          __swift_project_boxed_opaque_existential_1(v173, v174);
          v50 = (*(v49 + 8))(v48, v49);
          if (v51)
          {
            v52 = v51;
          }

          else
          {
            v50 = 0x6C7070615F746F6ELL;
            v52 = 0xEE00656C62616369;
          }

          v53 = MEMORY[0x1E12A1410](v50, v52);

          [v46 setBundleId_];

          v54 = v174;
          v55 = v175;
          __swift_project_boxed_opaque_existential_1(v173, v174);
          v56 = (*(v55 + 16))(v54, v55);
          if (v57)
          {
            v58 = v57;
          }

          else
          {
            v56 = 0x6C7070615F746F6ELL;
            v58 = 0xEE00656C62616369;
          }

          v59 = MEMORY[0x1E12A1410](v56, v58);

          [v46 setAppVersion_];

          v30 = v166;
          [v148 setAppContext_];

          __swift_destroy_boxed_opaque_existential_1Tm(v173);
        }

        v143 = specialized static SiriKitMetricsUtils.formulateSimplifiedStatusDescription(statusDescription:)(v162, v163);
        v61 = v60;
        v62 = [objc_allocWithZone(MEMORY[0x1E69CEB88]) init];
        if (v62)
        {
          v63 = v62;
          v64 = MEMORY[0x1E12A1410](v165, v30);

          [v63 setCurrentTaskName_];

          if (v160)
          {
            v65 = MEMORY[0x1E12A1410](v157);
          }

          else
          {
            v65 = 0;
          }

          [v63 setCurrentTaskType_];

          v83 = HIDWORD(v146);
          [v63 setFlowStateType_];
          v84 = [objc_allocWithZone(MEMORY[0x1E69CEB90]) init];
          if (v84)
          {
            if (v35)
            {
              v85 = 0;
            }

            else
            {
              v85 = v83;
            }

            v86 = v84;
            [v84 setStatusReason_];
            [v63 setFlowStateReason_];
          }

          v82 = v172;
          if (v159)
          {
            v87 = MEMORY[0x1E12A1410](v156);
          }

          else
          {
            v87 = 0;
          }

          [v63 setResolvedSlotName_];

          if (v61)
          {
            v88 = MEMORY[0x1E12A1410](v143, v61);
          }

          else
          {
            v88 = 0;
          }

          [v63 setFlowStateReasonDescription_];

          [v148 setFlowState_];
        }

        else
        {

          v82 = v172;
        }

        v89 = v145;
        if (v145)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v90 = swift_allocObject();
          *(v90 + 16) = xmmword_1DCA70640;
          *(v90 + 32) = v89;
          type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for FLOWSchemaFLOWDomainContext, 0x1E69CEB10);
          v91 = v89;
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v148 setDomainContexts_];
        }

        Date.timeIntervalSince1970.getter();
        if ((*&v93 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else
        {
          v94 = v148;
          if (v93 > -9.22337204e18)
          {
            if (v93 < 9.22337204e18)
            {
              [v148 setTimestampMs_];
              [v94 setSequenceNum_];
              if (a20)
              {
                v95 = one-time initialization token for instrumentation;
                v145 = a20;
                if (v95 != -1)
                {
                  swift_once();
                }

                v96 = type metadata accessor for Logger();
                __swift_project_value_buffer(v96, static Logger.instrumentation);

                v97 = v82;
                v98 = v171;

                v99 = Logger.logObject.getter();
                v100 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v99, v100))
                {
                  v101 = swift_slowAlloc();
                  v102 = swift_slowAlloc();
                  v173[0] = v102;
                  *v101 = 136315650;
                  v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v149, v39, v173);

                  *(v101 + 4) = v103;
                  *(v101 + 12) = 2080;
                  *(v101 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v169, v97, v173);
                  *(v101 + 22) = 2080;
                  *(v101 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v170, v98, v173);
                  _os_log_impl(&dword_1DC659000, v99, v100, "#TaskLoggingService Added platformContext for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v101, 0x20u);
                  swift_arrayDestroy();
                  v104 = v102;
                  v94 = v148;
                  MEMORY[0x1E12A2F50](v104, -1, -1);
                  MEMORY[0x1E12A2F50](v101, -1, -1);
                }

                else
                {
                }

                a5 = v158;
                v105 = v145;
                [v94 setPlatformRelatedContext_];

                v82 = v172;
              }

              else
              {
              }

              v106 = v147;
              [v147 setFlowStep:v94];
              v107 = v106;
              v108 = v144;
              [v107 setEventMetadata:v144];

              if (one-time initialization token for instrumentation == -1)
              {
                goto LABEL_66;
              }

              goto LABEL_84;
            }

LABEL_83:
            __break(1u);
LABEL_84:
            swift_once();
LABEL_66:
            v109 = type metadata accessor for Logger();
            __swift_project_value_buffer(v109, static Logger.instrumentation);

            v110 = Logger.logObject.getter();
            v111 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v110, v111))
            {
              v112 = swift_slowAlloc();
              v113 = swift_slowAlloc();
              v173[0] = v113;
              *v112 = 136315906;
              if (v146 > 0xD0)
              {
                v114 = @"FLOWSTATETYPE_UNKNOWN";
                v115 = @"FLOWSTATETYPE_UNKNOWN";
              }

              else
              {
                v114 = off_1E8642DA8[v146];
                v115 = off_1E8643430[v146];
              }

              v117 = v114;
              v118 = v115;
              v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v121 = v120;

              v122 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v121, v173);

              *(v112 + 4) = v122;
              *(v112 + 12) = 2080;
              v116 = v169;
              *(v112 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v169, v82, v173);
              *(v112 + 22) = 2080;
              *(v112 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v165, v166, v173);
              *(v112 + 32) = 2080;
              *(v112 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v167 + 96), *(v167 + 104), v173);
              _os_log_impl(&dword_1DC659000, v110, v111, "#TaskLoggingService SELF Log - logging task step: %s for taskId: %s, taskType: %s, interactionId:%s", v112, 0x2Au);
              swift_arrayDestroy();
              MEMORY[0x1E12A2F50](v113, -1, -1);
              MEMORY[0x1E12A2F50](v112, -1, -1);
            }

            else
            {

              v116 = v169;
            }

            v123 = *(v21 + 104);
            v69 = v147;
            (*(v21 + 96))(v147);
            TaskLoggingService.emitRequestLink(executionRequestId:taskId:)(v170, v171, v116, v82);
            goto LABEL_73;
          }
        }

        __break(1u);
        goto LABEL_83;
      }

      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v74 = type metadata accessor for Logger();
      __swift_project_value_buffer(v74, static Logger.instrumentation);

      v75 = v172;

      v76 = v171;

      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v173[0] = v80;
        *v79 = 136315650;
        v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v149, v39, v173);

        *(v79 + 4) = v81;
        *(v79 + 12) = 2080;
        *(v79 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v169, v75, v173);
        *(v79 + 22) = 2080;
        *(v79 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v170, v76, v173);
        _os_log_impl(&dword_1DC659000, v77, v78, "#TaskLoggingService SELF Log - unable to construct metaData, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v79, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v80, -1, -1);
        MEMORY[0x1E12A2F50](v79, -1, -1);

        goto LABEL_74;
      }

LABEL_32:

      goto LABEL_74;
    }
  }

  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v66 = type metadata accessor for Logger();
  __swift_project_value_buffer(v66, static Logger.instrumentation);

  v67 = v172;

  v68 = v171;

  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v69, v70))
  {

    goto LABEL_32;
  }

  v71 = swift_slowAlloc();
  v72 = swift_slowAlloc();
  v173[0] = v72;
  *v71 = 136315650;
  v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v149, v39, v173);

  *(v71 + 4) = v73;
  *(v71 + 12) = 2080;
  *(v71 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v169, v67, v173);
  *(v71 + 22) = 2080;
  *(v71 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v170, v68, v173);
  _os_log_impl(&dword_1DC659000, v69, v70, "#TaskLoggingService SELF Log - unable to instantiate SELF schema, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v71, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1E12A2F50](v72, -1, -1);
  MEMORY[0x1E12A2F50](v71, -1, -1);
LABEL_73:

LABEL_74:
  outlined init with copy of ReferenceResolutionClientProtocol(v21 + 16, v173);
  v125 = v174;
  v124 = v175;
  __swift_project_boxed_opaque_existential_1(v173, v174);
  v150 = v21;
  v149 = a9;
  if (a5)
  {
    v126 = App.appIdentifier.getter();
    v128 = v127;
  }

  else
  {
    v126 = 0;
    v128 = 0;
  }

  v148 = a16;
  v147 = a15;
  v129 = v151;
  outlined init with copy of ReferenceResolutionClientProtocol?(v168, v151, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v130 = type metadata accessor for SiriKitReliabilityCodes();
  v131 = *(v130 - 8);
  if ((*(v131 + 48))(v129, 1, v130) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v129, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    v132 = 0;
    v133 = 0;
  }

  else
  {
    v132 = SiriKitReliabilityCodes.rawValue.getter();
    v133 = v134;
    (*(v131 + 8))(v129, v130);
  }

  v135 = *(v124 + 8);
  v141 = v125;
  v142 = v124;
  v136 = v159;
  v137 = v156;
  v138 = v155;
  v139 = v164;
  v135(v155, v164, v165, v166, v126, v128, v170, v171, v156, v159, v132, v133, v169, v172, v141, v142);

  __swift_destroy_boxed_opaque_existential_1Tm(v173);
  return TaskLoggingService.logAndDonateClassicFlowTask(activityType:eventContext:eventTime:task:app:attribute:domainFlowActivity:intent:intentTypeName:parameterName:responseId:statusDescription:statusReason:shouldDonateToCurare:appResolutionName:flowMetadata:)(v138, v167, v139, v161, v158, v157, v160, v149, v152, v153, v154, v137, v136, v147, v148, v162, v163, v168, 1u, 0, 0, 0);
}

uint64_t TaskLoggingService.logAppResolutionResult(activityType:eventContext:eventTime:intentTypeName:statusReason:task:domainFlowActivity:flowMetadata:resolutionResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v137 = a8;
  v144 = a5;
  v141 = a3;
  v142 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v122 - v16;
  v18 = specialized static TaskLoggingService.getAppFrom(_:)(a10);
  if (!v18)
  {
    v18 = specialized static TaskLoggingService.getAppFrom(_:)(a9);
  }

  v134 = specialized static TaskLoggingService.getAppResolutionInfo(flowMetadata:)(a9);
  v146 = v19;
  v128 = v20;
  v21 = type metadata accessor for SiriKitReliabilityCodes();
  v22 = *(v21 - 8);
  v23 = *(v22 + 16);
  v135 = a6;
  v131 = v22 + 16;
  v130 = v23;
  v23(v17, a6, v21);
  v24 = *(v22 + 56);
  v133 = v21;
  v132 = v22 + 56;
  v129 = v24;
  v24(v17, 0, 1, v21);
  v136 = a1;
  v139 = ActivityType.asSELFTypeAndReason(_:)(v17);
  v127 = v25;
  outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v26 = SiriKitEventContext.resultCandidateId.getter();
  if (v27)
  {
    v28 = v26;
  }

  else
  {
    v28 = 13101;
  }

  if (v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = 0xE200000000000000;
  }

  v30 = *(a2 + 80);
  v31 = *(a2 + 88);
  v143 = a2;
  v32 = *(a7 + 24);
  v148 = *(a7 + 16);
  v140 = a7;
  v33 = [objc_allocWithZone(MEMORY[0x1E69CEB08]) init];
  if (!v33)
  {
    goto LABEL_35;
  }

  v34 = v33;
  v145 = v32;
  v35 = [objc_allocWithZone(MEMORY[0x1E69CEB98]) init];
  if (!v35)
  {

    v32 = v145;
LABEL_35:

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    __swift_project_value_buffer(v77, static Logger.instrumentation);

    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = v30;
      v81 = swift_slowAlloc();
      v82 = v32;
      v83 = swift_slowAlloc();
      v149[0] = v83;
      *v81 = 136315650;
      v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v149);

      *(v81 + 4) = v84;
      *(v81 + 12) = 2080;
      *(v81 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v148, v82, v149);
      *(v81 + 22) = 2080;
      *(v81 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v31, v149);
      _os_log_impl(&dword_1DC659000, v78, v79, "#TaskLoggingService SELF Log - unable to instantiate SELF schema, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v81, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v83, -1, -1);
      MEMORY[0x1E12A2F50](v81, -1, -1);
    }

LABEL_40:
  }

  v36 = v35;
  v138 = v34;
  v37 = TaskLoggingService.constructMetaData(resultCandidateId:executionRequestId:taskId:)(v28, v29, v30, v31, v148, v145);
  if (!v37)
  {

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v86 = type metadata accessor for Logger();
    __swift_project_value_buffer(v86, static Logger.instrumentation);

    v87 = v145;

    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v126 = v30;
      v91 = v90;
      v92 = swift_slowAlloc();
      v149[0] = v92;
      *v91 = 136315650;
      v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v149);

      *(v91 + 4) = v93;
      *(v91 + 12) = 2080;
      *(v91 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v148, v87, v149);
      *(v91 + 22) = 2080;
      *(v91 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, v31, v149);
      _os_log_impl(&dword_1DC659000, v88, v89, "#TaskLoggingService SELF Log - unable to construct metaData, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v91, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v92, -1, -1);
      MEMORY[0x1E12A2F50](v91, -1, -1);
    }

    goto LABEL_40;
  }

  v124 = v37;
  v38 = [objc_allocWithZone(MEMORY[0x1E69CEB00]) init];
  v125 = v31;
  v126 = v30;
  if (v38)
  {
    v39 = v38;
    v40 = *(v147 + 152);
    (*(v147 + 144))(v149, v18);
    v41 = v18;
    v42 = v150;
    v43 = v151;
    __swift_project_boxed_opaque_existential_1(v149, v150);
    v44 = (*(v43 + 8))(v42, v43);
    if (v45)
    {
      v46 = v45;
    }

    else
    {
      v44 = 0x6C7070615F746F6ELL;
      v46 = 0xEE00656C62616369;
    }

    v47 = MEMORY[0x1E12A1410](v44, v46);

    [v39 setBundleId_];

    v48 = v150;
    v49 = v151;
    __swift_project_boxed_opaque_existential_1(v149, v150);
    v50 = *(v49 + 16);
    v51 = v49;
    v31 = v125;
    v52 = v50(v48, v51);
    if (v53)
    {
      v54 = v53;
    }

    else
    {
      v52 = 0x6C7070615F746F6ELL;
      v54 = 0xEE00656C62616369;
    }

    v55 = MEMORY[0x1E12A1410](v52, v54);

    [v39 setAppVersion_];

    v18 = v41;
    v30 = v126;
    [v39 setAppResolutionType_];
    [v36 setAppContext_];

    __swift_destroy_boxed_opaque_existential_1Tm(v149);
  }

  v56 = [objc_allocWithZone(MEMORY[0x1E69CEB88]) init];
  if (v56)
  {
    v57 = v56;
    v58 = MEMORY[0x1E12A1410](v142, v144);
    [v57 setCurrentTaskName_];

    [v57 setCurrentTaskType_];
    v59 = HIDWORD(v139);
    [v57 setFlowStateType_];
    v60 = [objc_allocWithZone(MEMORY[0x1E69CEB90]) init];
    if (v60)
    {
      if (v127)
      {
        v61 = 0;
      }

      else
      {
        v61 = v59;
      }

      v62 = v60;
      [v60 setStatusReason_];
      [v57 setFlowStateReason_];
    }

    [v57 setResolvedSlotName_];
    [v57 setFlowStateReasonDescription_];
    [v36 setFlowState_];
  }

  Date.timeIntervalSince1970.getter();
  if ((*&v63 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_55;
  }

  v64 = v138;
  if (v63 <= -9.22337204e18)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v63 >= 9.22337204e18)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  [v36 setTimestampMs_];
  [v36 setSequenceNum_];

  [v64 setFlowStep_];
  v65 = v64;
  v66 = v124;
  [v65 setEventMetadata_];

  if (one-time initialization token for instrumentation != -1)
  {
LABEL_57:
    swift_once();
  }

  v67 = type metadata accessor for Logger();
  __swift_project_value_buffer(v67, static Logger.instrumentation);

  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.debug.getter();

  v70 = os_log_type_enabled(v68, v69);
  v71 = v148;
  if (v70)
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v149[0] = v73;
    *v72 = 136315906;
    v74 = v18;
    if (v139 > 0xD0)
    {
      v75 = @"FLOWSTATETYPE_UNKNOWN";
      v76 = @"FLOWSTATETYPE_UNKNOWN";
    }

    else
    {
      v75 = off_1E8643AB8[v139];
      v76 = off_1E8644140[v139];
    }

    v95 = v75;
    v96 = v76;
    v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v99 = v98;

    v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v99, v149);

    *(v72 + 4) = v100;
    *(v72 + 12) = 2080;
    v71 = v148;
    v101 = v145;
    *(v72 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v148, v145, v149);
    *(v72 + 22) = 2080;
    *(v72 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v142, v144, v149);
    *(v72 + 32) = 2080;
    *(v72 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v143 + 96), *(v143 + 104), v149);
    _os_log_impl(&dword_1DC659000, v68, v69, "#TaskLoggingService SELF Log - logging task step: %s for taskId: %s, taskType: %s, interactionId:%s", v72, 0x2Au);
    swift_arrayDestroy();
    v102 = v73;
    v94 = v101;
    MEMORY[0x1E12A2F50](v102, -1, -1);
    MEMORY[0x1E12A2F50](v72, -1, -1);

    v18 = v74;
    v31 = v125;
    v30 = v126;
  }

  else
  {

    v94 = v145;
  }

  v103 = v147;
  v104 = *(v147 + 104);
  (*(v147 + 96))(v138);
  TaskLoggingService.emitRequestLink(executionRequestId:taskId:)(v30, v31, v71, v94);
  outlined init with copy of ReferenceResolutionClientProtocol(v103 + 16, v149);
  v105 = v150;
  v106 = v151;
  v107 = __swift_project_boxed_opaque_existential_1(v149, v150);
  v123 = a9;
  v122 = v18;
  v139 = v107;
  if (v18)
  {

    v108 = App.appIdentifier.getter();
    v110 = v109;
  }

  else
  {
    v108 = 0;
    v110 = 0;
  }

  v111 = v135;
  v112 = SiriKitReliabilityCodes.rawValue.getter();
  v113 = *(v106 + 8);
  v120 = v105;
  v121 = v106;
  v114 = v136;
  v116 = v141;
  v115 = v142;
  v117 = v144;
  v113(v136, v141, v142, v144, v108, v110, v126, v125, 0, 0, v112, v118, v148, v145, v120, v121);

  __swift_destroy_boxed_opaque_existential_1Tm(v149);
  v119 = v133;
  v130(v17, v111, v133);
  v129(v17, 0, 1, v119);
  TaskLoggingService.logAndDonateClassicFlowTask(activityType:eventContext:eventTime:task:app:attribute:domainFlowActivity:intent:intentTypeName:parameterName:responseId:statusDescription:statusReason:shouldDonateToCurare:appResolutionName:flowMetadata:)(v114, v143, v116, v140, v122, 0, 0, v137, 0, v115, v117, 0, 0, 0, 0, 0, 0, v17, 0, v134, v146, v123);

  return outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
}

void TaskLoggingService.logTaskStepAndEntityContextTier1(activityType:eventContext:eventTime:task:app:attribute:chosenItem:disambiguationItems:domainContext:domainFlowActivity:intent:intentTypeName:parameterName:responseId:statusDescription:statusReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, void *a10, unint64_t a11, void *a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v22 = v21;
  v171 = a7;
  v169 = a6;
  v175 = a3;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v165 = &v155 - v30;
  if (a9 && *(a9 + 16))
  {
    v31 = TaskLoggingService.createFlowEntityContextTier1(disambiguationItems:chosenItem:)(a9, a8);
    if (v31)
    {
      v32 = v31;
      v33 = SiriKitEventContext.resultCandidateId.getter();
      v35 = 13101;
      if (v34)
      {
        v35 = v33;
        v36 = v34;
      }

      else
      {
        v36 = 0xE200000000000000;
      }

      TaskLoggingService.logSELFEntityContextTier1(entityContextTier1:resultCandidateId:executionRequestId:taskId:)(v32, v35, v36, *(a2 + 80), *(a2 + 88), *(a4 + 16), *(a4 + 24));

      v37 = v32;
      v174 = specialized TaskLoggingService.createFlowPlatformContext(entityContextTier1:)(v32);

      goto LABEL_14;
    }

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.instrumentation);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v185[0] = v42;
      *v41 = 136315394;
      *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a4 + 16), *(a4 + 24), v185);
      *(v41 + 12) = 2080;
      *(v41 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a2 + 80), *(a2 + 88), v185);
      _os_log_impl(&dword_1DC659000, v39, v40, "#TaskLoggingService SELF Log - not logging EntityContextTier1 event for taskId: %s, executionRequestId: %s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v42, -1, -1);
      MEMORY[0x1E12A2F50](v41, -1, -1);
    }
  }

  v174 = 0;
LABEL_14:
  v164 = a13;
  v163 = a12;
  if (a14)
  {
    v176 = a13;
    v43 = a14;
  }

  else
  {
    if (a12)
    {
      v44 = [a12 typeName];
      v176 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v45;
    }

    else
    {
      v43 = 0xE700000000000000;
      v176 = 0x6E776F6E6B6E55;
    }
  }

  v172 = a19;
  v173 = a20;
  v170 = a16;
  v168 = a15;
  v166 = a14;
  swift_bridgeObjectRetain_n();
  v182 = a21;
  v167 = a1;
  v157 = ActivityType.asSELFTypeAndReason(_:)(a21);
  v47 = v46;
  v48 = SiriKitEventContext.resultCandidateId.getter();
  v50 = 13101;
  if (v49)
  {
    v50 = v48;
  }

  v160 = v50;
  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0xE200000000000000;
  }

  v52 = *(a2 + 88);
  v54 = *(a4 + 16);
  v53 = *(a4 + 24);
  v183 = *(a2 + 80);
  v184 = v53;
  v55 = [objc_allocWithZone(MEMORY[0x1E69CEB08]) init];
  v177 = a4;
  v178 = a2;
  v179 = v43;
  v180 = v54;
  v181 = v52;
  if (!v55)
  {
    goto LABEL_40;
  }

  v159 = v55;
  v158 = [objc_allocWithZone(MEMORY[0x1E69CEB98]) init];
  if (!v158)
  {

LABEL_40:

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    __swift_project_value_buffer(v78, static Logger.instrumentation);

    v79 = v184;

    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = v52;
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v185[0] = v84;
      *v83 = 136315650;
      v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v160, v51, v185);

      *(v83 + 4) = v85;
      *(v83 + 12) = 2080;
      *(v83 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v180, v79, v185);
      *(v83 + 22) = 2080;
      *(v83 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v183, v82, v185);
      _os_log_impl(&dword_1DC659000, v80, v81, "#TaskLoggingService SELF Log - unable to instantiate SELF schema, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v83, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v84, -1, -1);
      MEMORY[0x1E12A2F50](v83, -1, -1);

      goto LABEL_86;
    }

    goto LABEL_45;
  }

  v56 = TaskLoggingService.constructMetaData(resultCandidateId:executionRequestId:taskId:)(v160, v51, v183, v52, v54, v184);
  if (!v56)
  {

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v86 = type metadata accessor for Logger();
    __swift_project_value_buffer(v86, static Logger.instrumentation);

    v87 = v184;

    v88 = Logger.logObject.getter();
    v89 = v52;
    v90 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v88, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v185[0] = v92;
      *v91 = 136315650;
      v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v160, v51, v185);

      *(v91 + 4) = v93;
      *(v91 + 12) = 2080;
      *(v91 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v180, v87, v185);
      *(v91 + 22) = 2080;
      *(v91 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v183, v89, v185);
      _os_log_impl(&dword_1DC659000, v88, v90, "#TaskLoggingService SELF Log - unable to construct metaData, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v91, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v92, -1, -1);
      MEMORY[0x1E12A2F50](v91, -1, -1);

      goto LABEL_86;
    }

LABEL_45:

    goto LABEL_86;
  }

  v156 = v56;
  v57 = [objc_allocWithZone(MEMORY[0x1E69CEB00]) init];
  if (v57)
  {
    v58 = v57;
    v59 = *(v22 + 152);
    (*(v22 + 144))(v185, a5);
    v60 = v186;
    v61 = v187;
    __swift_project_boxed_opaque_existential_1(v185, v186);
    v62 = (*(v61 + 8))(v60, v61);
    if (v63)
    {
      v64 = v63;
    }

    else
    {
      v62 = 0x6C7070615F746F6ELL;
      v64 = 0xEE00656C62616369;
    }

    v65 = MEMORY[0x1E12A1410](v62, v64);

    [v58 setBundleId_];

    v66 = v186;
    v67 = v187;
    __swift_project_boxed_opaque_existential_1(v185, v186);
    v68 = (*(v67 + 16))(v66, v67);
    if (v69)
    {
      v70 = v69;
    }

    else
    {
      v68 = 0x6C7070615F746F6ELL;
      v70 = 0xEE00656C62616369;
    }

    v43 = v179;
    v71 = MEMORY[0x1E12A1410](v68, v70);

    [v58 setAppVersion_];

    v52 = v181;
    [v158 setAppContext_];

    __swift_destroy_boxed_opaque_existential_1Tm(v185);
  }

  v155 = specialized static SiriKitMetricsUtils.formulateSimplifiedStatusDescription(statusDescription:)(v172, v173);
  v73 = v72;
  v74 = [objc_allocWithZone(MEMORY[0x1E69CEB88]) init];
  if (v74)
  {
    v75 = v74;
    v76 = MEMORY[0x1E12A1410](v176, v43);

    [v75 setCurrentTaskName_];

    if (v171)
    {
      v77 = MEMORY[0x1E12A1410](v169);
    }

    else
    {
      v77 = 0;
    }

    v96 = v158;
    [v75 setCurrentTaskType_];

    v97 = HIDWORD(v157);
    [v75 setFlowStateType_];
    v98 = [objc_allocWithZone(MEMORY[0x1E69CEB90]) init];
    if (v98)
    {
      if (v47)
      {
        v99 = 0;
      }

      else
      {
        v99 = v97;
      }

      v100 = v98;
      [v98 setStatusReason_];
      [v75 setFlowStateReason_];
    }

    v95 = v184;
    if (v170)
    {
      v101 = MEMORY[0x1E12A1410](v168);
    }

    else
    {
      v101 = 0;
    }

    [v75 setResolvedSlotName_];

    if (v73)
    {
      v102 = MEMORY[0x1E12A1410](v155, v73);
    }

    else
    {
      v102 = 0;
    }

    v94 = v174;
    [v75 setFlowStateReasonDescription_];

    [v96 setFlowState_];
    v52 = v181;
    if (a10)
    {
      goto LABEL_66;
    }
  }

  else
  {

    v94 = v174;
    v95 = v184;
    v96 = v158;
    if (a10)
    {
LABEL_66:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v103 = swift_allocObject();
      *(v103 + 16) = xmmword_1DCA70640;
      *(v103 + 32) = a10;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for FLOWSchemaFLOWDomainContext, 0x1E69CEB10);
      v104 = a10;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v96 setDomainContexts_];

      v52 = v181;
    }
  }

  Date.timeIntervalSince1970.getter();
  if ((*&v106 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_94;
  }

  if (v106 <= -9.22337204e18)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  if (v106 < 9.22337204e18)
  {
    [v96 setTimestampMs_];
    [v96 setSequenceNum_];
    if (v94)
    {
      v107 = one-time initialization token for instrumentation;
      v108 = v94;
      if (v107 != -1)
      {
        swift_once();
      }

      v109 = type metadata accessor for Logger();
      __swift_project_value_buffer(v109, static Logger.instrumentation);

      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v155 = v108;
        v113 = v112;
        v114 = swift_slowAlloc();
        v185[0] = v114;
        *v113 = 136315650;
        v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v160, v51, v185);

        *(v113 + 4) = v115;
        *(v113 + 12) = 2080;
        *(v113 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v180, v95, v185);
        *(v113 + 22) = 2080;
        *(v113 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v183, v52, v185);
        _os_log_impl(&dword_1DC659000, v110, v111, "#TaskLoggingService Added platformContext for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v113, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v114, -1, -1);
        v116 = v113;
        v108 = v155;
        MEMORY[0x1E12A2F50](v116, -1, -1);
      }

      else
      {
      }

      v117 = v156;
      v96 = v158;
      [v158 setPlatformRelatedContext_];

      v95 = v184;
    }

    else
    {

      v117 = v156;
    }

    v118 = v159;
    [v159 setFlowStep_];
    [v118 setEventMetadata_];

    if (one-time initialization token for instrumentation == -1)
    {
      goto LABEL_79;
    }

    goto LABEL_96;
  }

LABEL_95:
  __break(1u);
LABEL_96:
  swift_once();
LABEL_79:
  v119 = type metadata accessor for Logger();
  __swift_project_value_buffer(v119, static Logger.instrumentation);

  v120 = Logger.logObject.getter();
  v121 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v120, v121))
  {
    v122 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    v185[0] = v123;
    *v122 = 136315906;
    if (v157 > 0xD0)
    {
      v124 = @"FLOWSTATETYPE_UNKNOWN";
      v125 = @"FLOWSTATETYPE_UNKNOWN";
    }

    else
    {
      v124 = off_1E86447C8[v157];
      v125 = off_1E8644E50[v157];
    }

    v128 = v124;
    v129 = v125;
    v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v132 = v131;

    v133 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v132, v185);

    *(v122 + 4) = v133;
    *(v122 + 12) = 2080;
    v127 = v180;
    *(v122 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v180, v95, v185);
    *(v122 + 22) = 2080;
    *(v122 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v176, v179, v185);
    *(v122 + 32) = 2080;
    *(v122 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v178 + 96), *(v178 + 104), v185);
    _os_log_impl(&dword_1DC659000, v120, v121, "#TaskLoggingService SELF Log - logging task step: %s for taskId: %s, taskType: %s, interactionId:%s", v122, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v123, -1, -1);
    MEMORY[0x1E12A2F50](v122, -1, -1);

    v126 = v181;
  }

  else
  {

    v127 = v180;
    v126 = v181;
  }

  v134 = *(v22 + 104);
  v135 = v159;
  (*(v22 + 96))(v159);
  TaskLoggingService.emitRequestLink(executionRequestId:taskId:)(v183, v126, v127, v95);

LABEL_86:
  outlined init with copy of ReferenceResolutionClientProtocol(v22 + 16, v185);
  v137 = v186;
  v136 = v187;
  __swift_project_boxed_opaque_existential_1(v185, v186);
  v162 = v22;
  v161 = a5;
  v160 = a11;
  if (a5)
  {
    v138 = App.appIdentifier.getter();
    v140 = v139;
  }

  else
  {
    v138 = 0;
    v140 = 0;
  }

  v159 = a18;
  v158 = a17;
  v141 = v165;
  outlined init with copy of ReferenceResolutionClientProtocol?(v182, v165, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
  v142 = type metadata accessor for SiriKitReliabilityCodes();
  v143 = *(v142 - 8);
  if ((*(v143 + 48))(v141, 1, v142) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v141, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR);
    v144 = 0;
    v145 = 0;
  }

  else
  {
    v144 = SiriKitReliabilityCodes.rawValue.getter();
    v145 = v146;
    (*(v143 + 8))(v141, v142);
  }

  v147 = *(v136 + 8);
  v153 = v137;
  v154 = v136;
  v152 = v144;
  v148 = v170;
  v149 = v168;
  v150 = v167;
  v151 = v175;
  v147(v167, v175, v176, v179, v138, v140, v183, v181, v168, v170, v152, v145, v180, v184, v153, v154);

  __swift_destroy_boxed_opaque_existential_1Tm(v185);
  TaskLoggingService.logAndDonateClassicFlowTask(activityType:eventContext:eventTime:task:app:attribute:domainFlowActivity:intent:intentTypeName:parameterName:responseId:statusDescription:statusReason:shouldDonateToCurare:appResolutionName:flowMetadata:)(v150, v178, v151, v177, v161, v169, v171, v160, v163, v164, v166, v149, v148, v158, v159, v172, v173, v182, 1u, 0, 0, 0);
}

void TaskLoggingService.logDomainTier1Data(eventContext:task:taskType:tierOneFlowEvent:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, id a5)
{
  v6 = v5;
  v12 = [a5 flowStep];
  if (v12)
  {

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.instrumentation);

    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v40 = v16;
      *v15 = 136315650;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v40);
      *(v15 + 12) = 2080;
      *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a2 + 16), *(a2 + 24), &v40);
      *(v15 + 22) = 2080;
      *(v15 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1[12], a1[13], &v40);
      _os_log_impl(&dword_1DC659000, oslog, v14, "Ignoring tierOneFlowEvent with illegally set flowStep for taskType: %s, taskId: %s, interactionId:%s", v15, 0x20u);
      swift_arrayDestroy();
      v17 = v16;
LABEL_6:
      MEMORY[0x1E12A2F50](v17, -1, -1);
      MEMORY[0x1E12A2F50](v15, -1, -1);

      return;
    }
  }

  else
  {
    v37 = a3;
    v18 = SiriKitEventContext.resultCandidateId.getter();
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v18 = 13101;
      v20 = 0xE200000000000000;
    }

    v21 = a1[10];
    v23 = *(a2 + 16);
    v22 = *(a2 + 24);
    v38 = a1[11];
    oslog = TaskLoggingService.constructMetaData(resultCandidateId:executionRequestId:taskId:)(v18, v20, v21, v38, v23, v22);

    if (oslog)
    {
      v36 = v21;
      v24 = v22;
      v25 = v23;
      [a5 setEventMetadata_];
      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Logger.instrumentation);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v40 = v30;
        *v29 = 136315650;
        *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, a4, &v40);
        *(v29 + 12) = 2080;
        *(v29 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v24, &v40);
        *(v29 + 22) = 2080;
        *(v29 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1[12], a1[13], &v40);
        _os_log_impl(&dword_1DC659000, v27, v28, "#TaskLoggingService SELF Log - logging tier1 data for taskType: %s, with taskId: %s, interactionId:%s", v29, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v30, -1, -1);
        MEMORY[0x1E12A2F50](v29, -1, -1);
      }

      v31 = *(v6 + 104);
      (*(v6 + 96))(a5);
      TaskLoggingService.emitRequestLink(executionRequestId:taskId:)(v36, v38, v25, v24);
    }

    else
    {
      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static Logger.instrumentation);

      oslog = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v33))
      {
        v34 = v22;
        v15 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v40 = v35;
        *v15 = 136315394;
        *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, a4, &v40);
        *(v15 + 12) = 2080;
        *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v34, &v40);
        _os_log_impl(&dword_1DC659000, oslog, v33, "#TaskLoggingService SELF Log - unable to construct metaData, not logging tier1 data for taskType: %s with taskId: %s", v15, 0x16u);
        swift_arrayDestroy();
        v17 = v35;
        goto LABEL_6;
      }
    }
  }
}

uint64_t TaskLoggingService.logTaskConfiguration(eventContext:eventTime:task:taskConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[10];
  v10 = v4[11];
  __swift_project_boxed_opaque_existential_1(v4 + 7, v9);
  return (*(v10 + 16))(a1, a2, a4, *(a3 + 16), *(a3 + 24), v9, v10);
}

void TaskLoggingService.logLocationAccessPrompt(eventContext:task:promptContext:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = [objc_allocWithZone(MEMORY[0x1E69CEB08]) init];
  if (v8)
  {
    v9 = v8;
    [v8 setLocationAccessPermissionPromptContext_];
    v10 = SiriKitEventContext.resultCandidateId.getter();
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v10 = 13101;
      v12 = 0xE200000000000000;
    }

    v13 = TaskLoggingService.constructMetaData(resultCandidateId:executionRequestId:taskId:)(v10, v12, *(a1 + 80), *(a1 + 88), *(a2 + 16), *(a2 + 24));

    [v9 setEventMetadata_];

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.instrumentation);
    v15 = a3;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v30 = v19;
      *v18 = 136315138;
      v20 = [v15 formattedJsonBody];
      if (v20)
      {
        v21 = v20;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v25 = String.init<A>(describing:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v30);

      *(v18 + 4) = v27;
      _os_log_impl(&dword_1DC659000, v16, v17, "#TaskLoggingService SELF Log - logging locationAccessPrompt; promptContext=%s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1E12A2F50](v19, -1, -1);
      MEMORY[0x1E12A2F50](v18, -1, -1);
    }

    v28 = *(v4 + 104);
    (*(v4 + 96))(v9);
  }

  else
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.instrumentation);
    oslog = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1DC659000, oslog, v23, "#TaskLoggingService SELF Log - locationAccessPrompt NOT logged; missing schema event", v24, 2u);
      MEMORY[0x1E12A2F50](v24, -1, -1);
    }
  }
}

uint64_t TaskLoggingService.__allocating_init(biomeDonator:curareDonator:selfEmitter:tier1LinkIdSupplier:derivedIdentifierSupplier:appInformationSupplier:sensitivityManager:featureChecker:)(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t *a11)
{
  v17 = a11[3];
  v18 = a11[4];
  v19 = __swift_mutable_project_boxed_opaque_existential_1(a11, v17);
  v20 = specialized TaskLoggingService.__allocating_init(biomeDonator:curareDonator:selfEmitter:tier1LinkIdSupplier:derivedIdentifierSupplier:appInformationSupplier:sensitivityManager:featureChecker:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, v19, v11, v17, v18);
  __swift_destroy_boxed_opaque_existential_1Tm(a11);
  return v20;
}

uint64_t static TaskLoggingService.instance.getter()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }
}

id closure #1 in default argument 3 of TaskLoggingService.init(biomeDonator:curareDonator:selfEmitter:tier1LinkIdSupplier:derivedIdentifierSupplier:appInformationSupplier:sensitivityManager:featureChecker:)()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v5 = objc_allocWithZone(MEMORY[0x1E69CF638]);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v7 = [v5 initWithNSUUID_];

  (*(v1 + 8))(v4, v0);
  return v7;
}

uint64_t TaskLoggingService.init(biomeDonator:curareDonator:selfEmitter:tier1LinkIdSupplier:derivedIdentifierSupplier:appInformationSupplier:sensitivityManager:featureChecker:)(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t *a11)
{
  v29 = a7;
  v30 = a8;
  v27 = a5;
  v28 = a6;
  v26 = a9;
  v16 = a11[3];
  v17 = a11[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a11, v16);
  v19 = *(*(v16 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22, v20);
  v24 = specialized TaskLoggingService.init(biomeDonator:curareDonator:selfEmitter:tier1LinkIdSupplier:derivedIdentifierSupplier:appInformationSupplier:sensitivityManager:featureChecker:)(a1, a2, a3, a4, v27, v28, v29, v30, v26, a10, v22, v11, v16, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(a11);
  return v24;
}

void *TaskLoggingService.createFlowEntityContextTier1(disambiguationItems:chosenItem:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = MEMORY[0x1E69E7CC0];
  v30 = MEMORY[0x1E69E7CC0];
  v4 = a1 + 32;
  do
  {
    outlined init with copy of Any(v4, v28);
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for INPerson, 0x1E696E940);
    if (swift_dynamicCast())
    {
      v5 = [objc_allocWithZone(MEMORY[0x1E69CEB50]) init];
      if (v5)
      {
        v6 = v5;
        v7 = [v27 contactIdentifier];
        [v6 setEntityId_];

        v8 = v6;
        MEMORY[0x1E12A1680]();
        if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v24 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v3 = v30;
      }

      else
      {
      }
    }

    v4 += 32;
    --v2;
  }

  while (v2);
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

LABEL_25:

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.instrumentation);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_30;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "#TaskLoggingService cannot initiate entityPresented or disambiguationItem is not INPerson";
    goto LABEL_29;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_25;
  }

LABEL_12:
  v9 = [objc_allocWithZone(MEMORY[0x1E69CEB48]) init];
  if (!v9)
  {

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.instrumentation);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_30;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "#TaskLoggingService cannot initiate entityContextTier1";
LABEL_29:
    _os_log_impl(&dword_1DC659000, v16, v17, v19, v18, 2u);
    MEMORY[0x1E12A2F50](v18, -1, -1);
LABEL_30:

    return 0;
  }

  v10 = v9;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for FLOWSchemaFLOWEntityTier1, 0x1E69CEB50);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setEntitiesPresenteds_];

  outlined init with copy of ReferenceResolutionClientProtocol?(a2, v28, &_sypSgMd, &_sypSgMR);
  if (v29)
  {
    if (swift_dynamicCast())
    {
      v12 = [objc_allocWithZone(MEMORY[0x1E69CEB50]) init];
      if (v12)
      {
        v13 = v12;
        v14 = [v27 contactIdentifier];
        [v13 setEntityId_];

        [v10 setEntitySelected_];
      }

      else
      {
      }
    }
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v28, &_sypSgMd, &_sypSgMR);
  }

  v20 = *(v26 + 120);
  v21 = (*(v26 + 112))();
  [v10 setLinkId_];

  return v10;
}

void TaskLoggingService.logSELFEntityContextTier1(entityContextTier1:resultCandidateId:executionRequestId:taskId:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = v7;
  v16 = [objc_allocWithZone(MEMORY[0x1E69CEB08]) init];
  if (v16)
  {
    v17 = v16;
    v18 = TaskLoggingService.constructMetaData(resultCandidateId:executionRequestId:taskId:)(a2, a3, a4, a5, a6, a7);
    if (v18)
    {
      v44 = a4;
      oslog = v18;
      [v17 setFlowEntityContextTier1_];
      [v17 setEventMetadata_];
      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.instrumentation);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v24 = a2;
        v25 = a6;
        v26 = v23;
        v46 = v23;
        *v22 = 136315650;
        *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, a3, &v46);
        *(v22 + 12) = 2080;
        *(v22 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, a7, &v46);
        *(v22 + 22) = 2080;
        v27 = v44;
        *(v22 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, a5, &v46);
        _os_log_impl(&dword_1DC659000, v20, v21, "#TaskLoggingService SELF Log - logging entity for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v22, 0x20u);
        swift_arrayDestroy();
        v28 = v26;
        a6 = v25;
        MEMORY[0x1E12A2F50](v28, -1, -1);
        MEMORY[0x1E12A2F50](v22, -1, -1);
      }

      else
      {

        v27 = v44;
      }

      v43 = *(v8 + 104);
      (*(v8 + 96))(v17);
      TaskLoggingService.emitRequestLink(executionRequestId:taskId:)(v27, a5, a6, a7);
    }

    else
    {
      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      __swift_project_value_buffer(v36, static Logger.instrumentation);

      oslog = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v40 = a2;
        v41 = a6;
        v42 = v39;
        v46 = v39;
        *v38 = 136315650;
        *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, a3, &v46);
        *(v38 + 12) = 2080;
        *(v38 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, a7, &v46);
        *(v38 + 22) = 2080;
        *(v38 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v46);
        _os_log_impl(&dword_1DC659000, oslog, v37, "#TaskLoggingService SELF Log - unable to instantiate SELF schema, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v38, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v42, -1, -1);
        MEMORY[0x1E12A2F50](v38, -1, -1);

        goto LABEL_15;
      }
    }
  }

  else
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.instrumentation);

    oslog = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = a2;
      v34 = a6;
      v35 = v32;
      v46 = v32;
      *v31 = 136315650;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, a3, &v46);
      *(v31 + 12) = 2080;
      *(v31 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, a7, &v46);
      *(v31 + 22) = 2080;
      *(v31 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v46);
      _os_log_impl(&dword_1DC659000, oslog, v30, "#TaskLoggingService SELF Log - unable to instantiate SELF schema, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v31, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v35, -1, -1);
      MEMORY[0x1E12A2F50](v31, -1, -1);
      goto LABEL_15;
    }
  }

LABEL_15:
}

NSObject *TaskLoggingService.createFlowTaskSELFClientEvent(activityType:eventTime:resultCandidateId:taskType:app:appResolutionType:attribute:domainContext:executionRequestId:parameterName:platformContext:statusReason:statusReasonDescription:taskId:)(unsigned int a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, unint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21)
{
  v26 = [objc_allocWithZone(MEMORY[0x1E69CEB08]) init];
  if (!v26)
  {
    goto LABEL_18;
  }

  v27 = v26;
  v88 = [objc_allocWithZone(MEMORY[0x1E69CEB98]) init];
  if (!v88)
  {

LABEL_18:
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    __swift_project_value_buffer(v54, static Logger.instrumentation);

    v27 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v90[0] = v57;
      *v56 = 136315650;
      *(v56 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v90);
      *(v56 + 12) = 2080;
      *(v56 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a20, a21, v90);
      *(v56 + 22) = 2080;
      *(v56 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a12, a13, v90);
      _os_log_impl(&dword_1DC659000, v27, v55, "#TaskLoggingService SELF Log - unable to instantiate SELF schema, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v56, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v57, -1, -1);
      MEMORY[0x1E12A2F50](v56, -1, -1);
    }

    goto LABEL_27;
  }

  v28 = TaskLoggingService.constructMetaData(resultCandidateId:executionRequestId:taskId:)(a3, a4, a12, a13, a20, a21);
  if (v28)
  {
    v85 = v28;
    v29 = a19;
    v30 = [objc_allocWithZone(MEMORY[0x1E69CEB00]) init];
    if (v30)
    {
      v31 = v30;
      v32 = *(v21 + 144);
      v33 = *(v21 + 152);
      v32(v90, a7);
      v35 = v91;
      v34 = v92;
      __swift_project_boxed_opaque_existential_1(v90, v91);
      v36 = (*(v34 + 8))(v35, v34);
      if (v37)
      {
        v38 = v37;
      }

      else
      {
        v36 = 0x6C7070615F746F6ELL;
        v38 = 0xEE00656C62616369;
      }

      v39 = MEMORY[0x1E12A1410](v36, v38);

      [v31 setBundleId_];

      v40 = v91;
      v41 = v92;
      __swift_project_boxed_opaque_existential_1(v90, v91);
      v42 = (*(v41 + 16))(v40, v41);
      if (v43)
      {
        v44 = v43;
      }

      else
      {
        v42 = 0x6C7070615F746F6ELL;
        v44 = 0xEE00656C62616369;
      }

      v45 = MEMORY[0x1E12A1410](v42, v44);

      [v31 setAppVersion_];

      if ((a8 & 0x100000000) == 0)
      {
        [v31 setAppResolutionType_];
      }

      [v88 setAppContext_];

      __swift_destroy_boxed_opaque_existential_1Tm(v90);
      v29 = a19;
    }

    v46 = a11;
    v47 = specialized static SiriKitMetricsUtils.formulateSimplifiedStatusDescription(statusDescription:)(a18, v29);
    v49 = v48;
    v50 = [objc_allocWithZone(MEMORY[0x1E69CEB88]) init];
    if (v50)
    {
      v51 = v50;
      v84 = v47;
      v52 = MEMORY[0x1E12A1410](a5, a6);
      [v51 setCurrentTaskName_];

      if (a10)
      {
        v53 = MEMORY[0x1E12A1410](a9, a10);
      }

      else
      {
        v53 = 0;
      }

      v67 = a15;
      [v51 setCurrentTaskType_];

      [v51 setFlowStateType_];
      v68 = [objc_allocWithZone(MEMORY[0x1E69CEB90]) init];
      v66 = a4;
      if (v68)
      {
        if ((a17 & 0x100000000) != 0)
        {
          v69 = 0;
        }

        else
        {
          v69 = a17;
        }

        v70 = v68;
        [v68 setStatusReason_];
        [v51 setFlowStateReason_];
      }

      v64 = a13;
      if (a15)
      {
        v67 = MEMORY[0x1E12A1410](a14, a15);
      }

      [v51 setResolvedSlotName_];

      if (v49)
      {
        v71 = MEMORY[0x1E12A1410](v84, v49);
      }

      else
      {
        v71 = 0;
      }

      [v51 setFlowStateReasonDescription_];

      v65 = v88;
      [v88 setFlowState_];

      v46 = a11;
      if (a11)
      {
        goto LABEL_42;
      }
    }

    else
    {

      v64 = a13;
      v65 = v88;
      v66 = a4;
      if (a11)
      {
LABEL_42:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v72 = swift_allocObject();
        *(v72 + 16) = xmmword_1DCA70640;
        *(v72 + 32) = v46;
        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for FLOWSchemaFLOWDomainContext, 0x1E69CEB10);
        v46 = v46;
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v65 setDomainContexts_];
      }
    }

    Date.timeIntervalSince1970.getter();
    if ((*&v74 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v74 > -9.22337204e18)
    {
      if (v74 < 9.22337204e18)
      {
        [v65 setTimestampMs_];
        [v65 setSequenceNum_];
        if (!a16)
        {
LABEL_51:
          [v27 setFlowStep:v65];
          [v27 setEventMetadata:v85];

          return v27;
        }

        v75 = one-time initialization token for instrumentation;
        v46 = a16;
        if (v75 == -1)
        {
LABEL_48:
          v76 = type metadata accessor for Logger();
          __swift_project_value_buffer(v76, static Logger.instrumentation);

          v77 = Logger.logObject.getter();
          v78 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v77, v78))
          {
            v79 = swift_slowAlloc();
            v80 = swift_slowAlloc();
            v81 = v66;
            v82 = v80;
            v90[0] = v80;
            *v79 = 136315650;
            *(v79 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, v81, v90);
            *(v79 + 12) = 2080;
            *(v79 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a20, a21, v90);
            *(v79 + 22) = 2080;
            *(v79 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a12, v64, v90);
            _os_log_impl(&dword_1DC659000, v77, v78, "#TaskLoggingService Added platformContext for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v79, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1E12A2F50](v82, -1, -1);
            MEMORY[0x1E12A2F50](v79, -1, -1);
          }

          [v65 setPlatformRelatedContext_];
          goto LABEL_51;
        }

LABEL_56:
        swift_once();
        goto LABEL_48;
      }

LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    __break(1u);
    goto LABEL_55;
  }

  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v58 = type metadata accessor for Logger();
  __swift_project_value_buffer(v58, static Logger.instrumentation);

  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = a4;
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v90[0] = v63;
    *v62 = 136315650;
    *(v62 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, v61, v90);
    *(v62 + 12) = 2080;
    *(v62 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a20, a21, v90);
    *(v62 + 22) = 2080;
    *(v62 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a12, a13, v90);
    _os_log_impl(&dword_1DC659000, v59, v60, "#TaskLoggingService SELF Log - unable to construct metaData, not logging Task step for resultCandidateId: %s, taskId: %s, executionRequestId: %s", v62, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v63, -1, -1);
    MEMORY[0x1E12A2F50](v62, -1, -1);
  }

LABEL_27:
  return 0;
}

uint64_t TaskLoggingService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v1 = *(v0 + 104);

  v2 = *(v0 + 120);

  v3 = *(v0 + 136);

  v4 = *(v0 + 152);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 168));
  return v0;
}

uint64_t TaskLoggingService.__deallocating_deinit()
{
  TaskLoggingService.deinit();

  return swift_deallocClassInstance();
}

id App.versionOnCurrentDevice.getter()
{
  v0 = App.appIdentifier.getter();
  if (!v1)
  {
    return 0;
  }

  v2 = v0;
  v3 = v1;
  v4 = objc_allocWithZone(MEMORY[0x1E69635F8]);
  result = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v2, v3, 0);
  if (result)
  {
    v6 = result;
    v7 = [result bundleIdentifier];
    if (v7)
    {
      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v9;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E12A1410]();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t specialized TaskLoggingService.init(biomeDonator:curareDonator:selfEmitter:tier1LinkIdSupplier:derivedIdentifierSupplier:appInformationSupplier:sensitivityManager:featureChecker:)(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(a12 + 192) = a13;
  *(a12 + 200) = a14;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((a12 + 168));
  (*(*(a13 - 8) + 32))(boxed_opaque_existential_0, a11, a13);
  outlined init with take of ReferenceResolutionClientProtocol(a1, a12 + 16);
  outlined init with take of ReferenceResolutionClientProtocol(a2, a12 + 56);
  *(a12 + 96) = a3;
  *(a12 + 104) = a4;
  *(a12 + 112) = a5;
  *(a12 + 120) = a6;
  *(a12 + 128) = a7;
  *(a12 + 136) = a8;
  *(a12 + 144) = a9;
  *(a12 + 160) = a10;
  return a12;
}

uint64_t specialized static TaskLoggingService.getAppFrom(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0bC6ResultOSgMd, &_s17SiriAppResolution0bC6ResultOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v45 - v4;
  v6 = type metadata accessor for AppResolutionResult();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v45 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - v18;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, v5, &_s17SiriAppResolution0bC6ResultOSgMd, &_s17SiriAppResolution0bC6ResultOSgMR);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s17SiriAppResolution0bC6ResultOSgMd, &_s17SiriAppResolution0bC6ResultOSgMR);
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.instrumentation);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1DC659000, v21, v22, "#TaskLoggingService SELF Log - cannot get app from nil appResolutionResult", v23, 2u);
      MEMORY[0x1E12A2F50](v23, -1, -1);
    }

    return 0;
  }

  v25 = *(v7 + 32);
  v51 = v7 + 32;
  v52 = v25;
  v25(v19, v5, v6);
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Logger.instrumentation);
  v27 = *(v7 + 16);
  v27(v16, v19, v6);
  v28 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();
  v29 = os_log_type_enabled(v28, v50);
  v30 = MEMORY[0x1E69CE258];
  if (v29)
  {
    v48 = v28;
    v31 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v53 = v46;
    v47 = v31;
    *v31 = 136315138;
    v27(v13, v16, v6);
    v32 = (*(v7 + 88))(v13, v6);
    v49 = *MEMORY[0x1E69CE248];
    if (v32 == v49 || v32 == *v30)
    {
      v33 = v30;
      (*(v7 + 96))(v13, v6);
      v36 = *v13;
      v45 = App.appIdentifier.getter();
      v38 = v37;

      if (v38)
      {
        v34 = *(v7 + 8);
        v34(v16, v6);
        v39 = v45;
        v40 = v48;
LABEL_19:
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v38, &v53);

        v42 = v47;
        *(v47 + 1) = v41;
        _os_log_impl(&dword_1DC659000, v40, v50, "#TaskLoggingService SELF Log - found app %s in appResolutionResult", v42, 0xCu);
        v43 = v46;
        __swift_destroy_boxed_opaque_existential_1Tm(v46);
        MEMORY[0x1E12A2F50](v43, -1, -1);
        MEMORY[0x1E12A2F50](v42, -1, -1);

        v30 = v33;
        v35 = v49;
        goto LABEL_20;
      }

      v34 = *(v7 + 8);
    }

    else
    {
      v33 = v30;
      v34 = *(v7 + 8);
      v34(v13, v6);
    }

    v40 = v48;
    v34(v16, v6);

    v38 = 0xE300000000000000;
    v39 = 7104878;
    goto LABEL_19;
  }

  v34 = *(v7 + 8);
  v34(v16, v6);
  v35 = *MEMORY[0x1E69CE248];
LABEL_20:
  v52(v10, v19, v6);
  v44 = (*(v7 + 88))(v10, v6);
  if (v44 != v35 && v44 != *v30)
  {
    v34(v10, v6);
    return 0;
  }

  (*(v7 + 96))(v10, v6);
  return *v10;
}

{
  if (!a1)
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.instrumentation);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_19;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "#TaskLoggingService SELF Log - cannot get app from nil flowMetadata";
    goto LABEL_18;
  }

  if (!*(a1 + 16) || (v2 = specialized __RawDictionaryStorage.find<A>(_:)(0x6C646E7542707061, 0xEB00000000644965), (v3 & 1) == 0) || (outlined init with copy of Any(*(a1 + 56) + 32 * v2, v18), (swift_dynamicCast() & 1) == 0))
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.instrumentation);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_19;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "#TaskLoggingService SELF Log - flowMetadata doesn't contain key 'appBundleId'";
LABEL_18:
    _os_log_impl(&dword_1DC659000, v11, v12, v14, v13, 2u);
    MEMORY[0x1E12A2F50](v13, -1, -1);
LABEL_19:

    return 0;
  }

  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.instrumentation);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v18);
    _os_log_impl(&dword_1DC659000, v5, v6, "#TaskLoggingService SELF Log - found app %s in flowMetadata", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  type metadata accessor for App();
  return App.__allocating_init(appIdentifier:)();
}

uint64_t specialized static TaskLoggingService.getAppResolutionInfo(flowMetadata:)(uint64_t a1)
{
  v2 = type metadata accessor for SiriKitReliabilityCodes();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5.n128_f64[0] = MEMORY[0x1EEE9AC00](v2);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && *(a1 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(0x6974756C6F736572, 0xEE00657079546E6FLL), (v9 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v8, v52);
    outlined init with copy of Any(v52, v51);
    if ((swift_dynamicCast() & 1) == 0)
    {
      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Logger.instrumentation);
      outlined init with copy of Any(v52, v51);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v50 = v25;
        *v24 = 136315138;
        outlined init with copy of Any(v51, &v48);
        v26 = String.init<A>(describing:)();
        v28 = v27;
        __swift_destroy_boxed_opaque_existential_1Tm(v51);
        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v50);

        *(v24 + 4) = v29;
        _os_log_impl(&dword_1DC659000, v22, v23, "#TaskLoggingService SELF Log - failed to map non-String: %s to SELF FLOWAppResolutionType, falling back to UNKNOWN", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v25);
        MEMORY[0x1E12A2F50](v25, -1, -1);
        MEMORY[0x1E12A2F50](v24, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v51);
      }

      outlined init with copy of Any(v52, v51);
      v10 = String.init<A>(describing:)();
      goto LABEL_22;
    }

    v10 = v48;
    v11 = v49;
    v12 = HIBYTE(v49) & 0xF;
    if ((v49 & 0x2000000000000000) == 0)
    {
      v12 = v48 & 0xFFFFFFFFFFFFLL;
    }

    if (!v12)
    {

      (*(v3 + 104))(v7, *MEMORY[0x1E69CFCC0], v2);
      v10 = SiriKitReliabilityCodes.rawValue.getter();
      (*(v3 + 8))(v7, v2);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      return v10;
    }

    v13._countAndFlagsBits = v10;
    v13._object = v11;
    AppResolutionType.init(rawValue:)(v13);
    v14 = v51[0];
    if (LOBYTE(v51[0]) == 13)
    {
      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Logger.instrumentation);

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v51[0] = v19;
        *v18 = 136315138;
        *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v51);
        _os_log_impl(&dword_1DC659000, v16, v17, "#TaskLoggingService SELF Log - failed to map appResolutionTypeName: %s to SELF FLOWAppResolutionType, falling back to UNKNOWN", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x1E12A2F50](v19, -1, -1);
        MEMORY[0x1E12A2F50](v18, -1, -1);
      }

LABEL_22:
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      return v10;
    }

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.instrumentation);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v51[0] = v47;
      *v33 = 136315394;
      LOBYTE(v48) = v14;
      v34 = AppResolutionType.rawValue.getter();
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v51);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2080;
      LOBYTE(v48) = v14;
      v37 = AppResolutionType.flowAppResolutionType.getter();
      if (v37 > 0xE)
      {
        v38 = @"FLOWAPPRESOLUTIONTYPE_UNKNOWN";
        v39 = @"FLOWAPPRESOLUTIONTYPE_UNKNOWN";
      }

      else
      {
        v38 = off_1E86454D8[v37];
        v39 = off_1E8645550[v37];
      }

      v40 = v38;
      v41 = v39;
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, v51);

      *(v33 + 14) = v45;
      _os_log_impl(&dword_1DC659000, v31, v32, "#TaskLoggingService SELF Log - mapping appResolutionTypeName: %s to SELF FLOWAppResolutionType %s", v33, 0x16u);
      v46 = v47;
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v46, -1, -1);
      MEMORY[0x1E12A2F50](v33, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    LOBYTE(v51[0]) = v14;
    AppResolutionType.flowAppResolutionType.getter();
  }

  else
  {
    (*(v3 + 104))(v7, *MEMORY[0x1E69CFCC0], v2, v5);
    v10 = SiriKitReliabilityCodes.rawValue.getter();
    (*(v3 + 8))(v7, v2);
  }

  return v10;
}

unint64_t specialized TaskLoggingService.createFlowPlatformContext(entityContextTier1:)(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = objc_allocWithZone(MEMORY[0x1E69CEB80]);
  v3 = a1;
  v4 = [v2 init];
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [objc_allocWithZone(MEMORY[0x1E69CEB40]) init];
  if (!v6)
  {

LABEL_9:
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.instrumentation);
    v10 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DC659000, v10, v12, "#TaskLoggingService unable to instantiate SELF platform/entity context", v13, 2u);
      MEMORY[0x1E12A2F50](v13, -1, -1);
    }

    v5 = 0;
    v7 = v3;
    goto LABEL_14;
  }

  v7 = v6;
  v8 = [v3 linkId];
  [v7 setLinkId:v8];

  result = [v3 entitiesPresentedCount];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    [v7 setNumberOfEntitiesShown:result];
    [v5 setEntityContextValue_];
    v10 = v3;
LABEL_14:

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t specialized TaskLoggingService.__allocating_init(biomeDonator:curareDonator:selfEmitter:tier1LinkIdSupplier:derivedIdentifierSupplier:appInformationSupplier:sensitivityManager:featureChecker:)(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v27 = a7;
  v28 = a8;
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v23 = a9;
  v17 = *(a13 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](a12);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  (*(v17 + 16))(v20, a11, a13);
  return specialized TaskLoggingService.init(biomeDonator:curareDonator:selfEmitter:tier1LinkIdSupplier:derivedIdentifierSupplier:appInformationSupplier:sensitivityManager:featureChecker:)(a1, a2, a3, v24, v25, v26, v27, v28, v23, a10, v20, v21, a13, a14);
}

uint64_t TaskService.currentTask.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (v1 < 0)
  {
    v4 = *(v0 + 32);
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    return 0;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {

    v3 = MEMORY[0x1E12A1FE0](0, v1);

    return v3;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v1 + 32);

    return v3;
  }

  __break(1u);
  return result;
}

void SiriEnvironment.updateFlowTask(with:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment0B12TaskMetadataVSgMd, &_s19SiriFlowEnvironment0B12TaskMetadataVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v19 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v11 = type metadata accessor for FlowTaskProvider();
    v12 = *(a1 + 16);
    v13 = *(a1 + 24);
    v19[1] = v11;
    v19[2] = v12;
    v20 = v5;
    v14 = *(a1 + 33);
    v15 = OBJC_IVAR____TtC14SiriKitRuntime8FlowTask_creationTime;
    v16 = *(v7 + 16);
    v16(v10, a1 + OBJC_IVAR____TtC14SiriKitRuntime8FlowTask_creationTime, v6);

    dispatch thunk of FlowTaskProvider.__allocating_init(id:isClientInitiated:creationTime:)();
    SiriEnvironment.flowTask.setter();
    SiriEnvironment.currentRequest.getter();
    v16(v10, a1 + v15, v6);

    v17 = v20;
    FlowTaskMetadata.init(id:isClientInitiated:creationTime:)();
    v18 = type metadata accessor for FlowTaskMetadata();
    (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
    CurrentRequest.flowTaskMetadata.setter();
  }
}

void *TaskService.__allocating_init(initialTask:taskIdGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a2;
  result[3] = a3;
  if (a1)
  {
    v7 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v8 = swift_allocObject();
    result = v7;
    *(v8 + 16) = xmmword_1DCA70640;
    *(v8 + 32) = a1;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  result[4] = v8;
  return result;
}

uint64_t FlowTask.__allocating_init(id:state:isClientInitiated:creationTime:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  *(v13 + 33) = a4;
  v14 = OBJC_IVAR____TtC14SiriKitRuntime8FlowTask_creationTime;
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 32))(v13 + v14, a5, v15);
  return v13;
}

uint64_t FlowTaskProvider.init(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 33);
  (*(v9 + 16))(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1 + OBJC_IVAR____TtC14SiriKitRuntime8FlowTask_creationTime, v4);

  v10 = dispatch thunk of FlowTaskProvider.__allocating_init(id:isClientInitiated:creationTime:)();

  return v10;
}

uint64_t FlowTask.State.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x64657461657263;
  }

  if (a1 == 1)
  {
    return 0x676E696F676E6FLL;
  }

  return 0x6465646E65;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance FlowTask.State(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x676E696F676E6FLL;
  if (v2 != 1)
  {
    v5 = 0x6465646E65;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x64657461657263;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x676E696F676E6FLL;
  if (*a2 != 1)
  {
    v8 = 0x6465646E65;
    v3 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x64657461657263;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FlowTask.State()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance FlowTask.State()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FlowTask.State()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance FlowTask.State@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized FlowTask.State.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance FlowTask.State(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x676E696F676E6FLL;
  if (v2 != 1)
  {
    v5 = 0x6465646E65;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64657461657263;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FlowTask.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t FlowTask.init(id:state:isClientInitiated:creationTime:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 33) = a4;
  v7 = OBJC_IVAR____TtC14SiriKitRuntime8FlowTask_creationTime;
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 32))(v5 + v7, a5, v8);
  return v5;
}

uint64_t FlowTask.deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC14SiriKitRuntime8FlowTask_creationTime;
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t FlowTaskXPC.id.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_id);
  v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_id + 8);

  return v1;
}

uint64_t FlowTask.creationTime.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id FlowTaskXPC.init(id:state:isClientInitiated:creationTime:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5)
{
  v7 = &v5[OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_id];
  *v7 = a1;
  v7[1] = a2;
  v5[OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_state] = a3;
  v5[OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_isClientInitiated] = a4;
  v8 = OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_creationTime;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v5[v8], a5, v9);
  v13.receiver = v5;
  v13.super_class = type metadata accessor for FlowTaskXPC(0);
  v11 = objc_msgSendSuper2(&v13, sel_init);
  (*(v10 + 8))(a5, v9);
  return v11;
}

unint64_t FlowTaskXPC.CodingKeys.rawValue.getter(unsigned __int8 a1)
{
  v1 = 25705;
  v2 = 0xD000000000000011;
  if (a1 != 2)
  {
    v2 = 0x6E6F697461657263;
  }

  if (a1)
  {
    v1 = 0x6574617473;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance FlowTaskXPC.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xD000000000000011;
  v6 = 0x80000001DCA7B9D0;
  if (v2 == 2)
  {
    v7 = 0x80000001DCA7B9D0;
  }

  else
  {
    v5 = 0x6E6F697461657263;
    v7 = 0xEC000000656D6954;
  }

  if (*a1)
  {
    v4 = 0x6574617473;
    v3 = 0xE500000000000000;
  }

  if (*a1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  if (v2 <= 1)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  v10 = 0xE200000000000000;
  v11 = 25705;
  v12 = 0xD000000000000011;
  if (*a2 != 2)
  {
    v12 = 0x6E6F697461657263;
    v6 = 0xEC000000656D6954;
  }

  if (*a2)
  {
    v11 = 0x6574617473;
    v10 = 0xE500000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v6;
  }

  if (v8 == v13 && v9 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v15 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FlowTaskXPC.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance FlowTaskXPC.CodingKeys()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FlowTaskXPC.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance FlowTaskXPC.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized FlowTaskXPC.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance FlowTaskXPC.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0x80000001DCA7B9D0;
  v5 = 0xD000000000000011;
  if (*v1 != 2)
  {
    v5 = 0x6E6F697461657263;
    v4 = 0xEC000000656D6954;
  }

  if (*v1)
  {
    v3 = 0x6574617473;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

id FlowTaskXPC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FlowTaskXPC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FlowTaskXPC(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for XPCRepresentation.swiftRepresentation() in conformance FlowTaskXPC@<X0>(uint64_t *a1@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x78))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t TaskService.tasksCount.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  if (!(v1 >> 62))
  {
    return *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v1 < 0)
  {
    v3 = *(v0 + 32);
  }

  return __CocoaSet.count.getter();
}

uint64_t TaskService.taskQueue.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

void *TaskService.init(initialTask:taskIdGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1DCA70640;
    *(v5 + 32) = a1;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v3[4] = v5;
  return v3;
}

uint64_t TaskService.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t TaskService.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

unint64_t specialized FlowTask.State.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of FlowTask.State.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized FlowTaskXPC.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of FlowTaskXPC.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type FlowTask.State and conformance FlowTask.State()
{
  result = lazy protocol witness table cache variable for type FlowTask.State and conformance FlowTask.State;
  if (!lazy protocol witness table cache variable for type FlowTask.State and conformance FlowTask.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlowTask.State and conformance FlowTask.State);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FlowTaskXPC.CodingKeys and conformance FlowTaskXPC.CodingKeys()
{
  result = lazy protocol witness table cache variable for type FlowTaskXPC.CodingKeys and conformance FlowTaskXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type FlowTaskXPC.CodingKeys and conformance FlowTaskXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlowTaskXPC.CodingKeys and conformance FlowTaskXPC.CodingKeys);
  }

  return result;
}

uint64_t type metadata completion function for FlowTask()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

SiriKitRuntime::TimerAffinityScorer __swiftcall TimerAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CD70;
  v1 = 0xD000000000000026;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t *TimerAffinityScorer.kAppBundleIdMatches.unsafeMutableAddressor()
{
  if (one-time initialization token for kAppBundleIdMatches != -1)
  {
    swift_once();
  }

  return &static TimerAffinityScorer.kAppBundleIdMatches;
}

uint64_t static TimerAffinityScorer.kAppBundleIdMatches.getter()
{
  if (one-time initialization token for kAppBundleIdMatches != -1)
  {
    swift_once();
  }
}

uint64_t specialized TimerAffinityScorer.supportedAppIsOnScreen(with:)(uint64_t a1)
{
  v2 = type metadata accessor for RRDataSourceMetadataValue();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v128 = &v102[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v127 = &v102[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v144 = &v102[-v9];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v102[-v11];
  v13 = type metadata accessor for RRMetadata();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v102[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v143 = &v102[-v19];
  v148 = type metadata accessor for UsoIdentifier();
  v20 = *(v148 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v148);
  v130 = &v102[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v147 = &v102[-v24];
  v121 = type metadata accessor for RREntity();
  v25 = *(v121 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v113 = &v102[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v28);
  v115 = &v102[-v29];
  v118 = type metadata accessor for RRCandidate();
  v30 = *(*(v118 - 8) + 64);
  MEMORY[0x1EEE9AC00](v118);
  v122 = &v102[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v112 = *(a1 + 16);
  if (!v112)
  {
    return 0;
  }

  v33 = v31;
  v111 = type metadata accessor for UsoEntity_common_App();
  v34 = 0;
  v110 = *(v33 + 16);
  v109 = a1 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
  v108 = *(v33 + 72);
  v120 = (v25 + 8);
  v131 = v20 + 16;
  v129 = (v20 + 32);
  v134 = v20;
  v123 = (v20 + 8);
  v141 = (v14 + 32);
  v142 = v14 + 16;
  v140 = (v14 + 88);
  v139 = *MEMORY[0x1E69D27E8];
  v125 = (v14 + 8);
  v124 = (v14 + 96);
  v138 = (v3 + 32);
  v106 = *MEMORY[0x1E69D2918];
  v35 = (v3 + 104);
  v126 = v3;
  v105 = (v3 + 8);
  v107 = (v33 + 8);
  v103 = *MEMORY[0x1E69D28F8];
  v116 = v12;
  v146 = v13;
  v136 = v14;
  v145 = v17;
  v137 = (v3 + 104);
  v132 = v2;
  v104 = v33 + 16;
  while (1)
  {
    v117 = v34;
    v110(v122, v109 + v108 * v34, v118);
    v36 = v115;
    RRCandidate.entity.getter();
    RREntity.usoEntity.getter();
    v119 = *v120;
    v119(v36, v121);
    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    v37 = v149;
    if (!v149)
    {
      goto LABEL_39;
    }

    v38 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
    v114 = v37;

    result = v38;
    v135 = *(v38 + 16);
    if (v135)
    {
      break;
    }

    v41 = MEMORY[0x1E69E7CC0];
LABEL_38:

    v73 = *(v41 + 16);

    v12 = v116;
    if (v73)
    {
      (*v107)(v122, v118);
      return 1;
    }

LABEL_39:
    v74 = v113;
    RRCandidate.entity.getter();
    v75 = RREntity.metadata.getter();
    v119(v74, v121);
    v76 = *(v75 + 16);
    if (v76)
    {
      v77 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v135 = v75;
      v78 = v75 + v77;
      v79 = *(v14 + 72);
      v80 = *(v14 + 16);
      v81 = MEMORY[0x1E69E7CC0];
      do
      {
        v82 = v143;
        v80(v143, v78, v13);
        (*v141)(v17, v82, v13);
        v83 = (*v140)(v17, v13);
        if (v83 == v139)
        {
          (*v124)(v17, v13);
          v84 = v17;
          v85 = *v138;
          v86 = v128;
          (*v138)(v128, v84, v2);
          v87 = v127;
          v85(v127, v86, v2);
          v85(v144, v87, v2);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v81[2] + 1, 1, v81);
          }

          v89 = v81[2];
          v88 = v81[3];
          v90 = v126;
          if (v89 >= v88 >> 1)
          {
            v91 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v88 > 1, v89 + 1, 1, v81);
            v90 = v126;
            v81 = v91;
          }

          v81[2] = v89 + 1;
          v85(v81 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v89, v144, v2);
          v17 = v145;
          v13 = v146;
        }

        else
        {
          (*v125)(v17, v13);
        }

        v78 += v79;
        --v76;
      }

      while (v76);

      v12 = v116;
      v14 = v136;
      v35 = v137;
    }

    else
    {

      v81 = MEMORY[0x1E69E7CC0];
    }

    v92 = *v35;
    (*v35)(v12, v106, v2);
    v93 = specialized Sequence<>.contains(_:)(v12, v81);
    v94 = *v105;
    (*v105)(v12, v2);
    if (v93)
    {
      v92(v12, v103, v2);
      v95 = specialized Sequence<>.contains(_:)(v12, v81);

      v94(v12, v2);
      if (v95)
      {
        (*v107)(v122, v118);
        v12 = v116;
      }

      else
      {
        if (one-time initialization token for kAppBundleIdMatches != -1)
        {
          swift_once();
        }

        v96 = static TimerAffinityScorer.kAppBundleIdMatches;
        v97 = v115;
        v98 = v122;
        RRCandidate.entity.getter();
        v99 = RREntity.appBundleId.getter();
        v101 = v100;
        v119(v97, v121);
        LOBYTE(v99) = specialized Set.contains(_:)(v99, v101, v96);

        (*v107)(v98, v118);
        v12 = v116;
        if (v99)
        {
          return 1;
        }
      }
    }

    else
    {
      (*v107)(v122, v118);
    }

    v34 = v117 + 1;
    v35 = v137;
    if (v117 + 1 == v112)
    {
      return 0;
    }
  }

  v40 = 0;
  v41 = MEMORY[0x1E69E7CC0];
  v42 = v134;
  v43 = v147;
  v133 = result;
  while (v40 < *(result + 16))
  {
    v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v45 = *(v42 + 72);
    (*(v42 + 16))(v43, result + v44 + v45 * v40, v148);
    if (one-time initialization token for kAppBundleIdMatches != -1)
    {
      swift_once();
    }

    v46 = static TimerAffinityScorer.kAppBundleIdMatches;
    v47 = UsoIdentifier.appBundleId.getter();
    v49 = v48;
    if (*(v46 + 16))
    {
      v50 = v47;
      v51 = *(v46 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      v52 = Hasher._finalize()();
      v53 = -1 << *(v46 + 32);
      v54 = v52 & ~v53;
      if ((*(v46 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54))
      {
        v55 = ~v53;
        do
        {
          v56 = (*(v46 + 48) + 16 * v54);
          v57 = *v56 == v50 && v56[1] == v49;
          if (v57 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            goto LABEL_32;
          }

          v54 = (v54 + 1) & v55;
        }

        while (((*(v46 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) != 0);
      }
    }

    v58 = UsoIdentifier.value.getter();
    v60 = v59;
    if (*(v46 + 16))
    {
      v61 = v58;
      v62 = *(v46 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      v63 = Hasher._finalize()();
      v64 = -1 << *(v46 + 32);
      v65 = v63 & ~v64;
      if ((*(v46 + 56 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65))
      {
        v66 = ~v64;
        while (1)
        {
          v67 = (*(v46 + 48) + 16 * v65);
          v68 = *v67 == v61 && v67[1] == v60;
          if (v68 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v65 = (v65 + 1) & v66;
          if (((*(v46 + 56 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) == 0)
          {
            goto LABEL_8;
          }
        }

LABEL_32:

        v69 = *v129;
        v43 = v147;
        (*v129)(v130, v147, v148);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v150 = v41;
        v2 = v132;
        v13 = v146;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 16) + 1, 1);
          v43 = v147;
          v41 = v150;
        }

        v72 = *(v41 + 16);
        v71 = *(v41 + 24);
        if (v72 >= v71 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v71 > 1, v72 + 1, 1);
          v43 = v147;
          v41 = v150;
        }

        *(v41 + 16) = v72 + 1;
        v69(v41 + v44 + v72 * v45, v130, v148);
        goto LABEL_9;
      }
    }

LABEL_8:

    v43 = v147;
    (*v123)(v147, v148);
    v2 = v132;
    v13 = v146;
LABEL_9:
    ++v40;
    v14 = v136;
    v17 = v145;
    v42 = v134;
    v35 = v137;
    result = v133;
    if (v40 == v135)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized TimerAffinityScorer.priorityForSharedTask(_:environment:)()
{
  v55 = type metadata accessor for RREntity();
  v0 = *(v55 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for RRCandidate();
  v56 = *(v47 - 8);
  v3 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v53 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v45 - v6;
  static UsoTask_CodegenConverter.convert(task:)();
  outlined init with copy of Any?(v63, v61);
  if (v62)
  {
    outlined init with copy of Any?(v61, &v57);
    type metadata accessor for UsoTask_noVerb_uso_NoEntity();
    if (swift_dynamicCast())
    {
      outlined destroy of Any?(v63);

      __swift_destroy_boxed_opaque_existential_1Tm(&v57);
LABEL_45:
      v7 = 2;
      goto LABEL_46;
    }

    type metadata accessor for UsoTask_stop_common_MediaItem();
    if (swift_dynamicCast())
    {

      v7 = dispatch thunk of Uso_VerbTemplate_ReferenceControl.trigger.getter();

      outlined destroy of Any?(v63);
      if (!v7)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&v57);
        goto LABEL_46;
      }

LABEL_14:

      __swift_destroy_boxed_opaque_existential_1Tm(&v57);
      v7 = 3;
      goto LABEL_46;
    }

    type metadata accessor for UsoTask_stop_uso_NoEntity();
    if (swift_dynamicCast())
    {

      v8 = dispatch thunk of Uso_VerbTemplate_ReferenceControl.trigger.getter();

      outlined destroy of Any?(v63);
      if (!v8)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&v57);
        v7 = 1;
        goto LABEL_46;
      }

      goto LABEL_14;
    }

    type metadata accessor for UsoTask_enable_common_Setting();
    if (swift_dynamicCast() || (type metadata accessor for UsoTask_disable_common_Setting(), swift_dynamicCast()))
    {
      if (MSVDeviceIsAppleTV())
      {

        v9 = dispatch thunk of Uso_VerbTemplate_ReferenceTrigger.trigger.getter();

        outlined destroy of Any?(v63);
        if (v9)
        {
          goto LABEL_14;
        }
      }

      else
      {
        outlined destroy of Any?(v63);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v57);
      v7 = 0;
      goto LABEL_46;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v57);
  }

  v57 = UsoTask.baseEntityAsString.getter();
  v58 = v10;
  strcpy(v60, "uso_NoEntity");
  HIBYTE(v60[6]) = 0;
  v60[7] = -5120;
  v52 = lazy protocol witness table accessor for type String and conformance String();
  v11 = StringProtocol.contains<A>(_:)();

  if ((v11 & 1) == 0)
  {
LABEL_44:
    outlined destroy of Any?(v63);
    goto LABEL_45;
  }

  SiriEnvironment.salientEntitiesProvider.getter();
  v12 = dispatch thunk of SalientEntitiesDataProvider.salientEntities.getter();

  v51 = *(v12 + 16);
  if (v51)
  {
    v13 = 0;
    v50 = v56 + 16;
    v49 = (v0 + 8);
    v45 = (v56 + 8);
    v48 = (v56 + 32);
    v14 = MEMORY[0x1E69E7CC0];
    v15 = v47;
    v16 = v46;
    while (v13 < *(v12 + 16))
    {
      v17 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v18 = v12;
      v19 = *(v56 + 72);
      (*(v56 + 16))(v16, v12 + v17 + v19 * v13, v15);
      v20 = v54;
      RRCandidate.entity.getter();
      RREntity.usoEntity.getter();
      (*v49)(v20, v55);
      v21 = UsoTask.verbString.getter();
      v23 = v22;

      v57 = v21;
      v58 = v23;
      strcpy(v60, "common_Timer");
      HIBYTE(v60[6]) = 0;
      v60[7] = -5120;
      v24 = StringProtocol.contains<A>(_:)();

      if (v24)
      {
        v25 = *v48;
        (*v48)(v53, v16, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v59 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1);
          v16 = v46;
          v14 = v59;
        }

        v28 = *(v14 + 16);
        v27 = *(v14 + 24);
        if (v28 >= v27 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v27 > 1, v28 + 1, 1);
          v16 = v46;
          v14 = v59;
        }

        *(v14 + 16) = v28 + 1;
        v29 = v14 + v17 + v28 * v19;
        v15 = v47;
        v25(v29, v53, v47);
      }

      else
      {
        (*v45)(v16, v15);
      }

      ++v13;
      v12 = v18;
      if (v51 == v13)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
    goto LABEL_48;
  }

  v14 = MEMORY[0x1E69E7CC0];
  v15 = v47;
LABEL_31:
  if (!*(v14 + 16))
  {

    v39 = specialized TimerAffinityScorer.supportedAppIsOnScreen(with:)(v12);

    if ((v39 & 1) == 0)
    {
      outlined destroy of Any?(v63);
      v7 = 0;
      goto LABEL_46;
    }

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Logger.executor);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v7 = 2;
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1DC659000, v41, v42, "TimerAffinityScorer found commonApp entity with Clock/NanoTimer bundle ID", v43, 2u);
      MEMORY[0x1E12A2F50](v43, -1, -1);

      outlined destroy of Any?(v63);
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  if (one-time initialization token for executor != -1)
  {
LABEL_48:
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static Logger.executor);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v57 = v34;
    *v33 = 136315138;
    v35 = MEMORY[0x1E12A16D0](v14, v15);
    v37 = v36;

    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v57);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_1DC659000, v31, v32, "TimerAffinityScorer found salient timer entity %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x1E12A2F50](v34, -1, -1);
    MEMORY[0x1E12A2F50](v33, -1, -1);
  }

  else
  {
  }

  outlined destroy of Any?(v63);
  v7 = 3;
LABEL_46:
  outlined destroy of Any?(v61);
  return v7;
}

uint64_t specialized TimerAffinityScorer.score(input:environment:)()
{
  v0 = type metadata accessor for Parse();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for USOParse();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v1 + 88))(v4, v0) == *MEMORY[0x1E69D0168])
  {
    (*(v1 + 96))(v4, v0);
    (*(v6 + 32))(v9, v4, v5);
    if (specialized static AffinityScorerUtils.getTask(_:)())
    {
      v34 = UsoTask.baseEntityAsString.getter();
      v35 = v10;
      v32 = 0x72656D6954;
      v33 = 0xE500000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v11 = StringProtocol.contains<A>(_:)();

      if (v11)
      {
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        __swift_project_value_buffer(v12, static Logger.executor);
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = 2;
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_1DC659000, v13, v14, "TimerAffinityScorer Task contains Timer – using .default affinity", v16, 2u);
          MEMORY[0x1E12A2F50](v16, -1, -1);

LABEL_28:

          (*(v6 + 8))(v9, v5);
          return v15;
        }

        (*(v6 + 8))(v9, v5);
        return 2;
      }

      v34 = UsoTask.baseEntityAsString.getter();
      v35 = v25;
      v32 = 0x6D72616C41;
      v33 = 0xE500000000000000;
      v26 = StringProtocol.contains<A>(_:)();

      if ((v26 & 1) == 0)
      {
        v15 = specialized TimerAffinityScorer.priorityForSharedTask(_:environment:)();
        goto LABEL_28;
      }

      if (specialized static AlarmAffinityScorer.isCreateAlarmTaskWithRelativeOffset(task:)())
      {
        if (one-time initialization token for executor != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for Logger();
        __swift_project_value_buffer(v27, static Logger.executor);
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_1DC659000, v28, v29, "TimerAffinityScorer Task is Create Alarm with relative offset duration – timer should take a first pass", v30, 2u);
          MEMORY[0x1E12A2F50](v30, -1, -1);
        }

        (*(v6 + 8))(v9, v5);
        return 3;
      }

      else
      {
        (*(v6 + 8))(v9, v5);

        return 0;
      }
    }

    else
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Logger.executor);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_1DC659000, v22, v23, "TimerAffinityScorer Could not extract usoTask from parse", v24, 2u);
        MEMORY[0x1E12A2F50](v24, -1, -1);
      }

      (*(v6 + 8))(v9, v5);
      return 0;
    }
  }

  else
  {
    (*(v1 + 8))(v4, v0);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.executor);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v18, v19))
    {

      return 2;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1DC659000, v18, v19, "TimerAffinityScorer Not a USO parse – .default", v20, 2u);
    MEMORY[0x1E12A2F50](v20, -1, -1);

    return 2;
  }
}

SiriKitRuntime::TranslationAffinityScorer __swiftcall TranslationAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CDA0;
  v1 = 0xD00000000000002CLL;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t specialized TranslationAffinityScorer.scoreRepeat(environment:)()
{
  v60 = type metadata accessor for RREntity();
  v0 = *(v60 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v3 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RRCandidate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v54 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v53 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v53 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v55 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v56 = &v53 - v17;
  SiriEnvironment.salientEntitiesProvider.getter();
  v18 = dispatch thunk of SalientEntitiesDataProvider.salientEntities.getter();

  v58 = *(v18 + 16);
  if (v58)
  {
    v19 = 0;
    v59 = v5 + 16;
    v20 = (v0 + 8);
    v61 = 0x80000001DCA8BB90;
    v21 = (v5 + 8);
    while (v19 < *(v18 + 16))
    {
      v22 = v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v19;
      v23 = v5;
      v24 = *(v5 + 16);
      v25 = v4;
      v24(v12, v22, v4);
      RRCandidate.entity.getter();
      v26 = RREntity.appBundleId.getter();
      v28 = v27;
      (*v20)(v3, v60);
      if (v26 == 0xD000000000000025 && v61 == v28)
      {

LABEL_10:

        v18 = v56;
        v4 = v25;
        v5 = v23;
        (*(v23 + 32))(v56, v12, v4);
        v30 = 0;
        goto LABEL_11;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v29)
      {
        goto LABEL_10;
      }

      ++v19;
      v4 = v25;
      (*v21)(v12, v25);
      v5 = v23;
      if (v58 == v19)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_8:

  v30 = 1;
  v18 = v56;
LABEL_11:
  v31 = v57;
  v32 = v55;
  (*(v5 + 56))(v18, v30, 1, v4);
  outlined init with copy of RRCandidate?(v18, v32);
  if ((*(v5 + 48))(v32, 1, v4) == 1)
  {
    outlined destroy of RRCandidate?(v32);
    if (one-time initialization token for executor == -1)
    {
LABEL_13:
      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, static Logger.executor);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_1DC659000, v34, v35, "TranslationAffinityScorer Found no salient entity", v36, 2u);
        MEMORY[0x1E12A2F50](v36, -1, -1);
      }

      outlined destroy of RRCandidate?(v18);
      return 0;
    }

LABEL_23:
    swift_once();
    goto LABEL_13;
  }

  (*(v5 + 32))(v31, v32, v4);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  __swift_project_value_buffer(v38, static Logger.executor);
  v39 = v54;
  (*(v5 + 16))(v54, v31, v4);
  v40 = Logger.logObject.getter();
  v41 = v5;
  v42 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v40, v42))
  {
    v43 = v39;
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v62 = v45;
    *v44 = 136315138;
    lazy protocol witness table accessor for type RRCandidate and conformance RRCandidate();
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v4;
    v53 = v4;
    v49 = v48;
    v50 = *(v41 + 8);
    v50(v43, v47);
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v49, &v62);

    *(v44 + 4) = v51;
    _os_log_impl(&dword_1DC659000, v40, v42, "TranslationAffinityScorer Found salient entity %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    MEMORY[0x1E12A2F50](v45, -1, -1);
    MEMORY[0x1E12A2F50](v44, -1, -1);

    v50(v57, v53);
  }

  else
  {

    v52 = *(v41 + 8);
    v52(v39, v4);
    v52(v31, v4);
  }

  outlined destroy of RRCandidate?(v18);
  return 3;
}

uint64_t specialized TranslationAffinityScorer.score(input:environment:)()
{
  v0 = type metadata accessor for Parse();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for USOParse();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v1 + 88))(v4, v0) == *MEMORY[0x1E69D0168])
  {
    (*(v1 + 96))(v4, v0);
    (*(v6 + 32))(v9, v4, v5);
    if (specialized static AffinityScorerUtils.getTask(_:)())
    {
      if (UsoTask.verbString.getter() == 0x746165706572 && v10 == 0xE600000000000000)
      {
      }

      else
      {
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v12 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      if (UsoTask.baseEntityAsString.getter() == 0x6E456F4E5F6F7375 && v18 == 0xEC00000079746974)
      {
      }

      else
      {
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v20 & 1) == 0)
        {
LABEL_22:
          (*(v6 + 8))(v9, v5);

          return 2;
        }
      }

      v16 = specialized TranslationAffinityScorer.scoreRepeat(environment:)();

      (*(v6 + 8))(v9, v5);
      return v16;
    }

    (*(v6 + 8))(v9, v5);
  }

  else
  {
    (*(v1 + 8))(v4, v0);
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.executor);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v14, v15))
  {

    return 2;
  }

  v16 = 2;
  v17 = swift_slowAlloc();
  *v17 = 0;
  _os_log_impl(&dword_1DC659000, v14, v15, "TranslationAffinityScorer Not a USO parse – .default", v17, 2u);
  MEMORY[0x1E12A2F50](v17, -1, -1);

  return v16;
}

uint64_t outlined init with copy of RRCandidate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of RRCandidate?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TrialExperimentationAssetManager.__allocating_init(trialClient:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return v2;
}

Swift::Void __swiftcall TrialExperimentationAssetManaging.emitTriggerLogging(codepathId:requestId:)(Swift::String codepathId, Swift::String_optional requestId)
{
  v35[0] = v2;
  object = requestId.value._object;
  countAndFlagsBits = requestId.value._countAndFlagsBits;
  v4 = codepathId._object;
  v5 = codepathId._countAndFlagsBits;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v35 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = v14[8];
  MEMORY[0x1EEE9AC00](v13);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v35 - v19;
  v37 = v5;
  v38 = v4;
  UUID.init(uuidString:)();
  v21 = v14[6];
  if (v21(v12, 1, v13) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v22 = object;
  }

  else
  {
    v36 = countAndFlagsBits;
    v23 = v14[4];
    v23(v20, v12, v13);
    v22 = object;
    if (object)
    {
      UUID.init(uuidString:)();
      if (v21(v9, 1, v13) != 1)
      {
        v23(v17, v9, v13);
        (*(v35[2] + 40))(v20, v17, v35[0]);
        v34 = v14[1];
        v34(v17, v13);
        v34(v20, v13);
        return;
      }

      (v14[1])(v20, v13);
      outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    else
    {
      (v14[1])(v20, v13);
    }

    countAndFlagsBits = v36;
  }

  v24 = v38;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.conversationBridge);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = v22;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v40 = v30;
    *v29 = 136315650;
    *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000029, 0x80000001DCA8BC40, &v40);
    *(v29 + 12) = 2080;
    *(v29 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v24, &v40);
    *(v29 + 22) = 2080;
    if (v28)
    {
      v31 = countAndFlagsBits;
    }

    else
    {
      v31 = 7104878;
    }

    if (v28)
    {
      v32 = v28;
    }

    else
    {
      v32 = 0xE300000000000000;
    }

    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v40);

    *(v29 + 24) = v33;
    _os_log_impl(&dword_1DC659000, v26, v27, "TrialExperimentationAssetManager.%s Unable to emit trigger logging due to invalid IDs. codepathId: %s requestId: %s", v29, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v30, -1, -1);
    MEMORY[0x1E12A2F50](v29, -1, -1);
  }
}

SiriKitRuntime::TrialExperimentationNamespace_optional __swiftcall TrialExperimentationNamespace.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TrialExperimentationNamespace.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = SiriKitRuntime_TrialExperimentationNamespace_siriSelfReflectionTapToEdit;
  }

  else
  {
    v4.value = SiriKitRuntime_TrialExperimentationNamespace_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t TrialExperimentationNamespace.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000020;
  }

  else
  {
    return 0xD00000000000001FLL;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TrialExperimentationNamespace(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000020;
  }

  else
  {
    v4 = 0xD00000000000001FLL;
  }

  if (v3)
  {
    v5 = "isClientInitiated";
  }

  else
  {
    v5 = "SIRI_SELF_REFLECTION_ASK_REPEAT";
  }

  if (*a2)
  {
    v6 = 0xD000000000000020;
  }

  else
  {
    v6 = 0xD00000000000001FLL;
  }

  if (*a2)
  {
    v7 = "SIRI_SELF_REFLECTION_ASK_REPEAT";
  }

  else
  {
    v7 = "isClientInitiated";
  }

  if (v4 == v6 && (v5 | 0x8000000000000000) == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TrialExperimentationNamespace()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TrialExperimentationNamespace()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TrialExperimentationNamespace()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TrialExperimentationNamespace@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TrialExperimentationNamespace.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance TrialExperimentationNamespace(unint64_t *a1@<X8>)
{
  v2 = "SIRI_SELF_REFLECTION_ASK_REPEAT";
  v3 = 0xD00000000000001FLL;
  if (*v1)
  {
    v3 = 0xD000000000000020;
  }

  else
  {
    v2 = "isClientInitiated";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

Swift::Int CAMAskRepeatTreatment.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](a1 & 1);
  return Hasher._finalize()();
}

uint64_t TrialExperimentationAssetManager.init(trialClient:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
  *(v1 + 16) = a1;
  *(v1 + 24) = v3;
  return v1;
}

SiriKitRuntime::CAMAskRepeatTreatment __swiftcall TrialExperimentationAssetManager.activeCAMAskRepeatTreatment()()
{
  v1 = *(v0 + 16);
  v2 = MEMORY[0x1E12A1410](0xD00000000000001BLL, 0x80000001DCA8BBC0);
  v3 = MEMORY[0x1E12A1410](0xD00000000000001FLL, 0x80000001DCA7B9F0);
  v4 = [v1 levelForFactor:v2 withNamespaceName:v3];

  if (v4)
  {
    v5 = [v4 BOOLeanValue];

    return v5 ^ 1;
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.conversationBridge);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = v11;
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000001DCA8BBC0, &v12);
      _os_log_impl(&dword_1DC659000, v8, v9, "Trial: Failed to get the level value for %s, default to disabled", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1E12A2F50](v11, -1, -1);
      MEMORY[0x1E12A2F50](v10, -1, -1);
    }

    return 1;
  }
}

SiriKitRuntime::AskToRepeatTreatment __swiftcall TrialExperimentationAssetManager.askToRepeatTreatment()()
{
  v1 = *(v0 + 16);
  v2 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA8BBE0);
  v3 = MEMORY[0x1E12A1410](0xD00000000000001FLL, 0x80000001DCA7B9F0);
  v4 = [v1 levelForFactor:v2 withNamespaceName:v3];

  if (v4)
  {
    v5 = [v4 BOOLeanValue];

    return v5 ^ 1;
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.conversationBridge);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = v11;
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x80000001DCA8BBE0, &v12);
      _os_log_impl(&dword_1DC659000, v8, v9, "Trial: Failed to get the level value for %s, default to disabled", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1E12A2F50](v11, -1, -1);
      MEMORY[0x1E12A2F50](v10, -1, -1);
    }

    return 1;
  }
}

SiriKitRuntime::Tap2EditTreatment __swiftcall TrialExperimentationAssetManager.tap2EditTreatment()()
{
  v1 = *(v0 + 16);
  v2 = MEMORY[0x1E12A1410](0xD000000000000010, 0x80000001DCA8BC00);
  v3 = MEMORY[0x1E12A1410](0xD00000000000001FLL, 0x80000001DCA7B9F0);
  v4 = [v1 levelForFactor:v2 withNamespaceName:v3];

  if (v4)
  {
    v5 = [v4 BOOLeanValue];

    return v5 ^ 1;
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.conversationBridge);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = v11;
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x80000001DCA8BC00, &v12);
      _os_log_impl(&dword_1DC659000, v8, v9, "Trial: Failed to get the level value for %s, default to disabled", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1E12A2F50](v11, -1, -1);
      MEMORY[0x1E12A2F50](v10, -1, -1);
    }

    return 1;
  }
}

SiriKitRuntime::AlternativeSuggestionTreatment __swiftcall TrialExperimentationAssetManager.alternativeSuggestionTreatment()()
{
  v1 = *(v0 + 16);
  v2 = MEMORY[0x1E12A1410](0xD00000000000001FLL, 0x80000001DCA8BC20);
  v3 = MEMORY[0x1E12A1410](0xD000000000000020, 0x80000001DCA7BA10);
  v4 = [v1 levelForFactor:v2 withNamespaceName:v3];

  if (v4)
  {
    v5 = [v4 BOOLeanValue];

    return v5 ^ 1;
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.conversationBridge);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = v11;
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x80000001DCA8BC20, &v12);
      _os_log_impl(&dword_1DC659000, v8, v9, "Trial: Failed to get the level value for %s, default to disabled", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1E12A2F50](v11, -1, -1);
      MEMORY[0x1E12A2F50](v10, -1, -1);
    }

    return 1;
  }
}

uint64_t TrialExperimentationAssetManager.emitTriggerLogging(codepathId:requestId:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v62 = &v51 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v51 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v51 - v14;
  v59 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v51 - v18;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.conversationBridge);
  v21 = *(v8 + 16);
  v21(v19, a1, v7);
  v58 = v21;
  v21(v15, a2, v7);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v57 = a2;
    v25 = v24;
    v54 = swift_slowAlloc();
    v63 = v54;
    *v25 = 136315650;
    *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000029, 0x80000001DCA8BC40, &v63);
    *(v25 + 12) = 2080;
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v55 = a1;
    v53 = v23;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v52 = v22;
    v56 = v8;
    v29 = *(v8 + 8);
    v29(v19, v7);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v63);

    *(v25 + 14) = v30;
    *(v25 + 22) = 2080;
    a1 = v55;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    v29(v15, v7);
    v8 = v56;
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v63);

    *(v25 + 24) = v34;
    v35 = v52;
    _os_log_impl(&dword_1DC659000, v52, v53, "TrialExperimentationAssetManager.%s codepathId: %s requestId: %s", v25, 0x20u);
    v36 = v54;
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v36, -1, -1);
    v37 = v25;
    a2 = v57;
    MEMORY[0x1E12A2F50](v37, -1, -1);
  }

  else
  {

    v38 = *(v8 + 8);
    v38(v15, v7);
    v38(v19, v7);
  }

  v39 = type metadata accessor for TaskPriority();
  v40 = v62;
  (*(*(v39 - 8) + 56))(v62, 1, 1, v39);
  v41 = swift_allocObject();
  swift_weakInit();
  v42 = v60;
  v43 = v58;
  v58(v60, a1, v7);
  v44 = v61;
  v43(v61, a2, v7);
  v45 = *(v8 + 80);
  v46 = (v45 + 40) & ~v45;
  v47 = (v59 + v45 + v46) & ~v45;
  v48 = swift_allocObject();
  *(v48 + 2) = 0;
  *(v48 + 3) = 0;
  *(v48 + 4) = v41;
  v49 = *(v8 + 32);
  v49(&v48[v46], v42, v7);
  v49(&v48[v47], v44, v7);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v40, &async function pointer to partial apply for closure #1 in TrialExperimentationAssetManager.emitTriggerLogging(codepathId:requestId:), v48);
}

uint64_t closure #1 in TrialExperimentationAssetManager.emitTriggerLogging(codepathId:requestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = type metadata accessor for UUID();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in TrialExperimentationAssetManager.emitTriggerLogging(codepathId:requestId:), 0, 0);
}

uint64_t closure #1 in TrialExperimentationAssetManager.emitTriggerLogging(codepathId:requestId:)()
{
  isa = v0[5].super.isa;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = v0[6].super.isa;
    v3 = v0[7].super.isa;
    v5 = *(Strong + 24);
    v0[12].super.isa = v5;
    v5;

    v6.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    v0[13].super.isa = v6.super.isa;
    v7.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    v0[14].super.isa = v7.super.isa;
    v8 = *(MEMORY[0x1E6985F80] + 4);
    v14 = (*MEMORY[0x1E6985F80] + MEMORY[0x1E6985F80]);
    v9 = swift_task_alloc();
    v0[15].super.isa = v9;
    *v9 = v0;
    *(v9 + 1) = closure #1 in TrialExperimentationAssetManager.emitTriggerLogging(codepathId:requestId:);

    return v14(v6.super.isa, 0xD00000000000001FLL, 0x80000001DCA7B9F0, v7.super.isa);
  }

  else
  {
    v12 = v0[10].super.isa;
    v11 = v0[11].super.isa;

    v13 = v0[1].super.isa;

    return v13();
  }
}

{
  v2 = *(*v1 + 120);
  v3 = *v1;
  *(v3 + 128) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in TrialExperimentationAssetManager.emitTriggerLogging(codepathId:requestId:), 0, 0);
  }

  else
  {
    v4 = *(v3 + 104);
    v5 = *(v3 + 96);

    v7 = *(v3 + 80);
    v6 = *(v3 + 88);

    v8 = *(v3 + 8);

    return v8();
  }
}

{
  v43 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 128);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.conversationBridge);
  v11 = *(v7 + 16);
  v11(v5, v9, v6);
  v11(v4, v8, v6);
  v12 = v3;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 128);
  v18 = *(v0 + 80);
  v17 = *(v0 + 88);
  v20 = *(v0 + 64);
  v19 = *(v0 + 72);
  if (v15)
  {
    v40 = v14;
    v21 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = v41;
    *v21 = 136315906;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000029, 0x80000001DCA8BC40, &v42);
    *(v21 + 12) = 2080;
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v16;
    v24 = v23;
    v25 = *(v19 + 8);
    v25(v17, v20);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v42);

    *(v21 + 14) = v26;
    *(v21 + 22) = 2080;
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    v25(v18, v20);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v42);

    *(v21 + 24) = v30;
    *(v21 + 32) = 2112;
    v31 = v38;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 34) = v32;
    *v39 = v32;
    _os_log_impl(&dword_1DC659000, v13, v40, "TrialExperimentationAssetManager.%s Unable to emit trigger logging for codePathID: %s, request: %s, error: %@", v21, 0x2Au);
    outlined destroy of ReferenceResolutionClientProtocol?(v39, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v39, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v41, -1, -1);
    MEMORY[0x1E12A2F50](v21, -1, -1);
  }

  else
  {

    v33 = *(v19 + 8);
    v33(v18, v20);
    v33(v17, v20);
  }

  v35 = *(v0 + 80);
  v34 = *(v0 + 88);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t TrialExperimentationAssetManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t partial apply for closure #1 in TrialExperimentationAssetManager.emitTriggerLogging(codepathId:requestId:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = (*(v4 + 64) + v5 + v6) & ~v5;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in TrialExperimentationAssetManager.emitTriggerLogging(codepathId:requestId:)(a1, v8, v9, v10, v1 + v6, v1 + v7);
}

unint64_t lazy protocol witness table accessor for type TrialExperimentationNamespace and conformance TrialExperimentationNamespace()
{
  result = lazy protocol witness table cache variable for type TrialExperimentationNamespace and conformance TrialExperimentationNamespace;
  if (!lazy protocol witness table cache variable for type TrialExperimentationNamespace and conformance TrialExperimentationNamespace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrialExperimentationNamespace and conformance TrialExperimentationNamespace);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [TrialExperimentationNamespace] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [TrialExperimentationNamespace] and conformance [A];
  if (!lazy protocol witness table cache variable for type [TrialExperimentationNamespace] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14SiriKitRuntime29TrialExperimentationNamespaceOGMd, &_sSay14SiriKitRuntime29TrialExperimentationNamespaceOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [TrialExperimentationNamespace] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CAMAskRepeatTreatment and conformance CAMAskRepeatTreatment()
{
  result = lazy protocol witness table cache variable for type CAMAskRepeatTreatment and conformance CAMAskRepeatTreatment;
  if (!lazy protocol witness table cache variable for type CAMAskRepeatTreatment and conformance CAMAskRepeatTreatment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAMAskRepeatTreatment and conformance CAMAskRepeatTreatment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AskToRepeatTreatment and conformance AskToRepeatTreatment()
{
  result = lazy protocol witness table cache variable for type AskToRepeatTreatment and conformance AskToRepeatTreatment;
  if (!lazy protocol witness table cache variable for type AskToRepeatTreatment and conformance AskToRepeatTreatment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AskToRepeatTreatment and conformance AskToRepeatTreatment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Tap2EditTreatment and conformance Tap2EditTreatment()
{
  result = lazy protocol witness table cache variable for type Tap2EditTreatment and conformance Tap2EditTreatment;
  if (!lazy protocol witness table cache variable for type Tap2EditTreatment and conformance Tap2EditTreatment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Tap2EditTreatment and conformance Tap2EditTreatment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AlternativeSuggestionTreatment and conformance AlternativeSuggestionTreatment()
{
  result = lazy protocol witness table cache variable for type AlternativeSuggestionTreatment and conformance AlternativeSuggestionTreatment;
  if (!lazy protocol witness table cache variable for type AlternativeSuggestionTreatment and conformance AlternativeSuggestionTreatment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AlternativeSuggestionTreatment and conformance AlternativeSuggestionTreatment);
  }

  return result;
}

BOOL UserInputResult.isSupported.getter()
{
  v1 = type metadata accessor for UserInputResult();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of UserInputResult(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    outlined destroy of UserInputResult(v4);
  }

  return EnumCaseMultiPayload == 2;
}

id static FlowExtensionUserInputResultXPC.unsupportedInput(exclude:)(char a1)
{
  v2 = type metadata accessor for FlowExtensionUserInputResultXPC();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_type] = 1;
  *&v3[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_error] = 0;
  *&v3[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_reformedInputData] = xmmword_1DCA69F00;
  v3[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_exclude] = a1;
  v5.receiver = v3;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, sel_init);
}

id static FlowExtensionUserInputResultXPC.supportedInput.getter()
{
  v0 = type metadata accessor for FlowExtensionUserInputResultXPC();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_type] = 0;
  *&v1[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_error] = 0;
  *&v1[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_reformedInputData] = xmmword_1DCA69F00;
  v1[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_exclude] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t FlowExtensionUserInputResultXPC.reformedInputData.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_reformedInputData);
  outlined copy of Data?(v1, *(v0 + OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_reformedInputData + 8));
  return v1;
}

void *FlowExtensionUserInputResultXPC.error.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_error);
  v2 = v1;
  return v1;
}

id FlowExtensionUserInputResultXPC.__allocating_init(type:error:reformedInputData:exclude:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_type] = a1;
  *&v11[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_error] = a2;
  v12 = &v11[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_reformedInputData];
  *v12 = a3;
  v12[1] = a4;
  v11[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_exclude] = a5;
  v14.receiver = v11;
  v14.super_class = v5;
  return objc_msgSendSuper2(&v14, sel_init);
}

id FlowExtensionUserInputResultXPC.init(type:error:reformedInputData:exclude:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *&v5[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_type] = a1;
  *&v5[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_error] = a2;
  v6 = &v5[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_reformedInputData];
  *v6 = a3;
  v6[1] = a4;
  v5[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_exclude] = a5;
  v8.receiver = v5;
  v8.super_class = type metadata accessor for FlowExtensionUserInputResultXPC();
  return objc_msgSendSuper2(&v8, sel_init);
}

SiriKitRuntime::FlowExtensionUserInputResultXPC::CodingKeys_optional __swiftcall FlowExtensionUserInputResultXPC.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of FlowExtensionUserInputResultXPC.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t FlowExtensionUserInputResultXPC.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 1701869940;
  v2 = 0xD000000000000011;
  if (a1 != 2)
  {
    v2 = 0x6564756C637865;
  }

  if (a1)
  {
    v1 = 0x726F727265;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance FlowExtensionUserInputResultXPC.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = 1701869940;
  v3 = *a1;
  v4 = 0xE400000000000000;
  v5 = 0xD000000000000011;
  v6 = 0x80000001DCA7A890;
  v7 = 0xE700000000000000;
  if (v3 == 2)
  {
    v7 = 0x80000001DCA7A890;
  }

  else
  {
    v5 = 0x6564756C637865;
  }

  v8 = 0x726F727265;
  if (*a1)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v8 = 1701869940;
  }

  if (*a1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v3 <= 1)
  {
    v10 = v4;
  }

  else
  {
    v10 = v7;
  }

  v11 = 0xE400000000000000;
  v12 = 0xD000000000000011;
  if (*a2 != 2)
  {
    v12 = 0x6564756C637865;
    v6 = 0xE700000000000000;
  }

  if (*a2)
  {
    v2 = 0x726F727265;
    v11 = 0xE500000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v11;
  }

  else
  {
    v14 = v6;
  }

  if (v9 == v13 && v10 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v15 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FlowExtensionUserInputResultXPC.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance FlowExtensionUserInputResultXPC.CodingKeys()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FlowExtensionUserInputResultXPC.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance FlowExtensionUserInputResultXPC.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized FlowExtensionUserInputResultXPC.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance FlowExtensionUserInputResultXPC.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701869940;
  v4 = 0x80000001DCA7A890;
  v5 = 0xD000000000000011;
  if (*v1 != 2)
  {
    v5 = 0x6564756C637865;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x726F727265;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance FlowExtensionUserInputResultXPC.CodingKeys()
{
  v1 = 1701869940;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x6564756C637865;
  }

  if (*v0)
  {
    v1 = 0x726F727265;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance FlowExtensionUserInputResultXPC.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized FlowExtensionUserInputResultXPC.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FlowExtensionUserInputResultXPC.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FlowExtensionUserInputResultXPC.CodingKeys and conformance FlowExtensionUserInputResultXPC.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FlowExtensionUserInputResultXPC.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FlowExtensionUserInputResultXPC.CodingKeys and conformance FlowExtensionUserInputResultXPC.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id FlowExtensionUserInputResultXPC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FlowExtensionUserInputResultXPC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FlowExtensionUserInputResultXPC();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized static FlowExtensionUserInputResultXPC.error(_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DCA66060;
  *(inited + 32) = 0x7470697263736564;
  *(inited + 40) = 0xEB000000006E6F69;
  swift_getErrorValue();
  v1 = Error.localizedDescription.getter();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (String, Any)(inited + 32);
  v3 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v4 = MEMORY[0x1E12A1410](0xD00000000000001DLL, 0x80000001DCA7F880);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [v3 initWithDomain:v4 code:-1 userInfo:isa];

  v7 = type metadata accessor for FlowExtensionUserInputResultXPC();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_type] = 3;
  *&v8[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_error] = v6;
  *&v8[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_reformedInputData] = xmmword_1DCA69F00;
  v8[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_exclude] = 0;
  v10.receiver = v8;
  v10.super_class = v7;
  return objc_msgSendSuper2(&v10, sel_init);
}

id specialized static FlowExtensionUserInputResultXPC.reformedInput(_:)()
{
  v0 = type metadata accessor for PropertyListEncoder();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for Input();
  lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type Input and conformance Input);
  v3 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v5 = v4;

  v6 = type metadata accessor for FlowExtensionUserInputResultXPC();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_type] = 2;
  *&v7[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_error] = 0;
  v8 = &v7[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_reformedInputData];
  *v8 = v3;
  v8[1] = v5;
  v7[OBJC_IVAR___SKRFlowExtensionUserInputResultXPC_exclude] = 0;
  v10.receiver = v7;
  v10.super_class = v6;
  return objc_msgSendSuper2(&v10, sel_init);
}

unint64_t specialized FlowExtensionUserInputResultXPC.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of FlowExtensionUserInputResultXPC.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type FlowExtensionUserInputResultXPC.CodingKeys and conformance FlowExtensionUserInputResultXPC.CodingKeys()
{
  result = lazy protocol witness table cache variable for type FlowExtensionUserInputResultXPC.CodingKeys and conformance FlowExtensionUserInputResultXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type FlowExtensionUserInputResultXPC.CodingKeys and conformance FlowExtensionUserInputResultXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlowExtensionUserInputResultXPC.CodingKeys and conformance FlowExtensionUserInputResultXPC.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FlowExtensionUserInputResultXPC.CodingKeys and conformance FlowExtensionUserInputResultXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type FlowExtensionUserInputResultXPC.CodingKeys and conformance FlowExtensionUserInputResultXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlowExtensionUserInputResultXPC.CodingKeys and conformance FlowExtensionUserInputResultXPC.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FlowExtensionUserInputResultXPC.CodingKeys and conformance FlowExtensionUserInputResultXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type FlowExtensionUserInputResultXPC.CodingKeys and conformance FlowExtensionUserInputResultXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlowExtensionUserInputResultXPC.CodingKeys and conformance FlowExtensionUserInputResultXPC.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FlowExtensionUserInputResultXPC.CodingKeys and conformance FlowExtensionUserInputResultXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type FlowExtensionUserInputResultXPC.CodingKeys and conformance FlowExtensionUserInputResultXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlowExtensionUserInputResultXPC.CodingKeys and conformance FlowExtensionUserInputResultXPC.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FlowExtensionUserInputResultTypeXPC and conformance FlowExtensionUserInputResultTypeXPC()
{
  result = lazy protocol witness table cache variable for type FlowExtensionUserInputResultTypeXPC and conformance FlowExtensionUserInputResultTypeXPC;
  if (!lazy protocol witness table cache variable for type FlowExtensionUserInputResultTypeXPC and conformance FlowExtensionUserInputResultTypeXPC)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlowExtensionUserInputResultTypeXPC and conformance FlowExtensionUserInputResultTypeXPC);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for UserInputResult(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v4 + 16) & ~v4));

    return a1;
  }

  v5 = *(a3 - 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for Input();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(v5 + 64);

  return memcpy(a1, a2, v10);
}

void *assignWithCopy for UserInputResult(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of UserInputResult(a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Input();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

void *assignWithTake for UserInputResult(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of UserInputResult(a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Input();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

uint64_t type metadata completion function for UserInputResult()
{
  result = type metadata accessor for Input();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t Siri_Nlu_External_UserParse.preferredUserDialogAct.getter@<X0>(char *a1@<X8>)
{
  v39 = a1;
  v2 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v34 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v34 = &v34 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v37 = &v34 - v15;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v36 = &v34 - v18;
  v38 = v1;
  result = MEMORY[0x1E129C0F0](v17);
  v20 = result;
  v21 = *(result + 16);
  if (v21)
  {
    v22 = 0;
    while (1)
    {
      if (v22 >= *(v20 + 16))
      {
        __break(1u);
        goto LABEL_20;
      }

      (*(v3 + 16))(v13, v20 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v22, v2);
      if (Siri_Nlu_External_UserDialogAct.hasAccepted.getter())
      {
        break;
      }

      ++v22;
      result = (*(v3 + 8))(v13, v2);
      if (v21 == v22)
      {
        goto LABEL_6;
      }
    }

    v30 = *(v3 + 32);
    v31 = v37;
    v30(v37, v13, v2);
    v32 = v36;
LABEL_15:
    v30(v32, v31, v2);
    v29 = v39;
    v30(v39, v32, v2);
    goto LABEL_16;
  }

LABEL_6:

  result = MEMORY[0x1E129C0F0](v23);
  v24 = result;
  v25 = *(result + 16);
  if (!v25)
  {
LABEL_11:

    v28 = MEMORY[0x1E129C0F0](v27);
    if (!*(v28 + 16))
    {

      v33 = 1;
      v29 = v39;
      return (*(v3 + 56))(v29, v33, 1, v2);
    }

    v29 = v39;
    (*(v3 + 16))(v39, v28 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);

LABEL_16:
    v33 = 0;
    return (*(v3 + 56))(v29, v33, 1, v2);
  }

  v26 = 0;
  while (v26 < *(v24 + 16))
  {
    (*(v3 + 16))(v6, v24 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v26, v2);
    if (Siri_Nlu_External_UserDialogAct.hasUserStatedTask.getter())
    {

      v30 = *(v3 + 32);
      v31 = v35;
      v30(v35, v6, v2);
      v32 = v34;
      goto LABEL_15;
    }

    ++v26;
    result = (*(v3 + 8))(v6, v2);
    if (v25 == v26)
    {
      goto LABEL_11;
    }
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t SIRINLUUserParse.toProtoUserParse()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for BinaryDecodingOptions();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v21[-v7];
  v9 = [objc_opt_self() convertFromUserParse_];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 data];
    if (v11)
    {
      v12 = v11;
      v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = type metadata accessor for Siri_Nlu_External_UserParse();
      v23 = v13;
      v24 = v15;
      v22 = 0;
      memset(&v21[16], 0, 32);
      outlined copy of Data._Representation(v13, v15);
      BinaryDecodingOptions.init()();
      lazy protocol witness table accessor for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse();
      Message.init<A>(contiguousBytes:extensions:partial:options:)();

      outlined consume of Data._Representation(v13, v15);
      v18 = *(v16 - 8);
      v19 = *(v18 + 56);
      v19(v8, 0, 1, v16);
      (*(v18 + 32))(a1, v8, v16);
      return v19(a1, 0, 1, v16);
    }
  }

  v17 = type metadata accessor for Siri_Nlu_External_UserParse();
  return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
}

unint64_t lazy protocol witness table accessor for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse()
{
  result = lazy protocol witness table cache variable for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse;
  if (!lazy protocol witness table cache variable for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse)
  {
    type metadata accessor for Siri_Nlu_External_UserParse();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse);
  }

  return result;
}

id Siri_Nlu_External_UserParse.toLegacyUserParse()()
{
  type metadata accessor for Siri_Nlu_External_UserParse();
  lazy protocol witness table accessor for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse();
  v1 = Message.serializedData(partial:)();
  v3 = v2;
  v4 = objc_allocWithZone(MEMORY[0x1E69D1240]);
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v1, v3);
  v6 = [v4 initWithData_];

  if (!v6)
  {
    return 0;
  }

  v7 = [objc_opt_self() convertUserParse_];

  return v7;
}

uint64_t SIRINLUUserParse.preferredUserDialogAct.getter()
{
  v1 = [v0 userDialogActs];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SIRINLUUserDialogAct_pMd, &_sSo20SIRINLUUserDialogAct_pMR);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v4 = 0;
    while ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1E12A1FE0](v4, v2);
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_12;
      }

LABEL_7:
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        goto LABEL_35;
      }

      swift_unknownObjectRelease();
      ++v4;
      if (v6 == i)
      {
        goto LABEL_15;
      }
    }

    if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    v5 = *(v2 + 8 * v4 + 32);
    swift_unknownObjectRetain();
    v6 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:

  v7 = [v0 userDialogActs];
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    goto LABEL_29;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9)
  {
LABEL_17:
    v10 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1E12A1FE0](v10, v8);
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_26:
          __break(1u);
          goto LABEL_35;
        }
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_29:
          v9 = __CocoaSet.count.getter();
          if (!v9)
          {
            break;
          }

          goto LABEL_17;
        }

        v5 = *(v8 + 8 * v10 + 32);
        swift_unknownObjectRetain();
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_26;
        }
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        goto LABEL_35;
      }

      swift_unknownObjectRelease();
      ++v10;
    }

    while (v11 != v9);
  }

  v12 = [v0 userDialogActs];
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v13 >> 62))
  {
    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_32;
    }

LABEL_38:

    return 0;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_38;
  }

LABEL_32:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1E12A1FE0](0, v13);
    goto LABEL_35;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v13 + 32);
    swift_unknownObjectRetain();
LABEL_35:

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t UserSessionState.isSessionActiveForUser(siriSharedUserId:)(uint64_t a1)
{
  v2 = v1;
  v49 = a1;
  v3 = type metadata accessor for UserID();
  v48 = *(v3 - 8);
  v4 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSg_ADtMd, &_s16SiriMessageTypes6UserIDVSg_ADtMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v46 - v8;
  v10 = type metadata accessor for UserSessionState();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v46 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v47 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v46 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v46 - v25;
  (*(v11 + 16))(v17, v2, v10);
  if ((*(v11 + 88))(v17, v10) == *MEMORY[0x1E69D06F0])
  {
    (*(v11 + 96))(v17, v10);
    v27 = *(v17 + 1);

    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS9personaId_16SiriMessageTypes6UserIDVSg010siriSharedfB0AB0F18SessionAccessLevelO06accessL0tMd, &_sSS9personaId_16SiriMessageTypes6UserIDVSg010siriSharedfB0AB0F18SessionAccessLevelO06accessL0tMR);
    v29 = *(v28 + 64);
    outlined init with take of UserID?(&v17[*(v28 + 48)], v26);
    v30 = type metadata accessor for UserSessionAccessLevel();
    (*(*(v30 - 8) + 8))(&v17[v29], v30);
    v31 = v48;
    (*(v48 + 16))(v24, v49, v3);
    (*(v31 + 56))(v24, 0, 1, v3);
    v32 = *(v6 + 48);
    outlined init with copy of UserID?(v26, v9);
    outlined init with copy of UserID?(v24, &v9[v32]);
    v33 = *(v31 + 48);
    if (v33(v9, 1, v3) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v24, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v26, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
      if (v33(&v9[v32], 1, v3) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
        v34 = 1;
        return v34 & 1;
      }
    }

    else
    {
      v41 = v47;
      outlined init with copy of UserID?(v9, v47);
      if (v33(&v9[v32], 1, v3) != 1)
      {
        v43 = v46;
        (*(v31 + 32))(v46, &v9[v32], v3);
        _s16SiriMessageTypes6UserIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UserID and conformance UserID);
        v44 = v41;
        v34 = dispatch thunk of static Equatable.== infix(_:_:)();
        v45 = *(v31 + 8);
        v45(v43, v3);
        outlined destroy of ReferenceResolutionClientProtocol?(v24, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v26, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
        v45(v44, v3);
        outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
        return v34 & 1;
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v24, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v26, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
      (*(v31 + 8))(v41, v3);
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s16SiriMessageTypes6UserIDVSg_ADtMd, &_s16SiriMessageTypes6UserIDVSg_ADtMR);
LABEL_12:
    v34 = 0;
    return v34 & 1;
  }

  v35 = *(v11 + 8);
  v35(v17, v10);
  (*(v11 + 104))(v15, *MEMORY[0x1E69D06E0], v10);
  v36 = static UserSessionState.== infix(_:_:)();
  v35(v15, v10);
  if ((v36 & 1) == 0)
  {
    goto LABEL_12;
  }

  v37 = UserID.sharedUserId.getter();
  v39 = v38;
  if (v37 == static UserSessionState.guestSharedUserId.getter() && v39 == v40)
  {

    v34 = 1;
  }

  else
  {
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v34 & 1;
}

id UserSessionState.getActiveUserSpecificInfo(from:withUserClassification:withMeetsPersonalRequestThreshold:)(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v4 = v3;
  v86 = a3;
  v87 = a1;
  v6 = type metadata accessor for UserID();
  v89 = *(v6 - 8);
  v7 = *(v89 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v81 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v79 = &v78 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v80 = &v78 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v83 = &v78 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v82 = &v78 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v78 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v78 - v25;
  v27 = type metadata accessor for UserSessionState();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = (&v78 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v30);
  v85 = *a2;
  v33 = *(v28 + 16);
  v88 = &v78 - v34;
  v33();
  v84 = v4;
  (v33)(v32, v4, v27);
  v35 = (*(v28 + 88))(v32, v27);
  if (v35 == *MEMORY[0x1E69D06F0])
  {
    (*(v28 + 96))(v32, v27);
    v36 = v32[1];
    v79 = *v32;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS9personaId_16SiriMessageTypes6UserIDVSg010siriSharedfB0AB0F18SessionAccessLevelO06accessL0tMd, &_sSS9personaId_16SiriMessageTypes6UserIDVSg010siriSharedfB0AB0F18SessionAccessLevelO06accessL0tMR);
    v38 = *(v37 + 48);
    v81 = *(v37 + 64);
    outlined init with take of UserID?(v32 + v38, v26);
    outlined init with copy of UserID?(v26, v24);
    v39 = *(v89 + 48);
    v40 = v26;
    if (v39(v24, 1, v6) == 1)
    {
      v83 = v26;
      outlined destroy of ReferenceResolutionClientProtocol?(v24, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
      v41 = v82;
      v42 = v87;
      UserSessionState.getActiveUserSharedUserId(fromMuxContextMessage:)();
      if (v39(v41, 1, v6) == 1)
      {
        (*(v28 + 8))(v88, v27);
        outlined destroy of ReferenceResolutionClientProtocol?(v41, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
        if (one-time initialization token for conversationBridge != -1)
        {
          swift_once();
        }

        v43 = type metadata accessor for Logger();
        __swift_project_value_buffer(v43, static Logger.conversationBridge);

        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.error.getter();

        v46 = os_log_type_enabled(v44, v45);
        v47 = v83;
        v48 = v79;
        if (v46)
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v90 = v50;
          *v49 = 136315138;
          v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v36, &v90);

          *(v49 + 4) = v51;
          _os_log_impl(&dword_1DC659000, v44, v45, "#user-session: unable to find shareduserid for personaId=%s", v49, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v50);
          MEMORY[0x1E12A2F50](v50, -1, -1);
          MEMORY[0x1E12A2F50](v49, -1, -1);
        }

        else
        {
        }

        outlined destroy of ReferenceResolutionClientProtocol?(v47, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
        v75 = v81;
        v76 = type metadata accessor for UserSessionAccessLevel();
        (*(*(v76 - 8) + 8))(v32 + v75, v76);
        return 0;
      }

      v67 = v41;
      v68 = v89;
      v69 = v80;
      (*(v89 + 32))(v80, v67, v6);
      v70 = v88;
      v62 = closure #1 in UserSessionState.getActiveUserSpecificInfo(from:withUserClassification:withMeetsPersonalRequestThreshold:)(v69, v79, v36, v42, v85, v88, v86);

      (*(v68 + 8))(v69, v6);
      outlined destroy of ReferenceResolutionClientProtocol?(v83, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
      (*(v28 + 8))(v70, v27);
    }

    else
    {
      v63 = v89;
      v64 = v83;
      (*(v89 + 32))(v83, v24, v6);
      v65 = v88;
      v62 = closure #1 in UserSessionState.getActiveUserSpecificInfo(from:withUserClassification:withMeetsPersonalRequestThreshold:)(v64, v79, v36, v87, v85, v88, v86);

      (*(v63 + 8))(v64, v6);
      outlined destroy of ReferenceResolutionClientProtocol?(v40, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
      (*(v28 + 8))(v65, v27);
    }

    v71 = type metadata accessor for UserSessionAccessLevel();
    (*(*(v71 - 8) + 8))(v32 + v81, v71);
  }

  else
  {
    v52 = v89;
    if (v35 != *MEMORY[0x1E69D06E0])
    {
      v66 = *(v28 + 8);
      v66(v88, v27);
      v66(v32, v27);
      return 0;
    }

    v53 = v87;
    UserSessionState.getActiveUserSharedUserId(fromMuxContextMessage:)();
    if ((*(v52 + 48))(v19, 1, v6) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v54 = type metadata accessor for Logger();
      __swift_project_value_buffer(v54, static Logger.conversationBridge);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_1DC659000, v55, v56, "#user-session: unable to find shareduserid for guest in muxContext", v57, 2u);
        MEMORY[0x1E12A2F50](v57, -1, -1);
      }

      static UserSessionState.guestSharedUserId.getter();
      v58 = v81;
      UserID.init(sharedUserId:)();
      v59 = static UserSessionState.guestSharedUserId.getter();
      v60 = v88;
      v62 = closure #1 in UserSessionState.getActiveUserSpecificInfo(from:withUserClassification:withMeetsPersonalRequestThreshold:)(v58, v59, v61, v53, v85, v88, v86);

      (*(v52 + 8))(v58, v6);
    }

    else
    {
      v72 = v79;
      (*(v52 + 32))(v79, v19, v6);
      v73 = static UserSessionState.guestSharedUserId.getter();
      v60 = v88;
      v62 = closure #1 in UserSessionState.getActiveUserSpecificInfo(from:withUserClassification:withMeetsPersonalRequestThreshold:)(v72, v73, v74, v53, v85, v88, v86);

      (*(v52 + 8))(v72, v6);
    }

    (*(v28 + 8))(v60, v27);
  }

  return v62;
}

Swift::Bool __swiftcall UserSessionState.isSessionActiveForUser(personaId:)(Swift::String personaId)
{
  v2 = v1;
  object = personaId._object;
  countAndFlagsBits = personaId._countAndFlagsBits;
  v5 = type metadata accessor for UserSessionState();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - v12;
  (*(v6 + 16))(&v26 - v12, v2, v5, v11);
  if ((*(v6 + 88))(v13, v5) == *MEMORY[0x1E69D06F0])
  {
    (*(v6 + 96))(v13, v5);
    v15 = *v13;
    v14 = *(v13 + 1);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS9personaId_16SiriMessageTypes6UserIDVSg010siriSharedfB0AB0F18SessionAccessLevelO06accessL0tMd, &_sSS9personaId_16SiriMessageTypes6UserIDVSg010siriSharedfB0AB0F18SessionAccessLevelO06accessL0tMR);
    v17 = *(v16 + 48);
    v18 = *(v16 + 64);
    v19 = type metadata accessor for UserSessionAccessLevel();
    (*(*(v19 - 8) + 8))(&v13[v18], v19);
    outlined destroy of ReferenceResolutionClientProtocol?(&v13[v17], &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
    if (v15 != countAndFlagsBits || v14 != object)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v21 = *(v6 + 8);
  v21(v13, v5);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D06E0], v5);
  v22 = static UserSessionState.== infix(_:_:)();
  v21(v9, v5);
  if (v22)
  {
    if (static UserSessionState.guestSharedUserId.getter() != countAndFlagsBits || v23 != object)
    {
LABEL_12:
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_13;
    }

LABEL_10:
    v24 = 1;
LABEL_13:

    return v24 & 1;
  }

  v24 = 0;
  return v24 & 1;
}

id closure #1 in UserSessionState.getActiveUserSpecificInfo(from:withUserClassification:withMeetsPersonalRequestThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v142 = a6;
  v150 = a5;
  v144 = a2;
  v145 = a3;
  v10 = type metadata accessor for UserSessionState();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v143 = &v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v138 = &v127 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v127 - v17;
  v19 = type metadata accessor for UserSessionAccessLevel();
  v139 = *(v19 - 8);
  v140 = v19;
  v20 = *(v139 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v135 = &v127 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v137 = &v127 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v134 = &v127 - v25;
  v26 = type metadata accessor for UserID();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v127 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = [objc_allocWithZone(MEMORY[0x1E69C7820]) init];
  v147 = a1;
  v141 = a4;
  v32 = specialized static ConversationMUXUtils.homeMember(withUserId:from:)(a1);
  v146 = v10;
  if (v32)
  {
    v33 = v32;

    v34 = v33;
    v35 = a7;
    v36 = v150;
  }

  else
  {
    v148 = a7;
    v149 = v31;
    v136 = v11;
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.conversationBridge);
    (*(v27 + 16))(v30, v147, v26);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    v40 = os_log_type_enabled(v38, v39);
    v36 = v150;
    if (v40)
    {
      v41 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v151 = v133;
      *v41 = 136315138;
      _s16SiriMessageTypes6UserIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UserID and conformance UserID);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v36;
      v45 = v44;
      (*(v27 + 8))(v30, v26);
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v45, &v151);
      v36 = v43;

      *(v41 + 4) = v46;
      _os_log_impl(&dword_1DC659000, v38, v39, "#user-session: couldn't find home member information for %s. Using a default value", v41, 0xCu);
      v47 = v133;
      __swift_destroy_boxed_opaque_existential_1Tm(v133);
      MEMORY[0x1E12A2F50](v47, -1, -1);
      v48 = v41;
      v10 = v146;
      MEMORY[0x1E12A2F50](v48, -1, -1);
    }

    else
    {

      (*(v27 + 8))(v30, v26);
    }

    v11 = v136;
    v34 = v149;
    v35 = v148;
  }

  v49 = MEMORY[0x1E69D06F0];
  v50 = v142;
  if (v36 == 5)
  {
    (*(v11 + 16))(v18, v142, v10);
    if ((*(v11 + 88))(v18, v10) == *v49)
    {
      (*(v11 + 96))(v18, v10);
      v51 = *(v18 + 1);

      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS9personaId_16SiriMessageTypes6UserIDVSg010siriSharedfB0AB0F18SessionAccessLevelO06accessL0tMd, &_sSS9personaId_16SiriMessageTypes6UserIDVSg010siriSharedfB0AB0F18SessionAccessLevelO06accessL0tMR);
      v53 = *(v52 + 48);
      v54 = v139;
      v55 = v140;
      v56 = *(v139 + 32);
      v57 = &v18[*(v52 + 64)];
      v136 = v11;
      v58 = v134;
      v56(v134, v57, v140);
      outlined destroy of ReferenceResolutionClientProtocol?(&v18[v53], &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
      v59 = v35;
      v60 = v50;
      v61 = v137;
      (*(v54 + 104))(v137, *MEMORY[0x1E69D0878], v55);
      LOBYTE(v53) = static UserSessionAccessLevel.== infix(_:_:)();
      v62 = *(v54 + 8);
      v63 = v61;
      v50 = v60;
      v35 = v59;
      v62(v63, v55);
      v64 = v58;
      v11 = v136;
      v62(v64, v55);
      v65 = (v53 & 1) == 0;
      v49 = MEMORY[0x1E69D06F0];
      if (v65)
      {
        v36 = 2;
      }

      else
      {
        v36 = 0;
      }
    }

    else
    {
      (*(v11 + 8))(v18, v10);
      v36 = 4;
    }
  }

  if (v35 == 2)
  {
    v66 = v138;
    (*(v11 + 16))(v138, v50, v10);
    if ((*(v11 + 88))(v66, v10) == *v49)
    {
      (*(v11 + 96))(v66, v10);
      v67 = *(v66 + 1);

      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS9personaId_16SiriMessageTypes6UserIDVSg010siriSharedfB0AB0F18SessionAccessLevelO06accessL0tMd, &_sSS9personaId_16SiriMessageTypes6UserIDVSg010siriSharedfB0AB0F18SessionAccessLevelO06accessL0tMR);
      v69 = *(v68 + 48);
      v70 = v36;
      v72 = v139;
      v71 = v140;
      v73 = v135;
      (*(v139 + 32))(v135, &v66[*(v68 + 64)], v140);
      outlined destroy of ReferenceResolutionClientProtocol?(&v66[v69], &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
      v74 = v137;
      (*(v72 + 104))(v137, *MEMORY[0x1E69D0878], v71);
      v35 = static UserSessionAccessLevel.== infix(_:_:)();
      v75 = *(v72 + 8);
      v75(v74, v71);
      v75(v73, v71);
      v36 = v70;
    }

    else
    {
      (*(v11 + 8))(v66, v10);
      v35 = 0;
    }
  }

  v76 = UserID.sharedUserId.getter();
  v139 = v77;
  v140 = v76;
  specialized static ConversationMUXUtils.isOwner(_:)(v34);
  if (v78)
  {
    LODWORD(v137) = 0;
  }

  else
  {
    specialized static ConversationMUXUtils.isUnknownUser(_:)(v34);
    LODWORD(v137) = v79;
  }

  v150 = v36;
  specialized static ConversationMUXUtils.singleKnownUserInHome(muxContextMessage:)();
  LODWORD(v138) = v80;
  LODWORD(v141) = MUXContextMessage.voiceProfilesAreInFlight.getter();
  v81 = [v34 homeMemberSettings];
  if (!v81 || (v82 = v81, isa = [v81 twentyFourHourTimeDisplay], v82, !isa))
  {
    type metadata accessor for NSNumber();
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
  }

  type metadata accessor for NSNumber();
  v84 = NSNumber.init(integerLiteral:)(0).super.super.isa;
  LODWORD(v147) = static NSObject.== infix(_:_:)();

  v85 = [v34 homeMemberSettings];
  if (v85)
  {
    v86 = v85;
    v87 = [v85 mediaPlayerExplicitContentDisallowed];

    v88 = v87 ^ 1;
  }

  else
  {
    v88 = 1;
  }

  LODWORD(v136) = v88;
  v89 = [v34 homeMemberSettings];
  if (v89)
  {
    v90 = v89;
    LODWORD(v134) = [v89 mediaPlayerExplicitContentDisallowed];
  }

  else
  {
    LODWORD(v134) = 0;
  }

  v91 = [v34 companionAssistantId];
  if (v91)
  {
    v92 = v91;
    v133 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v132 = v93;
  }

  else
  {
    v133 = 0;
    v132 = 0;
  }

  v94 = [v34 homeMemberSettings];
  v135 = [v94 meCard];

  v95 = [v34 homeMemberSettings];
  if (v95 && (v96 = v95, v97 = [v95 preferredLanguage], v96, v97))
  {
    v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v130 = v98;
  }

  else
  {
    v131 = 0;
    v130 = 0;
  }

  v99 = [v34 homeMemberSettings];
  if (v99 && (v100 = v99, v101 = [v99 countryCode], v100, v101))
  {
    v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v128 = v102;
  }

  else
  {
    v129 = 0;
    v128 = 0;
  }

  v103 = [v34 homeMemberSettings];
  v149 = v34;
  v148 = v35;
  if (v103 && (v104 = v103, v105 = [v103 temperatureUnit], v104, v105))
  {
    v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v108 = v107;
  }

  else
  {
    v106 = 0;
    v108 = 0;
  }

  v109 = *(v11 + 16);
  v110 = v143;
  v111 = v146;
  v109(v143, v50, v146);
  v112 = type metadata accessor for UserSpecificInfo();
  v113 = objc_allocWithZone(v112);
  v113[OBJC_IVAR___SKEUserSpecificInfo____lazy_storage___isGroundingConditionallyNeeded] = 2;
  v114 = &v113[OBJC_IVAR___SKEUserSpecificInfo_userId];
  v115 = v139;
  *v114 = v140;
  v114[1] = v115;
  v113[OBJC_IVAR___SKEUserSpecificInfo_userIdentityClassification] = v150;
  *&v113[OBJC_IVAR___SKEUserSpecificInfo_rawVoiceIDScore] = 100;
  v113[OBJC_IVAR___SKEUserSpecificInfo_userAttribute] = v137 & 1;
  v113[OBJC_IVAR___SKEUserSpecificInfo_isFirstInteractionForUser] = 1;
  v113[OBJC_IVAR___SKEUserSpecificInfo_didSpeakerChange] = 1;
  v113[OBJC_IVAR___SKEUserSpecificInfo_isOnlyUserInHome] = v138 & 1;
  v113[OBJC_IVAR___SKEUserSpecificInfo_explicitContentAllowed] = v136;
  v113[OBJC_IVAR___SKEUserSpecificInfo_censorSpeech] = v134;
  v113[OBJC_IVAR___SKEUserSpecificInfo_wasSpeechProfileUsedByASR] = 1;
  v116 = &v113[OBJC_IVAR___SKEUserSpecificInfo_companionAssistantId];
  *v116 = v133;
  v116[1] = v132;
  v117 = v135;
  *&v113[OBJC_IVAR___SKEUserSpecificInfo_meCard] = v135;
  v113[OBJC_IVAR___SKEUserSpecificInfo_voiceProfilesInFlight] = v141 & 1;
  v113[OBJC_IVAR___SKEUserSpecificInfo_twentyFourHourTimeDisplay] = (v147 & 1) == 0;
  v118 = &v113[OBJC_IVAR___SKEUserSpecificInfo_preferredLanguage];
  *v118 = v131;
  v118[1] = v130;
  v119 = &v113[OBJC_IVAR___SKEUserSpecificInfo_countryCode];
  *v119 = v129;
  v119[1] = v128;
  v120 = &v113[OBJC_IVAR___SKEUserSpecificInfo_temperatureUnit];
  *v120 = v106;
  v120[1] = v108;
  v121 = &v113[OBJC_IVAR___SKEUserSpecificInfo_lowScoreThreshold];
  *v121 = 0;
  v121[4] = 1;
  v122 = &v113[OBJC_IVAR___SKEUserSpecificInfo_personaId];
  v123 = v145;
  *v122 = v144;
  v122[1] = v123;
  v113[OBJC_IVAR___SKEUserSpecificInfo_meetsUserSessionThreshold] = 1;
  v113[OBJC_IVAR___SKEUserSpecificInfo_meetsPersonalRequestThreshold] = v148 & 1;
  v113[OBJC_IVAR___SKEUserSpecificInfo_hasActiveUserSession] = 1;
  v109(&v113[OBJC_IVAR___SKEUserSpecificInfo_userSessionState], v110, v111);
  v152.receiver = v113;
  v152.super_class = v112;
  v124 = v117;

  v125 = objc_msgSendSuper2(&v152, sel_init);

  (*(v11 + 8))(v110, v111);
  return v125;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000074;
  v3 = 0x6E656469666E6F63;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6E776F6E6BLL;
    }

    else
    {
      v5 = 0x6E656469666E6F63;
    }

    if (v4)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE900000000000074;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE700000000000000;
    v5 = 0x31657275736E75;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x4E657275736E75;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    v6 = 0xE700000000000000;
  }

  v7 = 0x31657275736E75;
  v8 = 0x4E657275736E75;
  if (a2 != 3)
  {
    v8 = 0x6E776F6E6B6E75;
  }

  if (a2 != 2)
  {
    v7 = v8;
  }

  if (a2)
  {
    v3 = 0x6E776F6E6BLL;
    v2 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

{
  v2 = 0xEC000000656C7552;
  v3 = a1;
  if (a1 <= 3u)
  {
    v10 = 0x80000001DCA7B130;
    if (a1 == 2)
    {
      v11 = 0xD000000000000023;
    }

    else
    {
      v11 = 0xD000000000000022;
    }

    if (a1 != 2)
    {
      v10 = 0x80000001DCA7B160;
    }

    v12 = 0x80000001DCA7B0E0;
    v13 = 0xD000000000000016;
    if (a1)
    {
      v13 = 0xD000000000000021;
      v12 = 0x80000001DCA7B100;
    }

    if (a1 <= 1u)
    {
      v8 = v13;
    }

    else
    {
      v8 = v11;
    }

    if (v3 <= 1)
    {
      v9 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  else
  {
    v4 = 0x80000001DCA7B1F0;
    v5 = 0xD00000000000001BLL;
    if (a1 != 7)
    {
      v5 = 1701736302;
      v4 = 0xE400000000000000;
    }

    if (a1 == 6)
    {
      v5 = 0x5253417974706D65;
      v4 = 0xEC000000656C7552;
    }

    v6 = 0x80000001DCA7B190;
    v7 = 0xD000000000000017;
    if (a1 == 4)
    {
      v7 = 0xD000000000000022;
    }

    else
    {
      v6 = 0x80000001DCA7B1C0;
    }

    if (a1 <= 5u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }

    if (v3 <= 5)
    {
      v9 = v6;
    }

    else
    {
      v9 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v2 = 0x80000001DCA7B100;
        if (v8 != 0xD000000000000021)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v2 = 0x80000001DCA7B0E0;
        if (v8 != 0xD000000000000016)
        {
          goto LABEL_55;
        }
      }

      goto LABEL_53;
    }

    if (a2 == 2)
    {
      v2 = 0x80000001DCA7B130;
      if (v8 != 0xD000000000000023)
      {
        goto LABEL_55;
      }

      goto LABEL_53;
    }

    v14 = "overrideMitigatorForServerFallback";
LABEL_48:
    v2 = (v14 - 32) | 0x8000000000000000;
    if (v8 != 0xD000000000000022)
    {
      goto LABEL_55;
    }

    goto LABEL_53;
  }

  if (a2 > 5u)
  {
    if (a2 == 6)
    {
      if (v8 != 0x5253417974706D65)
      {
        goto LABEL_55;
      }
    }

    else if (a2 == 7)
    {
      v2 = 0x80000001DCA7B1F0;
      if (v8 != 0xD00000000000001BLL)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v2 = 0xE400000000000000;
      if (v8 != 1701736302)
      {
        goto LABEL_55;
      }
    }

    goto LABEL_53;
  }

  if (a2 == 4)
  {
    v14 = "validIntentForTriggerLessFollowups";
    goto LABEL_48;
  }

  v2 = 0x80000001DCA7B1C0;
  if (v8 != 0xD000000000000017)
  {
LABEL_55:
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_56;
  }

LABEL_53:
  if (v9 != v2)
  {
    goto LABEL_55;
  }

  v15 = 1;
LABEL_56:

  return v15 & 1;
}

{
  v2 = 0xED00006449747365;
  v3 = 0x75716552746F6F72;
  v4 = a1;
  v5 = 0xEB00000000746964;
  v6 = 0x616E4558554D7369;
  v7 = 0xEC00000064656C62;
  if (a1 != 4)
  {
    v6 = 0xD000000000000014;
    v7 = 0x80000001DCA7B320;
  }

  if (a1 == 3)
  {
    v6 = 0x456F547061547369;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0xD000000000000012;
  v9 = 0x80000001DCA7AEC0;
  v10 = 0x496E6F6973736573;
  v11 = 0xE900000000000064;
  if (a1 == 1)
  {
    v10 = 0x75716552746F6F72;
    v11 = 0xED00006449747365;
  }

  if (a1)
  {
    v8 = v10;
    v9 = v11;
  }

  if (a1 <= 2u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v6;
  }

  if (v4 <= 2)
  {
    v13 = v9;
  }

  else
  {
    v13 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 != 3)
    {
      if (a2 == 4)
      {
        v2 = 0xEC00000064656C62;
        if (v12 != 0x616E4558554D7369)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v2 = 0x80000001DCA7B320;
        if (v12 != 0xD000000000000014)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_29;
    }

    v3 = 0x456F547061547369;
    v2 = 0xEB00000000746964;
  }

  else
  {
    if (!a2)
    {
      v2 = 0x80000001DCA7AEC0;
      if (v12 != 0xD000000000000012)
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }

    if (a2 != 1)
    {
      v2 = 0xE900000000000064;
      if (v12 != 0x496E6F6973736573)
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }
  }

  if (v12 != v3)
  {
LABEL_32:
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_33;
  }

LABEL_29:
  if (v13 != v2)
  {
    goto LABEL_32;
  }

  v14 = 1;
LABEL_33:

  return v14 & 1;
}

{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE700000000000000;
    v12 = 0x55747865746E6F63;
    v13 = 0xED00006574616470;
    if (a1 != 2)
    {
      v12 = 0x6E6972506C6C7566;
      v13 = 0xE900000000000074;
    }

    if (a1)
    {
      v14 = 0x646E616D6D6F63;
    }

    else
    {
      v14 = 0xD000000000000012;
    }

    if (!a1)
    {
      v11 = 0x80000001DCA7AEC0;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v13;
    }
  }

  else
  {
    v3 = 0xD000000000000011;
    v4 = 0x80000001DCA7AF10;
    v5 = 0x6F69747563657865;
    v6 = 0xEF656372756F536ELL;
    if (a1 != 7)
    {
      v5 = 0x7365527070416E69;
      v6 = 0xED000065736E6F70;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0x616570536C6C7566;
    v8 = 0xE90000000000006BLL;
    if (a1 != 4)
    {
      v7 = 0xD000000000000011;
      v8 = 0x80000001DCA7AEF0;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v15 = 0xE700000000000000;
        if (v9 != 0x646E616D6D6F63)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v15 = 0x80000001DCA7AEC0;
        if (v9 != 0xD000000000000012)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_52;
    }

    if (a2 != 2)
    {
      v15 = 0xE900000000000074;
      if (v9 != 0x6E6972506C6C7566)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }

    v16 = 0x55747865746E6F63;
    v17 = 1952539760;
    goto LABEL_48;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xE90000000000006BLL;
      if (v9 != 0x616570536C6C7566)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }

    v18 = "redactedFullPrint";
  }

  else
  {
    if (a2 != 6)
    {
      if (a2 == 7)
      {
        v15 = 0xEF656372756F536ELL;
        if (v9 != 0x6F69747563657865)
        {
          goto LABEL_54;
        }

        goto LABEL_52;
      }

      v16 = 0x7365527070416E69;
      v17 = 1936617328;
LABEL_48:
      v15 = v17 | 0xED00006500000000;
      if (v9 != v16)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }

    v18 = "redactedFullSpeak";
  }

  v15 = (v18 - 32) | 0x8000000000000000;
  if (v9 != 0xD000000000000011)
  {
LABEL_54:
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_55;
  }

LABEL_52:
  if (v10 != v15)
  {
    goto LABEL_54;
  }

  v19 = 1;
LABEL_55:

  return v19 & 1;
}

{
  v2 = a1;
  if (a1 <= 2u)
  {
    v8 = 0x80000001DCA7AAA0;
    v9 = 0x6E4973656D6D6F70;
    if (a1 == 1)
    {
      v9 = 0xD000000000000014;
    }

    else
    {
      v8 = 0xEA00000000006F66;
    }

    if (a1)
    {
      v6 = v9;
    }

    else
    {
      v6 = 0x7365737261506C6ELL;
    }

    if (v2)
    {
      v7 = v8;
    }

    else
    {
      v7 = 0xE800000000000000;
    }
  }

  else
  {
    v3 = 0x80000001DCA7AB00;
    v4 = 0xD000000000000011;
    if (a1 == 5)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v3 = 0x80000001DCA7AB20;
    }

    v5 = 0x80000001DCA7AAC0;
    if (a1 != 3)
    {
      v5 = 0x80000001DCA7AAE0;
    }

    if (a1 <= 4u)
    {
      v6 = 0xD000000000000015;
    }

    else
    {
      v6 = v4;
    }

    if (v2 <= 4)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v12 = 0xE800000000000000;
      if (v6 != 0x7365737261506C6ELL)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    }

    if (a2 != 1)
    {
      v12 = 0xEA00000000006F66;
      if (v6 != 0x6E4973656D6D6F70)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    }

    v11 = "nlResponseStatusCode";
    goto LABEL_31;
  }

  if (a2 <= 4u)
  {
    if (a2 == 3)
    {
      v10 = "languageVariantResult";
    }

    else
    {
      v10 = "responseVariantResult";
    }

    v12 = (v10 - 32) | 0x8000000000000000;
    if (v6 != 0xD000000000000015)
    {
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  if (a2 == 5)
  {
    v11 = "serverFallbackReason";
LABEL_31:
    v12 = (v11 - 32) | 0x8000000000000000;
    if (v6 != 0xD000000000000014)
    {
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  v12 = 0x80000001DCA7AB20;
  if (v6 != 0xD000000000000011)
  {
LABEL_43:
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_44;
  }

LABEL_41:
  if (v7 != v12)
  {
    goto LABEL_43;
  }

  v13 = 1;
LABEL_44:

  return v13 & 1;
}

id UserSpecificInfo.__allocating_init(userId:userIdentityClassification:rawVoiceIDScore:userAttribute:isFirstInteractionForUser:didSpeakerChange:isOnlyUserInHome:voiceProfilesInFlight:twentyFourHourTimeDisplay:explicitContentAllowed:censorSpeech:wasSpeechProfileUsedByASR:companionAssistantId:meCard:preferredLanguage:countryCode:temperatureUnit:lowScoreThreshold:personaId:meetsUserSessionThreshold:meetsPersonalRequestThreshold:hasActiveUserSession:userSessionState:)(uint64_t a1, uint64_t a2, char *a3, int a4, char *a5, char a6, char a7, char a8, char a9, char a10, char a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, char a27, char a28, uint64_t a29)
{
  v35 = objc_allocWithZone(v29);
  v36 = *a3;
  v37 = *a5;
  v35[OBJC_IVAR___SKEUserSpecificInfo____lazy_storage___isGroundingConditionallyNeeded] = 2;
  v38 = &v35[OBJC_IVAR___SKEUserSpecificInfo_userId];
  *v38 = a1;
  v38[1] = a2;
  v35[OBJC_IVAR___SKEUserSpecificInfo_userIdentityClassification] = v36;
  *&v35[OBJC_IVAR___SKEUserSpecificInfo_rawVoiceIDScore] = a4;
  v35[OBJC_IVAR___SKEUserSpecificInfo_userAttribute] = v37 & 1;
  v35[OBJC_IVAR___SKEUserSpecificInfo_isFirstInteractionForUser] = a6;
  v35[OBJC_IVAR___SKEUserSpecificInfo_didSpeakerChange] = a7;
  v35[OBJC_IVAR___SKEUserSpecificInfo_isOnlyUserInHome] = a8;
  v35[OBJC_IVAR___SKEUserSpecificInfo_explicitContentAllowed] = a11;
  v35[OBJC_IVAR___SKEUserSpecificInfo_censorSpeech] = a12;
  v35[OBJC_IVAR___SKEUserSpecificInfo_wasSpeechProfileUsedByASR] = a13;
  v39 = &v35[OBJC_IVAR___SKEUserSpecificInfo_companionAssistantId];
  *v39 = a14;
  v39[1] = a15;
  *&v35[OBJC_IVAR___SKEUserSpecificInfo_meCard] = a16;
  v35[OBJC_IVAR___SKEUserSpecificInfo_voiceProfilesInFlight] = a9;
  v35[OBJC_IVAR___SKEUserSpecificInfo_twentyFourHourTimeDisplay] = a10;
  v40 = &v35[OBJC_IVAR___SKEUserSpecificInfo_preferredLanguage];
  *v40 = a17;
  v40[1] = a18;
  v41 = &v35[OBJC_IVAR___SKEUserSpecificInfo_countryCode];
  *v41 = a19;
  v41[1] = a20;
  v42 = &v35[OBJC_IVAR___SKEUserSpecificInfo_temperatureUnit];
  *v42 = a21;
  v42[1] = a22;
  v43 = &v35[OBJC_IVAR___SKEUserSpecificInfo_lowScoreThreshold];
  *v43 = a23;
  v43[4] = BYTE4(a23) & 1;
  v44 = &v35[OBJC_IVAR___SKEUserSpecificInfo_personaId];
  *v44 = a24;
  v44[1] = a25;
  v35[OBJC_IVAR___SKEUserSpecificInfo_meetsUserSessionThreshold] = a26;
  v35[OBJC_IVAR___SKEUserSpecificInfo_meetsPersonalRequestThreshold] = a27;
  v35[OBJC_IVAR___SKEUserSpecificInfo_hasActiveUserSession] = a28;
  v45 = OBJC_IVAR___SKEUserSpecificInfo_userSessionState;
  v46 = type metadata accessor for UserSessionState();
  v47 = *(v46 - 8);
  (*(v47 + 16))(&v35[v45], a29, v46);
  v54.receiver = v35;
  v54.super_class = v53;
  v48 = objc_msgSendSuper2(&v54, sel_init);
  (*(v47 + 8))(a29, v46);
  return v48;
}

SiriKitRuntime::UserIdentityClassification_optional __swiftcall UserIdentityClassification.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UserIdentityClassification.init(rawValue:), v3);

  v7 = 5;
  if (v5 < 5)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t UserIdentityClassification.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E656469666E6F63;
  v3 = 0x31657275736E75;
  v4 = 0x4E657275736E75;
  if (v1 != 3)
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E776F6E6BLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UserIdentityClassification()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance UserIdentityClassification()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UserIdentityClassification()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance UserIdentityClassification(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000074;
  v4 = 0x6E656469666E6F63;
  v5 = 0x31657275736E75;
  v6 = 0x4E657275736E75;
  if (v2 != 3)
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (v2 != 2)
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 0x6E776F6E6BLL;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v7;
  a1[1] = v3;
}

SiriKitRuntime::UserAttribute_optional __swiftcall UserAttribute.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UserAttribute.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t UserAttribute.rawValue.getter()
{
  if (*v0)
  {
    result = 0x726564697374756FLL;
  }

  else
  {
    result = 0x72656E776FLL;
  }

  *v0;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UserAttribute(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x726564697374756FLL;
  }

  else
  {
    v4 = 0x72656E776FLL;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x726564697374756FLL;
  }

  else
  {
    v6 = 0x72656E776FLL;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UserAttribute()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance UserAttribute()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UserAttribute()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance UserAttribute@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UserAttribute.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance UserAttribute(uint64_t *a1@<X8>)
{
  v2 = 0x72656E776FLL;
  if (*v1)
  {
    v2 = 0x726564697374756FLL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t static UserSpecificInfo.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  static UserSpecificInfo.supportsSecureCoding = a1;
  return result;
}

uint64_t UserSpecificInfo.userId.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKEUserSpecificInfo_userId);
  v2 = *(v0 + OBJC_IVAR___SKEUserSpecificInfo_userId + 8);

  return v1;
}

uint64_t UserSpecificInfo.userSessionState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___SKEUserSpecificInfo_userSessionState;
  v4 = type metadata accessor for UserSessionState();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UserSpecificInfo.companionAssistantId.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKEUserSpecificInfo_companionAssistantId);
  v2 = *(v0 + OBJC_IVAR___SKEUserSpecificInfo_companionAssistantId + 8);

  return v1;
}

void *UserSpecificInfo.meCard.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKEUserSpecificInfo_meCard);
  v2 = v1;
  return v1;
}

uint64_t UserSpecificInfo.preferredLanguage.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKEUserSpecificInfo_preferredLanguage);
  v2 = *(v0 + OBJC_IVAR___SKEUserSpecificInfo_preferredLanguage + 8);

  return v1;
}

uint64_t UserSpecificInfo.countryCode.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKEUserSpecificInfo_countryCode);
  v2 = *(v0 + OBJC_IVAR___SKEUserSpecificInfo_countryCode + 8);

  return v1;
}

uint64_t UserSpecificInfo.temperatureUnit.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKEUserSpecificInfo_temperatureUnit);
  v2 = *(v0 + OBJC_IVAR___SKEUserSpecificInfo_temperatureUnit + 8);

  return v1;
}

uint64_t UserSpecificInfo.personaId.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKEUserSpecificInfo_personaId);
  v2 = *(v0 + OBJC_IVAR___SKEUserSpecificInfo_personaId + 8);

  return v1;
}

id UserSpecificInfo.init(userId:userIdentityClassification:rawVoiceIDScore:userAttribute:isFirstInteractionForUser:didSpeakerChange:isOnlyUserInHome:voiceProfilesInFlight:twentyFourHourTimeDisplay:explicitContentAllowed:censorSpeech:wasSpeechProfileUsedByASR:companionAssistantId:meCard:preferredLanguage:countryCode:temperatureUnit:lowScoreThreshold:personaId:meetsUserSessionThreshold:meetsPersonalRequestThreshold:hasActiveUserSession:userSessionState:)(uint64_t a1, uint64_t a2, _BYTE *a3, int a4, _BYTE *a5, char a6, char a7, char a8, char a9, char a10, char a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, char a24, uint64_t a25, uint64_t a26, char a27, char a28, char a29, uint64_t a30)
{
  v30[OBJC_IVAR___SKEUserSpecificInfo____lazy_storage___isGroundingConditionallyNeeded] = 2;
  v31 = &v30[OBJC_IVAR___SKEUserSpecificInfo_userId];
  *v31 = a1;
  v31[1] = a2;
  v30[OBJC_IVAR___SKEUserSpecificInfo_userIdentityClassification] = *a3;
  *&v30[OBJC_IVAR___SKEUserSpecificInfo_rawVoiceIDScore] = a4;
  v30[OBJC_IVAR___SKEUserSpecificInfo_userAttribute] = *a5 & 1;
  v30[OBJC_IVAR___SKEUserSpecificInfo_isFirstInteractionForUser] = a6;
  v30[OBJC_IVAR___SKEUserSpecificInfo_didSpeakerChange] = a7;
  v30[OBJC_IVAR___SKEUserSpecificInfo_isOnlyUserInHome] = a8;
  v30[OBJC_IVAR___SKEUserSpecificInfo_explicitContentAllowed] = a11;
  v30[OBJC_IVAR___SKEUserSpecificInfo_censorSpeech] = a12;
  v30[OBJC_IVAR___SKEUserSpecificInfo_wasSpeechProfileUsedByASR] = a13;
  v32 = &v30[OBJC_IVAR___SKEUserSpecificInfo_companionAssistantId];
  *v32 = a14;
  v32[1] = a15;
  *&v30[OBJC_IVAR___SKEUserSpecificInfo_meCard] = a16;
  v30[OBJC_IVAR___SKEUserSpecificInfo_voiceProfilesInFlight] = a9;
  v30[OBJC_IVAR___SKEUserSpecificInfo_twentyFourHourTimeDisplay] = a10;
  v33 = &v30[OBJC_IVAR___SKEUserSpecificInfo_preferredLanguage];
  *v33 = a17;
  v33[1] = a18;
  v34 = &v30[OBJC_IVAR___SKEUserSpecificInfo_countryCode];
  *v34 = a19;
  v34[1] = a20;
  v35 = &v30[OBJC_IVAR___SKEUserSpecificInfo_temperatureUnit];
  *v35 = a21;
  v35[1] = a22;
  v36 = &v30[OBJC_IVAR___SKEUserSpecificInfo_lowScoreThreshold];
  *v36 = a23;
  v36[4] = a24 & 1;
  v37 = &v30[OBJC_IVAR___SKEUserSpecificInfo_personaId];
  *v37 = a25;
  v37[1] = a26;
  v30[OBJC_IVAR___SKEUserSpecificInfo_meetsUserSessionThreshold] = a27;
  v30[OBJC_IVAR___SKEUserSpecificInfo_meetsPersonalRequestThreshold] = a28;
  v30[OBJC_IVAR___SKEUserSpecificInfo_hasActiveUserSession] = a29;
  v38 = OBJC_IVAR___SKEUserSpecificInfo_userSessionState;
  v39 = type metadata accessor for UserSessionState();
  v40 = *(v39 - 8);
  (*(v40 + 16))(&v30[v38], a30, v39);
  v43.receiver = v30;
  v43.super_class = type metadata accessor for UserSpecificInfo();
  v41 = objc_msgSendSuper2(&v43, sel_init);
  (*(v40 + 8))(a30, v39);
  return v41;
}

id UserSpecificInfo.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes16UserSessionStateOSgMd, &_s16SiriMessageTypes16UserSessionStateOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v127 - v6;
  v8 = type metadata accessor for UserSessionState();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR___SKEUserSpecificInfo____lazy_storage___isGroundingConditionallyNeeded) = 2;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v13 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v13)
  {

LABEL_19:
    type metadata accessor for UserSpecificInfo();
    v60 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
    v61 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v14 = v13;
  v132 = v7;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = (v1 + OBJC_IVAR___SKEUserSpecificInfo_userId);
  *v16 = v15;
  v16[1] = v17;
  v18 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v18)
  {

    goto LABEL_18;
  }

  v19 = v18;
  v20._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  UserIdentityClassification.init(rawValue:)(v20);
  if (v133 == 5)
  {

LABEL_18:
    v59 = v16[1];

    goto LABEL_19;
  }

  v130 = v9;
  v131 = v19;
  v129 = v8;
  *(v2 + OBJC_IVAR___SKEUserSpecificInfo_userIdentityClassification) = v133;
  v21 = MEMORY[0x1E12A1410](0x6563696F56776172, 0xEF65726F63534449);
  v22 = [a1 decodeInt32ForKey_];

  *(v2 + OBJC_IVAR___SKEUserSpecificInfo_rawVoiceIDScore) = v22;
  v23 = MEMORY[0x1E12A1410](0xD000000000000019, 0x80000001DCA8BE90);
  LOBYTE(v22) = [a1 decodeBoolForKey_];

  *(v2 + OBJC_IVAR___SKEUserSpecificInfo_isFirstInteractionForUser) = v22;
  v24 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v24)
  {

    goto LABEL_18;
  }

  v128 = v24;
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;
  v28._countAndFlagsBits = v25;
  v28._object = v27;
  v29 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UserSpecificInfo.init(coder:), v28);

  if (v29)
  {
    if (v29 != 1)
    {

      goto LABEL_18;
    }

    v30 = 1;
  }

  else
  {
    v30 = 0;
  }

  *(v2 + OBJC_IVAR___SKEUserSpecificInfo_userAttribute) = v30;
  v31 = MEMORY[0x1E12A1410](0xD000000000000010, 0x80000001DCA8BEB0);
  v32 = [a1 decodeBoolForKey_];

  *(v2 + OBJC_IVAR___SKEUserSpecificInfo_didSpeakerChange) = v32;
  v127[1] = 0xD000000000000010;
  v33 = MEMORY[0x1E12A1410](0xD000000000000010, 0x80000001DCA8BED0);
  v34 = [a1 decodeBoolForKey_];

  *(v2 + OBJC_IVAR___SKEUserSpecificInfo_isOnlyUserInHome) = v34;
  v35 = MEMORY[0x1E12A1410](0xD000000000000015, 0x80000001DCA8BEF0);
  v36 = [a1 decodeBoolForKey_];

  *(v2 + OBJC_IVAR___SKEUserSpecificInfo_voiceProfilesInFlight) = v36;
  v37 = MEMORY[0x1E12A1410](0xD000000000000019, 0x80000001DCA8BF10);
  v38 = [a1 decodeBoolForKey_];

  *(v2 + OBJC_IVAR___SKEUserSpecificInfo_twentyFourHourTimeDisplay) = v38;
  v39 = MEMORY[0x1E12A1410](0xD000000000000016, 0x80000001DCA8BF30);
  v40 = [a1 decodeBoolForKey_];

  *(v2 + OBJC_IVAR___SKEUserSpecificInfo_explicitContentAllowed) = v40;
  v41 = MEMORY[0x1E12A1410](0x7053726F736E6563, 0xEC00000068636565);
  v42 = [a1 decodeBoolForKey_];

  *(v2 + OBJC_IVAR___SKEUserSpecificInfo_censorSpeech) = v42;
  v43 = MEMORY[0x1E12A1410](0xD000000000000019, 0x80000001DCA8BF50);
  v44 = [a1 decodeBoolForKey_];

  *(v2 + OBJC_IVAR___SKEUserSpecificInfo_wasSpeechProfileUsedByASR) = v44;
  v45 = MEMORY[0x1E12A1410](0xD000000000000019, 0x80000001DCA7FA40);
  v46 = [a1 decodeBoolForKey_];

  *(v2 + OBJC_IVAR___SKEUserSpecificInfo_meetsUserSessionThreshold) = v46;
  v47 = MEMORY[0x1E12A1410](0xD00000000000001DLL, 0x80000001DCA7FA60);
  v48 = [a1 decodeBoolForKey_];

  *(v2 + OBJC_IVAR___SKEUserSpecificInfo_meetsPersonalRequestThreshold) = v48;
  v49 = MEMORY[0x1E12A1410](0xD000000000000014, 0x80000001DCA8BF70);
  v50 = [a1 decodeBoolForKey_];

  *(v2 + OBJC_IVAR___SKEUserSpecificInfo_hasActiveUserSession) = v50;
  v51 = MEMORY[0x1E12A1410](0xD000000000000014, 0x80000001DCA8BF90);
  v52 = [a1 containsValueForKey_];

  if (v52)
  {
    v53 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v53)
    {
      v54 = v53;
      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;
    }

    else
    {
      v55 = 0;
      v57 = 0;
    }

    v63 = (v2 + OBJC_IVAR___SKEUserSpecificInfo_companionAssistantId);
    *v63 = v55;
    v63[1] = v57;
  }

  else
  {
    v58 = (v2 + OBJC_IVAR___SKEUserSpecificInfo_companionAssistantId);
    *v58 = 0;
    v58[1] = 0;
  }

  v64 = MEMORY[0x1E12A1410](0x64726143656DLL, 0xE600000000000000);
  v65 = [a1 containsValueForKey_];

  if (v65)
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAPerson, 0x1E69C7930);
    v66 = NSCoder.decodeObject<A>(of:forKey:)();
  }

  else
  {
    v66 = 0;
  }

  *(v2 + OBJC_IVAR___SKEUserSpecificInfo_meCard) = v66;
  v67 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA8BFB0);
  v68 = [a1 containsValueForKey_];

  if (v68)
  {
    v69 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v69)
    {
      v70 = v69;
      v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v73 = v72;
    }

    else
    {
      v71 = 0;
      v73 = 0;
    }

    v75 = (v2 + OBJC_IVAR___SKEUserSpecificInfo_preferredLanguage);
    *v75 = v71;
    v75[1] = v73;
  }

  else
  {
    v74 = (v2 + OBJC_IVAR___SKEUserSpecificInfo_preferredLanguage);
    *v74 = 0;
    v74[1] = 0;
  }

  v76 = MEMORY[0x1E12A1410](0x437972746E756F63, 0xEB0000000065646FLL);
  v77 = [a1 containsValueForKey_];

  if (v77)
  {
    v78 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v78)
    {
      v79 = v78;
      v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = v81;
    }

    else
    {
      v80 = 0;
      v82 = 0;
    }

    v84 = (v2 + OBJC_IVAR___SKEUserSpecificInfo_countryCode);
    *v84 = v80;
    v84[1] = v82;
  }

  else
  {
    v83 = (v2 + OBJC_IVAR___SKEUserSpecificInfo_countryCode);
    *v83 = 0;
    v83[1] = 0;
  }

  v85 = MEMORY[0x1E12A1410](0x74617265706D6574, 0xEF74696E55657275);
  v86 = [a1 containsValueForKey_];

  if (v86)
  {
    v87 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v87)
    {
      v88 = v87;
      v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v91 = v90;
    }

    else
    {
      v89 = 0;
      v91 = 0;
    }

    v93 = (v2 + OBJC_IVAR___SKEUserSpecificInfo_temperatureUnit);
    *v93 = v89;
    v93[1] = v91;
  }

  else
  {
    v92 = (v2 + OBJC_IVAR___SKEUserSpecificInfo_temperatureUnit);
    *v92 = 0;
    v92[1] = 0;
  }

  v94 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA8BFD0);
  v95 = [a1 containsValueForKey_];

  if (v95)
  {
    v96 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA8BFD0);
    v97 = [a1 decodeInt32ForKey_];
  }

  else
  {
    v97 = 0;
  }

  v98 = v2 + OBJC_IVAR___SKEUserSpecificInfo_lowScoreThreshold;
  *v98 = v97;
  v98[4] = v95 ^ 1;
  v99 = MEMORY[0x1E12A1410](0x49616E6F73726570, 0xE900000000000064);
  v100 = [a1 containsValueForKey_];

  if (v100)
  {
    v101 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v101)
    {
      v102 = v101;
      v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v105 = v104;
    }

    else
    {
      v103 = 0;
      v105 = 0;
    }

    v107 = v129;
    v108 = v130;
    v109 = (v2 + OBJC_IVAR___SKEUserSpecificInfo_personaId);
    *v109 = v103;
    v109[1] = v105;
  }

  else
  {
    v106 = (v2 + OBJC_IVAR___SKEUserSpecificInfo_personaId);
    *v106 = 0;
    v106[1] = 0;
    v107 = v129;
    v108 = v130;
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  v110 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v110)
  {
    goto LABEL_56;
  }

  v133 = xmmword_1DCA69F00;
  v111 = v110;
  static Data._conditionallyBridgeFromObjectiveC(_:result:)();

  v112 = *(&v133 + 1);
  if (*(&v133 + 1) >> 60 == 15)
  {
    v108 = v130;
LABEL_56:
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v118 = type metadata accessor for Logger();
    __swift_project_value_buffer(v118, static Logger.executor);
    v119 = Logger.logObject.getter();
    v120 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      *v121 = 0;
      _os_log_impl(&dword_1DC659000, v119, v120, "#user-session: Failed to decode userSessionState from NSCoder. Defaulting to .ambient", v121, 2u);
      v122 = v121;
      v107 = v129;
      MEMORY[0x1E12A2F50](v122, -1, -1);
    }

    (*(v108 + 104))(v2 + OBJC_IVAR___SKEUserSpecificInfo_userSessionState, *MEMORY[0x1E69D06E8], v107);
    goto LABEL_61;
  }

  v113 = v133;
  v114 = type metadata accessor for JSONDecoder();
  v115 = *(v114 + 48);
  v116 = *(v114 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type UserSessionState and conformance UserSessionState(&lazy protocol witness table cache variable for type UserSessionState and conformance UserSessionState);
  v117 = v132;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  outlined consume of Data?(v113, v112);

  v125 = v130;
  (*(v130 + 56))(v117, 0, 1, v107);
  v126 = *(v125 + 32);
  v126(v12, v117, v107);
  v126(v2 + OBJC_IVAR___SKEUserSpecificInfo_userSessionState, v12, v107);
LABEL_61:
  v123 = type metadata accessor for UserSpecificInfo();
  v134.receiver = v2;
  v134.super_class = v123;
  v124 = objc_msgSendSuper2(&v134, sel_init);

  return v124;
}

Swift::Void __swiftcall UserSpecificInfo.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = MEMORY[0x1E12A1410](*(v1 + OBJC_IVAR___SKEUserSpecificInfo_userId), *(v1 + OBJC_IVAR___SKEUserSpecificInfo_userId + 8));
  v5 = MEMORY[0x1E12A1410](0x644972657375, 0xE600000000000000);
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];

  v6 = *(v2 + OBJC_IVAR___SKEUserSpecificInfo_userIdentityClassification);
  if (v6 <= 1)
  {
    if (*(v2 + OBJC_IVAR___SKEUserSpecificInfo_userIdentityClassification))
    {
      v7 = 0xE500000000000000;
      v8 = 0x6E776F6E6BLL;
    }

    else
    {
      v7 = 0xE900000000000074;
      v8 = 0x6E656469666E6F63;
    }
  }

  else
  {
    v7 = 0xE700000000000000;
    if (v6 == 2)
    {
      v8 = 0x31657275736E75;
    }

    else if (v6 == 3)
    {
      v8 = 0x4E657275736E75;
    }

    else
    {
      v8 = 0x6E776F6E6B6E75;
    }
  }

  v9 = MEMORY[0x1E12A1410](v8, v7);

  v10 = MEMORY[0x1E12A1410](0xD00000000000001ALL, 0x80000001DCA8BE70);
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];

  v11 = *(v2 + OBJC_IVAR___SKEUserSpecificInfo_rawVoiceIDScore);
  v12 = MEMORY[0x1E12A1410](0x6563696F56776172, 0xEF65726F63534449);
  [(objc_class *)with.super.isa encodeInt32:v11 forKey:v12];

  v13 = *(v2 + OBJC_IVAR___SKEUserSpecificInfo_isFirstInteractionForUser);
  v14 = MEMORY[0x1E12A1410](0xD000000000000019, 0x80000001DCA8BE90);
  [(objc_class *)with.super.isa encodeBool:v13 forKey:v14];

  if (*(v2 + OBJC_IVAR___SKEUserSpecificInfo_userAttribute))
  {
    v15 = 0x726564697374756FLL;
  }

  else
  {
    v15 = 0x72656E776FLL;
  }

  if (*(v2 + OBJC_IVAR___SKEUserSpecificInfo_userAttribute))
  {
    v16 = 0xE800000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  v17 = MEMORY[0x1E12A1410](v15, v16);

  v18 = MEMORY[0x1E12A1410](0x7274744172657375, 0xED00006574756269);
  [(objc_class *)with.super.isa encodeObject:v17 forKey:v18];

  v19 = *(v2 + OBJC_IVAR___SKEUserSpecificInfo_didSpeakerChange);
  v20 = MEMORY[0x1E12A1410](0xD000000000000010, 0x80000001DCA8BEB0);
  [(objc_class *)with.super.isa encodeBool:v19 forKey:v20];

  v21 = *(v2 + OBJC_IVAR___SKEUserSpecificInfo_isOnlyUserInHome);
  v22 = MEMORY[0x1E12A1410](0xD000000000000010, 0x80000001DCA8BED0);
  [(objc_class *)with.super.isa encodeBool:v21 forKey:v22];

  v23 = *(v2 + OBJC_IVAR___SKEUserSpecificInfo_voiceProfilesInFlight);
  v24 = MEMORY[0x1E12A1410](0xD000000000000015, 0x80000001DCA8BEF0);
  [(objc_class *)with.super.isa encodeBool:v23 forKey:v24];

  v25 = *(v2 + OBJC_IVAR___SKEUserSpecificInfo_twentyFourHourTimeDisplay);
  v26 = MEMORY[0x1E12A1410](0xD000000000000019, 0x80000001DCA8BF10);
  [(objc_class *)with.super.isa encodeBool:v25 forKey:v26];

  v27 = *(v2 + OBJC_IVAR___SKEUserSpecificInfo_explicitContentAllowed);
  v28 = MEMORY[0x1E12A1410](0xD000000000000016, 0x80000001DCA8BF30);
  [(objc_class *)with.super.isa encodeBool:v27 forKey:v28];

  v29 = *(v2 + OBJC_IVAR___SKEUserSpecificInfo_censorSpeech);
  v30 = MEMORY[0x1E12A1410](0x7053726F736E6563, 0xEC00000068636565);
  [(objc_class *)with.super.isa encodeBool:v29 forKey:v30];

  v31 = *(v2 + OBJC_IVAR___SKEUserSpecificInfo_wasSpeechProfileUsedByASR);
  v32 = MEMORY[0x1E12A1410](0xD000000000000019, 0x80000001DCA8BF50);
  [(objc_class *)with.super.isa encodeBool:v31 forKey:v32];

  v33 = *(v2 + OBJC_IVAR___SKEUserSpecificInfo_meetsUserSessionThreshold);
  v34 = MEMORY[0x1E12A1410](0xD000000000000019, 0x80000001DCA7FA40);
  [(objc_class *)with.super.isa encodeBool:v33 forKey:v34];

  v35 = *(v2 + OBJC_IVAR___SKEUserSpecificInfo_meetsPersonalRequestThreshold);
  v36 = MEMORY[0x1E12A1410](0xD00000000000001DLL, 0x80000001DCA7FA60);
  [(objc_class *)with.super.isa encodeBool:v35 forKey:v36];

  v37 = *(v2 + OBJC_IVAR___SKEUserSpecificInfo_hasActiveUserSession);
  v38 = MEMORY[0x1E12A1410](0xD000000000000014, 0x80000001DCA8BF70);
  [(objc_class *)with.super.isa encodeBool:v37 forKey:v38];

  if (*(v2 + OBJC_IVAR___SKEUserSpecificInfo_companionAssistantId + 8))
  {
    v39 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR___SKEUserSpecificInfo_companionAssistantId));
    v40 = MEMORY[0x1E12A1410](0xD000000000000014, 0x80000001DCA8BF90);
    [(objc_class *)with.super.isa encodeObject:v39 forKey:v40];
  }

  v41 = *(v2 + OBJC_IVAR___SKEUserSpecificInfo_meCard);
  if (v41)
  {
    v42 = v41;
    v43 = MEMORY[0x1E12A1410](0x64726143656DLL, 0xE600000000000000);
    [(objc_class *)with.super.isa encodeObject:v42 forKey:v43];
  }

  if (*(v2 + OBJC_IVAR___SKEUserSpecificInfo_preferredLanguage + 8))
  {
    v44 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR___SKEUserSpecificInfo_preferredLanguage));
    v45 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA8BFB0);
    [(objc_class *)with.super.isa encodeObject:v44 forKey:v45];
  }

  if (*(v2 + OBJC_IVAR___SKEUserSpecificInfo_countryCode + 8))
  {
    v46 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR___SKEUserSpecificInfo_countryCode));
    v47 = MEMORY[0x1E12A1410](0x437972746E756F63, 0xEB0000000065646FLL);
    [(objc_class *)with.super.isa encodeObject:v46 forKey:v47];
  }

  if (*(v2 + OBJC_IVAR___SKEUserSpecificInfo_temperatureUnit + 8))
  {
    v48 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR___SKEUserSpecificInfo_temperatureUnit));
    v49 = MEMORY[0x1E12A1410](0x74617265706D6574, 0xEF74696E55657275);
    [(objc_class *)with.super.isa encodeObject:v48 forKey:v49];
  }

  if ((*(v2 + OBJC_IVAR___SKEUserSpecificInfo_lowScoreThreshold + 4) & 1) == 0)
  {
    v50 = *(v2 + OBJC_IVAR___SKEUserSpecificInfo_lowScoreThreshold);
    v51 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA8BFD0);
    [(objc_class *)with.super.isa encodeInt32:v50 forKey:v51];
  }

  if (*(v2 + OBJC_IVAR___SKEUserSpecificInfo_personaId + 8))
  {
    v52 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR___SKEUserSpecificInfo_personaId));
    v53 = MEMORY[0x1E12A1410](0x49616E6F73726570, 0xE900000000000064);
    [(objc_class *)with.super.isa encodeObject:v52 forKey:v53];
  }

  v54 = type metadata accessor for JSONEncoder();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for UserSessionState();
  lazy protocol witness table accessor for type UserSessionState and conformance UserSessionState(&lazy protocol witness table cache variable for type UserSessionState and conformance UserSessionState);
  v57 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v59 = v58;

  isa = Data._bridgeToObjectiveC()().super.isa;
  v61 = MEMORY[0x1E12A1410](0xD000000000000010, 0x80000001DCA7B380);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v61];

  outlined consume of Data._Representation(v57, v59);
}

uint64_t UserSpecificInfo.isGroundingConditionallyNeeded.getter()
{
  v1 = OBJC_IVAR___SKEUserSpecificInfo____lazy_storage___isGroundingConditionallyNeeded;
  v2 = *(v0 + OBJC_IVAR___SKEUserSpecificInfo____lazy_storage___isGroundingConditionallyNeeded);
  if (v2 == 2)
  {
    LOBYTE(v2) = closure #1 in UserSpecificInfo.isGroundingConditionallyNeeded.getter(v0);
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t closure #1 in UserSpecificInfo.isGroundingConditionallyNeeded.getter(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___SKEUserSpecificInfo_isOnlyUserInHome);
  if (v1 == 1)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.executor);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "isGroundingConditionallyNeeded: false: Only user in home";
LABEL_10:
      _os_log_impl(&dword_1DC659000, v3, v4, v6, v5, 2u);
      MEMORY[0x1E12A2F50](v5, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.executor);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "isGroundingConditionallyNeeded: true, DialogEngine will determine if grounding is needed";
      goto LABEL_10;
    }
  }

  return v1 ^ 1u;
}

uint64_t (*UserSpecificInfo.isGroundingConditionallyNeeded.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = UserSpecificInfo.isGroundingConditionallyNeeded.getter() & 1;
  return UserSpecificInfo.isGroundingConditionallyNeeded.modify;
}

uint64_t UserSpecificInfo.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v28);
  if (v29)
  {
    type metadata accessor for UserSpecificInfo();
    if (swift_dynamicCast())
    {
      v2 = *(v1 + OBJC_IVAR___SKEUserSpecificInfo_userId) == *&v27[OBJC_IVAR___SKEUserSpecificInfo_userId] && *(v1 + OBJC_IVAR___SKEUserSpecificInfo_userId + 8) == *&v27[OBJC_IVAR___SKEUserSpecificInfo_userId + 8];
      if (!v2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (specialized == infix<A>(_:_:)(*(v1 + OBJC_IVAR___SKEUserSpecificInfo_userIdentityClassification), v27[OBJC_IVAR___SKEUserSpecificInfo_userIdentityClassification]) & 1) == 0 || *(v1 + OBJC_IVAR___SKEUserSpecificInfo_rawVoiceIDScore) != *&v27[OBJC_IVAR___SKEUserSpecificInfo_rawVoiceIDScore] || *(v1 + OBJC_IVAR___SKEUserSpecificInfo_isFirstInteractionForUser) != v27[OBJC_IVAR___SKEUserSpecificInfo_isFirstInteractionForUser])
      {
        goto LABEL_35;
      }

      v3 = v27[OBJC_IVAR___SKEUserSpecificInfo_userAttribute];
      if (*(v1 + OBJC_IVAR___SKEUserSpecificInfo_userAttribute))
      {
        v4 = 0x726564697374756FLL;
      }

      else
      {
        v4 = 0x72656E776FLL;
      }

      if (*(v1 + OBJC_IVAR___SKEUserSpecificInfo_userAttribute))
      {
        v5 = 0xE800000000000000;
      }

      else
      {
        v5 = 0xE500000000000000;
      }

      if (v27[OBJC_IVAR___SKEUserSpecificInfo_userAttribute])
      {
        v6 = 0x726564697374756FLL;
      }

      else
      {
        v6 = 0x72656E776FLL;
      }

      if (v27[OBJC_IVAR___SKEUserSpecificInfo_userAttribute])
      {
        v7 = 0xE800000000000000;
      }

      else
      {
        v7 = 0xE500000000000000;
      }

      if (v4 == v6 && v5 == v7)
      {
      }

      else
      {
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v8 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      if (*(v1 + OBJC_IVAR___SKEUserSpecificInfo_didSpeakerChange) != v27[OBJC_IVAR___SKEUserSpecificInfo_didSpeakerChange] || *(v1 + OBJC_IVAR___SKEUserSpecificInfo_isOnlyUserInHome) != v27[OBJC_IVAR___SKEUserSpecificInfo_isOnlyUserInHome] || *(v1 + OBJC_IVAR___SKEUserSpecificInfo_voiceProfilesInFlight) != v27[OBJC_IVAR___SKEUserSpecificInfo_voiceProfilesInFlight] || *(v1 + OBJC_IVAR___SKEUserSpecificInfo_twentyFourHourTimeDisplay) != v27[OBJC_IVAR___SKEUserSpecificInfo_twentyFourHourTimeDisplay] || *(v1 + OBJC_IVAR___SKEUserSpecificInfo_explicitContentAllowed) != v27[OBJC_IVAR___SKEUserSpecificInfo_explicitContentAllowed] || *(v1 + OBJC_IVAR___SKEUserSpecificInfo_censorSpeech) != v27[OBJC_IVAR___SKEUserSpecificInfo_censorSpeech] || *(v1 + OBJC_IVAR___SKEUserSpecificInfo_wasSpeechProfileUsedByASR) != v27[OBJC_IVAR___SKEUserSpecificInfo_wasSpeechProfileUsedByASR])
      {
        goto LABEL_35;
      }

      v11 = *(v1 + OBJC_IVAR___SKEUserSpecificInfo_companionAssistantId + 8);
      v12 = *&v27[OBJC_IVAR___SKEUserSpecificInfo_companionAssistantId + 8];
      if (v11)
      {
        if (!v12 || (*(v1 + OBJC_IVAR___SKEUserSpecificInfo_companionAssistantId) != *&v27[OBJC_IVAR___SKEUserSpecificInfo_companionAssistantId] || v11 != v12) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else if (v12)
      {
        goto LABEL_35;
      }

      v13 = v1;
      v14 = *(v1 + OBJC_IVAR___SKEUserSpecificInfo_meCard);
      v9 = *&v27[OBJC_IVAR___SKEUserSpecificInfo_meCard];
      if (v14)
      {
        if (!v9)
        {

          return v9 & 1;
        }

        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAPerson, 0x1E69C7930);
        v15 = v9;
        v16 = v14;
        v17 = static NSObject.== infix(_:_:)();

        if ((v17 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else if (v9)
      {
        goto LABEL_35;
      }

      v18 = *(v13 + OBJC_IVAR___SKEUserSpecificInfo_preferredLanguage + 8);
      v19 = *&v27[OBJC_IVAR___SKEUserSpecificInfo_preferredLanguage + 8];
      if (v18)
      {
        if (!v19 || (*(v13 + OBJC_IVAR___SKEUserSpecificInfo_preferredLanguage) != *&v27[OBJC_IVAR___SKEUserSpecificInfo_preferredLanguage] || v18 != v19) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else if (v19)
      {
        goto LABEL_35;
      }

      v20 = *(v13 + OBJC_IVAR___SKEUserSpecificInfo_countryCode + 8);
      v21 = *&v27[OBJC_IVAR___SKEUserSpecificInfo_countryCode + 8];
      if (v20)
      {
        if (!v21 || (*(v13 + OBJC_IVAR___SKEUserSpecificInfo_countryCode) != *&v27[OBJC_IVAR___SKEUserSpecificInfo_countryCode] || v20 != v21) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else if (v21)
      {
        goto LABEL_35;
      }

      v22 = *(v13 + OBJC_IVAR___SKEUserSpecificInfo_temperatureUnit + 8);
      v23 = *&v27[OBJC_IVAR___SKEUserSpecificInfo_temperatureUnit + 8];
      if (v22)
      {
        if (!v23 || (*(v13 + OBJC_IVAR___SKEUserSpecificInfo_temperatureUnit) != *&v27[OBJC_IVAR___SKEUserSpecificInfo_temperatureUnit] || v22 != v23) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else if (v23)
      {
        goto LABEL_35;
      }

      v24 = v27[OBJC_IVAR___SKEUserSpecificInfo_lowScoreThreshold + 4];
      if (*(v13 + OBJC_IVAR___SKEUserSpecificInfo_lowScoreThreshold + 4))
      {
        if ((v27[OBJC_IVAR___SKEUserSpecificInfo_lowScoreThreshold + 4] & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else if ((v27[OBJC_IVAR___SKEUserSpecificInfo_lowScoreThreshold + 4] & 1) != 0 || *(v13 + OBJC_IVAR___SKEUserSpecificInfo_lowScoreThreshold) != *&v27[OBJC_IVAR___SKEUserSpecificInfo_lowScoreThreshold])
      {
        goto LABEL_35;
      }

      v25 = *(v13 + OBJC_IVAR___SKEUserSpecificInfo_personaId + 8);
      v26 = *&v27[OBJC_IVAR___SKEUserSpecificInfo_personaId + 8];
      if (v25)
      {
        if (!v26 || (*(v13 + OBJC_IVAR___SKEUserSpecificInfo_personaId) != *&v27[OBJC_IVAR___SKEUserSpecificInfo_personaId] || v25 != v26) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_35;
        }

LABEL_84:
        if (*(v13 + OBJC_IVAR___SKEUserSpecificInfo_meetsUserSessionThreshold) == v27[OBJC_IVAR___SKEUserSpecificInfo_meetsUserSessionThreshold] && *(v13 + OBJC_IVAR___SKEUserSpecificInfo_meetsPersonalRequestThreshold) == v27[OBJC_IVAR___SKEUserSpecificInfo_meetsPersonalRequestThreshold] && *(v13 + OBJC_IVAR___SKEUserSpecificInfo_hasActiveUserSession) == v27[OBJC_IVAR___SKEUserSpecificInfo_hasActiveUserSession])
        {
          LOBYTE(v9) = static UserSessionState.== infix(_:_:)();

          return v9 & 1;
        }

        goto LABEL_35;
      }

      if (!v26)
      {
        goto LABEL_84;
      }

LABEL_35:
    }
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v28, &_sypSgMd, &_sypSgMR);
  }

  LOBYTE(v9) = 0;
  return v9 & 1;
}

uint64_t UserSpecificInfo.debugDescription.getter()
{
  v1 = v0;
  v148.receiver = v0;
  v148.super_class = type metadata accessor for UserSpecificInfo();
  v2 = objc_msgSendSuper2(&v148, sel_debugDescription);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v149[0] = v3;
  v149[1] = v5;
  MEMORY[0x1E12A1580](31520, 0xE200000000000000);
  v7 = v149[0];
  v6 = v149[1];
  strcpy(v149, "userId: ");
  BYTE1(v149[1]) = 0;
  WORD1(v149[1]) = 0;
  HIDWORD(v149[1]) = -402653184;
  MEMORY[0x1E12A1580](*&v1[OBJC_IVAR___SKEUserSpecificInfo_userId], *&v1[OBJC_IVAR___SKEUserSpecificInfo_userId + 8]);
  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v8 = v149[0];
  v9 = v149[1];
  v149[0] = v7;
  v149[1] = v6;

  MEMORY[0x1E12A1580](v8, v9);

  v10 = v149[0];
  v11 = v149[1];
  v149[0] = 0xD00000000000001CLL;
  v149[1] = 0x80000001DCA8BFF0;
  v12 = v1[OBJC_IVAR___SKEUserSpecificInfo_userIdentityClassification];
  if (v12 <= 1)
  {
    if (v1[OBJC_IVAR___SKEUserSpecificInfo_userIdentityClassification])
    {
      v13 = 0xE500000000000000;
      v14 = 0x6E776F6E6BLL;
    }

    else
    {
      v13 = 0xE900000000000074;
      v14 = 0x6E656469666E6F63;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v12 == 2)
    {
      v14 = 0x31657275736E75;
    }

    else if (v12 == 3)
    {
      v14 = 0x4E657275736E75;
    }

    else
    {
      v14 = 0x6E776F6E6B6E75;
    }
  }

  MEMORY[0x1E12A1580](v14, v13);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v15 = v149[0];
  v16 = v149[1];
  v149[0] = v10;
  v149[1] = v11;

  MEMORY[0x1E12A1580](v15, v16);

  v17 = v149[0];
  v18 = v149[1];
  v149[0] = 0xD000000000000011;
  v149[1] = 0x80000001DCA8C010;
  v143 = *&v1[OBJC_IVAR___SKEUserSpecificInfo_rawVoiceIDScore];
  v19 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1E12A1580](v19);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v20 = v149[0];
  v21 = v149[1];
  v149[0] = v17;
  v149[1] = v18;

  MEMORY[0x1E12A1580](v20, v21);

  v23 = v149[0];
  v22 = v149[1];
  v24 = v1[OBJC_IVAR___SKEUserSpecificInfo_isFirstInteractionForUser];
  v149[0] = 0xD00000000000001BLL;
  v149[1] = 0x80000001DCA8C030;
  if (v24)
  {
    v25 = 1702195828;
  }

  else
  {
    v25 = 0x65736C6166;
  }

  if (v24)
  {
    v26 = 0xE400000000000000;
  }

  else
  {
    v26 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v25, v26);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v27 = v149[0];
  v28 = v149[1];
  v149[0] = v23;
  v149[1] = v22;

  MEMORY[0x1E12A1580](v27, v28);

  v30 = v149[0];
  v29 = v149[1];
  v149[0] = 0x7274744172657375;
  v149[1] = 0xEF203A6574756269;
  if (v1[OBJC_IVAR___SKEUserSpecificInfo_userAttribute])
  {
    v31 = 0x726564697374756FLL;
  }

  else
  {
    v31 = 0x72656E776FLL;
  }

  if (v1[OBJC_IVAR___SKEUserSpecificInfo_userAttribute])
  {
    v32 = 0xE800000000000000;
  }

  else
  {
    v32 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v31, v32);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v33 = v149[0];
  v34 = v149[1];
  v149[0] = v30;
  v149[1] = v29;

  MEMORY[0x1E12A1580](v33, v34);

  v36 = v149[0];
  v35 = v149[1];
  v149[0] = 0xD000000000000012;
  v149[1] = 0x80000001DCA8C050;
  if (v1[OBJC_IVAR___SKEUserSpecificInfo_didSpeakerChange])
  {
    v37 = 1702195828;
  }

  else
  {
    v37 = 0x65736C6166;
  }

  if (v1[OBJC_IVAR___SKEUserSpecificInfo_didSpeakerChange])
  {
    v38 = 0xE400000000000000;
  }

  else
  {
    v38 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v37, v38);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v39 = v149[0];
  v40 = v149[1];
  v149[0] = v36;
  v149[1] = v35;

  MEMORY[0x1E12A1580](v39, v40);

  v42 = v149[0];
  v41 = v149[1];
  v149[0] = 0xD000000000000012;
  v149[1] = 0x80000001DCA8C070;
  if (v1[OBJC_IVAR___SKEUserSpecificInfo_isOnlyUserInHome])
  {
    v43 = 1702195828;
  }

  else
  {
    v43 = 0x65736C6166;
  }

  if (v1[OBJC_IVAR___SKEUserSpecificInfo_isOnlyUserInHome])
  {
    v44 = 0xE400000000000000;
  }

  else
  {
    v44 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v43, v44);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v45 = v149[0];
  v46 = v149[1];
  v149[0] = v42;
  v149[1] = v41;

  MEMORY[0x1E12A1580](v45, v46);

  v48 = v149[0];
  v47 = v149[1];
  v149[0] = 0xD000000000000017;
  v149[1] = 0x80000001DCA8C090;
  if (v1[OBJC_IVAR___SKEUserSpecificInfo_voiceProfilesInFlight])
  {
    v49 = 1702195828;
  }

  else
  {
    v49 = 0x65736C6166;
  }

  if (v1[OBJC_IVAR___SKEUserSpecificInfo_voiceProfilesInFlight])
  {
    v50 = 0xE400000000000000;
  }

  else
  {
    v50 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v49, v50);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v51 = v149[0];
  v52 = v149[1];
  v149[0] = v48;
  v149[1] = v47;

  MEMORY[0x1E12A1580](v51, v52);

  v54 = v149[0];
  v53 = v149[1];
  v149[0] = 0xD00000000000001BLL;
  v149[1] = 0x80000001DCA8C0B0;
  if (v1[OBJC_IVAR___SKEUserSpecificInfo_twentyFourHourTimeDisplay])
  {
    v55 = 1702195828;
  }

  else
  {
    v55 = 0x65736C6166;
  }

  if (v1[OBJC_IVAR___SKEUserSpecificInfo_twentyFourHourTimeDisplay])
  {
    v56 = 0xE400000000000000;
  }

  else
  {
    v56 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v55, v56);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v57 = v149[0];
  v58 = v149[1];
  v149[0] = v54;
  v149[1] = v53;

  MEMORY[0x1E12A1580](v57, v58);

  v60 = v149[0];
  v59 = v149[1];
  v149[0] = 0xD000000000000018;
  v149[1] = 0x80000001DCA8C0D0;
  if (v1[OBJC_IVAR___SKEUserSpecificInfo_explicitContentAllowed])
  {
    v61 = 1702195828;
  }

  else
  {
    v61 = 0x65736C6166;
  }

  if (v1[OBJC_IVAR___SKEUserSpecificInfo_explicitContentAllowed])
  {
    v62 = 0xE400000000000000;
  }

  else
  {
    v62 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v61, v62);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v63 = v149[0];
  v64 = v149[1];
  v149[0] = v60;
  v149[1] = v59;

  MEMORY[0x1E12A1580](v63, v64);

  v66 = v149[0];
  v65 = v149[1];
  strcpy(v149, "censorSpeech: ");
  HIBYTE(v149[1]) = -18;
  if (v1[OBJC_IVAR___SKEUserSpecificInfo_censorSpeech])
  {
    v67 = 1702195828;
  }

  else
  {
    v67 = 0x65736C6166;
  }

  if (v1[OBJC_IVAR___SKEUserSpecificInfo_censorSpeech])
  {
    v68 = 0xE400000000000000;
  }

  else
  {
    v68 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v67, v68);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v69 = v149[0];
  v70 = v149[1];
  v149[0] = v66;
  v149[1] = v65;

  MEMORY[0x1E12A1580](v69, v70);

  v72 = v149[0];
  v71 = v149[1];
  v149[0] = 0xD00000000000001BLL;
  v149[1] = 0x80000001DCA8C0F0;
  if (v1[OBJC_IVAR___SKEUserSpecificInfo_wasSpeechProfileUsedByASR])
  {
    v73 = 1702195828;
  }

  else
  {
    v73 = 0x65736C6166;
  }

  if (v1[OBJC_IVAR___SKEUserSpecificInfo_wasSpeechProfileUsedByASR])
  {
    v74 = 0xE400000000000000;
  }

  else
  {
    v74 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v73, v74);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v75 = v149[0];
  v76 = v149[1];
  v149[0] = v72;
  v149[1] = v71;

  MEMORY[0x1E12A1580](v75, v76);

  v77 = v149[0];
  v78 = v149[1];
  v149[0] = 0xD000000000000016;
  v149[1] = 0x80000001DCA8C110;
  if (*&v1[OBJC_IVAR___SKEUserSpecificInfo_companionAssistantId + 8])
  {
    v79 = *&v1[OBJC_IVAR___SKEUserSpecificInfo_companionAssistantId];
    v80 = *&v1[OBJC_IVAR___SKEUserSpecificInfo_companionAssistantId + 8];
  }

  else
  {
    v80 = 0xE300000000000000;
    v79 = 7104878;
  }

  MEMORY[0x1E12A1580](v79, v80);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v81 = v149[0];
  v82 = v149[1];
  v149[0] = v77;
  v149[1] = v78;

  MEMORY[0x1E12A1580](v81, v82);

  v83 = v149[0];
  v84 = v149[1];
  strcpy(v149, "meCard: ");
  BYTE1(v149[1]) = 0;
  WORD1(v149[1]) = 0;
  HIDWORD(v149[1]) = -402653184;
  v144 = *&v1[OBJC_IVAR___SKEUserSpecificInfo_meCard];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8SAPersonCSgMd, &_sSo8SAPersonCSgMR);
  v85 = Optional.debugDescription.getter();
  MEMORY[0x1E12A1580](v85);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v86 = v149[0];
  v87 = v149[1];
  v149[0] = v83;
  v149[1] = v84;

  MEMORY[0x1E12A1580](v86, v87);

  v89 = v149[0];
  v88 = v149[1];
  v149[0] = 0xD000000000000013;
  v149[1] = 0x80000001DCA8C130;
  if (*&v1[OBJC_IVAR___SKEUserSpecificInfo_preferredLanguage + 8])
  {
    v90 = *&v1[OBJC_IVAR___SKEUserSpecificInfo_preferredLanguage];
    v91 = *&v1[OBJC_IVAR___SKEUserSpecificInfo_preferredLanguage + 8];
  }

  else
  {
    v91 = 0xE300000000000000;
    v90 = 7104878;
  }

  MEMORY[0x1E12A1580](v90, v91);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v92 = v149[0];
  v93 = v149[1];
  v149[0] = v89;
  v149[1] = v88;

  MEMORY[0x1E12A1580](v92, v93);

  v95 = v149[0];
  v94 = v149[1];
  strcpy(v149, "countryCode: ");
  HIWORD(v149[1]) = -4864;
  if (*&v1[OBJC_IVAR___SKEUserSpecificInfo_countryCode + 8])
  {
    v96 = *&v1[OBJC_IVAR___SKEUserSpecificInfo_countryCode];
    v97 = *&v1[OBJC_IVAR___SKEUserSpecificInfo_countryCode + 8];
  }

  else
  {
    v97 = 0xE300000000000000;
    v96 = 7104878;
  }

  MEMORY[0x1E12A1580](v96, v97);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v98 = v149[0];
  v99 = v149[1];
  v149[0] = v95;
  v149[1] = v94;

  MEMORY[0x1E12A1580](v98, v99);

  v101 = v149[0];
  v100 = v149[1];
  v149[0] = 0xD000000000000011;
  v149[1] = 0x80000001DCA8C150;
  if (*&v1[OBJC_IVAR___SKEUserSpecificInfo_temperatureUnit + 8])
  {
    v102 = *&v1[OBJC_IVAR___SKEUserSpecificInfo_temperatureUnit];
    v103 = *&v1[OBJC_IVAR___SKEUserSpecificInfo_temperatureUnit + 8];
  }

  else
  {
    v103 = 0xE300000000000000;
    v102 = 7104878;
  }

  MEMORY[0x1E12A1580](v102, v103);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v104 = v149[0];
  v105 = v149[1];
  v149[0] = v101;
  v149[1] = v100;

  MEMORY[0x1E12A1580](v104, v105);

  v107 = v149[0];
  v106 = v149[1];
  v149[0] = 0xD000000000000013;
  v149[1] = 0x80000001DCA8C170;
  if (v1[OBJC_IVAR___SKEUserSpecificInfo_lowScoreThreshold + 4])
  {
    v108 = 0xE300000000000000;
    v109 = 7104878;
  }

  else
  {
    v145 = *&v1[OBJC_IVAR___SKEUserSpecificInfo_lowScoreThreshold];
    lazy protocol witness table accessor for type Int32 and conformance Int32();
    v109 = BinaryInteger.description.getter();
    v108 = v110;
  }

  MEMORY[0x1E12A1580](v109, v108);

  MEMORY[0x1E12A1580](8236, 0xE200000000000000);
  v111 = v149[0];
  v112 = v149[1];
  v149[0] = v107;
  v149[1] = v106;

  MEMORY[0x1E12A1580](v111, v112);

  v114 = v149[0];
  v113 = v149[1];
  strcpy(v149, "personaId: ");
  HIDWORD(v149[1]) = -352321536;
  v146 = *&v1[OBJC_IVAR___SKEUserSpecificInfo_personaId];
  v147 = *&v1[OBJC_IVAR___SKEUserSpecificInfo_personaId + 8];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v115 = String.init<A>(describing:)();
  MEMORY[0x1E12A1580](v115);

  MEMORY[0x1E12A1580](32, 0xE100000000000000);
  v116 = v149[0];
  v117 = v149[1];
  v149[0] = v114;
  v149[1] = v113;

  MEMORY[0x1E12A1580](v116, v117);

  v119 = v149[0];
  v118 = v149[1];
  v120 = v1[OBJC_IVAR___SKEUserSpecificInfo_meetsUserSessionThreshold];
  v149[0] = 0xD00000000000001BLL;
  v149[1] = 0x80000001DCA8C190;
  if (v120)
  {
    v121 = 1702195828;
  }

  else
  {
    v121 = 0x65736C6166;
  }

  if (v120)
  {
    v122 = 0xE400000000000000;
  }

  else
  {
    v122 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v121, v122);

  MEMORY[0x1E12A1580](32, 0xE100000000000000);
  v123 = v149[0];
  v124 = v149[1];
  v149[0] = v119;
  v149[1] = v118;

  MEMORY[0x1E12A1580](v123, v124);

  v126 = v149[0];
  v125 = v149[1];
  v149[0] = 0xD00000000000001FLL;
  v149[1] = 0x80000001DCA8C1B0;
  if (v1[OBJC_IVAR___SKEUserSpecificInfo_meetsPersonalRequestThreshold])
  {
    v127 = 1702195828;
  }

  else
  {
    v127 = 0x65736C6166;
  }

  if (v1[OBJC_IVAR___SKEUserSpecificInfo_meetsPersonalRequestThreshold])
  {
    v128 = 0xE400000000000000;
  }

  else
  {
    v128 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v127, v128);

  MEMORY[0x1E12A1580](32, 0xE100000000000000);
  v129 = v149[0];
  v130 = v149[1];
  v149[0] = v126;
  v149[1] = v125;

  MEMORY[0x1E12A1580](v129, v130);

  v132 = v149[0];
  v131 = v149[1];
  v149[0] = 0xD000000000000016;
  v149[1] = 0x80000001DCA8C1D0;
  if (v1[OBJC_IVAR___SKEUserSpecificInfo_hasActiveUserSession])
  {
    v133 = 1702195828;
  }

  else
  {
    v133 = 0x65736C6166;
  }

  if (v1[OBJC_IVAR___SKEUserSpecificInfo_hasActiveUserSession])
  {
    v134 = 0xE400000000000000;
  }

  else
  {
    v134 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v133, v134);

  MEMORY[0x1E12A1580](32, 0xE100000000000000);
  v135 = v149[0];
  v136 = v149[1];
  v149[0] = v132;
  v149[1] = v131;

  MEMORY[0x1E12A1580](v135, v136);

  v138 = v149[0];
  v137 = v149[1];
  v149[0] = 0xD000000000000012;
  v149[1] = 0x80000001DCA8C1F0;
  type metadata accessor for UserSessionState();
  lazy protocol witness table accessor for type UserSessionState and conformance UserSessionState(&lazy protocol witness table cache variable for type UserSessionState and conformance UserSessionState);
  v139 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1E12A1580](v139);

  MEMORY[0x1E12A1580](32, 0xE100000000000000);
  v140 = v149[0];
  v141 = v149[1];
  v149[0] = v138;
  v149[1] = v137;

  MEMORY[0x1E12A1580](v140, v141);

  MEMORY[0x1E12A1580](125, 0xE100000000000000);

  return v149[0];
}

id UserSpecificInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UserSpecificInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserSpecificInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t lazy protocol witness table accessor for type UserSessionState and conformance UserSessionState(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UserSessionState();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Int32 and conformance Int32()
{
  result = lazy protocol witness table cache variable for type Int32 and conformance Int32;
  if (!lazy protocol witness table cache variable for type Int32 and conformance Int32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int32 and conformance Int32);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UserIdentityClassification and conformance UserIdentityClassification()
{
  result = lazy protocol witness table cache variable for type UserIdentityClassification and conformance UserIdentityClassification;
  if (!lazy protocol witness table cache variable for type UserIdentityClassification and conformance UserIdentityClassification)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserIdentityClassification and conformance UserIdentityClassification);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UserAttribute and conformance UserAttribute()
{
  result = lazy protocol witness table cache variable for type UserAttribute and conformance UserAttribute;
  if (!lazy protocol witness table cache variable for type UserAttribute and conformance UserAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserAttribute and conformance UserAttribute);
  }

  return result;
}

uint64_t type metadata completion function for UserSpecificInfo()
{
  result = type metadata accessor for UserSessionState();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t dispatch thunk of UserSpecificInfo.__allocating_init(userId:userIdentityClassification:rawVoiceIDScore:userAttribute:isFirstInteractionForUser:didSpeakerChange:isOnlyUserInHome:voiceProfilesInFlight:twentyFourHourTimeDisplay:explicitContentAllowed:censorSpeech:wasSpeechProfileUsedByASR:companionAssistantId:meCard:preferredLanguage:countryCode:temperatureUnit:lowScoreThreshold:personaId:meetsUserSessionThreshold:meetsPersonalRequestThreshold:hasActiveUserSession:userSessionState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *(v11 + 272);

  return v13(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t specialized static ViewMetricsLogger.isBlockedDialogID(dialogIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  lazy protocol witness table accessor for type String and conformance String();
  if (StringProtocol.contains<A>(_:)())
  {
    v2 = 1;
  }

  else
  {
    v2 = StringProtocol.contains<A>(_:)();
  }

  return v2 & 1;
}

id specialized static ViewMetricsLogger.getSparseAssistantUtteranceView(assistantUtteranceView:)(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69C7B08]) init];
  v3 = [a1 dialogIdentifier];
  [v2 setDialogIdentifier_];

  v4 = [a1 dialogIdentifier];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = specialized static ViewMetricsLogger.isBlockedDialogID(dialogIdentifier:)(v6, v8);

  if ((v9 & 1) == 0)
  {
    v10 = v2;
    v11 = [a1 speakableText];
    [v10 setSpeakableText_];

    v12 = [a1 text];
    [v10 setText_];
  }

  v13 = v2;
  v14 = [a1 dialog];
  v15 = specialized static DialogMetricsLogger.getSparseDialog(_:)(v14);

  [v13 setDialog_];
  return v13;
}

uint64_t specialized static ViewMetricsLogger.getSparseDisambiguationList(disambiguationList:)(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69C7B58]) init];
  v3 = [a1 items];
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = v3;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAUIListItem, 0x1E69C7B70);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v6 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
LABEL_3:
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_4;
      }

LABEL_13:

LABEL_14:
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAUIListItem, 0x1E69C7B70);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v2 setItems_];

      [v2 setAutoDisambiguationDisabled_];
      v18 = [a1 title];
      [v2 setTitle_];

      v19 = v2;
      v20 = [a1 speakableText];
      [v19 setSpeakableText_];

      return v19;
    }
  }

  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_4:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v21 = v2;
    v22 = a1;
    v9 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1E12A1FE0](v9, v6);
      }

      else
      {
        v10 = *(v6 + 8 * v9 + 32);
      }

      v11 = v10;
      ++v9;
      v12 = [objc_allocWithZone(MEMORY[0x1E69C7B70]) init];
      v13 = [v11 title];
      [v12 setTitle_];

      v14 = v12;
      v15 = [v11 speakableText];
      [v14 setSpeakableText_];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v16 = *(v4 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v7 != v9);

    a1 = v22;
    v2 = v21;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id specialized static ViewMetricsLogger.getSparseCardSnippet(cardSnippet:)(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69C7770]) init];
  v3 = [a1 dialog];
  v4 = specialized static DialogMetricsLogger.getSparseDialog(_:)(v3);

  [v2 setDialog_];
  v5 = [a1 sash];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(MEMORY[0x1E69C7BA8]) init];
    v8 = [v6 applicationBundleIdentifier];
    [v7 setApplicationBundleIdentifier_];

    v9 = [v6 title];
    [v7 setTitle_];

    [v2 setSash_];
  }

  v10 = [a1 cardData];
  if (!v10)
  {
    return v2;
  }

  v11 = v10;
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = objc_allocWithZone(MEMORY[0x1E69CA5E0]);
  outlined copy of Data._Representation(v12, v14);
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v12, v14);
  v17 = [v15 initWithData_];

  if (!v17 || (v18 = [v17 dictionaryRepresentation], v17, !v18))
  {
    outlined consume of Data._Representation(v12, v14);
    return v2;
  }

  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  result = [v2 dictionary];
  if (result)
  {
    v20 = result;
    v21 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v20 __swift_setObject_forKeyedSubscript_];
    outlined consume of Data._Representation(v12, v14);

    swift_unknownObjectRelease();
    return v2;
  }

  __break(1u);
  return result;
}

id specialized static ViewMetricsLogger.getSparseSettingSnippet(snippet:)(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = objc_allocWithZone(MEMORY[0x1E69C7A68]);
    v5 = a1;
    v6 = [v4 init];
    [v6 setToggle_];
    v7 = [v3 value];
    [v6 setValue_];
  }

  else
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = v8;
      v10 = objc_allocWithZone(MEMORY[0x1E69C7A70]);
      v11 = a1;
      v12 = [v10 init];
      v13 = [v9 value];
      [v12 setValue_];

      v6 = v12;
      [v6 setIncrement_];
    }

    else
    {
      v6 = [objc_allocWithZone(MEMORY[0x1E69C7A88]) init];
    }
  }

  v14 = v6;
  v15 = [a1 settingKeys];
  if (v15)
  {
    v16 = v15;
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = *(v17 + 16);
    if (v18)
    {
      v33 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
      v19 = v33;
      v20 = v17 + 32;
      v21 = MEMORY[0x1E69E6158];
      do
      {
        outlined init with copy of Any(v20, v30);
        outlined init with copy of Any(v30, &v31);
        if (swift_dynamicCast())
        {
          v22 = v28;
          v23 = v29;
        }

        else
        {
          v22 = 0;
          v23 = 0xE000000000000000;
        }

        v32 = v21;
        *&v31 = v22;
        *(&v31 + 1) = v23;
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        v33 = v19;
        v25 = *(v19 + 16);
        v24 = *(v19 + 24);
        if (v25 >= v24 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v24 > 1, v25 + 1, 1);
          v19 = v33;
        }

        *(v19 + 16) = v25 + 1;
        outlined init with take of Any(&v31, (v19 + 32 * v25 + 32));
        v20 += 32;
        --v18;
      }

      while (v18);
    }

    else
    {
    }

    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v14 setSettingKeys_];

  return v14;
}

id specialized static ViewMetricsLogger.getSparseIntentGroupSnippet(snippet:)(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69C78C0]) init];
  v3 = [a1 appId];
  [v2 setAppId_];

  v4 = v2;
  v5 = [a1 dialog];
  v6 = specialized static DialogMetricsLogger.getSparseDialog(_:)(v5);

  [v4 setDialog_];
  v7 = [a1 sash];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_allocWithZone(MEMORY[0x1E69C7BA8]) init];
    v10 = [v8 applicationBundleIdentifier];
    [v9 setApplicationBundleIdentifier_];

    v11 = [v8 title];
    [v9 setTitle_];

    [v4 setSash_];
  }

  return v4;
}

uint64_t WaitUniversalActionOverride.__allocating_init(input:aceInputOrigin:isFirstRequestInSession:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  *(v11 + 16) = 7;
  outlined init with take of Input?(a1, v11 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_input);
  *(v11 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_isFirstRequestInSession) = a4;
  v12 = (v11 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_aceInputOrigin);
  *v12 = a2;
  v12[1] = a3;
  return v11;
}

uint64_t WaitUniversalActionOverride.overrideType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t WaitUniversalActionOverride.overrideType.setter(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t WaitUniversalActionOverride.aceInputOrigin.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_aceInputOrigin);
  v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_aceInputOrigin + 8);

  return v1;
}

uint64_t WaitUniversalActionOverride.init(input:aceInputOrigin:isFirstRequestInSession:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 16) = 7;
  outlined init with take of Input?(a1, v4 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_input);
  *(v4 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_isFirstRequestInSession) = a4;
  v8 = (v4 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_aceInputOrigin);
  *v8 = a2;
  v8[1] = a3;
  return v4;
}

SiriKitRuntime::ExecutionOverrideDecision __swiftcall WaitUniversalActionOverride.evaluate()()
{
  v2 = v1;
  v80 = v0;
  v72 = type metadata accessor for Parse();
  v70 = *(v72 - 8);
  v3 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Input();
  v6 = *(v5 - 8);
  v78 = v5;
  v79 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v74 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v81 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v68 - v13;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v15 = *(*(v77 - 8) + 64);
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v68 - v18;
  v20 = type metadata accessor for InputOrigin();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v68 - v26;
  v29 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_aceInputOrigin);
  v28 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_aceInputOrigin + 8);

  v75 = v29;
  InputOrigin.init(aceValue:)();
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
    v73 = 0;
  }

  else
  {
    v69 = v14;
    (*(v21 + 32))(v27, v19, v20);
    (*(v21 + 104))(v24, *MEMORY[0x1E69D3508], v20);
    lazy protocol witness table accessor for type InputOrigin and conformance InputOrigin();
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v84[0] == v82 && v84[1] == v83)
    {
      v73 = 1;
    }

    else
    {
      v73 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v30 = *(v21 + 8);
    v30(v24, v20);
    v30(v27, v20);

    v14 = v69;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Logger.executor);
  swift_retain_n();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v84[0] = v35;
    *v34 = 136315650;
    outlined init with copy of Input?(v2 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_input, v14);
    v36 = String.init<A>(describing:)();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v84);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2080;

    InputOrigin.init(aceValue:)();
    v39 = String.init<A>(describing:)();
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v84);

    *(v34 + 14) = v41;
    *(v34 + 22) = 1024;
    v42 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_isFirstRequestInSession);

    *(v34 + 24) = v42;

    _os_log_impl(&dword_1DC659000, v32, v33, "input: %s,\ninputOrigin: %s,\nisFirstRequestInSession:%{BOOL}d", v34, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v35, -1, -1);
    MEMORY[0x1E12A2F50](v34, -1, -1);
  }

  else
  {
  }

  v43 = v81;
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  v44 = static StopRepromptFeatureFlag.forceEnabled;
  os_unfair_lock_lock((static StopRepromptFeatureFlag.forceEnabled + 20));
  v45 = *(v44 + 16);
  if (v45 == 2)
  {
    v84[3] = &type metadata for StopRepromptFeatureFlag;
    v84[4] = lazy protocol witness table accessor for type StopRepromptFeatureFlag and conformance StopRepromptFeatureFlag();
    LOBYTE(v45) = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v84);
  }

  os_unfair_lock_unlock((v44 + 20));
  if ((v45 & 1) == 0)
  {
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1DC659000, v49, v50, "User may want to Pause but StopRepromptFeatureFlag is disabled.", v51, 2u);
      MEMORY[0x1E12A2F50](v51, -1, -1);
    }

    goto LABEL_23;
  }

  outlined init with copy of Input?(v2 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_input, v43);
  v46 = v78;
  v47 = v79;
  if ((*(v79 + 48))(v43, 1, v78) == 1)
  {
    result = outlined destroy of ReferenceResolutionClientProtocol?(v43, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
LABEL_23:
    v52 = 11;
    goto LABEL_24;
  }

  v53 = v74;
  (*(v47 + 32))(v74, v43, v46);
  if ((Input.inputOrAlternativesHasWantedToPause.getter() & 1) == 0)
  {
    result = (*(v47 + 8))(v53, v46);
    goto LABEL_23;
  }

  if ((*(v2 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_isFirstRequestInSession) & 1) != 0 || (v54 = v74, (v73 & 1) == 0))
  {
    result = (*(v79 + 8))(v74, v46);
    goto LABEL_23;
  }

  v55 = v71;
  Input.parse.getter();
  v56 = v70;
  v57 = v72;
  v58 = (*(v70 + 88))(v55, v72);
  if (v58 != *MEMORY[0x1E69D0120])
  {
    if (v58 == *MEMORY[0x1E69D0160])
    {
      (*(v56 + 96))(v55, v57);
      v59 = *&v55[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR) + 48)];

      v60 = type metadata accessor for NLIntent();
      (*(*(v60 - 8) + 8))(v55, v60);
      goto LABEL_35;
    }

    if (v58 != *MEMORY[0x1E69D0128] && v58 != *MEMORY[0x1E69D0130] && v58 != *MEMORY[0x1E69D0138] && v58 != *MEMORY[0x1E69D0168])
    {
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_1DC659000, v64, v65, "User may want to Pause but doing nothing for this type of input.", v66, 2u);
        v67 = v66;
        v57 = v72;
        MEMORY[0x1E12A2F50](v67, -1, -1);
      }

      (*(v79 + 8))(v54, v78);
      result = (*(v56 + 8))(v55, v57);
      goto LABEL_23;
    }
  }

  (*(v56 + 8))(v55, v57);
LABEL_35:
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&dword_1DC659000, v61, v62, "User may want to Pause. Siri will wait for next input.", v63, 2u);
    MEMORY[0x1E12A2F50](v63, -1, -1);
  }

  result = (*(v79 + 8))(v54, v78);
  v52 = 8;
LABEL_24:
  *v80 = v52;
  return result;
}

uint64_t WaitUniversalActionOverride.deinit()
{
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_input, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_aceInputOrigin + 8);

  return v0;
}

uint64_t WaitUniversalActionOverride.__deallocating_deinit()
{
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_input, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_aceInputOrigin + 8);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ExecutionOverride.evaluate() in conformance WaitUniversalActionOverride()
{
  (*(**v0 + 144))();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t type metadata accessor for WaitUniversalActionOverride()
{
  result = type metadata singleton initialization cache for WaitUniversalActionOverride;
  if (!type metadata singleton initialization cache for WaitUniversalActionOverride)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for WaitUniversalActionOverride()
{
  type metadata accessor for Input?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t SiriXRedirectContext.RedirectReason.NoMatchingTool.searchSucceeded.getter()
{
  return MEMORY[0x1EEE39158]();
}

{
  return MEMORY[0x1EEE3ADE0]();
}

uint64_t type metadata accessor for SiriXRedirectContext.RedirectReason.NoMatchingTool()
{
  return MEMORY[0x1EEE39160]();
}

{
  return MEMORY[0x1EEE3ADE8]();
}

uint64_t SiriXRedirectContext.RedirectReason.UnableToHandleRequest.rewrittenUtterance.getter()
{
  return MEMORY[0x1EEE39168]();
}

{
  return MEMORY[0x1EEE3ADF8]();
}

uint64_t type metadata accessor for SiriXRedirectContext.RedirectReason.UnableToHandleRequest()
{
  return MEMORY[0x1EEE39170]();
}

{
  return MEMORY[0x1EEE3AE00]();
}

uint64_t type metadata accessor for SiriXRedirectContext.RedirectReason()
{
  return MEMORY[0x1EEE39178]();
}

{
  return MEMORY[0x1EEE3AE08]();
}

uint64_t SiriXRedirectContext.reason.getter()
{
  return MEMORY[0x1EEE39180]();
}

{
  return MEMORY[0x1EEE3AE18]();
}

uint64_t type metadata accessor for SiriXRedirectContext()
{
  return MEMORY[0x1EEE39188]();
}

{
  return MEMORY[0x1EEE3AE20]();
}

Swift::String_optional __swiftcall Siri_Nlu_External_UserDialogAct.typeAsString()()
{
  v0 = MEMORY[0x1EEE3B830]();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t type metadata accessor for InputOrigin()
{
  return MEMORY[0x1EEE40F50]();
}

{
  return MEMORY[0x1EEE3AF30]();
}

uint64_t Builder.subscript.setter()
{
  return MEMORY[0x1EEE412F8]();
}

{
  return MEMORY[0x1EEE41308]();
}

uint64_t type metadata accessor for UserSessionState()
{
  return MEMORY[0x1EEE3B198]();
}

{
  return MEMORY[0x1EEE38A78]();
}

uint64_t BinaryDecodingOptions.init()()
{
  return MEMORY[0x1EEE3F530]();
}

{
  return MEMORY[0x1EEE156B8]();
}

uint64_t type metadata accessor for BinaryDecodingOptions()
{
  return MEMORY[0x1EEE3F538]();
}

{
  return MEMORY[0x1EEE156D0]();
}

uint64_t Message.init(serializedData:extensions:partial:options:)()
{
  return MEMORY[0x1EEE3F628]();
}

{
  return MEMORY[0x1EEE158F0]();
}

uint64_t Message.debugDescription.getter()
{
  return MEMORY[0x1EEE3F638]();
}

{
  return MEMORY[0x1EEE15928]();
}

Swift::String __swiftcall Message.textFormatString()()
{
  v0 = MEMORY[0x1EEE3F640]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = MEMORY[0x1EEE68DA0]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return MEMORY[0x1EEE690B8]();
}

{
  return MEMORY[0x1EEE69100]();
}

uint64_t _CocoaArrayWrapper.subscript.getter()
{
  return MEMORY[0x1EEE6AA78]();
}

{
  return MEMORY[0x1EEE6AA80]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x1EEE6ACC8]();
}

{
  return MEMORY[0x1EEE6ACE8]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x1EEE6AE00]();
}

{
  return MEMORY[0x1EEE6AE08]();
}

{
  return MEMORY[0x1EEE6AE10]();
}

{
  return MEMORY[0x1EEE6AE20]();
}