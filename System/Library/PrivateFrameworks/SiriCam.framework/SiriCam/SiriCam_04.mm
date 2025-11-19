unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = *v4;
  v10 = *v4 + 32;
  v11 = v10 + 40 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam31UncertaintyPromptActionEnforcer_pMd, &_s7SiriCam31UncertaintyPromptActionEnforcer_pMR);
  result = swift_arrayDestroy();
  v12 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = v11 + 40 * a3;
  if (!v12)
  {
LABEL_7:
    if (a3 < 1)
    {
      return outlined destroy of (CamLogOutput, CamModelMetadata)(a4, &_ss15CollectionOfOneVy7SiriCam31UncertaintyPromptActionEnforcer_pGMd, &_ss15CollectionOfOneVy7SiriCam31UncertaintyPromptActionEnforcer_pGMR);
    }

    for (i = 0; (i & 1) == 0; i = 1)
    {
      result = outlined init with copy of SignalProviding(a4, v11);
      v11 += 40;
      if (v11 >= v13)
      {
        return outlined destroy of (CamLogOutput, CamModelMetadata)(a4, &_ss15CollectionOfOneVy7SiriCam31UncertaintyPromptActionEnforcer_pGMd, &_ss15CollectionOfOneVy7SiriCam31UncertaintyPromptActionEnforcer_pGMR);
      }
    }

    goto LABEL_15;
  }

  v14 = *(v9 + 16);
  if (__OFSUB__(v14, a2))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = specialized UnsafeMutablePointer.moveInitialize(from:count:)(v10 + 40 * a2, v14 - a2, v11 + 40 * a3);
  v15 = *(v9 + 16);
  v16 = __OFADD__(v15, v12);
  v17 = v15 + v12;
  if (!v16)
  {
    *(v9 + 16) = v17;
    goto LABEL_7;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_9()
{

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t MixingModelHandler.deinit()
{
  outlined destroy of MixingModel(v0 + 16);
  v1 = *(v0 + 112);

  outlined destroy of CamModelMetadata(v0 + OBJC_IVAR____TtC7SiriCam18MixingModelHandler_modelMetadata);
  return v0;
}

uint64_t MixingModelHandler.__deallocating_deinit()
{
  MixingModelHandler.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for MixingModelHandler()
{
  result = type metadata singleton initialization cache for MixingModelHandler;
  if (!type metadata singleton initialization cache for MixingModelHandler)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for MixingModelHandler()
{
  result = type metadata accessor for CamModelMetadata();
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

void AutoConfirmSequentialEnforcer.enforce(inputFeatures:autoSendOutput:autoSendInput:modelMetadata:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v11 = *(a5 + 16);
  v12 = (a5 + 32);
  if (v11)
  {
    while (1)
    {
      v13 = v12[3];
      v14 = v12[4];
      __swift_project_boxed_opaque_existential_1(v12, v13);
      (*(v14 + 8))(v23, a1, a2, a3, a4, v13, v14);
      v15 = v24;
      if (v24)
      {
        break;
      }

      v12 += 5;
      if (!--v11)
      {
        goto LABEL_4;
      }
    }

    v16 = v23[1];
    v17 = LOBYTE(v23[0]);
    if (one-time initialization token for autoSend != -1)
    {
      OUTLINED_FUNCTION_18();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.autoSend);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, v23);
      _os_log_impl(&dword_266790000, v19, v20, "%s has overridden", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_3_1();
    }

    *a6 = v17;
    a6[1] = v16;
    a6[2] = v15;
  }

  else
  {
LABEL_4:
    OUTLINED_FUNCTION_3_13();
  }
}

void AutoConfirmMagicWordsActionEnforcer.enforce(inputFeatures:autoSendOutput:autoSendInput:modelMetadata:)(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v3 = [*(a1 + *(type metadata accessor for AutoSendInput() + 20)) recognition];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 aceRecognition];
    if (!v5)
    {
      __break(1u);
      return;
    }

    v6 = v5;
    _s7SiriCam23TopRecognitionExtractorPAAE03getcD011recognitionSSSo14SASRecognitionC_tKFAA41UncertaintyPromptMagicWordsActionEnforcerV_Tt0g5(v5);

    String.lowercased()();

    lazy protocol witness table accessor for type String and conformance String();
    v7 = OUTLINED_FUNCTION_2_13();
    v8 = OUTLINED_FUNCTION_2_13();

    if (v7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam35AutoConfirmMagicWordsActionEnforcerVmMd, _s7SiriCam35AutoConfirmMagicWordsActionEnforcerVmMR);
      v9 = String.init<A>(describing:)();
      v11 = v10;

      v12 = 1;
LABEL_11:
      *a2 = v12;
      a2[1] = v9;
      a2[2] = v11;
      return;
    }

    if (v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam35AutoConfirmMagicWordsActionEnforcerVmMd, _s7SiriCam35AutoConfirmMagicWordsActionEnforcerVmMR);
      v9 = String.init<A>(describing:)();
      v11 = v13;

      v12 = 2;
      goto LABEL_11;
    }
  }

  OUTLINED_FUNCTION_3_13();
}

void UserDefaultsActionEnforcer.enforce(inputFeatures:autoSendOutput:autoSendInput:modelMetadata:)(void *a1@<X8>)
{
  v2 = CamStringUserDefaults.value.getter();
  if (v3 && (static AutoConfirmAction.action(from:)(v2, v3, &v12), , v4 = v12, v12 != 3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam26UserDefaultsActionEnforcerVmMd, &_s7SiriCam26UserDefaultsActionEnforcerVmMR);
    v10 = String.init<A>(describing:)();
    *a1 = v4;
    a1[1] = v10;
    a1[2] = v11;
  }

  else
  {
    if (one-time initialization token for autoSend != -1)
    {
      OUTLINED_FUNCTION_18();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.autoSend);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_4_8(&dword_266790000, v8, v9, "No user default override");
      OUTLINED_FUNCTION_3_1();
    }

    OUTLINED_FUNCTION_3_13();
  }
}

void ForcedConfirmationActionEnforcer.enforce(inputFeatures:autoSendOutput:autoSendInput:modelMetadata:)(uint64_t a1@<X2>, void *a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for AutoSendInput() + 28)))
  {
    if (ForcedDisambiguation.decision()())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam32ForcedConfirmationActionEnforcerVmMd, &_s7SiriCam32ForcedConfirmationActionEnforcerVmMR);
      v3 = String.init<A>(describing:)();
      *a2 = 1;
      a2[1] = v3;
      a2[2] = v4;
      return;
    }
  }

  else
  {
    if (one-time initialization token for autoSend != -1)
    {
      OUTLINED_FUNCTION_18();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.autoSend);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_4_8(&dword_266790000, v8, v9, "ForcedConfirmationActionEnforcer: user is not opt in");
      OUTLINED_FUNCTION_3_1();
    }
  }

  OUTLINED_FUNCTION_3_13();
}

void Dictionary<>.mock(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(), (v6 & 1) != 0))
  {
    v7 = *(a3 + 16);
    v8 = MEMORY[0x277D84F90];
    if (v7)
    {
      v9 = *(*(a1 + 56) + 8 * v5);
      v49 = MEMORY[0x277D84F90];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
      v8 = v49;
      v12 = specialized Dictionary.startIndex.getter(a3);
      v13 = 0;
      v14 = a3 + 64;
      v42 = v10;
      v43 = v9;
      v41 = a3 + 72;
      v45 = a3 + 64;
      v46 = a3;
      v44 = v7;
      while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a3 + 32))
      {
        v15 = v12 >> 6;
        if ((*(v14 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
        {
          goto LABEL_33;
        }

        if (*(a3 + 36) != v10)
        {
          goto LABEL_34;
        }

        v48 = v10;
        v47 = v11;
        v16 = (*(a3 + 48) + 16 * v12);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a3 + 56) + 8 * v12);
        v20 = *(v9 + 16);

        v21 = v19;
        v22 = v9;
        v23 = v21;
        if (v20)
        {
          v24 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v17);
          if (v25)
          {
            v26 = *(*(v22 + 56) + 8 * v24);

            v23 = v26;
          }
        }

        v27 = v48;
        v28 = v8;
        v50 = v8;
        v29 = *(v8 + 16);
        v30 = *(v28 + 24);
        if (v29 >= v30 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v30 > 1, v29 + 1, 1);
          v27 = v48;
          v28 = v50;
        }

        *(v28 + 16) = v29 + 1;
        v31 = (v28 + 24 * v29);
        v31[4] = v18;
        v31[5] = v17;
        v31[6] = v23;
        a3 = v46;
        v32 = 1 << *(v46 + 32);
        if (v12 >= v32)
        {
          goto LABEL_35;
        }

        v14 = v45;
        v33 = *(v45 + 8 * v15);
        if ((v33 & (1 << v12)) == 0)
        {
          goto LABEL_36;
        }

        v8 = v28;
        if (*(v46 + 36) != v27)
        {
          goto LABEL_37;
        }

        v34 = v33 & (-2 << (v12 & 0x3F));
        if (v34)
        {
          v32 = __clz(__rbit64(v34)) | v12 & 0x7FFFFFFFFFFFFFC0;
          v35 = v44;
        }

        else
        {
          v36 = v15 << 6;
          v37 = v15 + 1;
          v38 = (v41 + 8 * v15);
          v35 = v44;
          while (v37 < (v32 + 63) >> 6)
          {
            v40 = *v38++;
            v39 = v40;
            v36 += 64;
            ++v37;
            if (v40)
            {
              outlined consume of [String : MLFeatureValue].Index._Variant(v12, v27, v47 & 1);
              v32 = __clz(__rbit64(v39)) + v36;
              goto LABEL_24;
            }
          }

          outlined consume of [String : MLFeatureValue].Index._Variant(v12, v27, v47 & 1);
        }

LABEL_24:
        v10 = v42;
        v9 = v43;
        v11 = 0;
        ++v13;
        v12 = v32;
        if (v13 == v35)
        {

          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
    }

    else
    {
LABEL_29:

      _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_So14MLFeatureValueCSaySS_AFtGTt0g5(v8);
    }
  }

  else
  {
  }
}

char *AutoSendHandler.init()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for OSSignpostID();
  v5 = OUTLINED_FUNCTION_22(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  v12 = v11 - v10;
  v33 = OBJC_IVAR____TtC7SiriCam15AutoSendHandler_siriLocale;
  static EnvironmentUtilities.currentSiriLocale.getter();
  if (one-time initialization token for autoSend != -1)
  {
    OUTLINED_FUNCTION_5_12();
    swift_once();
  }

  static Log.autoSend;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_14_10();
  OUTLINED_FUNCTION_18_7();
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  if (one-time initialization token for autoSend != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.autoSend);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = OUTLINED_FUNCTION_22_0();
  if (os_log_type_enabled(v16, v17))
  {
    OUTLINED_FUNCTION_7_5();
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_266790000, v14, v15, "Initialising AutoSend Handler", v18, 2u);
    v2 = v1;
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  v19 = type metadata accessor for AutoSendCoreHandler();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = AutoSendCoreHandler.init()();
  if (v2)
  {
    (*(v7 + 8))(v12, v4);
    v23 = type metadata accessor for Locale();
    OUTLINED_FUNCTION_0_2(v23);
    (*(v24 + 8))(&v3[v33]);
    type metadata accessor for AutoSendHandler();
    v25 = *(*v3 + 48);
    v26 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v3 + 2) = v22;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    v29 = OUTLINED_FUNCTION_22_0();
    if (os_log_type_enabled(v29, v30))
    {
      OUTLINED_FUNCTION_7_5();
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_266790000, v27, v28, "AutoSend Handler initialised successfully", v31, 2u);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_18_7();
    os_signpost(_:dso:log:name:signpostID:)();
    (*(v7 + 8))(v12, v4);
  }

  return v3;
}

uint64_t AutoSendHandler.inferConfirmationImpl(for:withRequestId:resultCandidateId:recipientCrrSignals:featureOptInStatus:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, int a6@<W6>, void *a7@<X8>)
{
  v98 = a6;
  v114 = a4;
  v111 = a2;
  v112 = a3;
  v106 = a7;
  v97 = type metadata accessor for AutoSendInput();
  v9 = OUTLINED_FUNCTION_0_2(v97);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_0();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v17);
  v19 = v95 - v18;
  v115 = type metadata accessor for UUID();
  v20 = OUTLINED_FUNCTION_22(v115);
  v113 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_6_1();
  v27 = MEMORY[0x28223BE20](v26);
  v29 = v95 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = v95 - v30;
  v32 = type metadata accessor for OSSignpostID();
  v33 = OUTLINED_FUNCTION_22(v32);
  v103 = v34;
  v104 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3_0();
  v39 = v38 - v37;
  if (one-time initialization token for autoSend != -1)
  {
    OUTLINED_FUNCTION_5_12();
    swift_once();
  }

  v40 = static Log.autoSend;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  OUTLINED_FUNCTION_14_10();
  v100 = v40;
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  if (one-time initialization token for autoSend != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  v42 = __swift_project_value_buffer(v41, static Logger.autoSend);

  v43 = a1;
  v44 = v112;

  v108 = v42;
  v45 = Logger.logObject.getter();
  LODWORD(v42) = static os_log_type_t.default.getter();

  LODWORD(v101) = v42;
  v46 = os_log_type_enabled(v45, v42);
  v109 = v29;
  v110 = v31;
  v105 = v14;
  v102 = v39;
  v107 = v19;
  v96 = v43;
  if (v46)
  {
    OUTLINED_FUNCTION_11();
    v95[0] = OUTLINED_FUNCTION_16_6();
    v117[0] = v95[0];
    *v14 = 136315650;
    v47 = v43;
    v43 = a5;
    v48 = v47;
    v49 = [v47 description];
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    a5 = v43;
    v29 = v109;

    v53 = v114;
    LOWORD(v49) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, v117);

    OUTLINED_FUNCTION_12_13();
    *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v111, v44, v117);
    *(v14 + 22) = v49;
    v116[0] = v53;
    v116[1] = v43;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v54 = String.init<A>(describing:)();
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, v117);

    *(v14 + 24) = v56;
    v31 = v110;
    _os_log_impl(&dword_266790000, v45, v101, "Handling AutoSend request for speechPackage: %s, requestId: %s and rcId: %s", v14, 0x20u);
    swift_arrayDestroy();
    v19 = v107;
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
    v14 = v105;
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  type metadata accessor for AutoSendHandler();
  static AutoSendHandler.validateRequestId(requestId:)(v31);
  static AutoSendHandler.makeAutoSendIdAndLogRequestLink(requestId:)(v31, v29);
  if (a5)
  {
    swift_bridgeObjectRetain_n();
    v57 = v114;
  }

  else
  {
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    v60 = OUTLINED_FUNCTION_22_0();
    if (os_log_type_enabled(v60, v61))
    {
      OUTLINED_FUNCTION_7_5();
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_266790000, v58, v59, "rcId missing in Siri Signals", v62, 2u);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    a5 = 0xE200000000000000;
    v57 = 12589;
  }

  OUTLINED_FUNCTION_20_7(v19);
  _s7SiriCam0B15LoggingProtocolPAAE3log4from12forRequestId0gbI00g2RcI00g3TrpI00G7Featurey13SourceMessageQz_10Foundation4UUIDVAOSSAOSgAA0bL0OtFZAA08AutoSendH6LoggerV_Tt5B5();
  outlined destroy of UUID?(v19);
  v63 = v97;
  v64 = a5;
  v65 = *(v113 + 16);
  v65(v14 + v97[8], v31, v43);
  v65(v14, v29, v43);
  v66 = v96;
  *(v14 + v63[5]) = v96;
  v67 = (v14 + v63[6]);
  v114 = v57;
  *v67 = v57;
  v67[1] = v64;
  v101 = v64;
  *(v14 + v63[7]) = v98 & 1;
  v68 = *(v99 + 16);
  v69 = v66;

  v70 = AutoSendCoreHandler.handle(_:)(v14);
  v99 = 0;
  v71 = v70;

  v72 = OUTLINED_FUNCTION_19_7(&v118);
  (v65)(v72);
  v73 = v112;

  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v74, v75))
  {
    OUTLINED_FUNCTION_11();
    v116[0] = OUTLINED_FUNCTION_16_6();
    *v14 = 136315650;
    OUTLINED_FUNCTION_1_17();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(v76, v77);
    LODWORD(v108) = v75;
    v78 = v115;
    v79 = dispatch thunk of CustomStringConvertible.description.getter();
    v81 = v80;
    v82 = OUTLINED_FUNCTION_7_11();
    MEMORY[0](v82, v78);
    LOWORD(v79) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, v116);

    OUTLINED_FUNCTION_12_13();
    *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v111, v73, v116);
    *(v14 + 22) = v79;
    LOBYTE(v117[0]) = *(v71 + 57);
    v83 = String.init<A>(describing:)();
    v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v84, v116);

    *(v14 + 24) = v85;
    _os_log_impl(&dword_266790000, v74, v108, "%s, requestid: %s: Sending successful autoSend response : %s", v14, 0x20u);
    swift_arrayDestroy();
    v19 = v107;
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
    v14 = v105;
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  else
  {

    v86 = OUTLINED_FUNCTION_7_11();
    MEMORY[0](v86, v115);
  }

  v87 = v115;
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v115);

  v89 = v109;
  v88 = v110;
  _s7SiriCam0B15LoggingProtocolPAAE3log4from12forRequestId0gbI00g2RcI00g3TrpI00G7Featurey13SourceMessageQz_10Foundation4UUIDVAOSSAOSgAA0bL0OtFZAA22AutoSendResponseLoggerV_Tt5B5();

  outlined destroy of UUID?(v19);
  outlined destroy of AutoSendInput(v14);
  MEMORY[0](v89, v87);
  MEMORY[0](v88, v87);
  v90 = *(v71 + 57);

  v91 = v99 != 0;
  v92 = v106;
  *v106 = v90;
  v92[1] = 0;
  *(v92 + 16) = 0;
  *(v92 + 17) = v91;
  static os_signpost_type_t.end.getter();
  v93 = v102;
  os_signpost(_:dso:log:name:signpostID:)();
  return (*(v103 + 8))(v93, v104);
}

uint64_t static AutoSendHandler.validateRequestId(requestId:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v21 - v4;
  if (one-time initialization token for autoSend != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.autoSend);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = OUTLINED_FUNCTION_11();
    v21[1] = v10;
    *v9 = 136315138;
    v11 = OUTLINED_FUNCTION_10_0();
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v13);
    _os_log_impl(&dword_266790000, v7, v8, "Trying to validate requestId: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  OUTLINED_FUNCTION_10_0();
  UUID.init(uuidString:)();
  v14 = type metadata accessor for UUID();
  if (__swift_getEnumTagSinglePayload(v5, 1, v14) != 1)
  {
    return (*(*(v14 - 8) + 32))(a1, v5, v14);
  }

  outlined destroy of UUID?(v5);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  v17 = OUTLINED_FUNCTION_22_0();
  if (os_log_type_enabled(v17, v18))
  {
    OUTLINED_FUNCTION_7_5();
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_266790000, v15, v16, "Invalid requestId. Generating an unlinked autoSendId to fulfill the runtime request. Skipping request link event logging and using invalid requestId elsewhere. ", v19, 2u);
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  return UUID.init()();
}

void static AutoSendHandler.makeAutoSendIdAndLogRequestLink(requestId:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = OUTLINED_FUNCTION_22(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  v12 = v11 - v10;
  if (one-time initialization token for autoSend != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.autoSend);
  (*(v7 + 16))(v12, a1, v4);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v33 = a2;
    v16 = swift_slowAlloc();
    v17 = OUTLINED_FUNCTION_11();
    v34 = v17;
    *v16 = 136315138;
    OUTLINED_FUNCTION_1_17();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(v18, v19);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    v23 = *(v7 + 8);
    v24 = OUTLINED_FUNCTION_10_0();
    v25(v24);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v34);

    *(v16 + 4) = v26;
    _os_log_impl(&dword_266790000, v14, v15, "Trying to log request link event for requestId: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
    a2 = v33;
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  else
  {

    v27 = *(v7 + 8);
    v28 = OUTLINED_FUNCTION_10_0();
    v29(v28);
  }

  v30 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v32 = [v30 derivedIdentifierForComponent:4 fromSourceIdentifier:isa];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  static CamRequestLinkLogger.log(requestId:camId:)(a1, a2);
}

uint64_t AutoSendHandler.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC7SiriCam15AutoSendHandler_siriLocale;
  v3 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_0_2(v3);
  (*(v4 + 8))(&v0[v2]);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t type metadata completion function for AutoSendHandler()
{
  result = type metadata accessor for Locale();
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

uint64_t outlined destroy of AutoSendInput(uint64_t a1)
{
  v2 = type metadata accessor for AutoSendInput();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_19_7@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 128);
  return result;
}

uint64_t type metadata accessor for AppLaunchTieBreaker()
{
  result = type metadata singleton initialization cache for AppLaunchTieBreaker;
  if (!type metadata singleton initialization cache for AppLaunchTieBreaker)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for AppLaunchTieBreaker()
{
  type metadata accessor for ForcedDisambiguation?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for RankedAction();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t specialized ActionProtocol.isAppLaunchActionFor(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2 == 0xD00000000000001ELL && 0x80000002668194E0 == v2[1];
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v6 = specialized ActionProtocol.getAssociatedAppMentioned()(), v7))
  {
    if (v6 == a1 && v7 == a2)
    {
      v9 = 1;
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t specialized ActionProtocol.getAssociatedAppMentioned()()
{
  v1 = v0;
  v2 = type metadata accessor for CamParse(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CamUSOParse(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RankedAction();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for common == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v14 = type metadata accessor for Logger();
    v15 = __swift_project_value_buffer(v14, static Logger.common);
    _s7SiriCam12RankedActionVWOcTm_0(v1, v13, type metadata accessor for RankedAction);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v57 = v10;
      v19 = v18;
      v20 = swift_slowAlloc();
      v59 = v9;
      v21 = v20;
      v60 = v20;
      *v19 = 136315138;
      i = v1;
      v22 = v2;
      v23 = v15;
      v24 = *v13;
      v25 = *(v13 + 8);

      _s7SiriCam0B5ParseOWOhTm_2(v13, type metadata accessor for RankedAction);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v60);

      *(v19 + 4) = v26;
      v15 = v23;
      v2 = v22;
      v1 = i;
      _os_log_impl(&dword_266790000, v16, v17, "Trying to extract app associated with %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      v27 = v21;
      v9 = v59;
      MEMORY[0x26D5DDCD0](v27, -1, -1);
      v28 = v19;
      v10 = v57;
      MEMORY[0x26D5DDCD0](v28, -1, -1);
    }

    else
    {

      _s7SiriCam0B5ParseOWOhTm_2(v13, type metadata accessor for RankedAction);
    }

    _s7SiriCam12RankedActionVWOcTm_0(v1 + *(v10 + 20), v5, type metadata accessor for CamParse);
    if (swift_getEnumCaseMultiPayload())
    {
      break;
    }

    outlined init with take of CamUSOParse(v5, v9, type metadata accessor for CamUSOParse);
    if (!CamUSOParse.getFirstUserDialogActAsTask()())
    {
      v29 = type metadata accessor for CamUSOParse;
      v30 = v9;
      goto LABEL_7;
    }

    v57 = v15;
    v59 = v9;
    v35 = UsoTask.arguments.getter();

    v9 = (v35 + 64);
    v36 = 1 << *(v35 + 32);
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v13 = v37 & *(v35 + 64);
    v38 = (v36 + 63) >> 6;

    v1 = 0;
    v5 = 0;
    v10 = MEMORY[0x277D84F90];
    for (i = v35; v13; v13 &= v13 - 1)
    {
LABEL_18:
      v62 = *(*(v35 + 56) + ((v1 << 9) | (8 * __clz(__rbit64(v13)))));
      closure #1 in ActionProtocol.getAssociatedAppMentioned()(&v62, &v60);
      v40 = v61;
      if (v61)
      {
        v41 = v60;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = *(v10 + 16);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v10 = v45;
        }

        v42 = *(v10 + 16);
        v2 = v42 + 1;
        if (v42 >= *(v10 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v10 = v46;
        }

        *(v10 + 16) = v2;
        v43 = v10 + 16 * v42;
        *(v43 + 32) = v41;
        *(v43 + 40) = v40;
        v35 = i;
      }
    }

    while (1)
    {
      v39 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v39 >= v38)
      {

        if (*(v10 + 16))
        {
          v34 = *(v10 + 32);
          v47 = *(v10 + 40);
        }

        else
        {
          v34 = 0;
          v47 = 0;
        }

        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v61 = v47;
          v62 = v51;
          *v50 = 136315138;
          v60 = v34;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          v52 = String.init<A>(describing:)();
          v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, &v62);

          *(v50 + 4) = v54;
          _os_log_impl(&dword_266790000, v48, v49, "Extracted %s", v50, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v51);
          MEMORY[0x26D5DDCD0](v51, -1, -1);
          MEMORY[0x26D5DDCD0](v50, -1, -1);
        }

        else
        {
        }

        _s7SiriCam0B5ParseOWOhTm_2(v59, type metadata accessor for CamUSOParse);
        return v34;
      }

      v13 = *&v9[8 * v39];
      ++v1;
      if (v13)
      {
        v1 = v39;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  v29 = type metadata accessor for CamParse;
  v30 = v5;
LABEL_7:
  _s7SiriCam0B5ParseOWOhTm_2(v30, v29);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_266790000, v31, v32, "No USO values found", v33, 2u);
    MEMORY[0x26D5DDCD0](v33, -1, -1);
  }

  return 0;
}

uint64_t AppLaunchTieBreaker.init(tie:)@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  *a2 = 1025;
  v4 = type metadata accessor for AppLaunchTieBreaker();
  outlined init with take of CamUSOParse(a1, a2 + *(v4 + 24), type metadata accessor for RankedAction);
  v5 = type metadata accessor for TopTwo();
  return outlined init with take of CamUSOParse(a1 + *(v5 + 20), a2 + *(v4 + 28), type metadata accessor for RankedAction);
}

Swift::Bool __swiftcall AppLaunchTieBreaker.supportedTie()()
{
  v1 = type metadata accessor for CamParse(0);
  v2 = OUTLINED_FUNCTION_0_2(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CamUSOParse(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RankedAction();
  v12 = OUTLINED_FUNCTION_0_2(v11);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  v20 = type metadata accessor for AppLaunchTieBreaker();
  v21 = v0 + *(v20 + 24);
  v22 = static AppLaunchTieBreaker.isEnabledAppShortcut(_:)(v21);
  v23 = v0 + *(v20 + 28);
  v24 = static AppLaunchTieBreaker.isEnabledAppShortcut(_:)(v23);
  if (v22 & 1) != 0 || (v24)
  {
    v26 = (v22 & 1) == 0;
    if (v22)
    {
      v27 = v23;
    }

    else
    {
      v27 = v21;
    }

    if (v26)
    {
      v28 = v23;
    }

    else
    {
      v28 = v21;
    }

    _s7SiriCam12RankedActionVWOcTm_0(v28, v19, type metadata accessor for RankedAction);
    _s7SiriCam12RankedActionVWOcTm_0(v27, v17, type metadata accessor for RankedAction);
    _s7SiriCam12RankedActionVWOcTm_0(&v19[*(v11 + 20)], v6, type metadata accessor for CamParse);
    if (swift_getEnumCaseMultiPayload())
    {
      v29 = type metadata accessor for CamParse;
      v30 = v6;
    }

    else
    {
      outlined init with take of CamUSOParse(v6, v10, type metadata accessor for CamUSOParse);
      v35 = CamUSOParse.appShortcutInvocation.getter();
      if (v36)
      {
        v37 = v35;
        v38 = v36;

        v25 = specialized ActionProtocol.isAppLaunchActionFor(_:)(v37, v38);

        v39 = OUTLINED_FUNCTION_1_18();
        _s7SiriCam0B5ParseOWOhTm_2(v39, v40);
LABEL_19:
        _s7SiriCam0B5ParseOWOhTm_2(v17, type metadata accessor for RankedAction);
        _s7SiriCam0B5ParseOWOhTm_2(v19, type metadata accessor for RankedAction);
        return v25 & 1;
      }

      v30 = OUTLINED_FUNCTION_1_18();
    }

    _s7SiriCam0B5ParseOWOhTm_2(v30, v29);
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.common);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_266790000, v32, v33, "Could not extract App Shortcut bundle ID", v34, 2u);
      MEMORY[0x26D5DDCD0](v34, -1, -1);
    }

    v25 = 0;
    goto LABEL_19;
  }

  v25 = 0;
  return v25 & 1;
}

void *static AppLaunchTieBreaker.isEnabledAppShortcut(_:)(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for RankedAction() + 44));
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = OUTLINED_FUNCTION_2_14();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = [*(*(v1 + 56) + 8 * v2) int64Value];
  result = specialized Dictionary.subscript.getter(0xD000000000000017, 0x8000000266819CA0, v1);
  if (result)
  {
    v6 = result;
    v7 = [result int64Value];

    if (v7)
    {
      v8 = v4 == 0;
    }

    else
    {
      v8 = 1;
    }

    return !v8;
  }

  return result;
}

uint64_t AppLaunchTieBreaker.actionBoost(features:loggingId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(a1 + 16) && (v6 = OUTLINED_FUNCTION_2_14(), (v7 & 1) != 0) && (v8 = *(*(a1 + 56) + 8 * v6), v9 = [v8 int64Value], v8, v9))
  {
    v10 = 0xED00007475637472;
    v11 = 0x6F68537070417349;
    v12 = 0x3F947AE147AE147BLL;
  }

  else
  {
    v10 = 0x800000026681B3C0;
    v11 = 0xD000000000000015;
    v12 = 0;
  }

  v13 = *(type metadata accessor for ScoreBoost() + 24);
  v14 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_2(v14);
  result = (*(v15 + 16))(a3 + v13, a2);
  *a3 = v12;
  a3[1] = v11;
  a3[2] = v10;
  return result;
}

uint64_t _s7SiriCam12RankedActionVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0_2(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t _s7SiriCam0B5ParseOWOhTm_2(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void CamResponseStatusCode.init(fromError:)(id a1@<X0>, char *a2@<X8>)
{
  v118 = a1;
  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (OUTLINED_FUNCTION_0_17())
  {
    if (v117)
    {
      if (v117 == 1)
      {
        OUTLINED_FUNCTION_2_15(v116, *(&v116 + 1), 1u, v5, v6, v7, v8, v9, v99, v107, v116, *(&v116 + 1), v117, v118);
        v10 = 3;
      }

      else
      {
        OUTLINED_FUNCTION_2_15(v116, *(&v116 + 1), 2u, v5, v6, v7, v8, v9, v99, v107, v116, *(&v116 + 1), v117, v118);
        v10 = 4;
      }
    }

    else
    {
      OUTLINED_FUNCTION_2_15(v116, *(&v116 + 1), 0, v5, v6, v7, v8, v9, v99, v107, v116, *(&v116 + 1), v117, v118);
      v10 = 2;
    }
  }

  else
  {

    OUTLINED_FUNCTION_1_19(v11, v12, v13, v14, v15, v16, v17, v18, v99, v107, v116, *(&v116 + 1), v117, v118);
    if (OUTLINED_FUNCTION_0_17())
    {
      if (v117)
      {
        if (v117 == 1)
        {
          outlined consume of ModelError(v116, *(&v116 + 1), 1u);

          v10 = 8;
        }

        else
        {

          if (v116 == 0)
          {
            v10 = 5;
          }

          else
          {
            v10 = 6;
          }
        }
      }

      else
      {
        outlined consume of ModelError(v116, *(&v116 + 1), 0);

        v10 = 7;
      }
    }

    else
    {

      OUTLINED_FUNCTION_1_19(v19, v20, v21, v22, v23, v24, v25, v26, v100, v108, v116, *(&v116 + 1), v117, v118);
      if (OUTLINED_FUNCTION_0_17())
      {

        v10 = 9;
      }

      else
      {

        OUTLINED_FUNCTION_1_19(v27, v28, v29, v30, v31, v32, v33, v34, v101, v109, v116, *(&v116 + 1), v117, v118);
        if (OUTLINED_FUNCTION_0_17())
        {
          if (v117)
          {
            if (v117 == 1)
            {
              OUTLINED_FUNCTION_2_15(v116, *(&v116 + 1), 1u, v35, v36, v37, v38, v39, v102, v110, v116, *(&v116 + 1), v117, v118);
              v10 = 11;
            }

            else
            {
              OUTLINED_FUNCTION_2_15(v116, *(&v116 + 1), 2u, v35, v36, v37, v38, v39, v102, v110, v116, *(&v116 + 1), v117, v118);
              v10 = 12;
            }
          }

          else
          {
            OUTLINED_FUNCTION_2_15(v116, *(&v116 + 1), 0, v35, v36, v37, v38, v39, v102, v110, v116, *(&v116 + 1), v117, v118);
            v10 = 10;
          }
        }

        else
        {

          OUTLINED_FUNCTION_1_19(v57, v58, v59, v60, v61, v62, v63, v64, v102, v110, v116, *(&v116 + 1), v117, v118);
          if (OUTLINED_FUNCTION_0_17())
          {
            switch(v117)
            {
              case 1:
                OUTLINED_FUNCTION_2_15(v116, *(&v116 + 1), 1u, v65, v66, v67, v68, v69, v103, v112, v116, *(&v116 + 1), v117, v118);
                v10 = 14;
                break;
              case 2:
                OUTLINED_FUNCTION_2_15(v116, *(&v116 + 1), 2u, v65, v66, v67, v68, v69, v103, v112, v116, *(&v116 + 1), v117, v118);
                v10 = 15;
                break;
              case 3:

                if (v116 == 0)
                {
                  v10 = 17;
                }

                else
                {
                  v10 = 18;
                }

                break;
              default:
                OUTLINED_FUNCTION_2_15(v116, *(&v116 + 1), 0, v65, v66, v67, v68, v69, v103, v112, v116, *(&v116 + 1), v117, v118);
                v10 = 13;
                break;
            }
          }

          else
          {

            OUTLINED_FUNCTION_1_19(v70, v71, v72, v73, v74, v75, v76, v77, v103, v112, v116, *(&v116 + 1), v117, v118);
            if (OUTLINED_FUNCTION_0_17())
            {

              v10 = 29;
            }

            else
            {

              OUTLINED_FUNCTION_1_19(v78, v79, v80, v81, v82, v83, v84, v85, v104, v113, v116, *(&v116 + 1), v117, v118);
              if (OUTLINED_FUNCTION_0_17())
              {
                switch(v117)
                {
                  case 1:
                    outlined consume of CamError(v116, *(&v116 + 1), 1u);

                    v10 = 20;
                    break;
                  case 2:
                    outlined consume of CamError(v116, *(&v116 + 1), 2u);

                    v10 = 21;
                    break;
                  case 3:
                    outlined consume of CamError(v116, *(&v116 + 1), 3u);

                    v10 = 22;
                    break;
                  case 4:
                    outlined consume of CamError(v116, *(&v116 + 1), 4u);
                    goto LABEL_46;
                  default:
                    outlined consume of CamError(v116, *(&v116 + 1), 0);

                    v10 = 19;
                    break;
                }
              }

              else
              {

                OUTLINED_FUNCTION_1_19(v86, v87, v88, v89, v90, v91, v92, v93, v105, v114, v116, *(&v116 + 1), v117, v118);
                if (OUTLINED_FUNCTION_0_17())
                {
                  switch(v117)
                  {
                    case 1:
                      OUTLINED_FUNCTION_3_14(v116, *(&v116 + 1), 1u, v94, v95, v96, v97, v98, v106, v115, v116, *(&v116 + 1), v117, v118);
                      v10 = 24;
                      break;
                    case 2:
                      OUTLINED_FUNCTION_3_14(v116, *(&v116 + 1), 2u, v94, v95, v96, v97, v98, v106, v115, v116, *(&v116 + 1), v117, v118);
                      v10 = 25;
                      break;
                    case 3:
                      OUTLINED_FUNCTION_3_14(v116, *(&v116 + 1), 3u, v94, v95, v96, v97, v98, v106, v115, v116, *(&v116 + 1), v117, v118);
                      v10 = 26;
                      break;
                    case 4:
                      OUTLINED_FUNCTION_3_14(v116, *(&v116 + 1), 4u, v94, v95, v96, v97, v98, v106, v115, v116, *(&v116 + 1), v117, v118);
                      v10 = 27;
                      break;
                    case 5:
                      OUTLINED_FUNCTION_3_14(v116, *(&v116 + 1), 5u, v94, v95, v96, v97, v98, v106, v115, v116, *(&v116 + 1), v117, v118);
                      v10 = 28;
                      break;
                    default:
                      OUTLINED_FUNCTION_3_14(v116, *(&v116 + 1), 0, v94, v95, v96, v97, v98, v106, v115, v116, *(&v116 + 1), v117, v118);
                      v10 = 23;
                      break;
                  }
                }

                else
                {
LABEL_46:

                  v10 = 1;
                }
              }
            }
          }
        }
      }
    }
  }

  v40 = dispatch thunk of CustomStringConvertible.description.getter();
  v42 = v41;
  *&v116 = a1;
  v43 = a1;
  v44 = String.init<A>(reflecting:)();
  v46 = v45;
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  __swift_project_value_buffer(v47, static Logger.common);

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v111 = a1;
    v50 = v10;
    v51 = a2;
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *&v116 = v53;
    *v52 = 136315394;
    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v116);

    *(v52 + 4) = v54;
    *(v52 + 12) = 2080;
    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v116);

    *(v52 + 14) = v55;
    _os_log_impl(&dword_266790000, v48, v49, "CamResponseStatusCode %s used for error %s", v52, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v53, -1, -1);
    v56 = v52;
    a2 = v51;
    v10 = v50;
    MEMORY[0x26D5DDCD0](v56, -1, -1);
  }

  else
  {
  }

  *a2 = v10;
}

SiriCam::CamResponseStatusCode_optional __swiftcall CamResponseStatusCode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 12;
  switch(rawValue)
  {
    case 1000:
      v2 = 2;
      break;
    case 1001:
      v2 = 3;
      break;
    case 1002:
      v2 = 4;
      break;
    case 1003:
    case 1004:
    case 1005:
    case 1006:
    case 1007:
    case 1008:
    case 1009:
    case 1014:
    case 1015:
    case 1016:
    case 1017:
    case 1018:
    case 1019:
    case 1021:
    case 1022:
    case 1023:
    case 1024:
    case 1025:
    case 1026:
    case 1027:
    case 1028:
    case 1029:
    case 1033:
    case 1034:
    case 1035:
    case 1036:
    case 1037:
    case 1038:
    case 1039:
    case 1046:
    case 1047:
    case 1048:
    case 1049:
    case 1054:
    case 1055:
    case 1056:
    case 1057:
    case 1058:
    case 1059:
      goto LABEL_7;
    case 1010:
      v2 = 5;
      break;
    case 1011:
      v2 = 6;
      break;
    case 1012:
      v2 = 7;
      break;
    case 1013:
      v2 = 8;
      break;
    case 1020:
      v2 = 9;
      break;
    case 1030:
      v2 = 10;
      break;
    case 1031:
      v2 = 11;
      break;
    case 1032:
      break;
    case 1040:
      v2 = 13;
      break;
    case 1041:
      v2 = 14;
      break;
    case 1042:
      v2 = 15;
      break;
    case 1043:
      v2 = 16;
      break;
    case 1044:
      v2 = 17;
      break;
    case 1045:
      v2 = 18;
      break;
    case 1050:
      v2 = 19;
      break;
    case 1051:
      v2 = 20;
      break;
    case 1052:
      v2 = 21;
      break;
    case 1053:
      v2 = 22;
      break;
    case 1060:
      v2 = 23;
      break;
    case 1061:
      v2 = 24;
      break;
    case 1062:
      v2 = 25;
      break;
    case 1063:
      v2 = 26;
      break;
    case 1064:
      v2 = 27;
      break;
    case 1065:
      v2 = 28;
      break;
    default:
      switch(rawValue)
      {
        case 200:
          v2 = 0;
          break;
        case 1070:
          v2 = 29;
          break;
        case 500:
          v2 = 1;
          break;
        default:
LABEL_7:
          v2 = 30;
          break;
      }

      break;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t lazy protocol witness table accessor for type CamResponseStatusCode and conformance CamResponseStatusCode()
{
  result = lazy protocol witness table cache variable for type CamResponseStatusCode and conformance CamResponseStatusCode;
  if (!lazy protocol witness table cache variable for type CamResponseStatusCode and conformance CamResponseStatusCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamResponseStatusCode and conformance CamResponseStatusCode);
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CamResponseStatusCode@<X0>(uint64_t *a1@<X8>)
{
  result = CamResponseStatusCode.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CamResponseStatusCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE3)
  {
    if (a2 + 29 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 29) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 30;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v5 = v6 - 30;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CamResponseStatusCode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE2)
  {
    v6 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
        break;
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
          *result = a2 + 29;
        }

        break;
    }
  }

  return result;
}

uint64_t outlined consume of AutoConfirmError(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 5u)
  {
  }

  return result;
}

uint64_t outlined consume of CamError(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t outlined consume of ModelError(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t one-time initialization function for savedLocale()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v3, static AssetProvider.savedLocale);
  __swift_project_value_buffer(v0, static AssetProvider.savedLocale);
  static EnvironmentUtilities.currentSiriLocale.getter();
  v8[4] = Locale.identifier.getter();
  v8[5] = v6;
  v8[2] = 45;
  v8[3] = 0xE100000000000000;
  v8[0] = 95;
  v8[1] = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  Locale.init(identifier:)();
  return (*(v1 + 8))(v5, v0);
}

uint64_t static AssetProvider.defaultModel(for:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (one-time initialization token for defaultModelMetadata != -1)
  {
    swift_once();
  }

  v10 = specialized Dictionary.subscript.getter(a3, a4, static AssetMetadataProvider.defaultModelMetadata);
  if (!v10)
  {
    v10 = Dictionary.init(dictionaryLiteral:)();
  }

  v11 = v10;
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.common);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v15 = 136315394;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v26);
    *(v15 + 12) = 2080;
    v16 = Dictionary.description.getter();
    v23 = v14;
    v24 = v11;
    v18 = v13;
    v19 = a1;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v26);
    v5 = v4;

    *(v15 + 14) = v20;
    a1 = v19;
    v21 = v18;
    v11 = v24;
    _os_log_impl(&dword_266790000, v21, v23, "%s: Using default metadata %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v25, -1, -1);
    MEMORY[0x26D5DDCD0](v15, -1, -1);
  }

  else
  {
  }

  static AssetProvider.defaultModelUrl(for:)(a3, a4, a1);
  if (!v5)
  {
    type metadata accessor for AssetMetadataProvider();
    static AssetMetadataProvider.parseAssetMetadata(modelName:metadata:)(a3, a4, v11, a2);
  }
}

unint64_t lazy protocol witness table accessor for type ModelError and conformance ModelError()
{
  result = lazy protocol witness table cache variable for type ModelError and conformance ModelError;
  if (!lazy protocol witness table cache variable for type ModelError and conformance ModelError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelError and conformance ModelError);
  }

  return result;
}

id outlined bridged method (mnbnn) of @objc UAFAssetSetManager.retrieveAssetSet(_:usages:)(uint64_t a1, uint64_t a2, void *a3)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [a3 retrieveAssetSet:a1 usages:isa];

  return v6;
}

void UncertaintyPromptSequentialEnforcer.enforce(inputFeatures:camOutput:camInput:modelMetadata:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v11 = *(a5 + 16);
  v12 = (a5 + 32);
  if (v11)
  {
    while (1)
    {
      v13 = v12[3];
      v14 = v12[4];
      __swift_project_boxed_opaque_existential_1(v12, v13);
      (*(v14 + 8))(v23, a1, a2, a3, a4, v13, v14);
      v15 = v24;
      if (v24)
      {
        break;
      }

      v12 += 5;
      if (!--v11)
      {
        goto LABEL_4;
      }
    }

    v16 = v23[1];
    v17 = LOBYTE(v23[0]);
    if (one-time initialization token for ambiguityHandling != -1)
    {
      OUTLINED_FUNCTION_1_20();
    }

    v18 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_26(v18, static Logger.ambiguityHandling);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_23();
      v22 = OUTLINED_FUNCTION_11();
      v23[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, v23);
      _os_log_impl(&dword_266790000, v19, v20, "%s has overridden", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_3_1();
    }

    *a6 = v17;
    a6[1] = v16;
    a6[2] = v15;
  }

  else
  {
LABEL_4:
    OUTLINED_FUNCTION_3_13();
  }
}

void GiveUpRepeatActionEnforcer.enforce(inputFeatures:camOutput:camInput:modelMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_43_1();
  if (*(a3 + *(type metadata accessor for CamInput() + 36)) == 2 && *(a2 + 56) == 2)
  {
    if (one-time initialization token for ambiguityHandling != -1)
    {
      OUTLINED_FUNCTION_1_20();
    }

    v8 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_26(v8, static Logger.ambiguityHandling);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_34(v10))
    {
      OUTLINED_FUNCTION_23();
      v11 = OUTLINED_FUNCTION_30_4();
      v18 = v11;
      *v4 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam26GiveUpRepeatActionEnforcerVmMd, &_s7SiriCam26GiveUpRepeatActionEnforcerVmMR);
      v12 = String.init<A>(describing:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v18);
      OUTLINED_FUNCTION_70();
      *(v4 + 4) = v5;
      OUTLINED_FUNCTION_25_5(&dword_266790000, v14, v15, "%s detected previous ASK_REPEAT and about to ASK_REPEAT again - overriding to GIVE_UP_REPEAT");
      __swift_destroy_boxed_opaque_existential_0(&v11->Kind);
      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_0_8();
    }

    v18 = &type metadata for GiveUpRepeatActionEnforcer;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam26GiveUpRepeatActionEnforcerVmMd, &_s7SiriCam26GiveUpRepeatActionEnforcerVmMR);
    v16 = OUTLINED_FUNCTION_47_1();
    *v3 = 3;
    v3[1] = v16;
    v3[2] = v17;
  }

  else
  {
    OUTLINED_FUNCTION_3_13();
  }
}

void ExecuteActionEnforcer.enforce(inputFeatures:camOutput:camInput:modelMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_43_1();
  if (*(a3 + *(type metadata accessor for CamInput() + 36)) == 3 && *(a2 + 56) == 2)
  {
    if (one-time initialization token for ambiguityHandling != -1)
    {
      OUTLINED_FUNCTION_1_20();
    }

    v7 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_26(v7, static Logger.ambiguityHandling);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_34(v9))
    {
      OUTLINED_FUNCTION_23();
      v10 = OUTLINED_FUNCTION_30_4();
      v17 = v10;
      *v3 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam21ExecuteActionEnforcerVmMd, &_s7SiriCam21ExecuteActionEnforcerVmMR);
      v11 = String.init<A>(describing:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v17);
      OUTLINED_FUNCTION_70();
      *(v3 + 4) = v4;
      OUTLINED_FUNCTION_25_5(&dword_266790000, v13, v14, "%s detected previous GIVE_UP_REPEAT and about to ASK_REPEAT - overriding to EXECUTE_TOP_HYPOTHESIS");
      __swift_destroy_boxed_opaque_existential_0(&v10->Kind);
      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_0_8();
    }

    v17 = &type metadata for ExecuteActionEnforcer;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam21ExecuteActionEnforcerVmMd, &_s7SiriCam21ExecuteActionEnforcerVmMR);
    v15 = OUTLINED_FUNCTION_47_1();
    OUTLINED_FUNCTION_40_1(v15, v16);
  }

  else
  {
    OUTLINED_FUNCTION_3_13();
  }
}

uint64_t SiriVocabActionEnforcer.getTaskDetailsFromRankedAction(rankedActions:)(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier.NluComponent();
  v63 = *(v2 - 8);
  v3 = *(v63 + 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v54 - v7;
  v9 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v66 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v61 = *(v13 - 8);
  v62 = v13;
  v14 = *(v61 + 64);
  MEMORY[0x28223BE20](v13);
  v60 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v58 = *(v16 - 8);
  v59 = v16;
  v17 = *(v58 + 8);
  MEMORY[0x28223BE20](v16);
  v19 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = v54 - v22;
  v65 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v67 = *(v65 - 8);
  v24 = *(v67 + 64);
  MEMORY[0x28223BE20](v65);
  v64 = v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for CamParse(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for CamUSOParse(0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  if (!*(a1 + 16))
  {
    return 0;
  }

  v57 = v54 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for RankedAction();
  _s7SiriCam0B5ParseOWOcTm_1(a1 + *(v33 + 20) + ((*(*(v33 - 8) + 80) + 32) & ~*(*(v33 - 8) + 80)), v29, type metadata accessor for CamParse);
  if (swift_getEnumCaseMultiPayload())
  {
    v34 = type metadata accessor for CamParse;
    v35 = v29;
LABEL_4:
    _s7SiriCam12RankedActionVWOhTm_1(v35, v34);
    return 0;
  }

  v37 = v57;
  v38 = outlined init with take of RankedAction(v29, v57, type metadata accessor for CamUSOParse);
  v39 = MEMORY[0x26D5DC620](v38);
  specialized Collection.first.getter(v39);

  v40 = v65;
  if (__swift_getEnumTagSinglePayload(v23, 1, v65) == 1)
  {
    _s7SiriCam12RankedActionVWOhTm_1(v37, type metadata accessor for CamUSOParse);
    outlined destroy of (CamLogOutput, CamModelMetadata)(v23, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    return 0;
  }

  v41 = v67;
  (*(v67 + 32))(v64, v23, v40);
  v42 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
  if (!specialized Array.count.getter(v42))
  {

    (*(v41 + 8))(v64, v65);
    v34 = type metadata accessor for CamUSOParse;
    v35 = v57;
    goto LABEL_4;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v42 & 0xC000000000000001) == 0, v42);
  v55 = v8;
  v56 = v6;
  if ((v42 & 0xC000000000000001) != 0)
  {
LABEL_19:
    v54[0] = MEMORY[0x26D5DD230](0, v42);
  }

  else
  {
    v54[0] = *(v42 + 32);
  }

  Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
  v43 = v60;
  Siri_Nlu_External_UserStatedTask.task.getter();
  (*(v58 + 1))(v19, v59);
  v44 = Siri_Nlu_External_UsoGraph.identifiers.getter();
  (*(v61 + 8))(v43, v62);
  v45 = 0;
  v46 = *(v44 + 16);
  v61 = v10 + 16;
  v62 = v46;
  LODWORD(v60) = *MEMORY[0x277D5DD48];
  v58 = v63 + 104;
  v59 = v44;
  v63 += 8;
  v54[1] = v10 + 8;
  while (v62 != v45)
  {
    if (v45 >= *(v44 + 16))
    {
      __break(1u);
      goto LABEL_19;
    }

    v42 = v66;
    (*(v10 + 16))(v66, v44 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v45++, v9);
    v47 = v10;
    v48 = v9;
    v49 = v55;
    Siri_Nlu_External_UsoEntityIdentifier.sourceComponent.getter();
    v50 = v56;
    (*v58)(v56, v60, v2);
    lazy protocol witness table accessor for type Siri_Nl_Core_Protocol_UsoEntityIdentifier.NluComponent and conformance Siri_Nl_Core_Protocol_UsoEntityIdentifier.NluComponent(&lazy protocol witness table cache variable for type Siri_Nlu_External_UsoEntityIdentifier.NluComponent and conformance Siri_Nlu_External_UsoEntityIdentifier.NluComponent, MEMORY[0x277D5DD50]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v19 = v63;
    v51 = *v63;
    v52 = v50;
    v41 = v67;
    (*v63)(v52, v2);
    v53 = v49;
    v9 = v48;
    v10 = v47;
    v51(v53, v2);
    v44 = v59;
    (*(v47 + 8))(v42, v9);
    if (v69 == v68)
    {
      break;
    }
  }

  (*(v41 + 8))(v64, v65);
  _s7SiriCam12RankedActionVWOhTm_1(v57, type metadata accessor for CamUSOParse);
  return v54[0];
}

uint64_t SiriVocabActionEnforcer.getTaskDetailsFromUserParse(topUserParse:)(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier.NluComponent();
  v60 = *(v2 - 8);
  v3 = *(v60 + 8);
  MEMORY[0x28223BE20](v2);
  v61 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSg_AFtMR);
  v5 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v7 = v48 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMd, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v63 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v48 - v13;
  MEMORY[0x28223BE20](v12);
  v64 = v48 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam0B9UserParseOSgMd, &_s7SiriCam0B9UserParseOSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v48 - v18;
  v20 = type metadata accessor for CamUserParse(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = (v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v26 = v48 - v25;
  outlined init with copy of (CamLogOutput, CamModelMetadata)(a1, v19, &_s7SiriCam0B9UserParseOSgMd, &_s7SiriCam0B9UserParseOSgMR);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) != 1)
  {
    outlined init with take of RankedAction(v19, v26, type metadata accessor for CamUserParse);
    _s7SiriCam0B5ParseOWOcTm_1(v26, v24, type metadata accessor for CamUserParse);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s7SiriCam12RankedActionVWOhTm_1(v26, type metadata accessor for CamUserParse);
      v27 = v24;
LABEL_9:
      _s7SiriCam12RankedActionVWOhTm_1(v27, type metadata accessor for CamUserParse);
      return 0;
    }

    v28 = *v24;
    v29 = v24[2];

    v30 = [v28 userDialogActs];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SIRINLUUserDialogAct_pMd, &_sSo20SIRINLUUserDialogAct_pMR);
    v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (specialized Array.count.getter(v31))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v31 & 0xC000000000000001) == 0, v31);
      if ((v31 & 0xC000000000000001) != 0)
      {
        goto LABEL_39;
      }

      v32 = *(v31 + 32);
      swift_unknownObjectRetain();
LABEL_8:
      v33 = v62;

      v35 = static UsoConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
      if (specialized Array.count.getter(v35))
      {
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v35 & 0xC000000000000001) == 0, v35);
        if ((v35 & 0xC000000000000001) != 0)
        {
          v50 = MEMORY[0x26D5DD230](0, v35);
        }

        else
        {
          v50 = *(v35 + 32);
        }

        objc_opt_self();
        v36 = swift_dynamicCastObjCClass();
        if (!v36)
        {

          swift_unknownObjectRelease();
          v27 = v26;
          goto LABEL_9;
        }

        v48[1] = v32;
        v49 = v28;
        v37 = [v36 task];
        v28 = [v37 identifiers];

        type metadata accessor for USOSerializedIdentifier();
        v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v38 = specialized Array.count.getter(v31);
        v58 = v31;
        v59 = v38;
        v39 = 0;
        v56 = v31 & 0xFFFFFFFFFFFFFF8;
        v57 = v31 & 0xC000000000000001;
        v55 = *MEMORY[0x277D5E438];
        v51 = (v60 + 32);
        v53 = (v60 + 8);
        v54 = v60 + 104;
        while (1)
        {
          if (v59 == v39)
          {
            goto LABEL_36;
          }

          if (v57)
          {
            v40 = MEMORY[0x26D5DD230](v39, v58);
          }

          else
          {
            if (v39 >= *(v56 + 16))
            {
              goto LABEL_38;
            }

            v40 = *(v58 + 8 * v39 + 32);
          }

          if (__OFADD__(v39, 1))
          {
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            v32 = MEMORY[0x26D5DD230](0, v31);
            goto LABEL_8;
          }

          v60 = v40;
          v41 = [v40 sourceComponent];
          if (v41)
          {
            v42 = v41;
            v65 = 0;
            v66 = 1;
            static Int._conditionallyBridgeFromObjectiveC(_:result:)();
          }

          v43 = v64;
          Siri_Nl_Core_Protocol_UsoEntityIdentifier.NluComponent.init(rawValue:)();
          (*v54)(v14, v55, v2);
          __swift_storeEnumTagSinglePayload(v14, 0, 1, v2);
          v28 = *(v33 + 48);
          v31 = &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMR;
          outlined init with copy of (CamLogOutput, CamModelMetadata)(v43, v7, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMd, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMR);
          outlined init with copy of (CamLogOutput, CamModelMetadata)(v14, v28 + v7, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMd, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMR);
          if (__swift_getEnumTagSinglePayload(v7, 1, v2) == 1)
          {
            break;
          }

          v44 = v63;
          outlined init with copy of (CamLogOutput, CamModelMetadata)(v7, v63, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMd, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMR);
          if (__swift_getEnumTagSinglePayload(v28 + v7, 1, v2) == 1)
          {
            outlined destroy of (CamLogOutput, CamModelMetadata)(v14, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMd, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMR);
            outlined destroy of (CamLogOutput, CamModelMetadata)(v64, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMd, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMR);
            (*v53)(v44, v2);
LABEL_30:
            outlined destroy of (CamLogOutput, CamModelMetadata)(v7, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSg_AFtMR);

            goto LABEL_32;
          }

          v45 = v61;
          (*v51)(v61, v28 + v7, v2);
          lazy protocol witness table accessor for type Siri_Nl_Core_Protocol_UsoEntityIdentifier.NluComponent and conformance Siri_Nl_Core_Protocol_UsoEntityIdentifier.NluComponent(&lazy protocol witness table cache variable for type Siri_Nl_Core_Protocol_UsoEntityIdentifier.NluComponent and conformance Siri_Nl_Core_Protocol_UsoEntityIdentifier.NluComponent, MEMORY[0x277D5E440]);
          v52 = dispatch thunk of static Equatable.== infix(_:_:)();
          v28 = v53;
          v46 = *v53;
          v47 = v45;
          v33 = v62;
          (*v53)(v47, v2);
          outlined destroy of (CamLogOutput, CamModelMetadata)(v14, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMd, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMR);
          outlined destroy of (CamLogOutput, CamModelMetadata)(v64, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMd, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMR);
          v46(v63, v2);
          outlined destroy of (CamLogOutput, CamModelMetadata)(v7, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMd, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMR);

          if (v52)
          {
            goto LABEL_36;
          }

LABEL_32:
          ++v39;
        }

        outlined destroy of (CamLogOutput, CamModelMetadata)(v14, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMd, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMR);
        outlined destroy of (CamLogOutput, CamModelMetadata)(v43, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMd, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMR);
        if (__swift_getEnumTagSinglePayload(v28 + v7, 1, v2) == 1)
        {
          outlined destroy of (CamLogOutput, CamModelMetadata)(v7, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMd, &_s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV12NluComponentOSgMR);

LABEL_36:
          swift_unknownObjectRelease();

          _s7SiriCam12RankedActionVWOhTm_1(v26, type metadata accessor for CamUserParse);
          return v50;
        }

        goto LABEL_30;
      }

      _s7SiriCam12RankedActionVWOhTm_1(v26, type metadata accessor for CamUserParse);

      swift_unknownObjectRelease();
    }

    else
    {
      _s7SiriCam12RankedActionVWOhTm_1(v26, type metadata accessor for CamUserParse);
    }

    return 0;
  }

  outlined destroy of (CamLogOutput, CamModelMetadata)(v19, &_s7SiriCam0B9UserParseOSgMd, &_s7SiriCam0B9UserParseOSgMR);
  return 0;
}

void SiriVocabActionEnforcer.enforce(inputFeatures:camOutput:camInput:modelMetadata:)()
{
  OUTLINED_FUNCTION_44_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam0B9UserParseOSgMd, &_s7SiriCam0B9UserParseOSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_28_5();
  v8 = type metadata accessor for CamInput();
  v9 = OUTLINED_FUNCTION_39_1(v8);
  if (v10)
  {
    if (!SiriVocabActionEnforcer.getTaskDetailsFromRankedAction(rankedActions:)(v9))
    {
      goto LABEL_44;
    }

    v12 = v11;
  }

  else
  {
    CamInput.topUserParse.getter(v0);
    v13 = SiriVocabActionEnforcer.getTaskDetailsFromUserParse(topUserParse:)(v0);
    v12 = v14;
    outlined destroy of (CamLogOutput, CamModelMetadata)(v0, &_s7SiriCam0B9UserParseOSgMd, &_s7SiriCam0B9UserParseOSgMR);
    if (!v13)
    {
      goto LABEL_44;
    }
  }

  if (*(UsoTask.arguments.getter() + 16))
  {
    v15 = OUTLINED_FUNCTION_27_2();
    specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
    v18 = v17;
  }

  else
  {

    v18 = 0;
  }

  if (UsoTask.verbString.getter() == 1684956531 && v19 == 0xE400000000000000)
  {
  }

  else
  {
    OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_69();
  }

  if (UsoTask.baseEntityAsString.getter() != 0x4D5F6E6F6D6D6F63 || v21 != 0xEE00656761737365)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_69();
    if (v18 & 1) != 0 && (v12)
    {
      goto LABEL_20;
    }

    goto LABEL_26;
  }

  if ((v18 & v12 & 1) == 0)
  {
LABEL_26:
    if (UsoTask.verbString.getter() == 1819042147 && v29 == 0xE400000000000000)
    {
    }

    else
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
      OUTLINED_FUNCTION_69();
    }

    if (UsoTask.baseEntityAsString.getter() == 0xD000000000000010 && 0x800000026681B440 == v31)
    {

      if (v18 & v12)
      {
        if (one-time initialization token for ambiguityHandling != -1)
        {
          OUTLINED_FUNCTION_1_20();
        }

        v33 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_26(v33, static Logger.ambiguityHandling);
        v24 = Logger.logObject.getter();
        v34 = static os_log_type_t.info.getter();
        if (OUTLINED_FUNCTION_10(v34))
        {
          v35 = OUTLINED_FUNCTION_23();
          v43 = OUTLINED_FUNCTION_11();
          *v35 = 136315138;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam0A19VocabActionEnforcerVmMd, &_s7SiriCam0A19VocabActionEnforcerVmMR);
          v36 = OUTLINED_FUNCTION_48_1();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v43);
          OUTLINED_FUNCTION_68();
          *(v35 + 4) = v1;
          OUTLINED_FUNCTION_61_0(&dword_266790000, v38, v39, "%s detected phone call request with contact name");
          OUTLINED_FUNCTION_26_3();
          OUTLINED_FUNCTION_23_6();
        }

        goto LABEL_41;
      }
    }

    else
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
      OUTLINED_FUNCTION_69();
    }

LABEL_44:
    OUTLINED_FUNCTION_3_13();
    goto LABEL_45;
  }

LABEL_20:
  if (one-time initialization token for ambiguityHandling != -1)
  {
    OUTLINED_FUNCTION_1_20();
  }

  v23 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_26(v23, static Logger.ambiguityHandling);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_10(v25))
  {
    OUTLINED_FUNCTION_23();
    v26 = OUTLINED_FUNCTION_30_4();
    *v12 = 136315138;
    v43 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam0A19VocabActionEnforcerVmMd, &_s7SiriCam0A19VocabActionEnforcerVmMR);
    v27 = OUTLINED_FUNCTION_48_1();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v43);
    OUTLINED_FUNCTION_68();
    *(v12 + 4) = v1;
    _os_log_impl(&dword_266790000, v24, v25, "%s detected message sending request with contact name", v12, 0xCu);
    OUTLINED_FUNCTION_26_3();
    OUTLINED_FUNCTION_0_8();
  }

LABEL_41:

  v43 = &type metadata for SiriVocabActionEnforcer;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam0A19VocabActionEnforcerVmMd, &_s7SiriCam0A19VocabActionEnforcerVmMR);
  v40 = OUTLINED_FUNCTION_49_1();
  v42 = v41;

  *v3 = 1;
  v3[1] = v40;
  v3[2] = v42;
LABEL_45:
  OUTLINED_FUNCTION_45_0();
}

void MessageDictationActionEnforcer.enforce(inputFeatures:camOutput:camInput:modelMetadata:)()
{
  OUTLINED_FUNCTION_44_1();
  v151 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam0B9UserParseOSgMd, &_s7SiriCam0B9UserParseOSgMR);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_67();
  v7 = OUTLINED_FUNCTION_0_2(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  v12 = (v10 - v11);
  MEMORY[0x28223BE20](v13);
  v15 = &v145 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  OUTLINED_FUNCTION_14(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v19);
  v148 = &v145 - v20;
  OUTLINED_FUNCTION_21_4();
  v150 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v21 = OUTLINED_FUNCTION_22(v150);
  v147 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_2();
  v146 = v25;
  v26 = OUTLINED_FUNCTION_21_4();
  v27 = type metadata accessor for CamParse(v26);
  v28 = OUTLINED_FUNCTION_0_2(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3_0();
  v33 = v32 - v31;
  v34 = type metadata accessor for CamUSOParse(0);
  v35 = OUTLINED_FUNCTION_14(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2_2();
  v149 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionVSgMd, &_s7SiriCam12RankedActionVSgMR);
  OUTLINED_FUNCTION_14(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v42);
  v44 = &v145 - v43;
  OUTLINED_FUNCTION_56_0();
  v45 = type metadata accessor for RankedAction();
  v46 = OUTLINED_FUNCTION_0_2(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_2_2();
  v50 = v49;
  OUTLINED_FUNCTION_21_4();
  v51 = type metadata accessor for CamInput();
  v52 = OUTLINED_FUNCTION_39_1(v51);
  if (v53)
  {
    specialized Collection.first.getter(v52);
    OUTLINED_FUNCTION_32_3(v44, 1, v45);
    if (v121)
    {
      v54 = &_s7SiriCam12RankedActionVSgMd;
      v55 = &_s7SiriCam12RankedActionVSgMR;
      v56 = v44;
    }

    else
    {
      OUTLINED_FUNCTION_20_8();
      outlined init with take of RankedAction(v44, v50, v57);
      v58 = *(v45 + 20);
      OUTLINED_FUNCTION_6_16();
      _s7SiriCam0B5ParseOWOcTm_1(v50 + v59, v33, v60);
      if (swift_getEnumCaseMultiPayload())
      {
        OUTLINED_FUNCTION_3_15();
        _s7SiriCam12RankedActionVWOhTm_1(v50, v62);
        OUTLINED_FUNCTION_5_13();
        v64 = v33;
LABEL_21:
        _s7SiriCam12RankedActionVWOhTm_1(v64, v63);
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_4_11();
      v70 = v149;
      v72 = outlined init with take of RankedAction(v33, v149, v71);
      v73 = MEMORY[0x26D5DC620](v72);
      v74 = v148;
      specialized Collection.first.getter(v73);

      v75 = v150;
      OUTLINED_FUNCTION_32_3(v74, 1, v150);
      if (!v121)
      {
        v44 = v146;
        v86 = v147;
        (*(v147 + 32))(v146, v74, v75);
        v105 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
        if (specialized Array.count.getter(v105))
        {
          v106 = OUTLINED_FUNCTION_59_0();
          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v106, v107, v108);
          if (v74)
          {
            LOBYTE(v94) = MEMORY[0x26D5DD230](0, v105);
          }

          else
          {
            v94 = *(v105 + 32);
          }

          v109 = UsoTask.arguments.getter();
          v110 = OUTLINED_FUNCTION_27_2();
          v112 = specialized Dictionary.subscript.getter(v110, v111, v109);

          if (v112)
          {
            v113 = OUTLINED_FUNCTION_59_0();
            specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v113, v114, v115);
            if (v109)
            {
              MEMORY[0x26D5DD230](0, v112);
            }

            else
            {
              v116 = *(v112 + 32);
            }

            v103 = dispatch thunk of UsoValue.getAsEntity()();

            (*(v86 + 8))(v44, v75);
            OUTLINED_FUNCTION_0_18();
            _s7SiriCam12RankedActionVWOhTm_1(v70, v117);
            v104 = type metadata accessor for RankedAction;
            goto LABEL_39;
          }
        }

        else
        {
        }

        (*(v86 + 8))(v44, v75);
        OUTLINED_FUNCTION_0_18();
        _s7SiriCam12RankedActionVWOhTm_1(v70, v87);
        v63 = type metadata accessor for RankedAction;
        v64 = v50;
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_0_18();
      _s7SiriCam12RankedActionVWOhTm_1(v70, v76);
      OUTLINED_FUNCTION_3_15();
      _s7SiriCam12RankedActionVWOhTm_1(v50, v77);
      v54 = &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd;
      v55 = &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR;
      v56 = v74;
    }

LABEL_15:
    outlined destroy of (CamLogOutput, CamModelMetadata)(v56, v54, v55);
LABEL_22:
    OUTLINED_FUNCTION_50_1(v151);
    goto LABEL_23;
  }

  CamInput.topUserParse.getter(v0);
  OUTLINED_FUNCTION_32_3(v0, 1, v6);
  if (v121)
  {
    v54 = &_s7SiriCam0B9UserParseOSgMd;
    v55 = &_s7SiriCam0B9UserParseOSgMR;
    v56 = v0;
    goto LABEL_15;
  }

  v65 = OUTLINED_FUNCTION_16_7();
  v50 = v15;
  outlined init with take of RankedAction(v65, v15, v66);
  OUTLINED_FUNCTION_19_8();
  _s7SiriCam0B5ParseOWOcTm_1(v15, v12, v67);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_18_8();
    _s7SiriCam12RankedActionVWOhTm_1(v15, v69);
    v64 = v12;
    v63 = v0;
    goto LABEL_21;
  }

  v78 = *v12;
  v79 = v12[2];

  v80 = [v78 userDialogActs];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SIRINLUUserDialogAct_pMd, &_sSo20SIRINLUUserDialogAct_pMR);
  v81 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!specialized Array.count.getter(v81))
  {
    v88 = OUTLINED_FUNCTION_2_16();
    _s7SiriCam12RankedActionVWOhTm_1(v88, v89);

LABEL_72:

    goto LABEL_22;
  }

  v82 = OUTLINED_FUNCTION_14_12();
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v82, v83, v84);
  if ((v81 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_46_1();
  }

  else
  {
    v85 = *(v81 + 32);
    swift_unknownObjectRetain();
  }

  v90 = static UsoConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
  if (!specialized Array.count.getter(v90))
  {
    v124 = OUTLINED_FUNCTION_2_16();
    _s7SiriCam12RankedActionVWOhTm_1(v124, v125);

LABEL_71:
    swift_unknownObjectRelease();
    goto LABEL_72;
  }

  v91 = OUTLINED_FUNCTION_14_12();
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v91, v92, v93);
  if ((v90 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_46_1();
    LOBYTE(v94) = v144;
  }

  else
  {
    v94 = *(v90 + 32);
  }

  v95 = UsoTask.arguments.getter();
  v96 = OUTLINED_FUNCTION_27_2();
  v98 = specialized Dictionary.subscript.getter(v96, v97, v95);

  if (!v98)
  {
    v133 = OUTLINED_FUNCTION_2_16();
    _s7SiriCam12RankedActionVWOhTm_1(v133, v134);

    goto LABEL_71;
  }

  v99 = OUTLINED_FUNCTION_14_12();
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v99, v100, v101);
  if ((v98 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_46_1();
  }

  else
  {
    v102 = *(v98 + 32);
  }

  v103 = dispatch thunk of UsoValue.getAsEntity()();

  swift_unknownObjectRelease();

  v104 = type metadata accessor for CamUserParse;
LABEL_39:
  _s7SiriCam12RankedActionVWOhTm_1(v50, v104);
  if (!v103)
  {
LABEL_83:

    goto LABEL_22;
  }

  v118 = UsoTask.verbString.getter();
  v120 = v119;

  v121 = v118 == 1684956531 && v120 == 0xE400000000000000;
  if (v121)
  {
LABEL_53:

    goto LABEL_54;
  }

  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_71();
  if ((v118 & 1) == 0)
  {
    if (UsoTask.verbString.getter() != 0x657461647075 || v122 != 0xE600000000000000)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
      OUTLINED_FUNCTION_71();
      if ((v94 & 1) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_54:
  if (UsoTask.baseEntityAsString.getter() == 0x4D5F6E6F6D6D6F63 && v126 == 0xEE00656761737365)
  {
    goto LABEL_65;
  }

  _stringCompareWithSmolCheck(_:_:expecting:)();
  OUTLINED_FUNCTION_71();
  if (v94)
  {
    goto LABEL_66;
  }

  if (UsoTask.baseEntityAsString.getter() == 0xD000000000000013 && 0x800000026681B460 == v128)
  {
LABEL_65:
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_71();
    if ((v94 & 1) == 0)
    {
LABEL_82:

      goto LABEL_83;
    }
  }

LABEL_66:
  v130 = *(UsoEntity.attributes.getter() + 16);

  if (v130 != 1)
  {
    goto LABEL_82;
  }

  if (*(UsoEntity.attributes.getter() + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(0x6F43676E69727473, 0xED0000746E65746ELL);
    v132 = v131;

    if (v132)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  if (!*(UsoEntity.attributes.getter() + 16))
  {

    goto LABEL_22;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(0x746E65746E6F63, 0xE700000000000000);
  v136 = v135;

  if ((v136 & 1) == 0)
  {
    goto LABEL_82;
  }

LABEL_77:
  if (one-time initialization token for ambiguityHandling != -1)
  {
    OUTLINED_FUNCTION_1_20();
  }

  v137 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_26(v137, static Logger.ambiguityHandling);
  v138 = Logger.logObject.getter();
  v139 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v138, v139))
  {
    v140 = OUTLINED_FUNCTION_23();
    v141 = OUTLINED_FUNCTION_11();
    v152 = &type metadata for MessageDictationActionEnforcer;
    v153 = v141;
    *v140 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam30MessageDictationActionEnforcerVmMd, &_s7SiriCam30MessageDictationActionEnforcerVmMR);
    v142 = String.init<A>(describing:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v142, v143, &v153);
    OUTLINED_FUNCTION_68();
    *(v140 + 4) = v44;
    _os_log_impl(&dword_266790000, v138, v139, "%s detected message content dictation", v140, 0xCu);
    OUTLINED_FUNCTION_26_3();
    OUTLINED_FUNCTION_23_6();
  }

  v153 = &type metadata for MessageDictationActionEnforcer;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam30MessageDictationActionEnforcerVmMd, &_s7SiriCam30MessageDictationActionEnforcerVmMR);
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_19_5();

  OUTLINED_FUNCTION_55_0(1);
LABEL_23:
  OUTLINED_FUNCTION_45_0();
}

void UserConfirmationActionEnforcer.enforce(inputFeatures:camOutput:camInput:modelMetadata:)()
{
  OUTLINED_FUNCTION_44_1();
  v109 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam0B9UserParseOSgMd, &_s7SiriCam0B9UserParseOSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_67();
  v8 = OUTLINED_FUNCTION_0_2(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4();
  v13 = (v11 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = &v103 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  OUTLINED_FUNCTION_14(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v20);
  v107 = &v103 - v21;
  OUTLINED_FUNCTION_21_4();
  v108 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v22 = OUTLINED_FUNCTION_22(v108);
  v105 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_2();
  v104 = v26;
  v27 = OUTLINED_FUNCTION_21_4();
  v28 = type metadata accessor for CamParse(v27);
  v29 = OUTLINED_FUNCTION_0_2(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3_0();
  v34 = v33 - v32;
  v35 = type metadata accessor for CamUSOParse(0);
  v36 = OUTLINED_FUNCTION_14(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_2_2();
  v106 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionVSgMd, &_s7SiriCam12RankedActionVSgMR);
  OUTLINED_FUNCTION_14(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_28_5();
  v44 = type metadata accessor for RankedAction();
  v45 = OUTLINED_FUNCTION_0_2(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_3_0();
  v50 = v49 - v48;
  v51 = type metadata accessor for CamInput();
  v52 = OUTLINED_FUNCTION_39_1(v51);
  if (!v53)
  {
    CamInput.topUserParse.getter(v0);
    OUTLINED_FUNCTION_32_3(v0, 1, v7);
    if (!v54)
    {
      v66 = OUTLINED_FUNCTION_16_7();
      outlined init with take of RankedAction(v66, v16, v67);
      OUTLINED_FUNCTION_19_8();
      _s7SiriCam0B5ParseOWOcTm_1(v16, v13, v68);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        OUTLINED_FUNCTION_18_8();
        _s7SiriCam12RankedActionVWOhTm_1(v16, v70);
        v65 = v13;
        v64 = v0;
      }

      else
      {
        v79 = *v13;
        v80 = v13[2];

        v81 = [v79 userDialogActs];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SIRINLUUserDialogAct_pMd, &_sSo20SIRINLUUserDialogAct_pMR);
        OUTLINED_FUNCTION_58();
        v82 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (!specialized Array.count.getter(v82))
        {
          v97 = OUTLINED_FUNCTION_2_16();
          _s7SiriCam12RankedActionVWOhTm_1(v97, v98);

          goto LABEL_17;
        }

        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v82 & 0xC000000000000001) == 0, v82);
        if ((v82 & 0xC000000000000001) != 0)
        {
          MEMORY[0x26D5DD230](0, v82);
        }

        else
        {
          v83 = *(v82 + 32);
          swift_unknownObjectRetain();
        }

        objc_opt_self();
        OUTLINED_FUNCTION_58();
        if (swift_dynamicCastObjCClass() || (objc_opt_self(), OUTLINED_FUNCTION_58(), swift_dynamicCastObjCClass()))
        {
          v110 = &type metadata for UserConfirmationActionEnforcer;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam30UserConfirmationActionEnforcerVmMd, &_s7SiriCam30UserConfirmationActionEnforcerVmMR);
          v84 = OUTLINED_FUNCTION_49_1();
          v86 = v85;
          swift_unknownObjectRelease();

          v87 = OUTLINED_FUNCTION_2_16();
          _s7SiriCam12RankedActionVWOhTm_1(v87, v88);
          v89 = v109;
          *v109 = 1;
          v89[1] = v84;
          v89[2] = v86;
          goto LABEL_18;
        }

        swift_unknownObjectRelease();

        v65 = OUTLINED_FUNCTION_2_16();
      }

      goto LABEL_12;
    }

    v55 = &_s7SiriCam0B9UserParseOSgMd;
    v56 = &_s7SiriCam0B9UserParseOSgMR;
    v57 = v0;
    goto LABEL_16;
  }

  specialized Collection.first.getter(v52);
  OUTLINED_FUNCTION_32_3(v1, 1, v44);
  if (v54)
  {
    v55 = &_s7SiriCam12RankedActionVSgMd;
    v56 = &_s7SiriCam12RankedActionVSgMR;
    v57 = v1;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_20_8();
  outlined init with take of RankedAction(v1, v50, v58);
  v59 = *(v44 + 20);
  OUTLINED_FUNCTION_6_16();
  _s7SiriCam0B5ParseOWOcTm_1(v50 + v60, v34, v61);
  if (!swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_4_11();
    v71 = v106;
    v73 = outlined init with take of RankedAction(v34, v106, v72);
    v74 = MEMORY[0x26D5DC620](v73);
    v75 = v107;
    specialized Collection.first.getter(v74);

    v76 = v108;
    OUTLINED_FUNCTION_32_3(v75, 1, v108);
    if (!v54)
    {
      v90 = v105;
      (*(v105 + 32))(v104, v75, v76);
      v91 = Siri_Nlu_External_UserDialogAct.hasAccepted.getter();
      if (v91 & 1) != 0 || (Siri_Nlu_External_UserDialogAct.hasRejected.getter())
      {
        v110 = &type metadata for UserConfirmationActionEnforcer;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam30UserConfirmationActionEnforcerVmMd, &_s7SiriCam30UserConfirmationActionEnforcerVmMR);
        OUTLINED_FUNCTION_49_1();
        OUTLINED_FUNCTION_19_5();
        v92 = *(v90 + 8);
        v93 = OUTLINED_FUNCTION_57_0();
        v94(v93);
        OUTLINED_FUNCTION_0_18();
        _s7SiriCam12RankedActionVWOhTm_1(v71, v95);
        OUTLINED_FUNCTION_3_15();
        _s7SiriCam12RankedActionVWOhTm_1(v50, v96);
        OUTLINED_FUNCTION_55_0(1);
        goto LABEL_18;
      }

      v99 = *(v90 + 8);
      v100 = OUTLINED_FUNCTION_57_0();
      v101(v100);
      OUTLINED_FUNCTION_0_18();
      _s7SiriCam12RankedActionVWOhTm_1(v71, v102);
      OUTLINED_FUNCTION_3_15();
      v65 = v50;
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_0_18();
    _s7SiriCam12RankedActionVWOhTm_1(v71, v77);
    OUTLINED_FUNCTION_3_15();
    _s7SiriCam12RankedActionVWOhTm_1(v50, v78);
    v55 = &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd;
    v56 = &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR;
    v57 = v75;
LABEL_16:
    outlined destroy of (CamLogOutput, CamModelMetadata)(v57, v55, v56);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_3_15();
  _s7SiriCam12RankedActionVWOhTm_1(v50, v63);
  OUTLINED_FUNCTION_5_13();
  v65 = v34;
LABEL_12:
  _s7SiriCam12RankedActionVWOhTm_1(v65, v64);
LABEL_17:
  OUTLINED_FUNCTION_50_1(v109);
LABEL_18:
  OUTLINED_FUNCTION_45_0();
}

void LongPayloadActionEnforcer.enforce(inputFeatures:camOutput:camInput:modelMetadata:)(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    goto LABEL_12;
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002BLL, 0x8000000266818E40);
  if ((v6 & 1) == 0)
  {
    goto LABEL_12;
  }

  v7 = *(*(a1 + 56) + 8 * v5);
  v8 = MLMultiArray.toIntScalar()();
  if (v9)
  {

LABEL_12:
    OUTLINED_FUNCTION_3_13();
    return;
  }

  v10 = v8;

  if (v10 < 21 || *(a2 + 56) != 2)
  {
    goto LABEL_12;
  }

  if (one-time initialization token for ambiguityHandling != -1)
  {
    OUTLINED_FUNCTION_1_20();
  }

  v11 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_26(v11, static Logger.ambiguityHandling);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_34(v13))
  {
    OUTLINED_FUNCTION_23();
    v14 = OUTLINED_FUNCTION_30_4();
    v21 = v14;
    *a2 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam25LongPayloadActionEnforcerVmMd, &_s7SiriCam25LongPayloadActionEnforcerVmMR);
    v15 = OUTLINED_FUNCTION_47_1();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v21);
    OUTLINED_FUNCTION_70();
    *(a2 + 4) = v2;
    OUTLINED_FUNCTION_25_5(&dword_266790000, v17, v18, "%s detected long utterance");
    __swift_destroy_boxed_opaque_existential_0(&v14->Kind);
    OUTLINED_FUNCTION_23_6();
    OUTLINED_FUNCTION_0_8();
  }

  v21 = &type metadata for LongPayloadActionEnforcer;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam25LongPayloadActionEnforcerVmMd, &_s7SiriCam25LongPayloadActionEnforcerVmMR);
  v19 = String.init<A>(describing:)();
  OUTLINED_FUNCTION_40_1(v19, v20);
}

uint64_t ShadowLogActionEnforcer.enforce(inputFeatures:camOutput:camInput:modelMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_43_1();
  v6 = a3 + *(type metadata accessor for CamInput() + 20);
  v7 = UUID.uuid.getter();
  v8 = 0;
  result = 0;
  v10 = 0;
  if (*(a2 + 56) == 2 && v7 <= 0xCu)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam23ShadowLogActionEnforcerVmMd, &_s7SiriCam23ShadowLogActionEnforcerVmMR);
    result = OUTLINED_FUNCTION_47_1();
    v8 = 1;
  }

  *v3 = v8;
  v3[1] = result;
  v3[2] = v10;
  return result;
}

void UncertaintyPromptMagicWordsActionEnforcer.enforce(inputFeatures:camOutput:camInput:modelMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_43_1();
  v5 = *(a3 + *(type metadata accessor for CamInput() + 32));
  if (v5)
  {
    v6 = [v5 recognition];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 aceRecognition];

      if (v8)
      {
        _s7SiriCam23TopRecognitionExtractorPAAE03getcD011recognitionSSSo14SASRecognitionC_tKFAA41UncertaintyPromptMagicWordsActionEnforcerV_Tt0g5(v8);
        String.lowercased()();

        lazy protocol witness table accessor for type String and conformance String();
        v9 = OUTLINED_FUNCTION_42_0();
        v10 = OUTLINED_FUNCTION_42_0();

        if (v9)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam41UncertaintyPromptMagicWordsActionEnforcerVmMd, &_s7SiriCam41UncertaintyPromptMagicWordsActionEnforcerVmMR);
          v11 = String.init<A>(describing:)();
          v13 = v12;

          v14 = 2;
LABEL_12:
          *v3 = v14;
          v3[1] = v11;
          v3[2] = v13;
          return;
        }

        if (v10)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam41UncertaintyPromptMagicWordsActionEnforcerVmMd, &_s7SiriCam41UncertaintyPromptMagicWordsActionEnforcerVmMR);
          v11 = String.init<A>(describing:)();
          v13 = v15;

          v14 = 3;
          goto LABEL_12;
        }
      }
    }
  }

  OUTLINED_FUNCTION_3_13();
}

void ZeroAsrConfidenceActionEnforcer.enforce(inputFeatures:camOutput:camInput:modelMetadata:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002CLL, 0x8000000266818D60), (v6 & 1) != 0) && (v7 = *(*(a1 + 56) + 8 * v5), v8 = MLMultiArray.toDoubleArray()(), v7, v9 = COERCE_DOUBLE(specialized Sequence<>.min()(v8)), v11 = v10, , (v11 & 1) == 0 && v9 <= 0.01 && *(a2 + 56) == 2))
  {
    if (one-time initialization token for ambiguityHandling != -1)
    {
      OUTLINED_FUNCTION_1_20();
    }

    v12 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_26(v12, static Logger.ambiguityHandling);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_34(v14))
    {
      OUTLINED_FUNCTION_23();
      v15 = OUTLINED_FUNCTION_30_4();
      v22 = v15;
      *a2 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam31ZeroAsrConfidenceActionEnforcerVmMd, &_s7SiriCam31ZeroAsrConfidenceActionEnforcerVmMR);
      v16 = OUTLINED_FUNCTION_47_1();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v22);
      OUTLINED_FUNCTION_70();
      *(a2 + 4) = v2;
      OUTLINED_FUNCTION_25_5(&dword_266790000, v18, v19, "%s detected only zero ASR confidence scores - overriding to EXECUTE_TOP_HYPOTHESIS");
      __swift_destroy_boxed_opaque_existential_0(&v15->Kind);
      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_0_8();
    }

    v22 = &type metadata for ZeroAsrConfidenceActionEnforcer;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam31ZeroAsrConfidenceActionEnforcerVmMd, &_s7SiriCam31ZeroAsrConfidenceActionEnforcerVmMR);
    v20 = String.init<A>(describing:)();
    OUTLINED_FUNCTION_40_1(v20, v21);
  }

  else
  {
    OUTLINED_FUNCTION_3_13();
  }
}

void ExactShortcutActionEnforcer.enforce(inputFeatures:camOutput:camInput:modelMetadata:)()
{
  OUTLINED_FUNCTION_44_1();
  v4 = OUTLINED_FUNCTION_66(v3);
  v5 = OUTLINED_FUNCTION_22(v4);
  v77 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_2();
  v76 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMR);
  OUTLINED_FUNCTION_0_2(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_28_5();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  v15 = OUTLINED_FUNCTION_14(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v74 - v22;
  v24 = OUTLINED_FUNCTION_56_0();
  v25 = type metadata accessor for CamParse(v24);
  v26 = OUTLINED_FUNCTION_0_2(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_0();
  v31 = v30 - v29;
  v32 = type metadata accessor for CamUSOParse(0);
  v33 = OUTLINED_FUNCTION_0_2(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_2_2();
  v78 = v36;
  OUTLINED_FUNCTION_21_4();
  if (!*(*(v2 + *(type metadata accessor for CamInput() + 44)) + 16))
  {
    goto LABEL_22;
  }

  v37 = type metadata accessor for RankedAction();
  v38 = OUTLINED_FUNCTION_14(v37);
  v40 = *(v39 + 80);
  OUTLINED_FUNCTION_38_1(v38);
  OUTLINED_FUNCTION_6_16();
  _s7SiriCam0B5ParseOWOcTm_1(v42 + v41, v31, v43);
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_5_13();
    v45 = v31;
LABEL_21:
    _s7SiriCam12RankedActionVWOhTm_1(v45, v44);
LABEL_22:
    OUTLINED_FUNCTION_50_1(v79);
    goto LABEL_23;
  }

  v75 = v1;
  OUTLINED_FUNCTION_4_11();
  outlined init with take of RankedAction(v31, v78, v46);
  v47 = *(v32 + 20);
  v48 = *MEMORY[0x277D5DA60];
  v49 = OUTLINED_FUNCTION_53_0();
  v50(v49);
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v4);
  v51 = *(v10 + 48);
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_12_0(v0);
  if (v53)
  {
    outlined destroy of (CamLogOutput, CamModelMetadata)(v23, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
    OUTLINED_FUNCTION_12_0(v0 + v51);
    v52 = v75;
    if (v53)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v0, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
      goto LABEL_14;
    }

LABEL_12:
    outlined destroy of (CamLogOutput, CamModelMetadata)(v0, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMR);
LABEL_20:
    OUTLINED_FUNCTION_0_18();
    v45 = v78;
    goto LABEL_21;
  }

  outlined init with copy of (CamLogOutput, CamModelMetadata)(v0, v20, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  OUTLINED_FUNCTION_12_0(v0 + v51);
  v52 = v75;
  if (v53)
  {
    outlined destroy of (CamLogOutput, CamModelMetadata)(v23, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
    v54 = OUTLINED_FUNCTION_52_1();
    v55(v54);
    goto LABEL_12;
  }

  v56 = OUTLINED_FUNCTION_33_1();
  v57(v56);
  OUTLINED_FUNCTION_17_8();
  lazy protocol witness table accessor for type Siri_Nl_Core_Protocol_UsoEntityIdentifier.NluComponent and conformance Siri_Nl_Core_Protocol_UsoEntityIdentifier.NluComponent(v58, v59);
  OUTLINED_FUNCTION_62_0();
  v60 = OUTLINED_FUNCTION_51_1();
  (v10)(v60);
  outlined destroy of (CamLogOutput, CamModelMetadata)(v23, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  (v10)(v20, v4);
  v61 = OUTLINED_FUNCTION_57_0();
  outlined destroy of (CamLogOutput, CamModelMetadata)(v61, v62, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  if ((&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  if (*(v52 + 56) != 2)
  {
    goto LABEL_20;
  }

  if (one-time initialization token for ambiguityHandling != -1)
  {
    OUTLINED_FUNCTION_1_20();
  }

  v63 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_26(v63, static Logger.ambiguityHandling);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_10(v65))
  {
    v66 = OUTLINED_FUNCTION_23();
    v67 = OUTLINED_FUNCTION_11();
    v80 = &type metadata for ExactShortcutActionEnforcer;
    v81 = v67;
    *v66 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam27ExactShortcutActionEnforcerVmMd, &_s7SiriCam27ExactShortcutActionEnforcerVmMR);
    v68 = OUTLINED_FUNCTION_48_1();
    v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, &v81);

    *(v66 + 4) = v70;
    OUTLINED_FUNCTION_60_0(&dword_266790000, v71, v72, "%s exact shortcut parse - overriding to EXECUTE_TOP_HYPOTHESIS");
    __swift_destroy_boxed_opaque_existential_0(&v67->Kind);
    OUTLINED_FUNCTION_0_8();
    OUTLINED_FUNCTION_3_1();
  }

  v81 = &type metadata for ExactShortcutActionEnforcer;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam27ExactShortcutActionEnforcerVmMd, &_s7SiriCam27ExactShortcutActionEnforcerVmMR);
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_0_18();
  _s7SiriCam12RankedActionVWOhTm_1(v78, v73);
  OUTLINED_FUNCTION_55_0(1);
LABEL_23:
  OUTLINED_FUNCTION_45_0();
}

void OverrideParseActionEnforcer.enforce(inputFeatures:camOutput:camInput:modelMetadata:)()
{
  OUTLINED_FUNCTION_44_1();
  v4 = OUTLINED_FUNCTION_66(v3);
  v5 = OUTLINED_FUNCTION_22(v4);
  v77 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_2();
  v76 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMR);
  OUTLINED_FUNCTION_0_2(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_28_5();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  v15 = OUTLINED_FUNCTION_14(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v74 - v22;
  v24 = OUTLINED_FUNCTION_56_0();
  v25 = type metadata accessor for CamParse(v24);
  v26 = OUTLINED_FUNCTION_0_2(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_0();
  v31 = v30 - v29;
  v32 = type metadata accessor for CamUSOParse(0);
  v33 = OUTLINED_FUNCTION_0_2(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_2_2();
  v78 = v36;
  OUTLINED_FUNCTION_21_4();
  if (!*(*(v2 + *(type metadata accessor for CamInput() + 44)) + 16))
  {
    goto LABEL_22;
  }

  v37 = type metadata accessor for RankedAction();
  v38 = OUTLINED_FUNCTION_14(v37);
  v40 = *(v39 + 80);
  OUTLINED_FUNCTION_38_1(v38);
  OUTLINED_FUNCTION_6_16();
  _s7SiriCam0B5ParseOWOcTm_1(v42 + v41, v31, v43);
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_5_13();
    v45 = v31;
LABEL_21:
    _s7SiriCam12RankedActionVWOhTm_1(v45, v44);
LABEL_22:
    OUTLINED_FUNCTION_50_1(v79);
    goto LABEL_23;
  }

  v75 = v1;
  OUTLINED_FUNCTION_4_11();
  outlined init with take of RankedAction(v31, v78, v46);
  v47 = *(v32 + 20);
  v48 = *MEMORY[0x277D5DA80];
  v49 = OUTLINED_FUNCTION_53_0();
  v50(v49);
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v4);
  v51 = *(v10 + 48);
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_12_0(v0);
  if (v53)
  {
    outlined destroy of (CamLogOutput, CamModelMetadata)(v23, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
    OUTLINED_FUNCTION_12_0(v0 + v51);
    v52 = v75;
    if (v53)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v0, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
      goto LABEL_14;
    }

LABEL_12:
    outlined destroy of (CamLogOutput, CamModelMetadata)(v0, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMR);
LABEL_20:
    OUTLINED_FUNCTION_0_18();
    v45 = v78;
    goto LABEL_21;
  }

  outlined init with copy of (CamLogOutput, CamModelMetadata)(v0, v20, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  OUTLINED_FUNCTION_12_0(v0 + v51);
  v52 = v75;
  if (v53)
  {
    outlined destroy of (CamLogOutput, CamModelMetadata)(v23, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
    v54 = OUTLINED_FUNCTION_52_1();
    v55(v54);
    goto LABEL_12;
  }

  v56 = OUTLINED_FUNCTION_33_1();
  v57(v56);
  OUTLINED_FUNCTION_17_8();
  lazy protocol witness table accessor for type Siri_Nl_Core_Protocol_UsoEntityIdentifier.NluComponent and conformance Siri_Nl_Core_Protocol_UsoEntityIdentifier.NluComponent(v58, v59);
  OUTLINED_FUNCTION_62_0();
  v60 = OUTLINED_FUNCTION_51_1();
  (v10)(v60);
  outlined destroy of (CamLogOutput, CamModelMetadata)(v23, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  (v10)(v20, v4);
  v61 = OUTLINED_FUNCTION_57_0();
  outlined destroy of (CamLogOutput, CamModelMetadata)(v61, v62, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  if ((&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  if (*(v52 + 56) != 2)
  {
    goto LABEL_20;
  }

  if (one-time initialization token for ambiguityHandling != -1)
  {
    OUTLINED_FUNCTION_1_20();
  }

  v63 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_26(v63, static Logger.ambiguityHandling);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_10(v65))
  {
    v66 = OUTLINED_FUNCTION_23();
    v67 = OUTLINED_FUNCTION_11();
    v80 = &type metadata for OverrideParseActionEnforcer;
    v81 = v67;
    *v66 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam27OverrideParseActionEnforcerVmMd, &_s7SiriCam27OverrideParseActionEnforcerVmMR);
    v68 = OUTLINED_FUNCTION_48_1();
    v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, &v81);

    *(v66 + 4) = v70;
    OUTLINED_FUNCTION_60_0(&dword_266790000, v71, v72, "%s found override parse - overriding to EXECUTE_TOP_HYPOTHESIS");
    __swift_destroy_boxed_opaque_existential_0(&v67->Kind);
    OUTLINED_FUNCTION_0_8();
    OUTLINED_FUNCTION_3_1();
  }

  v81 = &type metadata for OverrideParseActionEnforcer;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam27OverrideParseActionEnforcerVmMd, &_s7SiriCam27OverrideParseActionEnforcerVmMR);
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_0_18();
  _s7SiriCam12RankedActionVWOhTm_1(v78, v73);
  OUTLINED_FUNCTION_55_0(1);
LABEL_23:
  OUTLINED_FUNCTION_45_0();
}

void UserEntityVocabActionEnforcer.enforce(inputFeatures:camOutput:camInput:modelMetadata:)()
{
  OUTLINED_FUNCTION_44_1();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_43_1();
  v129 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier.NluComponent();
  v5 = OUTLINED_FUNCTION_22(v129);
  v124 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v128 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v127 = v116 - v12;
  OUTLINED_FUNCTION_21_4();
  v126 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v13 = OUTLINED_FUNCTION_22(v126);
  v130 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_2();
  v125 = v17;
  OUTLINED_FUNCTION_21_4();
  v18 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v19 = OUTLINED_FUNCTION_22(v18);
  v123 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_0();
  v25 = v24 - v23;
  v26 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v27 = OUTLINED_FUNCTION_22(v26);
  v122 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3_0();
  v33 = (v32 - v31);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  OUTLINED_FUNCTION_14(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v37);
  v39 = v116 - v38;
  v133 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v40 = OUTLINED_FUNCTION_22(v133);
  v131 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_2_2();
  v132 = v44;
  v45 = OUTLINED_FUNCTION_21_4();
  v46 = type metadata accessor for CamParse(v45);
  v47 = OUTLINED_FUNCTION_0_2(v46);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_3_0();
  v52 = v51 - v50;
  v53 = OUTLINED_FUNCTION_56_0();
  v54 = type metadata accessor for CamUSOParse(v53);
  v55 = OUTLINED_FUNCTION_14(v54);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_2_2();
  v134 = v58;
  OUTLINED_FUNCTION_21_4();
  if (!*(*(v2 + *(type metadata accessor for CamInput() + 44)) + 16))
  {
    goto LABEL_26;
  }

  v59 = type metadata accessor for RankedAction();
  v60 = OUTLINED_FUNCTION_14(v59);
  v62 = *(v61 + 80);
  OUTLINED_FUNCTION_38_1(v60);
  OUTLINED_FUNCTION_6_16();
  _s7SiriCam0B5ParseOWOcTm_1(v64 + v63, v52, v65);
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_5_13();
    v67 = v52;
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_4_11();
  v68 = v134;
  v70 = outlined init with take of RankedAction(v52, v134, v69);
  v71 = MEMORY[0x26D5DC620](v70);
  specialized Collection.first.getter(v71);

  v72 = v133;
  OUTLINED_FUNCTION_32_3(v39, 1, v133);
  if (v93)
  {
    OUTLINED_FUNCTION_0_18();
    _s7SiriCam12RankedActionVWOhTm_1(v68, v73);
    outlined destroy of (CamLogOutput, CamModelMetadata)(v39, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    goto LABEL_26;
  }

  v121 = v4;
  v74 = v131;
  (*(v131 + 32))(v132, v39, v72);
  v75 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
  if (!specialized Array.count.getter(v75))
  {

LABEL_24:
    (*(v74 + 8))(v132, v72);
    OUTLINED_FUNCTION_0_18();
    v67 = v134;
    goto LABEL_25;
  }

  v76 = OUTLINED_FUNCTION_14_12();
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v76, v77, v78);
  if ((v75 & 0xC000000000000001) != 0)
  {
    goto LABEL_46;
  }

  v79 = *(v75 + 32);

  while (1)
  {

    v80 = *(UsoTask.arguments.getter() + 16);

    if (v80 != 1)
    {

      goto LABEL_24;
    }

    v81 = UsoTask.arguments.getter();
    specialized Collection.first.getter(v81);
    v83 = v82;
    v85 = v84;

    if (!v83)
    {
      goto LABEL_21;
    }

    if (!specialized Array.count.getter(v85))
    {

      goto LABEL_29;
    }

    v86 = OUTLINED_FUNCTION_14_12();
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v86, v87, v88);
    if ((v85 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_46_1();
    }

    else
    {
      v89 = *(v85 + 32);
    }

    v90 = dispatch thunk of UsoValue.getAsEntity()();

    if (!v90)
    {
LABEL_21:

LABEL_29:
      v94 = v134;
      (*(v131 + 8))(v132, v133);
LABEL_30:
      OUTLINED_FUNCTION_0_18();
      v67 = v94;
LABEL_25:
      _s7SiriCam12RankedActionVWOhTm_1(v67, v66);
LABEL_26:
      OUTLINED_FUNCTION_3_13();
      goto LABEL_27;
    }

    v74 = UsoTask.verbString.getter();
    v92 = v91;

    v93 = v74 == 0xD000000000000011 && 0x800000026681B480 == v92;
    if (v93)
    {
    }

    else
    {
      v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v74 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
    Siri_Nlu_External_UserStatedTask.task.getter();
    (*(v122 + 8))(v33, v26);
    v95 = Siri_Nlu_External_UsoGraph.identifiers.getter();
    (*(v123 + 8))(v25, v18);
    v72 = 0;
    v122 = *(v95 + 16);
    v123 = v95;
    v119 = v130 + 16;
    v118 = *MEMORY[0x277D5DD48];
    v117 = (v124 + 13);
    ++v124;
    v116[1] = v130 + 8;
    v120 = v79;
    v25 = v125;
    v33 = v127;
LABEL_33:
    v94 = v134;
    if (v122 == v72)
    {

LABEL_44:
      (*(v131 + 8))(v132, v133);
      goto LABEL_30;
    }

    if (v72 < *(v123 + 16))
    {
      break;
    }

    __break(1u);
LABEL_46:
    OUTLINED_FUNCTION_46_1();
    v79 = v115;
  }

  v96 = v130;
  v26 = v126;
  (*(v130 + 16))(v25, v123 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v72++, v126);
  Siri_Nlu_External_UsoEntityIdentifier.sourceComponent.getter();
  v18 = v128;
  v97 = v129;
  (*v117)(v128, v118, v129);
  lazy protocol witness table accessor for type Siri_Nl_Core_Protocol_UsoEntityIdentifier.NluComponent and conformance Siri_Nl_Core_Protocol_UsoEntityIdentifier.NluComponent(&lazy protocol witness table cache variable for type Siri_Nlu_External_UsoEntityIdentifier.NluComponent and conformance Siri_Nlu_External_UsoEntityIdentifier.NluComponent, MEMORY[0x277D5DD50]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v74 = v124;
  v98 = *v124;
  (*v124)(v18, v97);
  v98(v33, v97);
  (*(v96 + 8))(v25, v26);
  if (v136 != v135)
  {
    goto LABEL_33;
  }

  v94 = v134;
  if (*(v121 + 56) != 2)
  {

    goto LABEL_44;
  }

  if (one-time initialization token for ambiguityHandling != -1)
  {
    OUTLINED_FUNCTION_1_20();
  }

  v99 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_26(v99, static Logger.ambiguityHandling);
  v100 = Logger.logObject.getter();
  v101 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_10(v101))
  {
    v102 = OUTLINED_FUNCTION_23();
    v103 = OUTLINED_FUNCTION_11();
    v135 = &type metadata for UserEntityVocabActionEnforcer;
    v136 = v103;
    *v102 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam29UserEntityVocabActionEnforcerVmMd, &_s7SiriCam29UserEntityVocabActionEnforcerVmMR);
    v104 = String.init<A>(describing:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v105, &v136);
    OUTLINED_FUNCTION_68();
    *(v102 + 4) = v72;
    OUTLINED_FUNCTION_61_0(&dword_266790000, v106, v107, "%s found UserEntityVocab parse - overriding to EXECUTE_TOP_HYPOTHESIS");
    OUTLINED_FUNCTION_26_3();
    OUTLINED_FUNCTION_23_6();
  }

  v108 = v131;
  v109 = v132;
  v110 = v133;
  v136 = &type metadata for UserEntityVocabActionEnforcer;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam29UserEntityVocabActionEnforcerVmMd, &_s7SiriCam29UserEntityVocabActionEnforcerVmMR);
  v111 = String.init<A>(describing:)();
  v113 = v112;

  (*(v108 + 8))(v109, v110);
  OUTLINED_FUNCTION_0_18();
  _s7SiriCam12RankedActionVWOhTm_1(v134, v114);
  *v0 = 1;
  v0[1] = v111;
  v0[2] = v113;
LABEL_27:
  OUTLINED_FUNCTION_45_0();
}

uint64_t outlined init with take of RankedAction(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0_2(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t _s7SiriCam0B5ParseOWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0_2(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t _s7SiriCam12RankedActionVWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t type metadata accessor for USOSerializedIdentifier()
{
  result = lazy cache variable for type metadata for USOSerializedIdentifier;
  if (!lazy cache variable for type metadata for USOSerializedIdentifier)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for USOSerializedIdentifier);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Siri_Nl_Core_Protocol_UsoEntityIdentifier.NluComponent and conformance Siri_Nl_Core_Protocol_UsoEntityIdentifier.NluComponent(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_58();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void OUTLINED_FUNCTION_23_6()
{

  JUMPOUT(0x26D5DDCD0);
}

void OUTLINED_FUNCTION_25_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_26_3()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x26D5DDCD0);
}

uint64_t OUTLINED_FUNCTION_39_1(uint64_t a1)
{
  result = *(v1 + *(a1 + 44));
  v3 = *(result + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_40_1(uint64_t result, uint64_t a2)
{
  *v2 = 1;
  v2[1] = result;
  v2[2] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_42_0()
{

  return StringProtocol.contains<A>(_:)();
}

void OUTLINED_FUNCTION_46_1()
{

  JUMPOUT(0x26D5DD230);
}

uint64_t OUTLINED_FUNCTION_47_1()
{

  return String.init<A>(describing:)();
}

uint64_t OUTLINED_FUNCTION_48_1()
{

  return String.init<A>(describing:)();
}

uint64_t OUTLINED_FUNCTION_49_1()
{

  return String.init<A>(describing:)();
}

void OUTLINED_FUNCTION_50_1(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void OUTLINED_FUNCTION_55_0(uint64_t a1@<X8>)
{
  *v1 = a1;
  v1[1] = v2;
  v1[2] = v3;
}

void OUTLINED_FUNCTION_60_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_61_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_62_0()
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_63()
{

  return outlined init with copy of (CamLogOutput, CamModelMetadata)(v4, v3 + v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_64()
{

  return outlined init with copy of (CamLogOutput, CamModelMetadata)(v3 + v4, v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_65()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_66@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 104) = a1;

  return type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
}

uint64_t OUTLINED_FUNCTION_67()
{

  return type metadata accessor for CamUserParse(0);
}

uint64_t OUTLINED_FUNCTION_68()
{
}

uint64_t OUTLINED_FUNCTION_69()
{
}

uint64_t OUTLINED_FUNCTION_70()
{
}

uint64_t OUTLINED_FUNCTION_71()
{
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(uint64_t a1)
{
  return specialized RawRepresentable<>.hashValue.getter(a1, specialized RawRepresentable<>.hash(into:));
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, specialized RawRepresentable<>.hash(into:));
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(char a1)
{
  OUTLINED_FUNCTION_7_12();
  RankedAction.CodingKeys.rawValue.getter(a1);
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_7_12();
  MEMORY[0x26D5DD540](qword_266817428[a1]);
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter()
{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_7_12();
  a2(v5, a1);
  return Hasher._finalize()();
}

uint64_t CamUSOParse.debugDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  OUTLINED_FUNCTION_0_2(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  v28 = 0;
  v29 = 0xE000000000000000;
  _StringGuts.grow(_:)(49);

  v28 = 0xD000000000000017;
  v29 = 0x800000026681B4F0;
  v7 = type metadata accessor for CamUSOParse(0);
  v8 = (v0 + v7[6]);
  v9 = v8[1];
  v32[0] = *v8;
  v32[1] = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v10 = String.init<A>(describing:)();
  MEMORY[0x26D5DCD80](v10);

  MEMORY[0x26D5DCD80](0xD000000000000014, 0x800000026681B510);
  outlined init with copy of Siri_Nlu_External_Parser.ParserIdentifier?(v0 + v7[5], v6);
  v11 = String.init<A>(describing:)();
  MEMORY[0x26D5DCD80](v11);

  MEMORY[0x26D5DCD80](11305, 0xE200000000000000);
  v13 = v28;
  v12 = v29;
  v28 = 0;
  v29 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);

  strcpy(v32, "groupIndex: ");
  BYTE5(v32[1]) = 0;
  HIWORD(v32[1]) = -5120;
  v14 = (v0 + v7[7]);
  v15 = *v14;
  LOBYTE(v14) = *(v14 + 4);
  LODWORD(v28) = v15;
  BYTE4(v28) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32VSgMd, &_ss6UInt32VSgMR);
  v16 = String.init<A>(describing:)();
  MEMORY[0x26D5DCD80](v16);

  MEMORY[0x26D5DCD80](0x615072657375202CLL, 0xED0000203A657372);
  type metadata accessor for SiriNLUTypesPrintUtils();
  OUTLINED_FUNCTION_28();
  v17 = type metadata accessor for Siri_Nlu_External_UserParse();
  v30 = v17;
  OUTLINED_FUNCTION_3_16();
  v31 = lazy protocol witness table accessor for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse(v18, v19);
  v20 = __swift_allocate_boxed_opaque_existential_1(&v28);
  (*(*(v17 - 8) + 16))(v20, v0, v17);
  v21 = static SiriNLUTypesPrintUtils.printableProtoObject(object:)();
  v23 = v22;
  __swift_destroy_boxed_opaque_existential_0(&v28);
  MEMORY[0x26D5DCD80](v21, v23);

  MEMORY[0x26D5DCD80](41, 0xE100000000000000);
  v24 = v32[0];
  v25 = v32[1];
  v28 = v13;
  v29 = v12;

  MEMORY[0x26D5DCD80](v24, v25);

  return v28;
}

uint64_t CamUSOParse.init(userParse:parserIdentifier:appBundleId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for CamUSOParse(0);
  outlined init with take of Siri_Nlu_External_Parser.ParserIdentifier?(a2, a5 + v10[5]);
  v11 = type metadata accessor for Siri_Nlu_External_UserParse();
  OUTLINED_FUNCTION_0_2(v11);
  result = (*(v12 + 32))(a5, a1);
  v14 = (a5 + v10[6]);
  *v14 = a3;
  v14[1] = a4;
  v15 = a5 + v10[7];
  *v15 = 0;
  *(v15 + 4) = 1;
  return result;
}

uint64_t outlined init with take of Siri_Nlu_External_Parser.ParserIdentifier?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t CamUSOParse.init(userParse:parserIdentifier:appBundleId:groupIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for CamUSOParse(0);
  outlined init with take of Siri_Nlu_External_Parser.ParserIdentifier?(a2, a6 + v12[5]);
  v13 = type metadata accessor for Siri_Nlu_External_UserParse();
  OUTLINED_FUNCTION_0_2(v13);
  result = (*(v14 + 32))(a6, a1);
  v16 = (a6 + v12[6]);
  *v16 = a3;
  v16[1] = a4;
  v17 = a6 + v12[7];
  *v17 = a5;
  *(v17 + 4) = BYTE4(a5) & 1;
  return result;
}

uint64_t CamUSOParse.userParse.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Siri_Nlu_External_UserParse();
  v4 = OUTLINED_FUNCTION_0_2(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t CamUSOParse.parserIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CamUSOParse(0) + 20);

  return outlined init with copy of Siri_Nlu_External_Parser.ParserIdentifier?(v3, a1);
}

uint64_t CamUSOParse.appBundleId.getter()
{
  v1 = (v0 + *(type metadata accessor for CamUSOParse(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CamUSOParse.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SiriCam0B8USOParseV10CodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLO8rawValueAFSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CamUSOParse.CodingKeys@<X0>(unint64_t *a1@<X8>)
{
  result = _s7SiriCam0B8USOParseV10CodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLO8rawValueSSvg_0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance CamUSOParse.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = _s7SiriCam0B8USOParseV10CodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLO8rawValueAFSgSS_tcfC_0(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CamUSOParse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CamUSOParse.CodingKeys and conformance CamUSOParse.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CamUSOParse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CamUSOParse.CodingKeys and conformance CamUSOParse.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CamUSOParse.encode(to:)(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR) - 8) + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v3);
  v42 = &v41 - v4;
  v5 = type metadata accessor for JSONEncodingOptions();
  v6 = OUTLINED_FUNCTION_22(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_0();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy7SiriCam0E8USOParseV10CodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLOGMd, &_ss22KeyedEncodingContainerVy7SiriCam0E8USOParseV10CodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLOGMR);
  OUTLINED_FUNCTION_22(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v19);
  v21 = &v41 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CamUSOParse.CodingKeys and conformance CamUSOParse.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  JSONEncodingOptions.init()();
  type metadata accessor for Siri_Nlu_External_UserParse();
  OUTLINED_FUNCTION_3_16();
  lazy protocol witness table accessor for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse(v23, v24);
  v25 = v43;
  v26 = v44;
  Message.jsonString(options:)();
  v27 = (v8 + 8);
  if (v26)
  {
    (*v27)(v13, v5);
    return (*(v16 + 8))(v21, v14);
  }

  else
  {
    (*v27)(v13, v5);
    LOBYTE(v45) = 0;
    KeyedEncodingContainer.encode(_:forKey:)();
    v44 = 0;

    v29 = type metadata accessor for CamUSOParse(0);
    v30 = v42;
    outlined init with copy of Siri_Nlu_External_Parser.ParserIdentifier?(v25 + v29[5], v42);
    v31 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, 1, v31);
    v33 = v25;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v30, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
      v34 = 0;
    }

    else
    {
      v35 = v30;
      v34 = MEMORY[0x26D5DC5E0]();
      (*(*(v31 - 8) + 8))(v35, v31);
    }

    *&v45 = v34;
    BYTE8(v45) = EnumTagSinglePayload == 1;
    v46 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, _sSiSgMR);
    lazy protocol witness table accessor for type Int? and conformance <A> A?(&lazy protocol witness table cache variable for type Int? and conformance <A> A?, &_sSiSgMd, _sSiSgMR);
    OUTLINED_FUNCTION_2_17();
    v36 = v44;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v36)
    {
      v45 = *(v33 + v29[6]);
      v46 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      lazy protocol witness table accessor for type Int? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?, &_sSSSgMd, &_sSSSgMR);
      OUTLINED_FUNCTION_2_17();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v39 = (v33 + v29[7]);
      v40 = *v39;
      LOBYTE(v39) = *(v39 + 4);
      LODWORD(v45) = v40;
      BYTE4(v45) = v39;
      v46 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32VSgMd, &_ss6UInt32VSgMR);
      lazy protocol witness table accessor for type Int? and conformance <A> A?(&lazy protocol witness table cache variable for type UInt32? and conformance <A> A?, &_ss6UInt32VSgMd, &_ss6UInt32VSgMR);
      OUTLINED_FUNCTION_2_17();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    v37 = OUTLINED_FUNCTION_6_17();
    return v38(v37);
  }
}

unint64_t lazy protocol witness table accessor for type CamUSOParse.CodingKeys and conformance CamUSOParse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CamUSOParse.CodingKeys and conformance CamUSOParse.CodingKeys;
  if (!lazy protocol witness table cache variable for type CamUSOParse.CodingKeys and conformance CamUSOParse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamUSOParse.CodingKeys and conformance CamUSOParse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamUSOParse.CodingKeys and conformance CamUSOParse.CodingKeys;
  if (!lazy protocol witness table cache variable for type CamUSOParse.CodingKeys and conformance CamUSOParse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamUSOParse.CodingKeys and conformance CamUSOParse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamUSOParse.CodingKeys and conformance CamUSOParse.CodingKeys;
  if (!lazy protocol witness table cache variable for type CamUSOParse.CodingKeys and conformance CamUSOParse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamUSOParse.CodingKeys and conformance CamUSOParse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamUSOParse.CodingKeys and conformance CamUSOParse.CodingKeys;
  if (!lazy protocol witness table cache variable for type CamUSOParse.CodingKeys and conformance CamUSOParse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamUSOParse.CodingKeys and conformance CamUSOParse.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Int? and conformance <A> A?(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL static CamUSOParse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v5 = OUTLINED_FUNCTION_22(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  v12 = v11 - v10;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR) - 8) + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMR);
  OUTLINED_FUNCTION_0_2(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v20);
  v22 = &v41 - v21;
  if ((static Siri_Nlu_External_UserParse.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v23 = type metadata accessor for CamUSOParse(0);
  v24 = v23[5];
  v25 = *(v17 + 48);
  outlined init with copy of Siri_Nlu_External_Parser.ParserIdentifier?(a1 + v24, v22);
  outlined init with copy of Siri_Nlu_External_Parser.ParserIdentifier?(a2 + v24, &v22[v25]);
  OUTLINED_FUNCTION_12_0(v22);
  if (v26)
  {
    OUTLINED_FUNCTION_12_0(&v22[v25]);
    if (v26)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v22, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
      goto LABEL_13;
    }

LABEL_10:
    outlined destroy of (CamLogOutput, CamModelMetadata)(v22, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSg_AFtMR);
    return 0;
  }

  outlined init with copy of Siri_Nlu_External_Parser.ParserIdentifier?(v22, v16);
  OUTLINED_FUNCTION_12_0(&v22[v25]);
  if (v26)
  {
    (*(v7 + 8))(v16, v4);
    goto LABEL_10;
  }

  (*(v7 + 32))(v12, &v22[v25], v4);
  lazy protocol witness table accessor for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, MEMORY[0x277D5DA88]);
  v28 = dispatch thunk of static Equatable.== infix(_:_:)();
  v29 = *(v7 + 8);
  v29(v12, v4);
  v29(v16, v4);
  outlined destroy of (CamLogOutput, CamModelMetadata)(v22, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  if ((v28 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v30 = v23[6];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  v34 = v33[1];
  if (v32)
  {
    if (!v34)
    {
      return 0;
    }

    v35 = *v31 == *v33 && v32 == v34;
    if (!v35 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v34)
  {
    return 0;
  }

  v36 = v23[7];
  v37 = (a1 + v36);
  v38 = *(a1 + v36 + 4);
  v39 = (a2 + v36);
  v40 = *(a2 + v36 + 4);
  if ((v38 & 1) == 0)
  {
    if (*v37 != *v39)
    {
      v40 = 1;
    }

    return (v40 & 1) == 0;
  }

  return (v40 & 1) != 0;
}

uint64_t lazy protocol witness table accessor for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CamParse.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7304053 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x655273656D6D6F70 && a2 == 0xEE0065736E6F7073;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7974706D65 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(unsigned __int8 a1, void (*a2)(void))
{
  OUTLINED_FUNCTION_7_12();
  a2(a1);
  return Hasher._finalize()();
}

uint64_t CamParse.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 7304053;
  }

  if (a1 == 1)
  {
    return 0x655273656D6D6F70;
  }

  return 0x7974706D65;
}

uint64_t CamParse.PommesResponseCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

Swift::Int CamParse.PommesResponseCodingKeys.hashValue.getter()
{
  OUTLINED_FUNCTION_7_12();
  MEMORY[0x26D5DD540](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CamParse.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = CamParse.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CamParse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CamParse.CodingKeys and conformance CamParse.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CamParse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CamParse.CodingKeys and conformance CamParse.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CamParse.EmptyCodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = CamParse.EmptyCodingKeys.init(stringValue:)();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance CamParse.EmptyCodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = CamParse.EmptyCodingKeys.init(intValue:)();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CamParse.EmptyCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CamParse.EmptyCodingKeys and conformance CamParse.EmptyCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CamParse.EmptyCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CamParse.EmptyCodingKeys and conformance CamParse.EmptyCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CamParse.PommesResponseCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CamParse.PommesResponseCodingKeys and conformance CamParse.PommesResponseCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CamParse.PommesResponseCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CamParse.PommesResponseCodingKeys and conformance CamParse.PommesResponseCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CamParse.PommesResponseCodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x26D5DD540](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CamParse.UsoCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CamParse.UsoCodingKeys and conformance CamParse.UsoCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CamParse.UsoCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CamParse.UsoCodingKeys and conformance CamParse.UsoCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void CamParse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy7SiriCam0E5ParseO15EmptyCodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLOGMd, &_ss22KeyedEncodingContainerVy7SiriCam0E5ParseO15EmptyCodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLOGMR);
  v3 = OUTLINED_FUNCTION_22(v2);
  v60 = v4;
  v61 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v7);
  v58 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy7SiriCam0E5ParseO24PommesResponseCodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLOGMd, &_ss22KeyedEncodingContainerVy7SiriCam0E5ParseO24PommesResponseCodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLOGMR);
  v10 = OUTLINED_FUNCTION_22(v9);
  v62 = v11;
  v63 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v14);
  v59 = &v54 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy7SiriCam0E5ParseO13UsoCodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLOGMd, &_ss22KeyedEncodingContainerVy7SiriCam0E5ParseO13UsoCodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLOGMR);
  v17 = OUTLINED_FUNCTION_22(v16);
  v56 = v18;
  v57 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v21);
  v23 = &v54 - v22;
  v55 = type metadata accessor for CamUSOParse(0);
  v24 = OUTLINED_FUNCTION_0_2(v55);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3_0();
  v29 = v28 - v27;
  v30 = type metadata accessor for CamParse(0);
  v31 = OUTLINED_FUNCTION_0_2(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3_0();
  v36 = (v35 - v34);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy7SiriCam0E5ParseO10CodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLOGMd, &_ss22KeyedEncodingContainerVy7SiriCam0E5ParseO10CodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLOGMR);
  OUTLINED_FUNCTION_22(v65);
  v38 = v37;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v41);
  v43 = &v54 - v42;
  v44 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CamParse.CodingKeys and conformance CamParse.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of CamParse(v64, v36);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v46 = *v36;
      v68 = 1;
      lazy protocol witness table accessor for type CamParse.PommesResponseCodingKeys and conformance CamParse.PommesResponseCodingKeys();
      v47 = v59;
      v48 = v65;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v66 = v46;
      type metadata accessor for PommesResponse();
      lazy protocol witness table accessor for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse(&lazy protocol witness table cache variable for type PommesResponse and conformance PommesResponse, MEMORY[0x277D566B0]);
      v49 = v63;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v62 + 8))(v47, v49);
      (*(v38 + 8))(v43, v48);
    }

    else
    {
      v69 = 2;
      lazy protocol witness table accessor for type CamParse.EmptyCodingKeys and conformance CamParse.EmptyCodingKeys();
      v52 = v58;
      v53 = v65;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v60 + 8))(v52, v61);
      (*(v38 + 8))(v43, v53);
    }
  }

  else
  {
    outlined init with take of CamUSOParse(v36, v29);
    v67 = 0;
    lazy protocol witness table accessor for type CamParse.UsoCodingKeys and conformance CamParse.UsoCodingKeys();
    v50 = v65;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse(&lazy protocol witness table cache variable for type CamUSOParse and conformance CamUSOParse, type metadata accessor for CamUSOParse);
    v51 = v57;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v56 + 8))(v23, v51);
    outlined destroy of CamUSOParse(v29);
    (*(v38 + 8))(v43, v50);
  }
}

unint64_t lazy protocol witness table accessor for type CamParse.CodingKeys and conformance CamParse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CamParse.CodingKeys and conformance CamParse.CodingKeys;
  if (!lazy protocol witness table cache variable for type CamParse.CodingKeys and conformance CamParse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamParse.CodingKeys and conformance CamParse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamParse.CodingKeys and conformance CamParse.CodingKeys;
  if (!lazy protocol witness table cache variable for type CamParse.CodingKeys and conformance CamParse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamParse.CodingKeys and conformance CamParse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamParse.CodingKeys and conformance CamParse.CodingKeys;
  if (!lazy protocol witness table cache variable for type CamParse.CodingKeys and conformance CamParse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamParse.CodingKeys and conformance CamParse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamParse.CodingKeys and conformance CamParse.CodingKeys;
  if (!lazy protocol witness table cache variable for type CamParse.CodingKeys and conformance CamParse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamParse.CodingKeys and conformance CamParse.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CamParse.EmptyCodingKeys and conformance CamParse.EmptyCodingKeys()
{
  result = lazy protocol witness table cache variable for type CamParse.EmptyCodingKeys and conformance CamParse.EmptyCodingKeys;
  if (!lazy protocol witness table cache variable for type CamParse.EmptyCodingKeys and conformance CamParse.EmptyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamParse.EmptyCodingKeys and conformance CamParse.EmptyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamParse.EmptyCodingKeys and conformance CamParse.EmptyCodingKeys;
  if (!lazy protocol witness table cache variable for type CamParse.EmptyCodingKeys and conformance CamParse.EmptyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamParse.EmptyCodingKeys and conformance CamParse.EmptyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamParse.EmptyCodingKeys and conformance CamParse.EmptyCodingKeys;
  if (!lazy protocol witness table cache variable for type CamParse.EmptyCodingKeys and conformance CamParse.EmptyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamParse.EmptyCodingKeys and conformance CamParse.EmptyCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CamParse.PommesResponseCodingKeys and conformance CamParse.PommesResponseCodingKeys()
{
  result = lazy protocol witness table cache variable for type CamParse.PommesResponseCodingKeys and conformance CamParse.PommesResponseCodingKeys;
  if (!lazy protocol witness table cache variable for type CamParse.PommesResponseCodingKeys and conformance CamParse.PommesResponseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamParse.PommesResponseCodingKeys and conformance CamParse.PommesResponseCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamParse.PommesResponseCodingKeys and conformance CamParse.PommesResponseCodingKeys;
  if (!lazy protocol witness table cache variable for type CamParse.PommesResponseCodingKeys and conformance CamParse.PommesResponseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamParse.PommesResponseCodingKeys and conformance CamParse.PommesResponseCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamParse.PommesResponseCodingKeys and conformance CamParse.PommesResponseCodingKeys;
  if (!lazy protocol witness table cache variable for type CamParse.PommesResponseCodingKeys and conformance CamParse.PommesResponseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamParse.PommesResponseCodingKeys and conformance CamParse.PommesResponseCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamParse.PommesResponseCodingKeys and conformance CamParse.PommesResponseCodingKeys;
  if (!lazy protocol witness table cache variable for type CamParse.PommesResponseCodingKeys and conformance CamParse.PommesResponseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamParse.PommesResponseCodingKeys and conformance CamParse.PommesResponseCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CamParse.UsoCodingKeys and conformance CamParse.UsoCodingKeys()
{
  result = lazy protocol witness table cache variable for type CamParse.UsoCodingKeys and conformance CamParse.UsoCodingKeys;
  if (!lazy protocol witness table cache variable for type CamParse.UsoCodingKeys and conformance CamParse.UsoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamParse.UsoCodingKeys and conformance CamParse.UsoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamParse.UsoCodingKeys and conformance CamParse.UsoCodingKeys;
  if (!lazy protocol witness table cache variable for type CamParse.UsoCodingKeys and conformance CamParse.UsoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamParse.UsoCodingKeys and conformance CamParse.UsoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamParse.UsoCodingKeys and conformance CamParse.UsoCodingKeys;
  if (!lazy protocol witness table cache variable for type CamParse.UsoCodingKeys and conformance CamParse.UsoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamParse.UsoCodingKeys and conformance CamParse.UsoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamParse.UsoCodingKeys and conformance CamParse.UsoCodingKeys;
  if (!lazy protocol witness table cache variable for type CamParse.UsoCodingKeys and conformance CamParse.UsoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamParse.UsoCodingKeys and conformance CamParse.UsoCodingKeys);
  }

  return result;
}

uint64_t outlined destroy of CamUSOParse(uint64_t a1)
{
  v2 = type metadata accessor for CamUSOParse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PommesResponse.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s21SiriInformationSearch14PommesResponseC0A3CamE10CodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLO8rawValueAGSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PommesResponse.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = _s21SiriInformationSearch14PommesResponseC0A3CamE10CodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLO8rawValueSSvg_0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance PommesResponse.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = _s21SiriInformationSearch14PommesResponseC0A3CamE10CodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLO8rawValueAGSgSS_tcfC_0(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PommesResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesResponse.CodingKeys and conformance PommesResponse.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PommesResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesResponse.CodingKeys and conformance PommesResponse.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PommesResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SiriInformationSearch14PommesResponseC0D3CamE10CodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLOGMd, &_ss22KeyedEncodingContainerVy21SiriInformationSearch14PommesResponseC0D3CamE10CodingKeys33_CD676AA7092315253F8ED9CEBC36EA53LLOGMR);
  OUTLINED_FUNCTION_22(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v8);
  v10 = v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PommesResponse.CodingKeys and conformance PommesResponse.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14[0] = dispatch thunk of PommesResponse.primaryPluginIdentifier()();
  v14[1] = v12;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  lazy protocol witness table accessor for type Int? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?, &_sSSSgMd, &_sSSSgMR);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v1)
  {
    PommesResponse.metadataDomainName.getter();
    LOBYTE(v14[0]) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();

    dispatch thunk of PommesResponse.primaryQueryConfidence()();
    LOBYTE(v14[0]) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v10, v3);
}

unint64_t lazy protocol witness table accessor for type PommesResponse.CodingKeys and conformance PommesResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PommesResponse.CodingKeys and conformance PommesResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesResponse.CodingKeys and conformance PommesResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesResponse.CodingKeys and conformance PommesResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesResponse.CodingKeys and conformance PommesResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesResponse.CodingKeys and conformance PommesResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesResponse.CodingKeys and conformance PommesResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesResponse.CodingKeys and conformance PommesResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesResponse.CodingKeys and conformance PommesResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesResponse.CodingKeys and conformance PommesResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesResponse.CodingKeys and conformance PommesResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesResponse.CodingKeys and conformance PommesResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesResponse.CodingKeys and conformance PommesResponse.CodingKeys);
  }

  return result;
}

void type metadata completion function for CamUSOParse()
{
  type metadata accessor for Siri_Nlu_External_UserParse();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for String?);
      if (v2 <= 0x3F)
      {
        type metadata accessor for String?(319, &lazy cache variable for type metadata for UInt32?);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier?()
{
  if (!lazy cache variable for type metadata for Siri_Nlu_External_Parser.ParserIdentifier?)
  {
    type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Siri_Nlu_External_Parser.ParserIdentifier?);
    }
  }
}

uint64_t type metadata completion function for CamParse()
{
  result = type metadata accessor for CamUSOParse(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PommesResponse();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PommesResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

_BYTE *storeEnumTagSinglePayload for CamParse.UsoCodingKeys(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CamUSOParse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

uint64_t UseCloudThreshold.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t CamRequestContext.init(siriLocale:renderDeviceIdiom:requestIsDictation:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = type metadata accessor for Locale();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for CamRequestContext();
  *(a4 + *(result + 20)) = v7;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t type metadata accessor for CamRequestContext()
{
  result = type metadata singleton initialization cache for CamRequestContext;
  if (!type metadata singleton initialization cache for CamRequestContext)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

SiriCam::DeviceIdiom_optional __swiftcall DeviceIdiom.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DeviceIdiom.init(rawValue:), v3);

  v7 = 9;
  if (v5 < 9)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t DeviceIdiom.rawValue.getter()
{
  result = 7496035;
  switch(*v0)
  {
    case 1:
      result = 0x646F70656D6F68;
      break;
    case 2:
      result = 6513005;
      break;
    case 3:
      result = 6578544;
      break;
    case 4:
      result = 6582128;
      break;
    case 5:
      result = 0x656E6F6870;
      break;
    case 6:
      result = 0x6863746177;
      break;
    case 7:
      result = 30324;
      break;
    case 8:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DeviceIdiom and conformance DeviceIdiom()
{
  result = lazy protocol witness table cache variable for type DeviceIdiom and conformance DeviceIdiom;
  if (!lazy protocol witness table cache variable for type DeviceIdiom and conformance DeviceIdiom)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeviceIdiom and conformance DeviceIdiom);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DeviceIdiom and conformance DeviceIdiom;
  if (!lazy protocol witness table cache variable for type DeviceIdiom and conformance DeviceIdiom)
  {
    type metadata accessor for DeviceIdiom();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeviceIdiom and conformance DeviceIdiom);
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance DeviceIdiom@<X0>(uint64_t *a1@<X8>)
{
  result = DeviceIdiom.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t type metadata completion function for CamRequestContext()
{
  result = type metadata accessor for Locale();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceIdiom(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DeviceIdiom(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        break;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t dispatch thunk of SiriSignalsContaining.get(from:query:defaultVal:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return (*(a6 + 16))();
}

{
  return (*(a6 + 24))();
}

uint64_t _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_SiSaySS_SitGTt0g5Tm(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

uint64_t static ActionRoutingSiriSignals.all()()
{
  Installed = static TimeSinceAppLastInstalledSignal.instances()();
  Launched = static TimeSinceAppLastLaunchedSignal.instances()();
  v12 = Installed;
  specialized Array.append<A>(contentsOf:)(Launched);
  type metadata accessor for AppLaunchCountSignal();
  v2 = MEMORY[0x26D5DC3E0]();
  specialized Array.append<A>(contentsOf:)(v2);
  v3 = MEMORY[0x26D5DC490]();
  specialized Array.append<A>(contentsOf:)(v3);
  v4 = MEMORY[0x26D5DC4F0]();
  specialized Array.append<A>(contentsOf:)(v4);
  v5 = MEMORY[0x26D5DC4C0]();
  specialized Array.append<A>(contentsOf:)(v5);
  v6 = MEMORY[0x26D5DC500]();
  specialized Array.append<A>(contentsOf:)(v6);
  v7 = MEMORY[0x26D5DC4B0]();
  v8 = MEMORY[0x26D5DC4A0]();
  specialized Array.append<A>(contentsOf:)(v8);
  specialized Array.append<A>(contentsOf:)(v7);
  v9 = MEMORY[0x26D5DC4E0]();
  v10 = MEMORY[0x26D5DC4D0]();
  specialized Array.append<A>(contentsOf:)(v10);
  specialized Array.append<A>(contentsOf:)(v9);
  return v12;
}

Swift::Void __swiftcall SiriSignalsContainer.refreshSignals()()
{
  v1 = static ActionRoutingSiriSignals.all()();
  v27 = v0;
  v2 = *(v0 + 16);
  v3 = one-time initialization token for ranker;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.ranker);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28[0] = v8;
    *v7 = 136315138;
    type metadata accessor for SignalValue();
    v9 = Dictionary.description.getter();
    v11 = v10;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, v28);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_266790000, v5, v6, "SignalContainer.refresh() called %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_3_1();
  }

  else
  {
  }

  specialized _arrayForceCast<A, B>(_:)(v1);

  v13 = type metadata accessor for SignalGatherer();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  SignalGatherer.init(signals:candidateAppBundleIds:)();
  v16 = swift_allocObject();
  type metadata accessor for SignalValue();
  *(v16 + 16) = Dictionary.init(dictionaryLiteral:)();

  dispatch thunk of SignalGatherer.gatherValuesAndTimings(completion:)();

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28[0] = v20;
    *v19 = 136315138;
    swift_beginAccess();
    v21 = *(v16 + 16);

    v22 = Dictionary.description.getter();
    v24 = v23;

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v28);

    *(v19 + 4) = v25;
    _os_log_impl(&dword_266790000, v17, v18, "SignalContainer.refresh() finished %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_3_1();
  }

  else
  {
  }

  swift_beginAccess();
  v26 = *(v27 + 16);
  *(v27 + 16) = *(v16 + 16);
}

uint64_t closure #1 in SiriSignalsContainer.refreshSignals()(uint64_t a1, char *a2)
{
  v49 = a2;
  v3 = type metadata accessor for SignalGatherer.ValuesWithTimings();
  v47 = *(v3 - 8);
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SignalGathererError();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v46 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v48 = &v45 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriSignals14SignalGathererC17ValuesWithTimingsVAC0dE5ErrorOGMd, &_ss6ResultOy11SiriSignals14SignalGathererC17ValuesWithTimingsVAC0dE5ErrorOGMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v45 - v18;
  outlined init with copy of (CamLogOutput, CamModelMetadata)(a1, &v45 - v18, &_ss6ResultOy11SiriSignals14SignalGathererC17ValuesWithTimingsVAC0dE5ErrorOGMd, &_ss6ResultOy11SiriSignals14SignalGathererC17ValuesWithTimingsVAC0dE5ErrorOGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v15, v19, v7);
    v20 = v8;
    if (one-time initialization token for ranker != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.ranker);
    v22 = *(v8 + 16);
    v23 = v48;
    v22(v48, v15, v7);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v49 = v15;
      v27 = v7;
      v28 = v26;
      v29 = swift_slowAlloc();
      v50 = v29;
      *v28 = 136315138;
      v22(v46, v23, v7);
      v30 = String.init<A>(describing:)();
      v32 = v31;
      v33 = *(v20 + 8);
      v33(v23, v7);
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v50);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_266790000, v24, v25, "Signal gatherer error, setting signalValues to nil: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x26D5DDCD0](v29, -1, -1);
      MEMORY[0x26D5DDCD0](v28, -1, -1);

      return (v33)(v49, v27);
    }

    else
    {

      v44 = *(v20 + 8);
      v44(v23, v7);
      return (v44)(v15, v7);
    }
  }

  else
  {
    v36 = v47;
    (*(v47 + 32))(v6, v19, v3);
    if (one-time initialization token for ranker != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logger.ranker);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_266790000, v38, v39, "Successfully gathered all signals", v40, 2u);
      MEMORY[0x26D5DDCD0](v40, -1, -1);
    }

    v41 = SignalGatherer.ValuesWithTimings.values.getter();
    (*(v36 + 8))(v6, v3);
    v42 = v49;
    swift_beginAccess();
    v43 = *(v42 + 2);
    *(v42 + 2) = v41;
  }
}

uint64_t SiriSignalsContainer.get(from:query:defaultVal:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v79 = a3;
  v80 = a4;
  v78 = a2;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_11SiriSignals11SignalValueO5valuetMd, &_sSS3key_11SiriSignals11SignalValueO5valuetMR);
  v7 = OUTLINED_FUNCTION_0_2(v77);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v4[2];
  if (*(v11 + 16))
  {
    v81 = v5;
    v12 = *(a1 + 16);
    v13 = MEMORY[0x277D84F90];
    v76 = (&v71 - v10);
    v72 = a1;
    v73 = v12;
    if (v12)
    {
      v14 = v4;
      v87 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
      v13 = v87;
      v15 = a1 + 32;
      do
      {
        outlined init with copy of SignalProviding(v15, &v82);
        v16 = v85;
        v17 = v86;
        v4 = __swift_project_boxed_opaque_existential_1(&v82, v85);
        v18 = MEMORY[0x26D5DC380](v16, v17);
        v20 = v19;
        __swift_destroy_boxed_opaque_existential_0(&v82);
        v87 = v13;
        v22 = *(v13 + 16);
        v21 = *(v13 + 24);
        if (v22 >= v21 >> 1)
        {
          v4 = &v87;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, v22 + 1, 1);
          v13 = v87;
        }

        *(v13 + 16) = v22 + 1;
        v23 = v13 + 16 * v22;
        *(v23 + 32) = v18;
        *(v23 + 40) = v20;
        v15 += 40;
        --v12;
      }

      while (v12);
      v11 = v14[2];
    }

    v24 = *(v11 + 64);
    v75 = v11 + 64;
    v25 = 1 << *(v11 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & v24;
    v28 = (v25 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v29 = 0;
    v74 = MEMORY[0x277D84F90];
    while (v27)
    {
LABEL_16:
      v31 = __clz(__rbit64(v27)) | (v29 << 6);
      v32 = *(v11 + 56);
      v33 = v11;
      v34 = (*(v11 + 48) + 16 * v31);
      v35 = *v34;
      v36 = v34[1];
      v37 = type metadata accessor for SignalValue();
      OUTLINED_FUNCTION_0_2(v37);
      v39 = v32 + *(v38 + 72) * v31;
      v4 = v76;
      (*(v38 + 16))(v76 + *(v77 + 48), v39);
      *v4 = v35;
      v4[1] = v36;

      v40 = v81;
      closure #1 in SiriSignalsContainer.get(from:query:defaultVal:)(v4, v13, v78, v79, v80, &v82);
      v81 = v40;
      if (v40)
      {
LABEL_36:

        outlined destroy of (key: String, value: SignalValue)(v4);

        __break(1u);
        return result;
      }

      v27 &= v27 - 1;
      outlined destroy of (key: String, value: SignalValue)(v4);
      v41 = v83;
      v11 = v33;
      if (v83)
      {
        v42 = v82;
        v4 = v84;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = *(v74 + 16);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v74 = v48;
        }

        v43 = *(v74 + 16);
        v44 = v43 + 1;
        if (v43 >= *(v74 + 24) >> 1)
        {
          v71 = v43 + 1;
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v44 = v71;
          v74 = v49;
        }

        v45 = v74;
        *(v74 + 16) = v44;
        v46 = (v45 + 24 * v43);
        v46[4] = v42;
        v46[5] = v41;
        v46[6] = v4;
      }
    }

    while (1)
    {
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v30 >= v28)
      {
        break;
      }

      v27 = *(v75 + 8 * v30);
      ++v29;
      if (v27)
      {
        v29 = v30;
        goto LABEL_16;
      }
    }

    v50 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_SiSaySS_SitGTt0g5Tm(v74, &_ss18_DictionaryStorageCySSSiGMd, &_ss18_DictionaryStorageCySSSiGMR, specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:));
    v51 = v50;
    v52 = v73;
    if (v50[2] == v73)
    {
      return v51;
    }

    v55 = MEMORY[0x277D84F90];
    if (v73)
    {
      v81 = v50;
      v87 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v73, 0);
      v55 = v87;
      v56 = v72 + 32;
      do
      {
        outlined init with copy of SignalProviding(v56, &v82);
        v57 = v86;
        __swift_project_boxed_opaque_existential_1(&v82, v85);
        v58 = *(v57 + 8);
        v59 = dispatch thunk of AppSelectionSignalComponent.name.getter();
        v61 = v60;
        __swift_destroy_boxed_opaque_existential_0(&v82);
        v87 = v55;
        v63 = *(v55 + 16);
        v62 = *(v55 + 24);
        if (v63 >= v62 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v62 > 1, v63 + 1, 1);
          v55 = v87;
        }

        *(v55 + 16) = v63 + 1;
        v64 = v55 + 16 * v63;
        *(v64 + 32) = v59;
        *(v64 + 40) = v61;
        v56 += 40;
        --v52;
      }

      while (v52);
      v51 = v81;
    }

    v65 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v55);
    v66 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySSSo14MLFeatureValueC_GTt0g5(v51);
    specialized Set.subtracting(_:)(v66, v65);

    v82 = 0;
    v83 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);

    v82 = 0xD000000000000029;
    v83 = 0x800000026681B5A0;
    v67 = Set.description.getter();
    v69 = v68;

    MEMORY[0x26D5DCD80](v67, v69);

    MEMORY[0x26D5DCD80](46, 0xE100000000000000);
    v51 = v82;
    v53 = v83;
    lazy protocol witness table accessor for type CaarError and conformance CaarError();
    swift_allocError();
  }

  else
  {
    v53 = 0x800000026681B5D0;
    lazy protocol witness table accessor for type CaarError and conformance CaarError();
    swift_allocError();
    v51 = 0xD000000000000050;
  }

  *v54 = v51;
  *(v54 + 8) = v53;
  *(v54 + 16) = 1;
  swift_willThrow();
  return v51;
}

uint64_t closure #1 in SiriSignalsContainer.get(from:query:defaultVal:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X8>)
{
  v57 = a2;
  v53 = a5;
  v54 = a4;
  v55 = a3;
  v63 = a6;
  v7 = type metadata accessor for SignalValue();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v56 = (&v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_11SiriSignals11SignalValueO5valuetMd, &_sSS3key_11SiriSignals11SignalValueO5valuetMR);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (&v52 - v17);
  outlined init with copy of (CamLogOutput, CamModelMetadata)(a1, &v52 - v17, &_sSS3key_11SiriSignals11SignalValueO5valuetMd, &_sSS3key_11SiriSignals11SignalValueO5valuetMR);
  v19 = *v18;
  v20 = v18[1];
  v21 = v18 + *(v15 + 56);
  v59 = *(v8 + 8);
  v59(v21, v7);
  outlined init with copy of (CamLogOutput, CamModelMetadata)(a1, v18, &_sSS3key_11SiriSignals11SignalValueO5valuetMd, &_sSS3key_11SiriSignals11SignalValueO5valuetMR);
  v22 = v18[1];

  v23 = v18 + *(v15 + 56);
  v24 = v7;
  (*(v8 + 32))(v13, v23, v7);
  v62[0] = v19;
  v62[1] = v20;
  v61 = v62;
  v25 = v58;
  if (!specialized Sequence.contains(where:)(partial apply for specialized closure #1 in BidirectionalCollection<>.lastIndex(of:), v60, v57))
  {
    v59(v13, v7);

LABEL_14:
    v46 = v63;
    *v63 = 0;
    v46[1] = 0;
    v46[2] = 0;
    return result;
  }

  v58 = v25;
  v26 = v56;
  (*(v8 + 16))(v56, v13, v24);
  if ((*(v8 + 88))(v26, v24) != *MEMORY[0x277D60188])
  {

    v41 = v59;
    v59(v26, v24);
    if (one-time initialization token for ranker != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Logger.ranker);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_266790000, v43, v44, "Ignoring bundle-dependent signal; can only use independent signals in this context", v45, 2u);
      MEMORY[0x26D5DDCD0](v45, -1, -1);
    }

    result = v41(v13, v24);
    goto LABEL_14;
  }

  v27 = v19;
  (*(v8 + 96))(v26, v24);
  v28 = v54;
  v56 = specialized Dictionary.subscript.getter(v55, v54, *v26);
  v30 = v29;

  if (v30)
  {
    if (one-time initialization token for ranker != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.ranker);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v32, v33))
    {

      result = (v59)(v13, v24);
      v38 = v53;
      goto LABEL_22;
    }

    v34 = swift_slowAlloc();
    v57 = v20;
    v35 = v34;
    v36 = swift_slowAlloc();
    v52 = v8 + 8;
    v37 = v36;
    v62[0] = v36;
    *v35 = 136315650;
    *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v57, v62);
    *(v35 + 12) = 2080;
    *(v35 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v28, v62);
    *(v35 + 22) = 2048;
    v38 = v53;
    *(v35 + 24) = v53;
    v39 = "No value of %s for include %s. Defaulting to %ld";
  }

  else
  {
    if (one-time initialization token for ranker != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static Logger.ranker);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v32, v33))
    {

      result = (v59)(v13, v24);
      v38 = v56;
      goto LABEL_22;
    }

    v48 = swift_slowAlloc();
    v57 = v20;
    v35 = v48;
    v49 = swift_slowAlloc();
    v52 = v8 + 8;
    v37 = v49;
    v62[0] = v49;
    *v35 = 136315650;
    *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v57, v62);
    *(v35 + 12) = 2080;
    *(v35 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v28, v62);
    *(v35 + 22) = 2048;
    v38 = v56;
    *(v35 + 24) = v56;
    v39 = "Found value of %s for %s: %ld";
  }

  _os_log_impl(&dword_266790000, v32, v33, v39, v35, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x26D5DDCD0](v37, -1, -1);
  v50 = v35;
  v20 = v57;
  MEMORY[0x26D5DDCD0](v50, -1, -1);

  result = (v59)(v13, v24);
LABEL_22:
  v51 = v63;
  *v63 = v27;
  v51[1] = v20;
  v51[2] = v38;
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t outlined destroy of (key: String, value: SignalValue)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_11SiriSignals11SignalValueO5valuetMd, &_sSS3key_11SiriSignals11SignalValueO5valuetMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v26 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSiGMd, &_ss17_NativeDictionaryVySSSiGMR);
      _NativeDictionary.copy()();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v7;
    v20[1] = v6;
    *(v19[7] + 8 * v11) = v8;
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    v19[2] = v23;
    ++v4;
    a2 = 1;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14);
  v16 = *a3;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v24 = swift_allocError();
  swift_willThrow();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  MEMORY[0x26D5DCD80](0xD00000000000001BLL, 0x800000026681B680);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D5DCD80](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  v4 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v27 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v10 = v8;
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
    v13 = v9[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v16 = v11;
    if (v9[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMd, &_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMR);
      _NativeDictionary.copy()();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v20 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v21 = (v20[6] + 16 * v12);
    *v21 = v7;
    v21[1] = v6;
    *(v20[7] + 8 * v12) = v10;
    v22 = v20[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_20;
    }

    v20[2] = v24;
    ++v4;
    a2 = 1;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15);
  v17 = *a3;
  v18 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
  if ((v16 & 1) != (v19 & 1))
  {
    goto LABEL_21;
  }

  v12 = v18;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v25 = swift_allocError();
  swift_willThrow();
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  MEMORY[0x26D5DCD80](0xD00000000000001BLL, 0x800000026681B680);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D5DCD80](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void one-time initialization function for forceEnabled()
{
  static SiriKitRuntimeAmbiguityFeatureFlags.forceEnabled = MEMORY[0x277D84F98];
}

{
  static CamFeatureFlag.forceEnabled = MEMORY[0x277D84F98];
}

uint64_t SiriKitRuntimeAmbiguityFeatureFlags.isEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static SiriKitRuntimeAmbiguityFeatureFlags.forceEnabled;
  if (*(static SiriKitRuntimeAmbiguityFeatureFlags.forceEnabled + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 56) + v1);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v5[3] = &type metadata for SiriKitRuntimeAmbiguityFeatureFlags;
    v5[4] = lazy protocol witness table accessor for type SiriKitRuntimeAmbiguityFeatureFlags and conformance SiriKitRuntimeAmbiguityFeatureFlags();
    v3 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  return v3 & 1;
}

Swift::Int SiriKitRuntimeAmbiguityFeatureFlags.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x26D5DD540](0);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type SiriKitRuntimeAmbiguityFeatureFlags and conformance SiriKitRuntimeAmbiguityFeatureFlags()
{
  result = lazy protocol witness table cache variable for type SiriKitRuntimeAmbiguityFeatureFlags and conformance SiriKitRuntimeAmbiguityFeatureFlags;
  if (!lazy protocol witness table cache variable for type SiriKitRuntimeAmbiguityFeatureFlags and conformance SiriKitRuntimeAmbiguityFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriKitRuntimeAmbiguityFeatureFlags and conformance SiriKitRuntimeAmbiguityFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriKitRuntimeAmbiguityFeatureFlags and conformance SiriKitRuntimeAmbiguityFeatureFlags;
  if (!lazy protocol witness table cache variable for type SiriKitRuntimeAmbiguityFeatureFlags and conformance SiriKitRuntimeAmbiguityFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriKitRuntimeAmbiguityFeatureFlags and conformance SiriKitRuntimeAmbiguityFeatureFlags);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriKitRuntimeAmbiguityFeatureFlags(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t specialized Sequence<>.max()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t specialized Sequence<>.max()(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  result = a1[4];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 5;
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (result <= v7)
      {
        result = v6;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

SiriCam::Domain3PProtectionLevel_optional __swiftcall Domain3PProtectionLevel.init(rawValue:)(Swift::Int64 rawValue)
{
  if (rawValue >= 4)
  {
    LOBYTE(rawValue) = 4;
  }

  return rawValue;
}

uint64_t DawnRankerFeatureExtractor.init(actions:rankerContext:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for ActionCandidate();
  OUTLINED_FUNCTION_2_3();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_0();
  v12 = v11 - v10;
  v13 = (a2 + *(type metadata accessor for RankerContext() + 24));
  v14 = *v13;
  v15 = v13[1];
  type metadata accessor for ConversationHistoryFeatureExtractor();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  v17 = *(a1 + 16);
  if (v17)
  {
    v27 = a2;
    v28 = MEMORY[0x277D84F90];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
    v18 = v28;
    v19 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v20 = *(v6 + 72);
    do
    {
      outlined init with copy of ActionCandidate(v19, v12, type metadata accessor for ActionCandidate);
      v21 = *(v12 + *(v4 + 24));
      outlined destroy of ActionCandidate();
      v23 = v28[2];
      v22 = v28[3];
      if (v23 >= v22 >> 1)
      {
        v24 = OUTLINED_FUNCTION_16_8(v22);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v24, v23 + 1, 1);
      }

      v28[2] = v23 + 1;
      v28[v23 + 4] = v21;
      v19 += v20;
      --v17;
    }

    while (v17);

    a2 = v27;
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  specialized Sequence<>.max()(v18);

  v25 = *a2;
  static DawnRankerFeatureExtractor.extractOnScreenAppBundleIds(rrCandidates:)();
  outlined destroy of ActionCandidate();
  return v16;
}

uint64_t specialized ScalarFeatureExtracting.extract(from:to:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = a3();
  if (!v3)
  {
    specialized _dictionaryUpCast<A, B, C, D>(_:)(result);
    v6 = v5;

    specialized Dictionary.update(other:allowDuplicateKeys:)(v6, 0);
  }

  return result;
}

void one-time initialization function for extractedFeatures()
{
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of static AffinityRankFeatureExtractor.extractedFeatures.getter);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of one-time initialization function for extractedFeatures);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of static ConversationHistoryFeatureExtractor.extractedFeatures.getter);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of one-time initialization function for extractedFeatures);
  static RankerFeatureExtractor.extractedFeatures = &outlined read-only object #0 of one-time initialization function for extractedFeatures;
}

{
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of one-time initialization function for extractedFeatures);
  static DawnRankerFeatureExtractor.extractedFeatures = &outlined read-only object #0 of static ConversationHistoryFeatureExtractor.extractedFeatures.getter;
}

{
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of one-time initialization function for CLIENT_TIME_RANGE);
  static PersonalContextFeatureExtractor.extractedFeatures = &outlined read-only object #0 of one-time initialization function for extractedFeatures;
}

uint64_t RankerFeatureExtractor.extractImpl(from:)()
{
  v2 = v0;
  type metadata accessor for MLFeatureValue();
  v3 = Dictionary.init(dictionaryLiteral:)();
  v25 = v3;
  v4 = type metadata accessor for RankerFeatureExtractor();
  v5 = *(v2 + v4[9]);
  v6 = OUTLINED_FUNCTION_18_9();
  v7 = specialized FeatureExtracting.extract(from:)(v6);
  if (v1)
  {
  }

  else
  {
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v7);

    OUTLINED_FUNCTION_13_12();

    v8 = (v2 + v4[5]);
    v9 = *v8;
    v10 = v8[1];
    v11 = *(v8 + 16);
    v12 = OUTLINED_FUNCTION_18_9();
    v13 = specialized FeatureExtracting.extract(from:)(v12);
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v13);

    OUTLINED_FUNCTION_13_12();

    v15 = *(v2 + v4[6]);
    v16 = OUTLINED_FUNCTION_18_9();
    specialized ScalarFeatureExtracting.extract(from:to:)(v16, v17, v18);
    v19 = OUTLINED_FUNCTION_18_9();
    v20 = specialized FeatureExtracting.extract(from:)(v19);
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v20);

    OUTLINED_FUNCTION_13_12();

    v21 = *(v2 + v4[8]);
    OUTLINED_FUNCTION_6_18();
    v22 = OUTLINED_FUNCTION_18_9();
    specialized ScalarFeatureExtracting.extract(from:to:)(v22, v23, v24);
    return v25;
  }

  return v3;
}

uint64_t ParserPriority.init(parserId:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  if (__swift_getEnumTagSinglePayload(a1, 1, v6) != 1)
  {
    outlined init with copy of Siri_Nlu_External_Parser.ParserIdentifier?(a1, v5);
    OUTLINED_FUNCTION_2_3();
    v9 = v8;
    v11 = (*(v10 + 88))(v5, v6);
    if (v11 == *MEMORY[0x277D5DA80])
    {
      v7 = 0;
      goto LABEL_11;
    }

    if (v11 == *MEMORY[0x277D5DA78])
    {
      v7 = 4;
      goto LABEL_11;
    }

    if (v11 == *MEMORY[0x277D5DA70])
    {
      v7 = 2;
      goto LABEL_11;
    }

    if (v11 == *MEMORY[0x277D5DA60])
    {
      v7 = 1;
      goto LABEL_11;
    }

    (*(v9 + 8))(v5, v6);
  }

  v7 = 5;
LABEL_11:
  outlined destroy of (CamLogOutput, CamModelMetadata)(a1, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  return v7;
}

SiriCam::Domain3PProtectionLevel_optional protocol witness for RawRepresentable.init(rawValue:) in conformance Domain3PProtectionLevel@<W0>(Swift::Int64 *a1@<X0>, SiriCam::Domain3PProtectionLevel_optional *a2@<X8>)
{
  result.value = Domain3PProtectionLevel.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Domain3PProtectionLevel@<X0>(uint64_t *a1@<X8>)
{
  result = Domain3PProtectionLevel.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t static DawnRankerFeatureExtractor.extractOnScreenAppBundleIds(rrCandidates:)()
{
  OUTLINED_FUNCTION_48();
  v64 = type metadata accessor for RREntity();
  OUTLINED_FUNCTION_2_3();
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v59 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v55 - v8;
  v65 = type metadata accessor for RRCandidate();
  OUTLINED_FUNCTION_2_3();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  v58 = v15;
  v17 = MEMORY[0x28223BE20](v16);
  v56 = &v55 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v55 - v19;
  v21 = 0;
  v22 = *(v0 + 2);
  v60 = v0;
  v61 = v22;
  v23 = (v2 + 8);
  v62 = (v11 + 8);
  v63 = v11 + 16;
  v55 = (v11 + 32);
  v57 = MEMORY[0x277D84F90];
  while (v61 != v21)
  {
    v24 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v25 = *(v11 + 72);
    (*(v11 + 16))(v20, v60 + v24 + v25 * v21, v65);
    RRCandidate.entity.getter();
    RREntity.usoEntity.getter();
    (*v23)(v9, v64);
    v26 = UsoTask.verbString.getter();
    v28 = v27;

    if (v26 == 0x415F6E6F6D6D6F63 && v28 == 0xEA00000000007070)
    {

LABEL_10:
      if (!RRCandidate.isOnScreen.getter())
      {
        goto LABEL_11;
      }

      v31 = *v55;
      (*v55)(v56, v20, v65);
      v32 = v57;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 16) + 1, 1);
        v32 = v66;
      }

      v35 = *(v32 + 16);
      v34 = *(v32 + 24);
      v36 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        v37 = OUTLINED_FUNCTION_16_8(v34);
        v57 = v38;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v37, v38, 1);
        v36 = v57;
        v32 = v66;
      }

      ++v21;
      *(v32 + 16) = v36;
      v57 = v32;
      v31((v32 + v24 + v35 * v25), v56, v65);
    }

    else
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v30)
      {
        goto LABEL_10;
      }

LABEL_11:
      (*v62)(v20, v65);
      ++v21;
    }
  }

  v39 = v57;
  v40 = *(v57 + 16);
  if (v40)
  {
    v66 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40, 0);
    v41 = v66;
    v42 = v39 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v43 = *(v11 + 72);
    v60 = *(v11 + 16);
    v61 = v43;
    do
    {
      v44 = v58;
      v45 = v65;
      v60(v58, v42, v65);
      v46 = v59;
      RRCandidate.entity.getter();
      v47 = RREntity.id.getter();
      v49 = v48;
      (*v23)(v46, v64);
      (*v62)(v44, v45);
      v66 = v41;
      v51 = *(v41 + 16);
      v50 = *(v41 + 24);
      if (v51 >= v50 >> 1)
      {
        v53 = OUTLINED_FUNCTION_16_8(v50);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v53, v51 + 1, 1);
        v41 = v66;
      }

      *(v41 + 16) = v51 + 1;
      v52 = v41 + 16 * v51;
      *(v52 + 32) = v47;
      *(v52 + 40) = v49;
      v42 += v61;
      --v40;
    }

    while (v40);
  }

  else
  {

    v41 = MEMORY[0x277D84F90];
  }

  return _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v41);
}

__int128 *DawnRankerFeatureExtractor.extractImpl(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v113 = a3;
  v114 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v104 - v8;
  v10 = type metadata accessor for CamUSOParse(0);
  v11 = OUTLINED_FUNCTION_0_2(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_0();
  v16 = (v15 - v14);
  v17 = type metadata accessor for CamParse(0);
  v18 = OUTLINED_FUNCTION_0_2(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_0();
  v23 = (v22 - v21);
  v24 = type metadata accessor for MLFeatureValue();
  v118 = Dictionary.init(dictionaryLiteral:)();
  OUTLINED_FUNCTION_6_18();
  specialized ScalarFeatureExtracting.extract(from:to:)(a1, &v118, v25);
  if (v4)
  {

    return v16;
  }

  v112 = v24;
  v26 = type metadata accessor for ActionCandidate();
  v27 = v26[5];
  v28 = *(a1 + v26[6]);
  if (v28 >= 4)
  {
    v28 = 4;
  }

  if (v28 <= 1)
  {
    v29 = 1;
  }

  else
  {
    v29 = v28;
  }

  v111 = a1;
  outlined init with copy of ActionCandidate(a1 + v27, v23, type metadata accessor for CamParse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v110 = 0;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v31 = *v23;
      v32 = dispatch thunk of PommesResponse.isPersonalDomainFallback.getter();

      v33 = 0;
      v105 = 0;
      v108 = v32 & 1;
      v109 = 0;
      v34 = 3;
    }

    else
    {
      if (one-time initialization token for ranker != -1)
      {
        OUTLINED_FUNCTION_1();
      }

      v43 = type metadata accessor for Logger();
      __swift_project_value_buffer(v43, static Logger.ranker);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        OUTLINED_FUNCTION_1_8(&dword_266790000, v47, v48, "Unknown parser");
        MEMORY[0x26D5DDCD0](v46, -1, -1);
      }

      outlined destroy of ActionCandidate();
      v108 = 0;
      v109 = 0;
      v33 = 0;
      v105 = 0;
      v34 = 5;
    }

    goto LABEL_20;
  }

  outlined init with take of CamUSOParse(v23, v16);
  outlined init with copy of Siri_Nlu_External_Parser.ParserIdentifier?(v16 + *(v10 + 20), v9);
  v34 = ParserPriority.init(parserId:)(v9);
  v35 = CamUSOParse.appShortcutInvocation.getter();
  if (!v36)
  {
    OUTLINED_FUNCTION_9_11();
    v108 = 0;
    v109 = 0;
    v33 = 0;
    v105 = 0;
LABEL_20:
    v42 = v111;
    goto LABEL_23;
  }

  outlined consume of AppShortcutInvocation?(v35, v36);
  CamUSOParse.appShortcutInvocation.getter();
  v38 = v37;
  v105 = v39;
  v41 = v40;
  OUTLINED_FUNCTION_9_11();
  v42 = v111;
  if (v38)
  {
    v109 = v41;

    v108 = 0;
  }

  else
  {
    v108 = 0;
    v109 = 0;
    v105 = 0;
  }

  v33 = 1;
  v29 = v113;
LABEL_23:
  v49 = (v42 + v26[9]);
  v50 = v49[1];
  v106 = v33;
  if (v50)
  {
    v107 = specialized Set.contains(_:)(*v49, v50, v114);
    if ((v33 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v107 = 0;
    if (!v33)
    {
      goto LABEL_38;
    }
  }

  if (*(v42 + v26[7]))
  {
    OUTLINED_FUNCTION_8_14();
    specialized Dictionary.subscript.getter(v51 - 3, v52 | 0x8000000000000000, v53, &v116);
    if (*(&v117 + 1))
    {
      if (OUTLINED_FUNCTION_23_7())
      {
        goto LABEL_38;
      }

      goto LABEL_33;
    }
  }

  else
  {
    v116 = 0u;
    v117 = 0u;
  }

  outlined destroy of (CamLogOutput, CamModelMetadata)(&v116, &_sypSgMd, &_sypSgMR);
LABEL_33:
  if (one-time initialization token for ranker != -1)
  {
    OUTLINED_FUNCTION_1();
  }

  v54 = type metadata accessor for Logger();
  __swift_project_value_buffer(v54, static Logger.ranker);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    OUTLINED_FUNCTION_1_8(&dword_266790000, v58, v59, "App Shortcut enablement status not available in user data. This should not happen.");
    v60 = v57;
    v42 = v111;
    MEMORY[0x26D5DDCD0](v60, -1, -1);
  }

LABEL_38:
  if (!*(v42 + v26[7]))
  {
    v116 = 0u;
    v117 = 0u;
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_8_14();
  specialized Dictionary.subscript.getter(v61 - 3, v62 | 0x8000000000000000, v63, &v116);
  if (!*(&v117 + 1))
  {
LABEL_43:
    outlined destroy of (CamLogOutput, CamModelMetadata)(&v116, &_sypSgMd, &_sypSgMR);
    goto LABEL_44;
  }

  if (OUTLINED_FUNCTION_23_7())
  {
    v64 = v115;
    goto LABEL_45;
  }

LABEL_44:
  v64 = 0;
LABEL_45:
  v113 = DawnRankerFeatureExtractor.extractDomainProtectionLevel(from:)(v42);
  v114 = DawnRankerFeatureExtractor.extractAmbiguousFirstRunPreviouslyShown(from:)();
  v65 = objc_opt_self();
  v66 = [v65 featureValueWithInt64_];
  v16 = v118;
  if (v66)
  {
    v67 = v66;
    swift_isUniquelyReferenced_nonNull_native();
    *&v116 = v16;
    OUTLINED_FUNCTION_8_14();
    v69 = &v116;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v67, v68 - 2, 0x8000000266819430);
    v16 = v116;
  }

  else
  {
    OUTLINED_FUNCTION_8_14();
    v69 = v16;
    specialized __RawDictionaryStorage.find<A>(_:)(v70 - 2, 0x8000000266819430);
    if ((v71 & 1) == 0)
    {
      goto LABEL_50;
    }

    swift_isUniquelyReferenced_nonNull_native();
    *&v116 = v16;
    v16 = *(v16 + 3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMd, &_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMR);
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_12_15();
    _NativeDictionary._delete(at:)();
  }

  v118 = v16;
LABEL_50:
  if ([v65 featureValueWithInt64_])
  {
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_17_9();
    v16 = v116;
  }

  else
  {
    OUTLINED_FUNCTION_19_9();
    if ((v72 & 1) == 0)
    {
      goto LABEL_55;
    }

    swift_isUniquelyReferenced_nonNull_native();
    *&v116 = v16;
    v16 = *(v16 + 3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMd, &_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMR);
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_12_15();
    _NativeDictionary._delete(at:)();
  }

  v118 = v16;
LABEL_55:
  if ([v65 featureValueWithInt64_])
  {
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_17_9();
    v16 = v116;
    v118 = v116;
  }

  else
  {
    OUTLINED_FUNCTION_19_9();
    if (v73)
    {
      OUTLINED_FUNCTION_3_17();
      OUTLINED_FUNCTION_2_18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMd, &_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMR);
      OUTLINED_FUNCTION_0_19();
      OUTLINED_FUNCTION_1_21();
      OUTLINED_FUNCTION_12_15();
      OUTLINED_FUNCTION_7_13();

      v118 = v16;
    }
  }

  OUTLINED_FUNCTION_20_9();
  if ([v65 v74])
  {
    OUTLINED_FUNCTION_3_17();
    OUTLINED_FUNCTION_14_13();
    OUTLINED_FUNCTION_8_14();
    v75 = OUTLINED_FUNCTION_5_14();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v75, v76, v77);
    v16 = v116;
  }

  else
  {
    OUTLINED_FUNCTION_8_14();
    v69 = v16;
    specialized __RawDictionaryStorage.find<A>(_:)(v78 - 4, 0xD35F5050415F5349);
    if ((v79 & 1) == 0)
    {
      goto LABEL_64;
    }

    OUTLINED_FUNCTION_3_17();
    OUTLINED_FUNCTION_2_18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMd, &_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMR);
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_12_15();
    OUTLINED_FUNCTION_7_13();
  }

  v118 = v16;
LABEL_64:
  v80 = [v65 featureValueWithInt64_];
  if (v80)
  {
    v81 = v80;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_14_13();
    v69 = &v116;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v81, 0x665F73656D6D6F70, 0xEF6B6361626C6C61);
    v16 = v116;
  }

  else
  {
    OUTLINED_FUNCTION_19_9();
    if ((v82 & 1) == 0)
    {
      goto LABEL_69;
    }

    OUTLINED_FUNCTION_3_17();
    OUTLINED_FUNCTION_2_18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMd, &_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMR);
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_12_15();
    OUTLINED_FUNCTION_7_13();
  }

  v118 = v16;
LABEL_69:
  OUTLINED_FUNCTION_20_9();
  if ([v65 v83])
  {
    OUTLINED_FUNCTION_3_17();
    OUTLINED_FUNCTION_14_13();
    v84 = OUTLINED_FUNCTION_5_14();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v84, 0xD000000000000017, v85);
    v16 = v116;
  }

  else
  {
    OUTLINED_FUNCTION_25_6();
    if ((v86 & 1) == 0)
    {
      goto LABEL_74;
    }

    OUTLINED_FUNCTION_3_17();
    OUTLINED_FUNCTION_2_18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMd, &_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMR);
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_12_15();
    OUTLINED_FUNCTION_7_13();
  }

  v118 = v16;
LABEL_74:
  OUTLINED_FUNCTION_20_9();
  if ([v65 v87])
  {
    OUTLINED_FUNCTION_3_17();
    OUTLINED_FUNCTION_14_13();
    v88 = OUTLINED_FUNCTION_5_14();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v88, 0xD000000000000017, v89);
    v16 = v116;
LABEL_78:
    v118 = v16;
    goto LABEL_79;
  }

  OUTLINED_FUNCTION_25_6();
  if (v90)
  {
    OUTLINED_FUNCTION_3_17();
    OUTLINED_FUNCTION_2_18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMd, &_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMR);
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_1_21();
    OUTLINED_FUNCTION_12_15();
    OUTLINED_FUNCTION_7_13();

    goto LABEL_78;
  }

LABEL_79:
  OUTLINED_FUNCTION_20_9();
  if ([v65 v91])
  {
    OUTLINED_FUNCTION_3_17();
    OUTLINED_FUNCTION_14_13();
    OUTLINED_FUNCTION_8_14();
    v92 = OUTLINED_FUNCTION_5_14();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v92, v93, v94);
    v16 = v116;
    v118 = v116;
    v95 = v109;
  }

  else
  {
    OUTLINED_FUNCTION_8_14();
    specialized __RawDictionaryStorage.find<A>(_:)(v96 + 7, 0xE65F73656D6D6F70);
    v95 = v109;
    if (v97)
    {
      OUTLINED_FUNCTION_3_17();
      OUTLINED_FUNCTION_2_18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMd, &_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMR);
      OUTLINED_FUNCTION_0_19();
      OUTLINED_FUNCTION_1_21();
      OUTLINED_FUNCTION_12_15();
      OUTLINED_FUNCTION_7_13();

      v118 = v16;
    }
  }

  if (v95)
  {
    if (@nonobjc MLFeatureValue.__allocating_init(string:)())
    {
      OUTLINED_FUNCTION_3_17();
      OUTLINED_FUNCTION_14_13();
      OUTLINED_FUNCTION_8_14();
      v98 = OUTLINED_FUNCTION_5_14();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v98, v99, v100);
      return v116;
    }

    else
    {
      OUTLINED_FUNCTION_8_14();
      specialized __RawDictionaryStorage.find<A>(_:)(v101 + 7, 0x800000026681AF80);
      if (v102)
      {
        OUTLINED_FUNCTION_3_17();
        OUTLINED_FUNCTION_2_18();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMd, &_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMR);
        OUTLINED_FUNCTION_0_19();
        OUTLINED_FUNCTION_1_21();
        OUTLINED_FUNCTION_12_15();
        OUTLINED_FUNCTION_7_13();
      }
    }
  }

  return v16;
}

uint64_t DawnRankerFeatureExtractor.extractDomainProtectionLevel(from:)(uint64_t a1)
{
  v2 = static TrialProvider.tieBreakingOverrides.getter();
  if (!v2)
  {
    return 3;
  }

  v3 = v2;
  MEMORY[0x28223BE20](v2);
  v8[2] = a1;
  v4 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in DawnRankerFeatureExtractor.extractDomainProtectionLevel(from:), v8, v3);

  v5 = *(v4 + 16);
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = *(v4 + 32);
    }

    else
    {
      v6 = 3;
    }
  }

  else
  {
    v6 = 2;
  }

  return v6;
}

uint64_t DawnRankerFeatureExtractor.extractAmbiguousFirstRunPreviouslyShown(from:)()
{
  OUTLINED_FUNCTION_48();
  v1 = (v0 + *(type metadata accessor for ActionCandidate() + 36));
  v2 = v1[1];
  if (v2)
  {
    v3 = *v1;
    static CamUserHistoryDefaultsManager.getValue(key:)(0xD000000000000021, 0x800000026681AFC0, &v8);
    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      v4 = swift_dynamicCast();
      if (v4)
      {
        v5 = v7[4];
LABEL_7:
        *&v8 = v3;
        *(&v8 + 1) = v2;
        MEMORY[0x28223BE20](v4);
        v7[2] = &v8;
        LOBYTE(v2) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in BidirectionalCollection<>.lastIndex(of:), v7, v5);

        return v2 & 1;
      }
    }

    else
    {
      v4 = outlined destroy of (CamLogOutput, CamModelMetadata)(&v8, &_sypSgMd, &_sypSgMR);
    }

    v5 = MEMORY[0x277D84F90];
    goto LABEL_7;
  }

  return v2 & 1;
}

id @nonobjc MLFeatureValue.__allocating_init(string:)()
{
  v0 = MEMORY[0x26D5DCC90]();

  v1 = [swift_getObjCClassFromMetadata() featureValueWithString_];

  return v1;
}

uint64_t closure #1 in DawnRankerFeatureExtractor.extractDomainProtectionLevel(from:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v4 = *result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  v7 = *(result + 24);
  v8 = *a2;
  v9 = a2[1];
  v10 = *result == *a2 && v5 == v9;
  if (v10 || (v11 = *result, result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result)) && (v6 == 0xD000000000000021 ? (v12 = 0x8000000266819930 == v7) : (v12 = 0), v12 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result)))
  {
    v13 = 3;
  }

  else
  {
    v14 = v4 == 0xD000000000000021 && 0x8000000266819930 == v5;
    if (v14 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result)) && (v6 == v8 ? (v15 = v7 == v9) : (v15 = 0), v15 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result)))
    {
      v13 = 1;
    }

    else
    {
      v13 = 4;
    }
  }

  *a3 = v13;
  return result;
}

uint64_t protocol witness for static FeatureExtracting.extractedFeatures.getter in conformance RankerFeatureExtractor(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v5 = *a4;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DawnRankerFeatureExtractor(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for DawnRankerFeatureExtractor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for RankerFeatureExtractor()
{
  result = type metadata singleton initialization cache for RankerFeatureExtractor;
  if (!type metadata singleton initialization cache for RankerFeatureExtractor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for RankerFeatureExtractor()
{
  result = type metadata accessor for RankerContext();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AffinityRankFeatureExtractor();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ConversationHistoryFeatureExtractor();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t outlined init with copy of ActionCandidate(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0_2(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t outlined destroy of ActionCandidate()
{
  v1 = OUTLINED_FUNCTION_48();
  v3 = v2(v1);
  OUTLINED_FUNCTION_0_2(v3);
  (*(v4 + 8))(v0);
  return v0;
}

_BYTE *storeEnumTagSinglePayload for Domain3PProtectionLevel(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t lazy protocol witness table accessor for type Domain3PProtectionLevel and conformance Domain3PProtectionLevel()
{
  result = lazy protocol witness table cache variable for type Domain3PProtectionLevel and conformance Domain3PProtectionLevel;
  if (!lazy protocol witness table cache variable for type Domain3PProtectionLevel and conformance Domain3PProtectionLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Domain3PProtectionLevel and conformance Domain3PProtectionLevel);
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_19_9()
{

  return specialized __RawDictionaryStorage.find<A>(_:)(v1, v0);
}

uint64_t OUTLINED_FUNCTION_23_7()
{

  return swift_dynamicCast();
}

unint64_t OUTLINED_FUNCTION_25_6()
{

  return specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000017, v0 | 0x8000000000000000);
}

id static UncertaintyPromptRequestLogger.map(from:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D56C68]) init];
  if (v2)
  {
    v3 = *(a1 + *(type metadata accessor for CamRequest(0) + 52));
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = (v3 + 32);
      do
      {
        v7 = *v5++;
        v6 = v7;
        v8 = v7 == 1;
        if (v7 == 1)
        {
          v9 = 0x4F5455415F534D53;
        }

        else
        {
          v9 = 0xD000000000000010;
        }

        if (v8)
        {
          v10 = 0xEC000000444E4553;
        }

        else
        {
          v10 = 0x8000000266819EC0;
        }

        if (v6)
        {
          v11 = v9;
        }

        else
        {
          v11 = 0x455045525F4B5341;
        }

        if (v6)
        {
          v12 = v10;
        }

        else
        {
          v12 = 0xEA00000000005441;
        }

        v13 = MEMORY[0x26D5DCC90](v11, v12);

        [v2 addFeature_];

        --v4;
      }

      while (v4);
    }
  }

  return v2;
}

id static CaarErrorLogger.wrapIntoLogEvent(message:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D56BA0]) init];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [objc_allocWithZone(MEMORY[0x277D56B48]) init];
  if (v4)
  {
    [v3 setFailed_];
    [v4 setCaarRequestContext_];
  }

  return v4;
}

void *one-time initialization function for kCamActionMap()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_So18CAMSchemaCAMActionVtGMd, _ss23_ContiguousArrayStorageCys11AnyHashableV_So18CAMSchemaCAMActionVtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2668179C0;
  lazy protocol witness table accessor for type CamAction and conformance CamAction();
  OUTLINED_FUNCTION_0_20();
  *(inited + 72) = 0;
  OUTLINED_FUNCTION_0_20();
  *(inited + 120) = 1;
  OUTLINED_FUNCTION_0_20();
  *(inited + 168) = 2;
  OUTLINED_FUNCTION_0_20();
  *(inited + 216) = 3;
  OUTLINED_FUNCTION_0_20();
  *(inited + 264) = 6;
  lazy protocol witness table accessor for type AutoConfirmAction and conformance AutoConfirmAction();
  OUTLINED_FUNCTION_0_20();
  *(inited + 312) = 0;
  OUTLINED_FUNCTION_0_20();
  *(inited + 360) = 4;
  OUTLINED_FUNCTION_0_20();
  *(inited + 408) = 5;
  type metadata accessor for CAMSchemaCAMAction(0);
  result = Dictionary.init(dictionaryLiteral:)();
  kCamActionMap._rawValue = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AutoConfirmAction and conformance AutoConfirmAction()
{
  result = lazy protocol witness table cache variable for type AutoConfirmAction and conformance AutoConfirmAction;
  if (!lazy protocol witness table cache variable for type AutoConfirmAction and conformance AutoConfirmAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoConfirmAction and conformance AutoConfirmAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutoConfirmAction and conformance AutoConfirmAction;
  if (!lazy protocol witness table cache variable for type AutoConfirmAction and conformance AutoConfirmAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoConfirmAction and conformance AutoConfirmAction);
  }

  return result;
}

uint64_t DisambiguationFeatureExtractor.init(rankedActions:siriSignalsContainer:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam6TopTwoVSgMd, &_s7SiriCam6TopTwoVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - v8;
  Array<A>.topTwo.getter(a1, &v18 - v8);

  v10 = type metadata accessor for TopTwo();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    outlined destroy of Token?(v9, &_s7SiriCam6TopTwoVSgMd, &_s7SiriCam6TopTwoVSgMR);
    v11 = MEMORY[0x277D84F90];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SiriCam12RankedActionVGMd, &_ss23_ContiguousArrayStorageCy7SiriCam12RankedActionVGMR);
    v12 = *(type metadata accessor for RankedAction() - 8);
    v13 = *(v12 + 72);
    v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_266813E60;
    v15 = v11 + v14;
    outlined init with copy of RankedAction(v9, v15);
    outlined init with copy of RankedAction(&v9[*(v10 + 20)], v15 + v13);
    outlined destroy of TopTwo(v9);
  }

  v16 = specialized _arrayForceCast<A, B>(_:)(v11);

  v19 = v16;

  specialized MutableCollection<>.sort(by:)();

  *a3 = v19;
  return outlined init with take of CaarHandler(a2, (a3 + 1));
}

uint64_t specialized BidirectionalCollection.last.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32 * v1);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];

  return v3;
}

void *static DisambiguationFeatureExtractor.extractedFeatures.getter()
{
  if (one-time initialization token for ACTION_DISAMBIGUATION_FREQ != -1)
  {
    swift_once();
  }

  specialized Array.append<A>(contentsOf:)(v0);
  if (one-time initialization token for APP_DISAMBIGUATION_FREQ != -1)
  {
    swift_once();
  }

  specialized Array.append<A>(contentsOf:)(v1);
  if (one-time initialization token for FRAC_SELECTED_APP_DISAMBIGUATION_FREQ != -1)
  {
    swift_once();
  }

  specialized Array.append<A>(contentsOf:)(v2);
  if (one-time initialization token for FRAC_SELECTED_ACTION_DISAMBIGUATION_FREQ != -1)
  {
    swift_once();
  }

  specialized Array.append<A>(contentsOf:)(v3);
  if (one-time initialization token for SELECTED_APP_DISAMBIGUATION_FREQ != -1)
  {
    swift_once();
  }

  specialized Array.append<A>(contentsOf:)(v4);
  if (one-time initialization token for SELECTED_ACTION_DISAMBIGUATION_FREQ != -1)
  {
    swift_once();
  }

  specialized Array.append<A>(contentsOf:)(v5);
  return &outlined read-only object #0 of static DisambiguationFeatureExtractor.extractedFeatures.getter;
}

uint64_t DisambiguationFeatureExtractor.extractImpl(from:)(uint64_t a1)
{
  type metadata accessor for MLFeatureValue();
  v11 = Dictionary.init(dictionaryLiteral:)();
  v3 = DisambiguationFeatureExtractor.extractAppDisambiguationFeatures(from:)(a1);
  if (v1)
  {
  }

  OUTLINED_FUNCTION_3_18(v3);

  v4 = OUTLINED_FUNCTION_8_15();
  v5 = DisambiguationFeatureExtractor.extractActionDisambiguationFeatures(from:)(v4);
  OUTLINED_FUNCTION_3_18(v5);

  v6 = OUTLINED_FUNCTION_8_15();
  v7 = DisambiguationFeatureExtractor.extractLastActionDisambiguationFeatures(from:)(v6);
  OUTLINED_FUNCTION_3_18(v7);

  v8 = OUTLINED_FUNCTION_8_15();
  v9 = DisambiguationFeatureExtractor.extractLastAppDisambiguationFeatures(from:)(v8);
  OUTLINED_FUNCTION_7_14(v9);

  return v11;
}

uint64_t static DisambiguationFeatureExtractor.computeFractionSignal(numerator:denominator:prefixStr:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  specialized Collection.first.getter(a1);
  if (v6)
  {

    String.signalPrefix.getter();
    v8 = v7;

    if (v8)
    {
    }
  }

  specialized Collection.first.getter(a2);
  if (!v10 || (v9, v73 = String.signalPrefix.getter(), v12 = v11, , (v76 = v12) == 0))
  {

    v73 = 0;
    v76 = 0xE000000000000000;
  }

  type metadata accessor for MLFeatureValue();
  v13 = Dictionary.init(dictionaryLiteral:)();
  v14 = v4 + 64;
  v15 = 1 << *(v4 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v4 + 64);
  v18 = (v15 + 63) >> 6;

  v19 = 0;
  v69 = v4 + 64;
  v70 = v18;
  v67 = v4;
  while (1)
  {
    if (!v17)
    {
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v20 >= v18)
        {

          return v13;
        }

        v17 = *(v14 + 8 * v20);
        ++v19;
        if (v17)
        {
          v19 = v20;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

LABEL_15:
    v21 = __clz(__rbit64(v17)) | (v19 << 6);
    v22 = (*(v4 + 48) + 16 * v21);
    v23 = *v22;
    v24 = v22[1];
    v25 = *(*(v4 + 56) + 8 * v21);

    v77 = v25;
    OUTLINED_FUNCTION_11_7();
    v26 = String.signalBucket.getter();
    if (!v27)
    {
      break;
    }

    v28 = v26;
    v29 = v27;
    v79[0] = v73;
    v79[1] = v76;

    v30 = OUTLINED_FUNCTION_13_13();
    MEMORY[0x26D5DCD80](v30);
    MEMORY[0x26D5DCD80](v28, v29);
    if (!*(a2 + 16) || (v31 = OUTLINED_FUNCTION_11_7(), v33 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v32), (v34 & 1) == 0))
    {

      _StringGuts.grow(_:)(16);

      strcpy(v79, "Couldn't find ");
      HIBYTE(v79[1]) = -18;
      v61 = OUTLINED_FUNCTION_11_7();
      MEMORY[0x26D5DCD80](v61);

      v62 = v79[0];
      v63 = v79[1];
      goto LABEL_35;
    }

    v17 &= v17 - 1;
    v35 = *(*(a2 + 56) + 8 * v33);

    v79[0] = a3;
    v79[1] = a4;

    v36 = OUTLINED_FUNCTION_13_13();
    MEMORY[0x26D5DCD80](v36);
    MEMORY[0x26D5DCD80](v28, v29);

    v37 = [objc_opt_self() featureValueWithDouble_];
    if (v37)
    {
      v68 = v37;
      v74 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79[0] = v13;
      v39 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
      v41 = v13[2];
      v42 = (v40 & 1) == 0;
      v43 = v41 + v42;
      if (__OFADD__(v41, v42))
      {
        goto LABEL_38;
      }

      v44 = v39;
      v45 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMd, &_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v43))
      {
        v46 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
        if ((v45 & 1) != (v47 & 1))
        {
          goto LABEL_40;
        }

        v44 = v46;
      }

      v13 = v79[0];
      if (v45)
      {
        v55 = *(v79[0] + 56);
        v56 = *(v55 + 8 * v44);
        *(v55 + 8 * v44) = v68;
      }

      else
      {
        *(v79[0] + 8 * (v44 >> 6) + 64) |= 1 << v44;
        v57 = (v13[6] + 16 * v44);
        *v57 = a3;
        v57[1] = a4;
        *(v13[7] + 8 * v44) = v68;
        v58 = v13[2];
        v59 = __OFADD__(v58, 1);
        v60 = v58 + 1;
        if (v59)
        {
          goto LABEL_39;
        }

        v13[2] = v60;
        v56 = v74;
      }

      v4 = v67;
      v14 = v69;
      v18 = v70;
    }

    else
    {
      v48 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
      if (v49)
      {
        v50 = v48;
        v51 = swift_isUniquelyReferenced_nonNull_native();
        v79[0] = v13;
        v75 = v35;
        v52 = v13[3];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMd, &_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMR);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v51, v52);
        v53 = *(v13[6] + 16 * v50 + 8);

        v54 = *(v13[7] + 8 * v50);
        _NativeDictionary._delete(at:)();
      }

      else
      {
      }

      v14 = v69;

      v18 = v70;
    }
  }

  _StringGuts.grow(_:)(32);

  v64 = OUTLINED_FUNCTION_11_7();
  MEMORY[0x26D5DCD80](v64);
  v62 = 0xD00000000000001ELL;
  v63 = 0x800000026681B8D0;
LABEL_35:
  lazy protocol witness table accessor for type CaarError and conformance CaarError();
  OUTLINED_FUNCTION_6_2();
  *v65 = v62;
  *(v65 + 8) = v63;
  *(v65 + 16) = 1;
  swift_willThrow();

  return v13;
}

uint64_t DisambiguationFeatureExtractor.actionWasSelected(selectedIndex:action:)(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v40 - v12;
  if (a1 == -1)
  {
    return 0;
  }

  v14 = *v2;
  if (*(*v2 + 16) <= a1)
  {
    v41 = 0;
    v42 = 0xE000000000000000;
    _StringGuts.grow(_:)(85);
    v45 = v41;
    v46 = v42;
    MEMORY[0x26D5DCD80](0xD000000000000024, 0x800000026681B760);
    v41 = a1;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D5DCD80](v21);

    MEMORY[0x26D5DCD80](0xD00000000000002DLL, 0x800000026681B790);
    v22 = *(v14 + 16);
    v23 = MEMORY[0x277D84F90];
    if (v22)
    {
      v47 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
      v23 = v47;
      v24 = v14 + 32;
      do
      {
        outlined init with copy of SignalProviding(v24, &v41);
        v25 = v43;
        v26 = v44;
        __swift_project_boxed_opaque_existential_1(&v41, v43);
        v27 = (*(v26 + 40))(v25, v26);
        v29 = v28;
        __swift_destroy_boxed_opaque_existential_0(&v41);
        v47 = v23;
        v31 = *(v23 + 16);
        v30 = *(v23 + 24);
        if (v31 >= v30 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v30 > 1, v31 + 1, 1);
          v23 = v47;
        }

        *(v23 + 16) = v31 + 1;
        v32 = v23 + 16 * v31;
        *(v32 + 32) = v27;
        *(v32 + 40) = v29;
        v24 += 40;
        --v22;
      }

      while (v22);
    }

    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v34 = MEMORY[0x26D5DCE80](v23, v33);
    v36 = v35;

    MEMORY[0x26D5DCD80](v34, v36);

    v37 = v45;
    v38 = v46;
    lazy protocol witness table accessor for type CaarError and conformance CaarError();
    OUTLINED_FUNCTION_6_2();
    *v39 = v37;
    *(v39 + 8) = v38;
    *(v39 + 16) = 1;
    return swift_willThrow();
  }

  else if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    outlined init with copy of SignalProviding(v14 + 40 * a1 + 32, &v41);
    v15 = v43;
    v16 = v44;
    __swift_project_boxed_opaque_existential_1(&v41, v43);
    (*(v16 + 32))(v15, v16);
    v17 = a2[3];
    v18 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v17);
    (*(v18 + 32))(v17, v18);
    v19 = static UUID.== infix(_:_:)();
    v20 = *(v6 + 8);
    v20(v10, v5);
    v20(v13, v5);
    __swift_destroy_boxed_opaque_existential_0(&v41);
    return v19 & 1;
  }

  return result;
}

uint64_t String.signalPrefix.getter()
{
  lazy protocol witness table accessor for type String and conformance String();
  if ((StringProtocol.contains<A>(_:)() & 1) == 0)
  {
    return 0;
  }

  v0 = OUTLINED_FUNCTION_13_13();
  v1 = MEMORY[0x26D5DD150](v0);
  specialized Collection.dropLast(_:)(1, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVySsGMd, &_ss10ArraySliceVySsGMR);
  lazy protocol witness table accessor for type ArraySlice<Substring> and conformance ArraySlice<A>();
  lazy protocol witness table accessor for type Substring and conformance Substring();
  OUTLINED_FUNCTION_13_13();
  v2 = Sequence<>.joined(separator:)();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t String.signalBucket.getter()
{
  lazy protocol witness table accessor for type String and conformance String();
  if ((StringProtocol.contains<A>(_:)() & 1) == 0)
  {
    return 0;
  }

  v0 = OUTLINED_FUNCTION_13_13();
  v1 = MEMORY[0x26D5DD150](v0);
  v2 = specialized BidirectionalCollection.last.getter(v1);
  v4 = v3;
  v6 = v5;
  v8 = v7;

  if (!v8)
  {
    return 0;
  }

  v9 = MEMORY[0x26D5DCD30](v2, v4, v6, v8);
  swift_bridgeObjectRelease_n();
  return v9;
}

uint64_t specialized Collection.dropLast(_:)(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = specialized Array.index(_:offsetBy:limitedBy:)(0, (v3 - result) & ~((v3 - result) >> 63), v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = specialized Array.subscript.getter(0, v5, a2);

      return v6;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type ArraySlice<Substring> and conformance ArraySlice<A>()
{
  result = lazy protocol witness table cache variable for type ArraySlice<Substring> and conformance ArraySlice<A>;
  if (!lazy protocol witness table cache variable for type ArraySlice<Substring> and conformance ArraySlice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss10ArraySliceVySsGMd, &_ss10ArraySliceVySsGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArraySlice<Substring> and conformance ArraySlice<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

unint64_t specialized Array.subscript.getter(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = *(type metadata accessor for RankedAction() - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t specialized Array.index(_:offsetBy:limitedBy:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
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

uint64_t getEnumTagSinglePayload for DisambiguationFeatureExtractor(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for DisambiguationFeatureExtractor(uint64_t result, int a2, int a3)
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

unint64_t OUTLINED_FUNCTION_14_14()
{

  return lazy protocol witness table accessor for type CaarError and conformance CaarError();
}

uint64_t OUTLINED_FUNCTION_15_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return SiriSignalsQueryManager.serialiseQueryFields(fields:selected:)(a1, &a9);
}

uint64_t static TrialProvider.tieBreakingOverrides.getter()
{
  v0 = 0xD000000000000020;
  v1 = static TrialProvider.fetchBoolFactorFromTrial(_:)();
  if (v1 != 2 && (v1 & 1) != 0 && (CamFeatureFlag.isEnabled.getter(5u) & 1) != 0)
  {
    v2 = "r_overrides_sydneye";
  }

  else
  {
    v2 = "acSelectedAppDisambiguation";
    v0 = 0xD000000000000023;
  }

  if (one-time initialization token for ranker != -1)
  {
    OUTLINED_FUNCTION_1();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.ranker);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0, v2 | 0x8000000000000000, &v16);
    _os_log_impl(&dword_266790000, v4, v5, "[TrialProvider] Tie breaking overrides using factor = %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_3_1();
  }

  static TrialProvider.fetchStringFactorFromTrial(_:)();
  if (v8)
  {

    v9 = static TrialProvider.decodeOverrides(_:)();

    return v9;
  }

  else
  {

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315138;
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0, v2 | 0x8000000000000000, &v16);

      *(v13 + 4) = v15;
      _os_log_impl(&dword_266790000, v11, v12, "[TrialProvider] Could not fetch %s from Trial.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_3_1();
    }

    else
    {
    }

    return 0;
  }
}

uint64_t Array<A>.getFavouredAction(tie:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionVSgMd, &_s7SiriCam12RankedActionVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v32[-v8];
  v10 = type metadata accessor for RankedAction();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v32[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v32[-v15];
  v33 = a1;
  v17 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in Array<A>.getFavouredAction(tie:), v32, a2);
  specialized Collection.first.getter(v17);

  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    outlined destroy of RankedAction?(v9);
    if (one-time initialization token for ranker != -1)
    {
      OUTLINED_FUNCTION_1();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.ranker);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_266790000, v19, v20, "No override matching.", v21, 2u);
      OUTLINED_FUNCTION_3_1();
    }

    v22 = 1;
  }

  else
  {
    outlined init with take of RankedAction(v9, v16);
    if (one-time initialization token for ranker != -1)
    {
      OUTLINED_FUNCTION_1();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.ranker);
    outlined init with copy of RankedAction(v16, v14);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v34 = v27;
      *v26 = 136315138;
      v28 = *v14;
      v29 = v14[1];

      outlined destroy of RankedAction(v14);
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v34);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_266790000, v24, v25, "Found matching override, will favour %s.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_3_1();
    }

    else
    {

      outlined destroy of RankedAction(v14);
    }

    outlined init with take of RankedAction(v16, a3);
    v22 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a3, v22, 1, v10);
}

uint64_t TrialTieBreakingOverride.preference(tie:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + *(type metadata accessor for TopTwo() + 20);
  v5 = OUTLINED_FUNCTION_4_13(a1, v4);
  v6 = OUTLINED_FUNCTION_4_13(v4, a1);
  if (v5 & 1) != 0 || (v6)
  {
    if (v5)
    {
      v8 = a1;
    }

    else
    {
      v8 = v4;
    }

    outlined init with copy of RankedAction(v8, a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v9 = type metadata accessor for RankedAction();

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v9);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TrialTieBreakingOverride.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  MEMORY[0x26D5DCD80](2113056, 0xE300000000000000);
  MEMORY[0x26D5DCD80](a3, a4);
}

uint64_t static TrialTieBreakingOverride.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t TrialTieBreakingOverride.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72756F766166 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1919252079 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t TrialTieBreakingOverride.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 1919252079;
  }

  else
  {
    return 0x72756F766166;
  }
}

uint64_t TrialTieBreakingOverride.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[0] = a4;
  v17[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy7SiriCam24TrialTieBreakingOverrideV10CodingKeys33_A80028A42FABFFF095D72847896C560BLLOGMd, &_ss22KeyedEncodingContainerVy7SiriCam24TrialTieBreakingOverrideV10CodingKeys33_A80028A42FABFFF095D72847896C560BLLOGMR);
  v8 = OUTLINED_FUNCTION_22(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = v17 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TrialTieBreakingOverride.CodingKeys and conformance TrialTieBreakingOverride.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v18 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v10 + 8))(v14, v7);
}

uint64_t TrialTieBreakingOverride.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy7SiriCam24TrialTieBreakingOverrideV10CodingKeys33_A80028A42FABFFF095D72847896C560BLLOGMd, &_ss22KeyedDecodingContainerVy7SiriCam24TrialTieBreakingOverrideV10CodingKeys33_A80028A42FABFFF095D72847896C560BLLOGMR);
  v4 = OUTLINED_FUNCTION_22(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TrialTieBreakingOverride.CodingKeys and conformance TrialTieBreakingOverride.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    KeyedDecodingContainer.decode(_:forKey:)();
    v9 = OUTLINED_FUNCTION_1_23();
    v10(v9);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TrialTieBreakingOverride.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = TrialTieBreakingOverride.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TrialTieBreakingOverride.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TrialTieBreakingOverride.CodingKeys and conformance TrialTieBreakingOverride.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TrialTieBreakingOverride.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TrialTieBreakingOverride.CodingKeys and conformance TrialTieBreakingOverride.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance TrialTieBreakingOverride@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = TrialTieBreakingOverride.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TrialTieBreakingOverride()
{
  result = *v0;
  TrialTieBreakingOverride.debugDescription.getter(*v0, v0[1], v0[2], v0[3]);
  return result;
}

uint64_t static TrialProvider.decodeOverrides(_:)()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v5 = String.data(using:allowLossyConversion:)();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  if (v7 >> 60 == 15)
  {
    if (one-time initialization token for ranker != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.ranker);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      MEMORY[0x26D5DDCD0](v11, -1, -1);
    }

    return 0;
  }

  else
  {
    v12 = type metadata accessor for JSONDecoder();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7SiriCam24TrialTieBreakingOverrideVGMd, &_sSay7SiriCam24TrialTieBreakingOverrideVGMR);
    lazy protocol witness table accessor for type [TrialTieBreakingOverride] and conformance <A> [A]();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v15 = v26;
    if (one-time initialization token for ranker != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.ranker);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v20 = 136315138;
      v22 = MEMORY[0x26D5DCE80](v15, &type metadata for TrialTieBreakingOverride);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v26);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_266790000, v18, v19, "[TrialProvider] Decoded overides: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x26D5DDCD0](v21, -1, -1);
      MEMORY[0x26D5DDCD0](v20, -1, -1);
    }

    outlined consume of Data?(v5, v7);
  }

  return v15;
}