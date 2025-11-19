uint64_t outlined bridged method (ob) of @objc LNActionParameterMetadata.name.getter(void *a1)
{
  v2 = [a1 name];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t _s18SiriSuggestionsKit6SignalCACSHAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_15(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

size_t OUTLINED_FUNCTION_7_0(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

void OUTLINED_FUNCTION_11_1(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

void OUTLINED_FUNCTION_13_1(uint64_t a1@<X8>)
{
  *(v6 + v1) |= v2;
  v7 = (*(v3 + 48) + 16 * a1);
  *v7 = v4;
  v7[1] = v5;
  v8 = *(v3 + 56);
}

uint64_t OUTLINED_FUNCTION_16_1(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_17_1(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_22()
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_28(uint64_t a1@<X8>)
{
  v3 = *(v1 + 56);
  v4 = (*(v1 + 48) + 16 * (a1 | (v2 << 6)));
  v5 = *v4;
  v6 = v4[1];
}

uint64_t OUTLINED_FUNCTION_31()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_34(uint64_t a1@<X8>)
{
  *(v4 + v1) |= v2;
  v7 = (*(v3 + 48) + 16 * a1);
  *v7 = v5;
  v7[1] = v6;
  v8 = *(v3 + 56);
}

uint64_t OUTLINED_FUNCTION_41()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_43(uint64_t a1@<X8>)
{
  v3 = *(v1 + 56);
  v4 = (*(v1 + 48) + 16 * (a1 | (v2 << 6)));
  v5 = *v4;
  v6 = v4[1];
}

uint64_t OUTLINED_FUNCTION_46()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_47()
{

  return swift_slowAlloc();
}

void *_sSD_16uniquingKeysWithSDyxq_Gqd__n_q_q__q_tKXEtKcSTRd__x_q_t7ElementRtd__lufCSS_Say22IntelligenceFlowShared16RetrievedContextVGSaySS_AHtGTt1g5033_sSa25SiriLinkSuggestionsPlugin22ef8Shared16hI46VRszlE11indexByTypeSDySSSayADGGyFA2F_AFtXEfU0_Tf1nc_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, void **))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    OUTLINED_FUNCTION_39_0();
    v7 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v7 = &_swiftEmptyDictionarySingleton;
  }

  v10 = v7;
  a4(a1, 1, &v10);
  v8 = v10;
  if (v4)
  {
  }

  return v8;
}

uint64_t _s25SiriLinkSuggestionsPlugin0B14ClientResolverPAAE18getAppIntentAction4from3for14withParameters18andSalientEntitiesAA0hiJ0VSgSo16LNActionMetadataC_SSSDySS0aC3Kit0aC0O20DisplayRepresentable_pGSDySSSay22IntelligenceFlowShared16RetrievedContextVGGtYaFAA015MetaDataSourcedhiF0C_Tt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return _swift_task_switch(_s25SiriLinkSuggestionsPlugin0B14ClientResolverPAAE18getAppIntentAction4from3for14withParameters18andSalientEntitiesAA0hiJ0VSgSo16LNActionMetadataC_SSSDySS0aC3Kit0aC0O20DisplayRepresentable_pGSDySSSay22IntelligenceFlowShared16RetrievedContextVGGtYaFAA015MetaDataSourcedhiF0C_Tt3g5TY0_, 0, 0);
}

uint64_t _s25SiriLinkSuggestionsPlugin0B14ClientResolverPAAE18getAppIntentAction4from3for14withParameters18andSalientEntitiesAA0hiJ0VSgSo16LNActionMetadataC_SSSDySS0aC3Kit0aC0O20DisplayRepresentable_pGSDySSSay22IntelligenceFlowShared16RetrievedContextVGGtYaFAA015MetaDataSourcedhiF0C_Tt3g5TY0_()
{
  OUTLINED_FUNCTION_15_0();
  v1 = [*(v0 + 16) identifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  *(v0 + 40) = v2;
  *(v0 + 48) = v4;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_32_0(v5);

  return _s25SiriLinkSuggestionsPlugin0B14ClientResolverPAAE13getParameters3for04withH018andSalientEntitiesSDySSAA15ActionParameterVGSgSo16LNActionMetadataC_SDySS0aC3Kit0aC0O20DisplayRepresentable_pGSDySSSay22IntelligenceFlowShared16RetrievedContextVGGtYaKFAA024MetaDataSourcedAppIntentF0C_Tt2g5(v6, v7, v8);
}

uint64_t _s25SiriLinkSuggestionsPlugin0B14ClientResolverPAAE18getAppIntentAction4from3for14withParameters18andSalientEntitiesAA0hiJ0VSgSo16LNActionMetadataC_SSSDySS0aC3Kit0aC0O20DisplayRepresentable_pGSDySSSay22IntelligenceFlowShared16RetrievedContextVGGtYaFAA015MetaDataSourcedhiF0C_Tt3g5TQ1_()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_9_2();
  *v3 = v2;
  v5 = *(v4 + 56);
  *v3 = *v1;
  *(v2 + 64) = v6;
  *(v2 + 72) = v0;

  OUTLINED_FUNCTION_8_0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t _s25SiriLinkSuggestionsPlugin0B14ClientResolverPAAE18getAppIntentAction4from3for14withParameters18andSalientEntitiesAA0hiJ0VSgSo16LNActionMetadataC_SSSDySS0aC3Kit0aC0O20DisplayRepresentable_pGSDySSSay22IntelligenceFlowShared16RetrievedContextVGGtYaFAA015MetaDataSourcedhiF0C_Tt3g5TY2_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46_0();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_22_0();
  a18 = v20;
  if (v20[8])
  {
    if (one-time initialization token for appIntentsSuggestions != -1)
    {
      OUTLINED_FUNCTION_4_0();
    }

    v23 = v20[6];
    v24 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_20_1(v24, static Logger.appIntentsSuggestions);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v28 = v20[5];
      v27 = v20[6];
      v29 = OUTLINED_FUNCTION_46();
      a10 = OUTLINED_FUNCTION_35_0();
      *v29 = 136315394;
      v30 = Dictionary.description.getter();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &a10);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2080;
      *(v29 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v27, &a10);
      OUTLINED_FUNCTION_43_0();
      _os_log_impl(v33, v34, v35, v36, v37, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_13_2();
      OUTLINED_FUNCTION_8_2();
    }

    v38 = v20[8];
    v39 = v20[5];
    v40 = v20[6];
  }

  else
  {
    if (one-time initialization token for appIntentsSuggestions != -1)
    {
      OUTLINED_FUNCTION_4_0();
    }

    v41 = v20[6];
    v42 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_20_1(v42, static Logger.appIntentsSuggestions);

    v43 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    v44 = OUTLINED_FUNCTION_29_0();
    v45 = v20[6];
    if (v44)
    {
      v46 = v20[5];
      v47 = OUTLINED_FUNCTION_25_0();
      v48 = OUTLINED_FUNCTION_47();
      a10 = v48;
      *v47 = 136315138;
      v49 = OUTLINED_FUNCTION_38_0();
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v51);

      *(v47 + 4) = v52;
      OUTLINED_FUNCTION_49(&dword_0, v53, v54, "Not all mandatory parameters for: %s could be determined");
      __swift_destroy_boxed_opaque_existential_1(v48);
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_13_2();
    }

    else
    {
    }

    OUTLINED_FUNCTION_8_0();
  }

  v55 = v20[1];
  OUTLINED_FUNCTION_44_0();

  return v60(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12);
}

uint64_t _s25SiriLinkSuggestionsPlugin0B14ClientResolverPAAE18getAppIntentAction4from3for14withParameters18andSalientEntitiesAA0hiJ0VSgSo16LNActionMetadataC_SSSDySS0aC3Kit0aC0O20DisplayRepresentable_pGSDySSSay22IntelligenceFlowShared16RetrievedContextVGGtYaFAA015MetaDataSourcedhiF0C_Tt3g5TY3_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46_0();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_22_0();
  a18 = v20;
  if (one-time initialization token for appIntentsSuggestions != -1)
  {
    OUTLINED_FUNCTION_4_0();
  }

  v23 = v20[9];
  v24 = v20[6];
  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.appIntentsSuggestions);
  OUTLINED_FUNCTION_14();
  swift_errorRetain();

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  v28 = OUTLINED_FUNCTION_51();
  v29 = v20[9];
  v30 = v20[6];
  if (v28)
  {
    v31 = v20[5];
    v32 = OUTLINED_FUNCTION_46();
    v33 = swift_slowAlloc();
    v34 = OUTLINED_FUNCTION_47();
    a10 = v34;
    *v32 = 138412546;
    swift_errorRetain();
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 4) = v35;
    *v33 = v35;
    *(v32 + 12) = 2080;
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v30, &a10);

    *(v32 + 14) = v36;
    _os_log_impl(&dword_0, v26, v27, "Unable to fetch parameter info: %@ for: %s", v32, 0x16u);
    outlined destroy of CoreSignalTypes?(v33, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11();
    __swift_destroy_boxed_opaque_existential_1(v34);
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_2();
  }

  else
  {
  }

  v37 = v20[1];
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_44_0();

  return v42(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
}

uint64_t _s25SiriLinkSuggestionsPlugin0B14ClientResolverPAAE13getParameters3for04withH018andSalientEntitiesSDySSAA15ActionParameterVGSgSo16LNActionMetadataC_SDySS0aC3Kit0aC0O20DisplayRepresentable_pGSDySSSay22IntelligenceFlowShared16RetrievedContextVGGtYaKFAA024MetaDataSourcedAppIntentF0C_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[40] = a2;
  v3[41] = a3;
  v3[39] = a1;
  return _swift_task_switch(_s25SiriLinkSuggestionsPlugin0B14ClientResolverPAAE13getParameters3for04withH018andSalientEntitiesSDySSAA15ActionParameterVGSgSo16LNActionMetadataC_SDySS0aC3Kit0aC0O20DisplayRepresentable_pGSDySSSay22IntelligenceFlowShared16RetrievedContextVGGtYaKFAA024MetaDataSourcedAppIntentF0C_Tt2g5TY0_, 0, 0);
}

uint64_t _s25SiriLinkSuggestionsPlugin0B14ClientResolverPAAE13getParameters3for04withH018andSalientEntitiesSDySSAA15ActionParameterVGSgSo16LNActionMetadataC_SDySS0aC3Kit0aC0O20DisplayRepresentable_pGSDySSSay22IntelligenceFlowShared16RetrievedContextVGGtYaKFAA024MetaDataSourcedAppIntentF0C_Tt2g5TY0_()
{
  v81 = v0;
  v73 = *(v0 + 320);
  v1 = [*(v0 + 312) parameters];
  type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for LNActionParameterMetadata, LNActionParameterMetadata_ptr);
  OUTLINED_FUNCTION_39_0();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 304;
  *(v3 + 24) = v73;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo25LNActionParameterMetadataCG_AG_18SiriSuggestionsKit0gH0O20DisplayRepresentable_pSgts5NeverOTg5(partial apply for specialized closure #1 in LinkClientResolver.getParameters(for:withParameters:andSalientEntities:), v3, v2);
  v5 = v4;

  v6 = 0;
  v7 = v5 + 32;
  v8 = &_swiftEmptyArrayStorage;
  v71 = v5 + 32;
  v74 = v5;
  v9 = *(v5 + 16);
  for (i = v5 + 32; ; i += 48)
  {
    if (v9 == v6)
    {
      if (v8[2])
      {

        if (one-time initialization token for appIntentsSuggestions != -1)
        {
          goto LABEL_53;
        }

        goto LABEL_15;
      }

      if (!v9)
      {
LABEL_45:

        v64 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_25SiriLinkSuggestionsPlugin15ActionParameterVSaySS_AGtGTt0g5();
        goto LABEL_49;
      }

      v48 = &_swiftEmptyArrayStorage;
      while (1)
      {
        outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(v7, v0 + 80, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
        outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(v0 + 88, v0 + 224, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
        if (*(v0 + 248))
        {
          outlined init with take of SiriSuggestions.DisplayRepresentable((v0 + 224), v0 + 264);
          outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(v0 + 80, v0 + 128, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
          v49 = outlined bridged method (ob) of @objc LNActionParameterMetadata.name.getter(*(v0 + 128));
          if (v50)
          {
            *(v0 + 16) = v49;
            *(v0 + 24) = v50;
            outlined init with take of SiriSuggestions.DisplayRepresentable((v0 + 264), v0 + 32);
            v51 = *(v0 + 96);
            *(v0 + 176) = *(v0 + 80);
            *(v0 + 192) = v51;
            *(v0 + 208) = *(v0 + 112);
            *(v0 + 72) = *(v0 + 176);
            outlined destroy of CoreSignalTypes?(v0 + 184, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1((v0 + 264));
            outlined destroy of CoreSignalTypes?(v0 + 80, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
            *(v0 + 16) = 0u;
            *(v0 + 32) = 0u;
            *(v0 + 48) = 0u;
            *(v0 + 64) = 0u;
          }

          outlined destroy of CoreSignalTypes?(v0 + 136, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
          if (*(v0 + 24))
          {
            v52 = *(v0 + 32);
            v77 = *(v0 + 16);
            v78 = v52;
            v53 = *(v0 + 64);
            v79 = *(v0 + 48);
            v80 = v53;
            v54 = v7;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v61 = v48[2];
              OUTLINED_FUNCTION_28_0();
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v48 = v62;
            }

            v56 = v48[2];
            v55 = v48[3];
            if (v56 >= v55 >> 1)
            {
              OUTLINED_FUNCTION_19_2(v55);
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v48 = v63;
            }

            v48[2] = v56 + 1;
            v57 = &v48[8 * v56];
            v58 = v77;
            v59 = v78;
            v60 = v80;
            v57[4] = v79;
            v57[5] = v60;
            v57[2] = v58;
            v57[3] = v59;
            v7 = v54;
            goto LABEL_42;
          }
        }

        else
        {
          outlined destroy of CoreSignalTypes?(v0 + 80, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
          *(v0 + 16) = 0u;
          *(v0 + 32) = 0u;
          *(v0 + 48) = 0u;
          *(v0 + 64) = 0u;
        }

        outlined destroy of CoreSignalTypes?(v0 + 16, &_sSS_25SiriLinkSuggestionsPlugin15ActionParameterVtSgMd, &_sSS_25SiriLinkSuggestionsPlugin15ActionParameterVtSgMR);
LABEL_42:
        v7 += 48;
        if (!--v9)
        {
          goto LABEL_45;
        }
      }
    }

    if (v6 >= *(v74 + 16))
    {
      break;
    }

    outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(i, v0 + 16, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
    v11 = OUTLINED_FUNCTION_36();
    outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(v11, v12, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
    v13 = *(v0 + 80);
    v14 = [v13 isOptional];

    outlined destroy of CoreSignalTypes?(v0 + 88, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
    if ((v14 & 1) != 0 || *(v0 + 48))
    {
      outlined destroy of CoreSignalTypes?(v0 + 16, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
    }

    else
    {
      v15 = *(v0 + 32);
      v77 = *(v0 + 16);
      v78 = v15;
      v79 = *(v0 + 48);
      v76 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1);
        v8 = v76;
      }

      v17 = v8[2];
      v16 = v8[3];
      if (v17 >= v16 >> 1)
      {
        v21 = OUTLINED_FUNCTION_19_2(v16);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21, v17 + 1, 1);
        v8 = v76;
      }

      v8[2] = v17 + 1;
      v18 = &v8[6 * v17];
      v19 = v77;
      v20 = v79;
      *(v18 + 3) = v78;
      *(v18 + 4) = v20;
      *(v18 + 2) = v19;
      v7 = v71;
    }

    ++v6;
  }

  __break(1u);
LABEL_53:
  OUTLINED_FUNCTION_4_0();
LABEL_15:
  v22 = *(v0 + 312);
  v23 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_20_1(v23, static Logger.appIntentsSuggestions);
  v24 = v22;

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = *(v0 + 312);
    v28 = OUTLINED_FUNCTION_46();
    v75 = OUTLINED_FUNCTION_35_0();
    *v28 = 136315394;
    v29 = [v27 identifier];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v75);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2080;
    v34 = v8[2];
    if (v34)
    {
      v70 = v28;
      v72 = v25;
      v76 = &_swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34, 0);
      v35 = (v8 + 4);
      v36 = v76;
      do
      {
        outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(v35, v0 + 16, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
        *&v77 = 0;
        *(&v77 + 1) = 0xE000000000000000;
        v37 = OUTLINED_FUNCTION_36();
        outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(v37, v38, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
        v39 = outlined bridged method (ob) of @objc LNActionParameterMetadata.name.getter(*(v0 + 80));
        if (v40)
        {
          v41 = v39;
        }

        else
        {
          v41 = 0x656D616E5F6F6E3CLL;
        }

        if (v40)
        {
          v42 = v40;
        }

        else
        {
          v42 = 0xE90000000000003ELL;
        }

        outlined destroy of CoreSignalTypes?(v0 + 88, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
        v43._countAndFlagsBits = v41;
        v43._object = v42;
        String.append(_:)(v43);

        v44 = v77;
        outlined destroy of CoreSignalTypes?(v0 + 16, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
        v76 = v36;
        v46 = v36[2];
        v45 = v36[3];
        if (v46 >= v45 >> 1)
        {
          v47 = OUTLINED_FUNCTION_19_2(v45);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v47, v46 + 1, 1);
          v36 = v76;
        }

        v36[2] = v46 + 1;
        *&v36[2 * v46 + 4] = v44;
        v35 += 48;
        --v34;
      }

      while (v34);

      v25 = v72;
      v28 = v70;
    }

    else
    {

      v36 = &_swiftEmptyArrayStorage;
    }

    *(v0 + 16) = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v65 = BidirectionalCollection<>.joined(separator:)();
    v67 = v66;

    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, &v75);
    OUTLINED_FUNCTION_14();

    *(v28 + 14) = v65;
    _os_log_impl(&dword_0, v25, v26, "We have not been able to set all mandatory parameters for action %s. Missing parameters:\n %s", v28, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
  }

  else
  {
  }

  v64 = 0;
LABEL_49:
  v68 = *(v0 + 8);

  return v68(v64);
}

void _s25SiriLinkSuggestionsPlugin0B14ClientResolverPAAE12getParameter33_6476B7DACEC880C5FEE6E902F92AE474LL3for14withParameters18andSalientEntities0aC3Kit0aC0O20DisplayRepresentable_pSgSo08LNActionH8MetadataC_SDySSAkL_pGSDySSSay22IntelligenceFlowShared16RetrievedContextVGGtFAA024MetaDataSourcedAppIntentF0C_Tt3g5(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, NSObject *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22IntelligenceFlowShared16RetrievedContextVSgMd, &_s22IntelligenceFlowShared16RetrievedContextVSgMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v81 = &v70 - v10;
  v11 = type metadata accessor for RetrievedContext();
  v80 = *(v11 - 8);
  v12 = *(v80 + 64);
  v13 = __chkstk_darwin(v11);
  v78 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v70 - v16;
  __chkstk_darwin(v15);
  v19 = &v70 - v18;
  v20 = [a1 name];
  v79 = v17;
  if (v20)
  {
    v21 = v20;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  v82 = [a1 valueType];
  if (!v24)
  {
    if (one-time initialization token for appIntentsSuggestions != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.appIntentsSuggestions);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_23;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_0, v27, v28, "Unknown parameter name", v29, 2u);
    goto LABEL_21;
  }

  v25 = v22;
  specialized Dictionary.subscript.getter(v22, v24, a2, &v83);
  if (v84)
  {

    outlined init with take of SiriSuggestions.DisplayRepresentable(&v83, v85);
    outlined init with take of SiriSuggestions.DisplayRepresentable(v85, a4);
    return;
  }

  outlined destroy of CoreSignalTypes?(&v83, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
  v30 = [v82 description];
  v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  if (one-time initialization token for appIntentsSuggestions != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  v34 = __swift_project_value_buffer(v33, static Logger.appIntentsSuggestions);

  v76 = v34;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();

  LODWORD(v73) = v36;
  v75 = v35;
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v74 = v32;
    v38 = v37;
    v71 = swift_slowAlloc();
    *&v85[0] = v71;
    *v38 = 136315650;
    *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v85);
    v72 = v11;
    *(v38 + 12) = 2080;
    v39 = v77;
    *(v38 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v74, v85);
    *(v38 + 22) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay22IntelligenceFlowShared16RetrievedContextVGMd, &_sSay22IntelligenceFlowShared16RetrievedContextVGMR);
    v40 = Dictionary.Keys.description.getter();
    v42 = a4;
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v85);
    v11 = v72;

    *(v38 + 24) = v43;
    a4 = v42;
    v25 = v22;
    v44 = v75;
    _os_log_impl(&dword_0, v75, v73, "determining parater - %s paramType - %s from andSalientEntities Keys - %s", v38, 0x20u);
    swift_arrayDestroy();

    v32 = v74;
  }

  else
  {

    v39 = v77;
  }

  v45 = specialized Dictionary.subscript.getter(v39, v32, a3);
  if (!v45)
  {
LABEL_19:

    v27 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v27, v47))
    {

      goto LABEL_23;
    }

    v48 = swift_slowAlloc();
    *&v85[0] = swift_slowAlloc();
    *v48 = 136315394;
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v24, v85);

    *(v48 + 4) = v49;
    *(v48 + 12) = 2080;
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v32, v85);

    *(v48 + 14) = v50;
    _os_log_impl(&dword_0, v27, v47, "No parameter available to set for %s, of type: %s", v48, 0x16u);
    swift_arrayDestroy();

LABEL_21:

LABEL_23:

    a4[4].isa = 0;
    *&a4->isa = 0u;
    *&a4[2].isa = 0u;
    return;
  }

  *&v85[0] = v45;
  specialized MutableCollection<>.shuffle<A>(using:)();
  v46 = v81;
  specialized Collection.first.getter(*&v85[0], v81);

  if (__swift_getEnumTagSinglePayload(v46, 1, v11) == 1)
  {
    outlined destroy of CoreSignalTypes?(v46, &_s22IntelligenceFlowShared16RetrievedContextVSgMd, &_s22IntelligenceFlowShared16RetrievedContextVSgMR);
    goto LABEL_19;
  }

  v51 = *(v80 + 32);
  v52 = v80;
  v74 = v80 + 32;
  v75 = a4;
  v73 = v51;
  v51(v19, v46, v11);
  v53 = *(v52 + 16);
  v54 = v79;
  v81 = v19;
  v53(v79);

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    LODWORD(v72) = v56;
    v58 = v52;
    v59 = v57;
    v76 = swift_slowAlloc();
    *&v85[0] = v76;
    *v59 = 136315650;
    v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v24, v85);
    v61 = v11;
    v62 = v60;

    *(v59 + 4) = v62;
    *(v59 + 12) = 2080;
    v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v32, v85);

    *(v59 + 14) = v63;
    *(v59 + 22) = 2080;
    (v53)(v78, v54, v61);
    v64 = String.init<A>(describing:)();
    v66 = v65;
    (*(v58 + 8))(v54, v61);
    v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, v85);

    *(v59 + 24) = v67;
    v11 = v61;
    _os_log_impl(&dword_0, v55, v72, "Setting parameter %s, of type: %s to %s using salient entities", v59, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v52 + 8))(v54, v11);
  }

  v68 = v75;
  v75[3].isa = v11;
  v68[4] = lazy protocol witness table accessor for type MetaDataSourcedAppIntentResolver and conformance MetaDataSourcedAppIntentResolver(&lazy protocol witness table cache variable for type RetrievedContext and conformance RetrievedContext, 255, &type metadata accessor for RetrievedContext);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v68);
  v73(boxed_opaque_existential_1, v81, v11);
}

uint64_t MetaDataSourcedAppIntentResolver.resolverTypeOperand.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t MetaDataSourcedAppIntentResolver.__allocating_init(linkClient:toolClient:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  MetaDataSourcedAppIntentResolver.init(linkClient:toolClient:)(a1, a2);
  return v4;
}

uint64_t MetaDataSourcedAppIntentResolver.init(linkClient:toolClient:)(__int128 *a1, __int128 *a2)
{
  *(v2 + 96) = 0xD000000000000017;
  *(v2 + 104) = 0x8000000000042180;
  outlined init with take of SiriSuggestions.DisplayRepresentable(a1, v2 + 16);
  outlined init with take of SiriSuggestions.DisplayRepresentable(a2, v2 + 56);
  return v2;
}

BOOL static MetaDataSourcedAppIntentResolver.disruptsUserFlow(appIntentDetails:environmentSnapshot:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  valid = EnvironmentSnapshot.getValidOpenAppIds()();
  v11[0] = a1;
  v11[1] = a2;
  v10[2] = v11;
  LOBYTE(a2) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v10, valid);

  return (a2 & 1) == 0 && ([a3 openAppWhenRun] & 1) != 0;
}

uint64_t MetaDataSourcedAppIntentResolver.getSuggestionDialogFromTool(toolId:parametersToolValue:siriLocale:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = OUTLINED_FUNCTION_4_2();
  return _swift_task_switch(v5, v6, v7);
}

uint64_t MetaDataSourcedAppIntentResolver.getSuggestionDialogFromTool(toolId:parametersToolValue:siriLocale:)()
{
  OUTLINED_FUNCTION_22_0();
  v26 = v0;
  if (one-time initialization token for appIntentsSuggestions != -1)
  {
    OUTLINED_FUNCTION_4_0();
  }

  v2 = v0[3];
  v1 = v0[4];
  v3 = type metadata accessor for Logger();
  v0[6] = OUTLINED_FUNCTION_20_1(v3, static Logger.appIntentsSuggestions);

  v4 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();

  if (OUTLINED_FUNCTION_29_0())
  {
    v6 = v0[3];
    v5 = v0[4];
    v7 = v0[2];
    v8 = OUTLINED_FUNCTION_46();
    v25 = OUTLINED_FUNCTION_35_0();
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v25);
    *(v8 + 12) = 2080;
    type metadata accessor for TypedValue();
    v9 = Dictionary.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v25);

    *(v8 + 14) = v11;
    OUTLINED_FUNCTION_2_1();
    _os_log_impl(v12, v13, v14, v15, v16, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_6_2();
  }

  v17 = v0[5];
  v18 = v17[11];
  __swift_project_boxed_opaque_existential_1(v17 + 7, v17[10]);
  v19 = *(v18 + 8);
  v24 = (v19 + *v19);
  v20 = v19[1];
  v21 = swift_task_alloc();
  v0[7] = v21;
  *v21 = v0;
  v22 = OUTLINED_FUNCTION_32_0(v21);

  return v24(v22);
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_9_2();
  *v3 = v2;
  v5 = *(v4 + 56);
  *v3 = *v1;
  v2[8] = v6;
  v2[9] = v7;
  v2[10] = v8;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_8_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_15_0();
  v1 = *(v0 + 48);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_34_0(v3))
  {
    *OUTLINED_FUNCTION_52() = 0;
    OUTLINED_FUNCTION_2_1();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_6_2();
  }

  OUTLINED_FUNCTION_40_0();

  return v9(0, 0);
}

uint64_t MetaDataSourcedAppIntentResolver.getSuggestionDialogFromTool(toolId:parametersToolValue:siriLocale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46_0();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_22_0();
  a18 = v20;
  v23 = v20[9];
  if (v23)
  {
    v24 = v20[10];
    v25 = v20[6];
    v26 = v20[9];

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    if (OUTLINED_FUNCTION_51())
    {
      v29 = v20[8];
      v30 = OUTLINED_FUNCTION_46();
      a10 = OUTLINED_FUNCTION_35_0();
      *v30 = 136315394;

      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v23, &a10);

      *(v30 + 4) = v31;
      *(v30 + 12) = 2080;

      v32 = Dictionary.description.getter();
      v34 = v33;

      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &a10);

      *(v30 + 14) = v35;
      _os_log_impl(&dword_0, v27, v28, "tool parameter summary - phrase template - %s and params - %s", v30, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_13_2();
    }

    static PhraseUtils.getHydratedPhrase(phraseTemplate:parameters:)(v20[8], v23, v24);
  }

  else
  {
    v36 = v20[6];
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_34_0(v38))
    {
      *OUTLINED_FUNCTION_52() = 0;
      OUTLINED_FUNCTION_2_1();
      _os_log_impl(v39, v40, v41, v42, v43, 2u);
      OUTLINED_FUNCTION_6_2();
    }
  }

  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_44_0();

  return v47(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12);
}

void MetaDataSourcedAppIntentResolver.getSuggestionDialogFromAssistantIntentPhrase(appIntentAction:details:siriLocale:)()
{
  OUTLINED_FUNCTION_50();
  v77 = v0;
  v78 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for Locale();
  v11 = OUTLINED_FUNCTION_14_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_5_2();
  v18 = v17 - v16;
  v19 = [v5 identifier];
  v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (one-time initialization token for appIntentsSuggestions != -1)
  {
LABEL_39:
    OUTLINED_FUNCTION_4_0();
  }

  v22 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_20_1(v22, static Logger.appIntentsSuggestions);
  (*(v13 + 16))(v18, v3, v10);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  LODWORD(v75) = v24;
  v25 = OUTLINED_FUNCTION_51();
  v67 = v9;
  v68 = v3;
  if (v25)
  {
    v26 = OUTLINED_FUNCTION_47();
    v72 = swift_slowAlloc();
    v79 = v72;
    *v26 = 136315650;
    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v7, &v79);
    *(v26 + 12) = 2080;
    v71 = v10;
    v27 = v76;
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v21, &v79);
    v74 = v7;
    *(v26 + 14) = v28;
    *(v26 + 22) = 2080;
    __chkstk_darwin(v28);
    *(&v65 - 2) = v18;
    v9 = specialized _NativeDictionary.mapValues<A>(_:)(partial apply for closure #1 in implicit closure #3 in MetaDataSourcedAppIntentResolver.getSuggestionDialogFromAssistantIntentPhrase(appIntentAction:details:siriLocale:), (&v65 - 4), v9);
    v73 = 0;
    v29 = v27;
    v30 = Dictionary.description.getter();
    v32 = v31;

    v33 = *(v13 + 8);
    v13 += 8;
    v33(v18, v71);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v79);
    v7 = v74;

    *(v26 + 24) = v34;
    OUTLINED_FUNCTION_43_0();
    _os_log_impl(v35, v36, v37, v38, v39, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_8_2();
  }

  else
  {

    v40 = *(v13 + 8);
    v13 += 8;
    v40(v18, v10);
    v73 = 0;
    v29 = v76;
  }

  v3 = v77[5];
  v10 = v77[6];
  __swift_project_boxed_opaque_existential_1(v77 + 2, v3);
  v7 = (*(v10 + 64))(v78, v7, v29, v21, v3, v10);

  v72 = *(v7 + 16);
  if (!v72)
  {
LABEL_34:

    OUTLINED_FUNCTION_48();
    return;
  }

  v66 = 0;
  v21 = 0;
  v70 = 0;
  v71 = v7 + 32;
  v75 = -1;
  v69 = v7;
  while (1)
  {
    if (v21 >= *(v7 + 16))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v41 = (v71 + 16 * v21);
    v18 = *v41;
    v9 = v41[1];
    v42 = one-time initialization token for variableNameRegex;

    if (v42 != -1)
    {
      swift_once();
    }

    v43 = static PhraseUtils.variableNameRegex;
    v44 = String._bridgeToObjectiveC()();
    v45 = (v9 & 0x1000000000000000) != 0 ? String.UTF16View._foreignCount()() : String.UTF16View._nativeGetOffset(for:)();
    v46 = [v43 matchesInString:v44 options:0 range:{0, v45}];

    type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for NSTextCheckingResult, NSTextCheckingResult_ptr);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v10 >> 62)
    {
      break;
    }

    v3 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
    if (v3)
    {
      goto LABEL_14;
    }

LABEL_28:

    v47 = &_swiftEmptyArrayStorage;
LABEL_29:
    v59 = v47[2];

    if (v75 >= v59)
    {
      goto LABEL_32;
    }

    __chkstk_darwin(v60);
    v61 = v67;
    *(&v65 - 2) = v68;
    v62 = v73;
    v10 = specialized Dictionary.compactMapValues<A>(_:)(partial apply for closure #1 in static PhraseUtils.getHydratedPhrase(phraseTemplate:parameters:locale:), (&v65 - 4), v61);
    v73 = v62;
    v3 = static PhraseUtils.getHydratedPhrase(phraseTemplate:parameters:)(v18, v9, v10);
    v64 = v63;

    if (v64)
    {
      v9 = v70;
      v75 = v59;
      v66 = v3;
      v70 = v64;
LABEL_32:
    }

    if (++v21 == v72)
    {
      goto LABEL_34;
    }
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_28;
  }

LABEL_14:
  v79 = &_swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v74 = v21;
  v7 = 0;
  v47 = v79;
  v77 = v10;
  v78 = v10 & 0xC000000000000001;
  v76 = v10 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    v21 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v78)
    {
      v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v76 + 16))
      {
        goto LABEL_36;
      }

      v48 = *(v10 + 8 * v7 + 32);
    }

    v49 = v48;
    [v48 rangeAtIndex:1];
    Range<>.init(_:in:)();
    if (v50)
    {
      break;
    }

    v51 = v18;
    String.subscript.getter();
    v52 = static String._fromSubstring(_:)();
    v54 = v53;

    v79 = v47;
    v56 = v47[2];
    v55 = v47[3];
    v13 = v56 + 1;
    if (v56 >= v55 >> 1)
    {
      v58 = OUTLINED_FUNCTION_19_2(v55);
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v58, v56 + 1, 1);
      v47 = v79;
    }

    v47[2] = v13;
    v57 = &v47[2 * v56];
    *(v57 + 4) = v52;
    *(v57 + 5) = v54;
    ++v7;
    v10 = v77;
    v18 = v51;
    if (v21 == v3)
    {

      v7 = v69;
      v21 = v74;
      goto LABEL_29;
    }
  }

  __break(1u);
}

uint64_t closure #1 in implicit closure #3 in MetaDataSourcedAppIntentResolver.getSuggestionDialogFromAssistantIntentPhrase(appIntentAction:details:siriLocale:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(a1, v7, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
  if (!v8)
  {
    outlined destroy of CoreSignalTypes?(v7, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
LABEL_5:

    v5 = 0xE400000000000000;
    v3 = 1819047278;
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(v7, v8);
  v3 = dispatch thunk of SiriSuggestions.DisplayRepresentable.getDisplay(for:)();
  v5 = v4;
  result = __swift_destroy_boxed_opaque_existential_1(v7);
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_6:
  *a2 = v3;
  a2[1] = v5;
  return result;
}

uint64_t MetaDataSourcedAppIntentResolver.getSuggestionDialog(appIntentAction:details:siriLocale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = OUTLINED_FUNCTION_4_2();
  return _swift_task_switch(v9, v10, v11);
}

uint64_t MetaDataSourcedAppIntentResolver.getSuggestionDialog(appIntentAction:details:siriLocale:)()
{
  v39 = v0;
  v1 = specialized Dictionary.compactMapValues<A>(_:)(v0[4]);
  v0[10] = v1;
  if (one-time initialization token for appIntentsSuggestions != -1)
  {
    OUTLINED_FUNCTION_4_0();
  }

  v3 = v0[3];
  v2 = v0[4];
  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.appIntentsSuggestions);
  OUTLINED_FUNCTION_14();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v36 = v0[4];
    v7 = OUTLINED_FUNCTION_46();
    v37 = OUTLINED_FUNCTION_35_0();
    *v7 = 136315394;
    type metadata accessor for TypedValue();
    v8 = Dictionary.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v37);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = Dictionary.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v37);

    *(v7 + 14) = v13;
    OUTLINED_FUNCTION_43_0();
    _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_8_2();
  }

  if (*(v1 + 16) == *(v0[4] + 16))
  {
    v19 = v0[6];
    v21 = v0[2];
    v20 = v0[3];
    v37 = v0[5];
    v38 = v19;

    v22._countAndFlagsBits = 46;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    v23._countAndFlagsBits = OUTLINED_FUNCTION_38_0();
    String.append(_:)(v23);
    v0[11] = v38;
    v24 = swift_task_alloc();
    v0[12] = v24;
    *v24 = v0;
    v24[1] = MetaDataSourcedAppIntentResolver.getSuggestionDialog(appIntentAction:details:siriLocale:);
    v25 = v0[9];
    v26 = OUTLINED_FUNCTION_38_0();

    return MetaDataSourcedAppIntentResolver.getSuggestionDialogFromTool(toolId:parametersToolValue:siriLocale:)(v26, v27, v1);
  }

  else
  {
    v30 = v0[8];
    v29 = v0[9];
    v32 = v0[6];
    v31 = v0[7];
    v33 = v0[5];
    v34 = v0[3];

    MetaDataSourcedAppIntentResolver.getSuggestionDialogFromAssistantIntentPhrase(appIntentAction:details:siriLocale:)();
    OUTLINED_FUNCTION_40_0();

    return v35();
  }
}

{
  OUTLINED_FUNCTION_15_0();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_13();
  v6 = v5[12];
  v7 = v5[11];
  v8 = v5[10];
  v9 = *v0;
  OUTLINED_FUNCTION_7();
  *v10 = v9;

  OUTLINED_FUNCTION_40_0();

  return v11(v4, v2);
}

uint64_t specialized Dictionary.compactMapValues<A>(_:)(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v46 = a2;
  v5 = &_swiftEmptyDictionarySingleton;
  v45 = &_swiftEmptyDictionarySingleton;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v32 = v4;
  while (1)
  {
    if (!v9)
    {
      while (1)
      {
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v13 >= v10)
        {
          goto LABEL_26;
        }

        v9 = *(v6 + 8 * v13);
        ++v12;
        if (v9)
        {
          v12 = v13;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_28;
    }

LABEL_10:
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    v15 = (*(v4 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    outlined init with copy of ActionParameter(*(v4 + 56) + 48 * v14, v44);
    *&v43 = v17;
    *(&v43 + 1) = v16;
    v39 = v43;
    v40 = v44[0];
    v41 = v44[1];
    v42 = v44[2];

    a1(&v35, &v40);
    if (v3)
    {
      break;
    }

    v9 &= v9 - 1;
    v18 = v36;
    if (v36)
    {
      v33 = v35;
      v38[1] = v41;
      v38[2] = v42;
      v37 = v39;
      v38[0] = v40;
      v19 = v5[2];
      if (v5[3] <= v19)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19 + 1);
        v5 = v45;
      }

      v20 = v37;
      v21 = v5[5];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = (v5 + 8);
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~v5[(v24 >> 6) + 8]) == 0)
      {
        v27 = 0;
        v28 = (63 - v23) >> 6;
        while (++v25 != v28 || (v27 & 1) == 0)
        {
          v29 = v25 == v28;
          if (v25 == v28)
          {
            v25 = 0;
          }

          v27 |= v29;
          v30 = *&v22[8 * v25];
          if (v30 != -1)
          {
            v26 = __clz(__rbit64(~v30)) + (v25 << 6);
            goto LABEL_24;
          }
        }

LABEL_28:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v24) & ~v5[(v24 >> 6) + 8])) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
      *&v22[(v26 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v26;
      *(v5[6] + 16 * v26) = v20;
      v31 = (v5[7] + 16 * v26);
      *v31 = v33;
      v31[1] = v18;
      ++v5[2];
      result = outlined destroy of ActionParameter(v38);
      v4 = v32;
    }

    else
    {
      result = outlined destroy of CoreSignalTypes?(&v39, &_sSS3key_25SiriLinkSuggestionsPlugin15ActionParameterV5valuetMd, &_sSS3key_25SiriLinkSuggestionsPlugin15ActionParameterV5valuetMR);
    }
  }

  outlined destroy of CoreSignalTypes?(&v39, &_sSS3key_25SiriLinkSuggestionsPlugin15ActionParameterV5valuetMd, &_sSS3key_25SiriLinkSuggestionsPlugin15ActionParameterV5valuetMR);

LABEL_26:

  return v5;
}

uint64_t specialized Dictionary.compactMapValues<A>(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit10TypedValueOSgMd, &_s7ToolKit10TypedValueOSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v48 - v4;
  v68 = type metadata accessor for TypedValue();
  v6 = *(*(v68 - 8) + 64);
  v7 = __chkstk_darwin(v68);
  v55 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v51 = &v48 - v10;
  v56 = &_swiftEmptyDictionarySingleton;
  v57 = a1;
  v67 = &_swiftEmptyDictionarySingleton;
  v11 = a1 + 64;
  v12 = 1 << *(a1 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(a1 + 64);
  v15 = (v12 + 63) >> 6;
  v49 = v9;
  v54 = (v9 + 32);

  v17 = 0;
  v50 = v5;
  while (v14)
  {
LABEL_10:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = v19 | (v17 << 6);
    v21 = (*(v57 + 48) + 16 * v20);
    v23 = *v21;
    v22 = v21[1];
    outlined init with copy of ActionParameter(*(v57 + 56) + 48 * v20, v66);
    *&v65 = v23;
    *(&v65 + 1) = v22;
    v61 = v65;
    v62 = v66[0];
    v63 = v66[1];
    v64 = v66[2];
    outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(&v62, v58, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
    v24 = v58[3];

    if (v24)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pMR);
      v25 = v68;
      v26 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v5, v26 ^ 1u, 1, v25);
      if (__swift_getEnumTagSinglePayload(v5, 1, v25) == 1)
      {
        goto LABEL_17;
      }

      v27 = *v54;
      v28 = v5;
      v29 = v51;
      v30 = v68;
      (*v54)(v51, v28, v68);
      v59 = v61;
      v60[0] = v62;
      v60[1] = v63;
      v60[2] = v64;
      v53 = v27;
      v27(v55, v29, v30);
      v31 = v56[2];
      if (v56[3] <= v31)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v31 + 1, 1);
      }

      v32 = v67;
      v33 = v59;
      v34 = v67[5];
      Hasher.init(_seed:)();
      v52 = *(&v33 + 1);
      String.hash(into:)();
      result = Hasher._finalize()();
      v35 = v32 + 8;
      v56 = v32;
      v36 = -1 << *(v32 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      v5 = v50;
      if (((-1 << v37) & ~v32[(v37 >> 6) + 8]) == 0)
      {
        v40 = 0;
        v41 = (63 - v36) >> 6;
        while (++v38 != v41 || (v40 & 1) == 0)
        {
          v42 = v38 == v41;
          if (v38 == v41)
          {
            v38 = 0;
          }

          v40 |= v42;
          v43 = v35[v38];
          if (v43 != -1)
          {
            v39 = __clz(__rbit64(~v43)) + (v38 << 6);
            goto LABEL_25;
          }
        }

        goto LABEL_28;
      }

      v39 = __clz(__rbit64((-1 << v37) & ~v32[(v37 >> 6) + 8])) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v35 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
      v44 = v55;
      v45 = v56;
      v46 = (v56[6] + 16 * v39);
      v47 = v52;
      *v46 = v33;
      v46[1] = v47;
      v53((v45[7] + *(v49 + 72) * v39), v44, v68);
      ++v45[2];
      result = outlined destroy of ActionParameter(v60);
    }

    else
    {
      outlined destroy of CoreSignalTypes?(v58, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
      __swift_storeEnumTagSinglePayload(v5, 1, 1, v68);
LABEL_17:
      outlined destroy of CoreSignalTypes?(&v61, &_sSS3key_25SiriLinkSuggestionsPlugin15ActionParameterV5valuetMd, &_sSS3key_25SiriLinkSuggestionsPlugin15ActionParameterV5valuetMR);
      result = outlined destroy of CoreSignalTypes?(v5, &_s7ToolKit10TypedValueOSgMd, &_s7ToolKit10TypedValueOSgMR);
    }
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v15)
    {

      return v56;
    }

    v14 = *(v11 + 8 * v18);
    ++v17;
    if (v14)
    {
      v17 = v18;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t MetaDataSourcedAppIntentResolver.resolveParameter(parameter:suggestion:interaction:environment:)()
{
  OUTLINED_FUNCTION_8();
  v1[18] = v2;
  v1[19] = v0;
  v1[17] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit16TimeoutBehaviourVy0a4LinkB6Plugin16AppIntentDetailsVypGSgMd, &_s18SiriSuggestionsKit16TimeoutBehaviourVy0a4LinkB6Plugin16AppIntentDetailsVypGSgMR) - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit12AppIdDetailsVSgMd, &_s18SiriSuggestionsKit12AppIdDetailsVSgMR) - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4_2();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_15_0();
  v1 = v0[17];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_14();
  v3 = dispatch thunk of CandidateSuggestion.context.getter();
  v5 = v4;
  v0[22] = v3;
  v0[23] = v4;
  v0[24] = swift_getObjectType();
  v6 = *(*(v5 + 8) + 8);
  dispatch thunk of Actor.unownedExecutor.getter();
  v7 = OUTLINED_FUNCTION_26_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_8();
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  Context.getAppId()();
  swift_unknownObjectRelease();
  v5 = OUTLINED_FUNCTION_4_2();

  return _swift_task_switch(v5, v6, v7);
}

{
  v101 = v0;
  v1 = v0;
  v2 = *(v0 + 168);
  v3 = type metadata accessor for AppIdDetails();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    outlined destroy of CoreSignalTypes?(v2, &_s18SiriSuggestionsKit12AppIdDetailsVSgMd, &_s18SiriSuggestionsKit12AppIdDetailsVSgMR);
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = AppIdDetails.appId.getter();
    v5 = v6;
    OUTLINED_FUNCTION_15(v3);
    (*(v7 + 8))(v2, v3);
  }

  *(v0 + 200) = v5;
  if (one-time initialization token for appIntentsSuggestions != -1)
  {
LABEL_41:
    OUTLINED_FUNCTION_4_0();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.appIntentsSuggestions);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_47();
    v12 = swift_slowAlloc();
    v99 = v12;
    *v11 = 136315650;
    v19 = OUTLINED_FUNCTION_47_0(v12, v13, v14, v15, v16, v17, v18);
    *(v11 + 4) = v19;
    *(v11 + 12) = 2080;
    *(v11 + 14) = OUTLINED_FUNCTION_47_0(v19, v20, v21, v22, v23, v24, v25);
    *(v11 + 22) = 2080;
    v26 = Array.description.getter();
    v28 = v1;
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v99);

    *(v11 + 24) = v29;
    v1 = v28;
    _os_log_impl(&dword_0, v9, v10, "MetaDataSourcedAppIntentResolver resolveParameter called with - appIdToUse - %s, intentIdentifierToUse - %s, parameters - %s", v11, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_6_2();
  }

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = OUTLINED_FUNCTION_52();
    *v32 = 0;
    _os_log_impl(&dword_0, v30, v31, "No explicit appId set on IntentType. Using the appId assign to the context instead", v32, 2u);
    OUTLINED_FUNCTION_7_1();
  }

  if (v5)
  {

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = OUTLINED_FUNCTION_25_0();
      v99 = OUTLINED_FUNCTION_47();
      *v35 = 136315138;
      *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v99);
      OUTLINED_FUNCTION_53(&dword_0, v33, v34, "Obtaining app intents details for appId: %s");
      OUTLINED_FUNCTION_14_2();
      OUTLINED_FUNCTION_7_1();
    }

    v36 = *(v1 + 152);
    v37 = v36[5];
    v38 = v36[6];
    __swift_project_boxed_opaque_existential_1(v36 + 2, v37);
    v39 = 0;
    v40 = (*(v38 + 48))(v4, v5, v37, v38);
    v48 = v40;
    v95 = v4;
    v49 = v40 + 64;
    v50 = -1;
    v51 = -1 << *(v40 + 32);
    if (-v51 < 64)
    {
      v50 = ~(-1 << -v51);
    }

    v52 = v50 & *(v40 + 64);
    v53 = (63 - v51) >> 6;

    v4 = 0;
    v54 = &_swiftEmptyArrayStorage;
    while (1)
    {
      *(v1 + 208) = v54;
      if (!v52)
      {
        break;
      }

LABEL_23:
      v98 = *(*(v48 + 56) + ((v4 << 9) | (8 * __clz(__rbit64(v52)))));
      v56 = v98;
      closure #2 in MetaDataSourcedAppIntentResolver.resolveParameter(parameter:suggestion:interaction:environment:)(&v98, v95, v5, &v99);

      if (v100)
      {
        v97 = v100;
        v96 = v39;
        v57 = v48;
        v58 = v1;
        v59 = v5;
        v60 = v99;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = v54[2];
          OUTLINED_FUNCTION_28_0();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v54 = v68;
        }

        v61 = v54;
        v62 = v54[2];
        v63 = v61;
        v64 = v61[3];
        v65 = v97;
        if (v62 >= v64 >> 1)
        {
          OUTLINED_FUNCTION_19_2(v64);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v65 = v97;
          v63 = v69;
        }

        v63[2] = v62 + 1;
        v66 = &v63[3 * v62];
        v54 = v63;
        v66[4] = v60;
        *(v66 + 5) = v65;
        v5 = v59;
        v1 = v58;
        v48 = v57;
        v39 = v96;
      }

      v52 &= v52 - 1;
    }

    while (1)
    {
      v55 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v55 >= v53)
      {
        break;
      }

      v52 = *(v49 + 8 * v55);
      ++v4;
      if (v52)
      {
        v4 = v55;
        goto LABEL_23;
      }
    }

    v70 = *(v1 + 144);

    _s25SiriLinkSuggestionsPlugin0B6Client_pWOcTm_0(v70, v1 + 16);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v71, v72))
    {
      OUTLINED_FUNCTION_25_0();
      v73 = OUTLINED_FUNCTION_17_2();
      v99 = v73;
      *v70 = 136315138;
      v74 = *(v1 + 48);
      __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
      OUTLINED_FUNCTION_27_0();
      dispatch thunk of EnvironmentSnapshot.salientEntities.getter();
      type metadata accessor for SalientEntity();
      OUTLINED_FUNCTION_39_0();
      v75 = Array.description.getter();
      v77 = v76;

      __swift_destroy_boxed_opaque_existential_1((v1 + 16));
      v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v77, &v99);

      *(v70 + 4) = v78;
      _os_log_impl(&dword_0, v71, v72, "environment.salientEntities - %s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v73);
      OUTLINED_FUNCTION_13_2();
      OUTLINED_FUNCTION_6_2();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1((v1 + 16));
    }

    v83 = *(v1 + 152);
    v84 = *(v1 + 160);
    v86 = *(v1 + 136);
    v85 = *(v1 + 144);
    v87 = v85[4];
    __swift_project_boxed_opaque_existential_1(v85, v85[3]);
    OUTLINED_FUNCTION_27_0();
    dispatch thunk of EnvironmentSnapshot.salientEntities.getter();
    Array<A>.getRetrievedContext()();

    Array<A>.indexByType()();
    v89 = v88;

    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit16TimeoutBehaviourVy0a4LinkB6Plugin16AppIntentDetailsVypGMd, &_s18SiriSuggestionsKit16TimeoutBehaviourVy0a4LinkB6Plugin16AppIntentDetailsVypGMR);
    __swift_storeEnumTagSinglePayload(v84, 1, 1, v90);
    _s25SiriLinkSuggestionsPlugin0B6Client_pWOcTm_0(v85, v1 + 56);
    _s25SiriLinkSuggestionsPlugin0B6Client_pWOcTm_0(v86, v1 + 96);
    v91 = swift_allocObject();
    *(v1 + 216) = v91;
    v91[2] = v83;
    v91[3] = &_swiftEmptyArrayStorage;
    v91[4] = v89;
    outlined init with take of SiriSuggestions.DisplayRepresentable((v1 + 56), (v91 + 5));
    outlined init with take of SiriSuggestions.DisplayRepresentable((v1 + 96), (v91 + 10));
    v92 = async function pointer to static AsyncAwaitUtils.run<A, B>(elements:timeoutBehaviour:execute:)[1];

    v93 = swift_task_alloc();
    *(v1 + 224) = v93;
    *v93 = v1;
    v93[1] = MetaDataSourcedAppIntentResolver.resolveParameter(parameter:suggestion:interaction:environment:);
    v94 = *(v1 + 160);

    return static AsyncAwaitUtils.run<A, B>(elements:timeoutBehaviour:execute:)(v54, v94, &async function pointer to partial apply for closure #3 in MetaDataSourcedAppIntentResolver.resolveParameter(parameter:suggestion:interaction:environment:), v91, &type metadata for AppIntentDetails, &type metadata for Any + 8);
  }

  else
  {
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_34_0(v42))
    {
      *OUTLINED_FUNCTION_52() = 0;
      OUTLINED_FUNCTION_2_1();
      _os_log_impl(v43, v44, v45, v46, v47, 2u);
      OUTLINED_FUNCTION_6_2();
    }

    else
    {
    }

    v80 = *(v1 + 160);
    v79 = *(v1 + 168);

    v81 = *(v1 + 8);

    return v81(&_swiftEmptyArrayStorage);
  }
}

{
  OUTLINED_FUNCTION_15_0();
  v3 = v2;
  OUTLINED_FUNCTION_13();
  v5 = v4;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;
  v8 = *(v7 + 224);
  v9 = *v1;
  OUTLINED_FUNCTION_7();
  *v10 = v9;

  if (v0)
  {
  }

  else
  {
    v13 = v5[26];
    v12 = v5[27];
    v14 = v5[20];
    v5[29] = v3;
    outlined destroy of CoreSignalTypes?(v14, &_s18SiriSuggestionsKit16TimeoutBehaviourVy0a4LinkB6Plugin16AppIntentDetailsVypGSgMd, &_s18SiriSuggestionsKit16TimeoutBehaviourVy0a4LinkB6Plugin16AppIntentDetailsVypGSgMR);

    v15 = OUTLINED_FUNCTION_4_2();

    return _swift_task_switch(v15, v16, v17);
  }
}

{
  OUTLINED_FUNCTION_8();
  v1 = v0[25];

  v2 = v0[29];
  v4 = v0[20];
  v3 = v0[21];

  v5 = OUTLINED_FUNCTION_12_1();

  return v6(v5);
}

uint64_t closure #2 in MetaDataSourcedAppIntentResolver.resolveParameter(parameter:suggestion:interaction:environment:)@<X0>(void **a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  if (one-time initialization token for appIntentsSuggestions != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.appIntentsSuggestions);
  v9 = v7;

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v12 = 136315650;
    log = v10;
    v13 = [v9 identifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v30);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v30);
    *(v12 + 22) = 2080;
    v18 = v9;
    v19 = [v18 description];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v11;
    v21 = a4;
    v22 = a2;
    v24 = v23;

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v24, &v30);
    a2 = v22;
    a4 = v21;

    *(v12 + 24) = v25;
    _os_log_impl(&dword_0, log, v28, "Got actions %s for: %s. Details: %s", v12, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  *a4 = a2;
  a4[1] = a3;
  a4[2] = v9;
  v26 = v9;
}

void Array<A>.indexByType()()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v71 = type metadata accessor for TypeIdentifier();
  v2 = OUTLINED_FUNCTION_14_0(v71);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_5_2();
  v70 = v8 - v7;
  v9 = type metadata accessor for TypedValue();
  v10 = OUTLINED_FUNCTION_14_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_5_2();
  v69 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit10TypedValueOSgMd, &_s7ToolKit10TypedValueOSgMR);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  OUTLINED_FUNCTION_37_0();
  v72 = v19;
  __chkstk_darwin(v20);
  v22 = &v60 - v21;
  v23 = type metadata accessor for RetrievedContext();
  v24 = OUTLINED_FUNCTION_14_0(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  __chkstk_darwin(v24);
  OUTLINED_FUNCTION_5_2();
  v31 = v30 - v29;
  v32 = *(v1 + 16);
  if (v32)
  {
    v34 = *(v26 + 16);
    v33 = v26 + 16;
    v35 = *(v33 + 64);
    v64 = (v35 + 32) & ~v35;
    v65 = v35;
    v36 = v1 + v64;
    v37 = v34;
    v76 = *(v33 + 56);
    v62 = (v4 + 8);
    v63 = (v12 + 32);
    v61 = (v12 + 8);
    v77 = &_swiftEmptyArrayStorage;
    v75 = v33 - 8;
    v60 = xmmword_3EFC0;
    v38 = v72;
    v67 = v34;
    v68 = v33;
    v66 = v22;
    do
    {
      v37(v31, v36, v23);
      RetrievedContext.typedValue.getter();
      outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(v22, v38, &_s7ToolKit10TypedValueOSgMd, &_s7ToolKit10TypedValueOSgMR);
      if (__swift_getEnumTagSinglePayload(v38, 1, v9) == 1)
      {
        outlined destroy of CoreSignalTypes?(v22, &_s7ToolKit10TypedValueOSgMd, &_s7ToolKit10TypedValueOSgMR);
        v39 = OUTLINED_FUNCTION_41_0();
        v40(v39);
      }

      else
      {
        v41 = v69;
        (*v63)(v69, v38, v9);
        v42 = v70;
        TypedValue.typeIdentifier.getter();
        v43 = TypeIdentifier.debugDescription.getter();
        v73 = v44;
        v74 = v43;
        (*v62)(v42, v71);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22IntelligenceFlowShared16RetrievedContextVGMd, &_ss23_ContiguousArrayStorageCy22IntelligenceFlowShared16RetrievedContextVGMR);
        v45 = v64;
        v46 = v9;
        v47 = swift_allocObject();
        *(v47 + 16) = v60;
        v37(v47 + v45, v31, v23);
        v22 = v66;
        v48 = v41;
        v49 = v46;
        (*v61)(v48, v46);
        outlined destroy of CoreSignalTypes?(v22, &_s7ToolKit10TypedValueOSgMd, &_s7ToolKit10TypedValueOSgMR);
        v50 = OUTLINED_FUNCTION_41_0();
        v51(v50);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = *(v77 + 2);
          OUTLINED_FUNCTION_28_0();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v77 = v58;
        }

        v53 = *(v77 + 2);
        v52 = *(v77 + 3);
        v37 = v67;
        if (v53 >= v52 >> 1)
        {
          OUTLINED_FUNCTION_19_2(v52);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v77 = v59;
        }

        v54 = v77;
        *(v77 + 2) = v53 + 1;
        v55 = &v54[24 * v53];
        v56 = v73;
        *(v55 + 4) = v74;
        *(v55 + 5) = v56;
        *(v55 + 6) = v47;
        v9 = v49;
        v38 = v72;
      }

      v36 += v76;
      --v32;
    }

    while (v32);
  }

  else
  {
    v77 = &_swiftEmptyArrayStorage;
  }

  _sSD_16uniquingKeysWithSDyxq_Gqd__n_q_q__q_tKXEtKcSTRd__x_q_t7ElementRtd__lufCSS_Say22IntelligenceFlowShared16RetrievedContextVGSaySS_AHtGTt1g5033_sSa25SiriLinkSuggestionsPlugin22ef8Shared16hI46VRszlE11indexByTypeSDySSSayADGGyFA2F_AFtXEfU0_Tf1nc_nTm(v77, &_ss18_DictionaryStorageCySSSay22IntelligenceFlowShared16RetrievedContextVGGMd, &_ss18_DictionaryStorageCySSSay22IntelligenceFlowShared16RetrievedContextVGGMR, specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:));
  OUTLINED_FUNCTION_48();
}

uint64_t closure #3 in MetaDataSourcedAppIntentResolver.resolveParameter(parameter:suggestion:interaction:environment:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 408) = a5;
  *(v6 + 416) = a6;
  *(v6 + 392) = a3;
  *(v6 + 400) = a4;
  *(v6 + 384) = a2;
  v8 = type metadata accessor for Locale();
  *(v6 + 424) = v8;
  v9 = *(v8 - 8);
  *(v6 + 432) = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v12 = *a1;
  *(v6 + 440) = v11;
  *(v6 + 448) = v12;
  *(v6 + 456) = *(a1 + 1);

  return _swift_task_switch(closure #3 in MetaDataSourcedAppIntentResolver.resolveParameter(parameter:suggestion:interaction:environment:), 0, 0);
}

uint64_t closure #3 in MetaDataSourcedAppIntentResolver.resolveParameter(parameter:suggestion:interaction:environment:)()
{
  v1 = *(v0 + 392);
  v2 = [*(v0 + 464) identifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  *(v0 + 472) = v3;
  *(v0 + 480) = v5;
  Array<A>.indexByName()();
  v7 = v6;
  *(v0 + 488) = v6;
  v8 = swift_task_alloc();
  *(v0 + 496) = v8;
  *v8 = v0;
  v8[1] = closure #3 in MetaDataSourcedAppIntentResolver.resolveParameter(parameter:suggestion:interaction:environment:);
  v9 = *(v0 + 456);
  v10 = *(v0 + 464);
  v11 = *(v0 + 448);
  v12 = *(v0 + 400);

  return _s25SiriLinkSuggestionsPlugin0B14ClientResolverPAAE18getAppIntentAction4from3for14withParameters18andSalientEntitiesAA0hiJ0VSgSo16LNActionMetadataC_SSSDySS0aC3Kit0aC0O20DisplayRepresentable_pGSDySSSay22IntelligenceFlowShared16RetrievedContextVGGtYaFAA015MetaDataSourcedhiF0C_Tt3g5(v10, v11, v9, v7, v12);
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;
  v1[44] = v0;
  v1[45] = v3;
  v1[46] = v4;
  v1[47] = v5;
  v7 = *(v6 + 496);
  v8 = *(v6 + 488);
  v9 = *v0;
  OUTLINED_FUNCTION_7();
  *v10 = v9;
  *(v13 + 504) = v11;
  *(v13 + 512) = v12;

  v14 = OUTLINED_FUNCTION_4_2();

  return _swift_task_switch(v14, v15, v16);
}

{
  v42 = v0;
  if (!v0[64])
  {
    if (one-time initialization token for appIntentsSuggestions != -1)
    {
      OUTLINED_FUNCTION_4_0();
    }

    v22 = v0[60];
    v23 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_20_1(v23, static Logger.appIntentsSuggestions);

    v10 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    v24 = OUTLINED_FUNCTION_29_0();
    v25 = v0[60];
    if (!v24)
    {

      goto LABEL_17;
    }

    v26 = v0[59];
    v27 = OUTLINED_FUNCTION_25_0();
    v28 = OUTLINED_FUNCTION_47();
    v41 = v28;
    *v27 = 136315138;
    v29 = OUTLINED_FUNCTION_38_0();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v31);

    *(v27 + 4) = v32;
    OUTLINED_FUNCTION_49(&dword_0, v33, v34, "Siri App Intent could not be determined. Skipping appIntent: %s");
    __swift_destroy_boxed_opaque_existential_1(v28);
    OUTLINED_FUNCTION_7_1();
    goto LABEL_11;
  }

  v1 = v0[47];
  v2 = v0[60];
  v4 = v0[57];
  v3 = v0[58];
  v5 = v0[56];
  v6 = v0[51];

  v0[65] = v1;
  type metadata accessor for MetaDataSourcedAppIntentResolver();
  if (static MetaDataSourcedAppIntentResolver.disruptsUserFlow(appIntentDetails:environmentSnapshot:)(v5, v4, v3, v6))
  {

    if (one-time initialization token for appIntentsSuggestions != -1)
    {
      OUTLINED_FUNCTION_4_0();
    }

    v7 = v0[58];
    v8 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_20_1(v8, static Logger.appIntentsSuggestions);
    v9 = v7;
    v10 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();

    if (!OUTLINED_FUNCTION_29_0())
    {
      goto LABEL_12;
    }

    v11 = v0[58];
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_42();
    *v9 = 136315138;
    v12 = [v11 identifier];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v41);

    *(v9 + 1) = v16;
    OUTLINED_FUNCTION_2_1();
    _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    OUTLINED_FUNCTION_8_2();
LABEL_11:
    OUTLINED_FUNCTION_11();
LABEL_12:

LABEL_17:
    v39 = v0[55];

    v40 = v0[1];

    return v40(&_swiftEmptyArrayStorage);
  }

  v35 = swift_task_alloc();
  v0[66] = v35;
  *v35 = v0;
  v35[1] = closure #3 in MetaDataSourcedAppIntentResolver.resolveParameter(parameter:suggestion:interaction:environment:);
  v36 = v0[52];
  v37 = v0[48];

  return MetaDataSourcedAppIntentResolver.getDialogOverride(_:)((v0 + 39), v36);
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  v2 = *(v1 + 528);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4_2();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_22_0();
  v58 = v0;
  v1 = *(v0 + 408);
  if (*(v0 + 336))
  {
    v3 = *(v0 + 432);
    v2 = *(v0 + 440);
    v4 = *(v0 + 424);
    outlined init with take of SiriSuggestions.DisplayRepresentable((v0 + 312), v0 + 272);
    v5 = *(v0 + 304);
    __swift_project_boxed_opaque_existential_1((v0 + 272), *(v0 + 296));
    v6 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    OUTLINED_FUNCTION_27_0();
    dispatch thunk of EnvironmentSnapshot.siriLocale.getter();
    v7 = dispatch thunk of SiriSuggestions.DisplayRepresentable.getDisplay(for:)();
    v9 = v8;
    (*(v3 + 8))(v2, v4);
    if (v9)
    {
      v10 = v7;
    }

    else
    {
      v10 = 1819047278;
    }

    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0xE400000000000000;
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 272));
    v13 = *(v0 + 456);
    v12 = *(v0 + 464);
    v14 = *(v0 + 448);
    *(v0 + 16) = *(v0 + 504);
    *(v0 + 24) = *(v0 + 512);
    *(v0 + 40) = v14;
    *(v0 + 48) = v13;
    *(v0 + 56) = v12;
    *(v0 + 64) = v10;
    *(v0 + 72) = v11;
    v15 = one-time initialization token for appIntentsSuggestions;
    v16 = v12;

    if (v15 != -1)
    {
      OUTLINED_FUNCTION_4_0();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.appIntentsSuggestions);
    OUTLINED_FUNCTION_14();

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_25_0();
      v57 = OUTLINED_FUNCTION_47();
      *v20 = 136315138;
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v57);

      *(v20 + 4) = v10;
      OUTLINED_FUNCTION_53(&dword_0, v18, v19, "dialog =%s");
      OUTLINED_FUNCTION_14_2();
      OUTLINED_FUNCTION_7_1();
    }

    else
    {
    }

    v41 = OUTLINED_FUNCTION_36();
    outlined init with copy of SuggestionAppIntent(v41, v42);
    v43 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    outlined destroy of SuggestionAppIntent(v0 + 16);
    if (OUTLINED_FUNCTION_29_0())
    {
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_17_2();
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_24(4.8149e-34);
      v44 = String.init<A>(describing:)();
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v57);

      *(v10 + 4) = v46;
      OUTLINED_FUNCTION_2_1();
      _os_log_impl(v47, v48, v49, v50, v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_6_2();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, ".<");
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_3EFC0;
    *(v52 + 56) = &type metadata for SuggestionAppIntent;
    v53 = swift_allocObject();
    OUTLINED_FUNCTION_31_0(v53);
    v54 = *(v0 + 440);

    OUTLINED_FUNCTION_12_1();
    OUTLINED_FUNCTION_45();

    __asm { BRAA            X2, X16 }
  }

  v21 = *(v0 + 520);
  v22 = *(v0 + 512);
  v23 = *(v0 + 440);
  outlined destroy of CoreSignalTypes?(v0 + 312, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
  v24 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  dispatch thunk of EnvironmentSnapshot.siriLocale.getter();
  v25 = swift_task_alloc();
  *(v0 + 536) = v25;
  *v25 = v0;
  v25[1] = closure #3 in MetaDataSourcedAppIntentResolver.resolveParameter(parameter:suggestion:interaction:environment:);
  v26 = *(v0 + 504);
  v27 = *(v0 + 456);
  v28 = *(v0 + 464);
  v30 = *(v0 + 440);
  v29 = *(v0 + 448);
  v31 = *(v0 + 384);
  OUTLINED_FUNCTION_45();

  return MetaDataSourcedAppIntentResolver.getSuggestionDialog(appIntentAction:details:siriLocale:)(v32, v33, v34, v35, v36, v37, v38);
}

{
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;
  v4 = v3[67];
  v5 = v3[55];
  v6 = v3[54];
  v7 = v3[53];
  v8 = *v0;
  OUTLINED_FUNCTION_7();
  *v9 = v8;
  *(v11 + 544) = v10;
  *(v11 + 552) = v12;

  (*(v6 + 8))(v5, v7);
  v13 = OUTLINED_FUNCTION_4_2();

  return _swift_task_switch(v13, v14, v15);
}

void closure #3 in MetaDataSourcedAppIntentResolver.resolveParameter(parameter:suggestion:interaction:environment:)()
{
  OUTLINED_FUNCTION_22_0();
  v52 = v0;
  v2 = *(v0 + 552);
  if (v2)
  {
    if (one-time initialization token for appIntentsSuggestions != -1)
    {
      OUTLINED_FUNCTION_4_0();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.appIntentsSuggestions);
    OUTLINED_FUNCTION_14();

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();

    if (OUTLINED_FUNCTION_51())
    {
      v6 = *(v0 + 544);
      v7 = OUTLINED_FUNCTION_25_0();
      v51 = OUTLINED_FUNCTION_47();
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v2, &v51);
      OUTLINED_FUNCTION_53(&dword_0, v4, v5, "computedDialog=%s");
      OUTLINED_FUNCTION_14_2();
      OUTLINED_FUNCTION_7_1();
    }

    v8 = *(v0 + 544);
    v9 = *(v0 + 504);
    v10 = *(v0 + 456);
    v11 = *(v0 + 464);
    v12 = *(v0 + 448);

    *(v0 + 16) = v9;
    *(v0 + 24) = *(v0 + 512);
    *(v0 + 40) = v12;
    *(v0 + 48) = v10;
    *(v0 + 56) = v11;
    *(v0 + 64) = v8;
    *(v0 + 72) = v2;
    v13 = one-time initialization token for appIntentsSuggestions;
    v14 = v11;

    if (v13 != -1)
    {
      OUTLINED_FUNCTION_4_0();
    }

    __swift_project_value_buffer(v3, static Logger.appIntentsSuggestions);
    OUTLINED_FUNCTION_14();

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_25_0();
      v51 = OUTLINED_FUNCTION_47();
      *v17 = 136315138;
      v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v2, &v51);

      *(v17 + 4) = v8;
      OUTLINED_FUNCTION_53(&dword_0, v15, v16, "dialog =%s");
      OUTLINED_FUNCTION_14_2();
      OUTLINED_FUNCTION_7_1();
    }

    else
    {
    }

    v35 = OUTLINED_FUNCTION_36();
    outlined init with copy of SuggestionAppIntent(v35, v36);
    v37 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    outlined destroy of SuggestionAppIntent(v0 + 16);
    if (OUTLINED_FUNCTION_29_0())
    {
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_17_2();
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_24(4.8149e-34);
      v38 = String.init<A>(describing:)();
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v51);

      *(v15 + 4) = v40;
      OUTLINED_FUNCTION_2_1();
      _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_6_2();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, ".<");
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_3EFC0;
    *(v46 + 56) = &type metadata for SuggestionAppIntent;
    v47 = swift_allocObject();
    OUTLINED_FUNCTION_31_0(v47);
  }

  else
  {
    v18 = *(v0 + 520);
    v19 = *(v0 + 512);

    if (one-time initialization token for appIntentsSuggestions != -1)
    {
      OUTLINED_FUNCTION_4_0();
    }

    v20 = *(v0 + 464);
    v21 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_20_1(v21, static Logger.appIntentsSuggestions);
    v22 = v20;
    v23 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();

    if (OUTLINED_FUNCTION_29_0())
    {
      v24 = *(v0 + 464);
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_17_2();
      OUTLINED_FUNCTION_42();
      *v22 = 136315138;
      v25 = [v24 identifier];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v51);

      *(v22 + 1) = v29;
      OUTLINED_FUNCTION_2_1();
      _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v1);
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_6_2();
    }
  }

  v48 = *(v0 + 440);

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_45();

  __asm { BRAA            X2, X16 }
}

void Array<A>.indexByName()()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v2 = type metadata accessor for AppIntentFilter.AppIntentParameter();
  v3 = OUTLINED_FUNCTION_14_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_5_2();
  v10 = v9 - v8;
  v11 = *(v1 + 16);
  if (v11)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v14 = v1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v20 = *(v12 + 56);
    v21 = v13;
    do
    {
      v21(v10, v14, v2);
      *&v22 = AppIntentFilter.AppIntentParameter.name.getter();
      *(&v22 + 1) = v15;
      AppIntentFilter.AppIntentParameter.value.getter();
      (*(v12 - 8))(v10, v2);
      v17 = _swiftEmptyArrayStorage[2];
      v16 = _swiftEmptyArrayStorage[3];
      if (v17 >= v16 >> 1)
      {
        v19 = OUTLINED_FUNCTION_19_2(v16);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v19, v17 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v17 + 1;
      v18 = &_swiftEmptyArrayStorage[7 * v17];
      *(v18 + 10) = v25;
      *(v18 + 3) = v23;
      *(v18 + 4) = v24;
      *(v18 + 2) = v22;
      v14 += v20;
      --v11;
    }

    while (v11);
  }

  _sSD_16uniquingKeysWithSDyxq_Gqd__n_q_q__q_tKXEtKcSTRd__x_q_t7ElementRtd__lufCSS_Say22IntelligenceFlowShared16RetrievedContextVGSaySS_AHtGTt1g5033_sSa25SiriLinkSuggestionsPlugin22ef8Shared16hI46VRszlE11indexByTypeSDySSSayADGGyFA2F_AFtXEfU0_Tf1nc_nTm(_swiftEmptyArrayStorage, &_ss18_DictionaryStorageCySS18SiriSuggestionsKit0cD0O20DisplayRepresentable_pGMd, &_ss18_DictionaryStorageCySS18SiriSuggestionsKit0cD0O20DisplayRepresentable_pGMR, specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:));
  OUTLINED_FUNCTION_48();
}

uint64_t MetaDataSourcedAppIntentResolver.getDialogOverride(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return _swift_task_switch(MetaDataSourcedAppIntentResolver.getDialogOverride(_:), 0, 0);
}

uint64_t MetaDataSourcedAppIntentResolver.getDialogOverride(_:)()
{
  OUTLINED_FUNCTION_15_0();
  v1 = v0[17];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_14();
  v0[18] = dispatch thunk of CandidateSuggestion.context.getter();
  v0[19] = v3;
  v0[20] = swift_getObjectType();
  v4 = dispatch thunk of CandidateSuggestion.context.getter();
  v6 = v5;
  v0[21] = v4;
  v0[22] = v5;
  v0[23] = swift_getObjectType();
  v7 = *(*(v6 + 8) + 8);
  dispatch thunk of Actor.unownedExecutor.getter();
  v8 = OUTLINED_FUNCTION_26_0();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_8();
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  Context.getTargetOwner()();
  swift_unknownObjectRelease();
  v4 = OUTLINED_FUNCTION_4_2();

  return _swift_task_switch(v4, v5, v6);
}

{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  v0[10] = v4;
  v0[11] = *(v5 + 8);
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  OUTLINED_FUNCTION_15(v4);
  (*(v6 + 16))();
  v7 = *(*(v2 + 8) + 8);
  dispatch thunk of Actor.unownedExecutor.getter();
  v8 = OUTLINED_FUNCTION_26_0();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_8();
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  Context.getParam(for:key:)();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v4 = OUTLINED_FUNCTION_4_2();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_8();
  v1 = v0[16];
  if (v0[15])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v2 = v0[16];
      *(v2 + 32) = 0;
      *v2 = 0u;
      *(v2 + 16) = 0u;
    }
  }

  else
  {
    outlined destroy of CoreSignalTypes?((v0 + 12), &_sypSgMd, &_sypSgMR);
    *v1 = 0u;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0;
  }

  v3 = v0[1];

  return v3();
}

uint64_t *MetaDataSourcedAppIntentResolver.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[13];

  return v0;
}

uint64_t MetaDataSourcedAppIntentResolver.__deallocating_deinit()
{
  MetaDataSourcedAppIntentResolver.deinit();

  return _swift_deallocClassInstance(v0, 112, 7);
}

uint64_t protocol witness for InternalResolver.resolverTypeOperand.getter in conformance MetaDataSourcedAppIntentResolver()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 104);

  return v1;
}

uint64_t protocol witness for InternalResolver.resolveParameter(parameter:suggestion:interaction:environment:) in conformance MetaDataSourcedAppIntentResolver()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for InternalResolver.resolveParameter(parameter:suggestion:interaction:environment:) in conformance MetaDataSourcedAppIntentResolver;

  return MetaDataSourcedAppIntentResolver.resolveParameter(parameter:suggestion:interaction:environment:)();
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12_1();

  return v6(v5);
}

BOOL specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

void specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = specialized Array.count.getter(a3);
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v12 = v8;
    v10 = a1(&v12);

    if (!v3)
    {
      v6 = v7 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, uint64_t *a3)
{
  v33 = a3;
  v28 = *(a1 + 16);
  if (!v28)
  {
  }

  v5 = 0;
  v6 = a1 + 32;
  while (v5 < *(a1 + 16))
  {
    outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(v6, v31, &_sSS_18SiriSuggestionsKit0aB0O20DisplayRepresentable_ptMd, &_sSS_18SiriSuggestionsKit0aB0O20DisplayRepresentable_ptMR);
    v8 = v31[0];
    v7 = v31[1];
    outlined init with take of SiriSuggestions.DisplayRepresentable(&v32, v30);
    v9 = *v33;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
    v12 = *(v9 + 16);
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v15 = v10;
    if (*(v9 + 24) >= v14)
    {
      if (a2)
      {
        if (v10)
        {
          goto LABEL_11;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS18SiriSuggestionsKit0cD0O20DisplayRepresentable_pGMd, &_ss17_NativeDictionaryVySS18SiriSuggestionsKit0cD0O20DisplayRepresentable_pGMR);
        _NativeDictionary.copy()();
        if (v15)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      v16 = v33;
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14);
      v17 = *v16;
      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
      if ((v15 & 1) != (v19 & 1))
      {
        goto LABEL_22;
      }

      v11 = v18;
      if (v15)
      {
LABEL_11:
        v20 = *v33;
        _s25SiriLinkSuggestionsPlugin0B6Client_pWOcTm_0(v30, v29);
        __swift_destroy_boxed_opaque_existential_1(v30);

        v21 = (*(v20 + 56) + 40 * v11);
        __swift_destroy_boxed_opaque_existential_1(v21);
        outlined init with take of SiriSuggestions.DisplayRepresentable(v29, v21);
        goto LABEL_15;
      }
    }

    v22 = *v33;
    v22[(v11 >> 6) + 8] |= 1 << v11;
    v23 = (v22[6] + 16 * v11);
    *v23 = v8;
    v23[1] = v7;
    outlined init with take of SiriSuggestions.DisplayRepresentable(v30, v22[7] + 40 * v11);
    v24 = v22[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_21;
    }

    v22[2] = v26;
LABEL_15:
    ++v5;
    v6 += 56;
    a2 = 1;
    if (v28 == v5)
    {
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized MutableCollection<>.shuffle<A>(using:)()
{
  OUTLINED_FUNCTION_50();
  v1 = type metadata accessor for RetrievedContext();
  v2 = OUTLINED_FUNCTION_14_0(v1);
  v29 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_37_0();
  v32 = v6;
  __chkstk_darwin(v7);
  v33 = &v25 - v8;
  v28 = v0;
  v9 = *v0;
  v10 = *(*v0 + 16);
  v11 = v10 - 2;
  if (v10 < 2)
  {
LABEL_18:
    OUTLINED_FUNCTION_48();
  }

  else
  {
    v12 = 0;
    v25 = v10 - 2;
    v26 = (v29 + 40);
    v27 = v29 + 16;
    while (1)
    {
      v34 = 0;
      swift_stdlib_random();
      v13 = (v34 * v10) >> 64;
      if (v10 > v34 * v10)
      {
        v14 = -v10 % v10;
        if (v14 > v34 * v10)
        {
          do
          {
            v34 = 0;
            swift_stdlib_random();
          }

          while (v14 > v34 * v10);
          v13 = (v34 * v10) >> 64;
        }
      }

      v15 = v12 + v13;
      if (__OFADD__(v12, v13))
      {
        break;
      }

      if (v12 != v15)
      {
        v16 = *(v9 + 16);
        if (v12 >= v16)
        {
          goto LABEL_20;
        }

        v17 = v1;
        v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
        v18 = v9 + v31;
        v19 = *(v29 + 72);
        v20 = *(v29 + 16);
        v30 = v19 * v12;
        v20(v33, v9 + v31 + v19 * v12, v17);
        if (v15 >= v16)
        {
          goto LABEL_21;
        }

        v21 = v19 * v15;
        v20(v32, v18 + v19 * v15, v17);
        v1 = v17;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v9);
        }

        if (v12 >= *(v9 + 16))
        {
          goto LABEL_22;
        }

        v22 = v9 + v31;
        v23 = *v26;
        (*v26)(v9 + v31 + v30, v32, v17);
        if (v15 >= *(v9 + 16))
        {
          goto LABEL_23;
        }

        v23(v22 + v21, v33, v17);
        *v28 = v9;
        v11 = v25;
      }

      --v10;
      if (v12++ == v11)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

uint64_t specialized _NativeDictionary.mapValues<A>(_:)(void (*a1)(void *__return_ptr, _BYTE *), uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  result = static _DictionaryStorage.copy(original:)();
  v6 = result;
  v7 = 0;
  v30 = a3;
  v10 = *(a3 + 64);
  v9 = a3 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v28 = result + 64;
  v33 = result;
  if ((v12 & v8) != 0)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v18 = v15 | (v7 << 6);
      v19 = (*(v30 + 48) + 16 * v18);
      v20 = *v19;
      v21 = v19[1];
      outlined init with copy of ActionParameter(*(v30 + 56) + 48 * v18, v32);

      a1(v31, v32);
      if (v3)
      {
        break;
      }

      result = outlined destroy of ActionParameter(v32);
      *(v28 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v6 = v33;
      v22 = (*(v33 + 48) + 16 * v18);
      *v22 = v20;
      v22[1] = v21;
      v23 = (*(v6 + 56) + 16 * v18);
      v24 = v31[1];
      *v23 = v31[0];
      v23[1] = v24;
      v25 = *(v6 + 16);
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_17;
      }

      *(v6 + 16) = v27;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v6 = v33;

    outlined destroy of ActionParameter(v32);
    return v6;
  }

  else
  {
LABEL_5:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return v6;
      }

      v17 = *(v9 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1, uint64_t *a2)
{
  return specialized closure #1 in Sequence<>.contains(_:)(*a1, a1[1], *a2, a2[1]) & 1;
}

{
  v2 = *a1;
  v3 = *a2;
  return specialized closure #1 in Sequence<>.contains(_:)() & 1;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1)
{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16)) & 1;
}

{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16)) & 1;
}

uint64_t sub_18568()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t partial apply for closure #3 in MetaDataSourcedAppIntentResolver.resolveParameter(parameter:suggestion:interaction:environment:)(uint64_t *a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #3 in MetaDataSourcedAppIntentResolver.resolveParameter(parameter:suggestion:interaction:environment:);

  return closure #3 in MetaDataSourcedAppIntentResolver.resolveParameter(parameter:suggestion:interaction:environment:)(a1, v4, v5, v6, (v1 + 5), (v1 + 10));
}

uint64_t partial apply for closure #3 in MetaDataSourcedAppIntentResolver.resolveParameter(parameter:suggestion:interaction:environment:)()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_13();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_7();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t instantiation function for generic protocol witness table for MetaDataSourcedAppIntentResolver(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type MetaDataSourcedAppIntentResolver and conformance MetaDataSourcedAppIntentResolver(&lazy protocol witness table cache variable for type MetaDataSourcedAppIntentResolver and conformance MetaDataSourcedAppIntentResolver, a2, type metadata accessor for MetaDataSourcedAppIntentResolver);
  *(a1 + 8) = result;
  return result;
}

uint64_t _s25SiriLinkSuggestionsPlugin0B6Client_pWOcTm_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_15(v3);
  (*v4)(a2);
  return a2;
}

uint64_t sub_18988()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t type metadata accessor for NSTextCheckingResult(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MetaDataSourcedAppIntentResolver and conformance MetaDataSourcedAppIntentResolver(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    OUTLINED_FUNCTION_39_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_2()
{
}

uint64_t OUTLINED_FUNCTION_7_1()
{
}

uint64_t OUTLINED_FUNCTION_8_2()
{
}

uint64_t OUTLINED_FUNCTION_13_2()
{
}

uint64_t OUTLINED_FUNCTION_14_2()
{
  __swift_destroy_boxed_opaque_existential_1(v0);
}

uint64_t OUTLINED_FUNCTION_17_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_24(float a1)
{
  *v1 = a1;
  v4 = v2[2];
  v2[9] = v2[1];
  v2[10] = v4;
  v5 = v2[4];
  v2[11] = v2[3];
  v2[12] = v5;

  return outlined init with copy of SuggestionAppIntent((v2 + 1), (v2 + 13));
}

uint64_t OUTLINED_FUNCTION_25_0()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_29_0()
{

  return os_log_type_enabled(v1, v0);
}

__n128 OUTLINED_FUNCTION_31_0(uint64_t a1)
{
  *(v1 + 32) = a1;
  v3 = *(v2 + 32);
  *(a1 + 16) = *(v2 + 16);
  *(a1 + 32) = v3;
  result = *(v2 + 48);
  v5 = *(v2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_32_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[3];
  v4 = v2[4];
  return v2[2];
}

BOOL OUTLINED_FUNCTION_34_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_35_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_47_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(7104878, 0xE300000000000000, va);
}

void OUTLINED_FUNCTION_49(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

BOOL OUTLINED_FUNCTION_51()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_52()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_53(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t LinkSuggestionsOwners.getOwner()@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (one-time initialization token for appIntentsOwner != -1)
      {
        swift_once();
      }

      v3 = &static LinkSuggestionsOwners.appIntentsOwner;
    }

    else
    {
      if (one-time initialization token for autoshortcutsOwner != -1)
      {
        swift_once();
      }

      v3 = &static LinkSuggestionsOwners.autoshortcutsOwner;
    }
  }

  else
  {
    if (one-time initialization token for linkOwner != -1)
    {
      swift_once();
    }

    v3 = &static LinkSuggestionsOwners.linkOwner;
  }

  v4 = *v3;
  a2[3] = type metadata accessor for DefaultOwner();
  a2[4] = lazy protocol witness table accessor for type DefaultOwner and conformance DefaultOwner(&lazy protocol witness table cache variable for type DefaultOwner and conformance DefaultOwner, &type metadata accessor for DefaultOwner);
  *a2 = v4;
}

uint64_t one-time initialization function for linkOwner(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = type metadata accessor for CoreSuggestionGroups();
  v13[3] = v7;
  v13[4] = lazy protocol witness table accessor for type DefaultOwner and conformance DefaultOwner(&lazy protocol witness table cache variable for type CoreSuggestionGroups and conformance CoreSuggestionGroups, &type metadata accessor for CoreSuggestionGroups);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v7 - 8) + 104))(boxed_opaque_existential_1, *a2, v7);
  v9 = type metadata accessor for DefaultOwner();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  result = DefaultOwner.init(group:identifier:)();
  *a5 = result;
  return result;
}

SiriLinkSuggestionsPlugin::LinkSuggestionsOwners_optional __swiftcall LinkSuggestionsOwners.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of LinkSuggestionsOwners.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t LinkSuggestionsOwners.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 1802398060;
  }

  if (a1 == 1)
  {
    return 0x6E65746E49707061;
  }

  return 0x726F68736F747561;
}

Swift::Int specialized RawRepresentable<>.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t specialized RawRepresentable<>.hash(into:)()
{
  String.hash(into:)();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

SiriLinkSuggestionsPlugin::LinkSuggestionsOwners_optional protocol witness for RawRepresentable.init(rawValue:) in conformance LinkSuggestionsOwners@<W0>(Swift::String *a1@<X0>, SiriLinkSuggestionsPlugin::LinkSuggestionsOwners_optional *a2@<X8>)
{
  result.value = LinkSuggestionsOwners.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance LinkSuggestionsOwners@<X0>(uint64_t *a1@<X8>)
{
  result = LinkSuggestionsOwners.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::String __swiftcall LinkGroups.getName()()
{
  v0 = 1802398060;
  v1 = 0xE400000000000000;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t LinkGroups.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 1802398060 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int LinkGroups.CodingKeys.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LinkGroups.CodingKeys()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LinkGroups.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = LinkGroups.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance LinkGroups.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = static AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors.__derived_enum_equals(_:_:)();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LinkGroups.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LinkGroups.CodingKeys and conformance LinkGroups.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LinkGroups.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LinkGroups.CodingKeys and conformance LinkGroups.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LinkGroups.LinkCodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = LinkGroups.LinkCodingKeys.init(stringValue:)();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LinkGroups.LinkCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LinkGroups.LinkCodingKeys and conformance LinkGroups.LinkCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LinkGroups.LinkCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LinkGroups.LinkCodingKeys and conformance LinkGroups.LinkCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t LinkGroups.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy25SiriLinkSuggestionsPlugin0E6GroupsO0E10CodingKeys33_B4BD01E4DDE188E5B38F1918D6F65352LLOGMd, &_ss22KeyedEncodingContainerVy25SiriLinkSuggestionsPlugin0E6GroupsO0E10CodingKeys33_B4BD01E4DDE188E5B38F1918D6F65352LLOGMR);
  OUTLINED_FUNCTION_14_0(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_1_2();
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy25SiriLinkSuggestionsPlugin0E6GroupsO10CodingKeys33_B4BD01E4DDE188E5B38F1918D6F65352LLOGMd, &_ss22KeyedEncodingContainerVy25SiriLinkSuggestionsPlugin0E6GroupsO10CodingKeys33_B4BD01E4DDE188E5B38F1918D6F65352LLOGMR);
  OUTLINED_FUNCTION_14_0(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_1_2();
  __chkstk_darwin(v15);
  v17 = &v20 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LinkGroups.CodingKeys and conformance LinkGroups.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type LinkGroups.LinkCodingKeys and conformance LinkGroups.LinkCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v4 + 8))(v9, v2);
  return (*(v12 + 8))(v17, v10);
}

unint64_t lazy protocol witness table accessor for type LinkGroups.CodingKeys and conformance LinkGroups.CodingKeys()
{
  result = lazy protocol witness table cache variable for type LinkGroups.CodingKeys and conformance LinkGroups.CodingKeys;
  if (!lazy protocol witness table cache variable for type LinkGroups.CodingKeys and conformance LinkGroups.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkGroups.CodingKeys and conformance LinkGroups.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkGroups.CodingKeys and conformance LinkGroups.CodingKeys;
  if (!lazy protocol witness table cache variable for type LinkGroups.CodingKeys and conformance LinkGroups.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkGroups.CodingKeys and conformance LinkGroups.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkGroups.CodingKeys and conformance LinkGroups.CodingKeys;
  if (!lazy protocol witness table cache variable for type LinkGroups.CodingKeys and conformance LinkGroups.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkGroups.CodingKeys and conformance LinkGroups.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkGroups.CodingKeys and conformance LinkGroups.CodingKeys;
  if (!lazy protocol witness table cache variable for type LinkGroups.CodingKeys and conformance LinkGroups.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkGroups.CodingKeys and conformance LinkGroups.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LinkGroups.LinkCodingKeys and conformance LinkGroups.LinkCodingKeys()
{
  result = lazy protocol witness table cache variable for type LinkGroups.LinkCodingKeys and conformance LinkGroups.LinkCodingKeys;
  if (!lazy protocol witness table cache variable for type LinkGroups.LinkCodingKeys and conformance LinkGroups.LinkCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkGroups.LinkCodingKeys and conformance LinkGroups.LinkCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkGroups.LinkCodingKeys and conformance LinkGroups.LinkCodingKeys;
  if (!lazy protocol witness table cache variable for type LinkGroups.LinkCodingKeys and conformance LinkGroups.LinkCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkGroups.LinkCodingKeys and conformance LinkGroups.LinkCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkGroups.LinkCodingKeys and conformance LinkGroups.LinkCodingKeys;
  if (!lazy protocol witness table cache variable for type LinkGroups.LinkCodingKeys and conformance LinkGroups.LinkCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkGroups.LinkCodingKeys and conformance LinkGroups.LinkCodingKeys);
  }

  return result;
}

Swift::Int LinkGroups.hashValue.getter()
{
  Hasher.init(_seed:)();
  lazy protocol witness table accessor for type LinkGroups and conformance LinkGroups();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t LinkGroups.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy25SiriLinkSuggestionsPlugin0E6GroupsO0E10CodingKeys33_B4BD01E4DDE188E5B38F1918D6F65352LLOGMd, &_ss22KeyedDecodingContainerVy25SiriLinkSuggestionsPlugin0E6GroupsO0E10CodingKeys33_B4BD01E4DDE188E5B38F1918D6F65352LLOGMR);
  OUTLINED_FUNCTION_14_0(v3);
  v44 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_1_2();
  __chkstk_darwin(v7);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy25SiriLinkSuggestionsPlugin0E6GroupsO10CodingKeys33_B4BD01E4DDE188E5B38F1918D6F65352LLOGMd, &_ss22KeyedDecodingContainerVy25SiriLinkSuggestionsPlugin0E6GroupsO10CodingKeys33_B4BD01E4DDE188E5B38F1918D6F65352LLOGMR);
  OUTLINED_FUNCTION_14_0(v10);
  v45 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_1_2();
  __chkstk_darwin(v14);
  v16 = &v41 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LinkGroups.CodingKeys and conformance LinkGroups.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_9;
  }

  v42 = v9;
  v43 = a1;
  v18 = KeyedDecodingContainer.allKeys.getter();
  result = _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC25SiriLinkSuggestionsPlugin0K6GroupsO10CodingKeys33_B4BD01E4DDE188E5B38F1918D6F65352LLO_Tt1g5(v18, 0);
  v23 = v16;
  if (v21 == v22 >> 1)
  {
    v44 = result;
LABEL_8:
    v34 = v10;
    v35 = v45;
    v36 = type metadata accessor for DecodingError();
    swift_allocError();
    v38 = v37;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v38 = &type metadata for LinkGroups;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v36 - 8) + 104))(v38, enum case for DecodingError.typeMismatch(_:), v36);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v35 + 8))(v23, v34);
    a1 = v43;
LABEL_9:
    v40 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v40);
  }

  if (v21 < (v22 >> 1))
  {
    v24 = specialized ArraySlice.subscript.getter(v21 + 1, v22 >> 1, result, v20, v21, v22);
    v26 = v25;
    v28 = v27;
    swift_unknownObjectRelease();
    v29 = v26 == v28 >> 1;
    v30 = v43;
    v31 = v44;
    if (v29)
    {
      lazy protocol witness table accessor for type LinkGroups.LinkCodingKeys and conformance LinkGroups.LinkCodingKeys();
      v32 = v42;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v33 = v45;
      swift_unknownObjectRelease();
      (*(v31 + 8))(v32, v3);
      (*(v33 + 8))(v23, v10);
      v40 = v30;
      return __swift_destroy_boxed_opaque_existential_1(v40);
    }

    v44 = v24;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LinkGroups(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type LinkGroups and conformance LinkGroups();

  return static SuggestionGroup.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LinkGroups(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type LinkGroups and conformance LinkGroups();

  return SuggestionGroup.hash(into:)(a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LinkGroups()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type LinkGroups and conformance LinkGroups()
{
  result = lazy protocol witness table cache variable for type LinkGroups and conformance LinkGroups;
  if (!lazy protocol witness table cache variable for type LinkGroups and conformance LinkGroups)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkGroups and conformance LinkGroups);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkGroups and conformance LinkGroups;
  if (!lazy protocol witness table cache variable for type LinkGroups and conformance LinkGroups)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkGroups and conformance LinkGroups);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkGroups and conformance LinkGroups;
  if (!lazy protocol witness table cache variable for type LinkGroups and conformance LinkGroups)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkGroups and conformance LinkGroups);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkGroups and conformance LinkGroups;
  if (!lazy protocol witness table cache variable for type LinkGroups and conformance LinkGroups)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkGroups and conformance LinkGroups);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkGroups and conformance LinkGroups;
  if (!lazy protocol witness table cache variable for type LinkGroups and conformance LinkGroups)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkGroups and conformance LinkGroups);
  }

  return result;
}

uint64_t _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC25SiriLinkSuggestionsPlugin0K6GroupsO10CodingKeys33_B4BD01E4DDE188E5B38F1918D6F65352LLO_Tt1g5(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t specialized ArraySlice.subscript.getter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for LinkSuggestionsOwners(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LinkSuggestionsOwners(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1A264);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LinkGroups(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for LinkGroups(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x1A3B4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DefaultOwner and conformance DefaultOwner(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t LinkSuggestionsRepository.getPooledSuggestions()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVyypypSgGMd, &_s13SiriUtilities11TransformerVyypypSgGMR);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit17SuggestionDetailsVGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit17SuggestionDetailsVGMR);
  v3 = *(type metadata accessor for SuggestionDetails() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_3EFC0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_18SiriSuggestionsKit19ResolvableParameterCtGMd, &_ss23_ContiguousArrayStorageCySS_18SiriSuggestionsKit19ResolvableParameterCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_3EFC0;
  *(inited + 32) = 0xD00000000000001FLL;
  *(inited + 40) = 0x80000000000424E0;
  type metadata accessor for ResolvableParameter();
  static SuggestionTransformers.passthroughParameterForLogging()();
  *(inited + 48) = ResolvableParameter.__allocating_init(typeIdentifier:required:loggingKeyTransformer:)();
  Dictionary.init(dictionaryLiteral:)();
  outlined init with copy of LinkClient(v0 + 16, v11);
  v8 = type metadata accessor for LinkViewProvider();
  v9 = swift_allocObject();
  type metadata accessor for LinkInvocationActionProvider();
  *(v9 + 56) = swift_allocObject();
  outlined init with take of LinkClient(v11, v9 + 16);
  v11[3] = v8;
  v11[4] = lazy protocol witness table accessor for type LinkViewProvider and conformance LinkViewProvider(&lazy protocol witness table cache variable for type LinkViewProvider and conformance LinkViewProvider, 255, type metadata accessor for LinkViewProvider);
  v11[0] = v9;
  type metadata accessor for LinkLoggingActionKeyMapper();
  swift_allocObject();
  lazy protocol witness table accessor for type LinkViewProvider and conformance LinkViewProvider(&lazy protocol witness table cache variable for type LinkLoggingActionKeyMapper and conformance LinkLoggingActionKeyMapper, 255, type metadata accessor for LinkLoggingActionKeyMapper);
  OUTLINED_FUNCTION_0();
  SuggestionDetails.init(suggestionId:resolverParams:description:viewProvider:actionIdKeyMapper:filter:)();
  return v6;
}

uint64_t protocol witness for InternalSuggestionsRepository.getAsyncPooledSuggestions() in conformance LinkSuggestionsRepository(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to InternalSuggestionsRepository.getAsyncPooledSuggestions()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for InternalSuggestionsRepository.getAsyncPooledSuggestions() in conformance LinkSuggestionsRepository;

  return InternalSuggestionsRepository.getAsyncPooledSuggestions()(a1, a2);
}

uint64_t protocol witness for InternalSuggestionsRepository.getAsyncPooledSuggestions() in conformance LinkSuggestionsRepository(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t protocol witness for OwnerProvider.getOwner() in conformance LinkSuggestionsRepository(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return SuggestionsRepository.getOwner()(a1, WitnessTable);
}

uint64_t lazy protocol witness table accessor for type LinkViewProvider and conformance LinkViewProvider(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized Array.count.getter(unint64_t a1)
{
  if (a1 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }
}

uint64_t static PhraseUtils.getHydratedPhrase(phraseTemplate:parameters:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (one-time initialization token for variableNameRegex != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v6 = static PhraseUtils.variableNameRegex;
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 matchesInString:v7 options:0 range:{0, String.UTF16View.count.getter()}];

    type metadata accessor for NSTextCheckingResult();
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = specialized Array.count.getter(v9);
    v56 = a3;
    if (!v10)
    {
      break;
    }

    v11 = v10;
    v59[0] = &_swiftEmptyArrayStorage;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10 & ~(v10 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
LABEL_36:
      __break(1u);
      return result;
    }

    v13 = 0;
    v14 = v59[0];
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if ((v9 & 0xC000000000000001) != 0)
      {
        v16 = v14;
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_33;
        }

        v16 = v14;
        v17 = *(v9 + 8 * v13 + 32);
      }

      v18 = v17;
      [v17 rangeAtIndex:{1, v52, v53, v54, v55}];
      result = Range<>.init(_:in:)();
      if (v19)
      {
        goto LABEL_36;
      }

      a3 = a1;
      v20 = a2;
      String.subscript.getter();
      v21 = static String._fromSubstring(_:)();
      v23 = v22;

      v14 = v16;
      v59[0] = v16;
      v24 = *(v16 + 16);
      v25 = v14[3];
      if (v24 >= v25 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v24 + 1, 1);
        v14 = v59[0];
      }

      v14[2] = v24 + 1;
      v26 = &v14[2 * v24];
      *(v26 + 4) = v21;
      *(v26 + 5) = v23;
      ++v13;
      a1 = a3;
      a2 = v20;
      if (v15 == v11)
      {

        a3 = v56;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    OUTLINED_FUNCTION_0_4();
  }

  v14 = &_swiftEmptyArrayStorage;
LABEL_16:
  v27 = v14;
  if (one-time initialization token for appIntentsSuggestions != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.appIntentsSuggestions);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();

  v58 = a1;
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v59[0] = swift_slowAlloc();
    *v31 = 136315394;
    *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v59);
    *(v31 + 12) = 2080;
    v32 = Dictionary.description.getter();
    a1 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v59);

    *(v31 + 14) = a1;
    _os_log_impl(&dword_0, v29, v30, "Hydrating phraseTemplate - %s with parameters - %s", v31, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
  }

  v34 = v27;
  v57 = v27[2];

  v35 = 0;
  for (i = (v27 + 5); ; i += 2)
  {
    if (v57 == v35)
    {

      return v58;
    }

    if (v35 >= v34[2])
    {
      goto LABEL_32;
    }

    v37 = a2;
    v39 = *(i - 1);
    v38 = *i;
    v40 = *(v56 + 16);

    if (!v40)
    {
      break;
    }

    v41 = specialized __RawDictionaryStorage.find<A>(_:)(v39, v38);
    if ((v42 & 1) == 0)
    {
      break;
    }

    v43 = (*(v56 + 56) + 16 * v41);
    a3 = *v43;
    a1 = v43[1];
    v59[0] = v58;
    v59[1] = v37;

    v44._countAndFlagsBits = v39;
    v44._object = v38;
    String.append(_:)(v44);

    v45._countAndFlagsBits = 125;
    v45._object = 0xE100000000000000;
    String.append(_:)(v45);
    v54 = lazy protocol witness table accessor for type String and conformance String();
    v55 = v54;
    v53 = v54;
    v52 = &type metadata for String;
    v58 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    a2 = v46;

    ++v35;
    v34 = v27;
  }

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v59[0] = v50;
    *v49 = 136315138;
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v38, v59);

    *(v49 + 4) = v51;
    _os_log_impl(&dword_0, v47, v48, "display representable cannot be obtained for variable - %s ", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v50);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
  }

  else
  {
  }

  return 0;
}

void *static PhraseUtils.getVariableNames(phraseTemplate:)()
{
  if (one-time initialization token for variableNameRegex != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v0 = static PhraseUtils.variableNameRegex;
    v1 = String._bridgeToObjectiveC()();
    v2 = [v0 matchesInString:v1 options:0 range:{0, String.UTF16View.count.getter()}];

    type metadata accessor for NSTextCheckingResult();
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = specialized Array.count.getter(v3);
    if (!v4)
    {
LABEL_14:

      return _swiftEmptyArrayStorage;
    }

    v5 = v4;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
    if (v5 < 0)
    {
      break;
    }

    v7 = 0;
    v19 = v3;
    v20 = v3 & 0xC000000000000001;
    v18 = v3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v20)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v18 + 16))
        {
          goto LABEL_16;
        }

        v9 = *(v3 + 8 * v7 + 32);
      }

      v10 = v9;
      [v9 rangeAtIndex:{1, v18}];
      result = Range<>.init(_:in:)();
      if (v11)
      {
        goto LABEL_19;
      }

      String.subscript.getter();
      v12 = static String._fromSubstring(_:)();
      v14 = v13;

      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v16 + 1;
      v17 = &_swiftEmptyArrayStorage[2 * v16];
      v17[4] = v12;
      v17[5] = v14;
      ++v7;
      v3 = v19;
      if (v8 == v5)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    OUTLINED_FUNCTION_0_4();
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t static PhraseUtils.getHydratedPhrase(phraseTemplate:parameters:locale:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = a4;
  v6 = specialized Dictionary.compactMapValues<A>(_:)(partial apply for closure #1 in static PhraseUtils.getHydratedPhrase(phraseTemplate:parameters:locale:), v9, a3);
  v7 = static PhraseUtils.getHydratedPhrase(phraseTemplate:parameters:)(a1, a2, v6);

  return v7;
}

id one-time initialization function for variableNameRegex()
{
  v0 = objc_allocWithZone(NSRegularExpression);
  result = @nonobjc NSRegularExpression.init(pattern:options:)(0x2B775C287B5C245CLL, 0xEB000000007D5C29, 0);
  static PhraseUtils.variableNameRegex = result;
  return result;
}

uint64_t closure #1 in static PhraseUtils.getHydratedPhrase(phraseTemplate:parameters:locale:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  outlined init with copy of SiriSuggestions.DisplayRepresentable?(a1, v7);
  v3 = v8;
  if (v8)
  {
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v4 = dispatch thunk of SiriSuggestions.DisplayRepresentable.getDisplay(for:)();
    v3 = v5;
    result = __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    result = outlined destroy of SiriSuggestions.DisplayRepresentable?(v7);
    v4 = 0;
  }

  *a2 = v4;
  a2[1] = v3;
  return result;
}

id @nonobjc NSRegularExpression.init(pattern:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

unint64_t type metadata accessor for NSTextCheckingResult()
{
  result = lazy cache variable for type metadata for NSTextCheckingResult;
  if (!lazy cache variable for type metadata for NSTextCheckingResult)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSTextCheckingResult);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t outlined init with copy of SiriSuggestions.DisplayRepresentable?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SiriSuggestions.DisplayRepresentable?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_4()
{

  return swift_once();
}

uint64_t *SiriLinkSuggestionsFeatureFlags.forceEnabled.unsafeMutableAddressor()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  return &static SiriLinkSuggestionsFeatureFlags.forceEnabled;
}

uint64_t static SiriLinkSuggestionsFeatureFlags.forceEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  swift_beginAccess();
}

uint64_t static SiriLinkSuggestionsFeatureFlags.forceEnabled.setter(uint64_t a1)
{
  if (one-time initialization token for forceEnabled != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  swift_beginAccess();
  static SiriLinkSuggestionsFeatureFlags.forceEnabled = a1;
}

uint64_t (*static SiriLinkSuggestionsFeatureFlags.forceEnabled.modify())()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  swift_beginAccess();
  return static SiriLinkSuggestionsFeatureFlags.forceEnabled.modify;
}

uint64_t key path getter for static SiriLinkSuggestionsFeatureFlags.forceEnabled : SiriLinkSuggestionsFeatureFlags.Type@<X0>(void *a1@<X8>)
{
  SiriLinkSuggestionsFeatureFlags.forceEnabled.unsafeMutableAddressor();
  swift_beginAccess();
  *a1 = static SiriLinkSuggestionsFeatureFlags.forceEnabled;
}

uint64_t key path setter for static SiriLinkSuggestionsFeatureFlags.forceEnabled : SiriLinkSuggestionsFeatureFlags.Type(uint64_t *a1)
{
  v1 = *a1;

  SiriLinkSuggestionsFeatureFlags.forceEnabled.unsafeMutableAddressor();
  swift_beginAccess();
  static SiriLinkSuggestionsFeatureFlags.forceEnabled = v1;
}

const char *SiriLinkSuggestionsFeatureFlags.feature.getter(char a1)
{
  if (a1)
  {
    return "appIntents";
  }

  else
  {
    return "link";
  }
}

uint64_t SiriLinkSuggestionsFeatureFlags.isEnabled.getter(char a1)
{
  if (one-time initialization token for forceEnabled != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  swift_beginAccess();
  v2 = static SiriLinkSuggestionsFeatureFlags.forceEnabled;
  v3 = a1 & 1;
  if (*(static SiriLinkSuggestionsFeatureFlags.forceEnabled + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v3), (v5 & 1) != 0))
  {
    v6 = *(*(v2 + 56) + v4);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v8[3] = &type metadata for SiriLinkSuggestionsFeatureFlags;
    v8[4] = lazy protocol witness table accessor for type SiriLinkSuggestionsFeatureFlags and conformance SiriLinkSuggestionsFeatureFlags();
    LOBYTE(v8[0]) = v3;
    v6 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  return v6 & 1;
}

uint64_t static SiriLinkSuggestionsFeatureFlags.isAppIntentsEnabled.getter()
{
  if (SiriLinkSuggestionsFeatureFlags.isEnabled.getter(1))
  {
    return AFDeviceSupportsSystemAssistantExperience();
  }

  else
  {
    return 0;
  }
}

uint64_t SiriLinkSuggestionsFeatureFlags.withForcedEnabled<A>(_:block:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 105) = a5;
  *(v5 + 72) = a3;
  *(v5 + 80) = a4;
  *(v5 + 104) = a2;
  *(v5 + 64) = a1;
  return _swift_task_switch(SiriLinkSuggestionsFeatureFlags.withForcedEnabled<A>(_:block:), 0, 0);
}

uint64_t SiriLinkSuggestionsFeatureFlags.withForcedEnabled<A>(_:block:)()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v1 = *(v0 + 105);
  v2 = *(v0 + 72);
  v3 = *(v0 + 104);
  swift_beginAccess();
  *(v0 + 106) = specialized Dictionary.subscript.getter(v1 & 1, static SiriLinkSuggestionsFeatureFlags.forceEnabled);
  swift_endAccess();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = static SiriLinkSuggestionsFeatureFlags.forceEnabled;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v3, v1 & 1, isUniquelyReferenced_nonNull_native);
  static SiriLinkSuggestionsFeatureFlags.forceEnabled = v11;
  swift_endAccess();
  v10 = (v2 + *v2);
  v5 = v2[1];
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = SiriLinkSuggestionsFeatureFlags.withForcedEnabled<A>(_:block:);
  v7 = *(v0 + 80);
  v8 = *(v0 + 64);

  return v10(v8);
}

{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = SiriLinkSuggestionsFeatureFlags.withForcedEnabled<A>(_:block:);
  }

  else
  {
    v3 = SiriLinkSuggestionsFeatureFlags.withForcedEnabled<A>(_:block:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  $defer #1 <A>() in SiriLinkSuggestionsFeatureFlags.withForcedEnabled<A>(_:block:)(*(v0 + 105) & 1, *(v0 + 106));
  v1 = *(v0 + 8);

  return v1();
}

{
  $defer #1 <A>() in SiriLinkSuggestionsFeatureFlags.withForcedEnabled<A>(_:block:)(*(v0 + 105) & 1, *(v0 + 106));
  v1 = *(v0 + 8);
  v2 = *(v0 + 96);

  return v1();
}

uint64_t $defer #1 <A>() in SiriLinkSuggestionsFeatureFlags.withForcedEnabled<A>(_:block:)(char a1, char a2)
{
  if (a2 == 2)
  {
    if (one-time initialization token for forceEnabled != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    specialized __RawDictionaryStorage.find<A>(_:)(a1 & 1);
    if (v3)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = static SiriLinkSuggestionsFeatureFlags.forceEnabled;
      v5 = static SiriLinkSuggestionsFeatureFlags.forceEnabled;
      static SiriLinkSuggestionsFeatureFlags.forceEnabled = 0x8000000000000000;
      v6 = *(v5 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy25SiriLinkSuggestionsPlugin0cdE12FeatureFlagsOSbGMd, "F/");
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v6);
      lazy protocol witness table accessor for type SiriLinkSuggestionsFeatureFlags and conformance SiriLinkSuggestionsFeatureFlags();
      _NativeDictionary._delete(at:)();
      static SiriLinkSuggestionsFeatureFlags.forceEnabled = v10;
    }
  }

  else
  {
    if (one-time initialization token for forceEnabled != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v8 = swift_isUniquelyReferenced_nonNull_native();
    v11 = static SiriLinkSuggestionsFeatureFlags.forceEnabled;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2 & 1, a1 & 1, v8);
    static SiriLinkSuggestionsFeatureFlags.forceEnabled = v11;
  }

  return swift_endAccess();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SiriLinkSuggestionsFeatureFlags()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  DialogType.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type SiriLinkSuggestionsFeatureFlags and conformance SiriLinkSuggestionsFeatureFlags()
{
  result = lazy protocol witness table cache variable for type SiriLinkSuggestionsFeatureFlags and conformance SiriLinkSuggestionsFeatureFlags;
  if (!lazy protocol witness table cache variable for type SiriLinkSuggestionsFeatureFlags and conformance SiriLinkSuggestionsFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkSuggestionsFeatureFlags and conformance SiriLinkSuggestionsFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkSuggestionsFeatureFlags and conformance SiriLinkSuggestionsFeatureFlags;
  if (!lazy protocol witness table cache variable for type SiriLinkSuggestionsFeatureFlags and conformance SiriLinkSuggestionsFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkSuggestionsFeatureFlags and conformance SiriLinkSuggestionsFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriLinkSuggestionsFeatureFlags and conformance SiriLinkSuggestionsFeatureFlags;
  if (!lazy protocol witness table cache variable for type SiriLinkSuggestionsFeatureFlags and conformance SiriLinkSuggestionsFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriLinkSuggestionsFeatureFlags and conformance SiriLinkSuggestionsFeatureFlags);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriLinkSuggestionsFeatureFlags(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1C46CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_5()
{

  return swift_once();
}

void *_sSD_16uniquingKeysWithSDyxq_Gqd__n_q_q__q_tKXEtKcSTRd__x_q_t7ElementRtd__lufCSS_So16LNActionMetadataCSaySS_AFtGTt1g5096_s25SiriLinkSuggestionsPlugin07DefaultB6ClientC17getActionMetadata19forBundleIdentifierSDySSSo08E23I0CGSS_tKFA2G_AGtXEfU0_Tf1nc_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, void **))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v7 = &_swiftEmptyDictionarySingleton;
  }

  v10 = v7;
  a4(a1, 1, &v10);
  v8 = v10;
  if (v4)
  {
  }

  return v8;
}

uint64_t DefaultLinkClient.appIntentSuggestionsSignposter.unsafeMutableAddressor()
{
  if (one-time initialization token for appIntentSuggestionsSignposter != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v0 = type metadata accessor for OSSignposter();

  return __swift_project_value_buffer(v0, static DefaultLinkClient.appIntentSuggestionsSignposter);
}

uint64_t static DefaultLinkClient.appIntentSuggestionsSignposter.getter()
{
  if (one-time initialization token for appIntentSuggestionsSignposter != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v0 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v0, static DefaultLinkClient.appIntentSuggestionsSignposter);
  v1 = *(*(v0 - 8) + 16);
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t DefaultLinkClient.__allocating_init(metadataProvider:suggestionsProvider:registryObserver:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  DefaultLinkClient.init(metadataProvider:suggestionsProvider:registryObserver:)(a1, a2, a3);
  return v6;
}

void *DefaultLinkClient.init(metadataProvider:suggestionsProvider:registryObserver:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5(&outlined read-only object #0 of DefaultLinkClient.init(metadataProvider:suggestionsProvider:registryObserver:));
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  v3[5] = v7;
  return v3;
}

Swift::OpaquePointer_optional __swiftcall DefaultLinkClient.getLinkEnabledBundleIdentifiers()()
{
  if (one-time initialization token for linkSuggestions != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.linkSuggestions);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Fetching Link-enabled bundles", v4, 2u);
    OUTLINED_FUNCTION_3_2();
  }

  v5 = *(v0 + 16);
  v30 = 0;
  v6 = [v5 bundlesWithError:&v30];
  v7 = v30;
  if (v6)
  {
    v8 = v6;
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v7;

    v11 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_21_0();

    if (OUTLINED_FUNCTION_24_0())
    {
      OUTLINED_FUNCTION_11_2();
      v12 = swift_slowAlloc();
      OUTLINED_FUNCTION_9_3();
      v13 = swift_slowAlloc();
      v30 = v13;
      *v12 = 136315138;
      v14 = Array.description.getter();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v30);

      *(v12 + 4) = v16;
      OUTLINED_FUNCTION_5_3(&dword_0, v17, v18, "Fetched Link-enabled bundles: %s");
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_3_2();

      OUTLINED_FUNCTION_3_2();
    }
  }

  else
  {
    v20 = v30;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_21_0();

    if (OUTLINED_FUNCTION_24_0())
    {
      OUTLINED_FUNCTION_11_2();
      v22 = swift_slowAlloc();
      OUTLINED_FUNCTION_9_3();
      v23 = swift_slowAlloc();
      v30 = v23;
      *v22 = 136315138;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v24 = String.init<A>(describing:)();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v30);

      *(v22 + 4) = v26;
      OUTLINED_FUNCTION_5_3(&dword_0, v27, v28, "Error fetching bundles: %s");
      __swift_destroy_boxed_opaque_existential_1(v23);
      OUTLINED_FUNCTION_3_2();

      OUTLINED_FUNCTION_3_2();
    }

    else
    {
    }

    v9 = 0;
  }

  v29 = v9;
  result.value._rawValue = v29;
  result.is_nil = v19;
  return result;
}

void *DefaultLinkClient.getSuggestedActions(for:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for linkSuggestions != -1)
  {
LABEL_54:
    OUTLINED_FUNCTION_1_0();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.linkSuggestions);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_11_2();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_3();
    v8 = swift_slowAlloc();
    *&v88 = v8;
    *v7 = 136315138;
    v9 = Array.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v88);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v5, v6, "Retrieving suggested actions for requests: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_3_2();

    OUTLINED_FUNCTION_3_2();
  }

  v12 = v2[3];
  v13 = a1[2];
  if (v13)
  {
    *&v88 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for LNSuggestionsRequest, LNSuggestionsRequest_ptr);
    v14 = a1 + 49;
    v15 = v13;
    do
    {
      v16 = *(v14 - 17);
      v17 = *(v14 - 9);
      v18 = *(v14 - 1);
      v19 = *v14;
      v14 += 24;

      LNSuggestionsRequest.__allocating_init(bundleIdentifier:onScreen:explicitRequest:)(v16, v17, v18, v19);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v20 = *(v88 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v15;
    }

    while (v15);
  }

  type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for LNSuggestionsRequest, LNSuggestionsRequest_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  *&v88 = 0;
  v22 = [v12 suggestedActionsForSuggestionsRequests:isa error:&v88];

  v23 = v88;
  if (v22)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17LNSuggestedActionCGMd, &_sSaySo17LNSuggestedActionCGMR);
    v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = _swiftEmptyArrayStorage;
    if (v13)
    {
      v85 = v2;
      *&v88 = _swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
      v25 = v88;
      v26 = a1 + 49;
      do
      {
        v27 = *(v26 - 17);
        v28 = *(v26 - 9);
        v29 = *(v26 - 1);
        v30 = *v26;
        *&v88 = v25;
        v31 = v25[2];
        v32 = v25[3];
        swift_bridgeObjectRetain_n();
        if (v31 >= v32 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v31 + 1, 1);
          v25 = v88;
        }

        v25[2] = v31 + 1;
        v33 = &v25[5 * v31];
        v33[4] = v27;
        v33[5] = v28;
        v33[6] = v27;
        v33[7] = v28;
        *(v33 + 64) = v29;
        *(v33 + 65) = v30;
        v26 += 24;
        --v13;
      }

      while (v13);
      v2 = v85;
    }

    v86 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_25SiriLinkSuggestionsPlugin0G23SuggestedActionsRequestVSaySS_AGtGTt0g5(v25);

    v34 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_21_0();

    if (OUTLINED_FUNCTION_24_0())
    {
      OUTLINED_FUNCTION_11_2();
      v35 = swift_slowAlloc();
      OUTLINED_FUNCTION_9_3();
      v36 = swift_slowAlloc();
      *&v88 = v36;
      *v35 = 136315138;
      v37 = Dictionary.description.getter();
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v88);

      *(v35 + 4) = v39;
      OUTLINED_FUNCTION_5_3(&dword_0, v40, v41, "Found suggested actions: %s");
      __swift_destroy_boxed_opaque_existential_1(v36);
      OUTLINED_FUNCTION_3_2();

      OUTLINED_FUNCTION_3_2();
    }

    v42 = v2[8];
    v84 = v2 + 8;
    OUTLINED_FUNCTION_5_0();
    v45 = v44 & v43;
    v47 = (v46 + 63) >> 6;

    v48 = 0;
    a1 = _swiftEmptyArrayStorage;
    do
    {
      while (1)
      {
        if (!v45)
        {
          while (1)
          {
            v49 = v48 + 1;
            if (__OFADD__(v48, 1))
            {
              break;
            }

            if (v49 >= v47)
            {
              goto LABEL_33;
            }

            v45 = v84[v49];
            ++v48;
            if (v45)
            {
              v48 = v49;
              goto LABEL_22;
            }
          }

          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

LABEL_22:
        v50 = __clz(__rbit64(v45)) | (v48 << 6);
        v51 = v2;
        v52 = (v2[6] + 16 * v50);
        v53 = *v52;
        v54 = v52[1];
        v55 = *(v2[7] + 8 * v50);

        v56 = closure #2 in DefaultLinkClient.getSuggestedActions(for:)(v53, v54, v55, v86);

        v57 = *(v56 + 2);
        v2 = a1[2];
        if (__OFADD__(v2, v57))
        {
          goto LABEL_51;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || v2 + v57 > a1[3] >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          a1 = v58;
        }

        v2 = v51;
        v45 &= v45 - 1;
        if (!*(v56 + 2))
        {
          break;
        }

        if ((a1[3] >> 1) - a1[2] < v57)
        {
          goto LABEL_52;
        }

        swift_arrayInitWithCopy();

        if (v57)
        {
          v59 = a1[2];
          v60 = __OFADD__(v59, v57);
          v61 = v59 + v57;
          if (v60)
          {
            goto LABEL_53;
          }

          a1[2] = v61;
        }
      }
    }

    while (!v57);
    __break(1u);
LABEL_33:

    v62 = 0;
    v63 = a1[2];
    v2 = _swiftEmptyArrayStorage;
LABEL_34:
    v64 = 48 * v62 + 32;
    while (v63 != v62)
    {
      if (v62 >= a1[2])
      {
        goto LABEL_50;
      }

      v65 = *(a1 + v64);
      v66 = *(a1 + v64 + 32);
      v89 = *(a1 + v64 + 16);
      v90 = v66;
      v88 = v65;
      type metadata accessor for DefaultLinkDialogIdProvider(0);
      outlined init with copy of LinkSuggestedAction(&v88, v87);
      if (static DefaultLinkDialogIdProvider.canDialog(action:)(&v88))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v68 = _swiftEmptyArrayStorage[2];
        v67 = _swiftEmptyArrayStorage[3];
        if (v68 >= v67 >> 1)
        {
          v72 = OUTLINED_FUNCTION_19_2(v67);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v72, v68 + 1, 1);
        }

        ++v62;
        _swiftEmptyArrayStorage[2] = v68 + 1;
        v69 = &_swiftEmptyArrayStorage[6 * v68];
        v70 = v88;
        v71 = v90;
        v69[3] = v89;
        v69[4] = v71;
        v69[2] = v70;
        goto LABEL_34;
      }

      outlined destroy of LinkSuggestedAction(&v88);
      v64 += 48;
      ++v62;
    }
  }

  else
  {
    v73 = v88;
    v74 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v75 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_21_0();

    if (OUTLINED_FUNCTION_24_0())
    {
      OUTLINED_FUNCTION_11_2();
      v76 = swift_slowAlloc();
      OUTLINED_FUNCTION_9_3();
      v77 = swift_slowAlloc();
      *&v88 = v77;
      *v76 = 136315138;
      v87[0] = v74;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v78 = String.init<A>(describing:)();
      v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v79, &v88);

      *(v76 + 4) = v80;
      OUTLINED_FUNCTION_5_3(&dword_0, v81, v82, "Error fetching suggested actions: %s");
      __swift_destroy_boxed_opaque_existential_1(v77);
      OUTLINED_FUNCTION_3_2();

      OUTLINED_FUNCTION_3_2();
    }
  }

  return _swiftEmptyArrayStorage;
}

char *closure #2 in DefaultLinkClient.getSuggestedActions(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v6 & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = *(a4 + 56) + 24 * v5;
  v8 = *(v7 + 8);
  v25 = *v7;
  v23 = *(v7 + 17);
  v24 = *(v7 + 16);
  v9 = specialized Array.count.getter(a3);
  if (!v9)
  {
    return _swiftEmptyArrayStorage;
  }

  v10 = v9;
  v11 = v9 & ~(v9 >> 63);

  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v14 = *(a3 + 8 * v13 + 32);
      }

      v15 = v14;

      v16 = [v15 action];
      v17 = [v15 systemProtocol];
      v18 = outlined bridged method (pb) of @objc LNSuggestedAction.dialogParameters.getter(v15);
      if (!v18)
      {
        type metadata accessor for LNSuggestedActionDialogParameterKey(0);
        lazy protocol witness table accessor for type LNSuggestedActionDialogParameterKey and conformance LNSuggestedActionDialogParameterKey();
        v18 = Dictionary.init(dictionaryLiteral:)();
      }

      v19 = v18;

      v21 = _swiftEmptyArrayStorage[2];
      v20 = _swiftEmptyArrayStorage[3];
      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
      }

      ++v13;
      _swiftEmptyArrayStorage[2] = v21 + 1;
      v22 = &_swiftEmptyArrayStorage[6 * v21];
      v22[4] = v25;
      v22[5] = v8;
      *(v22 + 48) = v24;
      *(v22 + 49) = v23;
      v22[7] = v16;
      v22[8] = v17;
      v22[9] = v19;
    }

    while (v10 != v13);

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

Swift::OpaquePointer_optional __swiftcall DefaultLinkClient.getAutoShortcutsByBundleIdentifier()()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  i = type metadata accessor for OSSignpostID();
  v3 = OUTLINED_FUNCTION_14_0(i);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4_3();
  v10 = (v8 - v9);
  __chkstk_darwin(v11);
  v13 = &v55 - v12;
  v14 = type metadata accessor for OSSignposter();
  v15 = OUTLINED_FUNCTION_14_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_5_2();
  v22 = v21 - v20;
  if (one-time initialization token for appIntentSuggestionsSignposter != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v23 = __swift_project_value_buffer(v14, static DefaultLinkClient.appIntentSuggestionsSignposter);
    v62 = v14;
    v63 = v17;
    (*(v17 + 16))(v22, v23, v14);
    static OSSignpostID.exclusive.getter();
    v24 = OSSignposter.logHandle.getter();
    v25 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_0, v24, v25, v27, "getAutoShortcutsByBundleIdentifier", "", v26, 2u);
      OUTLINED_FUNCTION_3_2();
    }

    (v5[2])(v10, v13, i);
    v28 = type metadata accessor for OSSignpostIntervalState();
    OUTLINED_FUNCTION_13_3(v28);
    swift_allocObject();
    OUTLINED_FUNCTION_19_3();
    v29 = OSSignpostIntervalState.init(id:isOpen:)();
    v30 = v5[1];
    v31 = OUTLINED_FUNCTION_14_3();
    v32(v31);
    v33 = [objc_opt_self() sharedPreferences];
    v34 = outlined bridged method (ob) of @objc AFPreferences.languageCode()(v33);
    v36 = v63;
    if (!v35)
    {
      goto LABEL_19;
    }

    v37 = v34;
    v38 = v35;
    if ((DefaultLinkClient.isSupportedDeviceAndLocale(siriLanguage:)(v34, v35) & 1) == 0)
    {

LABEL_19:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14LNAutoShortcutCGMd, &_sSaySo14LNAutoShortcutCGMR);
      Dictionary.init(dictionaryLiteral:)();
      goto LABEL_22;
    }

    v14 = v1;
    v39 = DefaultLinkClient.getLinkEnabledBundleIdentifiers()();
    if (!v39)
    {
      break;
    }

    v17 = v39;
    v58 = v37;
    v59 = v29;
    v60 = v38;
    v13 = 0;
    v1 = 0;
    v40 = v39 + 40;
    v61 = _swiftEmptyArrayStorage;
    v10 = *(v39 + 16);
    v5 = &_s10Foundation12NotificationV36_unconditionallyBridgeFromObjectiveCyACSo14NSNotificationCSgFZ_ptr;
    v57 = v39 + 40;
LABEL_8:
    for (i = (v40 + 16 * v13); ; i += 2)
    {
      if (v10 == v13)
      {

        _sSD_16uniquingKeysWithSDyxq_Gqd__n_q_q__q_tKXEtKcSTRd__x_q_t7ElementRtd__lufCSS_So16LNActionMetadataCSaySS_AFtGTt1g5096_s25SiriLinkSuggestionsPlugin07DefaultB6ClientC17getActionMetadata19forBundleIdentifierSDySSSo08E23I0CGSS_tKFA2G_AGtXEfU0_Tf1nc_nTm(v61, &_ss18_DictionaryStorageCySSSaySo14LNAutoShortcutCGGMd, &_ss18_DictionaryStorageCySSSaySo14LNAutoShortcutCGGMR, specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:));
        v36 = v63;
        goto LABEL_22;
      }

      if (v13 >= *(v17 + 16))
      {
        break;
      }

      v41 = *(i - 1);
      v42 = *i;
      v43 = objc_allocWithZone(LSApplicationRecord);
      swift_bridgeObjectRetain_n();
      v14 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v41, v42, 0);
      if (v14)
      {
        v44 = [objc_opt_self() sharedInstance];
        v55 = v44;
        v56 = String._bridgeToObjectiveC()();
        v45 = [v44 autoShortcutsForApplicationRecord:v14 localeIdentifier:v56];

        type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for LNAutoShortcut, LNAutoShortcut_ptr);
        v56 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = v61[2];
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v61 = v51;
        }

        v47 = v61[2];
        v46 = v61[3];
        v14 = (v47 + 1);
        if (v47 >= v46 >> 1)
        {
          OUTLINED_FUNCTION_19_2(v46);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v61 = v52;
        }

        ++v13;
        v48 = v61;
        v61[2] = v14;
        v49 = &v48[3 * v47];
        v49[4] = v41;
        v49[5] = v42;
        v40 = v57;
        v49[6] = v56;
        goto LABEL_8;
      }

      ++v13;
    }

    __break(1u);
LABEL_24:
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v36 = v63;
LABEL_22:
  OUTLINED_FUNCTION_17_3();
  $defer #1 () in DefaultLinkClient.getAutoShortcutsByBundleIdentifier()();

  (*(v36 + 8))(v22, v62);
  OUTLINED_FUNCTION_48();
  result.value._rawValue = v53;
  result.is_nil = v54;
  return result;
}

uint64_t DefaultLinkClient.isSupportedDeviceAndLocale(siriLanguage:)(uint64_t a1, uint64_t a2)
{
  if (!AFShouldRunAsrOnServerForUOD())
  {
    if (!specialized Set.contains(_:)(a1, a2, *(v2 + 40)) || !AFDeviceSupportsFullSiriUOD())
    {
      if (one-time initialization token for linkSuggestions != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Logger.linkSuggestions);
      v6 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v6, v13))
      {
        v10 = 0;
        goto LABEL_20;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v6, v13, "Device/locale not supported by hybrid or UOD, not donating App Shortcut phrases for SiriHelp", v14, 2u);
      v10 = 0;
      goto LABEL_17;
    }

    if (one-time initialization token for linkSuggestions != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.linkSuggestions);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "Device/locale supported by full UOD, donating App Shortcut phrases for SiriHelp";
      goto LABEL_6;
    }

LABEL_18:
    v10 = 1;
    goto LABEL_20;
  }

  if (one-time initialization token for linkSuggestions != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.linkSuggestions);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v6, v7))
  {
    goto LABEL_18;
  }

  v8 = swift_slowAlloc();
  *v8 = 0;
  v9 = "Device/locale supported by hybrid, donating App Shortcut phrases for SiriHelp";
LABEL_6:
  _os_log_impl(&dword_0, v6, v7, v9, v8, 2u);
  v10 = 1;
LABEL_17:

LABEL_20:

  return v10;
}

void DefaultLinkClient.getAutoShortcutsFor(bundleIdentifier:)()
{
  OUTLINED_FUNCTION_50();
  v46 = v1;
  v3 = v2;
  v4 = type metadata accessor for OSSignpostID();
  v5 = OUTLINED_FUNCTION_14_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4_3();
  v12 = v10 - v11;
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_6_3();
  v14 = type metadata accessor for OSSignposter();
  v15 = OUTLINED_FUNCTION_14_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_5_2();
  v22 = v21 - v20;
  if (one-time initialization token for appIntentSuggestionsSignposter != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v23 = __swift_project_value_buffer(v14, static DefaultLinkClient.appIntentSuggestionsSignposter);
  (*(v17 + 16))(v22, v23, v14);

  static OSSignpostID.exclusive.getter();
  v24 = OSSignposter.logHandle.getter();
  v25 = static os_signpost_type_t.begin.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    OUTLINED_FUNCTION_11_2();
    v45 = v17;
    v26 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_3();
    v27 = swift_slowAlloc();
    v47 = v27;
    *v26 = 136315138;
    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v3, &v47);
    v28 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_0, v24, v25, v28, "getAutoShortcutsForBundle", "BundleId: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_3_2();

    v17 = v45;
    OUTLINED_FUNCTION_3_2();
  }

  (*(v7 + 16))(v12, v0, v4);
  v29 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_13_3(v29);
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  (*(v7 + 8))(v0, v4);
  v30 = [objc_opt_self() sharedPreferences];
  v31 = outlined bridged method (ob) of @objc AFPreferences.languageCode()(v30);
  if (v32)
  {
    if ((DefaultLinkClient.isSupportedDeviceAndLocale(siriLanguage:)(v31, v32) & 1) != 0 && (v33 = objc_allocWithZone(LSApplicationRecord), , v34 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v46, v3, 0), (v38 = v34) != 0))
    {
      v39 = [objc_opt_self() sharedInstance];
      v40 = String._bridgeToObjectiveC()();

      v41 = OUTLINED_FUNCTION_18_1();
      v43 = v17;
      v44 = [v41 v42];

      type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for LNAutoShortcut, LNAutoShortcut_ptr);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v17 = v43;
    }

    else
    {
    }
  }

  $defer #1 () in DefaultLinkClient.getAutoShortcutsByBundleIdentifier()();

  v35 = *(v17 + 8);
  v36 = OUTLINED_FUNCTION_15_2();
  v37(v36);
  OUTLINED_FUNCTION_48();
}

uint64_t DefaultLinkClient.getActionMetadata(forBundleIdentifier:withActionIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OSSignpostID();
  v7 = OUTLINED_FUNCTION_14_0(v6);
  v54 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4_3();
  v53 = v11 - v12;
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_6_3();
  v14 = type metadata accessor for OSSignposter();
  v15 = OUTLINED_FUNCTION_14_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_5_2();
  v22 = (v21 - v20);
  if (one-time initialization token for appIntentSuggestionsSignposter != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v23 = __swift_project_value_buffer(v14, static DefaultLinkClient.appIntentSuggestionsSignposter);
  v57 = v17;
  v58 = v14;
  (*(v17 + 16))(v22, v23, v14);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();

  v56 = v22;
  v24 = OSSignposter.logHandle.getter();
  v25 = static os_signpost_type_t.begin.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    v51 = v6;
    v26 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v26 = 136315394;
    v27 = OUTLINED_FUNCTION_14_3();
    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v29);
    *(v26 + 12) = 2080;
    v59 = a3;
    v52 = a3;

    specialized MutableCollection<>.sort(by:)(&v59);
    if (v3)
    {

      __break(1u);
      return result;
    }

    v30 = Array.description.getter();
    v32 = v31;

    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v60);

    *(v26 + 14) = v33;
    v34 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_0, v24, v25, v34, "getActionMetadata", "BundleId: %s, actionIdentifier - %s", v26, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_2();

    OUTLINED_FUNCTION_3_2();

    v6 = v51;
    a3 = v52;
  }

  else
  {
  }

  (*(v54 + 16))(v53, v4, v6);
  v35 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_13_3(v35);
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  (*(v54 + 8))(v4, v6);
  v36 = *(a3 + 16);
  if (v36)
  {
    v60 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v37 = (a3 + 40);
    do
    {
      v38 = *(v37 - 1);
      v39 = *v37;
      objc_allocWithZone(LNFullyQualifiedActionIdentifier);

      @nonobjc LNFullyQualifiedActionIdentifier.init(actionIdentifier:bundleIdentifier:)();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v40 = v60[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v37 += 2;
      --v36;
    }

    while (v36);
  }

  v41 = *(v55 + 16);
  type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for LNFullyQualifiedActionIdentifier, LNFullyQualifiedActionIdentifier_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v60 = 0;
  v43 = [v41 actionsWithFullyQualifiedIdentifiers:isa error:&v60];

  v44 = v60;
  if (v43)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo16LNActionMetadataCGMd, &_sSDySSSo16LNActionMetadataCGMR);
    v45 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v44;

    v47 = OUTLINED_FUNCTION_14_3();
    specialized Dictionary.subscript.getter(v47, v48, v45);
    OUTLINED_FUNCTION_19_3();

    OUTLINED_FUNCTION_15_2();
  }

  else
  {
    v49 = v60;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v43 = v56;
  }

  $defer #1 () in DefaultLinkClient.getAutoShortcutsByBundleIdentifier()();

  (*(v57 + 8))(v56, v58);
  return v43;
}

void *DefaultLinkClient.getActionMetadata(forBundleIdentifier:)(unint64_t a1)
{
  v69 = a1;
  v66 = type metadata accessor for OSSignpostID();
  v1 = OUTLINED_FUNCTION_14_0(v66);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4_3();
  v65 = v6 - v7;
  __chkstk_darwin(v8);
  v10 = &v62 - v9;
  v11 = type metadata accessor for OSSignposter();
  v12 = OUTLINED_FUNCTION_14_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_5_2();
  v19 = v18 - v17;
  if (one-time initialization token for appIntentSuggestionsSignposter != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v20 = __swift_project_value_buffer(v11, static DefaultLinkClient.appIntentSuggestionsSignposter);
  v63 = v14;
  (*(v14 + 16))(v19, v20, v11);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();

  v68 = v19;
  v21 = OSSignposter.logHandle.getter();
  v22 = static os_signpost_type_t.begin.getter();

  v23 = OS_os_log.signpostsEnabled.getter();
  v64 = v11;
  if (v23)
  {
    OUTLINED_FUNCTION_11_2();
    v24 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_3();
    v25 = swift_slowAlloc();
    v70 = v25;
    *v24 = 136315138;
    v26 = OUTLINED_FUNCTION_14_3();
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v28);
    v29 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_0, v21, v22, v29, "getActionMetadata", "BundleId: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    OUTLINED_FUNCTION_3_2();

    OUTLINED_FUNCTION_3_2();
  }

  (*(v3 + 16))(v65, v10, v66);
  v30 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_13_3(v30);
  swift_allocObject();
  OUTLINED_FUNCTION_19_3();
  v31 = OSSignpostIntervalState.init(id:isOpen:)();
  v32 = *(v3 + 8);
  v33 = OUTLINED_FUNCTION_15_2();
  v34(v33);
  v35 = *(v67 + 16);
  OUTLINED_FUNCTION_14_3();
  v36 = String._bridgeToObjectiveC()();
  v70 = 0;
  v37 = OUTLINED_FUNCTION_18_1();
  v39 = [v37 v38];

  v40 = v70;
  v41 = v68;
  if (v39)
  {
    type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for LNActionMetadata, LNActionMetadata_ptr);
    v42 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v40;

    v44 = specialized Array.count.getter(v42);
    if (v44)
    {
      v45 = v44;
      v70 = _swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44 & ~(v44 >> 63), 0);
      if (v45 < 0)
      {
        __break(1u);
      }

      v67 = v31;
      v46 = 0;
      v47 = v70;
      v69 = v42 & 0xC000000000000001;
      v48 = v42;
      v49 = v45;
      do
      {
        if (v69)
        {
          v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v50 = *(v42 + 8 * v46 + 32);
        }

        v51 = v50;
        v52 = [v50 identifier];
        v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v54;

        v70 = v47;
        v57 = v47[2];
        v56 = v47[3];
        if (v57 >= v56 >> 1)
        {
          v59 = OUTLINED_FUNCTION_19_2(v56);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v59, v57 + 1, 1);
          v47 = v70;
        }

        ++v46;
        v47[2] = v57 + 1;
        v58 = &v47[3 * v57];
        v58[4] = v53;
        v58[5] = v55;
        v58[6] = v51;
        v42 = v48;
      }

      while (v49 != v46);

      v41 = v68;
    }

    else
    {

      v47 = _swiftEmptyArrayStorage;
    }

    v60 = _sSD_16uniquingKeysWithSDyxq_Gqd__n_q_q__q_tKXEtKcSTRd__x_q_t7ElementRtd__lufCSS_So16LNActionMetadataCSaySS_AFtGTt1g5096_s25SiriLinkSuggestionsPlugin07DefaultB6ClientC17getActionMetadata19forBundleIdentifierSDySSSo08E23I0CGSS_tKFA2G_AGtXEfU0_Tf1nc_nTm(v47, &_ss18_DictionaryStorageCySSSo16LNActionMetadataCGMd, &_ss18_DictionaryStorageCySSSo16LNActionMetadataCGMR, specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:));
    OUTLINED_FUNCTION_17_3();
    $defer #1 () in DefaultLinkClient.getAutoShortcutsByBundleIdentifier()();

    (*(v63 + 8))(v41, v64);
  }

  else
  {
    v60 = v70;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    OUTLINED_FUNCTION_17_3();
    $defer #1 () in DefaultLinkClient.getAutoShortcutsByBundleIdentifier()();

    (*(v63 + 8))(v41, v64);
  }

  return v60;
}

uint64_t DefaultLinkClient.getActionState(bundleIdentifier:actionIdentifiers:metadataForPolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 152) = a3;
  *(v4 + 160) = a4;

  return _swift_task_switch(DefaultLinkClient.getActionState(bundleIdentifier:actionIdentifiers:metadataForPolicy:), 0, 0);
}

uint64_t DefaultLinkClient.getActionState(bundleIdentifier:actionIdentifiers:metadataForPolicy:)()
{
  v1 = [objc_opt_self() policyWithActionMetadata:v0[20]];
  v0[10] = 0;
  v2 = [v1 connectionWithError:v0 + 10];
  v0[21] = v2;

  v3 = v0[10];
  if (v2)
  {
    v4 = v0[19];
    v5 = v3;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v0[22] = isa;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = DefaultLinkClient.getActionState(bundleIdentifier:actionIdentifiers:metadataForPolicy:);
    v7 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySDySSSo8NSNumberCGs5Error_pGMd, &_sSccySDySSSo8NSNumberCGs5Error_pGMR);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSDictionary?, @unowned NSError?) -> () with result type [String : NSNumber];
    v0[13] = &block_descriptor;
    v0[14] = v7;
    [v2 fetchStateForAppIntentIdentifiers:isa completionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v8 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = DefaultLinkClient.getActionState(bundleIdentifier:actionIdentifiers:metadataForPolicy:);
  }

  else
  {
    v3 = DefaultLinkClient.getActionState(bundleIdentifier:actionIdentifiers:metadataForPolicy:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSbGMd, &_ss18_DictionaryStorageCySSSbGMR);
  v2 = static _DictionaryStorage.copy(original:)();
  v3 = 0;
  v4 = v1[8];
  OUTLINED_FUNCTION_5_0();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  v28 = v10 + 64;
  if ((v6 & v5) != 0)
  {
    goto LABEL_2;
  }

LABEL_3:
  v12 = v3;
  while (1)
  {
    v3 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_15;
    }

    if (v3 >= v9)
    {
      break;
    }

    v13 = v1[v3 + 8];
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v7 = (v13 - 1) & v13;
      while (2)
      {
        v14 = v11 | (v3 << 6);
        v15 = (v1[6] + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(v1[7] + 8 * v14);

        v19 = [v18 BOOLValue];
        *(v28 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        v20 = (v2[6] + 16 * v14);
        *v20 = v17;
        v20[1] = v16;
        *(v2[7] + v14) = v19;
        v21 = v2[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (!v22)
        {
          v2[2] = v23;
          if (!v7)
          {
            goto LABEL_3;
          }

LABEL_2:
          v11 = __clz(__rbit64(v7));
          v7 &= v7 - 1;
          continue;
        }

        break;
      }

LABEL_15:
      __break(1u);
    }
  }

  v24 = *(v27 + 176);

  v25 = *(v27 + 8);

  return v25(v2);
}

{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  swift_willThrow();

  v4 = v0[23];
  v5 = v0[1];

  return v5();
}

uint64_t specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

void DefaultLinkClient.getExamplePhraseTemplates(bundleIdentifier:actionIdentifier:)()
{
  OUTLINED_FUNCTION_50();
  v78 = v0;
  v3 = v2;
  v82 = v4;
  p_ivar_base_size = v5;
  v80 = v7;
  v77 = type metadata accessor for OSSignpostID();
  v8 = OUTLINED_FUNCTION_14_0(v77);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4_3();
  v76 = v13 - v14;
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_6_3();
  v16 = type metadata accessor for OSSignposter();
  v17 = OUTLINED_FUNCTION_14_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_5_2();
  v24 = v23 - v22;
  if (one-time initialization token for appIntentSuggestionsSignposter != -1)
  {
LABEL_53:
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v25 = __swift_project_value_buffer(v16, static DefaultLinkClient.appIntentSuggestionsSignposter);
  v75 = v16;
  (*(v19 + 2))(v24, v25, v16);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();

  v26 = OSSignposter.logHandle.getter();
  v27 = static os_signpost_type_t.begin.getter();

  v81 = v3;
  v79 = v19;
  v74 = v24;
  if (OS_os_log.signpostsEnabled.getter())
  {
    v28 = swift_slowAlloc();
    v83[0] = swift_slowAlloc();
    *v28 = 136315394;
    v29 = v80;
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, p_ivar_base_size, v83);
    *(v28 + 14) = OUTLINED_FUNCTION_12_2(v30);
    v31 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_0, v26, v27, v31, "getExamplePhraseTemplates", "BundleId: %s, actionIdentifier - %s", v28, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_2();

    OUTLINED_FUNCTION_3_2();
  }

  else
  {

    v29 = v80;
  }

  (*(v10 + 16))(v76, v1, v77);
  v32 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_13_3(v32);
  swift_allocObject();
  v76 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v10 + 8))(v1, v77);
  v33 = *(v78 + 16);
  v34 = String._bridgeToObjectiveC()();
  v83[0] = 0;
  v35 = OUTLINED_FUNCTION_18_1();
  v16 = [v35 v36];

  v37 = v83[0];
  if (!v16)
  {
    v66 = v83[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for appIntentsSuggestions != -1)
    {
      OUTLINED_FUNCTION_4_0();
    }

    v67 = type metadata accessor for Logger();
    __swift_project_value_buffer(v67, static Logger.appIntentsSuggestions);
    OUTLINED_FUNCTION_19_3();

    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v83[0] = swift_slowAlloc();
      *v70 = 136315394;
      v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, p_ivar_base_size, v83);
      *(v70 + 14) = OUTLINED_FUNCTION_12_2(v71);
      _os_log_impl(&dword_0, v68, v69, "error attempting to get phrase templates for bundleIdentifier - %s and actionIdentifier - %s", v70, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_2();

      OUTLINED_FUNCTION_3_2();
    }

    v72 = v74;
    v73 = v75;

    goto LABEL_48;
  }

  v78 = p_ivar_base_size;
  type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for LNExamplePhraseDescription, LNExamplePhraseDescription_ptr);
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  v83[0] = _swiftEmptyArrayStorage;
  v1 = specialized Array.count.getter(v24);
  v10 = 0;
  v3 = v24 & 0xFFFFFFFFFFFFFF8;
  p_ivar_base_size = &AutoShortcutsSuggestionsOwnerDefinitionFactory.ivar_base_size;
  while (v1 != v10)
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v10 >= *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_50;
      }

      v39 = *(v24 + 8 * v10 + 32);
    }

    v16 = v39;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v19 = [v39 parentIdentifier];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    if (v40 == v82 && v42 == v81)
    {
    }

    else
    {
      v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v44 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if ([v16 kind])
    {
LABEL_20:

      goto LABEL_22;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v45 = *(v83[0] + 2);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    OUTLINED_FUNCTION_15_2();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
LABEL_22:
    ++v10;
  }

  v46 = v83[0];
  v1 = specialized Array.count.getter(v83[0]);
  v16 = 0;
  p_ivar_base_size = 0;
  v3 = v46 & 0xC000000000000001;
  v24 = _swiftEmptyArrayStorage;
  while (v1 != v16)
  {
    if (v3)
    {
      v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v16 >= *(v46 + 16))
      {
        goto LABEL_52;
      }

      v47 = *(v46 + 8 * v16 + 32);
    }

    v19 = v47;
    v10 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_51;
    }

    v48 = outlined bridged method (pb) of @objc LNExamplePhraseDescription.phraseTemplate.getter(v47);
    v50 = v49;

    ++v16;
    if (v50)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = *(v24 + 16);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v24 = v54;
      }

      v19 = *(v24 + 16);
      v51 = *(v24 + 24);
      if (v19 >= v51 >> 1)
      {
        OUTLINED_FUNCTION_19_2(v51);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v24 = v55;
      }

      *(v24 + 16) = v19 + 1;
      v52 = v24 + 16 * v19;
      *(v52 + 32) = v48;
      *(v52 + 40) = v50;
      v16 = v10;
    }
  }

  v57 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v56);
  _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5Tm(v57, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5, specialized Sequence._copySequenceContents(initializing:));
  if (one-time initialization token for appIntentsSuggestions != -1)
  {
    OUTLINED_FUNCTION_4_0();
  }

  v58 = type metadata accessor for Logger();
  __swift_project_value_buffer(v58, static Logger.appIntentsSuggestions);

  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();

  v19 = v79;
  if (os_log_type_enabled(v59, v60))
  {
    OUTLINED_FUNCTION_9_3();
    v61 = swift_slowAlloc();
    v83[0] = swift_slowAlloc();
    *v61 = 136315650;
    *(v61 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v78, v83);
    *(v61 + 12) = 2080;
    *(v61 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v81, v83);
    *(v61 + 22) = 2080;
    Array.description.getter();

    v62 = OUTLINED_FUNCTION_17_3();
    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, v64);

    *(v61 + 24) = v65;
    _os_log_impl(&dword_0, v59, v60, "bundleIdentifier - %s with action identifier - %s got examplePhraseTemplates - %s", v61, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_2();

    OUTLINED_FUNCTION_3_2();
  }

  else
  {
  }

  v72 = v74;
  v73 = v75;
LABEL_48:
  $defer #1 () in DefaultLinkClient.getAutoShortcutsByBundleIdentifier()();

  (*(v19 + 1))(v72, v73);
  OUTLINED_FUNCTION_48();
}

void $defer #1 () in DefaultLinkClient.getAutoShortcutsByBundleIdentifier()()
{
  OUTLINED_FUNCTION_50();
  v24 = v0;
  v1 = type metadata accessor for OSSignpostError();
  v2 = OUTLINED_FUNCTION_14_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_5_2();
  v9 = v8 - v7;
  v10 = type metadata accessor for OSSignpostID();
  v11 = OUTLINED_FUNCTION_14_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_5_2();
  v18 = v17 - v16;
  v19 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v20 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v4 + 88))(v9, v1) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v21 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v9, v1);
      v21 = "";
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_0, v19, v20, v23, v24, v21, v22, 2u);
    OUTLINED_FUNCTION_3_2();
  }

  (*(v13 + 8))(v18, v10);
  OUTLINED_FUNCTION_48();
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v4 = 0;
  v10 = result;
  v5 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v5 == v4)
    {

      return v10;
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    ++v4;
    v8 = *(i - 1);
    v7 = *i;

    specialized Set._Variant.insert(_:)(&v9, v8, v7);
  }

  __break(1u);
  return result;
}

void _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo16LNSystemProtocolC_SayAEGTt0g5(unint64_t a1)
{
  specialized Array.count.getter(a1);
  type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for LNSystemProtocol, LNSystemProtocol_ptr);
  lazy protocol witness table accessor for type LNSystemProtocol and conformance NSObject();
  v5[1] = Set.init(minimumCapacity:)();
  v2 = specialized Array.count.getter(a1);
  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_15_2();
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    specialized Set._Variant.insert(_:)(v5, v4);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5Tm(uint64_t a1, void (*a2)(void, void), uint64_t (*a3)(void))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  a2(*(a1 + 16), 0);
  OUTLINED_FUNCTION_16_2();
  v6 = a3();
  outlined consume of [String : Any].Iterator._Variant();
  if (v6 != v4)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufC25SiriLinkSuggestionsPlugin013AutoShortcutsD22OwnerDefinitionFactoryC0F39ShortcutCandidateSuggestionConfiguratorC_SD6ValuesVySSAH_GTt0g5(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo14LNAutoShortcutC_Tt1g5Tm(*(a1 + 16), 0);
  OUTLINED_FUNCTION_16_2();
  v7 = specialized Sequence._copySequenceContents(initializing:)(v4, v5, v6, a1);
  outlined consume of [String : Any].Iterator._Variant();
  if (v7 != v3)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v1;
}

uint64_t DefaultLinkClient.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t DefaultLinkClient.__deallocating_deinit()
{
  DefaultLinkClient.deinit();

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t protocol witness for LinkClient.getActionState(bundleIdentifier:actionIdentifiers:metadataForPolicy:) in conformance DefaultLinkClient(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = protocol witness for LinkClient.getActionState(bundleIdentifier:actionIdentifiers:metadataForPolicy:) in conformance DefaultLinkClient;

  return DefaultLinkClient.getActionState(bundleIdentifier:actionIdentifiers:metadataForPolicy:)(v7, v8, a3, a4);
}

uint64_t protocol witness for LinkClient.getActionState(bundleIdentifier:actionIdentifiers:metadataForPolicy:) in conformance DefaultLinkClient(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

id @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

id @nonobjc LNFullyQualifiedActionIdentifier.init(actionIdentifier:bundleIdentifier:)()
{
  v1 = String._bridgeToObjectiveC()();

  v2 = String._bridgeToObjectiveC()();

  v3 = [v0 initWithActionIdentifier:v1 bundleIdentifier:v2];

  return v3;
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo14LNAutoShortcutC_Tt0g5(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for LNAutoShortcut, LNAutoShortcut_ptr);
      result = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)) = v1;
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

char *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC22IntelligenceFlowShared16RetrievedContextV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (&result[-v10] != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * (&result[-v10] / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC25SiriLinkSuggestionsPlugin0I23SuggestedActionsRequestV_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 24);
  return v4;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo14LNAutoShortcutC_Tt1g5Tm(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = _swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v92, *a1, a3);
LABEL_102:
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

uint64_t outlined bridged method (ob) of @objc AFPreferences.languageCode()(void *a1)
{
  v2 = [a1 languageCode];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (pb) of @objc LNExamplePhraseDescription.phraseTemplate.getter(void *a1)
{
  v1 = [a1 phraseTemplate];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v15 << 9) | (8 * v16)));
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      ++v11;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = *(a4 + 48) + 24 * (v16 | (v15 << 6));
      v19 = *v17;
      v18 = *(v17 + 8);
      v20 = *(v17 + 16);
      LOBYTE(v17) = *(v17 + 17);
      *v11 = v19;
      *(v11 + 8) = v18;
      *(v11 + 16) = v20;
      *(v11 + 17) = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 24;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type [LNAutoShortcut] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [LNAutoShortcut] and conformance [A];
  if (!lazy protocol witness table cache variable for type [LNAutoShortcut] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo14LNAutoShortcutCGMd, &_sSaySo14LNAutoShortcutCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [LNAutoShortcut] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LNSystemProtocol and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type LNSystemProtocol and conformance NSObject;
  if (!lazy protocol witness table cache variable for type LNSystemProtocol and conformance NSObject)
  {
    type metadata accessor for NSTextCheckingResult(255, &lazy cache variable for type metadata for LNSystemProtocol, LNSystemProtocol_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LNSystemProtocol and conformance NSObject);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LNSuggestedActionDialogParameterKey and conformance LNSuggestedActionDialogParameterKey()
{
  result = lazy protocol witness table cache variable for type LNSuggestedActionDialogParameterKey and conformance LNSuggestedActionDialogParameterKey;
  if (!lazy protocol witness table cache variable for type LNSuggestedActionDialogParameterKey and conformance LNSuggestedActionDialogParameterKey)
  {
    type metadata accessor for LNSuggestedActionDialogParameterKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LNSuggestedActionDialogParameterKey and conformance LNSuggestedActionDialogParameterKey);
  }

  return result;
}

void OUTLINED_FUNCTION_5_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_12_2(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2080;
  v5 = *(v3 - 112);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v2, (v3 - 96));
}

uint64_t OUTLINED_FUNCTION_13_3(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 52);
  return result;
}

BOOL OUTLINED_FUNCTION_24_0()
{

  return os_log_type_enabled(v0, v1);
}

void LinkSuggestedAction.init(request:suggestedAction:)(id a1@<X3>, uint64_t a2@<X0>, uint64_t a3@<X1>, __int16 a4@<W2>, uint64_t a5@<X8>)
{
  v10 = [a1 action];
  v11 = [a1 systemProtocol];
  v12 = outlined bridged method (pb) of @objc LNSuggestedAction.dialogParameters.getter(a1);
  if (!v12)
  {
    type metadata accessor for LNSuggestedActionDialogParameterKey(0);
    lazy protocol witness table accessor for type LNSuggestedActionDialogParameterKey and conformance LNSuggestedActionDialogParameterKey();
    v12 = Dictionary.init(dictionaryLiteral:)();
  }

  v13 = v12;

  *a5 = a2;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4 & 1;
  *(a5 + 17) = HIBYTE(a4) & 1;
  *(a5 + 24) = v10;
  *(a5 + 32) = v11;
  *(a5 + 40) = v13;
}

uint64_t LinkSuggestedAction.request.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  *(v0 + 17);

  return v1;
}

void *LinkSuggestedAction.rawDialogParmaters.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  if (v2)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    result = specialized Dictionary.startIndex.getter(v1);
    v6 = result;
    v7 = 0;
    v8 = v1 + 64;
    v29 = v4;
    v30 = v2;
    v28 = v1 + 72;
    v31 = v1 + 64;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v1 + 36) != v4)
      {
        goto LABEL_25;
      }

      v33 = v7;
      v34 = v4;
      v32 = v5;
      v10 = *(*(v1 + 48) + 8 * v6);
      v11 = (*(v1 + 56) + 16 * v6);
      v12 = v11[1];
      v36 = *v11;
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
      v15 = v1;
      v16 = _swiftEmptyArrayStorage[2];
      v17 = _swiftEmptyArrayStorage[3];

      if (v16 >= v17 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v16 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v16 + 1;
      v18 = &_swiftEmptyArrayStorage[4 * v16];
      v18[4] = v35;
      v18[5] = v14;
      v18[6] = v36;
      v18[7] = v12;
      v19 = 1 << *(v15 + 32);
      if (v6 >= v19)
      {
        goto LABEL_26;
      }

      v8 = v31;
      v20 = *(v31 + 8 * v9);
      if ((v20 & (1 << v6)) == 0)
      {
        goto LABEL_27;
      }

      v1 = v15;
      if (*(v15 + 36) != v34)
      {
        goto LABEL_28;
      }

      v21 = v20 & (-2 << (v6 & 0x3F));
      if (v21)
      {
        v19 = __clz(__rbit64(v21)) | v6 & 0x7FFFFFFFFFFFFFC0;
        v22 = v30;
      }

      else
      {
        v23 = v9 << 6;
        v24 = v9 + 1;
        v25 = (v28 + 8 * v9);
        v22 = v30;
        while (v24 < (v19 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = outlined consume of [LNSuggestedActionDialogParameterKey : String].Index._Variant(v6, v34, v32 & 1);
            v19 = __clz(__rbit64(v26)) + v23;
            goto LABEL_19;
          }
        }

        result = outlined consume of [LNSuggestedActionDialogParameterKey : String].Index._Variant(v6, v34, v32 & 1);
      }

LABEL_19:
      v5 = 0;
      v7 = v33 + 1;
      v6 = v19;
      v4 = v29;
      if (v33 + 1 == v22)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_20:

    return _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_SSSaySS_SStGTt0g5(_swiftEmptyArrayStorage);
  }

  return result;
}

uint64_t LinkSuggestedAction.iconSystemImageName.getter()
{
  v1 = *(v0 + 40);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(LNSuggestedActionDialogParameterKeyIconSystemImageName);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = (*(v1 + 56) + 16 * v2);
  v5 = *v4;
  v6 = v4[1];

  return v5;
}

SiriLinkSuggestionsPlugin::LinkSuggestedAction::CodingKeys_optional __swiftcall LinkSuggestedAction.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v3 = stringValue._countAndFlagsBits == 0x74736575716572 && stringValue._object == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_1_3() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = countAndFlagsBits == 0x6E6F69746361 && object == 0xE600000000000000;
    if (v5 || (OUTLINED_FUNCTION_1_3() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = countAndFlagsBits == OUTLINED_FUNCTION_2_2() && object == v6;
      if (v7 || (OUTLINED_FUNCTION_1_3() & 1) != 0)
      {

        return 2;
      }

      else if (countAndFlagsBits == 0xD000000000000010 && 0x8000000000042930 == object)
      {

        return 3;
      }

      else
      {
        v9 = OUTLINED_FUNCTION_1_3();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

Swift::Int LinkSuggestedAction.CodingKeys.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t LinkSuggestedAction.CodingKeys.stringValue.getter(char a1)
{
  result = 0x74736575716572;
  switch(a1)
  {
    case 1:
      result = 0x6E6F69746361;
      break;
    case 2:
      result = OUTLINED_FUNCTION_2_2();
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LinkSuggestedAction.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  LinkSuggestedAction.CodingKeys.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LinkSuggestedAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LinkSuggestedAction.CodingKeys and conformance LinkSuggestedAction.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LinkSuggestedAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LinkSuggestedAction.CodingKeys and conformance LinkSuggestedAction.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t LinkSuggestedAction.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy25SiriLinkSuggestionsPlugin0E15SuggestedActionV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy25SiriLinkSuggestionsPlugin0E15SuggestedActionV10CodingKeysOGMR);
  v5 = OUTLINED_FUNCTION_14_0(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v25 - v8);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = lazy protocol witness table accessor for type LinkSuggestedAction.CodingKeys and conformance LinkSuggestedAction.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = v11;
  v38 = 0;
  lazy protocol witness table accessor for type LinkSuggestedActionsRequest and conformance LinkSuggestedActionsRequest();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v13 = v32;
  v12 = v33;
  v14 = v34;
  v15 = v35;
  v16 = _s25SiriLinkSuggestionsPlugin0B15SuggestedActionV6decode33_A45247CBCD3FCD1A5B59037132DD4F4ELL4type4from3keyxxm_s22KeyedDecodingContainerVyq_Gq_tKSo8NSObjectCRbzSo8NSCodingRzs9CodingKeyR_r0_lFZSo8LNActionC_AC0W4KeysOTtt2g5Tm(v9, 1, &lazy cache variable for type metadata for LNAction, LNAction_ptr);
  v26 = v15;
  v27 = v13;
  v28 = v12;
  v37 = v14;
  v29 = v16;
  v17 = _s25SiriLinkSuggestionsPlugin0B15SuggestedActionV6decode33_A45247CBCD3FCD1A5B59037132DD4F4ELL4type4from3keyxxm_s22KeyedDecodingContainerVyq_Gq_tKSo8NSObjectCRbzSo8NSCodingRzs9CodingKeyR_r0_lFZSo8LNActionC_AC0W4KeysOTtt2g5Tm(v9, 2, &lazy cache variable for type metadata for LNSystemProtocol, LNSystemProtocol_ptr);
  LOBYTE(v32) = 3;
  v18 = static CodableWrapper.decodeDictionary<A, B>(forType:forKey:container:)();
  if (v26)
  {
    v20 = 256;
  }

  else
  {
    v20 = 0;
  }

  LinkSuggestedAction.init(request:action:systemProtocol:rawDialogParameters:)(v27, v28, v20 | v37, v29, v17, v18, v36);
  v21 = OUTLINED_FUNCTION_0_7();
  v22(v21);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v23 = v36[1];
  v24 = v31;
  *v31 = v36[0];
  v24[1] = v23;
  v24[2] = v36[2];
  return result;
}

uint64_t *_s25SiriLinkSuggestionsPlugin0B15SuggestedActionV6decode33_A45247CBCD3FCD1A5B59037132DD4F4ELL4type4from3keyxxm_s22KeyedDecodingContainerVyq_Gq_tKSo8NSObjectCRbzSo8NSCodingRzs9CodingKeyR_r0_lFZSo8LNActionC_AC0W4KeysOTtt2g5Tm(uint64_t *a1, char a2, unint64_t *a3, uint64_t *a4)
{
  v7 = type metadata accessor for NSTextCheckingResult(0, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy25SiriLinkSuggestionsPlugin0E15SuggestedActionV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy25SiriLinkSuggestionsPlugin0E15SuggestedActionV10CodingKeysOGMR);
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (!v4)
  {
    type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, NSKeyedUnarchiver_ptr);
    v8 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    a1 = v8;
    if (!v8)
    {
      lazy protocol witness table accessor for type LinkSuggestedAction.CodingError and conformance LinkSuggestedAction.CodingError();
      swift_allocError();
      a1 = v10;
      *v10 = v7;
      v10[4] = &type metadata for LinkSuggestedAction.CodingKeys;
      v10[5] = lazy protocol witness table accessor for type LinkSuggestedAction.CodingKeys and conformance LinkSuggestedAction.CodingKeys();
      *(a1 + 8) = a2;
      swift_willThrow();
    }

    outlined consume of Data._Representation(v11, v12);
  }

  return a1;
}

uint64_t LinkSuggestedAction.init(request:action:systemProtocol:rawDialogParameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = a6;
  v8 = a5;
  v38 = HIBYTE(a3);
  v9 = a3 & 1;
  v50 = a3 & 1;
  v10 = *(a6 + 16);
  if (v10)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    result = specialized Dictionary.startIndex.getter(v7);
    v14 = result;
    v15 = 0;
    v16 = v7 + 64;
    v44 = v12;
    v45 = v10;
    v43 = v7 + 72;
    v46 = v7 + 64;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(v7 + 32))
    {
      v17 = v14 >> 6;
      if ((*(v16 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v7 + 36) != v12)
      {
        goto LABEL_25;
      }

      v47 = v13;
      v18 = *(v7 + 56);
      v19 = (*(v7 + 48) + 16 * v14);
      v20 = v7;
      v21 = *v19;
      v22 = v19[1];
      v23 = (v18 + 16 * v14);
      v24 = v23[1];
      v48 = v12;
      v49 = *v23;

      v25 = String._bridgeToObjectiveC()();

      v27 = _swiftEmptyArrayStorage[2];
      v26 = _swiftEmptyArrayStorage[3];
      if (v27 >= v26 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v27 + 1;
      v28 = &_swiftEmptyArrayStorage[3 * v27];
      v28[4] = v25;
      v28[5] = v49;
      v28[6] = v24;
      v29 = 1 << *(v20 + 32);
      if (v14 >= v29)
      {
        goto LABEL_26;
      }

      v7 = v20;
      v16 = v46;
      v30 = *(v46 + 8 * v17);
      if ((v30 & (1 << v14)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v7 + 36) != v48)
      {
        goto LABEL_28;
      }

      v31 = v30 & (-2 << (v14 & 0x3F));
      if (v31)
      {
        v29 = __clz(__rbit64(v31)) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v32 = v17 << 6;
        v33 = v17 + 1;
        v34 = (v43 + 8 * v17);
        while (v33 < (v29 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            result = outlined consume of [LNSuggestedActionDialogParameterKey : String].Index._Variant(v14, v48, v47 & 1);
            v29 = __clz(__rbit64(v35)) + v32;
            goto LABEL_19;
          }
        }

        result = outlined consume of [LNSuggestedActionDialogParameterKey : String].Index._Variant(v14, v48, v47 & 1);
      }

LABEL_19:
      v13 = 0;
      ++v15;
      v14 = v29;
      v12 = v44;
      if (v15 == v45)
      {

        v9 = v50;
        v8 = a5;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_22:
    result = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSo35LNSuggestedActionDialogParameterKeya_SSSayAF_SStGTt0g5(_swiftEmptyArrayStorage);
    *a7 = a1;
    *(a7 + 8) = a2;
    *(a7 + 16) = v9;
    *(a7 + 17) = v38 & 1;
    *(a7 + 24) = a4;
    *(a7 + 32) = v8;
    *(a7 + 40) = result;
  }

  return result;
}

uint64_t LinkSuggestedAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy25SiriLinkSuggestionsPlugin0E15SuggestedActionV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy25SiriLinkSuggestionsPlugin0E15SuggestedActionV10CodingKeysOGMR);
  v6 = OUTLINED_FUNCTION_14_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v16 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LinkSuggestedAction.CodingKeys and conformance LinkSuggestedAction.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = *v3;
  v17 = *(v3 + 8);
  v18 = 0;
  lazy protocol witness table accessor for type LinkSuggestedActionsRequest and conformance LinkSuggestedActionsRequest();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v8 + 8))(v12, v5);
  }

  _s25SiriLinkSuggestionsPlugin0B15SuggestedActionV6encode33_A45247CBCD3FCD1A5B59037132DD4F4ELL_4into3keyyx_s22KeyedEncodingContainerVyq_Gzq_tKs9CodingKeyR_r0_lFZSo8LNActionC_AC0T4KeysOTt2g5Tm(*(v3 + 3));
  _s25SiriLinkSuggestionsPlugin0B15SuggestedActionV6encode33_A45247CBCD3FCD1A5B59037132DD4F4ELL_4into3keyyx_s22KeyedEncodingContainerVyq_Gzq_tKs9CodingKeyR_r0_lFZSo8LNActionC_AC0T4KeysOTt2g5Tm(*(v3 + 4));
  LOBYTE(v16) = 3;
  v14 = LinkSuggestedAction.rawDialogParmaters.getter();
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v14);

  static CodableWrapper.encodeDictionary<A>(to:forKey:instance:)();
  (*(v8 + 8))(v12, v5);
}

uint64_t _s25SiriLinkSuggestionsPlugin0B15SuggestedActionV6encode33_A45247CBCD3FCD1A5B59037132DD4F4ELL_4into3keyyx_s22KeyedEncodingContainerVyq_Gzq_tKs9CodingKeyR_r0_lFZSo8LNActionC_AC0T4KeysOTt2g5Tm(uint64_t a1)
{
  v8[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v8];
  v2 = v8[0];
  if (v1)
  {
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v8[0] = v3;
    v8[1] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy25SiriLinkSuggestionsPlugin0E15SuggestedActionV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy25SiriLinkSuggestionsPlugin0E15SuggestedActionV10CodingKeysOGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    return outlined consume of Data._Representation(v3, v5);
  }

  else
  {
    v7 = v2;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

double protocol witness for Decodable.init(from:) in conformance LinkSuggestedAction@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  LinkSuggestedAction.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t outlined bridged method (pb) of @objc LNSuggestedAction.dialogParameters.getter(void *a1)
{
  v1 = [a1 dialogParameters];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for LNSuggestedActionDialogParameterKey(0);
  lazy protocol witness table accessor for type LNSuggestedActionDialogParameterKey and conformance LNSuggestedActionDialogParameterKey();
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t lazy protocol witness table accessor for type LinkSuggestedAction.CodingKeys and conformance LinkSuggestedAction.CodingKeys()
{
  result = lazy protocol witness table cache variable for type LinkSuggestedAction.CodingKeys and conformance LinkSuggestedAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type LinkSuggestedAction.CodingKeys and conformance LinkSuggestedAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkSuggestedAction.CodingKeys and conformance LinkSuggestedAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkSuggestedAction.CodingKeys and conformance LinkSuggestedAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type LinkSuggestedAction.CodingKeys and conformance LinkSuggestedAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkSuggestedAction.CodingKeys and conformance LinkSuggestedAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkSuggestedAction.CodingKeys and conformance LinkSuggestedAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type LinkSuggestedAction.CodingKeys and conformance LinkSuggestedAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkSuggestedAction.CodingKeys and conformance LinkSuggestedAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkSuggestedAction.CodingKeys and conformance LinkSuggestedAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type LinkSuggestedAction.CodingKeys and conformance LinkSuggestedAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkSuggestedAction.CodingKeys and conformance LinkSuggestedAction.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LinkSuggestedActionsRequest and conformance LinkSuggestedActionsRequest()
{
  result = lazy protocol witness table cache variable for type LinkSuggestedActionsRequest and conformance LinkSuggestedActionsRequest;
  if (!lazy protocol witness table cache variable for type LinkSuggestedActionsRequest and conformance LinkSuggestedActionsRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkSuggestedActionsRequest and conformance LinkSuggestedActionsRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkSuggestedActionsRequest and conformance LinkSuggestedActionsRequest;
  if (!lazy protocol witness table cache variable for type LinkSuggestedActionsRequest and conformance LinkSuggestedActionsRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkSuggestedActionsRequest and conformance LinkSuggestedActionsRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkSuggestedActionsRequest and conformance LinkSuggestedActionsRequest;
  if (!lazy protocol witness table cache variable for type LinkSuggestedActionsRequest and conformance LinkSuggestedActionsRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkSuggestedActionsRequest and conformance LinkSuggestedActionsRequest);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LinkSuggestedAction(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LinkSuggestedAction(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LinkSuggestedAction.CodingError(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LinkSuggestedAction.CodingError(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LinkSuggestedAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LinkSuggestedAction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x23A34);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t specialized Dictionary.startIndex.getter(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

unint64_t lazy protocol witness table accessor for type LinkSuggestedAction.CodingError and conformance LinkSuggestedAction.CodingError()
{
  result = lazy protocol witness table cache variable for type LinkSuggestedAction.CodingError and conformance LinkSuggestedAction.CodingError;
  if (!lazy protocol witness table cache variable for type LinkSuggestedAction.CodingError and conformance LinkSuggestedAction.CodingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkSuggestedAction.CodingError and conformance LinkSuggestedAction.CodingError);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_3()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    OUTLINED_FUNCTION_15(v6);
    (*(v8 + 16))(a3, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v9, 1, v7);
}

void *specialized Collection.first.getter(uint64_t a1)
{
  result = specialized Dictionary.startIndex.getter(a1);
  if (v4)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result == (1 << *(a1 + 32)))
  {
    return 0;
  }

  else
  {
    return specialized Dictionary.subscript.getter(&v5, result, v3, 0, a1);
  }
}