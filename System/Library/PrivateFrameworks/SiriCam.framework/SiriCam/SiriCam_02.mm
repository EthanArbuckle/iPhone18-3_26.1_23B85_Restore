uint64_t storeEnumTagSinglePayload for CamError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for DisabledAppShortcutTieBreaker()
{
  result = type metadata singleton initialization cache for DisabledAppShortcutTieBreaker;
  if (!type metadata singleton initialization cache for DisabledAppShortcutTieBreaker)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for DisabledAppShortcutTieBreaker()
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

void type metadata accessor for ForcedDisambiguation?()
{
  if (!lazy cache variable for type metadata for ForcedDisambiguation?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ForcedDisambiguation?);
    }
  }
}

uint64_t DisabledAppShortcutTieBreaker.init(tie:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RankedAction();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  *a2 = 1025;
  v11 = static DisabledAppShortcutTieBreaker.isDisabledAppShortcut(_:)(a1);
  *(a2 + 2) = v11 & 1;
  v12 = type metadata accessor for TopTwo();
  v13 = (v11 & 1) == 0;
  v14 = *(v12 + 20);
  if (v11)
  {
    v15 = a1;
  }

  else
  {
    v15 = a1 + v14;
  }

  if (v13)
  {
    v16 = a1;
  }

  else
  {
    v16 = a1 + v14;
  }

  *(a2 + 3) = static DisabledAppShortcutTieBreaker.isDisabledAppShortcut(_:)(a1 + v14) & 1;
  outlined init with copy of RankedAction(v15, v10);
  v17 = type metadata accessor for DisabledAppShortcutTieBreaker();
  outlined init with take of RankedAction(v10, a2 + *(v17 + 32));
  outlined init with copy of RankedAction(v16, v8);
  outlined destroy of TopTwo(a1);
  return outlined init with take of RankedAction(v8, a2 + *(v17 + 36));
}

void *static DisabledAppShortcutTieBreaker.isDisabledAppShortcut(_:)(uint64_t a1)
{
  v2 = type metadata accessor for RankedAction();
  v3 = *(a1 + *(v2 + 44));
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = v2;
  v5 = OUTLINED_FUNCTION_2_8();
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = [*(*(v3 + 56) + 8 * v7) int64Value];
  v10 = *(a1 + *(v4 + 32));
  if (!v10)
  {
    v16 = 0u;
    v17 = 0u;
    goto LABEL_13;
  }

  v11 = v9;
  specialized Dictionary.subscript.getter(0xD000000000000014, 0x800000026681AC10, v10, &v16);
  if (!*(&v17 + 1))
  {
LABEL_13:
    outlined destroy of Any?(&v16);
    return 0;
  }

  outlined destroy of Any?(&v16);
  result = specialized Dictionary.subscript.getter(0xD000000000000017, 0x8000000266819CA0, v3);
  if (result)
  {
    v13 = result;
    v14 = [result int64Value];

    return (v11 && v14 == 0);
  }

  return result;
}

Swift::Bool __swiftcall DisabledAppShortcutTieBreaker.supportedTie()()
{
  if (*(v0 + 2))
  {
    return 1;
  }

  else
  {
    return *(v0 + 3);
  }
}

uint64_t DisabledAppShortcutTieBreaker.context.getter()
{
  v1 = type metadata accessor for DisabledAppShortcutTieBreaker();
  v2 = v0 + *(v1 + 32);
  v3 = type metadata accessor for RankedAction();
  v4 = *(v2 + *(v3 + 44));
  v5 = specialized Dictionary.subscript.getter(0xD00000000000001ELL, 0x8000000266819CE0, v4);
  if (v5)
  {
    v6 = v5;
    v7 = [v5 int64Value];

    v8 = v7 != 0;
  }

  else
  {
    v8 = 2;
  }

  v9 = specialized Dictionary.subscript.getter(0xD000000000000017, 0x8000000266819CC0, *(v0 + *(v1 + 36) + *(v3 + 44)));
  if (v9)
  {
    v10 = v9;
    v11 = [v9 int64Value];

    v12.value = Domain3PProtectionLevel.init(rawValue:)(v11).value;
  }

  else
  {
    v12.value = SiriCam_Domain3PProtectionLevel_unknownDefault;
  }

  v13 = specialized Dictionary.subscript.getter(0xD000000000000013, 0x8000000266819C80, v4);
  if (v13)
  {
    v14 = v13;
    v15 = [v13 int64Value];

    v16 = v15 != 0;
  }

  else
  {
    v16 = 2;
  }

  if (one-time initialization token for ranker != -1)
  {
    OUTLINED_FUNCTION_1();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSg27ambiguousRunPreviouslyShown_7SiriCam23Domain3PProtectionLevelOSg016domainProtectionI0AA19onScreenAppShortcuttMd, &_sSbSg27ambiguousRunPreviouslyShown_7SiriCam23Domain3PProtectionLevelOSg016domainProtectionI0AA19onScreenAppShortcuttMR);
    v22 = String.init<A>(describing:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v26);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_266790000, v18, v19, "[DisabledAppShortcutTieBreaker] Context: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x26D5DDCD0](v21, -1, -1);
    MEMORY[0x26D5DDCD0](v20, -1, -1);
  }

  return (v12.value << 8) | (v16 << 16) | v8;
}

uint64_t DisabledAppShortcutTieBreaker.actionBoost(features:loggingId:)@<X0>(uint64_t a1@<X1>, double *a2@<X8>)
{
  v4 = OUTLINED_FUNCTION_2_8();
  v7 = specialized Dictionary.subscript.getter(v4, v5, v6);
  if (v7)
  {
    v8 = v7;
    v9 = [v7 int64Value];

    v10 = v9 != 0;
  }

  else
  {
    v10 = 0;
  }

  v11 = DisabledAppShortcutTieBreaker.context.getter();
  if (v11 != 2)
  {
    v12 = v11;
    v13 = DisabledAppShortcutTieBreaker.context.getter();
    if ((v13 & 0xFF00) != 0x400)
    {
      v14 = HIBYTE(v13);
      v15 = DisabledAppShortcutTieBreaker.context.getter();
      v16 = HIWORD(v15);
      if (HIWORD(v15) != 2)
      {
        if (v10)
        {
          v26 = *(type metadata accessor for ScoreBoost() + 24);
          v27 = type metadata accessor for UUID();
          OUTLINED_FUNCTION_0_9(v27);
          result = (*(v28 + 16))(a2 + v26, a1);
          if (v14 == 3 || (v16 & 1) == 0)
          {
            *a2 = 0.0;
            a2[1] = 0.0;
            a2[2] = 0.0;
            return result;
          }
        }

        else
        {
          if (v14 != 3)
          {
            if ((v15 & 0x10000) != 0)
            {
              v29 = *(type metadata accessor for ScoreBoost() + 24);
              v30 = type metadata accessor for UUID();
              OUTLINED_FUNCTION_0_9(v30);
              result = (*(v31 + 16))(a2 + v29, a1);
              a2[2] = 0.0;
              *a2 = 0.0;
            }

            else
            {
              v35 = static TrialProvider.fetchBoolFactorFromTrial(_:)();
              if (v35 != 2 && (v35 & 1) != 0 && (CamFeatureFlag.isEnabled.getter(5u) & 1) != 0)
              {
                v36 = (v12 & 1) == 0;
                v37 = 0.0;
              }

              else
              {
                v37 = 0.0;
                if (v14 != 1)
                {
                  v37 = 0.02;
                }

                v36 = (v12 & 1) == 0;
              }

              if (v36)
              {
                v38 = v37;
              }

              else
              {
                v38 = 0.02;
              }

              v39 = *(type metadata accessor for ScoreBoost() + 24);
              v40 = type metadata accessor for UUID();
              OUTLINED_FUNCTION_0_9(v40);
              result = (*(v41 + 16))(a2 + v39, a1);
              *a2 = v38;
              a2[2] = 0.0;
            }

            goto LABEL_24;
          }

          v32 = *(type metadata accessor for ScoreBoost() + 24);
          v33 = type metadata accessor for UUID();
          OUTLINED_FUNCTION_0_9(v33);
          result = (*(v34 + 16))(a2 + v32, a1);
        }

        a2[2] = 0.0;
        *a2 = 0.02;
LABEL_24:
        a2[1] = 0.0;
        return result;
      }
    }
  }

  if (one-time initialization token for ranker != -1)
  {
    OUTLINED_FUNCTION_1();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.ranker);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_266790000, v18, v19, "[DisabledAppShortcutTieBreaker] Context is unavailable, default to 1P.", v20, 2u);
    MEMORY[0x26D5DDCD0](v20, -1, -1);
  }

  if (v10)
  {
    v21 = 0.02;
  }

  else
  {
    v21 = 0.0;
  }

  v22 = *(type metadata accessor for ScoreBoost() + 24);
  v23 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_9(v23);
  result = (*(v24 + 16))(a2 + v22, a1);
  *a2 = v21;
  a2[1] = -2.31584178e77;
  *(a2 + 2) = 0x800000026681ABF0;
  return result;
}

uint64_t outlined init with take of RankedAction(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RankedAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TopTwo(uint64_t a1)
{
  v2 = type metadata accessor for TopTwo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t AppLaunchRecencyFeatureExtractor.extractSecondsSinceAppLaunch(from:)(void *a1)
{
  v3 = v1;
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 40))(v5, v6);
  if (!v8)
  {
    _StringGuts.grow(_:)(30);

    v27[0] = 0xD00000000000001BLL;
    v27[1] = 0x800000026681AC30;
    v14 = a1[3];
    v15 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v14);
    v16 = (*(v15 + 8))(v14, v15);
    MEMORY[0x26D5DCD80](v16);

    MEMORY[0x26D5DCD80](46, 0xE100000000000000);
    v3 = 0x800000026681AC30;
    lazy protocol witness table accessor for type CaarError and conformance CaarError();
    swift_allocError();
    *v17 = 0xD00000000000001BLL;
    *(v17 + 8) = 0x800000026681AC30;
LABEL_7:
    *(v17 + 16) = 1;
    swift_willThrow();
    return v3;
  }

  v9 = v7;
  v10 = v8;
  Launched = static TimeSinceAppLastLaunchedSignal.instances()();
  specialized Collection.first.getter(Launched, &v25);

  if (!v26)
  {

    outlined destroy of SignalProviding?(&v25);
    lazy protocol witness table accessor for type CaarError and conformance CaarError();
    swift_allocError();
    *v17 = 0xD00000000000003DLL;
    *(v17 + 8) = 0x800000026681AC50;
    goto LABEL_7;
  }

  outlined init with take of CaarHandler(&v25, v27);
  v12 = *__swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v13 = specialized SiriSignalsContaining.get(from:query:defaultVal:)(v27, v9, v10, 0xFFFFFFFFFFFFFFFFLL);
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_0(v27);
  }

  else
  {
    v3 = v13;
    if (one-time initialization token for ranker != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.ranker);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v25 = v23;
      *v22 = 134218242;
      *(v22 + 4) = v3;
      *(v22 + 12) = 2080;
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v25);

      *(v22 + 14) = v24;
      _os_log_impl(&dword_266790000, v20, v21, "[AppLaunchRecencyFeatureExtractor] %lds since app launch for bundle: %s", v22, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x26D5DDCD0](v23, -1, -1);
      MEMORY[0x26D5DDCD0](v22, -1, -1);
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_0(v27);
  }

  return v3;
}

unint64_t AppLaunchRecencyFeatureExtractor.extractImpl(from:)(void *a1)
{
  result = AppLaunchRecencyFeatureExtractor.extractSecondsSinceAppLaunch(from:)(a1);
  v3 = result;
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So14MLFeatureValueCtGMd, &_ss23_ContiguousArrayStorageCySS_So14MLFeatureValueCtGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_266813FC0;
    *(inited + 32) = 0xD00000000000001ALL;
    *(inited + 40) = 0x8000000266819AC0;
    *(inited + 48) = [objc_opt_self() featureValueWithInt64_];
    type metadata accessor for MLFeatureValue();
    return Dictionary.init(dictionaryLiteral:)();
  }

  return result;
}

uint64_t outlined destroy of SignalProviding?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriSignals15SignalProviding_pSgMd, &_s11SiriSignals15SignalProviding_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized SiriSignalsContaining.get(from:query:defaultVal:)(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriSignals15SignalProviding_pGMd, &_ss23_ContiguousArrayStorageCy11SiriSignals15SignalProviding_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266813FC0;
  outlined init with copy of SignalProviding(a1, inited + 32);
  v10 = SiriSignalsContainer.get(from:query:defaultVal:)(inited, a2, a3, a4);
  if (v4)
  {
    swift_setDeallocating();
    v11 = inited;
    specialized _ContiguousArrayStorage.__deallocating_deinit();
  }

  else
  {
    v12 = v10;
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v14 = *(v13 + 8);
    v15 = dispatch thunk of AppSelectionSignalComponent.name.getter();
    v11 = specialized Dictionary.subscript.getter(v15, v16, v12);
    v18 = v17;

    if (v18)
    {
      _StringGuts.grow(_:)(23);

      v19 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v20 = *(v19 + 8);
      v21 = dispatch thunk of AppSelectionSignalComponent.name.getter();
      MEMORY[0x26D5DCD80](v21);

      v11 = 0x800000026681AC90;
      lazy protocol witness table accessor for type CaarError and conformance CaarError();
      swift_allocError();
      *v22 = 0xD000000000000015;
      *(v22 + 8) = 0x800000026681AC90;
      *(v22 + 16) = 1;
      swift_willThrow();
    }
  }

  return v11;
}

id specialized Zip2Sequence.Iterator.next()()
{
  if (*(v0 + 32))
  {
    return 0;
  }

  v2 = *v0;
  if (*v0 >> 62)
  {
    if (v2 < 0)
    {
      v9 = *v0;
    }

    else
    {
      v9 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v3 = MEMORY[0x26D5DD300](v9);
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *(v0 + 8);
  if (v4 == v3)
  {
LABEL_11:
    v1 = 0;
    *(v0 + 32) = 1;
    return v1;
  }

  v5 = v2 & 0xC000000000000001;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(*(v0 + 8), (v2 & 0xC000000000000001) == 0, v2);
  if ((v2 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x26D5DD230](v4, v2);
  }

  else
  {
    v6 = *(v2 + 8 * v4 + 32);
  }

  v1 = v6;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 8) = v4 + 1;
    v5 = *(v0 + 16);
    v7 = specialized Array.count.getter(v5);
    v4 = *(v0 + 24);
    if (v4 == v7)
    {

      goto LABEL_11;
    }

    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(*(v0 + 24), (v5 & 0xC000000000000001) == 0, v5);
    if ((v5 & 0xC000000000000001) == 0)
    {
      result = *(v5 + 8 * v4 + 32);
      goto LABEL_14;
    }
  }

  result = MEMORY[0x26D5DD230](v4, v5);
LABEL_14:
  if (!__OFADD__(v4, 1))
  {
    *(v0 + 24) = v4 + 1;
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t _sSa9repeating5countSayxGx_SitcfCSd_Tt1g5(uint64_t result, double a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      result = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v4 = 0;
      *(result + 16) = v2;
      v5 = vdupq_n_s64(v2 - 1);
      do
      {
        v6 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(vdupq_n_s64(v4), xmmword_2668148B0)));
        v7 = result + 8 * v4;
        if (v6.i8[0])
        {
          *(v7 + 32) = a2;
        }

        if (v6.i8[4])
        {
          *(v7 + 40) = a2;
        }

        v4 += 2;
      }

      while (((v2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

void _sSa9repeating5countSayxGx_SitcfCs5Int32V_Tt1g5(int a1, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    *(static Array._allocateBufferUninitialized(minimumCapacity:)() + 16) = a2;
    do
    {
      OUTLINED_FUNCTION_12_6();
      if (v6)
      {
        *(v3 - 12) = a1;
      }

      if (vuzp1_s16(v5, v4).i8[2])
      {
        *(v3 - 8) = a1;
      }

      OUTLINED_FUNCTION_19_2();
      if (v12)
      {
        *(v8 - 1) = a1;
      }

      if (vuzp1_s16(v10, v11).i8[6])
      {
        *v8 = a1;
      }
    }

    while (v9 != v7 + 4);
  }
}

void _sSa9repeating5countSayxGx_SitcfCSf_Tt1g5(uint64_t a1, float a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else if (a1)
  {
    *(static Array._allocateBufferUninitialized(minimumCapacity:)() + 16) = a1;
    do
    {
      OUTLINED_FUNCTION_12_6();
      if (v6)
      {
        *(v3 - 12) = a2;
      }

      if (vuzp1_s16(v5, v4).i8[2])
      {
        *(v3 - 8) = a2;
      }

      OUTLINED_FUNCTION_19_2();
      if (v12)
      {
        *(v8 - 1) = a2;
      }

      if (vuzp1_s16(v10, v11).i8[6])
      {
        *v8 = a2;
      }
    }

    while (v9 != v7 + 4);
  }
}

BOOL static WordEmbeddingFeatureExtractor.currentLocaleIsSupported()()
{
  v0 = type metadata accessor for Locale();
  v1 = OUTLINED_FUNCTION_22(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_0();
  v8 = v7 - v6;
  static EnvironmentUtilities.currentSiriLocale.getter();
  v9 = Locale.languageCode.getter();
  v11 = v10;
  v13 = *(v3 + 8);
  v12 = (v3 + 8);
  v14 = v13(v8, v0);
  if (v11)
  {
    v28[0] = v9;
    v28[1] = v11;
    MEMORY[0x28223BE20](v14);
    *&v27[-16] = v28;
    v15 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in BidirectionalCollection<>.lastIndex(of:), &v27[-32], &outlined read-only object #0 of one-time initialization function for supportedEmbeddingLanguages);
    if (one-time initialization token for autoSend != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.autoSend);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      OUTLINED_FUNCTION_9();
      v20 = swift_slowAlloc();
      v28[0] = v20;
      *v19 = 67109378;
      *(v19 + 4) = v15;
      *(v19 + 8) = 2080;
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, v28);

      *(v19 + 10) = v21;
      _os_log_impl(&dword_266790000, v17, v18, "WordEmbeddingFeatureExtractor supported=%{BOOL}d for current siri language %s", v19, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v20);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for autoSend != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.autoSend);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      OUTLINED_FUNCTION_7_5();
      v25 = swift_slowAlloc();
      OUTLINED_FUNCTION_21_0(v25);
      _os_log_impl(&dword_266790000, v23, v24, "Cannot detect current Siri language for WordEmbeddingFeatureExtractor", v12, 2u);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    return 0;
  }

  return v15;
}

uint64_t NLEmbeddingsAssetsManager.download(for:)()
{
  OUTLINED_FUNCTION_14_4();
  v1[21] = v2;
  v1[22] = v0;
  v1[20] = v3;
  v4 = type metadata accessor for Locale();
  v1[23] = v4;
  v5 = *(v4 - 8);
  v1[24] = v5;
  v6 = *(v5 + 64) + 15;
  v1[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](NLEmbeddingsAssetsManager.download(for:), v0, 0);
}

{
  v60 = v0;
  v1 = v0[25];
  v3 = v0[20];
  v2 = v0[21];

  Locale.init(identifier:)();
  if (one-time initialization token for autoSend != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v0[26] = __swift_project_value_buffer(v4, static Logger.autoSend);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_7_5();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_21_0(v7);
    _os_log_impl(&dword_266790000, v5, v6, "Submitting NLTagger asset request", v3, 2u);
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  v8 = v0[25];

  v9 = Locale.languageCode.getter();
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    v13 = objc_opt_self();
    v14 = MEMORY[0x26D5DCC90](v11, v12);
    v0[27] = v14;

    v15 = *MEMORY[0x277CD8968];
    v0[2] = v0;
    v0[7] = v0 + 19;
    v0[3] = NLEmbeddingsAssetsManager.download(for:);
    v16 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo20NLTaggerAssetsResultVs5Error_pGMd, &_sSccySo20NLTaggerAssetsResultVs5Error_pGMR);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NLTaggerAssetsResult, @unowned NSError?) -> () with result type NLTaggerAssetsResult;
    v0[13] = &block_descriptor;
    v0[14] = v16;
    [v13 requestAssetsForLanguage:v14 tagScheme:v15 completionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v17 = v0[25];
    v18 = v0[23];
    _StringGuts.grow(_:)(42);

    OUTLINED_FUNCTION_25_0();
    v58 = v20;
    v59 = v19;
    OUTLINED_FUNCTION_1_11();
    lazy protocol witness table accessor for type TokenChain and conformance TokenChain(v21, v22);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D5DCD80](v23);

    v24 = v59;
    lazy protocol witness table accessor for type WordEmbeddingFeatureExtractorError and conformance WordEmbeddingFeatureExtractorError();
    OUTLINED_FUNCTION_13_4();
    v25 = swift_allocError();
    *v26 = v58;
    *(v26 + 8) = v24;
    *(v26 + 16) = 0;
    swift_willThrow();
    v27 = v0[26];
    v28 = v25;
    v29 = Logger.logObject.getter();
    LOBYTE(v24) = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v24))
    {
      OUTLINED_FUNCTION_15();
      v30 = swift_slowAlloc();
      OUTLINED_FUNCTION_9();
      v31 = swift_slowAlloc();
      v58 = v31;
      *v30 = 136315138;
      v0[18] = v25;
      v32 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v33 = String.init<A>(describing:)();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v58);

      *(v30 + 4) = v35;
      OUTLINED_FUNCTION_17_2();
      _os_log_impl(v36, v37, v38, v39, v40, v41);
      __swift_destroy_boxed_opaque_existential_0(v31);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0](v42);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0](v43);
    }

    else
    {
    }

    v44 = v0[26];
    v45 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v46 = OUTLINED_FUNCTION_22_0();
    if (os_log_type_enabled(v46, v47))
    {
      OUTLINED_FUNCTION_7_5();
      v48 = swift_slowAlloc();
      OUTLINED_FUNCTION_21_0(v48);
      OUTLINED_FUNCTION_11_4(&dword_266790000, v49, v50, "Completed downloading NLTagger assets");
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    v52 = v0[24];
    v51 = v0[25];
    v53 = v0[23];

    v54 = OUTLINED_FUNCTION_18_3();
    v55(v54);

    OUTLINED_FUNCTION_10_5();

    return v56();
  }
}

{
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_20_2();
  v1 = *v0;
  v3 = v2[6];
  v2[28] = v3;
  v4 = v2[22];
  if (v3)
  {
    v5 = NLEmbeddingsAssetsManager.download(for:);
  }

  else
  {
    v5 = NLEmbeddingsAssetsManager.download(for:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  OUTLINED_FUNCTION_24_0();

  v1 = *(v0 + 208);
  v2 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v3 = OUTLINED_FUNCTION_22_0();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_7_5();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_21_0(v5);
    OUTLINED_FUNCTION_11_4(&dword_266790000, v6, v7, "Completed downloading NLTagger assets");
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  v9 = *(v0 + 192);
  v8 = *(v0 + 200);
  v10 = *(v0 + 184);

  v11 = OUTLINED_FUNCTION_18_3();
  v12(v11);

  OUTLINED_FUNCTION_10_5();

  return v13();
}

{
  v34 = v0;
  v1 = v0[27];
  v2 = v0[28];
  swift_willThrow();

  v3 = v0[28];
  v4 = v0[26];
  v5 = v3;
  v6 = Logger.logObject.getter();
  LOBYTE(v2) = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v2))
  {
    OUTLINED_FUNCTION_15();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_9();
    v8 = swift_slowAlloc();
    v33 = v8;
    *v7 = 136315138;
    v0[18] = v3;
    v9 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v33);

    *(v7 + 4) = v12;
    OUTLINED_FUNCTION_17_2();
    _os_log_impl(v13, v14, v15, v16, v17, v18);
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  else
  {
  }

  v19 = v0[26];
  v20 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v21 = OUTLINED_FUNCTION_22_0();
  if (os_log_type_enabled(v21, v22))
  {
    OUTLINED_FUNCTION_7_5();
    v23 = swift_slowAlloc();
    OUTLINED_FUNCTION_21_0(v23);
    OUTLINED_FUNCTION_11_4(&dword_266790000, v24, v25, "Completed downloading NLTagger assets");
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  v27 = v0[24];
  v26 = v0[25];
  v28 = v0[23];

  v29 = OUTLINED_FUNCTION_18_3();
  v30(v29);

  OUTLINED_FUNCTION_10_5();

  return v31();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NLTaggerAssetsResult, @unowned NSError?) -> () with result type NLTaggerAssetsResult(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    v7 = a3;

    return specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(v6, v7);
  }

  else
  {
    v9 = *v5;

    return specialized _resumeUnsafeThrowingContinuation<A>(_:_:)(v9, a2);
  }
}

uint64_t specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t NLEmbeddingsAssetsManager.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void type metadata completion function for WordEmbeddingFeatureExtractor()
{
  type metadata accessor for Locale();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ConfigurableAnalyzer?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for NLEmbedding?();
      if (v2 <= 0x3F)
      {
        type metadata accessor for [Double]?();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for ConfigurableAnalyzer?()
{
  if (!lazy cache variable for type metadata for ConfigurableAnalyzer?)
  {
    type metadata accessor for ConfigurableAnalyzer();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ConfigurableAnalyzer?);
    }
  }
}

void type metadata accessor for NLEmbedding?()
{
  if (!lazy cache variable for type metadata for NLEmbedding?)
  {
    type metadata accessor for MLMultiArray(255, &lazy cache variable for type metadata for NLEmbedding, 0x277CD89B0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for NLEmbedding?);
    }
  }
}

void type metadata accessor for [Double]?()
{
  if (!lazy cache variable for type metadata for [Double]?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySdGMd, &_sSaySdGMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [Double]?);
    }
  }
}

uint64_t one-time initialization function for analyzerConfigOptions()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12MorphunSwift20ConfigurationFeatureOGMd, &_ss23_ContiguousArrayStorageCy12MorphunSwift20ConfigurationFeatureOGMR);
  v0 = type metadata accessor for ConfigurationFeature();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_266813E50;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277D2A308], v0);
  v6(v5 + v2, *MEMORY[0x277D2A300], v0);
  v6(v5 + 2 * v2, *MEMORY[0x277D2A2F8], v0);
  result = (v6)(v5 + 3 * v2, *MEMORY[0x277D2A2E0], v0);
  static WordEmbeddingFeatureExtractor.analyzerConfigOptions = v4;
  return result;
}

uint64_t one-time initialization function for nlEmbeddingsAssetsManager()
{
  type metadata accessor for NLEmbeddingsAssetsManager();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  static WordEmbeddingFeatureExtractor.nlEmbeddingsAssetsManager = v0;
  return result;
}

void WordEmbeddingFeatureExtractor.loadMorphunAssets(for:kickOffDownloads:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_1();
  a19 = v22;
  a20 = v23;
  v102 = v21;
  v24 = v20;
  v98 = v25;
  v27 = v26;
  v28 = type metadata accessor for Locale();
  v29 = OUTLINED_FUNCTION_22(v28);
  v99 = v30;
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v29);
  v35 = &v93 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v37 = &v93 - v36;
  v38 = type metadata accessor for URL();
  v39 = OUTLINED_FUNCTION_22(v38);
  v100 = v40;
  v101 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_3_0();
  v43 = objc_opt_self();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v45 = [v43 getAssetPathForLocale_];

  if (v45)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL.absoluteString.getter();
    v46 = v102;
    registerDataPathForLocaleWithError(locale:path:)();
    if (v46)
    {
      v47 = OUTLINED_FUNCTION_6_8();
      v48(v47);
    }

    else
    {

      if (one-time initialization token for analyzerConfigOptions != -1)
      {
        swift_once();
      }

      v71 = type metadata accessor for DefaultAnalyzerFactory();
      v72 = *(v71 + 48);
      v73 = *(v71 + 52);
      swift_allocObject();

      DefaultAnalyzerFactory.init(configOptions:)();
      v88 = dispatch thunk of DefaultAnalyzerFactory.getAnalyzer(locale:)();
      v89 = OUTLINED_FUNCTION_6_8();
      v90(v89);

      v91 = *(type metadata accessor for WordEmbeddingFeatureExtractor() + 20);
      v92 = *(v24 + v91);

      *(v24 + v91) = v88;
    }
  }

  else
  {
    v49 = v37;
    v96 = v43;
    v97 = v35;
    v100 = v27;
    v101 = v28;
    v50 = *(type metadata accessor for WordEmbeddingFeatureExtractor() + 20);
    v51 = *(v24 + v50);

    *(v24 + v50) = 0;
    if (one-time initialization token for autoSend != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    v53 = __swift_project_value_buffer(v52, static Logger.autoSend);
    v55 = v99;
    v54 = v100;
    v56 = v49;
    v57 = v101;
    v94 = *(v99 + 16);
    v94(v49, v100, v101);
    v95 = v53;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      OUTLINED_FUNCTION_15();
      v60 = swift_slowAlloc();
      OUTLINED_FUNCTION_9();
      v61 = swift_slowAlloc();
      a10 = v61;
      *v60 = 136315138;
      OUTLINED_FUNCTION_1_11();
      lazy protocol witness table accessor for type TokenChain and conformance TokenChain(v62, v63);
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = v65;
      v67 = *(v55 + 8);
      v67(v56, v101);
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, &a10);
      v57 = v101;

      *(v60 + 4) = v68;
      v69 = v59;
      v70 = v67;
      _os_log_impl(&dword_266790000, v58, v69, "Morphun assets not available for locale %s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v61);
      v54 = v100;
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    else
    {

      v70 = *(v55 + 8);
      v70(v49, v57);
    }

    v74 = v97;
    if (v98)
    {
      v94(v97, v54, v57);
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v75, v76))
      {
        OUTLINED_FUNCTION_15();
        v77 = swift_slowAlloc();
        OUTLINED_FUNCTION_9();
        v78 = swift_slowAlloc();
        a10 = v78;
        *v77 = 136315138;
        OUTLINED_FUNCTION_1_11();
        lazy protocol witness table accessor for type TokenChain and conformance TokenChain(v79, v80);
        v81 = dispatch thunk of CustomStringConvertible.description.getter();
        v82 = v57;
        v84 = v83;
        v70(v74, v82);
        v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v84, &a10);

        *(v77 + 4) = v85;
        _os_log_impl(&dword_266790000, v75, v76, "Kicking off morphun assets request for locale %s", v77, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v78);
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
      }

      else
      {

        v70(v74, v57);
      }

      v86 = v96;
      v87 = Locale._bridgeToObjectiveC()().super.isa;
      [v86 onDemandDownloadForLocale:v87 withProgress:0 withCompletion:0];
    }
  }

  OUTLINED_FUNCTION_15_3();
}

void WordEmbeddingFeatureExtractor.loadNlEmbeddingsAssets(for:kickOffDownloads:)()
{
  OUTLINED_FUNCTION_16_1();
  v2 = v0;
  LODWORD(v81) = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = v75 - v8;
  v9 = type metadata accessor for Locale();
  v10 = OUTLINED_FUNCTION_22(v9);
  v84 = v11;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v10);
  v79 = v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v75 - v15;
  v17 = Locale.languageCode.getter();
  if (v18)
  {
    v19 = v17;
    v20 = v18;
    v78 = v9;
    v21 = objc_opt_self();
    v22 = MEMORY[0x26D5DCC90](v19, v20);
    v23 = [v21 wordEmbeddingForLanguage:v22 revision:1];

    if (v23)
    {

      v24 = type metadata accessor for WordEmbeddingFeatureExtractor();
      v25 = *(v24 + 24);
      v26 = *(v2 + v25);
      v27 = v23;

      *(v2 + v25) = v23;
      v28 = [v27 dimension];

      v29 = _sSa9repeating5countSayxGx_SitcfCSd_Tt1g5(v28, 0.0);
      v30 = *(v24 + 28);
      v31 = *(v2 + v30);

      *(v2 + v30) = v29;
    }

    else
    {
      if (one-time initialization token for autoSend != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      v41 = __swift_project_value_buffer(v40, static Logger.autoSend);

      v75[1] = v41;
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();

      v44 = os_log_type_enabled(v42, v43);
      v76 = v5;
      v77 = v1;
      if (v44)
      {
        OUTLINED_FUNCTION_15();
        v45 = swift_slowAlloc();
        OUTLINED_FUNCTION_9();
        v46 = swift_slowAlloc();
        v82 = v46;
        *v45 = 136315138;
        v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v82);

        *(v45 + 4) = v47;
        OUTLINED_FUNCTION_17_2();
        _os_log_impl(v48, v49, v50, v51, v52, v53);
        __swift_destroy_boxed_opaque_existential_0(v46);
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
      }

      else
      {
      }

      v54 = v78;
      v55 = type metadata accessor for WordEmbeddingFeatureExtractor();
      v56 = *(v55 + 24);

      *(v2 + v56) = 0;
      v57 = *(v55 + 28);
      v58 = *(v2 + v57);

      *(v2 + v57) = 0;
      if (v81)
      {
        v59 = v84;
        v81 = *(v84 + 16);
        v81(v16, v76, v54);
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v60, v61))
        {
          OUTLINED_FUNCTION_15();
          v62 = swift_slowAlloc();
          OUTLINED_FUNCTION_9();
          v63 = swift_slowAlloc();
          v82 = v63;
          *v62 = 136315138;
          OUTLINED_FUNCTION_1_11();
          lazy protocol witness table accessor for type TokenChain and conformance TokenChain(v64, v65);
          v66 = dispatch thunk of CustomStringConvertible.description.getter();
          v68 = v67;
          (*(v84 + 8))(v16, v78);
          v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v68, &v82);
          v54 = v78;

          *(v62 + 4) = v69;
          _os_log_impl(&dword_266790000, v60, v61, "Kicking off NLEmbeddings assets request for locale %s", v62, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v63);
          v59 = v84;
          OUTLINED_FUNCTION_3_2();
          MEMORY[0x26D5DDCD0]();
          OUTLINED_FUNCTION_3_2();
          MEMORY[0x26D5DDCD0]();
        }

        else
        {

          (*(v84 + 8))(v16, v54);
        }

        v70 = v80;
        static TaskPriority.background.getter();
        v71 = type metadata accessor for TaskPriority();
        __swift_storeEnumTagSinglePayload(v70, 0, 1, v71);
        v72 = v79;
        v81(v79, v76, v54);
        v73 = (*(v59 + 80) + 32) & ~*(v59 + 80);
        v74 = swift_allocObject();
        *(v74 + 16) = 0;
        *(v74 + 24) = 0;
        (*(v59 + 32))(v74 + v73, v72, v54);
        _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v70, &async function pointer to partial apply for closure #1 in WordEmbeddingFeatureExtractor.loadNlEmbeddingsAssets(for:kickOffDownloads:), v74);

        outlined destroy of Token?(v70, &_sScPSgMd, &_sScPSgMR);
      }
    }
  }

  else
  {
    v82 = 0;
    v83 = 0xE000000000000000;
    _StringGuts.grow(_:)(42);

    OUTLINED_FUNCTION_25_0();
    v82 = v33;
    v83 = v32;
    OUTLINED_FUNCTION_1_11();
    lazy protocol witness table accessor for type TokenChain and conformance TokenChain(v34, v35);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D5DCD80](v36);

    v37 = v82;
    v38 = v83;
    lazy protocol witness table accessor for type WordEmbeddingFeatureExtractorError and conformance WordEmbeddingFeatureExtractorError();
    OUTLINED_FUNCTION_13_4();
    swift_allocError();
    *v39 = v37;
    *(v39 + 8) = v38;
    *(v39 + 16) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_15_3();
}

uint64_t closure #1 in WordEmbeddingFeatureExtractor.loadNlEmbeddingsAssets(for:kickOffDownloads:)()
{
  OUTLINED_FUNCTION_24_0();
  if (one-time initialization token for nlEmbeddingsAssetsManager != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  Locale.identifier.getter();
  v0[3] = v2;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = closure #1 in WordEmbeddingFeatureExtractor.loadNlEmbeddingsAssets(for:kickOffDownloads:);

  return NLEmbeddingsAssetsManager.download(for:)();
}

{
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_20_2();
  v2 = *(v1 + 32);
  v3 = *(v1 + 24);
  v4 = *v0;
  OUTLINED_FUNCTION_5_6();
  *v5 = v4;

  OUTLINED_FUNCTION_10_5();

  return v6();
}

uint64_t _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  outlined init with copy of TaskPriority?(a3, v26 - v11);
  v13 = type metadata accessor for TaskPriority();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Token?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t WordEmbeddingFeatureExtractor.extractImpl(from:)(void *a1)
{
  v4 = type metadata accessor for WordEmbeddingFeatureExtractor();
  v5 = *(v1 + *(v4 + 24));
  if (v5 && (v6 = *(v1 + *(v4 + 28))) != 0)
  {
    v7 = v5;

    specialized TopRecognitionExtractor.getTopRecognition(recognition:)(a1);
    if (v2)
    {
    }

    else
    {
      WordEmbeddingFeatureExtractor.nlTokenize(recognition:)();
      v11 = v10;

      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = (v11 + 40);
        v14 = MEMORY[0x277D84F90];
        do
        {
          v15 = *(v13 - 1);
          v16 = *v13;

          v17._countAndFlagsBits = v15;
          v17._object = v16;
          v18 = NLEmbedding.vector(for:)(v17);

          if (!v18)
          {

            v18 = v6;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = *(v14 + 16);
            OUTLINED_FUNCTION_28_1();
            v14 = v21;
          }

          v19 = *(v14 + 16);
          if (v19 >= *(v14 + 24) >> 1)
          {
            OUTLINED_FUNCTION_28_1();
            v14 = v22;
          }

          *(v14 + 16) = v19 + 1;
          *(v14 + 8 * v19 + 32) = v18;
          v13 += 2;
          --v12;
        }

        while (v12);
      }

      else
      {
        v14 = MEMORY[0x277D84F90];
      }

      if (*(v14 + 16))
      {
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_28_1();
          v14 = v27;
        }

        v23 = *(v14 + 16);
        if (v23 >= *(v14 + 24) >> 1)
        {
          OUTLINED_FUNCTION_28_1();
          v14 = v28;
        }

        *(v14 + 16) = v23 + 1;
        *(v14 + 8 * v23 + 32) = v6;
      }

      type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for MLMultiArray, 0x277CBFF48);
      v24 = static MLMultiArray.make1DSetOrSequence(from:)(v14);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So07MLMultiB0CtGMd, &_ss23_ContiguousArrayStorageCySS_So07MLMultiB0CtGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_266813FC0;
      *(inited + 32) = 0xD000000000000023;
      *(inited + 40) = 0x8000000266818ED0;
      *(inited + 48) = v24;
      v26 = v24;
      v1 = Dictionary.init(dictionaryLiteral:)();
    }
  }

  else
  {
    lazy protocol witness table accessor for type WordEmbeddingFeatureExtractorError and conformance WordEmbeddingFeatureExtractorError();
    OUTLINED_FUNCTION_13_4();
    swift_allocError();
    *v8 = xmmword_266815500;
    *(v8 + 16) = 3;
    swift_willThrow();
  }

  return v1;
}

void specialized TopRecognitionExtractor.getTopRecognition(recognition:)(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = [a1 utterances];
  if (!v4)
  {
    goto LABEL_67;
  }

  v5 = v4;
  type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SASUtterance, 0x277D477A8);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!specialized Array.count.getter(v6))
  {

LABEL_67:
    lazy protocol witness table accessor for type TopRecogntionFeatureExtractorError and conformance TopRecogntionFeatureExtractorError();
    swift_allocError();
    *v55 = 0xD000000000000028;
    v55[1] = 0x800000026681ACF0;
    swift_willThrow();
    return;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v6 & 0xC000000000000001) == 0, v6);
  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_82:
    v7 = MEMORY[0x26D5DD230](0, v6);
  }

  else
  {
    v7 = *(v6 + 32);
  }

  v8 = v7;

  v9 = [v3 phrases];
  if (v9)
  {
    v10 = v9;
    type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SASPhrase, 0x277D47720);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = [v8 interpretationIndices];
    if (v12)
    {
      v13 = v12;
      type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v14 = specialized Array.count.getter(v11);
      v15 = 0;
      v70 = v11 & 0xFFFFFFFFFFFFFF8;
      v71 = v11 & 0xC000000000000001;
      v16 = v6 & 0xFFFFFFFFFFFFFF8;
      v74 = v6 & 0xFFFFFFFFFFFFFF8;
      if (v6 < 0)
      {
        v16 = v6;
      }

      v63 = v16;
      v68 = v6 & 0xC000000000000001;
      v73 = -v14;
      v17 = MEMORY[0x277D84F90];
      v72 = v6;
      v69 = v6 >> 62;
      v67 = v11;
LABEL_10:
      for (i = v15 + 4; ; ++i)
      {
        if (v73 + i == 4)
        {
          goto LABEL_69;
        }

        v3 = (i - 4);
        if (v71)
        {
          v19 = MEMORY[0x26D5DD230](i - 4, v11);
        }

        else
        {
          if (v3 >= *(v70 + 16))
          {
            goto LABEL_75;
          }

          v19 = *(v11 + 8 * i);
        }

        v75 = v19;
        v20 = i - 3;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        if (v69)
        {
          v6 = i - 3;
          v21 = MEMORY[0x26D5DD300](v63);
          v20 = i - 3;
        }

        else
        {
          v21 = *(v74 + 16);
        }

        if (v3 == v21)
        {

LABEL_69:

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
          lazy protocol witness table accessor for type [String] and conformance [A]();
          v56 = BidirectionalCollection<>.joined(separator:)();
          v58 = v57;

          v59 = HIBYTE(v58) & 0xF;
          if ((v58 & 0x2000000000000000) == 0)
          {
            v59 = v56 & 0xFFFFFFFFFFFFLL;
          }

          if (!v59)
          {

            lazy protocol witness table accessor for type TopRecogntionFeatureExtractorError and conformance TopRecogntionFeatureExtractorError();
            swift_allocError();
            *v60 = 0xD000000000000028;
            v60[1] = 0x800000026681ACF0;
            swift_willThrow();
          }

          return;
        }

        v66 = v20;
        if (v68)
        {
          v22 = MEMORY[0x26D5DD230](i - 4, v72);
        }

        else
        {
          if (v3 >= *(v74 + 16))
          {
            goto LABEL_76;
          }

          v22 = *(v72 + 8 * i);
        }

        v3 = v22;
        v23 = Int.init(truncating:)();
        v24 = [v75 interpretations];
        if (!v24)
        {
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        v25 = v24;
        type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SASInterpretation, 0x277D47710);
        v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if ((v6 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x26D5DD230](v23, v6);
        }

        else
        {
          if ((v23 & 0x8000000000000000) != 0)
          {
            goto LABEL_77;
          }

          if (v23 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_78;
          }

          v26 = *(v6 + 8 * v23 + 32);
        }

        v27 = v26;
        v28 = [v26 tokens];

        if (!v28)
        {
          goto LABEL_84;
        }

        type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SASToken, 0x277D477A0);
        v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v29 >> 62)
        {
          if (v29 < 0)
          {
            v31 = v29;
          }

          else
          {
            v31 = v29 & 0xFFFFFFFFFFFFFF8;
          }

          v30 = MEMORY[0x26D5DD300](v31);
          if (v30)
          {
LABEL_39:
            v61 = v8;
            v62 = v2;
            v32 = 0;
            v65 = v3;
            v64 = v30;
            while (1)
            {
              if ((v29 & 0xC000000000000001) != 0)
              {
                v33 = MEMORY[0x26D5DD230](v32, v29);
              }

              else
              {
                if (v32 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_80;
                }

                v33 = *(v29 + 8 * v32 + 32);
              }

              v34 = v33;
              v3 = (v32 + 1);
              if (__OFADD__(v32, 1))
              {
                break;
              }

              if ([v33 removeSpaceBefore])
              {
                v35 = *(v17 + 16);
                if (v35)
                {
                  v36 = (v17 + 16 + 16 * v35);
                  v37 = *v36 == 32 && v36[1] == 0xE100000000000000;
                  if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      specialized _ArrayBuffer._consumeAndCreateNew()(v17);
                      v17 = v54;
                    }

                    v38 = *(v17 + 16);
                    if (!v38)
                    {
                      goto LABEL_81;
                    }

                    v39 = v38 - 1;
                    v40 = *(v17 + 16 * v39 + 40);
                    *(v17 + 16) = v39;
                  }
                }
              }

              v41 = [v34 text];
              if (!v41)
              {
                goto LABEL_85;
              }

              v42 = v41;
              v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v45 = v44;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v50 = *(v17 + 16);
                specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                v17 = v51;
              }

              v2 = *(v17 + 16);
              v46 = *(v17 + 24) >> 1;
              v47 = v2 + 1;
              if (v46 <= v2)
              {
                specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                v17 = v52;
                v46 = *(v52 + 24) >> 1;
              }

              *(v17 + 16) = v47;
              v48 = v17 + 16 * v2;
              *(v48 + 32) = v43;
              *(v48 + 40) = v45;
              v6 = v2 + 2;
              if (v46 < (v2 + 2))
              {
                specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                v17 = v53;
              }

              *(v17 + 16) = v6;
              v49 = v17 + 16 * v47;
              *(v49 + 32) = 32;
              *(v49 + 40) = 0xE100000000000000;
              ++v32;
              v37 = v3 == v64;
              v3 = v65;
              if (v37)
              {

                v8 = v61;
                v2 = v62;
                v15 = v66;
                v11 = v67;
                goto LABEL_10;
              }
            }

LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
            goto LABEL_82;
          }
        }

        else
        {
          v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v30)
          {
            goto LABEL_39;
          }
        }

        v11 = v67;
      }

      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }
  }

  else
  {
LABEL_86:
    __break(1u);
  }

  __break(1u);
}

void _s7SiriCam23TopRecognitionExtractorPAAE03getcD011recognitionSSSo14SASRecognitionC_tKFAA41UncertaintyPromptMagicWordsActionEnforcerV_Tt0g5Tm(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = [a1 utterances];
  if (!v4)
  {
    goto LABEL_67;
  }

  v5 = v4;
  type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SASUtterance, 0x277D477A8);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!specialized Array.count.getter(v6))
  {

LABEL_67:
    lazy protocol witness table accessor for type TopRecogntionFeatureExtractorError and conformance TopRecogntionFeatureExtractorError();
    OUTLINED_FUNCTION_13_4();
    v55 = swift_allocError();
    OUTLINED_FUNCTION_23_2(v55, v56);
    return;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v6 & 0xC000000000000001) == 0, v6);
  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_82:
    v7 = MEMORY[0x26D5DD230](0, v6);
  }

  else
  {
    v7 = *(v6 + 32);
  }

  v8 = v7;

  v9 = [v3 phrases];
  if (v9)
  {
    v10 = v9;
    type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SASPhrase, 0x277D47720);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = [v8 interpretationIndices];
    if (v12)
    {
      v13 = v12;
      type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v14 = specialized Array.count.getter(v11);
      v15 = 0;
      v72 = v11 & 0xFFFFFFFFFFFFFF8;
      v73 = v11 & 0xC000000000000001;
      v16 = v6 & 0xFFFFFFFFFFFFFF8;
      v76 = v6 & 0xFFFFFFFFFFFFFF8;
      if (v6 < 0)
      {
        v16 = v6;
      }

      v65 = v16;
      v70 = v6 & 0xC000000000000001;
      v75 = -v14;
      v17 = MEMORY[0x277D84F90];
      v74 = v6;
      v71 = v6 >> 62;
      v69 = v11;
LABEL_10:
      for (i = v15 + 4; ; ++i)
      {
        if (v75 + i == 4)
        {
          goto LABEL_69;
        }

        v3 = (i - 4);
        if (v73)
        {
          v19 = MEMORY[0x26D5DD230](i - 4, v11);
        }

        else
        {
          if (v3 >= *(v72 + 16))
          {
            goto LABEL_75;
          }

          v19 = *(v11 + 8 * i);
        }

        v77 = v19;
        v20 = i - 3;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        if (v71)
        {
          v6 = i - 3;
          v21 = MEMORY[0x26D5DD300](v65);
          v20 = i - 3;
        }

        else
        {
          v21 = *(v76 + 16);
        }

        if (v3 == v21)
        {

LABEL_69:

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
          lazy protocol witness table accessor for type [String] and conformance [A]();
          v57 = BidirectionalCollection<>.joined(separator:)();
          v59 = v58;

          v60 = HIBYTE(v59) & 0xF;
          if ((v59 & 0x2000000000000000) == 0)
          {
            v60 = v57 & 0xFFFFFFFFFFFFLL;
          }

          if (!v60)
          {

            lazy protocol witness table accessor for type TopRecogntionFeatureExtractorError and conformance TopRecogntionFeatureExtractorError();
            OUTLINED_FUNCTION_13_4();
            v61 = swift_allocError();
            OUTLINED_FUNCTION_23_2(v61, v62);
          }

          return;
        }

        v68 = v20;
        if (v70)
        {
          v22 = MEMORY[0x26D5DD230](i - 4, v74);
        }

        else
        {
          if (v3 >= *(v76 + 16))
          {
            goto LABEL_76;
          }

          v22 = *(v74 + 8 * i);
        }

        v3 = v22;
        v23 = Int.init(truncating:)();
        v24 = [v77 interpretations];
        if (!v24)
        {
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        v25 = v24;
        type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SASInterpretation, 0x277D47710);
        v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if ((v6 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x26D5DD230](v23, v6);
        }

        else
        {
          if ((v23 & 0x8000000000000000) != 0)
          {
            goto LABEL_77;
          }

          if (v23 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_78;
          }

          v26 = *(v6 + 8 * v23 + 32);
        }

        v27 = v26;
        v28 = [v26 tokens];

        if (!v28)
        {
          goto LABEL_84;
        }

        type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SASToken, 0x277D477A0);
        v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v29 >> 62)
        {
          if (v29 < 0)
          {
            v31 = v29;
          }

          else
          {
            v31 = v29 & 0xFFFFFFFFFFFFFF8;
          }

          v30 = MEMORY[0x26D5DD300](v31);
          if (v30)
          {
LABEL_39:
            v63 = v8;
            v64 = v2;
            v32 = 0;
            v67 = v3;
            v66 = v30;
            while (1)
            {
              if ((v29 & 0xC000000000000001) != 0)
              {
                v33 = MEMORY[0x26D5DD230](v32, v29);
              }

              else
              {
                if (v32 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_80;
                }

                v33 = *(v29 + 8 * v32 + 32);
              }

              v34 = v33;
              v3 = (v32 + 1);
              if (__OFADD__(v32, 1))
              {
                break;
              }

              if ([v33 removeSpaceBefore])
              {
                v35 = *(v17 + 16);
                if (v35)
                {
                  v36 = (v17 + 16 + 16 * v35);
                  v37 = *v36 == 32 && v36[1] == 0xE100000000000000;
                  if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      specialized _ArrayBuffer._consumeAndCreateNew()(v17);
                      v17 = v54;
                    }

                    v38 = *(v17 + 16);
                    if (!v38)
                    {
                      goto LABEL_81;
                    }

                    v39 = v38 - 1;
                    v40 = *(v17 + 16 * v39 + 40);
                    *(v17 + 16) = v39;
                  }
                }
              }

              v41 = [v34 text];
              if (!v41)
              {
                goto LABEL_85;
              }

              v42 = v41;
              v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v45 = v44;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v50 = *(v17 + 16);
                specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                v17 = v51;
              }

              v2 = *(v17 + 16);
              v46 = *(v17 + 24) >> 1;
              v47 = v2 + 1;
              if (v46 <= v2)
              {
                specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                v17 = v52;
                v46 = *(v52 + 24) >> 1;
              }

              *(v17 + 16) = v47;
              v48 = v17 + 16 * v2;
              *(v48 + 32) = v43;
              *(v48 + 40) = v45;
              v6 = v2 + 2;
              if (v46 < (v2 + 2))
              {
                specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                v17 = v53;
              }

              *(v17 + 16) = v6;
              v49 = v17 + 16 * v47;
              *(v49 + 32) = 32;
              *(v49 + 40) = 0xE100000000000000;
              ++v32;
              v37 = v3 == v66;
              v3 = v67;
              if (v37)
              {

                v8 = v63;
                v2 = v64;
                v15 = v68;
                v11 = v69;
                goto LABEL_10;
              }
            }

LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
            goto LABEL_82;
          }
        }

        else
        {
          v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v30)
          {
            goto LABEL_39;
          }
        }

        v11 = v69;
      }

      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }
  }

  else
  {
LABEL_86:
    __break(1u);
  }

  __break(1u);
}

void WordEmbeddingFeatureExtractor.nlTokenize(recognition:)()
{
  OUTLINED_FUNCTION_16_1();
  v26 = type metadata accessor for Token();
  v2 = OUTLINED_FUNCTION_22(v26);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_0();
  v25 = v8 - v7;
  if (*(v0 + *(type metadata accessor for WordEmbeddingFeatureExtractor() + 20)))
  {

    dispatch thunk of ConfigurableAnalyzer.analyzeString(string:)();
    if (v1)
    {
    }

    else
    {

      v11 = specialized Sequence.filter(_:)(v10);
      v12 = *(v11 + 16);
      if (v12)
      {
        v27 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
        v14 = *(v4 + 16);
        v13 = v4 + 16;
        v15 = v11 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
        v23 = *(v13 + 56);
        v24 = v14;
        v16 = (v13 - 8);
        do
        {
          v24(v25, v15, v26);
          v17 = Token.cleanValue.getter();
          v19 = v18;
          (*v16)(v25, v26);
          v21 = *(v27 + 16);
          v20 = *(v27 + 24);
          if (v21 >= v20 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1);
          }

          *(v27 + 16) = v21 + 1;
          v22 = v27 + 16 * v21;
          *(v22 + 32) = v17;
          *(v22 + 40) = v19;
          v15 += v23;
          --v12;
        }

        while (v12);
      }

      else
      {
      }
    }
  }

  else
  {
    lazy protocol witness table accessor for type WordEmbeddingFeatureExtractorError and conformance WordEmbeddingFeatureExtractorError();
    OUTLINED_FUNCTION_13_4();
    swift_allocError();
    *v9 = 0;
    *(v9 + 8) = 0;
    *(v9 + 16) = 3;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_15_3();
}

unint64_t specialized Sequence.filter(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12MorphunSwift5TokenVSgMd, &_s12MorphunSwift5TokenVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - v4;
  v6 = type metadata accessor for Token();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v27 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - v11;
  v30 = a1;
  type metadata accessor for TokenChain();
  v13 = MEMORY[0x277D2A2C8];
  lazy protocol witness table accessor for type TokenChain and conformance TokenChain(&lazy protocol witness table cache variable for type TokenChain and conformance TokenChain, MEMORY[0x277D2A2C8]);
  dispatch thunk of Sequence.makeIterator()();
  lazy protocol witness table accessor for type TokenChain and conformance TokenChain(&lazy protocol witness table cache variable for type TokenChain and conformance TokenChain, v13);
  v14 = (v7 + 32);
  v26 = v7;
  v15 = (v7 + 8);
  v28 = MEMORY[0x277D84F90];
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {
      break;
    }

    v16 = *v14;
    (*v14)(v12, v5, v6);
    if (Token.isSignificant()())
    {
      v16(v27, v12, v6);
      v17 = v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 16) + 1, 1);
        v17 = v29;
      }

      v20 = *(v17 + 16);
      v19 = *(v17 + 24);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v28 = v20 + 1;
        v25 = v20;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v19 > 1, v20 + 1, 1);
        v21 = v28;
        v20 = v25;
        v17 = v29;
      }

      *(v17 + 16) = v21;
      v22 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v28 = v17;
      v16((v17 + v22 + *(v26 + 72) * v20), v27, v6);
    }

    else
    {
      (*v15)(v12, v6);
    }
  }

  outlined destroy of Token?(v5, &_s12MorphunSwift5TokenVSgMd, &_s12MorphunSwift5TokenVSgMR);
  return v28;
}

unint64_t lazy protocol witness table accessor for type WordEmbeddingFeatureExtractorError and conformance WordEmbeddingFeatureExtractorError()
{
  result = lazy protocol witness table cache variable for type WordEmbeddingFeatureExtractorError and conformance WordEmbeddingFeatureExtractorError;
  if (!lazy protocol witness table cache variable for type WordEmbeddingFeatureExtractorError and conformance WordEmbeddingFeatureExtractorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WordEmbeddingFeatureExtractorError and conformance WordEmbeddingFeatureExtractorError);
  }

  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_20_2();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_5_6();
  *v4 = v3;

  OUTLINED_FUNCTION_10_5();

  return v5();
}

unint64_t lazy protocol witness table accessor for type TopRecogntionFeatureExtractorError and conformance TopRecogntionFeatureExtractorError()
{
  result = lazy protocol witness table cache variable for type TopRecogntionFeatureExtractorError and conformance TopRecogntionFeatureExtractorError;
  if (!lazy protocol witness table cache variable for type TopRecogntionFeatureExtractorError and conformance TopRecogntionFeatureExtractorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TopRecogntionFeatureExtractorError and conformance TopRecogntionFeatureExtractorError);
  }

  return result;
}

void specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  v1 = *(a1 + 16);
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  v1 = *(a1 + 16);
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  v1 = *(a1 + 16);
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  v1 = *(a1 + 16);
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
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

uint64_t lazy protocol witness table accessor for type TokenChain and conformance TokenChain(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in WordEmbeddingFeatureExtractor.loadNlEmbeddingsAssets(for:kickOffDownloads:)(uint64_t a1)
{
  v3 = *(type metadata accessor for Locale() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_16_2(v7);
  *v8 = v9;
  v8[1] = partial apply for closure #1 in WordEmbeddingFeatureExtractor.loadNlEmbeddingsAssets(for:kickOffDownloads:);

  return closure #1 in WordEmbeddingFeatureExtractor.loadNlEmbeddingsAssets(for:kickOffDownloads:)(a1, v5, v6, v1 + v4);
}

uint64_t partial apply for closure #1 in WordEmbeddingFeatureExtractor.loadNlEmbeddingsAssets(for:kickOffDownloads:)()
{
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_20_2();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_5_6();
  *v4 = v3;

  OUTLINED_FUNCTION_10_5();

  return v5();
}

uint64_t outlined destroy of Token?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA()
{
  OUTLINED_FUNCTION_24_0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_16_2(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_8_5(v4);

  return v7(v6);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_13()
{
  OUTLINED_FUNCTION_24_0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_16_2(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_8_5(v4);

  return v7(v6);
}

uint64_t get_enum_tag_for_layout_string_7SiriCam34WordEmbeddingFeatureExtractorErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t destructiveInjectEnumTag for WordEmbeddingFeatureExtractorError(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_2(uint64_t a1, void *a2)
{
  *a2 = 0xD000000000000028;
  a2[1] = v2;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_28_1()
{

  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CAARTrialEnrollment(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CAARTrialEnrollment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay7SiriCam15ActionCandidateVG_SDySSSo14MLFeatureValueCGsAE_pTg5(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v18 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v6 = v18;
    v8 = *(type metadata accessor for ActionCandidate() - 8);
    v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    while (1)
    {
      a1(&v17, v9, &v16);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v11 = v17;
      v18 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v6 = v18;
      }

      *(v6 + 16) = v13 + 1;
      *(v6 + 8 * v13 + 32) = v11;
      v9 += v10;
      if (!--v5)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay7SiriCam0E5ParseOG_Sds5NeverOTg5(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v17 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v6 = v17;
  v9 = *(type metadata accessor for CamParse(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    a1(&v16, v10);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v12 = v16;
    v17 = v6;
    v14 = *(v6 + 16);
    v13 = *(v6 + 24);
    if (v14 >= v13 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v13 > 1, v14 + 1, 1);
      v6 = v17;
    }

    *(v6 + 16) = v14 + 1;
    *(v6 + 8 * v14 + 32) = v12;
    v10 += v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void specialized Sequence.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v39 = a4;
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  v41 = v14;
  v42 = a3 + 56;
  v43 = (v14 + 8);
  v44 = (v14 + 16);
  v35 = a2;
  v36 = MEMORY[0x277D84F90];
  v15 = a1;
  v34 = a1;
LABEL_2:
  v16 = v15;
  for (i = v15; ; v15 = i)
  {
    if (v16 == a2)
    {

      return;
    }

    if (a2 < a1)
    {
      break;
    }

    if (v15 < a1)
    {
      goto LABEL_23;
    }

    if (v16 >= a2)
    {
      goto LABEL_24;
    }

    if (v15 < 0)
    {
      goto LABEL_25;
    }

    v17 = *v39;
    if (v16 >= *(*v39 + 16))
    {
      goto LABEL_26;
    }

    v40 = v16 + 1;
    v18 = type metadata accessor for RankedAction();
    v19 = *v44;
    (*v44)(v13, v17 + ((*(*(v18 - 8) + 80) + 32) & ~*(*(v18 - 8) + 80)) + *(*(v18 - 8) + 72) * v16 + *(v18 + 36), v7);
    if (*(a3 + 16))
    {
      v37 = v16;
      v20 = *(a3 + 40);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v21 = v13;
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v23 = a3;
      v24 = ~(-1 << *(a3 + 32));
      do
      {
        v25 = v22 & v24;
        if (((*(v42 + (((v22 & v24) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v22 & v24)) & 1) == 0)
        {
          a3 = v23;
          a1 = v34;
          a2 = v35;
          v13 = v21;
          goto LABEL_15;
        }

        v26 = v41;
        v19(v11, *(v23 + 48) + *(v41 + 72) * v25, v7);
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        v27 = dispatch thunk of static Equatable.== infix(_:_:)();
        v28 = *(v26 + 8);
        v28(v11, v7);
        v22 = v25 + 1;
      }

      while ((v27 & 1) == 0);
      v28(v21, v7);
      v29 = v36;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = v29;
      a1 = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 16) + 1, 1);
        v29 = v45;
      }

      v32 = *(v29 + 16);
      v31 = *(v29 + 24);
      v13 = v21;
      if (v32 >= v31 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v31 > 1, v32 + 1, 1);
        v29 = v45;
      }

      *(v29 + 16) = v32 + 1;
      v36 = v29;
      *(v29 + 8 * v32 + 32) = v37;
      v15 = v40;
      a3 = v23;
      a2 = v35;
      goto LABEL_2;
    }

LABEL_15:
    (*v43)(v13, v7);
    v16 = v40;
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t one-time initialization function for postRankLoggingQueue()
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static DispatchQoS.background.getter();
  v11 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static CodeBasedRankerHandler.postRankLoggingQueue = result;
  return result;
}

uint64_t CodeBasedRankerHandler.init(scorer:tieBreakerChain:)(uint64_t *a1, uint64_t a2)
{
  outlined init with copy of SignalProviding(a1, v2 + 16);
  *(v2 + 104) = a2;
  OUTLINED_FUNCTION_3_3();
  *(v2 + 56) = 0xD000000000000011;
  *(v2 + 64) = v6;
  CamModelVersion.init(_:)();
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
    v11 = *(v2 + 64);

    v12 = *(v2 + 104);

    type metadata accessor for CodeBasedRankerHandler();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v7;
    v14 = v8;
    v15 = v9;
    v16 = v10;
    v17 = HIDWORD(v7);
    __swift_destroy_boxed_opaque_existential_0(a1);
    *(v2 + 72) = v13;
    *(v2 + 76) = v17;
    *(v2 + 80) = v14;
    *(v2 + 88) = v15;
    *(v2 + 96) = v16;
  }

  return v2;
}

void CodeBasedRankerHandler.rank(requestId:caarId:rcId:actions:rankerContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_1();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_14(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v37);
  v39 = &a9 - v38;
  v40 = type metadata accessor for UUID();
  __swift_storeEnumTagSinglePayload(v39, 1, 1, v40);
  CodeBasedRankerHandler.rank(requestId:caarId:rcId:trpId:actions:rankerContext:)(v33, v31, v29, v27, v39, v25, v23);
  outlined destroy of (CamLogOutput, CamModelMetadata)(v39, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_15_3();
}

void (*CodeBasedRankerHandler.rank(requestId:caarId:rcId:trpId:actions:rankerContext:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7))(uint64_t, unint64_t)
{
  v240 = a7;
  v246 = a6;
  v228 = type metadata accessor for DispatchWorkItemFlags();
  v13 = OUTLINED_FUNCTION_22(v228);
  v227 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_21_1(v18 - v17);
  v226 = type metadata accessor for DispatchQoS();
  v19 = OUTLINED_FUNCTION_22(v226);
  v225 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_23_0(v24 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_19_3(v25);
  v220 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_7_4();
  v221 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_21_1(&v212 - v31);
  v223 = type metadata accessor for UUID();
  v32 = OUTLINED_FUNCTION_22(v223);
  v222 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_23_0(&v212 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v219 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_21_1(&v212 - v39);
  v244 = type metadata accessor for RankedAction();
  v40 = OUTLINED_FUNCTION_22(v244);
  v245 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_5();
  v247 = v44;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_10_3();
  *&v248 = v46;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v47);
  v49 = &v212 - v48;
  v50 = type metadata accessor for OSSignpostID();
  v51 = OUTLINED_FUNCTION_22(v50);
  v243 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_5();
  v229 = v55;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_10_3();
  v232 = v57;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_10_3();
  v233 = v59;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v61);
  v63 = &v212 - v62;
  v235 = a2;
  v238 = a3;
  v239 = a4;
  v236 = a1;
  v237 = a5;
  _s7SiriCam19CaarLoggingProtocolPAAE3log4from03forC2Id0h2RcI00h7RequestI00h3TrpI0y13SourceMessageQz_10Foundation4UUIDVSSA2NSgtFZAA0cK6LoggerV_Tt4g5(a2, a3, a4, a1, a5);
  if (one-time initialization token for ranker != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v64 = static Log.ranker;
    OSSignpostID.init(log:)();
    static os_signpost_type_t.begin.getter();
    OUTLINED_FUNCTION_52();
    *(v65 - 256) = v63;
    os_signpost(_:dso:log:name:signpostID:_:_:)();
    v66 = v64;
    OSSignpostID.init(log:)();
    static os_signpost_type_t.begin.getter();
    OUTLINED_FUNCTION_49();
    os_signpost(_:dso:log:name:signpostID:)();
    v67 = v241;
    CodeBasedRankerHandler.extractFeatures(actions:rankerContext:)();
    if (v67)
    {
      v69 = *(v243 + 8);
      v69(v7, v50);
      static os_signpost_type_t.end.getter();
      OUTLINED_FUNCTION_52();
      v74 = *(v73 - 256);
      os_signpost(_:dso:log:name:signpostID:)();
      v69(v74, v50);
      v75 = v67;
      CamResponseStatusCode.init(fromError:)(v67, &aBlock);
      _s7SiriCam19CaarLoggingProtocolPAAE3log4from03forC2Id0h2RcI00h7RequestI00h3TrpI0y13SourceMessageQz_10Foundation4UUIDVSSA2NSgtFZAA0C11ErrorLoggerV_Tt4B5(aBlock, v235, v238, v239, v236, v237);
      swift_willThrow();
      return v69;
    }

    v70 = v68;
    v240 = v50;
    static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_49();
    os_signpost(_:dso:log:name:signpostID:)();
    v71 = v66;
    OSSignpostID.init(log:)();
    static os_signpost_type_t.begin.getter();
    OUTLINED_FUNCTION_30_0();
    os_signpost(_:dso:log:name:signpostID:)();
    OUTLINED_FUNCTION_29_0();
    v241 = swift_allocObject();

    _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay7SiriCam15ActionCandidateVGSaySDySSSo14MLFeatureValueCGGG_AH06RankedH0VsAE_pTg503_s7f5Cam15hi10VSDySSSo14jk6CGAA06l5C0Vs5C33_pIgngrzo_AC_AFtAHsAI_pIegnrzr_TRAjnRsAE_pIgngrzo_Tf1cn_n(v72, v70, partial apply for closure #1 in CodeBasedRankerHandler.rank(requestId:caarId:rcId:trpId:actions:rankerContext:), v234);
    v78 = v77;
    v218 = v71;

    aBlock = v78;

    specialized MutableCollection<>.sort(by:)(&aBlock, specialized _ContiguousArrayBuffer._consumeAndCreateNew());
    v217 = v7;
    v216 = 0;

    v79 = v241;
    *(v241 + 16) = aBlock;
    static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_30_0();
    os_signpost(_:dso:log:name:signpostID:)();
    v80 = v234;
    if (one-time initialization token for ranker != -1)
    {
      OUTLINED_FUNCTION_2_0();
      swift_once();
    }

    v81 = type metadata accessor for Logger();
    v82 = __swift_project_value_buffer(v81, static Logger.ranker);

    v246 = v82;
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v83, v84))
    {
      LODWORD(v215) = v84;
      OUTLINED_FUNCTION_15();
      v85 = swift_slowAlloc();
      OUTLINED_FUNCTION_9();
      v214 = swift_slowAlloc();
      aBlock = v214;
      *v85 = 136315138;
      OUTLINED_FUNCTION_62();
      v86 = *(v79 + 16);
      v87 = *(v86 + 16);
      if (v87)
      {
        v212 = v85;
        v213 = v83;
        v257 = MEMORY[0x277D84F90];

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v87, 0);
        v88 = v257;
        OUTLINED_FUNCTION_8();
        v90 = v86 + v89;
        v92 = *(v91 + 72);
        do
        {
          OUTLINED_FUNCTION_1_12();
          outlined init with copy of RankedAction();
          OUTLINED_FUNCTION_37();
          v94 = *&v49[*(v93 + 28)];
          OUTLINED_FUNCTION_0_11();
          outlined destroy of RankedAction();
          v257 = v88;
          v96 = *(v88 + 16);
          v95 = *(v88 + 24);
          if (v96 >= v95 >> 1)
          {
            v97 = OUTLINED_FUNCTION_17_1(v95);
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v97, v96 + 1, 1);
            v88 = v257;
          }

          *(v88 + 16) = v96 + 1;
          *(v88 + 8 * v96 + 32) = v94;
          v90 += v92;
          --v87;
        }

        while (v87);

        v80 = v234;
        v83 = v213;
        v85 = v212;
      }

      else
      {

        v88 = MEMORY[0x277D84F90];
      }

      v98 = MEMORY[0x26D5DCE80](v88, MEMORY[0x277D839F8]);
      v100 = v99;

      v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v100, &aBlock);

      *(v85 + 4) = v101;
      _os_log_impl(&dword_266790000, v83, v215, "Ranking generated scores %s", v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v214);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    else
    {
    }

    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 67109120;
      v105 = OUTLINED_FUNCTION_61();
      v106 = v105 != 2 && (v105 & 1) != 0 && (CamFeatureFlag.isEnabled.getter(5u) & 1) != 0;
      *(v104 + 4) = v106;
      _os_log_impl(&dword_266790000, v102, v103, "Dawn AppShortcuts experience enabled=%{BOOL}d", v104, 8u);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    OUTLINED_FUNCTION_62();
    v107 = *(v79 + 16);
    v50 = *(v107 + 16);
    if (v50 < 2)
    {
      break;
    }

    v108 = v80;
    OUTLINED_FUNCTION_37();
    v7 = *(v109 + 44);
    v110 = v107 + ((*(v245 + 80) + 32) & ~*(v245 + 80));

    v49 = 0;
    v63 = 0x535F5050415F5349;
    while (v49 < *(v107 + 16))
    {
      v111 = *(v245 + 72);
      OUTLINED_FUNCTION_1_12();
      v112 = v248;
      outlined init with copy of RankedAction();
      v102 = *(v112 + v7);
      if (v102[2].isa && (v113 = specialized __RawDictionaryStorage.find<A>(_:)(0x535F5050415F5349, 0xEF54554354524F48), (v114 & 1) != 0))
      {
        v102 = [*(v102[7].isa + v113) int64Value];
        OUTLINED_FUNCTION_0_11();
        outlined destroy of RankedAction();
        if (v102)
        {
          v115 = 1;
LABEL_36:

          OUTLINED_FUNCTION_55();
          v80 = v108;
          goto LABEL_37;
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_11();
        outlined destroy of RankedAction();
      }

      if (v50 == ++v49)
      {
        v115 = 0;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_58:
    swift_once();
  }

  v115 = 0;
  OUTLINED_FUNCTION_55();
LABEL_37:
  OUTLINED_FUNCTION_29_0();
  v244 = swift_allocObject();
  v116 = OUTLINED_FUNCTION_61();
  if (v116 != 2 && (v116 & 1) != 0 && (v115 & CamFeatureFlag.isEnabled.getter(5u)) == 1)
  {
    v117 = v102;
    OSSignpostID.init(log:)();
    static os_signpost_type_t.begin.getter();
    OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_49();
    os_signpost(_:dso:log:name:signpostID:)();
    type metadata accessor for SiriSignalsContainer();
    OUTLINED_FUNCTION_29_0();
    swift_allocObject();
    OUTLINED_FUNCTION_48();
    type metadata accessor for SignalValue();
    *(v115 + 16) = Dictionary.init(dictionaryLiteral:)();
    SiriSignalsContainer.refreshSignals()();
    v118 = v241;
    swift_beginAccess();

    specialized CodeBasedRankerHandler.extractUserHistoryFeatures(rankedActions:siriSignalsContainer:)((v118 + 16), v115);
    specialized CodeBasedRankerHandler.extractDisambiguationFeatures(rankedActions:siriSignalsContainer:)((v118 + 16), v115);
    swift_endAccess();
    *&v248 = v115;

    static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_49();
    os_signpost(_:dso:log:name:signpostID:)();
    v119 = v117;
    OSSignpostID.init(log:)();
    static os_signpost_type_t.begin.getter();
    OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_30_0();
    os_signpost(_:dso:log:name:signpostID:)();
    v120 = *(v80 + 104);
    v121 = *(v118 + 16);

    v123 = Array<A>.execute(_:)(v122, v120);
    v214 = v124;

    OUTLINED_FUNCTION_37();
    *(v125 + 16) = v123;
    OUTLINED_FUNCTION_8_6(v125);
    v216 = v120;
    static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_30_0();
    os_signpost(_:dso:log:name:signpostID:)();
    if (one-time initialization token for postRankLoggingQueue != -1)
    {
      OUTLINED_FUNCTION_20_3();
    }

    v215 = static CodeBasedRankerHandler.postRankLoggingQueue;
    v126 = v222;
    v127 = v222 + 16;
    v128 = *(v222 + 16);
    v129 = OUTLINED_FUNCTION_31();
    v131 = *(v130 - 256);
    v128(v129);
    v132 = OUTLINED_FUNCTION_44();
    v128(v132);
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_26_1(*(v126 + 80));
    v134 = v133 & 0xFFFFFFFFFFFFFFF8;
    v136 = (v135 + (v133 & 0xFFFFFFFFFFFFFFF8) + 16) & ~v135;
    OUTLINED_FUNCTION_59();
    v139 = (v221 + ((v137 + v136) & ~v138) + 7) & 0xFFFFFFFFFFFFFFF8;
    v140 = swift_allocObject();
    OUTLINED_FUNCTION_37();
    *(v141 + 16) = v143;
    *(v141 + 24) = v142;
    v144 = *(v126 + 32);
    v144(v141 + v127, v230, v131);
    OUTLINED_FUNCTION_38((v140 + v134));
    v144(v140 + v136, v231, v131);
    outlined init with take of (UUID, [String : MLFeatureValue])();
    *(v140 + v139) = v214;
    v255 = partial apply for closure #3 in CodeBasedRankerHandler.rank(requestId:caarId:rcId:trpId:actions:rankerContext:);
    v256 = v140;
    aBlock = MEMORY[0x277D85DD0];
    v252 = 1107296256;
    v253 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v254 = &block_descriptor_26;
    v145 = _Block_copy(&aBlock);

    v146 = v224;
    static DispatchQoS.unspecified.getter();
    v249 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_13_5();
    lazy protocol witness table accessor for type UUID and conformance UUID(v147, v148);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    OUTLINED_FUNCTION_32();
    v149 = v228;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26D5DD090](0, v146, v127, v145);
    _Block_release(v145);

    v150 = OUTLINED_FUNCTION_57();
    v151(v150, v149);
    v152 = OUTLINED_FUNCTION_28_2();
    v153(v152);
    v154 = *(v243 + 8);
    v155 = v240;
    v154(v229, v240);
    v239 = v154;
    v154(v232, v155);
  }

  else
  {
    v156 = v102;
    OSSignpostID.init(log:)();
    static os_signpost_type_t.begin.getter();
    OUTLINED_FUNCTION_30_0();
    os_signpost(_:dso:log:name:signpostID:)();
    v157 = *(v80 + 104);
    v158 = *(v241 + 16);

    v160 = Array<A>.execute(_:)(v159, v157);
    v229 = v161;

    OUTLINED_FUNCTION_37();
    *(v162 + 16) = v160;
    OUTLINED_FUNCTION_8_6(v162);
    v216 = v157;
    static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_30_0();
    os_signpost(_:dso:log:name:signpostID:)();
    if (one-time initialization token for postRankLoggingQueue != -1)
    {
      OUTLINED_FUNCTION_20_3();
    }

    *&v248 = static CodeBasedRankerHandler.postRankLoggingQueue;
    v163 = v222;
    v164 = *(v222 + 16);
    v165 = OUTLINED_FUNCTION_31();
    v167 = *(v166 - 256);
    v164(v165);
    v168 = OUTLINED_FUNCTION_44();
    v164(v168);
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_26_1(*(v163 + 80));
    v170 = v169 & 0xFFFFFFFFFFFFFFF8;
    v172 = (v171 + (v169 & 0xFFFFFFFFFFFFFFF8) + 16) & ~v171;
    OUTLINED_FUNCTION_59();
    v175 = (v221 + ((v173 + v172) & ~v174) + 7) & 0xFFFFFFFFFFFFFFF8;
    v176 = swift_allocObject();
    v177 = v234;
    *(v176 + 16) = v241;
    *(v176 + 24) = v177;
    v178 = *(v163 + 32);
    v178(v164 + v176, v230, v167);
    OUTLINED_FUNCTION_38((v176 + v170));
    v178((v176 + v172), v231, v167);
    outlined init with take of (UUID, [String : MLFeatureValue])();
    *(v176 + v175) = v229;
    v255 = partial apply for closure #4 in CodeBasedRankerHandler.rank(requestId:caarId:rcId:trpId:actions:rankerContext:);
    v256 = v176;
    aBlock = MEMORY[0x277D85DD0];
    v252 = 1107296256;
    v253 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v254 = &block_descriptor_0;
    v179 = _Block_copy(&aBlock);

    v180 = v224;
    static DispatchQoS.unspecified.getter();
    v249 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_13_5();
    lazy protocol witness table accessor for type UUID and conformance UUID(v181, v182);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    OUTLINED_FUNCTION_32();
    v183 = v228;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26D5DD090](0, v180, v164, v179);
    _Block_release(v179);
    v184 = OUTLINED_FUNCTION_57();
    v185(v184, v183);
    v186 = OUTLINED_FUNCTION_28_2();
    v187(v186);
    v239 = *(v243 + 8);
    v239(v232, v240);
  }

  v188 = v244;

  v189 = Logger.logObject.getter();
  v190 = static os_log_type_t.info.getter();
  v191 = os_log_type_enabled(v189, v190);
  v192 = v242;
  v193 = v233;
  if (v191)
  {
    OUTLINED_FUNCTION_15();
    v194 = swift_slowAlloc();
    *v194 = 134217984;
    OUTLINED_FUNCTION_62();
    *(v194 + 4) = *(*(v188 + 16) + 16);

    _os_log_impl(&dword_266790000, v189, v190, "Returning %ld ranked actions", v194, 0xCu);
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  else
  {
  }

  OUTLINED_FUNCTION_62();
  v195 = *(*(v188 + 16) + 16);
  if (v195)
  {
    OUTLINED_FUNCTION_8();
    v198 = v196 + v197;
    v200 = *(v199 + 72);
    v245 = v196;

    *&v201 = 136315138;
    v248 = v201;
    do
    {
      OUTLINED_FUNCTION_1_12();
      outlined init with copy of RankedAction();
      v202 = Logger.logObject.getter();
      v203 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v202, v203))
      {
        OUTLINED_FUNCTION_15();
        v204 = swift_slowAlloc();
        OUTLINED_FUNCTION_9();
        v205 = swift_slowAlloc();
        v250 = v205;
        *v204 = v248;
        v206 = RankedAction.description.getter();
        v208 = v207;
        OUTLINED_FUNCTION_0_11();
        outlined destroy of RankedAction();
        v209 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v206, v208, &v250);

        *(v204 + 4) = v209;
        _os_log_impl(&dword_266790000, v202, v203, "%s", v204, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v205);
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
      }

      else
      {

        OUTLINED_FUNCTION_0_11();
        outlined destroy of RankedAction();
      }

      v198 += v200;
      --v195;
    }

    while (v195);

    v192 = v242;
    v193 = v233;
    v188 = v244;
  }

  v210 = v240;
  v211 = v239;
  v239(v193, v240);
  v211(v217, v210);
  v69 = *(v188 + 16);

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v211(v192, v210);
  return v69;
}

void _s7SiriCam19CaarLoggingProtocolPAAE3log4from03forC2Id0h2RcI00h7RequestI00h3TrpI0y13SourceMessageQz_10Foundation4UUIDVSSA2NSgtFZAA0cK6LoggerV_Tt4g5(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v183 = a5;
  v184 = a3;
  v180 = a4;
  v181 = a2;
  v182 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v169 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v171 = &v169 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v170 = &v169 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v173 = &v169 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v179 = &v169 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v172 = &v169 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v169 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v175 = (&v169 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v178 = &v169 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v169 - v27;
  v185 = type metadata accessor for UUID();
  v29 = *(v185 - 8);
  v30 = *(v29 + 8);
  v31 = MEMORY[0x28223BE20](v185);
  v176 = &v169 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v169 = &v169 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v169 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v174 = &v169 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v169 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v45 = &v169 - v44;
  v46 = MEMORY[0x28223BE20](v43);
  v48 = &v169 - v47;
  MEMORY[0x28223BE20](v46);
  v50 = &v169 - v49;
  v51 = [objc_allocWithZone(MEMORY[0x277D56BC8]) init];
  if (!v51)
  {
    v178 = v9;
    v179 = v28;
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    __swift_project_value_buffer(v64, static Logger.common);
    v65 = v29;
    v66 = *(v29 + 2);
    v67 = v185;
    v66(v50, v182, v185);
    v66(v48, v180, v67);
    v68 = v179;
    outlined init with copy of UUID?();
    v69 = v184;

    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v70, v71))
    {

      outlined destroy of (CamLogOutput, CamModelMetadata)(v68, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v109 = *(v65 + 1);
      v109(v48, v67);
      v109(v50, v67);
      return;
    }

    LODWORD(v183) = v71;
    v72 = swift_slowAlloc();
    v182 = swift_slowAlloc();
    v187[0] = v182;
    *v72 = 136316162;
    v186 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARRequestReceived, 0x277D56BC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29CAARSchemaCAARRequestReceivedCmMd, &_sSo29CAARSchemaCAARRequestReceivedCmMR);
    v73 = String.init<A>(describing:)();
    v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, v187);

    *(v72 + 4) = v75;
    *(v72 + 12) = 2080;
    v76 = UUID.uuidString.getter();
    v78 = v77;
    v79 = *(v65 + 1);
    v79(v50, v185);
    v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v78, v187);
    v81 = v179;

    *(v72 + 14) = v80;
    *(v72 + 22) = 2080;
    *(v72 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v181, v69, v187);
    *(v72 + 32) = 2080;
    v82 = UUID.uuidString.getter();
    v84 = v83;
    v79(v48, v185);
    v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v84, v187);

    *(v72 + 34) = v85;
    *(v72 + 42) = 2080;
    v86 = v185;
    v87 = v178;
    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v87, 1, v86) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v87, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v88 = 0;
      v89 = 0xE000000000000000;
    }

    else
    {
      v88 = UUID.uuidString.getter();
      v89 = v132;
      v79(v87, v86);
    }

    outlined destroy of (CamLogOutput, CamModelMetadata)(v81, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v133 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v89, v187);

    *(v72 + 44) = v133;
    _os_log_impl(&dword_266790000, v70, v183, "Mapping function to create:  %s  failed for caarId : %s, rcId: %s, requestId: %s, trpId: %s", v72, 0x34u);
    v134 = v182;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v134, -1, -1);
    MEMORY[0x26D5DDCD0](v72, -1, -1);
    goto LABEL_43;
  }

  v52 = v51;
  [v51 setExists_];
  v177 = v52;
  v53 = static CaarRequestLogger.wrapIntoLogEvent(message:)(v52);
  if (!v53)
  {
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v90 = type metadata accessor for Logger();
    __swift_project_value_buffer(v90, static Logger.common);
    v91 = v185;
    (*(v29 + 2))(v45, v182, v185);
    v92 = v178;
    outlined init with copy of UUID?();
    v93 = v184;

    v70 = Logger.logObject.getter();
    v94 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v70, v94))
    {

      outlined destroy of (CamLogOutput, CamModelMetadata)(v92, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (*(v29 + 1))(v45, v91);
      return;
    }

    v95 = swift_slowAlloc();
    v183 = swift_slowAlloc();
    v187[0] = v183;
    *v95 = 136315906;
    v186 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARRequestReceived, 0x277D56BC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29CAARSchemaCAARRequestReceivedCmMd, &_sSo29CAARSchemaCAARRequestReceivedCmMR);
    v96 = String.init<A>(describing:)();
    v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v97, v187);

    *(v95 + 4) = v98;
    *(v95 + 12) = 2080;
    v99 = UUID.uuidString.getter();
    v101 = v100;
    v102 = *(v29 + 1);
    v102(v45, v185);
    v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v101, v187);
    v104 = v185;

    *(v95 + 14) = v103;
    *(v95 + 22) = 2080;
    *(v95 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v181, v93, v187);
    *(v95 + 32) = 2080;
    v105 = v178;
    v106 = v171;
    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v106, 1, v104) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v106, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v107 = 0;
      v108 = 0xE000000000000000;
    }

    else
    {
      v160 = UUID.uuidString.getter();
      v161 = v104;
      v107 = v160;
      v108 = v162;
      v102(v106, v161);
    }

    outlined destroy of (CamLogOutput, CamModelMetadata)(v105, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v163 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v108, v187);

    *(v95 + 34) = v163;
    _os_log_impl(&dword_266790000, v70, v94, "Couldn't create log event with destination message : %s  for caarId : %s, rcId: %s, trpId: %s", v95, 0x2Au);
    v164 = v183;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v164, -1, -1);
    MEMORY[0x26D5DDCD0](v95, -1, -1);
    v159 = v177;
LABEL_42:

LABEL_43:
    return;
  }

  v54 = v53;
  v55 = [objc_allocWithZone(MEMORY[0x277D56B58]) init];
  v56 = v29;
  if (v55)
  {
    v57 = v55;
    v178 = v54;
    type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SISchemaUUID, 0x277D5AC70);
    v175 = v29;
    v58 = *(v29 + 2);
    v59 = v185;
    v58(v42, v182, v185);
    v60 = SISchemaUUID.__allocating_init(nsuuid:)(v42);
    [v57 setCaarId_];

    v61 = MEMORY[0x26D5DCC90](v181, v184);
    [v57 setResultCandidateId_];

    [v57 setRequestId_];
    if (AFDeviceSupportsSAE())
    {
      v58(v42, v180, v59);
      v62 = SISchemaUUID.__allocating_init(nsuuid:)(v42);
      [v57 setSubRequestId_];
    }

    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v22, 1, v59) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v63 = v172;
      UUID.init(uuidString:)();
      if (__swift_getEnumTagSinglePayload(v63, 1, v59) == 1)
      {
        outlined destroy of (CamLogOutput, CamModelMetadata)(v63, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_32:
        v136 = v179;
        v137 = v176;
        v138 = v178;
        [v178 setEventMetadata_];
        [objc_msgSend(objc_opt_self() sharedStream)];
        swift_unknownObjectRelease();
        if (one-time initialization token for common != -1)
        {
          swift_once();
        }

        v139 = type metadata accessor for Logger();
        __swift_project_value_buffer(v139, static Logger.common);
        v58(v137, v182, v59);
        outlined init with copy of UUID?();
        v140 = v184;

        v70 = Logger.logObject.getter();
        v141 = static os_log_type_t.debug.getter();

        if (!os_log_type_enabled(v70, v141))
        {

          outlined destroy of (CamLogOutput, CamModelMetadata)(v136, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v175[1](v137, v59);
          return;
        }

        LODWORD(v185) = v141;
        v142 = swift_slowAlloc();
        v143 = v59;
        v183 = swift_slowAlloc();
        v187[0] = v183;
        *v142 = 136315906;
        v186 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARRequestReceived, 0x277D56BC8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29CAARSchemaCAARRequestReceivedCmMd, &_sSo29CAARSchemaCAARRequestReceivedCmMR);
        v144 = String.init<A>(describing:)();
        v146 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v144, v145, v187);

        *(v142 + 4) = v146;
        *(v142 + 12) = 2080;
        v147 = UUID.uuidString.getter();
        v149 = v148;
        v150 = v175[1];
        v150(v137, v59);
        v151 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v147, v149, v187);

        *(v142 + 14) = v151;
        *(v142 + 22) = 2080;
        *(v142 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v181, v140, v187);
        *(v142 + 32) = 2080;
        v152 = v179;
        v153 = v173;
        outlined init with copy of UUID?();
        if (__swift_getEnumTagSinglePayload(v153, 1, v143) == 1)
        {
          outlined destroy of (CamLogOutput, CamModelMetadata)(v153, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v154 = 0;
          v155 = 0xE000000000000000;
        }

        else
        {
          v154 = UUID.uuidString.getter();
          v155 = v156;
          v150(v153, v143);
        }

        outlined destroy of (CamLogOutput, CamModelMetadata)(v152, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v157 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v154, v155, v187);

        *(v142 + 34) = v157;
        _os_log_impl(&dword_266790000, v70, v185, "Successfully emitted log message : %s for caarId : %s, rcId: %s, retrpId: %s", v142, 0x2Au);
        v158 = v183;
        swift_arrayDestroy();
        MEMORY[0x26D5DDCD0](v158, -1, -1);
        MEMORY[0x26D5DDCD0](v142, -1, -1);

        v159 = v178;
        goto LABEL_42;
      }

      v130 = v175;
      v37 = v169;
      (v175[4])(v169, v63, v59);
      v58(v42, v37, v59);
      v135 = SISchemaUUID.__allocating_init(nsuuid:)(v42);
      [v57 setTrpId_];
    }

    else
    {
      v130 = v175;
      (v175[4])(v37, v22, v59);
      v58(v42, v37, v59);
      v131 = SISchemaUUID.__allocating_init(nsuuid:)(v42);
      [v57 setTrpId_];
    }

    v130[1](v37, v59);
    goto LABEL_32;
  }

  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v110 = type metadata accessor for Logger();
  __swift_project_value_buffer(v110, static Logger.common);
  v111 = v174;
  v112 = v185;
  (*(v29 + 2))(v174, v182, v185);
  v113 = v175;
  outlined init with copy of UUID?();
  v114 = v184;

  v115 = Logger.logObject.getter();
  v116 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v115, v116))
  {
    LODWORD(v183) = v116;
    v178 = v54;
    v117 = swift_slowAlloc();
    v182 = swift_slowAlloc();
    v187[0] = v182;
    *v117 = 136315906;
    v186 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARRequestReceived, 0x277D56BC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29CAARSchemaCAARRequestReceivedCmMd, &_sSo29CAARSchemaCAARRequestReceivedCmMR);
    v118 = String.init<A>(describing:)();
    v120 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v118, v119, v187);

    *(v117 + 4) = v120;
    *(v117 + 12) = 2080;
    v121 = UUID.uuidString.getter();
    v123 = v122;
    v124 = *(v56 + 1);
    v124(v111, v112);
    v125 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v123, v187);

    *(v117 + 14) = v125;
    *(v117 + 22) = 2080;
    *(v117 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v181, v114, v187);
    *(v117 + 32) = 2080;
    v126 = v175;
    v127 = v170;
    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v127, 1, v112) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v127, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v128 = 0;
      v129 = 0xE000000000000000;
    }

    else
    {
      v128 = UUID.uuidString.getter();
      v129 = v165;
      v124(v127, v112);
    }

    v166 = v178;
    outlined destroy of (CamLogOutput, CamModelMetadata)(v126, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v167 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v128, v129, v187);

    *(v117 + 34) = v167;
    _os_log_impl(&dword_266790000, v115, v183, "Failed to create metadata for log event : %s, caarId : %s, rcId: %s, trpId: %s", v117, 0x2Au);
    v168 = v182;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v168, -1, -1);
    MEMORY[0x26D5DDCD0](v117, -1, -1);
  }

  else
  {

    outlined destroy of (CamLogOutput, CamModelMetadata)(v113, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v56 + 1))(v111, v112);
  }
}

void _s7SiriCam19CaarLoggingProtocolPAAE3log4from03forC2Id0h2RcI00h7RequestI00h3TrpI0y13SourceMessageQz_10Foundation4UUIDVSSA2NSgtFZAA0C11ErrorLoggerV_Tt4B5(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v186 = a6;
  v187 = a4;
  v184 = a3;
  v185 = a2;
  v182 = a5;
  v183 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v172 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v174 = &v172 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v173 = &v172 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v176 = &v172 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v181 = &v172 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v175 = &v172 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v172 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v178 = (&v172 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v180 = &v172 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v172 - v28;
  v188 = type metadata accessor for UUID();
  v30 = *(v188 - 8);
  v31 = *(v30 + 8);
  v32 = MEMORY[0x28223BE20](v188);
  v179 = &v172 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v172 = &v172 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v172 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v177 = &v172 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v172 - v42;
  v44 = MEMORY[0x28223BE20](v41);
  v46 = &v172 - v45;
  v47 = MEMORY[0x28223BE20](v44);
  v49 = &v172 - v48;
  MEMORY[0x28223BE20](v47);
  v51 = &v172 - v50;
  v52 = [objc_allocWithZone(MEMORY[0x277D56BB8]) init];
  if (!v52)
  {
    v183 = v29;
    v181 = v10;
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    __swift_project_value_buffer(v65, static Logger.common);
    v66 = v30;
    v67 = *(v30 + 2);
    v68 = v188;
    v67(v51, v185, v188);
    v67(v49, v182, v68);
    v69 = v183;
    outlined init with copy of UUID?();
    v70 = v187;

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v71, v72))
    {

      outlined destroy of (CamLogOutput, CamModelMetadata)(v69, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v110 = *(v66 + 1);
      v110(v49, v68);
      v110(v51, v68);
      return;
    }

    LODWORD(v186) = v72;
    v73 = swift_slowAlloc();
    v185 = swift_slowAlloc();
    v190[0] = v185;
    *v73 = 136316162;
    v189 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARRequestFailed, 0x277D56BB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27CAARSchemaCAARRequestFailedCmMd, &_sSo27CAARSchemaCAARRequestFailedCmMR);
    v74 = String.init<A>(describing:)();
    v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, v190);

    *(v73 + 4) = v76;
    *(v73 + 12) = 2080;
    v77 = UUID.uuidString.getter();
    v79 = v78;
    v80 = *(v66 + 1);
    v80(v51, v188);
    v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v79, v190);
    v82 = v183;

    *(v73 + 14) = v81;
    *(v73 + 22) = 2080;
    *(v73 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v184, v70, v190);
    *(v73 + 32) = 2080;
    v83 = UUID.uuidString.getter();
    v85 = v84;
    v80(v49, v188);
    v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v85, v190);

    *(v73 + 34) = v86;
    *(v73 + 42) = 2080;
    v87 = v188;
    v88 = v181;
    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v88, 1, v87) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v88, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v89 = 0;
      v90 = 0xE000000000000000;
    }

    else
    {
      v89 = UUID.uuidString.getter();
      v90 = v134;
      v80(v88, v87);
    }

    outlined destroy of (CamLogOutput, CamModelMetadata)(v82, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v135 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v90, v190);

    *(v73 + 44) = v135;
    _os_log_impl(&dword_266790000, v71, v186, "Mapping function to create:  %s  failed for caarId : %s, rcId: %s, requestId: %s, trpId: %s", v73, 0x34u);
    v136 = v185;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v136, -1, -1);
    MEMORY[0x26D5DDCD0](v73, -1, -1);
    goto LABEL_43;
  }

  v53 = v52;
  [v52 setErrorCode_];
  v183 = v53;
  v54 = static CaarErrorLogger.wrapIntoLogEvent(message:)(v53);
  if (!v54)
  {
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v91 = type metadata accessor for Logger();
    __swift_project_value_buffer(v91, static Logger.common);
    v92 = v188;
    (*(v30 + 2))(v46, v185, v188);
    v93 = v180;
    outlined init with copy of UUID?();
    v94 = v187;

    v71 = Logger.logObject.getter();
    v95 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v71, v95))
    {

      outlined destroy of (CamLogOutput, CamModelMetadata)(v93, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (*(v30 + 1))(v46, v92);
      return;
    }

    v96 = swift_slowAlloc();
    v186 = swift_slowAlloc();
    v190[0] = v186;
    *v96 = 136315906;
    v189 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARRequestFailed, 0x277D56BB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27CAARSchemaCAARRequestFailedCmMd, &_sSo27CAARSchemaCAARRequestFailedCmMR);
    v97 = String.init<A>(describing:)();
    v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v98, v190);

    *(v96 + 4) = v99;
    *(v96 + 12) = 2080;
    v100 = UUID.uuidString.getter();
    v102 = v101;
    v103 = *(v30 + 1);
    v103(v46, v188);
    v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v102, v190);
    v105 = v188;

    *(v96 + 14) = v104;
    *(v96 + 22) = 2080;
    *(v96 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v184, v94, v190);
    *(v96 + 32) = 2080;
    v106 = v180;
    v107 = v174;
    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v107, 1, v105) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v107, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v108 = 0;
      v109 = 0xE000000000000000;
    }

    else
    {
      v163 = UUID.uuidString.getter();
      v164 = v105;
      v108 = v163;
      v109 = v165;
      v103(v107, v164);
    }

    outlined destroy of (CamLogOutput, CamModelMetadata)(v106, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v166 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v109, v190);

    *(v96 + 34) = v166;
    _os_log_impl(&dword_266790000, v71, v95, "Couldn't create log event with destination message : %s  for caarId : %s, rcId: %s, trpId: %s", v96, 0x2Au);
    v167 = v186;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v167, -1, -1);
    MEMORY[0x26D5DDCD0](v96, -1, -1);
    v162 = v183;
LABEL_42:

LABEL_43:
    return;
  }

  v55 = v54;
  v56 = [objc_allocWithZone(MEMORY[0x277D56B58]) init];
  v57 = v30;
  if (v56)
  {
    v58 = v56;
    v180 = v55;
    type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SISchemaUUID, 0x277D5AC70);
    v178 = v30;
    v59 = *(v30 + 2);
    v60 = v188;
    v59(v43, v185, v188);
    v61 = SISchemaUUID.__allocating_init(nsuuid:)(v43);
    [v58 setCaarId_];

    v62 = MEMORY[0x26D5DCC90](v184, v187);
    [v58 setResultCandidateId_];

    [v58 setRequestId_];
    if (AFDeviceSupportsSAE())
    {
      v59(v43, v182, v60);
      v63 = SISchemaUUID.__allocating_init(nsuuid:)(v43);
      [v58 setSubRequestId_];
    }

    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v23, 1, v60) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v23, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v64 = v175;
      UUID.init(uuidString:)();
      if (__swift_getEnumTagSinglePayload(v64, 1, v60) == 1)
      {
        outlined destroy of (CamLogOutput, CamModelMetadata)(v64, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_32:
        v139 = v181;
        v140 = v179;
        v141 = v180;
        [v180 setEventMetadata_];
        [objc_msgSend(objc_opt_self() sharedStream)];
        swift_unknownObjectRelease();
        if (one-time initialization token for common != -1)
        {
          swift_once();
        }

        v142 = type metadata accessor for Logger();
        __swift_project_value_buffer(v142, static Logger.common);
        v59(v140, v185, v60);
        outlined init with copy of UUID?();
        v143 = v187;

        v71 = Logger.logObject.getter();
        v144 = static os_log_type_t.debug.getter();

        if (!os_log_type_enabled(v71, v144))
        {

          outlined destroy of (CamLogOutput, CamModelMetadata)(v139, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v178[1](v140, v60);
          return;
        }

        LODWORD(v188) = v144;
        v145 = swift_slowAlloc();
        v146 = v60;
        v186 = swift_slowAlloc();
        v190[0] = v186;
        *v145 = 136315906;
        v189 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARRequestFailed, 0x277D56BB8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27CAARSchemaCAARRequestFailedCmMd, &_sSo27CAARSchemaCAARRequestFailedCmMR);
        v147 = String.init<A>(describing:)();
        v149 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v147, v148, v190);

        *(v145 + 4) = v149;
        *(v145 + 12) = 2080;
        v150 = UUID.uuidString.getter();
        v152 = v151;
        v153 = v178[1];
        v153(v140, v60);
        v154 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v150, v152, v190);

        *(v145 + 14) = v154;
        *(v145 + 22) = 2080;
        *(v145 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v184, v143, v190);
        *(v145 + 32) = 2080;
        v155 = v181;
        v156 = v176;
        outlined init with copy of UUID?();
        if (__swift_getEnumTagSinglePayload(v156, 1, v146) == 1)
        {
          outlined destroy of (CamLogOutput, CamModelMetadata)(v156, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v157 = 0;
          v158 = 0xE000000000000000;
        }

        else
        {
          v157 = UUID.uuidString.getter();
          v158 = v159;
          v153(v156, v146);
        }

        outlined destroy of (CamLogOutput, CamModelMetadata)(v155, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v160 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v157, v158, v190);

        *(v145 + 34) = v160;
        _os_log_impl(&dword_266790000, v71, v188, "Successfully emitted log message : %s for caarId : %s, rcId: %s, retrpId: %s", v145, 0x2Au);
        v161 = v186;
        swift_arrayDestroy();
        MEMORY[0x26D5DDCD0](v161, -1, -1);
        MEMORY[0x26D5DDCD0](v145, -1, -1);

        v162 = v180;
        goto LABEL_42;
      }

      v137 = v178;
      v38 = v172;
      (v178[4])(v172, v64, v60);
      v59(v43, v38, v60);
      v138 = SISchemaUUID.__allocating_init(nsuuid:)(v43);
      [v58 setTrpId_];

      v133 = v137;
    }

    else
    {
      v131 = v178;
      (v178[4])(v38, v23, v60);
      v59(v43, v38, v60);
      v132 = SISchemaUUID.__allocating_init(nsuuid:)(v43);
      [v58 setTrpId_];

      v133 = v131;
    }

    v133[1](v38, v60);
    goto LABEL_32;
  }

  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v111 = type metadata accessor for Logger();
  __swift_project_value_buffer(v111, static Logger.common);
  v112 = v177;
  v113 = v188;
  (*(v30 + 2))(v177, v185, v188);
  v114 = v178;
  outlined init with copy of UUID?();
  v115 = v187;

  v116 = Logger.logObject.getter();
  v117 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v116, v117))
  {
    LODWORD(v186) = v117;
    v180 = v55;
    v118 = swift_slowAlloc();
    v185 = swift_slowAlloc();
    v190[0] = v185;
    *v118 = 136315906;
    v189 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARRequestFailed, 0x277D56BB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27CAARSchemaCAARRequestFailedCmMd, &_sSo27CAARSchemaCAARRequestFailedCmMR);
    v119 = String.init<A>(describing:)();
    v121 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v120, v190);

    *(v118 + 4) = v121;
    *(v118 + 12) = 2080;
    v122 = UUID.uuidString.getter();
    v124 = v123;
    v125 = *(v57 + 1);
    v125(v112, v113);
    v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v124, v190);

    *(v118 + 14) = v126;
    *(v118 + 22) = 2080;
    *(v118 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v184, v115, v190);
    *(v118 + 32) = 2080;
    v127 = v178;
    v128 = v173;
    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v128, 1, v113) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v128, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v129 = 0;
      v130 = 0xE000000000000000;
    }

    else
    {
      v129 = UUID.uuidString.getter();
      v130 = v168;
      v125(v128, v113);
    }

    v169 = v180;
    outlined destroy of (CamLogOutput, CamModelMetadata)(v127, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v170 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v130, v190);

    *(v118 + 34) = v170;
    _os_log_impl(&dword_266790000, v116, v186, "Failed to create metadata for log event : %s, caarId : %s, rcId: %s, trpId: %s", v118, 0x2Au);
    v171 = v185;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v171, -1, -1);
    MEMORY[0x26D5DDCD0](v118, -1, -1);
  }

  else
  {

    outlined destroy of (CamLogOutput, CamModelMetadata)(v114, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v57 + 1))(v112, v113);
  }
}

void _s7SiriCam19CaarLoggingProtocolPAAE3log4from03forC2Id0h2RcI00h7RequestI00h3TrpI0y13SourceMessageQz_10Foundation4UUIDVSSA2NSgtFZAA0C13FeatureLoggerV_Tt4g5(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  v189 = a3;
  v190 = a6;
  v188 = a5;
  v193 = a4;
  v191 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v173 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v178 = &v173 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v177 = &v173 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v180 = &v173 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v187 = &v173 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v183 = &v173 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v173 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v182 = &v173 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v186 = &v173 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v173 - v29;
  v192 = type metadata accessor for UUID();
  v31 = *(v192 - 8);
  v32 = v31[8];
  v33 = MEMORY[0x28223BE20](v192);
  v184 = &v173 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v176 = &v173 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v179 = &v173 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v181 = &v173 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v173 - v42;
  v44 = MEMORY[0x28223BE20](v41);
  v46 = &v173 - v45;
  v47 = MEMORY[0x28223BE20](v44);
  v49 = &v173 - v48;
  MEMORY[0x28223BE20](v47);
  v51 = &v173 - v50;
  v52 = static CaarFeatureLogger.map(from:)(a1);
  if (!v52)
  {
    v187 = v11;
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    __swift_project_value_buffer(v69, static Logger.common);
    v70 = v31[2];
    v71 = v192;
    v70(v51, v191, v192);
    v70(v49, v188, v71);
    v72 = v30;
    outlined init with copy of UUID?();

    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v73, v74))
    {

      outlined destroy of (CamLogOutput, CamModelMetadata)(v30, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v110 = v31[1];
      v110(v49, v71);
      v110(v51, v71);
      return;
    }

    LODWORD(v191) = v74;
    v75 = swift_slowAlloc();
    v190 = swift_slowAlloc();
    v195[0] = v190;
    *v75 = 136316162;
    v194 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARFeaturesGenerated, 0x277D56B68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo31CAARSchemaCAARFeaturesGeneratedCmMd, &_sSo31CAARSchemaCAARFeaturesGeneratedCmMR);
    v76 = String.init<A>(describing:)();
    v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, v195);

    *(v75 + 4) = v78;
    *(v75 + 12) = 2080;
    v79 = UUID.uuidString.getter();
    v81 = v80;
    v82 = v31[1];
    v82(v51, v192);
    v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, v195);
    v84 = v192;

    *(v75 + 14) = v83;
    *(v75 + 22) = 2080;
    *(v75 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v189, v193, v195);
    *(v75 + 32) = 2080;
    v85 = UUID.uuidString.getter();
    v87 = v86;
    v82(v49, v84);
    v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v87, v195);

    *(v75 + 34) = v88;
    *(v75 + 42) = 2080;
    v89 = v187;
    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v89, 1, v84) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v89, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v90 = 0;
      v91 = 0xE000000000000000;
    }

    else
    {
      v90 = UUID.uuidString.getter();
      v91 = v133;
      v82(v89, v84);
    }

    outlined destroy of (CamLogOutput, CamModelMetadata)(v72, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v134 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v91, v195);

    *(v75 + 44) = v134;
    _os_log_impl(&dword_266790000, v73, v191, "Mapping function to create:  %s  failed for caarId : %s, rcId: %s, requestId: %s, trpId: %s", v75, 0x34u);
    v135 = v190;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v135, -1, -1);
    MEMORY[0x26D5DDCD0](v75, -1, -1);
    goto LABEL_42;
  }

  v53 = v52;
  v54 = [objc_allocWithZone(MEMORY[0x277D56B48]) init];
  [v54 setFeaturesGenerated_];
  v55 = v53;
  v185 = v54;
  if (!v54)
  {
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v92 = type metadata accessor for Logger();
    __swift_project_value_buffer(v92, static Logger.common);
    v93 = v192;
    (v31[2])(v46, v191, v192);
    v94 = v186;
    outlined init with copy of UUID?();
    v95 = v193;

    v73 = Logger.logObject.getter();
    v96 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v73, v96))
    {

      outlined destroy of (CamLogOutput, CamModelMetadata)(v94, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (v31[1])(v46, v93);
      return;
    }

    LODWORD(v191) = v96;
    v175 = v55;
    v97 = swift_slowAlloc();
    v190 = swift_slowAlloc();
    v195[0] = v190;
    *v97 = 136315906;
    v194 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARFeaturesGenerated, 0x277D56B68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo31CAARSchemaCAARFeaturesGeneratedCmMd, &_sSo31CAARSchemaCAARFeaturesGeneratedCmMR);
    v98 = String.init<A>(describing:)();
    v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v99, v195);

    *(v97 + 4) = v100;
    *(v97 + 12) = 2080;
    v101 = UUID.uuidString.getter();
    v103 = v102;
    v104 = v31[1];
    v104(v46, v192);
    v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v103, v195);

    *(v97 + 14) = v105;
    *(v97 + 22) = 2080;
    *(v97 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v189, v95, v195);
    *(v97 + 32) = 2080;
    v106 = v192;
    v107 = v178;
    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v107, 1, v106) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v107, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v108 = 0;
      v109 = 0xE000000000000000;
    }

    else
    {
      v108 = UUID.uuidString.getter();
      v109 = v166;
      v104(v107, v106);
    }

    outlined destroy of (CamLogOutput, CamModelMetadata)(v186, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v167 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v109, v195);

    *(v97 + 34) = v167;
    _os_log_impl(&dword_266790000, v73, v191, "Couldn't create log event with destination message : %s  for caarId : %s, rcId: %s, trpId: %s", v97, 0x2Au);
    v168 = v190;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v168, -1, -1);
    MEMORY[0x26D5DDCD0](v97, -1, -1);
    v165 = v175;
LABEL_41:

LABEL_42:
    return;
  }

  v56 = [objc_allocWithZone(MEMORY[0x277D56B58]) init];
  if (v56)
  {
    v57 = v56;
    v175 = v53;
    type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SISchemaUUID, 0x277D5AC70);
    v58 = v31;
    v59 = v31[2];
    v60 = v192;
    v59(v43, v191, v192);
    v61 = SISchemaUUID.__allocating_init(nsuuid:)(v43);
    [v57 setCaarId_];

    v62 = MEMORY[0x26D5DCC90](v189, v193);
    [v57 setResultCandidateId_];

    [v57 setRequestId_];
    if (AFDeviceSupportsSAE())
    {
      v59(v43, v188, v60);
      v63 = SISchemaUUID.__allocating_init(nsuuid:)(v43);
      [v57 setSubRequestId_];
    }

    outlined init with copy of UUID?();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, 1, v60);
    v65 = v183;
    v174 = v58;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v24, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      UUID.init(uuidString:)();
      v66 = __swift_getEnumTagSinglePayload(v65, 1, v60);
      v67 = v65;
      v68 = v60;
      if (v66 == 1)
      {
        outlined destroy of (CamLogOutput, CamModelMetadata)(v67, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }

      else
      {
        v136 = v176;
        (v58[4])(v176, v67, v68);
        v59(v43, v136, v68);
        v137 = SISchemaUUID.__allocating_init(nsuuid:)(v43);
        [v57 setTrpId_];

        (v58[1])(v136, v68);
      }
    }

    else
    {
      v130 = v179;
      (v58[4])(v179, v24, v60);
      v59(v43, v130, v60);
      v131 = v58;
      v132 = SISchemaUUID.__allocating_init(nsuuid:)(v43);
      [v57 setTrpId_];

      (v131[1])(v130, v60);
      v68 = v60;
    }

    v139 = v184;
    v138 = v185;
    [v185 setEventMetadata_];
    [objc_msgSend(objc_opt_self() sharedStream)];
    swift_unknownObjectRelease();
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v140 = type metadata accessor for Logger();
    __swift_project_value_buffer(v140, static Logger.common);
    v59(v139, v191, v68);
    v141 = v187;
    outlined init with copy of UUID?();

    v73 = Logger.logObject.getter();
    v142 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v73, v142))
    {

      outlined destroy of (CamLogOutput, CamModelMetadata)(v141, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (v174[1])(v139, v68);
      return;
    }

    LODWORD(v192) = v142;
    v143 = swift_slowAlloc();
    v144 = swift_slowAlloc();
    v195[0] = v144;
    *v143 = 136315906;
    v194 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARFeaturesGenerated, 0x277D56B68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo31CAARSchemaCAARFeaturesGeneratedCmMd, &_sSo31CAARSchemaCAARFeaturesGeneratedCmMR);
    v145 = String.init<A>(describing:)();
    v147 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v145, v146, v195);

    *(v143 + 4) = v147;
    *(v143 + 12) = 2080;
    v148 = UUID.uuidString.getter();
    v150 = v149;
    v151 = v139;
    v152 = v68;
    v153 = v174[1];
    v153(v151, v152);
    v154 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v148, v150, v195);

    *(v143 + 14) = v154;
    *(v143 + 22) = 2080;
    *(v143 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v189, v193, v195);
    *(v143 + 32) = 2080;
    v155 = v187;
    v156 = v180;
    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v156, 1, v152) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v156, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v157 = 0;
      v158 = 0xE000000000000000;
    }

    else
    {
      v193 = v153;
      v159 = v73;
      v160 = v144;
      v161 = v156;
      v157 = UUID.uuidString.getter();
      v158 = v162;
      v163 = v161;
      v144 = v160;
      v73 = v159;
      v193(v163, v152);
    }

    outlined destroy of (CamLogOutput, CamModelMetadata)(v155, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v164 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v157, v158, v195);

    *(v143 + 34) = v164;
    _os_log_impl(&dword_266790000, v73, v192, "Successfully emitted log message : %s for caarId : %s, rcId: %s, retrpId: %s", v143, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v144, -1, -1);
    MEMORY[0x26D5DDCD0](v143, -1, -1);

    v165 = v185;
    goto LABEL_41;
  }

  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v111 = type metadata accessor for Logger();
  __swift_project_value_buffer(v111, static Logger.common);
  v112 = v181;
  v113 = v192;
  (v31[2])(v181, v191, v192);
  v114 = v182;
  outlined init with copy of UUID?();

  v115 = Logger.logObject.getter();
  v116 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v115, v116))
  {
    v175 = v55;
    v117 = swift_slowAlloc();
    v191 = swift_slowAlloc();
    v195[0] = v191;
    *v117 = 136315906;
    v194 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARFeaturesGenerated, 0x277D56B68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo31CAARSchemaCAARFeaturesGeneratedCmMd, &_sSo31CAARSchemaCAARFeaturesGeneratedCmMR);
    v118 = String.init<A>(describing:)();
    v120 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v118, v119, v195);

    *(v117 + 4) = v120;
    *(v117 + 12) = 2080;
    v121 = UUID.uuidString.getter();
    v123 = v122;
    v124 = v31[1];
    v124(v112, v113);
    v125 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v123, v195);

    *(v117 + 14) = v125;
    *(v117 + 22) = 2080;
    *(v117 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v189, v193, v195);
    *(v117 + 32) = 2080;
    v126 = v182;
    v127 = v177;
    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v127, 1, v113) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v127, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v128 = 0;
      v129 = 0xE000000000000000;
    }

    else
    {
      v128 = UUID.uuidString.getter();
      v129 = v169;
      v124(v127, v113);
    }

    v170 = v175;
    outlined destroy of (CamLogOutput, CamModelMetadata)(v126, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v171 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v128, v129, v195);

    *(v117 + 34) = v171;
    _os_log_impl(&dword_266790000, v115, v116, "Failed to create metadata for log event : %s, caarId : %s, rcId: %s, trpId: %s", v117, 0x2Au);
    v172 = v191;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v172, -1, -1);
    MEMORY[0x26D5DDCD0](v117, -1, -1);
  }

  else
  {

    outlined destroy of (CamLogOutput, CamModelMetadata)(v114, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (v31[1])(v112, v113);
  }
}

void _s7SiriCam19CaarLoggingProtocolPAAE3log4from03forC2Id0h2RcI00h7RequestI00h3TrpI0y13SourceMessageQz_10Foundation4UUIDVSSA2NSgtFZAA0C11ModelLoggerV_Tt4g5(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  v189 = a6;
  v190 = a4;
  v185 = a5;
  v186 = a3;
  v188 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v174 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v176 = &v174 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v175 = &v174 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v178 = &v174 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v184 = &v174 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v177 = &v174 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v174 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v180 = &v174 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v183 = &v174 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v174 - v29;
  v191 = type metadata accessor for UUID();
  v187 = *(v191 - 8);
  v31 = *(v187 + 64);
  v32 = MEMORY[0x28223BE20](v191);
  v181 = &v174 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v174 = &v174 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v174 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v179 = &v174 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v174 - v42;
  v44 = MEMORY[0x28223BE20](v41);
  v46 = &v174 - v45;
  v47 = MEMORY[0x28223BE20](v44);
  v49 = &v174 - v48;
  MEMORY[0x28223BE20](v47);
  v51 = &v174 - v50;
  v52 = *a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7SiriCam12RankedActionVG_AA0B13ModelMetadataVAA19CAARTrialEnrollmentVtMd, &_sSay7SiriCam12RankedActionVG_AA0B13ModelMetadataVAA19CAARTrialEnrollmentVtMR);
  v54 = *(v53 + 48);
  v55 = (a1 + *(v53 + 64));
  v56 = v55[1];
  v194[0] = *v55;
  v194[1] = v56;
  v57 = v55[3];
  v194[2] = v55[2];
  v194[3] = v57;
  v58 = static CaarModelLogger.map(from:)(v52, a1 + v54, v194);
  if (!v58)
  {
    v183 = v11;
    v184 = v30;
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    __swift_project_value_buffer(v71, static Logger.common);
    v72 = v187;
    v73 = *(v187 + 16);
    v74 = v191;
    v73(v51, v188, v191);
    v73(v49, v185, v74);
    v75 = v184;
    outlined init with copy of UUID?();
    v76 = v190;

    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v77, v78))
    {

      outlined destroy of (CamLogOutput, CamModelMetadata)(v75, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v116 = *(v72 + 8);
      v116(v49, v74);
      v116(v51, v74);
      return;
    }

    LODWORD(v188) = v78;
    v189 = v77;
    v79 = swift_slowAlloc();
    v185 = swift_slowAlloc();
    v193 = v185;
    *v79 = 136316162;
    v192 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARModelExecuted, 0x277D56B80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27CAARSchemaCAARModelExecutedCmMd, &_sSo27CAARSchemaCAARModelExecutedCmMR);
    v80 = String.init<A>(describing:)();
    v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v81, &v193);

    *(v79 + 4) = v82;
    *(v79 + 12) = 2080;
    v83 = UUID.uuidString.getter();
    v85 = v84;
    v86 = *(v72 + 8);
    v86(v51, v74);
    v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v85, &v193);

    *(v79 + 14) = v87;
    *(v79 + 22) = 2080;
    *(v79 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v186, v76, &v193);
    *(v79 + 32) = 2080;
    v88 = UUID.uuidString.getter();
    v90 = v89;
    v86(v49, v74);
    v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v90, &v193);

    *(v79 + 34) = v91;
    *(v79 + 42) = 2080;
    v92 = v183;
    v93 = v184;
    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v92, 1, v74) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v92, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v94 = 0;
      v95 = 0xE000000000000000;
    }

    else
    {
      v94 = UUID.uuidString.getter();
      v95 = v140;
      v86(v92, v74);
    }

    outlined destroy of (CamLogOutput, CamModelMetadata)(v93, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v141 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v95, &v193);

    *(v79 + 44) = v141;
    v101 = v189;
    _os_log_impl(&dword_266790000, v189, v188, "Mapping function to create:  %s  failed for caarId : %s, rcId: %s, requestId: %s, trpId: %s", v79, 0x34u);
    v142 = v185;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v142, -1, -1);
    MEMORY[0x26D5DDCD0](v79, -1, -1);
    goto LABEL_42;
  }

  v59 = v58;
  v60 = [objc_allocWithZone(MEMORY[0x277D56B48]) init];
  [v60 setModelExecuted_];
  v182 = v59;
  if (!v60)
  {
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v96 = type metadata accessor for Logger();
    __swift_project_value_buffer(v96, static Logger.common);
    v97 = v187;
    v98 = v191;
    (*(v187 + 16))(v46, v188, v191);
    v99 = v183;
    outlined init with copy of UUID?();
    v100 = v190;

    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v101, v102))
    {

      outlined destroy of (CamLogOutput, CamModelMetadata)(v99, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (*(v97 + 8))(v46, v98);
      return;
    }

    LODWORD(v189) = v102;
    v103 = swift_slowAlloc();
    v188 = swift_slowAlloc();
    v193 = v188;
    *v103 = 136315906;
    v192 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARModelExecuted, 0x277D56B80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27CAARSchemaCAARModelExecutedCmMd, &_sSo27CAARSchemaCAARModelExecutedCmMR);
    v104 = String.init<A>(describing:)();
    v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v105, &v193);

    *(v103 + 4) = v106;
    *(v103 + 12) = 2080;
    v107 = UUID.uuidString.getter();
    v109 = v108;
    v110 = *(v97 + 8);
    v110(v46, v98);
    v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v109, &v193);

    *(v103 + 14) = v111;
    *(v103 + 22) = 2080;
    *(v103 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v186, v100, &v193);
    *(v103 + 32) = 2080;
    v112 = v183;
    v113 = v176;
    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v113, 1, v98) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v113, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v114 = 0;
      v115 = 0xE000000000000000;
    }

    else
    {
      v114 = UUID.uuidString.getter();
      v115 = v168;
      v110(v113, v98);
    }

    outlined destroy of (CamLogOutput, CamModelMetadata)(v112, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v169 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v114, v115, &v193);

    *(v103 + 34) = v169;
    _os_log_impl(&dword_266790000, v101, v189, "Couldn't create log event with destination message : %s  for caarId : %s, rcId: %s, trpId: %s", v103, 0x2Au);
    v170 = v188;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v170, -1, -1);
    MEMORY[0x26D5DDCD0](v103, -1, -1);
    v167 = v182;
LABEL_41:

LABEL_42:
    return;
  }

  v61 = [objc_allocWithZone(MEMORY[0x277D56B58]) init];
  if (v61)
  {
    v62 = v61;
    v183 = v60;
    type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SISchemaUUID, 0x277D5AC70);
    v63 = v187;
    v64 = *(v187 + 16);
    v65 = v191;
    v64(v43, v188, v191);
    v66 = SISchemaUUID.__allocating_init(nsuuid:)(v43);
    [v62 setCaarId_];

    v67 = MEMORY[0x26D5DCC90](v186, v190);
    [v62 setResultCandidateId_];

    [v62 setRequestId_];
    if (AFDeviceSupportsSAE())
    {
      v64(v43, v185, v65);
      v68 = SISchemaUUID.__allocating_init(nsuuid:)(v43);
      [v62 setSubRequestId_];
    }

    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v24, 1, v65) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v24, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v69 = v177;
      v70 = v190;
      UUID.init(uuidString:)();
      if (__swift_getEnumTagSinglePayload(v69, 1, v65) == 1)
      {
        outlined destroy of (CamLogOutput, CamModelMetadata)(v69, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }

      else
      {
        v143 = v174;
        (*(v63 + 32))(v174, v69, v65);
        v64(v43, v143, v65);
        v144 = SISchemaUUID.__allocating_init(nsuuid:)(v43);
        [v62 setTrpId_];

        (*(v63 + 8))(v143, v65);
      }
    }

    else
    {
      (*(v63 + 32))(v38, v24, v65);
      v64(v43, v38, v65);
      v139 = SISchemaUUID.__allocating_init(nsuuid:)(v43);
      [v62 setTrpId_];

      (*(v63 + 8))(v38, v65);
      v70 = v190;
    }

    v145 = v183;
    v146 = v184;
    [v183 setEventMetadata_];
    [objc_msgSend(objc_opt_self() sharedStream)];
    swift_unknownObjectRelease();
    v147 = v181;
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v148 = type metadata accessor for Logger();
    __swift_project_value_buffer(v148, static Logger.common);
    v64(v147, v188, v65);
    outlined init with copy of UUID?();

    v101 = Logger.logObject.getter();
    v149 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v101, v149))
    {

      outlined destroy of (CamLogOutput, CamModelMetadata)(v146, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (*(v63 + 8))(v147, v65);
      return;
    }

    v150 = swift_slowAlloc();
    v190 = swift_slowAlloc();
    v193 = v190;
    *v150 = 136315906;
    v192 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARModelExecuted, 0x277D56B80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27CAARSchemaCAARModelExecutedCmMd, &_sSo27CAARSchemaCAARModelExecutedCmMR);
    v151 = String.init<A>(describing:)();
    v153 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v151, v152, &v193);

    *(v150 + 4) = v153;
    *(v150 + 12) = 2080;
    v154 = UUID.uuidString.getter();
    v156 = v155;
    v157 = v147;
    v158 = *(v63 + 8);
    v158(v157, v191);
    v159 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v154, v156, &v193);

    *(v150 + 14) = v159;
    *(v150 + 22) = 2080;
    *(v150 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v186, v70, &v193);
    *(v150 + 32) = 2080;
    v160 = v191;
    v161 = v178;
    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v161, 1, v160) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v161, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v162 = 0;
      v163 = 0xE000000000000000;
    }

    else
    {
      v162 = UUID.uuidString.getter();
      v163 = v164;
      v158(v161, v160);
    }

    outlined destroy of (CamLogOutput, CamModelMetadata)(v184, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v165 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v162, v163, &v193);

    *(v150 + 34) = v165;
    _os_log_impl(&dword_266790000, v101, v149, "Successfully emitted log message : %s for caarId : %s, rcId: %s, retrpId: %s", v150, 0x2Au);
    v166 = v190;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v166, -1, -1);
    MEMORY[0x26D5DDCD0](v150, -1, -1);

    v167 = v183;
    goto LABEL_41;
  }

  v117 = v187;
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v118 = type metadata accessor for Logger();
  __swift_project_value_buffer(v118, static Logger.common);
  v119 = v179;
  v120 = v191;
  (*(v117 + 16))(v179, v188, v191);
  v121 = v180;
  outlined init with copy of UUID?();
  v122 = v190;

  v123 = Logger.logObject.getter();
  v124 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v123, v124))
  {
    v183 = v60;
    v125 = swift_slowAlloc();
    v189 = swift_slowAlloc();
    v193 = v189;
    *v125 = 136315906;
    v192 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARModelExecuted, 0x277D56B80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27CAARSchemaCAARModelExecutedCmMd, &_sSo27CAARSchemaCAARModelExecutedCmMR);
    v126 = String.init<A>(describing:)();
    v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, v127, &v193);

    *(v125 + 4) = v128;
    *(v125 + 12) = 2080;
    v129 = UUID.uuidString.getter();
    v131 = v130;
    v132 = *(v117 + 8);
    v132(v119, v191);
    v133 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v131, &v193);

    *(v125 + 14) = v133;
    *(v125 + 22) = 2080;
    *(v125 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v186, v122, &v193);
    *(v125 + 32) = 2080;
    v134 = v180;
    v135 = v191;
    v136 = v175;
    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v136, 1, v135) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v136, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v137 = 0;
      v138 = 0xE000000000000000;
    }

    else
    {
      v137 = UUID.uuidString.getter();
      v138 = v171;
      v132(v136, v135);
    }

    outlined destroy of (CamLogOutput, CamModelMetadata)(v134, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v172 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v137, v138, &v193);

    *(v125 + 34) = v172;
    _os_log_impl(&dword_266790000, v123, v124, "Failed to create metadata for log event : %s, caarId : %s, rcId: %s, trpId: %s", v125, 0x2Au);
    v173 = v189;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v173, -1, -1);
    MEMORY[0x26D5DDCD0](v125, -1, -1);
  }

  else
  {

    outlined destroy of (CamLogOutput, CamModelMetadata)(v121, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v117 + 8))(v119, v120);
  }
}

void _s7SiriCam19CaarLoggingProtocolPAAE3log4from03forC2Id0h2RcI00h7RequestI00h3TrpI0y13SourceMessageQz_10Foundation4UUIDVSSA2NSgtFZAA0C16TieBreakerLoggerV_Tt4g5(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v185 = a3;
  v186 = a6;
  v183 = a5;
  v184 = a1;
  v187 = a2;
  v188 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v171 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v174 = &v171 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v173 = &v171 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v176 = &v171 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v182 = &v171 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v175 = &v171 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v171 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v179 = &v171 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v181 = &v171 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v171 - v28;
  v189 = type metadata accessor for UUID();
  v30 = *(v189 - 8);
  v31 = v30[8];
  v32 = MEMORY[0x28223BE20](v189);
  v180 = &v171 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v172 = &v171 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v171 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v178 = &v171 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v171 - v42;
  v44 = MEMORY[0x28223BE20](v41);
  v46 = &v171 - v45;
  v47 = MEMORY[0x28223BE20](v44);
  v49 = &v171 - v48;
  MEMORY[0x28223BE20](v47);
  v51 = &v171 - v50;
  v52 = [objc_allocWithZone(MEMORY[0x277D56C08]) init];
  if (!v52)
  {
    v177 = v29;
    v184 = v10;
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    __swift_project_value_buffer(v67, static Logger.common);
    v68 = v30[2];
    v69 = v189;
    v68(v51, v187, v189);
    v68(v49, v183, v69);
    v70 = v177;
    outlined init with copy of UUID?();
    v71 = v188;

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v72, v73))
    {

      outlined destroy of (CamLogOutput, CamModelMetadata)(v70, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v110 = v30[1];
      v110(v49, v69);
      v110(v51, v69);
      return;
    }

    LODWORD(v187) = v73;
    v74 = swift_slowAlloc();
    v186 = swift_slowAlloc();
    v191[0] = v186;
    *v74 = 136316162;
    v190 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARTieBreakersExecuted, 0x277D56C08);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo33CAARSchemaCAARTieBreakersExecutedCmMd, &_sSo33CAARSchemaCAARTieBreakersExecutedCmMR);
    v75 = String.init<A>(describing:)();
    v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, v191);

    *(v74 + 4) = v77;
    *(v74 + 12) = 2080;
    v78 = UUID.uuidString.getter();
    v80 = v79;
    v81 = v30[1];
    v81(v51, v189);
    v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, v191);

    *(v74 + 14) = v82;
    *(v74 + 22) = 2080;
    *(v74 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v185, v71, v191);
    *(v74 + 32) = 2080;
    v83 = UUID.uuidString.getter();
    v85 = v84;
    v81(v49, v189);
    v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v85, v191);

    *(v74 + 34) = v86;
    *(v74 + 42) = 2080;
    v87 = v189;
    v88 = v184;
    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v88, 1, v87) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v88, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v89 = 0;
      v90 = 0xE000000000000000;
    }

    else
    {
      v89 = UUID.uuidString.getter();
      v90 = v134;
      v81(v88, v87);
    }

    outlined destroy of (CamLogOutput, CamModelMetadata)(v177, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v135 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v90, v191);

    *(v74 + 44) = v135;
    _os_log_impl(&dword_266790000, v72, v187, "Mapping function to create:  %s  failed for caarId : %s, rcId: %s, requestId: %s, trpId: %s", v74, 0x34u);
    v136 = v186;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v136, -1, -1);
    MEMORY[0x26D5DDCD0](v74, -1, -1);
    goto LABEL_43;
  }

  v53 = v52;
  outlined bridged method (mbgnn) of @objc CAARSchemaCAARTieBreakersExecuted.tiebreakers.setter(v184, v52);
  v54 = [objc_allocWithZone(MEMORY[0x277D56B48]) init];
  v184 = v53;
  [v54 setTieBreakersExecuted_];
  if (!v54)
  {
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v91 = type metadata accessor for Logger();
    __swift_project_value_buffer(v91, static Logger.common);
    v92 = v189;
    (v30[2])(v46, v187, v189);
    v93 = v181;
    outlined init with copy of UUID?();
    v94 = v188;

    v72 = Logger.logObject.getter();
    v95 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v72, v95))
    {

      outlined destroy of (CamLogOutput, CamModelMetadata)(v93, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (v30[1])(v46, v92);
      return;
    }

    v96 = swift_slowAlloc();
    v187 = swift_slowAlloc();
    v191[0] = v187;
    *v96 = 136315906;
    v190 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARTieBreakersExecuted, 0x277D56C08);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo33CAARSchemaCAARTieBreakersExecutedCmMd, &_sSo33CAARSchemaCAARTieBreakersExecutedCmMR);
    v97 = String.init<A>(describing:)();
    v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v98, v191);

    *(v96 + 4) = v99;
    *(v96 + 12) = 2080;
    v100 = UUID.uuidString.getter();
    v102 = v101;
    v103 = v30[1];
    v103(v46, v189);
    v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v102, v191);
    v105 = v189;

    *(v96 + 14) = v104;
    *(v96 + 22) = 2080;
    *(v96 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v185, v94, v191);
    *(v96 + 32) = 2080;
    v106 = v181;
    v107 = v174;
    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v107, 1, v105) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v107, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v108 = 0;
      v109 = 0xE000000000000000;
    }

    else
    {
      v162 = UUID.uuidString.getter();
      v163 = v105;
      v108 = v162;
      v109 = v164;
      v103(v107, v163);
    }

    outlined destroy of (CamLogOutput, CamModelMetadata)(v106, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v165 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v109, v191);

    *(v96 + 34) = v165;
    _os_log_impl(&dword_266790000, v72, v95, "Couldn't create log event with destination message : %s  for caarId : %s, rcId: %s, trpId: %s", v96, 0x2Au);
    v166 = v187;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v166, -1, -1);
    MEMORY[0x26D5DDCD0](v96, -1, -1);
    v161 = v184;
LABEL_42:

LABEL_43:
    return;
  }

  v55 = [objc_allocWithZone(MEMORY[0x277D56B58]) init];
  if (v55)
  {
    v56 = v55;
    v181 = v54;
    type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SISchemaUUID, 0x277D5AC70);
    v57 = v30;
    v58 = v30[2];
    v59 = v189;
    v58(v43, v187, v189);
    v60 = SISchemaUUID.__allocating_init(nsuuid:)(v43);
    [v56 setCaarId_];

    v61 = MEMORY[0x26D5DCC90](v185, v188);
    [v56 setResultCandidateId_];

    [v56 setRequestId_];
    if (AFDeviceSupportsSAE())
    {
      v58(v43, v183, v59);
      v62 = SISchemaUUID.__allocating_init(nsuuid:)(v43);
      [v56 setSubRequestId_];
    }

    outlined init with copy of UUID?();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, 1, v59);
    v171 = v57;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v23, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v64 = v175;
      v65 = v188;
      UUID.init(uuidString:)();
      v66 = v59;
      if (__swift_getEnumTagSinglePayload(v64, 1, v59) == 1)
      {
        outlined destroy of (CamLogOutput, CamModelMetadata)(v64, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }

      else
      {
        v137 = v172;
        (v57[4])(v172, v64, v66);
        v58(v43, v137, v66);
        v138 = SISchemaUUID.__allocating_init(nsuuid:)(v43);
        [v56 setTrpId_];

        (v57[1])(v137, v66);
      }

      v133 = v180;
    }

    else
    {
      (v57[4])(v38, v23, v59);
      v58(v43, v38, v59);
      v131 = v57;
      v132 = SISchemaUUID.__allocating_init(nsuuid:)(v43);
      [v56 setTrpId_];

      (v131[1])(v38, v59);
      v66 = v59;
      v65 = v188;
      v133 = v180;
    }

    v139 = v181;
    [v181 setEventMetadata_];
    [objc_msgSend(objc_opt_self() sharedStream)];
    swift_unknownObjectRelease();
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v140 = type metadata accessor for Logger();
    __swift_project_value_buffer(v140, static Logger.common);
    v58(v133, v187, v66);
    v141 = v182;
    outlined init with copy of UUID?();

    v72 = Logger.logObject.getter();
    v142 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v72, v142))
    {

      outlined destroy of (CamLogOutput, CamModelMetadata)(v141, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (v171[1])(v133, v66);
      return;
    }

    LODWORD(v188) = v142;
    v143 = swift_slowAlloc();
    v187 = swift_slowAlloc();
    v191[0] = v187;
    *v143 = 136315906;
    v190 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARTieBreakersExecuted, 0x277D56C08);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo33CAARSchemaCAARTieBreakersExecutedCmMd, &_sSo33CAARSchemaCAARTieBreakersExecutedCmMR);
    v144 = String.init<A>(describing:)();
    v146 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v144, v145, v191);

    *(v143 + 4) = v146;
    *(v143 + 12) = 2080;
    v147 = UUID.uuidString.getter();
    v149 = v148;
    v150 = v171[1];
    v151 = v133;
    v152 = v189;
    v150(v151, v189);
    v153 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v147, v149, v191);

    *(v143 + 14) = v153;
    *(v143 + 22) = 2080;
    *(v143 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v185, v65, v191);
    *(v143 + 32) = 2080;
    v154 = v182;
    v155 = v176;
    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v155, 1, v152) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v155, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v156 = 0;
      v157 = 0xE000000000000000;
    }

    else
    {
      v156 = UUID.uuidString.getter();
      v157 = v158;
      v150(v155, v152);
    }

    outlined destroy of (CamLogOutput, CamModelMetadata)(v154, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v159 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v156, v157, v191);

    *(v143 + 34) = v159;
    _os_log_impl(&dword_266790000, v72, v188, "Successfully emitted log message : %s for caarId : %s, rcId: %s, retrpId: %s", v143, 0x2Au);
    v160 = v187;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v160, -1, -1);
    MEMORY[0x26D5DDCD0](v143, -1, -1);

    v161 = v181;
    goto LABEL_42;
  }

  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v111 = type metadata accessor for Logger();
  __swift_project_value_buffer(v111, static Logger.common);
  v112 = v178;
  v113 = v189;
  (v30[2])(v178, v187, v189);
  v114 = v179;
  outlined init with copy of UUID?();
  v115 = v188;

  v116 = Logger.logObject.getter();
  v117 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v116, v117))
  {
    LODWORD(v187) = v117;
    v181 = v54;
    v118 = swift_slowAlloc();
    v186 = swift_slowAlloc();
    v191[0] = v186;
    *v118 = 136315906;
    v190 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARTieBreakersExecuted, 0x277D56C08);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo33CAARSchemaCAARTieBreakersExecutedCmMd, &_sSo33CAARSchemaCAARTieBreakersExecutedCmMR);
    v119 = String.init<A>(describing:)();
    v121 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v120, v191);

    *(v118 + 4) = v121;
    *(v118 + 12) = 2080;
    v122 = UUID.uuidString.getter();
    v124 = v123;
    v125 = v30[1];
    v125(v112, v113);
    v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v124, v191);

    *(v118 + 14) = v126;
    *(v118 + 22) = 2080;
    *(v118 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v185, v115, v191);
    *(v118 + 32) = 2080;
    v127 = v179;
    v128 = v173;
    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v128, 1, v113) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v128, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v129 = 0;
      v130 = 0xE000000000000000;
    }

    else
    {
      v129 = UUID.uuidString.getter();
      v130 = v167;
      v125(v128, v113);
    }

    v168 = v181;
    outlined destroy of (CamLogOutput, CamModelMetadata)(v127, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v169 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v130, v191);

    *(v118 + 34) = v169;
    _os_log_impl(&dword_266790000, v116, v187, "Failed to create metadata for log event : %s, caarId : %s, rcId: %s, trpId: %s", v118, 0x2Au);
    v170 = v186;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v170, -1, -1);
    MEMORY[0x26D5DDCD0](v118, -1, -1);
  }

  else
  {

    outlined destroy of (CamLogOutput, CamModelMetadata)(v114, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (v30[1])(v112, v113);
  }
}

void _s7SiriCam19CaarLoggingProtocolPAAE3log4from03forC2Id0h2RcI00h7RequestI00h3TrpI0y13SourceMessageQz_10Foundation4UUIDVSSA2NSgtFZAA0C14ResponseLoggerV_Tt4g5(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v186 = a6;
  v187 = a4;
  v183 = a5;
  v184 = a3;
  v185 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v172 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v174 = &v172 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v173 = &v172 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v176 = &v172 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v182 = &v172 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v175 = &v172 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v172 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v178 = (&v172 - v26);
  v27 = MEMORY[0x28223BE20](v25);
  v181 = &v172 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v172 - v29;
  v188 = type metadata accessor for UUID();
  isa = v188[-1].isa;
  v32 = *(isa + 8);
  v33 = MEMORY[0x28223BE20](v188);
  v179 = &v172 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v172 = &v172 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v172 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v177 = &v172 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v44 = &v172 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v172 - v46;
  v48 = MEMORY[0x28223BE20](v45);
  v50 = &v172 - v49;
  MEMORY[0x28223BE20](v48);
  v52 = &v172 - v51;
  v53 = static CaarResponseLogger.map(from:)(a1);
  if (v53)
  {
    v180 = v53;
    v54 = static CaarResponseLogger.wrapIntoLogEvent(message:)(v53);
    if (v54)
    {
      v55 = v54;
      v56 = [objc_allocWithZone(MEMORY[0x277D56B58]) init];
      v57 = isa;
      if (v56)
      {
        v58 = v56;
        v181 = v55;
        type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SISchemaUUID, 0x277D5AC70);
        v178 = isa;
        v59 = *(isa + 2);
        v60 = v188;
        v59(v44, v185, v188);
        v61 = SISchemaUUID.__allocating_init(nsuuid:)(v44);
        [v58 setCaarId_];

        v62 = MEMORY[0x26D5DCC90](v184, v187);
        [v58 setResultCandidateId_];

        [v58 setRequestId_];
        if (AFDeviceSupportsSAE())
        {
          v59(v44, v183, v60);
          v63 = SISchemaUUID.__allocating_init(nsuuid:)(v44);
          [v58 setSubRequestId_];
        }

        outlined init with copy of UUID?();
        if (__swift_getEnumTagSinglePayload(v24, 1, v60) == 1)
        {
          outlined destroy of (CamLogOutput, CamModelMetadata)(v24, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v64 = v175;
          UUID.init(uuidString:)();
          if (__swift_getEnumTagSinglePayload(v64, 1, v60) == 1)
          {
            outlined destroy of (CamLogOutput, CamModelMetadata)(v64, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          }

          else
          {
            v135 = v178;
            v136 = v172;
            v178[4](v172, v64, v60);
            v59(v44, v136, v60);
            v137 = SISchemaUUID.__allocating_init(nsuuid:)(v44);
            [v58 setTrpId_];

            (v135[1])(v136, v60);
          }
        }

        else
        {
          v130 = v178;
          v178[4](v39, v24, v60);
          v59(v44, v39, v60);
          v131 = SISchemaUUID.__allocating_init(nsuuid:)(v44);
          [v58 setTrpId_];

          (v130[1])(v39, v60);
        }

        v138 = v181;
        v139 = v182;
        [v181 setEventMetadata_];
        [objc_msgSend(objc_opt_self() sharedStream)];
        swift_unknownObjectRelease();
        if (one-time initialization token for common != -1)
        {
          swift_once();
        }

        v140 = type metadata accessor for Logger();
        __swift_project_value_buffer(v140, static Logger.common);
        v141 = v179;
        v59(v179, v185, v60);
        outlined init with copy of UUID?();
        v142 = v187;

        v143 = Logger.logObject.getter();
        v144 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v143, v144))
        {
          LODWORD(v186) = v144;
          v188 = v143;
          v145 = v141;
          v146 = swift_slowAlloc();
          v147 = v60;
          v185 = swift_slowAlloc();
          v190[0] = v185;
          *v146 = 136315906;
          v189 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARResponseGenerated, 0x277D56BD0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo31CAARSchemaCAARResponseGeneratedCmMd, &_sSo31CAARSchemaCAARResponseGeneratedCmMR);
          v148 = String.init<A>(describing:)();
          v150 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v148, v149, v190);

          *(v146 + 4) = v150;
          *(v146 + 12) = 2080;
          v151 = UUID.uuidString.getter();
          v153 = v152;
          v154 = v178[1];
          (v154)(v145, v60);
          v155 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v151, v153, v190);

          *(v146 + 14) = v155;
          *(v146 + 22) = 2080;
          *(v146 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v184, v142, v190);
          *(v146 + 32) = 2080;
          v156 = v182;
          v157 = v176;
          outlined init with copy of UUID?();
          if (__swift_getEnumTagSinglePayload(v157, 1, v147) == 1)
          {
            outlined destroy of (CamLogOutput, CamModelMetadata)(v157, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            v158 = 0;
            v159 = 0xE000000000000000;
          }

          else
          {
            v158 = UUID.uuidString.getter();
            v159 = v160;
            (v154)(v157, v147);
          }

          v161 = v186;
          outlined destroy of (CamLogOutput, CamModelMetadata)(v156, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v162 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v158, v159, v190);

          *(v146 + 34) = v162;
          v163 = v188;
          _os_log_impl(&dword_266790000, v188, v161, "Successfully emitted log message : %s for caarId : %s, rcId: %s, retrpId: %s", v146, 0x2Au);
          v164 = v185;
          swift_arrayDestroy();
          MEMORY[0x26D5DDCD0](v164, -1, -1);
          MEMORY[0x26D5DDCD0](v146, -1, -1);
        }

        else
        {

          outlined destroy of (CamLogOutput, CamModelMetadata)(v139, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          (v178[1])(v141, v60);
        }
      }

      else
      {
        if (one-time initialization token for common != -1)
        {
          swift_once();
        }

        v110 = type metadata accessor for Logger();
        __swift_project_value_buffer(v110, static Logger.common);
        v111 = v177;
        v112 = v188;
        (*(isa + 2))(v177, v185, v188);
        v113 = v178;
        outlined init with copy of UUID?();
        v114 = v187;

        v115 = Logger.logObject.getter();
        v116 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v115, v116))
        {
          LODWORD(v186) = v116;
          v181 = v55;
          v117 = swift_slowAlloc();
          v185 = swift_slowAlloc();
          v190[0] = v185;
          *v117 = 136315906;
          v189 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARResponseGenerated, 0x277D56BD0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo31CAARSchemaCAARResponseGeneratedCmMd, &_sSo31CAARSchemaCAARResponseGeneratedCmMR);
          v118 = String.init<A>(describing:)();
          v120 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v118, v119, v190);

          *(v117 + 4) = v120;
          *(v117 + 12) = 2080;
          v121 = UUID.uuidString.getter();
          v123 = v122;
          v124 = *(v57 + 1);
          v124(v111, v112);
          v125 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v123, v190);

          *(v117 + 14) = v125;
          *(v117 + 22) = 2080;
          *(v117 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v184, v114, v190);
          *(v117 + 32) = 2080;
          v126 = v178;
          v127 = v173;
          outlined init with copy of UUID?();
          if (__swift_getEnumTagSinglePayload(v127, 1, v112) == 1)
          {
            outlined destroy of (CamLogOutput, CamModelMetadata)(v127, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            v128 = 0;
            v129 = 0xE000000000000000;
          }

          else
          {
            v128 = UUID.uuidString.getter();
            v129 = v168;
            v124(v127, v112);
          }

          v169 = v181;
          outlined destroy of (CamLogOutput, CamModelMetadata)(v126, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v170 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v128, v129, v190);

          *(v117 + 34) = v170;
          _os_log_impl(&dword_266790000, v115, v186, "Failed to create metadata for log event : %s, caarId : %s, rcId: %s, trpId: %s", v117, 0x2Au);
          v171 = v185;
          swift_arrayDestroy();
          MEMORY[0x26D5DDCD0](v171, -1, -1);
          MEMORY[0x26D5DDCD0](v117, -1, -1);
        }

        else
        {

          outlined destroy of (CamLogOutput, CamModelMetadata)(v113, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          (*(v57 + 1))(v111, v112);
        }
      }
    }

    else
    {
      if (one-time initialization token for common != -1)
      {
        swift_once();
      }

      v90 = type metadata accessor for Logger();
      __swift_project_value_buffer(v90, static Logger.common);
      v91 = v188;
      (*(isa + 2))(v47, v185, v188);
      v92 = v181;
      outlined init with copy of UUID?();
      v93 = v187;

      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v94, v95))
      {
        LODWORD(v186) = v95;
        v96 = swift_slowAlloc();
        v185 = swift_slowAlloc();
        v190[0] = v185;
        *v96 = 136315906;
        v189 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARResponseGenerated, 0x277D56BD0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo31CAARSchemaCAARResponseGeneratedCmMd, &_sSo31CAARSchemaCAARResponseGeneratedCmMR);
        v97 = String.init<A>(describing:)();
        v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v98, v190);

        *(v96 + 4) = v99;
        *(v96 + 12) = 2080;
        v100 = UUID.uuidString.getter();
        v102 = v101;
        v103 = *(isa + 1);
        v103(v47, v91);
        v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v102, v190);

        *(v96 + 14) = v104;
        *(v96 + 22) = 2080;
        *(v96 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v184, v93, v190);
        *(v96 + 32) = 2080;
        v105 = v181;
        v106 = v174;
        outlined init with copy of UUID?();
        if (__swift_getEnumTagSinglePayload(v106, 1, v91) == 1)
        {
          outlined destroy of (CamLogOutput, CamModelMetadata)(v106, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v107 = 0;
          v108 = 0xE000000000000000;
        }

        else
        {
          v107 = UUID.uuidString.getter();
          v108 = v165;
          v103(v106, v91);
        }

        outlined destroy of (CamLogOutput, CamModelMetadata)(v105, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v166 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v108, v190);

        *(v96 + 34) = v166;
        _os_log_impl(&dword_266790000, v94, v186, "Couldn't create log event with destination message : %s  for caarId : %s, rcId: %s, trpId: %s", v96, 0x2Au);
        v167 = v185;
        swift_arrayDestroy();
        MEMORY[0x26D5DDCD0](v167, -1, -1);
        MEMORY[0x26D5DDCD0](v96, -1, -1);
      }

      else
      {

        outlined destroy of (CamLogOutput, CamModelMetadata)(v92, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        (*(isa + 1))(v47, v91);
      }
    }
  }

  else
  {
    v180 = v30;
    v182 = v11;
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    __swift_project_value_buffer(v65, static Logger.common);
    v66 = isa;
    v67 = *(isa + 2);
    v68 = v188;
    v67(v52, v185, v188);
    v67(v50, v183, v68);
    v69 = v180;
    outlined init with copy of UUID?();
    v70 = v187;

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v71, v72))
    {
      LODWORD(v186) = v72;
      v73 = swift_slowAlloc();
      v185 = swift_slowAlloc();
      v190[0] = v185;
      *v73 = 136316162;
      v189 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARResponseGenerated, 0x277D56BD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo31CAARSchemaCAARResponseGeneratedCmMd, &_sSo31CAARSchemaCAARResponseGeneratedCmMR);
      v74 = String.init<A>(describing:)();
      v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, v190);

      *(v73 + 4) = v76;
      *(v73 + 12) = 2080;
      v77 = UUID.uuidString.getter();
      v79 = v78;
      v80 = *(v66 + 1);
      v80(v52, v188);
      v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v79, v190);

      *(v73 + 14) = v81;
      *(v73 + 22) = 2080;
      *(v73 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v184, v70, v190);
      *(v73 + 32) = 2080;
      v82 = UUID.uuidString.getter();
      v84 = v83;
      v80(v50, v188);
      v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v84, v190);

      *(v73 + 34) = v85;
      *(v73 + 42) = 2080;
      v86 = v188;
      v87 = v182;
      outlined init with copy of UUID?();
      if (__swift_getEnumTagSinglePayload(v87, 1, v86) == 1)
      {
        outlined destroy of (CamLogOutput, CamModelMetadata)(v87, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v88 = 0;
        v89 = 0xE000000000000000;
      }

      else
      {
        v88 = UUID.uuidString.getter();
        v89 = v132;
        v80(v87, v86);
      }

      outlined destroy of (CamLogOutput, CamModelMetadata)(v180, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v133 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v89, v190);

      *(v73 + 44) = v133;
      _os_log_impl(&dword_266790000, v71, v186, "Mapping function to create:  %s  failed for caarId : %s, rcId: %s, requestId: %s, trpId: %s", v73, 0x34u);
      v134 = v185;
      swift_arrayDestroy();
      MEMORY[0x26D5DDCD0](v134, -1, -1);
      MEMORY[0x26D5DDCD0](v73, -1, -1);
    }

    else
    {

      outlined destroy of (CamLogOutput, CamModelMetadata)(v69, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v109 = *(v66 + 1);
      v109(v50, v68);
      v109(v52, v68);
    }
  }
}

uint64_t closure #1 in CodeBasedRankerHandler.rank(requestId:caarId:rcId:trpId:actions:rankerContext:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v48 = type metadata accessor for UUID();
  v54 = *(v48 - 8);
  v9 = v54[8];
  v10 = MEMORY[0x28223BE20](v48);
  v52 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v53 = &v43 - v12;
  v13 = type metadata accessor for CamParse(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v50 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v51 = &v43 - v17;
  v18 = a3[5];
  v19 = a3[6];
  __swift_project_boxed_opaque_existential_1(a3 + 2, v18);
  v20 = type metadata accessor for ActionCandidate();
  v21 = v20[8];
  v22 = *(v19 + 8);
  v49 = a2;
  result = v22(a2, a1 + v21, v18, v19);
  if (!v4)
  {
    v25 = v24;
    v26 = *a1;
    v45 = a1[1];
    v46 = v26;
    v27 = v20[5];
    v47 = 0;
    outlined init with copy of RankedAction();
    v28 = v54[2];
    v29 = a1 + v21;
    v30 = v53;
    v31 = v48;
    v28(v53, v29, v48);
    v44 = *(a1 + v20[7]);
    outlined init with copy of RankedAction();
    v28(v52, v30, v31);
    v32 = type metadata accessor for RankedAction();
    v33 = (a4 + v32[10]);
    v34 = v45;
    *a4 = v46;
    a4[1] = v34;
    v35 = v32[5];
    outlined init with copy of RankedAction();
    *(a4 + v32[6]) = MEMORY[0x277D84F90];
    *(a4 + v32[7]) = v25;
    *(a4 + v32[8]) = v44;
    v36 = v52;
    v28(a4 + v32[9], v52, v31);
    type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for MLFeatureValue, 0x277CBFEF8);

    v37 = Dictionary.init(dictionaryLiteral:)();
    v38 = v32[11];
    *(a4 + v38) = v37;
    *v33 = 0;
    v33[1] = 0;
    v46 = specialized ActionProtocol.inferBundleId()();
    v40 = v39;
    v41 = v54[1];
    v41(v36, v31);
    outlined destroy of RankedAction();
    v41(v53, v31);
    outlined destroy of RankedAction();
    *v33 = v46;
    v33[1] = v40;
    v42 = v49;

    *(a4 + v38) = v42;
  }

  return result;
}

void _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay7SiriCam15ActionCandidateVGSaySDySSSo14MLFeatureValueCGGG_AH06RankedH0VsAE_pTg503_s7f5Cam15hi10VSDySSSo14jk6CGAA06l5C0Vs5C33_pIgngrzo_AC_AFtAHsAI_pIegnrzr_TRAjnRsAE_pIgngrzo_Tf1cn_n(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4)
{
  v5 = v4;
  v58 = a3;
  v59 = a4;
  v8 = type metadata accessor for RankedAction();
  v56 = *(v8 - 8);
  v9 = *(v56 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v63 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v54 = &v48 - v12;
  v13 = type metadata accessor for ActionCandidate();
  v61 = *(v13 - 8);
  v14 = *(v61 + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v53 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v51 = &v48 - v17;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam15ActionCandidateV_SDySSSo14MLFeatureValueCGtMd, &_s7SiriCam15ActionCandidateV_SDySSSo14MLFeatureValueCGtMR);
  v18 = *(*(v57 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v57);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v50 = &v48 - v23;
  MEMORY[0x28223BE20](v22);
  v49 = &v48 - v24;
  v62 = a1;
  v25 = *(a1 + 16);
  v60 = *(a2 + 16);
  if (v60 >= v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = v60;
  }

  v64 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  v27 = v64;
  v55 = v25;
  if (v26)
  {
    v28 = 0;
    v52 = a2 + 32;
    while (v25 != v28)
    {
      v29 = v62 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
      v30 = *(v61 + 72);
      outlined init with copy of RankedAction();
      if (v60 == v28)
      {
        goto LABEL_27;
      }

      v31 = *(v52 + 8 * v28);
      v32 = *(v57 + 48);
      outlined init with take of CamModelMetadata();
      *&v21[v32] = v31;

      v58(v21, v31);
      if (v4)
      {

        outlined destroy of (CamLogOutput, CamModelMetadata)(v21, &_s7SiriCam15ActionCandidateV_SDySSSo14MLFeatureValueCGtMd, &_s7SiriCam15ActionCandidateV_SDySSSo14MLFeatureValueCGtMR);
        return;
      }

      outlined destroy of (CamLogOutput, CamModelMetadata)(v21, &_s7SiriCam15ActionCandidateV_SDySSSo14MLFeatureValueCGtMd, &_s7SiriCam15ActionCandidateV_SDySSSo14MLFeatureValueCGtMR);
      v64 = v27;
      v33 = *(v27 + 16);
      if (v33 >= *(v27 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v27 = v64;
      }

      ++v28;
      *(v27 + 16) = v33 + 1;
      v34 = v27 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
      v35 = *(v56 + 72);
      outlined init with take of CamModelMetadata();
      v25 = v55;
      if (v26 == v28)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_12:
    v36 = a2 + 32;
    while (v25 != v26)
    {
      if (v26 >= v25)
      {
        goto LABEL_28;
      }

      v37 = v62 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
      v38 = *(v61 + 72);
      outlined init with copy of RankedAction();
      if (__OFADD__(v26, 1))
      {
        goto LABEL_29;
      }

      if (v60 == v26)
      {
        outlined destroy of RankedAction();
        return;
      }

      if (v26 >= v60)
      {
        goto LABEL_30;
      }

      v39 = *(v36 + 8 * v26);
      v40 = v57;
      v41 = *(v57 + 48);
      v42 = v50;
      outlined init with take of CamModelMetadata();
      *&v42[v41] = v39;
      v43 = v49;
      outlined init with take of (UUID, [String : MLFeatureValue])();
      v44 = *(v43 + *(v40 + 48));

      v58(v43, v44);
      if (v5)
      {
        outlined destroy of (CamLogOutput, CamModelMetadata)(v43, &_s7SiriCam15ActionCandidateV_SDySSSo14MLFeatureValueCGtMd, &_s7SiriCam15ActionCandidateV_SDySSSo14MLFeatureValueCGtMR);

        return;
      }

      outlined destroy of (CamLogOutput, CamModelMetadata)(v43, &_s7SiriCam15ActionCandidateV_SDySSSo14MLFeatureValueCGtMd, &_s7SiriCam15ActionCandidateV_SDySSSo14MLFeatureValueCGtMR);
      v64 = v27;
      v45 = *(v27 + 16);
      if (v45 >= *(v27 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v27 = v64;
      }

      *(v27 + 16) = v45 + 1;
      v46 = v27 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
      v47 = *(v56 + 72);
      outlined init with take of CamModelMetadata();
      ++v26;
      v25 = v55;
    }
  }
}

void specialized MutableCollection<>.sort(by:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_48();
  v4 = type metadata accessor for RankedAction();
  OUTLINED_FUNCTION_14(v4);
  v6 = v5;
  v7 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = a2(v7);
  }

  v8 = *(v7 + 16);
  v9[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v9[1] = v8;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v9);
  *v2 = v7;
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1, char a2)
{
  v4 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v4);
    v4 = v5;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;

  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, a2 & 1);
  *a1 = v4;
}

uint64_t closure #3 in CodeBasedRankerHandler.rank(requestId:caarId:rcId:trpId:actions:rankerContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, NSObject *a7, uint64_t a8)
{
  swift_beginAccess();
  v15 = *(a2 + 16);

  CodeBasedRankerHandler.postRankLogging(rankedActions:caarId:rcId:requestId:trpId:shadowLog:tieBreakersExecuted:)(v16, a3, a4, a5, a6, a7, 0, a8);
}

uint64_t implicit closure #1 in CodeBasedRankerHandler.rank(requestId:caarId:rcId:trpId:actions:rankerContext:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *(type metadata accessor for RankedAction() + 28);
  v5 = *(a2 + v4);
  v6 = *(a1 + v4);
  if (v5 < v6)
  {
    return 1;
  }

  if (v6 < v5)
  {
    return 0;
  }

  v8 = *a2;
  v9 = a2[1];
  if (v8 == 0xD000000000000021 && 0x8000000266819930 == v9)
  {
    return 0;
  }

  OUTLINED_FUNCTION_7_6();
  if (OUTLINED_FUNCTION_43())
  {
    return 0;
  }

  v12 = *a1;
  v11 = a1[1];
  if (v12 == 0xD000000000000021 && 0x8000000266819930 == v11)
  {
    return 1;
  }

  OUTLINED_FUNCTION_7_6();
  if (OUTLINED_FUNCTION_43())
  {
    return 1;
  }

  if (v8 == v12 && v9 == v11)
  {
    return 0;
  }

  OUTLINED_FUNCTION_54();
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 0;
  }

  OUTLINED_FUNCTION_54();
  return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
}

uint64_t closure #4 in CodeBasedRankerHandler.rank(requestId:caarId:rcId:trpId:actions:rankerContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, NSObject *a7, uint64_t a8)
{
  swift_beginAccess();
  v17 = *(a1 + 16);
  type metadata accessor for SiriSignalsContainer();
  v15 = swift_allocObject();
  type metadata accessor for SignalValue();

  *(v15 + 16) = Dictionary.init(dictionaryLiteral:)();
  SiriSignalsContainer.refreshSignals()();

  specialized CodeBasedRankerHandler.extractUserHistoryFeatures(rankedActions:siriSignalsContainer:)(&v17, v15);
  specialized CodeBasedRankerHandler.extractDisambiguationFeatures(rankedActions:siriSignalsContainer:)(&v17, v15);

  CodeBasedRankerHandler.postRankLogging(rankedActions:caarId:rcId:requestId:trpId:shadowLog:tieBreakersExecuted:)(v17, a3, a4, a5, a6, a7, 0, a8);
}

uint64_t CodeBasedRankerHandler.rank(requestId:caarId:rcId:trpId:parses:rankerContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = type metadata accessor for CamParse(0);
  v59 = OUTLINED_FUNCTION_22(v9);
  v60 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_3_0();
  v15 = v14 - v13;
  if (one-time initialization token for ranker != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v16 = type metadata accessor for Logger();
    v17 = __swift_project_value_buffer(v16, static Logger.ranker);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_266790000, v18, v19, "Ranking parses in CAAR", v20, 2u);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    MEMORY[0x28223BE20](v21);
    *(&v58 - 2) = a7;
    v22 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay7SiriCam0E5ParseOG_Sds5NeverOTg5(partial apply for closure #1 in CodeBasedRankerHandler.rank(requestId:caarId:rcId:trpId:parses:rankerContext:), (&v58 - 4), a6);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    v25 = os_log_type_enabled(v23, v24);
    v61 = v17;
    if (v25)
    {
      OUTLINED_FUNCTION_15();
      v26 = swift_slowAlloc();
      OUTLINED_FUNCTION_9();
      v27 = swift_slowAlloc();
      v64[0] = v27;
      *v26 = 136315138;
      v28 = MEMORY[0x26D5DCE80](v22, MEMORY[0x277D839F8]);
      v30 = v15;
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v64);

      *(v26 + 4) = v31;
      v15 = v30;
      _os_log_impl(&dword_266790000, v23, v24, "Ranking generated scores %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    KeyPath = swift_getKeyPath();
    v33 = specialized Sequence.sorted<A>(by:decreasing:)(KeyPath, 1, v22);

    v34 = *(v33 + 16);
    v35 = MEMORY[0x277D84F90];
    if (v34)
    {
      v36 = a6;
      v64[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34, 0);
      v37 = v64[0];
      v38 = *(v64[0] + 16);
      v39 = 32;
      do
      {
        v40 = *(v33 + v39);
        v64[0] = v37;
        v41 = *(v37 + 24);
        if (v38 >= v41 >> 1)
        {
          v42 = OUTLINED_FUNCTION_17_1(v41);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v42, v38 + 1, 1);
          v37 = v64[0];
        }

        *(v37 + 16) = v38 + 1;
        *(v37 + 8 * v38 + 32) = v40;
        v39 += 16;
        ++v38;
        --v34;
      }

      while (v34);

      a6 = v36;
      v35 = MEMORY[0x277D84F90];
    }

    else
    {

      v37 = MEMORY[0x277D84F90];
    }

    v43 = *(v37 + 16);
    if (!v43)
    {
      break;
    }

    v64[0] = v35;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43, 0);
    a7 = v64[0];
    v44 = v60;
    v62 = a6 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
    v63 = *(a6 + 16);
    v45 = 32;
    while (*(v37 + v45) < v63)
    {
      v46 = *(v44 + 72);
      outlined init with copy of RankedAction();
      v64[0] = a7;
      v48 = *(a7 + 16);
      v47 = *(a7 + 24);
      a6 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        v49 = OUTLINED_FUNCTION_17_1(v47);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v49, v48 + 1, 1);
        v44 = v60;
        a7 = v64[0];
      }

      *(a7 + 16) = a6;
      outlined init with take of CamModelMetadata();
      v45 += 8;
      if (!--v43)
      {

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_25:
    OUTLINED_FUNCTION_2_0();
    swift_once();
  }

  a7 = MEMORY[0x277D84F90];
LABEL_21:

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v50, v51))
  {
    OUTLINED_FUNCTION_15();
    v52 = swift_slowAlloc();
    OUTLINED_FUNCTION_9();
    v53 = swift_slowAlloc();
    v64[0] = v53;
    *v52 = 136315138;
    v54 = MEMORY[0x26D5DCE80](a7, v59);
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, v64);

    *(v52 + 4) = v56;
    _os_log_impl(&dword_266790000, v50, v51, "Returning ranked parses %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  return a7;
}

void closure #1 in CodeBasedRankerHandler.rank(requestId:caarId:rcId:trpId:parses:rankerContext:)(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - v9;
  v11 = type metadata accessor for CamUSOParse(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = type metadata accessor for CamParse(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of RankedAction();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    outlined init with take of CamModelMetadata();
    Siri_Nlu_External_UserParse.comparableProbability.getter();
    v22 = v21;
    v23 = a1 + *(type metadata accessor for RankerContext() + 28);
    if ((*(v23 + 8) & 1) != 0 || v22 != *v23)
    {
      outlined destroy of RankedAction();
      v30 = 0x3FA999999999999ALL;
    }

    else
    {
      v24 = *(v11 + 20);
      outlined init with copy of UUID?();
      outlined destroy of RankedAction();
      v25 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
      if (__swift_getEnumTagSinglePayload(v10, 1, v25) == 1)
      {
LABEL_23:
        *a2 = 0x3FE0000000000000;
        outlined destroy of (CamLogOutput, CamModelMetadata)(v10, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
        return;
      }

      outlined init with copy of UUID?();
      v26 = *(v25 - 8);
      v27 = (*(v26 + 88))(v8, v25);
      if (v27 != *MEMORY[0x277D5DA80] && v27 != *MEMORY[0x277D5DA70] && v27 != *MEMORY[0x277D5DA60])
      {
        (*(v26 + 8))(v8, v25);
        goto LABEL_23;
      }

      outlined destroy of (CamLogOutput, CamModelMetadata)(v10, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
      v30 = 0x3FE3333333333333;
    }

    *a2 = v30;
    return;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v18 = *v16;
    dispatch thunk of PommesResponse.primaryQueryConfidence()();
    v20 = v19 >= 0.7;

    *a2 = qword_2668157B0[v20];
  }

  else
  {
    if (one-time initialization token for ranker != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.ranker);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_266790000, v32, v33, "Received unknown parse case, ranking last!", v34, 2u);
      MEMORY[0x26D5DDCD0](v34, -1, -1);
    }

    *a2 = 0;
    outlined destroy of RankedAction();
  }
}

uint64_t specialized Sequence.sorted<A>(by:decreasing:)(uint64_t a1, char a2, uint64_t a3)
{

  v6 = specialized _copySequenceToContiguousArray<A>(_:)(a3);
  specialized MutableCollection<>.sort(by:)(&v6, a2);
  return v6;
}

void CodeBasedRankerHandler.extractFeatures(actions:rankerContext:)()
{
  OUTLINED_FUNCTION_16_1();
  v1 = v0;
  v2 = type metadata accessor for RankerContext();
  v3 = OUTLINED_FUNCTION_0_2(v2);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = (&v30[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = (&v30[-1] - v9);
  v11 = CamFeatureFlag.isEnabled.getter(4u);
  outlined init with copy of RankedAction();
  if (v11)
  {

    v13 = DawnRankerFeatureExtractor.init(actions:rankerContext:)(v12, v10);
    v31 = &type metadata for DawnRankerFeatureExtractor;
    v32 = &protocol witness table for DawnRankerFeatureExtractor;
    v30[0] = v13;
    v30[1] = v14;
    v30[2] = v15;
  }

  else
  {
    v16 = type metadata accessor for RankerFeatureExtractor();
    v31 = v16;
    v32 = &protocol witness table for RankerFeatureExtractor;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
    v29 = v1;
    v18 = v16[9];
    static PommesFeatureExtractor.configuredScoreThreshold()();
    *(boxed_opaque_existential_1 + v18) = v19;
    outlined init with copy of RankedAction();
    outlined init with copy of RankedAction();
    v20 = static UserParseFeatureExtractor.extractOnScreenAppBundleIds(from:)(*v8);
    v21 = v8 + *(v2 + 28);
    v22 = *v21;
    v23 = v21[8];
    outlined destroy of RankedAction();
    v24 = boxed_opaque_existential_1 + v16[5];
    *v24 = v20;
    *(v24 + 1) = v22;
    v1 = v29;
    v24[16] = v23;
    type metadata accessor for AffinityRankFeatureExtractor();
    OUTLINED_FUNCTION_29_0();
    swift_allocObject();

    *(boxed_opaque_existential_1 + v16[6]) = AffinityRankFeatureExtractor.init(actions:)(v25);
    v26 = (v10 + *(v2 + 24));
    v27 = *v26;
    v28 = v26[1];

    outlined destroy of RankedAction();
    type metadata accessor for ConversationHistoryFeatureExtractor();
    v13 = swift_allocObject();
    *(v13 + 16) = v27;
    *(v13 + 24) = v28;
    *(boxed_opaque_existential_1 + v16[8]) = v13;
  }

  MEMORY[0x28223BE20](v13);
  *(&v29 - 2) = v30;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay7SiriCam15ActionCandidateVG_SDySSSo14MLFeatureValueCGsAE_pTg5(partial apply for closure #1 in CodeBasedRankerHandler.extractFeatures(actions:rankerContext:), (&v29 - 4), v1);
  __swift_destroy_boxed_opaque_existential_0(v30);
  OUTLINED_FUNCTION_15_3();
}

uint64_t closure #1 in CodeBasedRankerHandler.extractFeatures(actions:rankerContext:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  result = FeatureExtracting.extract(from:)(a1, v8, v9);
  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    *a4 = result;
  }

  return result;
}

uint64_t closure #2 in CodeBasedRankerHandler.extractDisambiguationFeatures(rankedActions:siriSignalsContainer:)(unint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = *a3;
  v7 = type metadata accessor for RankedAction();
  v17[3] = v7;
  v17[4] = &protocol witness table for RankedAction;
  __swift_allocate_boxed_opaque_existential_1(v17);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 < *(v6 + 16))
  {
    v8 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
    v9 = *(*(v7 - 8) + 72) * v5;
    outlined init with copy of RankedAction();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v6;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  *a3 = v16;
LABEL_4:
  v11 = *(v7 + 44);
  v12 = specialized FeatureExtracting.extract(from:)(v17);
  if (!v3)
  {
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v12);
    v14 = v13;

    specialized Dictionary.update(other:allowDuplicateKeys:)(v14, 0);
  }

  return __swift_destroy_boxed_opaque_existential_0(v17);
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    if (!v5)
    {
      break;
    }

    v7 = *v6++;
    v8 = v7;
    result = v4(&v8);
    --v5;
  }

  while (!v3);
  return result;
}

uint64_t CodeBasedRankerHandler.postRankLogging(rankedActions:caarId:rcId:requestId:trpId:shadowLog:tieBreakersExecuted:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5, NSObject *a6, int a7, uint64_t a8)
{
  v124 = a8;
  v119 = a7;
  v131 = a6;
  v130 = a5;
  v129 = a4;
  v128 = a3;
  v127 = a2;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7SiriCam12RankedActionVG_AA0B13ModelMetadataVAA19CAARTrialEnrollmentVtMd, &_sSay7SiriCam12RankedActionVG_AA0B13ModelMetadataVAA19CAARTrialEnrollmentVtMR);
  OUTLINED_FUNCTION_0_2(v121);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_23_0(&v117 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  OUTLINED_FUNCTION_14(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_21_1(&v117 - v18);
  v117 = type metadata accessor for CamModelMetadata();
  v19 = OUTLINED_FUNCTION_0_2(v117);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_23_0(v23 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_SDySSSo14MLFeatureValueCGtMd, &_s10Foundation4UUIDV_SDySSSo14MLFeatureValueCGtMR);
  OUTLINED_FUNCTION_22(v24);
  v142 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v28);
  v30 = &v117 - v29;
  v143 = type metadata accessor for RankedAction();
  v31 = OUTLINED_FUNCTION_22(v143);
  v125 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_5();
  v141 = v35;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_51();
  v38 = MEMORY[0x28223BE20](v37);
  MEMORY[0x28223BE20](v38);
  v40 = (&v117 - v39);
  v132 = a1;
  v126 = *(a1 + 16);
  if (v126)
  {
    v41 = v125;
    v42 = v132 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    if (one-time initialization token for ranker != -1)
    {
      OUTLINED_FUNCTION_2_0();
      swift_once();
    }

    v140 = *(v41 + 72);
    v139 = type metadata accessor for Logger();
    *&v43 = 136315650;
    v133 = v43;
    v44 = v126;
    v136 = v24;
    v135 = v30;
    v134 = v8;
    do
    {
      __swift_project_value_buffer(v139, static Logger.ranker);
      outlined init with copy of RankedAction();
      outlined init with copy of RankedAction();
      OUTLINED_FUNCTION_47();
      outlined init with copy of RankedAction();
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v45, v46))
      {
        OUTLINED_FUNCTION_9();
        v47 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        *&v145 = v138;
        *v47 = v133;
        v137 = v46;
        v48 = *v40;
        v49 = v40[1];

        OUTLINED_FUNCTION_9_6();
        outlined destroy of RankedAction();
        v50 = OUTLINED_FUNCTION_40();

        *(v47 + 4) = v50;
        *(v47 + 12) = 2080;
        v51 = v143;
        v52 = *(v143 + 36);
        type metadata accessor for UUID();
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        dispatch thunk of CustomStringConvertible.description.getter();
        outlined destroy of RankedAction();
        v53 = OUTLINED_FUNCTION_40();

        *(v47 + 14) = v53;
        *(v47 + 22) = 2080;
        Dictionary<>.debugDescription.getter(*(v134 + *(v51 + 44)));
        v24 = v136;
        outlined destroy of RankedAction();
        v54 = OUTLINED_FUNCTION_40();
        v30 = v135;

        *(v47 + 24) = v54;
        _os_log_impl(&dword_266790000, v45, v137, "Features for %s (%s): \n %s", v47, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
      }

      else
      {

        OUTLINED_FUNCTION_10_6();
        outlined destroy of RankedAction();
        OUTLINED_FUNCTION_56();
        outlined destroy of RankedAction();
        outlined destroy of RankedAction();
      }

      v42 += v140;
      --v44;
    }

    while (v44);
  }

  if (one-time initialization token for ranker != -1)
  {
    OUTLINED_FUNCTION_2_0();
    swift_once();
  }

  v55 = type metadata accessor for Logger();
  __swift_project_value_buffer(v55, static Logger.ranker);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.info.getter();
  v58 = os_log_type_enabled(v56, v57);
  v59 = v126;
  if (v58)
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_266790000, v56, v57, "Logging CAAR features to SELF.", v60, 2u);
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  v61 = MEMORY[0x277D84F90];
  if (v59)
  {
    *&v145 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v59, 0);
    v61 = v145;
    OUTLINED_FUNCTION_8();
    v63 = v132 + v62;
    v65 = *(v64 + 72);
    v66 = v141;
    do
    {
      OUTLINED_FUNCTION_1_12();
      outlined init with copy of RankedAction();
      v67 = *(v24 + 48);
      v68 = v143;
      v69 = *(v143 + 36);
      v70 = type metadata accessor for UUID();
      OUTLINED_FUNCTION_0_2(v70);
      (*(v71 + 16))(v30, v66 + v69);
      v72 = *(v66 + *(v68 + 44));

      OUTLINED_FUNCTION_0_11();
      outlined destroy of RankedAction();
      *&v30[v67] = v72;
      *&v145 = v61;
      v73 = v30;
      v75 = *(v61 + 16);
      v74 = *(v61 + 24);
      if (v75 >= v74 >> 1)
      {
        v78 = OUTLINED_FUNCTION_17_1(v74);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v78, v75 + 1, 1);
        v61 = v145;
      }

      *(v61 + 16) = v75 + 1;
      OUTLINED_FUNCTION_8();
      v77 = *(v76 + 72);
      outlined init with take of (UUID, [String : MLFeatureValue])();
      v63 += v65;
      --v59;
      v30 = v73;
    }

    while (v59);
  }

  _s7SiriCam19CaarLoggingProtocolPAAE3log4from03forC2Id0h2RcI00h7RequestI00h3TrpI0y13SourceMessageQz_10Foundation4UUIDVSSA2NSgtFZAA0C13FeatureLoggerV_Tt4g5(v61, v127, v128, v129, v130, v131);

  v79 = static TrialProvider.fetchBoolFactorFromTrial(_:)();
  v80 = v120;
  if (v79 != 2 && (v79 & 1) != 0 && (CamFeatureFlag.isEnabled.getter(5u) & 1) != 0)
  {
    *&v145 = 0;
    *(&v145 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(28);
    v82 = *(v80 + 56);
    v81 = *(v80 + 64);

    *&v145 = v82;
    *(&v145 + 1) = v81;
    MEMORY[0x26D5DCD80](0xD00000000000001ALL, 0x800000026681ADD0);
    v83 = *(&v145 + 1);
    v143 = v145;
  }

  else
  {
    v83 = *(v80 + 64);
    v143 = *(v80 + 56);
  }

  v84 = *(v80 + 72);
  v85 = *(v80 + 80);
  v86 = v119 & 1;
  v88 = *(v80 + 88);
  v87 = *(v80 + 96);
  v89 = type metadata accessor for Locale();
  v90 = v118;
  __swift_storeEnumTagSinglePayload(v118, 1, 1, v89);
  v91 = *(v117 + 28);
  v92 = v123;
  __swift_storeEnumTagSinglePayload(v123 + v91, 1, 1, v89);
  *v92 = v143;
  *(v92 + 8) = v83;
  *(v92 + 16) = v84;
  *(v92 + 24) = v85;
  *(v92 + 32) = v88;
  *(v92 + 40) = v87;
  *(v92 + 48) = v86;

  outlined assign with take of Locale?(v90, v92 + v91);
  v93 = one-time initialization token for enrollment;
  v94 = v132;

  if (v93 != -1)
  {
    swift_once();
  }

  v145 = static TrialProvider.enrollment;
  v146 = unk_28132EAA0;
  v147 = xmmword_28132EAB0;
  v148 = unk_28132EAC0;
  v95 = *(v121 + 48);
  v96 = v122;
  v97 = (v122 + *(v121 + 64));
  *v122 = v94;
  outlined init with copy of RankedAction();
  v98 = v146;
  *v97 = v145;
  v97[1] = v98;
  v99 = v148;
  v97[2] = v147;
  v97[3] = v99;
  outlined init with copy of CAARTrialEnrollment(&v145, v144);
  v100 = v128;
  v101 = v129;
  _s7SiriCam19CaarLoggingProtocolPAAE3log4from03forC2Id0h2RcI00h7RequestI00h3TrpI0y13SourceMessageQz_10Foundation4UUIDVSSA2NSgtFZAA0C11ModelLoggerV_Tt4g5(v96, v127, v128, v129, v130, v131);
  outlined destroy of (CamLogOutput, CamModelMetadata)(v96, &_sSay7SiriCam12RankedActionVG_AA0B13ModelMetadataVAA19CAARTrialEnrollmentVtMd, &_sSay7SiriCam12RankedActionVG_AA0B13ModelMetadataVAA19CAARTrialEnrollmentVtMR);
  v102 = UUID.uuidString.getter();
  _s7SiriCam31CaarFeatureStoreLoggingProtocolPAAE9writeData11modelOutput0J8Metadata9requestId02rcN08fsStreamySayAA12RankedActionVG_AA0b5ModelL0VS2SAA0deQ0OtFZAA0cdE6LoggerV_Tt4g5(v94, v92, v102, v103, v100, v101, 1);

  OUTLINED_FUNCTION_39();
  _s7SiriCam19CaarLoggingProtocolPAAE3log4from03forC2Id0h2RcI00h7RequestI00h3TrpI0y13SourceMessageQz_10Foundation4UUIDVSSA2NSgtFZAA0C16TieBreakerLoggerV_Tt4g5(v104, v105, v106, v107, v108, v109);
  OUTLINED_FUNCTION_39();
  _s7SiriCam19CaarLoggingProtocolPAAE3log4from03forC2Id0h2RcI00h7RequestI00h3TrpI0y13SourceMessageQz_10Foundation4UUIDVSSA2NSgtFZAA0C14ResponseLoggerV_Tt4g5(v110, v111, v112, v113, v114, v115);
  return outlined destroy of RankedAction();
}

uint64_t _s7SiriCam31CaarFeatureStoreLoggingProtocolPAAE9writeData11modelOutput0J8Metadata9requestId02rcN08fsStreamySayAA12RankedActionVG_AA0b5ModelL0VS2SAA0deQ0OtFZAA0cdE6LoggerV_Tt4g5(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v67 = a7;
  v71 = a6;
  v70 = a5;
  v69 = a4;
  v68 = a3;
  v64 = a2;
  v8 = type metadata accessor for CamModelMetadata();
  v62 = *(v8 - 8);
  v9 = *(v62 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v63 = v10;
  v65 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RankedAction();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_7SiriCam12AnyEncodableVtGMd, &_ss23_ContiguousArrayStorageCySS_7SiriCam12AnyEncodableVtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266813C70;
  *(inited + 32) = 0x7365727574616566;
  *(inited + 40) = 0xE800000000000000;
  v61 = inited;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo14MLFeatureValueCGMd, &_sSDySSSo14MLFeatureValueCGMR);
  v17 = Dictionary.init(dictionaryLiteral:)();
  v18 = *(a1 + 16);
  v66 = a1;
  if (v18)
  {
    v74 = *(v11 + 36);
    v73 = *(v11 + 44);
    v19 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v72 = *(v12 + 72);
    do
    {
      v75 = v18;
      outlined init with copy of RankedAction();
      v20 = UUID.uuidString.getter();
      v22 = v21;
      v23 = v15;
      v24 = *&v15[v73];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76[0] = v17;
      v26 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v22);
      v28 = v17[2];
      v29 = (v27 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v11 = v26;
      v31 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSDySSSo14MLFeatureValueCGGMd, &_ss17_NativeDictionaryVySSSDySSSo14MLFeatureValueCGGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v30))
      {
        v32 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v22);
        if ((v31 & 1) != (v33 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v11 = v32;
      }

      if (v31)
      {

        v17 = v76[0];
        v34 = *(v76[0] + 56);
        v35 = *(v34 + 8 * v11);
        *(v34 + 8 * v11) = v24;

        v15 = v23;
        outlined destroy of RankedAction();
      }

      else
      {
        v17 = v76[0];
        *(v76[0] + 8 * (v11 >> 6) + 64) |= 1 << v11;
        v36 = (v17[6] + 16 * v11);
        *v36 = v20;
        v36[1] = v22;
        *(v17[7] + 8 * v11) = v24;
        v15 = v23;
        outlined destroy of RankedAction();
        v37 = v17[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_30;
        }

        v17[2] = v39;
      }

      v19 += v72;
      v18 = v75 - 1;
    }

    while (v75 != 1);
  }

  v40 = swift_allocObject();
  *(v40 + 16) = v17;
  v41 = v61;
  v61[6] = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:);
  v41[7] = v40;
  v41[8] = 0x74757074756FLL;
  v41[9] = 0xE600000000000000;
  v42 = swift_allocObject();
  *(v42 + 16) = v66;
  v41[10] = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:);
  v41[11] = v42;
  v41[12] = 0x617461646174656DLL;
  v41[13] = 0xE800000000000000;
  outlined init with copy of RankedAction();
  v43 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v44 = swift_allocObject();
  outlined init with take of CamModelMetadata();
  v41[14] = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:);
  v41[15] = v44;

  v11 = Dictionary.init(dictionaryLiteral:)();
  if (one-time initialization token for common != -1)
  {
LABEL_31:
    swift_once();
  }

  v45 = 0x6C65646F4D6D6143;
  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, static Logger.common);

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();

  v49 = os_log_type_enabled(v47, v48);
  v50 = v67;
  if (v49)
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v76[0] = v52;
    *v51 = 136315394;
    if (v50)
    {
      if (v50 == 1)
      {
        v53 = 0x65646F4D72616143;
      }

      else
      {
        v53 = 0x646E65536F747541;
      }

      if (v50 == 1)
      {
        v54 = 0xE90000000000006CLL;
      }

      else
      {
        v54 = 0xED00006C65646F4DLL;
      }
    }

    else
    {
      v54 = 0xE800000000000000;
      v53 = 0x6C65646F4D6D6143;
    }

    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, v76);

    *(v51 + 4) = v55;
    *(v51 + 12) = 2080;
    v56 = Dictionary.description.getter();
    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, v76);

    *(v51 + 14) = v58;
    _os_log_impl(&dword_266790000, v47, v48, "Writing to Feature Store, streamId=%s, object=%s", v51, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v52, -1, -1);
    MEMORY[0x26D5DDCD0](v51, -1, -1);
  }

  if (v50)
  {
    if (v50 == 1)
    {
      v45 = 0x65646F4D72616143;
      v59 = 0xE90000000000006CLL;
    }

    else
    {
      v45 = 0x646E65536F747541;
      v59 = 0xED00006C65646F4DLL;
    }
  }

  else
  {
    v59 = 0xE800000000000000;
  }

  v76[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS7SiriCam12AnyEncodableVGMd, &_sSDySS7SiriCam12AnyEncodableVGMR);
  v76[4] = lazy protocol witness table accessor for type [String : AnyEncodable] and conformance <> [A : B]();
  v76[0] = v11;
  specialized static FeatureStoreLoggingProtocol.write(streamId:object:requestId:rcId:)(v45, v59, v76, v68, v69, v70, v71);

  return __swift_destroy_boxed_opaque_existential_0(v76);
}

uint64_t *CodeBasedRankerHandler.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[8];

  v2 = v0[12];

  v3 = v0[13];

  return v0;
}

uint64_t CodeBasedRankerHandler.__deallocating_deinit()
{
  CodeBasedRankerHandler.deinit();

  return MEMORY[0x2821FE8D8](v0, 112, 7);
}

BOOL specialized closure #1 in Sequence.sorted<A>(by:decreasing:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    swift_getAtKeyPath();
    swift_getAtKeyPath();
    return v5 < v6;
  }

  else
  {
    swift_getAtKeyPath();
    swift_getAtKeyPath();
    return v6 < v5;
  }
}

uint64_t _sSLsE1goiySbx_xtFZ7SiriCam12RankedActionV_Tt1g5(uint64_t *a1, uint64_t *a2)
{
  v4 = *(type metadata accessor for RankedAction() + 28);
  v5 = *(a2 + v4);
  v6 = *(a1 + v4);
  if (v5 < v6)
  {
    return 1;
  }

  if (v6 < v5)
  {
    return 0;
  }

  v8 = *a2;
  v9 = a2[1];
  if (v8 == 0xD000000000000021 && 0x8000000266819930 == v9)
  {
    return 0;
  }

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_7_6();
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 0;
  }

  v12 = *a1;
  v11 = a1[1];
  if (v12 == 0xD000000000000021 && 0x8000000266819930 == v11)
  {
    return 1;
  }

  OUTLINED_FUNCTION_7_6();
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 1;
  }

  if (v8 == v12 && v9 == v11)
  {
    return 0;
  }

  OUTLINED_FUNCTION_8_0();
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 0;
  }

  OUTLINED_FUNCTION_8_0();

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (_minimumMergeRunLength(_:)(v1) < v1)
  {
    if (v1 >= -1)
    {
      v2 = v1 / 2;
      if (v1 <= 1)
      {
        v3 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for RankedAction();
        v3 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v3 + 16) = v2;
      }

      v4 = type metadata accessor for RankedAction();
      OUTLINED_FUNCTION_14(v4);
      v6 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)();
      *(v3 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v1 < 0)
  {
    goto LABEL_12;
  }

  if (v1)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)();
  }
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, char a2)
{
  v4 = a1[1];
  swift_retain_n();
  result = _minimumMergeRunLength(_:)(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_Sd7elementtMd, &_sSi6offset_Sd7elementtMR);
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v9, v10, a1, v6, a2 & 1);
      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v4, 1, a1, a2 & 1);
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)()
{
  OUTLINED_FUNCTION_16_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_48();
  v52 = type metadata accessor for RankedAction();
  v7 = *(*(v52 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v52);
  v50 = &v41[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v41[-v11];
  MEMORY[0x28223BE20](v10);
  v15 = &v41[-v14];
  v43 = v6;
  if (v4 == v6)
  {
    goto LABEL_30;
  }

  v16 = *v2;
  v17 = *(v13 + 72);
  OUTLINED_FUNCTION_3_3();
  v51 = v18;
  v21 = v19 + v20 * (v4 - 1);
  v48 = -v20;
  v49 = v19;
  v22 = v0 - v4;
  v42 = v20;
  v23 = v19 + v20 * v4;
  while (2)
  {
    v46 = v21;
    v47 = v4;
    v44 = v23;
    v45 = v22;
    v24 = v21;
    while (1)
    {
      outlined init with copy of RankedAction();
      outlined init with copy of RankedAction();
      v25 = *(v52 + 28);
      v26 = *(v12 + v25);
      v27 = *(v15 + v25);
      if (v26 < v27)
      {
LABEL_16:
        outlined destroy of RankedAction();
        outlined destroy of RankedAction();
        goto LABEL_17;
      }

      if (v27 < v26)
      {
        break;
      }

      v29 = *v12;
      v28 = v12[1];
      OUTLINED_FUNCTION_15_4();
      if (v29 == v31 && v30 == v28)
      {
        break;
      }

      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_7_6();
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v33 = *v15;
      v34 = v15[1];
      OUTLINED_FUNCTION_15_4();
      if (v33 == v36 && v35 == v34)
      {
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_7_6();
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_16;
      }

      if (v29 == v33 && v28 == v34)
      {
        break;
      }

      OUTLINED_FUNCTION_56();
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      OUTLINED_FUNCTION_56();
      v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
      OUTLINED_FUNCTION_11_5();
      outlined destroy of RankedAction();
      outlined destroy of RankedAction();
      if ((v40 & 1) == 0)
      {
        goto LABEL_29;
      }

LABEL_17:
      if (!v49)
      {
        __break(1u);
        return;
      }

      outlined init with take of CamModelMetadata();
      swift_arrayInitWithTakeFrontToBack();
      outlined init with take of CamModelMetadata();
      v24 += v48;
      v23 += v48;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_29;
      }
    }

    outlined destroy of RankedAction();
    OUTLINED_FUNCTION_53();
    outlined destroy of RankedAction();
LABEL_29:
    v4 = v47 + 1;
    v21 = v46 + v42;
    v22 = v45 - 1;
    v23 = v44 + v42;
    if (v47 + 1 != v43)
    {
      continue;
    }

    break;
  }

LABEL_30:
  OUTLINED_FUNCTION_15_3();
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  if (a3 == a2)
  {
  }

  v7 = a3;
  v8 = *a4;
  v9 = *a4 + 16 * a3;
  v10 = a1 - a3;
  while (2)
  {
    v11 = (v8 + 16 * v7);
    v12 = *v11;
    v13 = v11[1];
    v14 = v10;
    v15 = v9;
    do
    {
      v21 = *(v15 - 2);
      v22 = *(v15 - 1);
      if (a5)
      {
        swift_getAtKeyPath();
        result = swift_getAtKeyPath();
        if (v20 >= v23)
        {
          break;
        }
      }

      else
      {
        swift_getAtKeyPath();
        result = swift_getAtKeyPath();
        if (v23 >= v20)
        {
          break;
        }
      }

      if (!v8)
      {
        __break(1u);
        return result;
      }

      v16 = *v15;
      v17 = v15[1];
      *v15 = *(v15 - 1);
      *(v15 - 1) = v17;
      *(v15 - 2) = v16;
      v15 -= 2;
    }

    while (!__CFADD__(v14++, 1));
    ++v7;
    v9 += 16;
    --v10;
    if (v7 != a2)
    {
      continue;
    }

    break;
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)()
{
  OUTLINED_FUNCTION_16_1();
  v165 = v0;
  v2 = v1;
  v4 = v3;
  v154 = v5;
  v6 = type metadata accessor for RankedAction();
  v7 = OUTLINED_FUNCTION_22(v6);
  v161 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v157 = v11;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_10_3();
  v170 = v13;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_10_3();
  v172 = v15;
  OUTLINED_FUNCTION_6();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (&v151 - v18);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_10_3();
  v164 = v20;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v21);
  v162 = v4;
  v163 = (&v151 - v22);
  if (v4[1] < 1)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_147:
    v28 = *v154;
    if (!*v154)
    {
      goto LABEL_189;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_149;
    }

    goto LABEL_183;
  }

  v23 = v4[1];
  v152 = v2;
  v24 = 0;
  OUTLINED_FUNCTION_3_3();
  v167 = v25;
  v26 = MEMORY[0x277D84F90];
  v171 = v6;
  v168 = v19;
  v28 = v27;
  while (2)
  {
    v29 = v24;
    v30 = v24 + 1;
    if (v30 >= v28)
    {
      goto LABEL_55;
    }

    v31 = *v162;
    v32 = *(v161 + 72);
    v33 = (*v162 + v32 * v30);
    v34 = v165;
    LODWORD(v169) = implicit closure #1 in CodeBasedRankerHandler.rank(requestId:caarId:rcId:trpId:actions:rankerContext:)(v33, (*v162 + v32 * v29));
    v165 = v34;
    if (v34)
    {
      goto LABEL_157;
    }

    v153 = v29;
    v35 = v29 + 2;
    v36 = v31 + v32 * (v29 + 2);
    v160 = v28;
    while (1)
    {
      v37 = v35;
      if (v30 + 1 >= v28)
      {
        break;
      }

      v166 = v30;
      OUTLINED_FUNCTION_12_7();
      v38 = v163;
      outlined init with copy of RankedAction();
      v39 = v164;
      outlined init with copy of RankedAction();
      v40 = *(v6 + 28);
      v41 = *(v39 + v40);
      v42 = *(v38 + v40);
      if (v41 >= v42)
      {
        if (v42 >= v41)
        {
          v44 = *v164;
          v45 = v164[1];
          OUTLINED_FUNCTION_15_4();
          v46 = v167;
          v48 = v44 == v47 && v167 == v45;
          if (v48 || (OUTLINED_FUNCTION_47(), OUTLINED_FUNCTION_7_6(), (OUTLINED_FUNCTION_43() & 1) != 0))
          {
LABEL_16:
            v43 = 0;
          }

          else
          {
            v50 = *v163;
            v49 = v163[1];
            OUTLINED_FUNCTION_15_4();
            v53 = v50 == v52 && v46 == v51;
            if (v53 || (v159 = v51, OUTLINED_FUNCTION_7_6(), (OUTLINED_FUNCTION_43() & 1) != 0))
            {
              v43 = 1;
            }

            else
            {
              if (v44 == v50 && v45 == v159)
              {
                goto LABEL_16;
              }

              OUTLINED_FUNCTION_47();
              if (_stringCompareWithSmolCheck(_:_:expecting:)())
              {
                goto LABEL_16;
              }

              OUTLINED_FUNCTION_47();
              v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
            }
          }

          v6 = v171;
          goto LABEL_18;
        }

        v43 = 0;
      }

      else
      {
        v43 = 1;
      }

LABEL_18:
      outlined destroy of RankedAction();
      outlined destroy of RankedAction();
      v36 += v32;
      v33 = (v33 + v32);
      v30 = v166 + 1;
      v35 = v37 + 1;
      v28 = v160;
      if ((v169 ^ v43))
      {
        goto LABEL_33;
      }
    }

    v30 = v28;
LABEL_33:
    if ((v169 & 1) == 0)
    {
LABEL_53:
      v19 = v168;
      v29 = v153;
      goto LABEL_55;
    }

    v29 = v153;
    if (v30 < v153)
    {
      goto LABEL_182;
    }

    if (v153 < v30)
    {
      v151 = v26;
      if (v28 >= v37)
      {
        v55 = v37;
      }

      else
      {
        v55 = v28;
      }

      v56 = v30;
      v28 = v32 * (v55 - 1);
      v57 = v32 * v55;
      v58 = v153;
      v59 = v153 * v32;
      do
      {
        if (v58 != --v56)
        {
          v60 = *v162;
          if (!*v162)
          {
            goto LABEL_187;
          }

          outlined init with take of CamModelMetadata();
          v61 = v59 < v28 || v60 + v59 >= (v60 + v57);
          if (v61)
          {
            OUTLINED_FUNCTION_50();
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v59 != v28)
          {
            OUTLINED_FUNCTION_50();
            swift_arrayInitWithTakeBackToFront();
          }

          outlined init with take of CamModelMetadata();
          v6 = v171;
        }

        ++v58;
        v28 -= v32;
        v57 -= v32;
        v59 += v32;
      }

      while (v58 < v56);
      v26 = v151;
      goto LABEL_53;
    }

    v19 = v168;
LABEL_55:
    v62 = v162[1];
    if (v30 >= v62)
    {
      goto LABEL_93;
    }

    if (__OFSUB__(v30, v29))
    {
      goto LABEL_179;
    }

    if (v30 - v29 >= v152)
    {
LABEL_93:
      if (v30 < v29)
      {
        goto LABEL_178;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v133 = *(v26 + 2);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v26 = v134;
      }

      v85 = *(v26 + 2);
      v84 = *(v26 + 3);
      v6 = v85 + 1;
      v166 = v30;
      if (v85 >= v84 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v26 = v135;
      }

      *(v26 + 2) = v6;
      v28 = (v26 + 32);
      v86 = &v26[16 * v85 + 32];
      v87 = v166;
      *v86 = v29;
      v86[1] = v87;
      if (!*v154)
      {
        goto LABEL_188;
      }

      if (!v85)
      {
LABEL_143:
        v28 = v162[1];
        v24 = v166;
        v6 = v171;
        if (v166 >= v28)
        {
          goto LABEL_147;
        }

        continue;
      }

      v88 = *v154;
      while (1)
      {
        v89 = v6 - 1;
        v90 = (v28 + 16 * (v6 - 1));
        v91 = &v26[16 * v6];
        if (v6 >= 4)
        {
          break;
        }

        if (v6 == 3)
        {
          v92 = *(v26 + 4);
          v93 = *(v26 + 5);
          v102 = __OFSUB__(v93, v92);
          v94 = v93 - v92;
          v95 = v102;
LABEL_114:
          if (v95)
          {
            goto LABEL_165;
          }

          v107 = *v91;
          v106 = *(v91 + 1);
          v108 = __OFSUB__(v106, v107);
          v109 = v106 - v107;
          v110 = v108;
          if (v108)
          {
            goto LABEL_168;
          }

          v111 = v90[1];
          v112 = v111 - *v90;
          if (__OFSUB__(v111, *v90))
          {
            goto LABEL_171;
          }

          if (__OFADD__(v109, v112))
          {
            goto LABEL_173;
          }

          if (v109 + v112 >= v94)
          {
            if (v94 < v112)
            {
              v89 = v6 - 2;
            }

            goto LABEL_136;
          }

          goto LABEL_129;
        }

        if (v6 < 2)
        {
          goto LABEL_167;
        }

        v114 = *v91;
        v113 = *(v91 + 1);
        v102 = __OFSUB__(v113, v114);
        v109 = v113 - v114;
        v110 = v102;
LABEL_129:
        if (v110)
        {
          goto LABEL_170;
        }

        v116 = *v90;
        v115 = v90[1];
        v102 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v102)
        {
          goto LABEL_172;
        }

        if (v117 < v109)
        {
          goto LABEL_143;
        }

LABEL_136:
        if (v89 - 1 >= v6)
        {
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
          goto LABEL_181;
        }

        if (!*v162)
        {
          goto LABEL_185;
        }

        v121 = v26;
        v26 = (v28 + 16 * (v89 - 1));
        v122 = *v26;
        v123 = OUTLINED_FUNCTION_25_1(*v162);
        v124 = v165;
        specialized _merge<A>(low:mid:high:buffer:by:)(v123, v125, v126, v88, v127, v128, v129, v130, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162);
        v165 = v124;
        if (v124)
        {
          goto LABEL_157;
        }

        if (v6 < v122)
        {
          goto LABEL_160;
        }

        v131 = *(v121 + 2);
        if (v89 > v131)
        {
          goto LABEL_161;
        }

        *v26 = v122;
        *(v26 + 1) = v6;
        if (v89 >= v131)
        {
          goto LABEL_162;
        }

        v6 = v131 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((v28 + 16 * v89 + 16), v131 - 1 - v89, (v28 + 16 * v89));
        v26 = v121;
        *(v121 + 2) = v131 - 1;
        v132 = v131 > 2;
        v19 = v168;
        if (!v132)
        {
          goto LABEL_143;
        }
      }

      v96 = v28 + 16 * v6;
      v97 = *(v96 - 64);
      v98 = *(v96 - 56);
      v102 = __OFSUB__(v98, v97);
      v99 = v98 - v97;
      if (v102)
      {
        goto LABEL_163;
      }

      v101 = *(v96 - 48);
      v100 = *(v96 - 40);
      v102 = __OFSUB__(v100, v101);
      v94 = v100 - v101;
      v95 = v102;
      if (v102)
      {
        goto LABEL_164;
      }

      v103 = *(v91 + 1);
      v104 = v103 - *v91;
      if (__OFSUB__(v103, *v91))
      {
        goto LABEL_166;
      }

      v102 = __OFADD__(v94, v104);
      v105 = v94 + v104;
      if (v102)
      {
        goto LABEL_169;
      }

      if (v105 >= v99)
      {
        v119 = *v90;
        v118 = v90[1];
        v102 = __OFSUB__(v118, v119);
        v120 = v118 - v119;
        if (v102)
        {
          goto LABEL_177;
        }

        if (v94 < v120)
        {
          v89 = v6 - 2;
        }

        goto LABEL_136;
      }

      goto LABEL_114;
    }

    break;
  }

  v63 = v29 + v152;
  if (__OFADD__(v29, v152))
  {
    goto LABEL_180;
  }

  if (v63 >= v62)
  {
    v63 = v162[1];
  }

  if (v63 < v29)
  {
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    v26 = specialized _ArrayBuffer._consumeAndCreateNew()(v26);
LABEL_149:
    v136 = v26;
    v137 = (v26 + 16);
    for (i = *(v26 + 2); ; *v137 = i)
    {
      v26 = (i - 2);
      if (i < 2)
      {
        break;
      }

      if (!*v162)
      {
        goto LABEL_186;
      }

      v139 = &v136[16 * i];
      v140 = *v139;
      v141 = &v137[2 * i];
      v142 = OUTLINED_FUNCTION_25_1(*v162);
      v143 = v165;
      specialized _merge<A>(low:mid:high:buffer:by:)(v142, v144, v145, v28, v146, v147, v148, v149, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162);
      v165 = v143;
      if (v143)
      {
        break;
      }

      if (v6 < v140)
      {
        goto LABEL_174;
      }

      if (v26 >= *v137)
      {
        goto LABEL_175;
      }

      *v139 = v140;
      v139[1] = v6;
      v150 = *v137 - i;
      if (*v137 < i)
      {
        goto LABEL_176;
      }

      i = *v137 - 1;
      specialized UnsafeMutablePointer.moveInitialize(from:count:)(v141 + 16, v150, v141);
    }

LABEL_157:

    OUTLINED_FUNCTION_15_3();
    return;
  }

  if (v30 == v63)
  {
    goto LABEL_93;
  }

  v151 = v26;
  v64 = *v162;
  v65 = *(v161 + 72);
  v66 = *v162 + v65 * (v30 - 1);
  v67 = -v65;
  v153 = v29;
  v68 = v29 - v30;
  v169 = v64;
  v155 = v65;
  v156 = v63;
  v69 = v64 + v30 * v65;
LABEL_64:
  v166 = v30;
  v158 = v69;
  v159 = v68;
  v160 = v66;
  v70 = v66;
  while (1)
  {
    outlined init with copy of RankedAction();
    outlined init with copy of RankedAction();
    v71 = *(v6 + 28);
    v72 = *(v172 + v71);
    v73 = *(v19 + v71);
    if (v72 < v73)
    {
      goto LABEL_77;
    }

    v28 = v167;
    if (v73 < v72 || ((v75 = *v172, v74 = v172[1], OUTLINED_FUNCTION_15_4(), v75 == v76) ? (v77 = v28 == v74) : (v77 = 0), v77 || (OUTLINED_FUNCTION_7_6(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)))
    {
LABEL_89:
      outlined destroy of RankedAction();
      v19 = v168;
      outlined destroy of RankedAction();
LABEL_90:
      v6 = v171;
LABEL_91:
      v30 = v166 + 1;
      v66 = v160 + v155;
      v68 = v159 - 1;
      v69 = v158 + v155;
      if (v166 + 1 == v156)
      {
        v30 = v156;
        v26 = v151;
        v29 = v153;
        goto LABEL_93;
      }

      goto LABEL_64;
    }

    v19 = v168;
    v28 = *v168;
    v78 = v168[1];
    OUTLINED_FUNCTION_15_4();
    v81 = v28 == v80 && v79 == v78;
    if (v81 || (OUTLINED_FUNCTION_7_6(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
LABEL_77:
      outlined destroy of RankedAction();
      outlined destroy of RankedAction();
    }

    else
    {
      v82 = v75 == v28 && v74 == v78;
      if (v82 || (OUTLINED_FUNCTION_43() & 1) != 0)
      {
        goto LABEL_89;
      }

      v83 = _stringCompareWithSmolCheck(_:_:expecting:)();
      OUTLINED_FUNCTION_10_6();
      outlined destroy of RankedAction();
      v19 = v168;
      outlined destroy of RankedAction();
      if ((v83 & 1) == 0)
      {
        goto LABEL_90;
      }
    }

    v6 = v171;
    if (!v169)
    {
      break;
    }

    v28 = v170;
    outlined init with take of CamModelMetadata();
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of CamModelMetadata();
    v70 += v67;
    v69 += v67;
    v61 = __CFADD__(v68++, 1);
    if (v61)
    {
      goto LABEL_91;
    }
  }

  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = a5;
    swift_retain_n();
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = (v7 + 1);
      if ((v7 + 1) < v5)
      {
        v10 = (*a3 + 16 * v9);
        v11 = v10[1];
        v12 = (*a3 + 16 * v7);
        v13 = v12[1];
        v14 = specialized closure #1 in Sequence.sorted<A>(by:decreasing:)(*v10, *v12, v6 & 1);
        if (v116)
        {
LABEL_101:
        }

        v15 = v14;
        v107 = v8;
        v8 = (16 * v7);
        v16 = v12 + 3;
        v17 = v7 + 2;
        v9 = (v7 + 1);
        do
        {
          v18 = v17;
          if (v9 + 1 >= v5)
          {
            v9 = v5;
            if (!v15)
            {
              goto LABEL_27;
            }

            goto LABEL_17;
          }

          v122 = v16[1];
          v123 = v16[2];
          v118 = *(v16 - 1);
          v120 = *v16;
          swift_getAtKeyPath();
          swift_getAtKeyPath();
          if (v6)
          {
            v19 = v117 < v124;
          }

          else
          {
            v19 = v124 < v117;
          }

          v20 = v19;
          v16 += 2;
          ++v9;
          v17 = (v18 + 1);
        }

        while (v15 == v20);
        if (!v15)
        {
          goto LABEL_27;
        }

LABEL_17:
        if (v9 < v7)
        {
          goto LABEL_140;
        }

        if (v7 < v9)
        {
          if (v5 >= v18)
          {
            v21 = v18;
          }

          else
          {
            v21 = v5;
          }

          v22 = 16 * v21;
          v23 = v9;
          v24 = v7;
          do
          {
            if (v24 != --v23)
            {
              v25 = *a3;
              if (!*a3)
              {
                goto LABEL_145;
              }

              v26 = &v8[v25];
              v27 = v25 + v22;
              v28 = *v26;
              v29 = *(v26 + 1);
              *v26 = *(v27 - 16);
              *(v27 - 16) = v28;
              *(v27 - 8) = v29;
            }

            ++v24;
            v22 -= 16;
            v8 += 16;
          }

          while (v24 < v23);
        }

LABEL_27:
        v8 = v107;
      }

      v30 = a3[1];
      if (v9 < v30)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_137;
        }

        if (v9 - v7 < a4)
        {
          v31 = &v7[a4];
          if (__OFADD__(v7, a4))
          {
            goto LABEL_138;
          }

          if (v31 >= v30)
          {
            v31 = a3[1];
          }

          if (v31 >= v7)
          {
            if (v9 == v31)
            {
              goto LABEL_47;
            }

            v106 = v7;
            v108 = v8;
            v32 = *a3;
            v33 = *a3 + 16 * v9;
            v34 = &v7[-v9];
            v111 = v31;
LABEL_37:
            v35 = v9;
            v36 = (v32 + 16 * v9);
            v37 = *v36;
            v38 = v36[1];
            v39 = v34;
            v40 = v33;
            while (1)
            {
              v119 = *(v40 - 2);
              v121 = *(v40 - 1);
              if (v6)
              {
                swift_getAtKeyPath();
                swift_getAtKeyPath();
                if (v117 >= v124)
                {
                  goto LABEL_45;
                }
              }

              else
              {
                swift_getAtKeyPath();
                swift_getAtKeyPath();
                if (v124 >= v117)
                {
                  goto LABEL_45;
                }
              }

              if (!v32)
              {
                break;
              }

              v41 = *v40;
              v42 = v40[1];
              *v40 = *(v40 - 1);
              *(v40 - 1) = v42;
              *(v40 - 2) = v41;
              v40 -= 2;
              if (__CFADD__(v39++, 1))
              {
LABEL_45:
                ++v9;
                v33 += 16;
                --v34;
                if (v35 + 1 == v111)
                {
                  v9 = v111;
                  v7 = v106;
                  v8 = v108;
                  goto LABEL_47;
                }

                goto LABEL_37;
              }
            }

            __break(1u);
LABEL_143:

            __break(1u);
LABEL_144:

            __break(1u);
LABEL_145:

            __break(1u);
LABEL_146:

            __break(1u);
            goto LABEL_147;
          }

LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
LABEL_105:
          v94 = v8 + 16;
          v93 = *(v8 + 2);
          for (i = v8; ; v8 = i)
          {
            if (v93 < 2)
            {
            }

            v95 = *a3;
            if (!*a3)
            {
              goto LABEL_144;
            }

            v96 = &v8[16 * v93];
            v97 = *v96;
            v98 = v94;
            v8 = &v94[16 * v93];
            v99 = *(v8 + 1);
            v100 = (v95 + 16 * *v96);
            v101 = (v95 + 16 * *v8);
            v113 = (v95 + 16 * v99);

            specialized _merge<A>(low:mid:high:buffer:by:)(v100, v101, v113, v106, a5 & 1);
            if (v116)
            {
              break;
            }

            if (v99 < v97)
            {
              goto LABEL_132;
            }

            if (v93 - 2 >= *v98)
            {
              goto LABEL_133;
            }

            v94 = v98;
            *v96 = v97;
            *(v96 + 1) = v99;
            v102 = *v98 - v93;
            if (*v98 < v93)
            {
              goto LABEL_134;
            }

            v93 = *v98 - 1;
            specialized UnsafeMutablePointer.moveInitialize(from:count:)(v8 + 16, v102, v8);
            *v98 = v93;
          }
        }
      }

LABEL_47:
      if (v9 < v7)
      {
        goto LABEL_136;
      }

      v112 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v90 = *(v8 + 2);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v91;
      }

      v44 = *(v8 + 2);
      v45 = v44 + 1;
      if (v44 >= *(v8 + 3) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v92;
      }

      *(v8 + 2) = v45;
      v46 = v8 + 32;
      v47 = &v8[16 * v44 + 32];
      *v47 = v7;
      *(v47 + 1) = v112;
      v109 = *a1;
      if (!*a1)
      {
        goto LABEL_146;
      }

      if (v44)
      {
        break;
      }

      v7 = v112;
LABEL_99:
      v5 = a3[1];
      if (v7 >= v5)
      {
        goto LABEL_103;
      }
    }

    v7 = v112;
    v106 = v8 + 32;
    while (1)
    {
      v48 = v45 - 1;
      v49 = &v46[16 * v45 - 16];
      v50 = &v8[16 * v45];
      if (v45 >= 4)
      {
        break;
      }

      if (v45 == 3)
      {
        v51 = *(v8 + 4);
        v52 = *(v8 + 5);
        v61 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        v54 = v61;
LABEL_68:
        if (v54)
        {
          goto LABEL_123;
        }

        v66 = *v50;
        v65 = *(v50 + 1);
        v67 = __OFSUB__(v65, v66);
        v68 = v65 - v66;
        v69 = v67;
        if (v67)
        {
          goto LABEL_126;
        }

        v70 = *(v49 + 1);
        v71 = v70 - *v49;
        if (__OFSUB__(v70, *v49))
        {
          goto LABEL_129;
        }

        if (__OFADD__(v68, v71))
        {
          goto LABEL_131;
        }

        if (v68 + v71 >= v53)
        {
          if (v53 < v71)
          {
            v48 = v45 - 2;
          }

          goto LABEL_90;
        }

        goto LABEL_83;
      }

      if (v45 < 2)
      {
        goto LABEL_125;
      }

      v73 = *v50;
      v72 = *(v50 + 1);
      v61 = __OFSUB__(v72, v73);
      v68 = v72 - v73;
      v69 = v61;
LABEL_83:
      if (v69)
      {
        goto LABEL_128;
      }

      v75 = *v49;
      v74 = *(v49 + 1);
      v61 = __OFSUB__(v74, v75);
      v76 = v74 - v75;
      if (v61)
      {
        goto LABEL_130;
      }

      if (v76 < v68)
      {
        goto LABEL_99;
      }

LABEL_90:
      if (v48 - 1 >= v45)
      {
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
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

      v80 = *a3;
      if (!*a3)
      {
        goto LABEL_143;
      }

      v81 = v8;
      v82 = &v46[16 * v48 - 16];
      v83 = *v82;
      v84 = v48;
      v8 = &v46[16 * v48];
      v85 = *(v8 + 1);
      v86 = (v80 + 16 * *v82);
      v87 = (v80 + 16 * *v8);
      v88 = (v80 + 16 * v85);

      specialized _merge<A>(low:mid:high:buffer:by:)(v86, v87, v88, v109, a5 & 1);
      if (v116)
      {
        goto LABEL_101;
      }

      if (v85 < v83)
      {
        goto LABEL_118;
      }

      v89 = *(v81 + 2);
      if (v84 > v89)
      {
        goto LABEL_119;
      }

      *v82 = v83;
      *(v82 + 1) = v85;
      if (v84 >= v89)
      {
        goto LABEL_120;
      }

      v45 = v89 - 1;
      specialized UnsafeMutablePointer.moveInitialize(from:count:)(v8 + 16, v89 - 1 - v84, v8);
      v8 = v81;
      *(v81 + 2) = v89 - 1;
      v6 = a5;
      v7 = v112;
      v46 = v106;
      if (v89 <= 2)
      {
        goto LABEL_99;
      }
    }

    v55 = &v46[16 * v45];
    v56 = *(v55 - 8);
    v57 = *(v55 - 7);
    v61 = __OFSUB__(v57, v56);
    v58 = v57 - v56;
    if (v61)
    {
      goto LABEL_121;
    }

    v60 = *(v55 - 6);
    v59 = *(v55 - 5);
    v61 = __OFSUB__(v59, v60);
    v53 = v59 - v60;
    v54 = v61;
    if (v61)
    {
      goto LABEL_122;
    }

    v62 = *(v50 + 1);
    v63 = v62 - *v50;
    if (__OFSUB__(v62, *v50))
    {
      goto LABEL_124;
    }

    v61 = __OFADD__(v53, v63);
    v64 = v53 + v63;
    if (v61)
    {
      goto LABEL_127;
    }

    if (v64 >= v58)
    {
      v78 = *v49;
      v77 = *(v49 + 1);
      v61 = __OFSUB__(v77, v78);
      v79 = v77 - v78;
      if (v61)
      {
        goto LABEL_135;
      }

      if (v53 < v79)
      {
        v48 = v45 - 2;
      }

      goto LABEL_90;
    }

    goto LABEL_68;
  }

  swift_retain_n();
  v8 = MEMORY[0x277D84F90];
LABEL_103:
  v106 = *a1;
  if (*a1)
  {
    swift_retain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_105;
    }

    goto LABEL_141;
  }

LABEL_147:

  __break(1u);
  return result;
}

void specialized _merge<A>(low:mid:high:buffer:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_1();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v105 = type metadata accessor for RankedAction();
  v30 = *(*(v105 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v105);
  v104 = (&v95 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = MEMORY[0x28223BE20](v31);
  v103 = (&v95 - v34);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = (&v95 - v36);
  MEMORY[0x28223BE20](v35);
  v39 = (&v95 - v38);
  v41 = *(v40 + 72);
  if (!v41)
  {
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
    return;
  }

  v42 = v27 - v29 == 0x8000000000000000 && v41 == -1;
  if (v42)
  {
    goto LABEL_104;
  }

  if (v25 - v27 == 0x8000000000000000 && v41 == -1)
  {
    goto LABEL_105;
  }

  v44 = (v27 - v29) / v41;
  a10 = v29;
  v107 = v23;
  OUTLINED_FUNCTION_3_3();
  v101 = v46;
  v47 = v45 / v41;
  if (v44 < v45 / v41)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v29, (v27 - v29) / v41, v23);
    v104 = (v23 + v44 * v41);
    v106 = v104;
    while (1)
    {
      if (v23 >= v104 || v27 >= v25)
      {
        goto LABEL_102;
      }

      outlined init with copy of RankedAction();
      outlined init with copy of RankedAction();
      v49 = *(v105 + 28);
      v50 = *(v37 + v49);
      v51 = *(v39 + v49);
      if (v50 < v51)
      {
        break;
      }

      if (v51 < v50)
      {
        goto LABEL_30;
      }

      v53 = *v37;
      v54 = v37[1];
      OUTLINED_FUNCTION_15_4();
      if (v53 == v55 && v101 == v54)
      {
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_7_6();
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_30;
      }

      v58 = *v39;
      v59 = v39[1];
      OUTLINED_FUNCTION_15_4();
      if (v60 == v62 && v101 == v61)
      {
        break;
      }

      v102 = v61;
      v103 = v60;
      OUTLINED_FUNCTION_7_6();
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v64 = v53 == v103 && v54 == v102;
      if (v64 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
LABEL_30:
        outlined destroy of RankedAction();
        outlined destroy of RankedAction();
      }

      else
      {
        v65 = _stringCompareWithSmolCheck(_:_:expecting:)();
        OUTLINED_FUNCTION_9_6();
        outlined destroy of RankedAction();
        outlined destroy of RankedAction();
        if (v65)
        {
          goto LABEL_18;
        }
      }

      if (v29 < v23 || v29 >= v23 + v41)
      {
        OUTLINED_FUNCTION_22_1();
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v29 != v23)
      {
        OUTLINED_FUNCTION_22_1();
        swift_arrayInitWithTakeBackToFront();
      }

      v107 = v23 + v41;
      v23 += v41;
LABEL_43:
      v29 += v41;
      a10 = v29;
    }

    outlined destroy of RankedAction();
    outlined destroy of RankedAction();
LABEL_18:
    if (v29 < v27 || v29 >= v27 + v41)
    {
      OUTLINED_FUNCTION_22_1();
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v29 != v27)
    {
      OUTLINED_FUNCTION_22_1();
      swift_arrayInitWithTakeBackToFront();
    }

    v27 += v41;
    goto LABEL_43;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v27, v45 / v41, v23);
  v66 = v23 + v47 * v41;
  v67 = -v41;
  v68 = v66;
  v102 = -v41;
LABEL_57:
  v69 = v25;
  v98 = v68;
  v100 = v27 + v67;
  while (1)
  {
    if (v66 <= v23)
    {
      a10 = v27;
      goto LABEL_101;
    }

    if (v27 <= v29)
    {
      break;
    }

    v99 = v68;
    v70 = v66 + v67;
    OUTLINED_FUNCTION_12_7();
    v71 = v103;
    outlined init with copy of RankedAction();
    v72 = v104;
    outlined init with copy of RankedAction();
    v73 = *(v105 + 28);
    v74 = *(v72 + v73);
    v75 = *(v71 + v73);
    if (v74 < v75)
    {
      goto LABEL_61;
    }

    if (v75 < v74 || ((v78 = *v104, v77 = v104[1], OUTLINED_FUNCTION_15_4(), v79 = v101, v78 == v80) ? (v81 = v101 == v77) : (v81 = 0), v81 || (OUTLINED_FUNCTION_53(), OUTLINED_FUNCTION_7_6(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)))
    {
      v76 = 0;
      goto LABEL_69;
    }

    v84 = *v103;
    v85 = v103[1];
    OUTLINED_FUNCTION_15_4();
    v89 = v86 == v88 && v79 == v87;
    if (v89 || (v96 = v87, v97 = v86, OUTLINED_FUNCTION_7_6(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
LABEL_61:
      v76 = 1;
LABEL_69:
      v82 = v102;
      goto LABEL_70;
    }

    v90 = v78 == v97 && v77 == v96;
    v82 = v102;
    if (v90 || (OUTLINED_FUNCTION_53(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      v76 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_53();
      v76 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

LABEL_70:
    v25 = v69 + v82;
    OUTLINED_FUNCTION_11_5();
    outlined destroy of RankedAction();
    outlined destroy of RankedAction();
    if (v76)
    {
      v91 = v69 < v27 || v25 >= v27;
      v92 = v100;
      if (v91)
      {
        OUTLINED_FUNCTION_22_1();
        swift_arrayInitWithTakeFrontToBack();
        v27 = v92;
        v68 = v99;
        v67 = v102;
      }

      else
      {
        v68 = v99;
        v42 = v69 == v27;
        v27 = v100;
        v67 = v102;
        if (!v42)
        {
          OUTLINED_FUNCTION_22_1();
          v94 = v93;
          swift_arrayInitWithTakeBackToFront();
          v27 = v92;
          v68 = v94;
        }
      }

      goto LABEL_57;
    }

    if (v69 < v66 || v25 >= v66)
    {
      OUTLINED_FUNCTION_22_1();
      swift_arrayInitWithTakeFrontToBack();
      v69 += v82;
      v66 = v70;
      v68 = v70;
      v67 = v102;
    }

    else
    {
      v68 = v70;
      v42 = v66 == v69;
      v69 += v82;
      v66 = v70;
      v67 = v102;
      if (!v42)
      {
        OUTLINED_FUNCTION_22_1();
        swift_arrayInitWithTakeBackToFront();
        v69 = v25;
        v66 = v70;
        v68 = v70;
      }
    }
  }

  a10 = v27;
  v68 = v98;
LABEL_101:
  v106 = v68;
LABEL_102:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&a10, &v107, &v106);
  OUTLINED_FUNCTION_15_3();
}