uint64_t sub_220015538(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_220015550@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2200155E8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_220015628()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220015668()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2200156B0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2200156F8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_220015790@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_2200157DC(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 128);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_220015838()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, _sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_220015908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2200159D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220015A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_220015B48(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220015BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore011TNCFollowUpB0VSgMd, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_220015D34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore011TNCFollowUpB0VSgMd, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void TNCFollowUpController.__allocating_init(ldmManager:storage:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  v5 = objc_allocWithZone(MEMORY[0x277CFE500]);
  v6 = MEMORY[0x223D75470](0xD000000000000011, 0x800000022002B4F0);
  v7 = [v5 initWithClientIdentifier_];

  if (v7)
  {
    *(v4 + 16) = v7;
    sub_220015538(a1, v4 + 24);
    sub_220015538(a2, v4 + 64);
  }

  else
  {
    __break(1u);
  }
}

void TNCFollowUpController.init(ldmManager:storage:)(__int128 *a1, __int128 *a2)
{
  v5 = objc_allocWithZone(MEMORY[0x277CFE500]);
  v6 = MEMORY[0x223D75470](0xD000000000000011, 0x800000022002B4F0);
  v7 = [v5 initWithClientIdentifier_];

  if (v7)
  {
    *(v2 + 16) = v7;
    sub_220015538(a1, v2 + 24);
    sub_220015538(a2, v2 + 64);
  }

  else
  {
    __break(1u);
  }
}

uint64_t TNCFollowUpController.pendingFollowUpItem()@<X0>(uint64_t *a1@<X8>)
{
  v2 = TNCFollowUpController.pendingCoreFollowUpItem()();
  if (v2)
  {
    TNCFollowUpItem.init(flItem:)(v2, a1);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = type metadata accessor for TNCFollowUpItem(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, v3, 1, v4);
}

void *TNCFollowUpController.pendingCoreFollowUpItem()()
{
  v61[1] = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = (MEMORY[0x28223BE20])();
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v54 - v7;
  v9 = *(v0 + 16);
  v61[0] = 0;
  v10 = [v9 pendingFollowUpItems_];
  v11 = v61[0];
  if (!v10)
  {
    v26 = v61[0];
    v27 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static TNCLogger.default);
    v29 = v27;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      v34 = v27;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v35;
      *v33 = v35;
      _os_log_impl(&dword_220014000, v30, v31, "Failed to get pending follow up items with error: %@", v32, 0xCu);
      outlined destroy of NSObject?(v33, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223D75DE0](v33, -1, -1);
      MEMORY[0x223D75DE0](v32, -1, -1);
    }

    else
    {
    }

    goto LABEL_39;
  }

  v12 = v10;
  type metadata accessor for FLFollowUpController(0, &lazy cache variable for type metadata for FLFollowUpItem, 0x277CFE508);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v11;

  v56 = v6;
  v57 = v2;
  v55 = v0;
  if (v13 >> 62)
  {
LABEL_34:
    if (v13 < 0)
    {
      v51 = v13;
    }

    else
    {
      v51 = v13 & 0xFFFFFFFFFFFFFF8;
    }

    v15 = MEMORY[0x223D757A0](v51);
    v58 = v1;
    v59 = v8;
    if (v15)
    {
      goto LABEL_4;
    }

LABEL_38:

    goto LABEL_39;
  }

  v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v58 = v1;
  v59 = v8;
  if (!v15)
  {
    goto LABEL_38;
  }

LABEL_4:
  v16 = 0;
  v60 = v13 & 0xC000000000000001;
  v8 = (v13 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if (v60)
    {
      v17 = MEMORY[0x223D75720](v16, v13);
    }

    else
    {
      if (v16 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v17 = *(v13 + 8 * v16 + 32);
    }

    v18 = v17;
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v20 = [v17 uniqueIdentifier];
    if (!v20)
    {
      goto LABEL_5;
    }

    v21 = v20;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (v22 == 0xD000000000000033 && 0x800000022002B5E0 == v24)
    {
      break;
    }

    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v1)
    {
      goto LABEL_24;
    }

LABEL_5:

    ++v16;
    if (v19 == v15)
    {
      goto LABEL_38;
    }
  }

LABEL_24:

  v36 = [v18 expirationDate];
  v37 = v57;
  v38 = v58;
  v39 = v59;
  if (!v36)
  {
    goto LABEL_40;
  }

  v40 = v36;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v41 = v56;
  static Date.now.getter();
  LOBYTE(v40) = static Date.< infix(_:_:)();
  v42 = *(v37 + 8);
  v42(v41, v38);
  if ((v40 & 1) == 0)
  {
    v42(v39, v38);
    goto LABEL_40;
  }

  v43 = v55;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  __swift_project_value_buffer(v44, static TNCLogger.default);
  v45 = v18;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v48 = 138412290;
    *(v48 + 4) = v45;
    *v49 = v18;
    v50 = v45;
    _os_log_impl(&dword_220014000, v46, v47, "Item %@ already expired", v48, 0xCu);
    outlined destroy of NSObject?(v49, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223D75DE0](v49, -1, -1);
    MEMORY[0x223D75DE0](v48, -1, -1);
  }

  (*(*v43 + 160))();
  v42(v59, v38);

LABEL_39:
  v18 = 0;
LABEL_40:
  v52 = *MEMORY[0x277D85DE8];
  return v18;
}

void TNCFollowUpController.postFollowUpItem(_:)(void *a1)
{
  v5[3] = &type metadata for TNCFeatureFlags;
  v5[4] = lazy protocol witness table accessor for type TNCFeatureFlags and conformance TNCFeatureFlags();
  v2 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  if (v2)
  {
    v3 = specialized TNCFollowUpController.coreFollowUpItem(from:baseItem:)(a1, 0);
    TNCFollowUpController.postCoreFollowUpItem(_:)(v3);
  }

  else
  {
    lazy protocol witness table accessor for type TNCError and conformance TNCError();
    swift_allocError();
    *v4 = 0;
    v4[1] = 0;
    swift_willThrow();
  }
}

unint64_t lazy protocol witness table accessor for type TNCFeatureFlags and conformance TNCFeatureFlags()
{
  result = lazy protocol witness table cache variable for type TNCFeatureFlags and conformance TNCFeatureFlags;
  if (!lazy protocol witness table cache variable for type TNCFeatureFlags and conformance TNCFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNCFeatureFlags and conformance TNCFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TNCFeatureFlags and conformance TNCFeatureFlags;
  if (!lazy protocol witness table cache variable for type TNCFeatureFlags and conformance TNCFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNCFeatureFlags and conformance TNCFeatureFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TNCError and conformance TNCError()
{
  result = lazy protocol witness table cache variable for type TNCError and conformance TNCError;
  if (!lazy protocol witness table cache variable for type TNCError and conformance TNCError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNCError and conformance TNCError);
  }

  return result;
}

void TNCFollowUpController.postCoreFollowUpItem(_:)(void *a1)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 16);
  v26[0] = 0;
  if ([v3 postFollowUpItem:a1 error:v26])
  {
    v4 = one-time initialization token for default;
    v5 = v26[0];
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static TNCLogger.default);
    v7 = a1;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v7;
      *v11 = a1;
      v12 = v7;
      _os_log_impl(&dword_220014000, v8, v9, "Posted follow up item %@", v10, 0xCu);
      outlined destroy of NSObject?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223D75DE0](v11, -1, -1);
      MEMORY[0x223D75DE0](v10, -1, -1);
    }
  }

  else
  {
    v13 = v26[0];
    v14 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static TNCLogger.default);
    v16 = a1;
    v17 = v14;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412546;
      *(v20 + 4) = v16;
      *v21 = a1;
      *(v20 + 12) = 2112;
      v22 = v16;
      v23 = v14;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v24;
      v21[1] = v24;
      _os_log_impl(&dword_220014000, v18, v19, "Failed to post follow up item:%@ error: %@", v20, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x223D75DE0](v21, -1, -1);
      MEMORY[0x223D75DE0](v20, -1, -1);
    }

    swift_willThrow();
  }

  v25 = *MEMORY[0x277D85DE8];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TNCFollowUpController.repostFollowUpItemIfNeeded()()
{
  v1 = type metadata accessor for TNCFollowUpItem(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v54 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (&v54 - v10);
  MEMORY[0x28223BE20](v9);
  v13 = (&v54 - v12);
  v14 = TNCFollowUpController.pendingCoreFollowUpItem()();
  if (v14)
  {
    v15 = v14;
    v16 = v14;
    TNCFollowUpItem.init(flItem:)(v16, v13);
    TNCFollowUpController.makeFollowUpItem(from:)(v13, v11);
    if (specialized static TNCFollowUpItem.== infix(_:_:)(v11, v13))
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static TNCLogger.default);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_220014000, v18, v19, "Item hasn't changed - no need to repost", v20, 2u);
        MEMORY[0x223D75DE0](v20, -1, -1);
      }
    }

    else
    {
      v25 = v16;
      v26 = specialized TNCFollowUpController.coreFollowUpItem(from:baseItem:)(v11, v15);

      TNCFollowUpController.postCoreFollowUpItem(_:)(v26);
      if (!v0)
      {
        if (one-time initialization token for default != -1)
        {
          swift_once();
        }

        v42 = type metadata accessor for Logger();
        __swift_project_value_buffer(v42, static TNCLogger.default);
        outlined init with copy of TNCFollowUpItem(v11, v8, type metadata accessor for TNCFollowUpItem);
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v57 = v25;
          v46 = v45;
          v55 = swift_slowAlloc();
          v58 = v55;
          *v46 = 136315138;
          v54 = TNCFollowUpItem.description.getter();
          v48 = v47;
          v56 = type metadata accessor for TNCFollowUpItem;
          outlined destroy of TNCFollowUpItem(v8, type metadata accessor for TNCFollowUpItem);
          v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v48, &v58);

          *(v46 + 4) = v49;
          _os_log_impl(&dword_220014000, v43, v44, "Re-posted follow up item %s", v46, 0xCu);
          v50 = v55;
          __swift_destroy_boxed_opaque_existential_1Tm(v55);
          MEMORY[0x223D75DE0](v50, -1, -1);
          MEMORY[0x223D75DE0](v46, -1, -1);

          v51 = v11;
          v52 = v56;
        }

        else
        {

          v52 = type metadata accessor for TNCFollowUpItem;
          outlined destroy of TNCFollowUpItem(v8, type metadata accessor for TNCFollowUpItem);
          v51 = v11;
        }

        v53 = v52;
        goto LABEL_25;
      }

      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, static TNCLogger.default);
      outlined init with copy of TNCFollowUpItem(v11, v5, type metadata accessor for TNCFollowUpItem);
      v28 = v0;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v58 = v57;
        *v31 = 136315394;
        v55 = v29;
        v32 = TNCFollowUpItem.description.getter();
        v33 = v25;
        v35 = v34;
        outlined destroy of TNCFollowUpItem(v5, type metadata accessor for TNCFollowUpItem);
        v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v35, &v58);
        v25 = v33;

        *(v31 + 4) = v36;
        *(v31 + 12) = 2112;
        v37 = v0;
        v38 = _swift_stdlib_bridgeErrorToNSError();
        *(v31 + 14) = v38;
        v39 = v55;
        v40 = v56;
        *v56 = v38;
        _os_log_impl(&dword_220014000, v39, v30, "Failed to re-post follow up item:%s error: %@", v31, 0x16u);
        outlined destroy of NSObject?(v40, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x223D75DE0](v40, -1, -1);
        v41 = v57;
        __swift_destroy_boxed_opaque_existential_1Tm(v57);
        MEMORY[0x223D75DE0](v41, -1, -1);
        MEMORY[0x223D75DE0](v31, -1, -1);
      }

      else
      {

        outlined destroy of TNCFollowUpItem(v5, type metadata accessor for TNCFollowUpItem);
      }

      swift_willThrow();
    }

    v52 = type metadata accessor for TNCFollowUpItem;
    v51 = v11;
    v53 = type metadata accessor for TNCFollowUpItem;
LABEL_25:
    outlined destroy of TNCFollowUpItem(v51, v53);
    outlined destroy of TNCFollowUpItem(v13, v52);
    return;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static TNCLogger.default);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_220014000, v22, v23, "No item to re-post", v24, 2u);
    MEMORY[0x223D75DE0](v24, -1, -1);
  }
}

uint64_t TNCFollowUpController.makeFollowUpItem(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of TNCFollowUpItem(a1, a2, type metadata accessor for TNCFollowUpItem);
  v4 = v2[6];
  v5 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v4);
  if ((*(v5 + 8))(v4, v5))
  {
    v6 = v2[11];
    v7 = v2[12];
    __swift_project_boxed_opaque_existential_1(v2 + 8, v6);
    v19 = 1;
    v8 = (*(v7 + 24))(&v19, v6, v7);
  }

  else
  {
    v8 = 0;
  }

  result = type metadata accessor for TNCFollowUpItem(0);
  *(a2 + *(result + 40)) = v8 & 1;
  v10 = *(result + 44);
  if (!*(*(a2 + v10) + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22ThreatNotificationCore17TNCFollowUpActionVGMd, &_ss23_ContiguousArrayStorageCy22ThreatNotificationCore17TNCFollowUpActionVGMR);
    v11 = (type metadata accessor for TNCFollowUpAction(0) - 8);
    v12 = *(*v11 + 72);
    v13 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_22002A5A0;
    v15 = v14 + v13;
    *v15 = 0xD000000000000038;
    *(v15 + 8) = 0x800000022002B560;
    *(v15 + 16) = xmmword_22002A5B0;
    v16 = v11[8];
    v17 = type metadata accessor for URL();
    v18 = *(*(v17 - 8) + 56);
    v18(v15 + v16, 1, 1, v17);
    *(v15 + v11[9]) = 0;
    v18(v15 + v11[10], 1, 1, v17);
    *(v15 + v11[11]) = xmmword_22002A5C0;
    *(v15 + v11[12]) = 0;

    *(a2 + v10) = v14;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TNCFollowUpController.clearFollowUpItem()()
{
  v19[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  v19[0] = 0;
  if ([v1 clearPendingFollowUpItems_])
  {
    v2 = one-time initialization token for default;
    v3 = v19[0];
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static TNCLogger.default);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_220014000, v5, v6, "Cleared follow up item", v7, 2u);
      MEMORY[0x223D75DE0](v7, -1, -1);
    }
  }

  else
  {
    v8 = v19[0];
    v9 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static TNCLogger.default);
    v11 = v9;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = v9;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_220014000, v12, v13, "Failed to clear follow up item with error: %@", v14, 0xCu);
      outlined destroy of NSObject?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223D75DE0](v15, -1, -1);
      MEMORY[0x223D75DE0](v14, -1, -1);
    }

    swift_willThrow();
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t TNCFollowUpController.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  return v0;
}

uint64_t TNCFollowUpController.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

void TNCFollowUpController.inject(coreFollowUpController:)(uint64_t a1)
{
  outlined init with copy of Any(a1, v4);
  type metadata accessor for FLFollowUpController(0, &lazy cache variable for type metadata for FLFollowUpController, 0x277CFE500);
  if (swift_dynamicCast())
  {
    v2 = *(v1 + 16);
    *(v1 + 16) = v3;
  }
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance FLNotificationOptions(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance FLNotificationOptions(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance FLNotificationOptions@<X0>(uint64_t *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x223D75470](v2);

  *a1 = v3;
  return result;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance FLNotificationOptions()
{
  v1 = *v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x223D75520](v2);

  return v3;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance FLNotificationOptions()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FLNotificationOptions()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance FLNotificationOptions(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance FLNotificationOptions@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x223D75470](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance FLNotificationOptions@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance FLNotificationOptions(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FLNotificationOptions and conformance FLNotificationOptions(&lazy protocol witness table cache variable for type FLNotificationOptions and conformance FLNotificationOptions);
  v3 = lazy protocol witness table accessor for type FLNotificationOptions and conformance FLNotificationOptions(&lazy protocol witness table cache variable for type FLNotificationOptions and conformance FLNotificationOptions);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id specialized TNCFollowUpController.coreFollowUpItem(from:baseItem:)(void *a1, void *a2)
{
  v4 = type metadata accessor for TNCFollowUpAction(0);
  v53 = *(v4 - 8);
  v5 = *(v53 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore011TNCFollowUpB0VSgMd, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v55 = &v52 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v52 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v52 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v52 - v20;
  if (a2)
  {
    v22 = a2;
  }

  else
  {
    v22 = [objc_allocWithZone(MEMORY[0x277CFE508]) init];
  }

  v56 = type metadata accessor for TNCFollowUpItem(0);
  v23 = *(a1 + *(v56 + 36));
  v24 = a2;
  if (v23)
  {
    v54 = v23;
  }

  else
  {
    v54 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  v25 = *a1;
  v26 = a1[1];

  v27 = MEMORY[0x223D75470](v25, v26);
  [v22 setUniqueIdentifier_];

  v28 = MEMORY[0x223D75470](0xD000000000000030, 0x800000022002B5A0);
  [v22 setExtensionIdentifier_];

  if (a1[3])
  {
    v29 = MEMORY[0x223D75470](a1[2]);
  }

  else
  {
    v29 = 0;
  }

  [v22 setGroupIdentifier_];

  if (a1[5])
  {
    v30 = MEMORY[0x223D75470](a1[4]);
  }

  else
  {
    v30 = 0;
  }

  [v22 setTitle_];

  if (a1[7])
  {
    v31 = MEMORY[0x223D75470](a1[6]);
  }

  else
  {
    v31 = 0;
  }

  [v22 setInformativeText_];

  [v22 setDisplayStyle_];
  v32 = v56;
  if (*(a1 + *(v56 + 40)) == 1)
  {
    [v22 setDisplayStyle_];
  }

  outlined init with copy of Date?(a1 + v32[8], v14, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    outlined destroy of NSObject?(v14, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    (*(v16 + 32))(v21, v14, v15);
    v33 = v52;
    static Date.now.getter();
    v34 = static Date.> infix(_:_:)();
    v35 = *(v16 + 8);
    v35(v33, v15);
    if (v34)
    {
      isa = Date._bridgeToObjectiveC()().super.isa;
      [v22 setExpirationDate_];
    }

    v35(v21, v15);
  }

  v37 = v54;
  v38 = *MEMORY[0x277CFE4C0];
  *&v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v59 + 1) = v39;
  AnyHashable.init<A>(_:)();
  v60 = MEMORY[0x277D839B0];
  LOBYTE(v59) = 1;
  outlined init with take of Any(&v59, v58);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = v37;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v58, v61, isUniquelyReferenced_nonNull_native);
  outlined destroy of AnyHashable(v61);
  v41 = Dictionary._bridgeToObjectiveC()().super.isa;
  [v22 setUserInfo_];

  v42 = *(a1 + v32[11]);
  v43 = *(v42 + 16);
  if (v43)
  {
    v61[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v44 = v42 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
    v45 = *(v53 + 72);
    do
    {
      outlined init with copy of TNCFollowUpItem(v44, v7, type metadata accessor for TNCFollowUpAction);
      TNCFollowUpAction.flAction.getter();
      outlined destroy of TNCFollowUpItem(v7, type metadata accessor for TNCFollowUpAction);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v46 = *(v61[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v44 += v45;
      --v43;
    }

    while (v43);

    v32 = v56;
  }

  else
  {
  }

  type metadata accessor for FLFollowUpController(0, &lazy cache variable for type metadata for FLFollowUpAction, 0x277CFE4F8);
  v47 = Array._bridgeToObjectiveC()().super.isa;

  [v22 setActions_];

  v48 = v55;
  outlined init with copy of Date?(a1 + v32[12], v55, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMd, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMR);
  v49 = type metadata accessor for TNCFollowUpNotification(0);
  if ((*(*(v49 - 8) + 48))(v48, 1, v49) == 1)
  {
    outlined destroy of NSObject?(v48, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMd, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMR);
    v50 = 0;
  }

  else
  {
    v50 = TNCFollowUpNotification.flNotification.getter();
    outlined destroy of TNCFollowUpItem(v48, type metadata accessor for TNCFollowUpNotification);
  }

  [v22 setNotification_];

  return v22;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void type metadata accessor for FLNotificationOptions()
{
  if (!lazy cache variable for type metadata for FLNotificationOptions)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for FLNotificationOptions);
    }
  }
}

uint64_t lazy protocol witness table accessor for type FLNotificationOptions and conformance FLNotificationOptions(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLNotificationOptions();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t outlined init with copy of TNCFollowUpItem(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of NSObject?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined destroy of TNCFollowUpItem(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for FLFollowUpController(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t TNCOnBoardingController.__allocating_init(followUpController:storage:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_220015538(a1, v4 + 16);
  sub_220015538(a2, v4 + 56);
  return v4;
}

uint64_t TNCOnBoardingController.init(followUpController:storage:)(__int128 *a1, __int128 *a2)
{
  sub_220015538(a1, v2 + 16);
  sub_220015538(a2, v2 + 56);
  return v2;
}

uint64_t TNCOnBoardingController.isOnboardingFlowRequired.getter()
{
  v0 = TNCOnBoardingController.onBoardingRequiredWithSideEffect()();
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static TNCLogger.default);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    if (v0)
    {
      v6 = 29545;
    }

    else
    {
      v6 = 0x746F6E207369;
    }

    if (v0)
    {
      v7 = 0xE200000000000000;
    }

    else
    {
      v7 = 0xE600000000000000;
    }

    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_220014000, v2, v3, "LDMEnabledOnBoardingViewController %s required", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223D75DE0](v5, -1, -1);
    MEMORY[0x223D75DE0](v4, -1, -1);
  }

  return v0 & 1;
}

uint64_t TNCOnBoardingController.onBoardingRequiredWithSideEffect()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  static TaskPriority.background.getter();
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  outlined init with copy of TNCKVStoring((v0 + 2), v11);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  sub_220015538(v11, v6 + 32);
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in TNCOnBoardingController.onBoardingRequiredWithSideEffect(), v6);

  outlined destroy of NSObject?(v4, &_sScPSgMd, &_sScPSgMR);
  v7 = v0[10];
  v8 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v7);
  LOBYTE(v11[0]) = 2;
  return (*(v8 + 24))(v11, v7, v8) & 1;
}

void TNCOnBoardingController.isOnboardingFlowRequired.setter(char a1)
{
  outlined init with copy of TNCKVStoring(v1 + 56, v12);
  v3 = v13;
  v4 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  if (a1)
  {
    LOBYTE(v11[0]) = 1;
    v5 = MEMORY[0x277D839B0];
  }

  else
  {
    v5 = 0;
    memset(v11, 0, 24);
  }

  v11[3] = v5;
  v10 = 2;
  (*(v4 + 48))(v11, &v10, v3, v4);
  outlined destroy of NSObject?(v11, &_sypSgMd, &_sypSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static TNCLogger.default);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1 & 1;
    _os_log_impl(&dword_220014000, v7, v8, "LDMEnabledOnBoardingViewController did set onboarding flow required to %{BOOL}d", v9, 8u);
    MEMORY[0x223D75DE0](v9, -1, -1);
  }
}

void (*TNCOnBoardingController.isOnboardingFlowRequired.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = TNCOnBoardingController.isOnboardingFlowRequired.getter() & 1;
  return TNCOnBoardingController.isOnboardingFlowRequired.modify;
}

uint64_t TNCOnBoardingController.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  return v0;
}

uint64_t TNCOnBoardingController.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

void (*protocol witness for TNCOnBoardingControlling.isOnboardingFlowRequired.modify in conformance TNCOnBoardingController(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 120))();
  return protocol witness for TNCOnBoardingControlling.isOnboardingFlowRequired.modify in conformance TNCOnBoardingController;
}

void protocol witness for TNCOnBoardingControlling.isOnboardingFlowRequired.modify in conformance TNCOnBoardingController(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t closure #1 in TNCOnBoardingController.onBoardingRequiredWithSideEffect()()
{
  v1 = *(v0 + 16);
  type metadata accessor for LockdownModeManager();
  v2 = static LockdownModeManager.shared.getter();
  LockdownModeManager.enabledInAccount.getter();

  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  (*(v4 + 32))(v3, v4);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of TaskPriority?(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of NSObject?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t outlined init with copy of TNCKVStoring(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t partial apply for closure #1 in TNCOnBoardingController.onBoardingRequiredWithSideEffect()(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in TNCOnBoardingController.onBoardingRequiredWithSideEffect();

  return closure #1 in TNCOnBoardingController.onBoardingRequiredWithSideEffect()(a1, v4, v5, v1 + 32);
}

uint64_t partial apply for closure #1 in TNCOnBoardingController.onBoardingRequiredWithSideEffect()()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_11(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in TNCOnBoardingController.onBoardingRequiredWithSideEffect();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

ThreatNotificationCore::TNCStorageKey_optional __swiftcall TNCStorageKey.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TNCStorageKey.init(rawValue:), v3);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t TNCStorageKey.rawValue.getter()
{
  v1 = 0xD000000000000030;
  v2 = 0xD00000000000003CLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000042;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000035;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

unint64_t lazy protocol witness table accessor for type TNCStorageKey and conformance TNCStorageKey()
{
  result = lazy protocol witness table cache variable for type TNCStorageKey and conformance TNCStorageKey;
  if (!lazy protocol witness table cache variable for type TNCStorageKey and conformance TNCStorageKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNCStorageKey and conformance TNCStorageKey);
  }

  return result;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000030;
  v3 = "rver";
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = "torage.cfuViewed";
      v5 = 0xD00000000000003CLL;
    }

    else
    {
      v6 = "torage.ldmOnBoardingRequired";
      v5 = 0xD000000000000042;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000030;
    }

    else
    {
      v5 = 0xD000000000000035;
    }

    if (v4)
    {
      v6 = "torage.analyticsCache";
    }

    else
    {
      v6 = "rver";
    }
  }

  if (a2 > 1u)
  {
    v3 = "torage.cfuViewed";
    v7 = 0xD00000000000003CLL;
    v8 = "torage.ldmOnBoardingRequired";
    v2 = 0xD000000000000042;
    v9 = a2 == 2;
  }

  else
  {
    v7 = 0xD000000000000035;
    v8 = "torage.analyticsCache";
    v9 = a2 == 0;
  }

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = v2;
  }

  if (v9)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (v5 == v10 && (v6 | 0x8000000000000000) == (v11 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TNCStorageKey()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TNCStorageKey()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TNCStorageKey()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance TNCStorageKey(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000030;
  v3 = "torage.cfuViewed";
  v4 = 0xD00000000000003CLL;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000042;
    v3 = "torage.ldmOnBoardingRequired";
  }

  if (*v1)
  {
    v5 = "torage.analyticsCache";
  }

  else
  {
    v2 = 0xD000000000000035;
    v5 = "rver";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v2 = v4;
    v6 = v3;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

unint64_t lazy protocol witness table accessor for type [TNCStorageKey] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [TNCStorageKey] and conformance [A];
  if (!lazy protocol witness table cache variable for type [TNCStorageKey] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay22ThreatNotificationCore13TNCStorageKeyOGMd, &_sSay22ThreatNotificationCore13TNCStorageKeyOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [TNCStorageKey] and conformance [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TNCStorageKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TNCStorageKey(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Int TNCFeatureFlags.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x223D758A0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TNCFeatureFlags()
{
  Hasher.init(_seed:)();
  MEMORY[0x223D758A0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TNCFeatureFlags()
{
  Hasher.init(_seed:)();
  MEMORY[0x223D758A0](0);
  return Hasher._finalize()();
}

uint64_t getEnumTagSinglePayload for TNCFeatureFlags(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TNCFeatureFlags(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t Task<>.init(priority:timeout:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v17 - v12;
  outlined init with copy of TaskPriority?(a1, &v17 - v12);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = a4;
  *(v14 + 40) = a2;
  *(v14 + 48) = a3;
  *(v14 + 56) = a5;
  v15 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(0, 0, v13, &async function pointer to partial apply for closure #1 in Task<>.init(priority:timeout:operation:), v14);
  outlined destroy of TaskPriority?(a1);
  return v15;
}

uint64_t closure #1 in Task<>.init(priority:timeout:operation:)(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  *v13 = v7;
  v13[1] = partial apply for closure #1 in TNCOnBoardingController.onBoardingRequiredWithSideEffect();

  return static Task<>.run(operation:withTimeout:)(a1, a5, a6, a7, a2);
}

uint64_t partial apply for closure #1 in Task<>.init(priority:timeout:operation:)(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in TNCOnBoardingController.onBoardingRequiredWithSideEffect();

  return closure #1 in Task<>.init(priority:timeout:operation:)(a1, v9, v4, v5, v7, v8, v6);
}

uint64_t static Task<>.run(operation:withTimeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 48) = a4;
  *(v5 + 40) = a5;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 16) = a1;
  return MEMORY[0x2822009F8](static Task<>.run(operation:withTimeout:), 0, 0);
}

uint64_t static Task<>.run(operation:withTimeout:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = static Task<>.run(operation:withTimeout:);
  v6 = *(v0 + 48);
  v7 = *(v0 + 16);

  return (withUnsafeThrowingContinuation<A>(isolation:_:))(v7, 0, 0, partial apply for closure #1 in static Task<>.run(operation:withTimeout:), v3, v6);
}

{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](static Task<>.run(operation:withTimeout:), 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26[-1] - v11;
  v27[0] = a4;
  v27[1] = a5;
  outlined init with copy of TaskPriority?(a3, &v26[-1] - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of TaskPriority?(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter();
      v22 = *(v21 + 16);
      _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfcBoSRys4Int8VGXEfU_(v21 + 32, v27, v26);

      v23 = v26[0];
      outlined destroy of TaskPriority?(a3);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3);
  if (v20 | v18)
  {
    v26[1] = 0;
    v26[2] = 0;
    v26[3] = v18;
    v26[4] = v20;
  }

  return swift_task_create();
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in static Task<>.run(operation:withTimeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - v12;
  type metadata accessor for TimeoutActor();
  v14 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v14 + 112) = 0;
  v15 = type metadata accessor for TaskPriority();
  v16 = *(*(v15 - 8) + 56);
  v16(v13, 1, 1, v15);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a4;
  v17[5] = a2;
  v17[6] = a3;
  v17[7] = v14;
  v17[8] = a1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #1 in closure #1 in static Task<>.run(operation:withTimeout:), v17);

  v16(v13, 1, 1, v15);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = a4;
  *(v18 + 40) = a5;
  *(v18 + 48) = v14;
  *(v18 + 56) = a1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #2 in closure #1 in static Task<>.run(operation:withTimeout:), v18);
}

uint64_t closure #1 in closure #1 in static Task<>.run(operation:withTimeout:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[3] = a6;
  v10 = *(a8 - 8);
  v8[6] = v10;
  v8[7] = v10;
  v11 = *(v10 + 64) + 15;
  v8[8] = swift_task_alloc();
  v12 = swift_task_alloc();
  v8[9] = v12;
  v16 = (a4 + *a4);
  v13 = a4[1];
  v14 = swift_task_alloc();
  v8[10] = v14;
  *v14 = v8;
  v14[1] = closure #1 in closure #1 in static Task<>.run(operation:withTimeout:);

  return v16(v12);
}

uint64_t closure #1 in closure #1 in static Task<>.run(operation:withTimeout:)()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = closure #1 in closure #1 in static Task<>.run(operation:withTimeout:);
    v5 = 0;
  }

  else
  {
    v5 = *(v2 + 24);
    v4 = closure #1 in closure #1 in static Task<>.run(operation:withTimeout:);
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{
  v1 = *(v0 + 24);
  if (*(v1 + 112))
  {
    v2 = closure #1 in closure #1 in static Task<>.run(operation:withTimeout:);
  }

  else
  {
    *(v1 + 112) = 1;
    v2 = closure #1 in closure #1 in static Task<>.run(operation:withTimeout:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  (*(v4 + 16))(v1, v2, v5);
  (*(v3 + 32))(*(*(v6 + 64) + 40), v1, v5);
  swift_continuation_throwingResume();
  (*(v4 + 8))(v2, v5);
  v8 = v0[8];
  v7 = v0[9];

  v9 = v0[1];

  return v9();
}

{
  (*(v0[7] + 8))(v0[9], v0[5]);
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[4];
  v2 = v0[5];
  v0[2] = v0[11];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  UnsafeContinuation.resume(throwing:)((v0 + 2), v1, v2, v3);
  v5 = v0[8];
  v4 = v0[9];

  v6 = v0[1];

  return v6();
}

{

  v2 = *(v0 + 64);
  v1 = *(v0 + 72);

  v3 = *(v0 + 8);

  return v3();
}

{
  return MEMORY[0x2822009F8](closure #1 in closure #1 in static Task<>.run(operation:withTimeout:), *(v0 + 24), 0);
}

{
  v1 = *(v0 + 24);
  if (*(v1 + 112))
  {
    v2 = closure #1 in closure #1 in static Task<>.run(operation:withTimeout:);
  }

  else
  {
    *(v1 + 112) = 1;
    v2 = closure #1 in closure #1 in static Task<>.run(operation:withTimeout:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t UnsafeContinuation.resume(throwing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocError();
  (*(*(a4 - 8) + 32))(v8, a1, a4);

  return MEMORY[0x282200958](a2, v7);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of TaskPriority?(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of TaskPriority?(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      outlined destroy of TaskPriority?(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t closure #2 in closure #1 in static Task<>.run(operation:withTimeout:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 40) = a5;
  *(v7 + 32) = a1;
  return MEMORY[0x2822009F8](closure #2 in closure #1 in static Task<>.run(operation:withTimeout:), 0, 0);
}

uint64_t closure #2 in closure #1 in static Task<>.run(operation:withTimeout:)(unint64_t a1)
{
  v3 = *(v1 + 32) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x282200480](a1);
  }

  v4 = v3;
  v5 = *(MEMORY[0x277D857E8] + 4);
  v6 = swift_task_alloc();
  *(v1 + 64) = v6;
  *v6 = v1;
  v6[1] = closure #2 in closure #1 in static Task<>.run(operation:withTimeout:);
  a1 = v4;

  return MEMORY[0x282200480](a1);
}

uint64_t closure #2 in closure #1 in static Task<>.run(operation:withTimeout:)()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 40);
  v6 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = closure #2 in closure #1 in static Task<>.run(operation:withTimeout:);
  }

  else
  {
    v4 = closure #2 in closure #1 in static Task<>.run(operation:withTimeout:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 40);
  if (*(v1 + 112))
  {
    return (*(v0 + 8))();
  }

  *(v1 + 112) = 1;
  return MEMORY[0x2822009F8](closure #2 in closure #1 in static Task<>.run(operation:withTimeout:), 0, 0);
}

{
  v1 = v0[6];
  v2 = v0[7];
  lazy protocol witness table accessor for type TNCError and conformance TNCError();
  v3 = swift_allocError();
  *v4 = xmmword_22002AA80;
  v0[3] = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  UnsafeContinuation.resume(throwing:)((v0 + 3), v1, v2, v5);
  v6 = v0[1];

  return v6();
}

{
  v1 = v0[6];
  v2 = v0[7];
  v0[2] = v0[9];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  UnsafeContinuation.resume(throwing:)((v0 + 2), v1, v2, v3);
  v4 = v0[1];

  return v4();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 40);
  if (*(v1 + 112))
  {
    v2 = closure #2 in closure #1 in static Task<>.run(operation:withTimeout:);
  }

  else
  {
    *(v1 + 112) = 1;
    v2 = closure #2 in closure #1 in static Task<>.run(operation:withTimeout:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t withUnsafeThrowingContinuation<A>(isolation:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x2822009F8](withUnsafeThrowingContinuation<A>(isolation:_:), v6, v8);
}

uint64_t withUnsafeThrowingContinuation<A>(isolation:_:)()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = withUnsafeThrowingContinuation<A>(isolation:_:);
  v4 = swift_continuation_init();
  v2(v4);

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
  }

  v3 = *(v1 + 8);

  return v3();
}

uint64_t TimeoutActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
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
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfcBoSRys4Int8VGXEfU_@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];

    result = swift_task_create();
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in static Task<>.run(operation:withTimeout:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in static Task<>.run(operation:withTimeout:)(a1, v4, v5, v7, v8, v9, v10, v6);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t partial apply for closure #2 in closure #1 in static Task<>.run(operation:withTimeout:)(uint64_t a1)
{
  v5 = *(v1 + 3);
  v4 = *(v1 + 4);
  v6 = *(v1 + 2);
  v7 = v1[5];
  v9 = *(v1 + 6);
  v8 = *(v1 + 7);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in TNCOnBoardingController.onBoardingRequiredWithSideEffect();

  return closure #2 in closure #1 in static Task<>.run(operation:withTimeout:)(v7, a1, v6, v5, v9, v8, v4);
}

uint64_t one-time initialization function for emergencyAssistance()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for URL();
  __swift_allocate_value_buffer(v4, static ThreatNotification.Links.emergencyAssistance);
  v5 = __swift_project_value_buffer(v4, static ThreatNotification.Links.emergencyAssistance);
  URL.init(string:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t static ThreatNotification.Links.emergencyAssistance.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for emergencyAssistance != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for URL();
  v3 = __swift_project_value_buffer(v2, static ThreatNotification.Links.emergencyAssistance);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for actionItemButtonIdentifier()
{
  _StringGuts.grow(_:)(27);

  result = MEMORY[0x223D75500](0xD000000000000019, 0x800000022002BC60);
  static ThreatNotification.Screens.actionItemButtonIdentifier = 0xD000000000000042;
  *algn_27CF20918 = 0x800000022002BB00;
  return result;
}

uint64_t one-time initialization function for actionItemFooterIdentifier()
{
  _StringGuts.grow(_:)(27);

  result = MEMORY[0x223D75500](0xD000000000000019, 0x800000022002BC40);
  static ThreatNotification.Screens.actionItemFooterIdentifier = 0xD000000000000042;
  *algn_27CF20928 = 0x800000022002BB00;
  return result;
}

uint64_t one-time initialization function for emergencyAssistanceIdentifier()
{
  _StringGuts.grow(_:)(30);

  result = MEMORY[0x223D75500](0xD00000000000001CLL, 0x800000022002BC20);
  static ThreatNotification.Screens.LDMEnabled.ActionItem.emergencyAssistanceIdentifier = 0xD000000000000042;
  *algn_27CF20938 = 0x800000022002BB00;
  return result;
}

uint64_t one-time initialization function for shareAnalyticsIdentifier()
{
  _StringGuts.grow(_:)(25);

  result = MEMORY[0x223D75500](0xD000000000000017, 0x800000022002BC00);
  static ThreatNotification.Screens.LDMEnabled.ActionItem.shareAnalyticsIdentifier = 0xD000000000000042;
  *algn_27CF20948 = 0x800000022002BB00;
  return result;
}

uint64_t static ThreatNotification.Screens.actionItemButtonIdentifier.getter(void *a1, void *a2, void *a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  v3 = *a2;
  v4 = *a3;

  return v3;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

id one-time initialization function for current()
{
  type metadata accessor for NSBundle.Sentinel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  static NSBundle.current = result;
  return result;
}

uint64_t specialized static TNCError.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  switch(v3)
  {
    case 0uLL:
      if (!v5)
      {
        outlined consume of TNCError(*a1, 0);
        v6 = v4;
        v7 = 0;
        goto LABEL_15;
      }

      goto LABEL_11;
    case 1uLL:
      if (v5 == 1)
      {
        v8 = 1;
        outlined consume of TNCError(*a1, 1uLL);
        outlined consume of TNCError(v4, 1uLL);
        return v8;
      }

      goto LABEL_11;
    case 2uLL:
      if (v5 == 2)
      {
        outlined consume of TNCError(*a1, 2uLL);
        v6 = v4;
        v7 = 2;
LABEL_15:
        outlined consume of TNCError(v6, v7);
        return 1;
      }

      goto LABEL_11;
  }

  if (v5 < 3)
  {
LABEL_11:
    outlined copy of TNCError(*a2, *(a2 + 8));
    outlined copy of TNCError(v2, v3);
    outlined consume of TNCError(v2, v3);
    outlined consume of TNCError(v4, v5);
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    outlined copy of TNCError(*a1, v3);
    outlined copy of TNCError(v2, v3);
    outlined consume of TNCError(v2, v3);
    v6 = v2;
    v7 = v3;
    goto LABEL_15;
  }

  v10 = *a1;
  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  outlined copy of TNCError(v4, v5);
  outlined copy of TNCError(v2, v3);
  outlined consume of TNCError(v2, v3);
  outlined consume of TNCError(v4, v5);
  return v11 & 1;
}

uint64_t get_enum_tag_for_layout_string_22ThreatNotificationCore8TNCErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for TNCError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TNCError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for TNCError(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t outlined copy of TNCError(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t outlined consume of TNCError(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t TNCKVStorage.__allocating_init()()
{
  v0 = swift_allocObject();
  TNCKVStorage.init()();
  return v0;
}

uint64_t TNCKVStorage.init()()
{
  v1 = v0;
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    if (v4 == 0xD000000000000030 && 0x800000022002B5A0 == v6)
    {
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v8 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v17 = [objc_opt_self() standardUserDefaults];
LABEL_20:
    v11 = v17;
    goto LABEL_21;
  }

LABEL_7:
  v9 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v10 = MEMORY[0x223D75470](0xD000000000000030, 0x800000022002B5A0);
  v11 = [v9 initWithSuiteName_];

  if (!v11)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static TNCLogger.default);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v24 = v22;
      *v21 = 136315138;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x800000022002B5A0, &v24);
      _os_log_impl(&dword_220014000, v19, v20, "Failed to create UserDefaults with suite name: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x223D75DE0](v22, -1, -1);
      MEMORY[0x223D75DE0](v21, -1, -1);
    }

    v17 = [objc_opt_self() standardUserDefaults];
    goto LABEL_20;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static TNCLogger.default);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136315138;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x800000022002B5A0, &v24);
    _os_log_impl(&dword_220014000, v13, v14, "Created UserDefaults with suite name: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x223D75DE0](v16, -1, -1);
    MEMORY[0x223D75DE0](v15, -1, -1);
  }

LABEL_21:
  *(v1 + 16) = v11;
  return v1;
}

Swift::Void __swiftcall TNCKVStorage.clear()()
{
  v3 = 0u;
  v4 = 0u;
  v2 = 0;
  v1 = *(*v0 + 136);
  v1(&v3, &v2);
  outlined destroy of Any?(&v3);
  v3 = 0u;
  v4 = 0u;
  v2 = 1;
  v1(&v3, &v2);
  outlined destroy of Any?(&v3);
  v3 = 0u;
  v4 = 0u;
  v2 = 2;
  v1(&v3, &v2);
  outlined destroy of Any?(&v3);
  v3 = 0u;
  v4 = 0u;
  v2 = 3;
  v1(&v3, &v2);
  outlined destroy of Any?(&v3);
}

double TNCKVStorage.value(for:)@<D0>(_BYTE *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = 0xD000000000000030;
  v5 = *a1;
  v6 = *(v2 + 16);
  v7 = "torage.cfuViewed";
  v8 = 0xD00000000000003CLL;
  if (v5 != 2)
  {
    v8 = 0xD000000000000042;
    v7 = "torage.ldmOnBoardingRequired";
  }

  if (*a1)
  {
    v9 = "torage.analyticsCache";
  }

  else
  {
    v4 = 0xD000000000000035;
    v9 = "rver";
  }

  if (*a1 <= 1u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v8;
  }

  if (v5 <= 1)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  v12 = MEMORY[0x223D75470](v10, v11 | 0x8000000000000000);

  v13 = [v6 objectForKey_];

  if (v13)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t TNCKVStorage.decodedValue<A>(for:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for Optional();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v22 - v10;
  v12 = *a1;
  v13 = type metadata accessor for PropertyListDecoder();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  LOBYTE(v22[0]) = v12;
  (*(*v4 + 104))(v23, v22);
  if (v23[3])
  {
    if (swift_dynamicCast())
    {
      v16 = v22[0];
      v17 = v22[1];
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      outlined consume of Data._Representation(v16, v17);

      v18 = *(a2 - 8);
      v19 = *(v18 + 56);
      v19(v11, 0, 1, a2);
      (*(v18 + 32))(a3, v11, a2);
      return (v19)(a3, 0, 1, a2);
    }
  }

  else
  {

    outlined destroy of Any?(v23);
  }

  return (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
}

id TNCKVStorage.set(value:for:)(uint64_t a1, unsigned __int8 *a2)
{
  v3 = v2;
  v5 = *a2;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static TNCLogger.default);
  outlined init with copy of Any?(a1, v41);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v40 = v10;
    *v9 = 136315394;
    v11 = "rver";
    v12 = 0xD000000000000035;
    v13 = "torage.cfuViewed";
    v14 = 0xD00000000000003CLL;
    if (v5 != 2)
    {
      v14 = 0xD000000000000042;
      v13 = "torage.ldmOnBoardingRequired";
    }

    if (v5)
    {
      v12 = 0xD000000000000030;
      v11 = "torage.analyticsCache";
    }

    if (v5 <= 1)
    {
      v15 = v12;
    }

    else
    {
      v15 = v14;
    }

    if (v5 <= 1)
    {
      v16 = v11;
    }

    else
    {
      v16 = v13;
    }

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16 | 0x8000000000000000, &v40);

    *(v9 + 4) = v17;
    *(v9 + 12) = 2080;
    outlined init with copy of Any?(v41, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    outlined destroy of Any?(v41);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v40);

    *(v9 + 14) = v21;
    _os_log_impl(&dword_220014000, v7, v8, "KVStore - setting %s to %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D75DE0](v10, -1, -1);
    MEMORY[0x223D75DE0](v9, -1, -1);
  }

  else
  {

    outlined destroy of Any?(v41);
  }

  v22 = *(v3 + 16);
  outlined init with copy of Any?(a1, v41);
  v23 = v42;
  if (v42)
  {
    v24 = __swift_project_boxed_opaque_existential_1(v41, v42);
    v38 = &v38;
    v25 = *(v23 - 8);
    v26 = *(v25 + 64);
    MEMORY[0x28223BE20](v24);
    v28 = &v39[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v25 + 16))(v28);
    v29 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v25 + 8))(v28, v23);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
  }

  else
  {
    v29 = 0;
  }

  v30 = 0xD000000000000035;
  v31 = "rver";
  v32 = "torage.cfuViewed";
  v33 = 0xD00000000000003CLL;
  if (v5 != 2)
  {
    v33 = 0xD000000000000042;
    v32 = "torage.ldmOnBoardingRequired";
  }

  if (v5)
  {
    v30 = 0xD000000000000030;
    v31 = "torage.analyticsCache";
  }

  if (v5 <= 1)
  {
    v34 = v30;
  }

  else
  {
    v34 = v33;
  }

  if (v5 <= 1)
  {
    v35 = v31;
  }

  else
  {
    v35 = v32;
  }

  v36 = MEMORY[0x223D75470](v34, v35 | 0x8000000000000000);

  [v22 setObject:v29 forKey:v36];
  swift_unknownObjectRelease();

  return [v22 synchronize];
}

uint64_t TNCKVStorage.set<A>(encodedValue:for:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  v7 = type metadata accessor for PropertyListEncoder();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for Optional();
  v17[4] = a4;
  swift_getWitnessTable();
  v10 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v17[3] = MEMORY[0x277CC9318];
  v17[0] = v10;
  v17[1] = v11;
  v16 = v6;
  v12 = *(*v4 + 136);
  v13 = v10;
  v14 = v11;
  outlined copy of Data._Representation(v10, v11);
  v12(v17, &v16);
  outlined consume of Data._Representation(v13, v14);

  return outlined destroy of Any?(v17);
}

uint64_t TNCKVStorage.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t TNCLogger.Category.init(rawValue:)@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TNCLogger.Category.init(rawValue:), v3);

  *a2 = v5 != 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TNCLogger.Category()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TNCLogger.Category()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TNCLogger.Category@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance TNCLogger.Category, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t one-time initialization function for default()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static TNCLogger.default);
  __swift_project_value_buffer(v0, static TNCLogger.default);
  return Logger.init(subsystem:category:)();
}

uint64_t static TNCLogger.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static TNCLogger.default);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void static TNCLogger.logFunctionCall(category:functionName:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static TNCLogger.default);

  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136446210;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v10);
    _os_log_impl(&dword_220014000, oslog, v6, "%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x223D75DE0](v8, -1, -1);
    MEMORY[0x223D75DE0](v7, -1, -1);
  }
}

unint64_t lazy protocol witness table accessor for type TNCLogger.Category and conformance TNCLogger.Category()
{
  result = lazy protocol witness table cache variable for type TNCLogger.Category and conformance TNCLogger.Category;
  if (!lazy protocol witness table cache variable for type TNCLogger.Category and conformance TNCLogger.Category)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TNCLogger.Category and conformance TNCLogger.Category);
  }

  return result;
}

uint64_t TNCLDMManagerMock.isEnabled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

void *TNCLDMManagerMock.enablementError.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void TNCLDMManagerMock.enablementError.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t TNCLDMManagerMock.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t TNCLDMManagerMock.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

uint64_t TNCLDMManagerMock.enable()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](TNCLDMManagerMock.enable(), 0, 0);
}

{
  if ((*(**(v0 + 16) + 120))())
  {
    swift_willThrow();
  }

  else
  {
    (*(**(v0 + 16) + 104))(1);
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TNCLDMManagerMock.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t protocol witness for TNCLDMManaging.enable() in conformance TNCLDMManagerMock()
{
  v2 = *(**v0 + 152);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in TNCOnBoardingController.onBoardingRequiredWithSideEffect();

  return v6();
}

uint64_t dispatch thunk of TNCLDMManagerMock.enable()()
{
  v2 = *(*v0 + 152);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in TNCOnBoardingController.onBoardingRequiredWithSideEffect();

  return v6();
}

uint64_t TNCLDMManager.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for LockdownModeManager();
  *(v0 + 16) = static LockdownModeManager.shared.getter();
  return v0;
}

uint64_t TNCLDMManager.init()()
{
  type metadata accessor for LockdownModeManager();
  *(v0 + 16) = static LockdownModeManager.shared.getter();
  return v0;
}

uint64_t TNCLDMManager.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t TNCLDMManager.enable()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](TNCLDMManager.enable(), 0, 0);
}

{
  v1 = *(v0[2] + 16);
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = TNCLDMManager.enable();

  return MEMORY[0x2822008A0]();
}

{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = TNCLDMManager.enable();
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = TNCLDMManager.enable();
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  return (*(v0 + 8))();
}

{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t closure #1 in TNCLDMManager.enable()(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, _sScCyyts5Error_pGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  (*(v5 + 16))(&v13 - v7, a1, v4);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  (*(v5 + 32))(v10 + v9, v8, v4);
  v11 = a2;
  LockdownModeManager.setEnabled(enabled:options:completion:)();
}

uint64_t closure #1 in closure #1 in TNCLDMManager.enable()(void *a1)
{
  if (MEMORY[0x223D753F0]())
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static TNCLogger.default);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_220014000, v3, v4, "LDM enabled", v5, 2u);
      MEMORY[0x223D75DE0](v5, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, _sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (a1)
    {
      v7 = a1;
    }

    else
    {
      lazy protocol witness table accessor for type TNCError and conformance TNCError();
      v8 = swift_allocError();
      *v9 = xmmword_22002AF60;
      v7 = _convertErrorToNSError(_:)();
    }

    v10 = one-time initialization token for default;
    v11 = a1;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static TNCLogger.default);
    v13 = v7;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543362;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&dword_220014000, v14, v15, "LDM failed to enable with error: %{public}@", v16, 0xCu);
      outlined destroy of NSObject?(v17);
      MEMORY[0x223D75DE0](v17, -1, -1);
      MEMORY[0x223D75DE0](v16, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, _sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t protocol witness for TNCLDMManaging.enable() in conformance TNCLDMManager()
{
  *(v1 + 16) = *v0;
  return MEMORY[0x2822009F8](protocol witness for TNCLDMManaging.enable() in conformance TNCLDMManager, 0, 0);
}

{
  v1 = *(v0[2] + 16);
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = protocol witness for TNCLDMManaging.enable() in conformance TNCLDMManager;

  return MEMORY[0x2822008A0]();
}

{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = protocol witness for TNCLDMManaging.enable() in conformance TNCLDMManager;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = protocol witness for TNCLDMManaging.enable() in conformance TNCLDMManager;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t partial apply for closure #1 in closure #1 in TNCLDMManager.enable()(void *a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, _sScCyyts5Error_pGMR) - 8) + 80);
  v4 = *(v1 + 16);

  return closure #1 in closure #1 in TNCLDMManager.enable()(a1);
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of TNCLDMManaging.enable()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in TNCOnBoardingController.onBoardingRequiredWithSideEffect();

  return v9(a1, a2);
}

uint64_t TNCMCManager.isDeviceEligibleForEnhancedDiagnostics.getter()
{
  v1 = *(v0 + 24);
  if (v1 == 2)
  {
    LOBYTE(v1) = closure #1 in TNCMCManager.isDeviceEligibleForEnhancedDiagnostics.getter();
    *(v0 + 24) = v1 & 1;
  }

  return v1 & 1;
}

uint64_t closure #1 in TNCMCManager.isDeviceEligibleForEnhancedDiagnostics.getter()
{
  v12 = *MEMORY[0x277D85DE8];
  domain_answer = os_eligibility_get_domain_answer();
  if (domain_answer)
  {
    v1 = domain_answer;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static TNCLogger.default);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67109120;
      *(v5 + 4) = v1;
      _os_log_impl(&dword_220014000, v3, v4, "Enhanced diagnostics eligibility call failed with status code: %d", v5, 8u);
      MEMORY[0x223D75DE0](v5, -1, -1);
    }

    result = 0;
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static TNCLogger.default);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      swift_beginAccess();
      *(v10 + 4) = 0;
      _os_log_impl(&dword_220014000, v8, v9, "Enhanced diagnostics eligibility answer: %llu", v10, 0xCu);
      MEMORY[0x223D75DE0](v10, -1, -1);
    }

    swift_beginAccess();
    result = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t TNCMCManager.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F90];
  *(result + 24) = 2;
  return result;
}

uint64_t TNCMCManager.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 2;
  return result;
}

uint64_t TNCMCManager.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t TNCMCManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 25, 7);
}

void TNCMCManager.addObserver(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for TNCWeakBox();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 24) = a2;
  swift_unknownObjectWeakAssign();
  v6 = swift_beginAccess();
  MEMORY[0x223D75530](v6);
  if (*((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v15 = *((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static TNCLogger.default);
  swift_unknownObjectRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136446210;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v16);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_220014000, v8, v9, "MCManager did register observer: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x223D75DE0](v11, -1, -1);
    MEMORY[0x223D75DE0](v10, -1, -1);
  }
}

void TNCMCManager.removeObserver(_:)(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  v3 = specialized MutableCollection._halfStablePartition(isSuffixElement:)((v1 + 16), a1);
  swift_unknownObjectRelease();
  v4 = *(v1 + 16);
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v15 = *(v1 + 16);
    }

    else
    {
      v15 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    v6 = MEMORY[0x223D757A0](v15);
    if (v6 >= v3)
    {
LABEL_3:
      specialized Array.replaceSubrange<A>(_:with:)(v3, v6, v5);
      swift_endAccess();
      if (one-time initialization token for default == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
    v6 = *(v5 + 16);
    if (v6 >= v3)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_12:
  swift_once();
LABEL_4:
  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static TNCLogger.default);
  swift_unknownObjectRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136446210;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v16);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_220014000, v8, v9, "MCManager did remove observer: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x223D75DE0](v11, -1, -1);
    MEMORY[0x223D75DE0](v10, -1, -1);
  }
}

id TNCMCManager.setDiagnosticsSharing(enabled:)(char a1)
{
  v2 = TNCMCManager.diagnosticsSettingsKeys.getter();
  v3 = v2;
  v4 = *(v2 + 16);
  v22 = a1;
  if (v4)
  {
    v5 = 0;
    v6 = (v2 + 40);
    while (1)
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(v6 - 1);
      v7 = *v6;
      v9 = objc_opt_self();

      result = [v9 sharedConnection];
      if (!result)
      {
        break;
      }

      v11 = result;
      ++v5;
      v12 = MEMORY[0x223D75470](v8, v7);

      a1 = v22;
      [v11 setBoolValue:v22 & 1 forSetting:v12];

      v6 += 2;
      if (v4 == v5)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    if (one-time initialization token for default != -1)
    {
LABEL_19:
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static TNCLogger.default);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136315138;
      if (v22)
      {
        v18 = 0x64656C62616E65;
      }

      else
      {
        v18 = 0x64656C6261736964;
      }

      if (v22)
      {
        v19 = 0xE700000000000000;
      }

      else
      {
        v19 = 0xE800000000000000;
      }

      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v23);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_220014000, v14, v15, "MCManager %s diagnostics sharing", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x223D75DE0](v17, -1, -1);
      v21 = v16;
      a1 = v22;
      MEMORY[0x223D75DE0](v21, -1, -1);
    }

    return TNCMCManager.notifyObserversAboutDiagnosticsEnablement(isEnabled:)(a1 & 1);
  }

  return result;
}

uint64_t TNCMCManager.diagnosticsSettingsKeys.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22002A5A0;
  v1 = *MEMORY[0x277D25E58];
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v2;
  if (TNCMCManager.isDeviceEligibleForEnhancedDiagnostics.getter())
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22002A5A0;
    v4 = *MEMORY[0x277D25D00];
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v5;
    specialized Array.append<A>(contentsOf:)(inited);
  }

  return v0;
}

uint64_t TNCMCManager.notifyObserversAboutDiagnosticsEnablement(isEnabled:)(char a1)
{
  result = swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v23 = *(v1 + 16);
    }

    else
    {
      v23 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x223D757A0](v23);
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = v3 & 0xC000000000000001;

    v6 = 0;
    v7 = 0x281254000;
    v8 = static TNCLogger.default;
    do
    {
      if (v5)
      {
        v17 = MEMORY[0x223D75720](v6, v3);
      }

      else
      {
        v17 = *(v3 + 8 * v6 + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v18 = *(v17 + 24);
        ObjectType = swift_getObjectType();
        (*(v18 + 8))(a1 & 1, ObjectType, v18);
        swift_unknownObjectRelease();
      }

      if (*(v7 + 144) != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, v8);

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v9 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v27 = v26;
        *v9 = 136446210;
        type metadata accessor for TNCWeakBox();

        v10 = String.init<A>(describing:)();
        log = v21;
        v12 = v8;
        v13 = v3;
        v14 = v4;
        v15 = v5;
        v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v27);
        v7 = 0x281254000uLL;

        *(v9 + 4) = v16;
        v5 = v15;
        v4 = v14;
        v3 = v13;
        v8 = v12;
        _os_log_impl(&dword_220014000, log, v22, "MCManager did notify observer: %{public}s", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        MEMORY[0x223D75DE0](v26, -1, -1);
        MEMORY[0x223D75DE0](v9, -1, -1);
      }

      else
      {
      }

      ++v6;
    }

    while (v4 != v6);
  }

  return result;
}

uint64_t TNCWeakBox.__deallocating_deinit()
{
  outlined destroy of weak TNCMCManagerObserver?(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, v3 < 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      v7 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v3 < 0)
      {
        v7 = v3;
      }

      MEMORY[0x223D757A0](v7);
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    *v1 = result;
  }

  return result;
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  if (a1 >> 62)
  {
    if (a1 >= 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    MEMORY[0x223D757A0](a1);
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a1 & 0xFFFFFFFFFFFFFF8;
  v5 = *a1 >> 62;
  if (v5)
  {
LABEL_68:
    if (v3 < 0)
    {
      v24 = v3;
    }

    else
    {
      v24 = v4;
    }

    v6 = MEMORY[0x223D757A0](v24);
  }

  else
  {
    v6 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x223D75720](v7, v3);
    }

    else
    {
      if (v7 >= *(v4 + 16))
      {
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v9 = *(v3 + 8 * v7 + 32);
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      result = swift_unknownObjectRelease();
      if (Strong == a2)
      {
        v12 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
          return result;
        }

        v4 = a1;
        while (1)
        {
          if (v3 >> 62)
          {
            if (v3 < 0)
            {
              v22 = v3;
            }

            else
            {
              v22 = v3 & 0xFFFFFFFFFFFFFF8;
            }

            if (v12 == MEMORY[0x223D757A0](v22))
            {
              return v7;
            }
          }

          else if (v12 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            return v7;
          }

          v5 = v3 & 0xC000000000000001;
          if ((v3 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223D75720](v12, v3);
          }

          else
          {
            if ((v12 & 0x8000000000000000) != 0)
            {
              goto LABEL_60;
            }

            if (v12 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_61;
            }

            v15 = *(v3 + 8 * v12 + 32);
          }

          v16 = swift_unknownObjectWeakLoadStrong();

          if (!v16 || (swift_unknownObjectRelease(), v16 != a2))
          {
            if (v7 != v12)
            {
              if (v5)
              {
                v17 = MEMORY[0x223D75720](v7, v3);
                v18 = MEMORY[0x223D75720](v12, v3);
              }

              else
              {
                if ((v7 & 0x8000000000000000) != 0)
                {
                  goto LABEL_65;
                }

                v19 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v7 >= v19)
                {
                  goto LABEL_66;
                }

                if (v12 >= v19)
                {
                  goto LABEL_67;
                }

                v17 = *(v3 + 32 + 8 * v7);
                v18 = *(v3 + 32 + 8 * v12);
              }

              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v3 < 0 || (v3 & 0x4000000000000000) != 0)
              {
                v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
                v20 = (v3 >> 62) & 1;
              }

              else
              {
                LODWORD(v20) = 0;
              }

              v5 = v3 & 0xFFFFFFFFFFFFFF8;
              v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20);
              *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v18;

              if (v3 < 0 || v20)
              {
                v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
                v5 = v3 & 0xFFFFFFFFFFFFFF8;
                if ((v12 & 0x8000000000000000) != 0)
                {
LABEL_53:
                  __break(1u);
LABEL_54:
                  if (v3 < 0)
                  {
                    v23 = v3;
                  }

                  else
                  {
                    v23 = v4;
                  }

                  return MEMORY[0x223D757A0](v23);
                }
              }

              else if ((v12 & 0x8000000000000000) != 0)
              {
                goto LABEL_53;
              }

              if (v12 >= *(v5 + 16))
              {
                goto LABEL_64;
              }

              v13 = v5 + 8 * v12;
              v14 = *(v13 + 32);
              *(v13 + 32) = v17;

              *a1 = v3;
            }

            v8 = __OFADD__(v7++, 1);
            if (v8)
            {
              goto LABEL_63;
            }
          }

          v8 = __OFADD__(v12++, 1);
          if (v8)
          {
            goto LABEL_62;
          }
        }
      }
    }

    v8 = __OFADD__(v7++, 1);
    if (v8)
    {
      goto LABEL_59;
    }
  }

  if (v5)
  {
    goto LABEL_54;
  }

  return *(v4 + 16);
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_23;
  }

  v3 = a3;
  v6 = a2;
  v7 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v8 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for TNCWeakBox();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v10);
  v10 = v3 - v10;
  if (v12)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v10)
  {
    goto LABEL_20;
  }

  v9 = v7 >> 62;
  if (!(v7 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_24:
  if (v7 < 0)
  {
    v18 = v7;
  }

  else
  {
    v18 = v4;
  }

  result = MEMORY[0x223D757A0](v18);
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_29;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v8[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v9)
  {
    if (v7 < 0)
    {
      v17 = v7;
    }

    else
    {
      v17 = v4;
    }

    result = MEMORY[0x223D757A0](v17);
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_30;
  }

  v4[2] = result + v10;
LABEL_20:
  if (v3 > 0)
  {
LABEL_31:
    __break(1u);
  }

  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    a3 = *v4 & 0xFFFFFFFFFFFFFF8;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }
  }

  if (v6 < 0)
  {
    v13 = v6;
  }

  else
  {
    v13 = a3;
  }

  result = MEMORY[0x223D757A0](v13);
  if (result < v3)
  {
    goto LABEL_21;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  if (v7)
  {
    if (v6 < 0)
    {
      v11 = v6;
    }

    else
    {
      v11 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v10 = MEMORY[0x223D757A0](v11);
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v12)
  {
    goto LABEL_24;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);

  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v5, v3, 0);
}

void TNCFollowUpItem.init(flItem:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v104 - v9;
  v117 = type metadata accessor for TNCFollowUpAction(0);
  v115 = *(v117 - 1);
  v11 = *(v115 + 64);
  v12 = MEMORY[0x28223BE20](v117);
  v14 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v104 - v16);
  v18 = MEMORY[0x28223BE20](v15);
  v114 = &v104 - v19;
  MEMORY[0x28223BE20](v18);
  v113 = &v104 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v104 - v23;
  v25 = [a1 uniqueIdentifier];
  if (v25)
  {
    v26 = v25;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    *a2 = v27;
    a2[1] = v29;
    v105 = a1;
    v106 = a2;
    v30 = [a1 groupIdentifier];
    if (v30)
    {
      v31 = v30;
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;
    }

    else
    {
      v32 = 0;
      v34 = 0;
    }

    v35 = v105;
    v36 = v106;
    v106[2] = v32;
    v36[3] = v34;
    v37 = [v35 title];
    if (v37)
    {
      v38 = v37;
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;
    }

    else
    {
      v39 = 0;
      v41 = 0;
    }

    v36[4] = v39;
    v36[5] = v41;
    v42 = [v105 informativeText];
    if (v42)
    {
      v43 = v42;
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;
    }

    else
    {
      v44 = 0;
      v46 = 0;
    }

    v36[6] = v44;
    v36[7] = v46;
    v47 = v105;
    v48 = [v105 expirationDate];
    if (v48)
    {
      v49 = v48;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v50 = type metadata accessor for Date();
      (*(*(v50 - 8) + 56))(v24, 0, 1, v50);
    }

    else
    {
      v51 = type metadata accessor for Date();
      (*(*(v51 - 8) + 56))(v24, 1, 1, v51);
    }

    v52 = type metadata accessor for TNCFollowUpItem(0);
    outlined init with take of Date?(v24, v106 + *(v52 + 32), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v53 = [v47 userInfo];
    if (v53)
    {
      v54 = v53;
      v55 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v55 = 0;
    }

    v56 = v106;
    *(v106 + *(v52 + 36)) = v55;
    *(v56 + *(v52 + 40)) = ([v47 displayStyle] & 0x10) != 0;
    v57 = [v47 actions];
    if (v57)
    {
      v58 = v57;
      type metadata accessor for FLFollowUpAction();
      v59 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v59 >> 62)
      {
        goto LABEL_54;
      }

      v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v104 = v52;
      while (v60)
      {
        v61 = 0;
        v111 = v59 & 0xFFFFFFFFFFFFFF8;
        v112 = v59 & 0xC000000000000001;
        v62 = MEMORY[0x277D84F90];
        v107 = v8;
        v108 = v60;
        v109 = v59;
        v110 = v14;
        while (v112)
        {
          v63 = MEMORY[0x223D75720](v61, v59);
          v64 = v61 + 1;
          if (__OFADD__(v61, 1))
          {
            goto LABEL_52;
          }

LABEL_24:
          v116 = v64;
          v65 = v10;
          v66 = v63;
          v67 = [v66 identifier];
          if (v67)
          {
            v68 = v67;
            v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v71 = v70;
          }

          else
          {
            v69 = 0;
            v71 = 0;
          }

          *v17 = v69;
          v17[1] = v71;
          v72 = [v66 label];
          if (v72)
          {
            v73 = v72;
            v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v76 = v75;
          }

          else
          {
            v74 = 0;
            v76 = 0;
          }

          v17[2] = v74;
          v17[3] = v76;
          v77 = [v66 url];
          if (v77)
          {
            v78 = v77;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v79 = 0;
          }

          else
          {
            v79 = 1;
          }

          v80 = type metadata accessor for URL();
          v81 = *(v80 - 8);
          v82 = *(v81 + 56);
          v8 = (v81 + 56);
          v82(v65, v79, 1, v80);
          outlined init with take of Date?(v65, v17 + v117[6], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          v83 = [v66 userInfo];
          if (v83)
          {
            v84 = v83;
            v85 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
          }

          else
          {
            v85 = 0;
          }

          v86 = v107;
          *(v17 + v117[7]) = v85;
          v87 = [v66 launchActionURL];
          if (v87)
          {
            v88 = v87;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v89 = 0;
          }

          else
          {
            v89 = 1;
          }

          v82(v86, v89, 1, v80);
          outlined init with take of Date?(v86, v17 + v117[8], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          v90 = [v66 launchActionArguments];
          if (v90)
          {
            v91 = v90;
            v92 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v94 = v93;
          }

          else
          {
            v92 = 0;
            v94 = 0xF000000000000000;
          }

          v10 = v65;
          v95 = v117;
          v96 = (v17 + v117[9]);
          *v96 = v92;
          v96[1] = v94;
          v97 = [v66 destructive];

          *(v17 + v95[10]) = v97;
          v98 = v114;
          outlined init with take of TNCFollowUpAction(v17, v114, type metadata accessor for TNCFollowUpAction);
          v99 = v98;
          v100 = v113;
          outlined init with take of TNCFollowUpAction(v99, v113, type metadata accessor for TNCFollowUpAction);
          v14 = v110;
          outlined init with take of TNCFollowUpAction(v100, v110, type metadata accessor for TNCFollowUpAction);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v62[2] + 1, 1, v62);
          }

          v59 = v109;
          v52 = v62[2];
          v101 = v62[3];
          if (v52 >= v101 >> 1)
          {
            v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v101 > 1, v52 + 1, 1, v62);
          }

          v62[2] = v52 + 1;
          outlined init with take of TNCFollowUpAction(v14, v62 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v52, type metadata accessor for TNCFollowUpAction);
          ++v61;
          if (v116 == v108)
          {
            goto LABEL_59;
          }
        }

        if (v61 >= *(v111 + 16))
        {
          goto LABEL_53;
        }

        v63 = *(v59 + 8 * v61 + 32);
        v64 = v61 + 1;
        if (!__OFADD__(v61, 1))
        {
          goto LABEL_24;
        }

LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        if (v59 < 0)
        {
          v102 = v59;
        }

        else
        {
          v102 = v59 & 0xFFFFFFFFFFFFFF8;
        }

        v60 = MEMORY[0x223D757A0](v102);
        v104 = v52;
      }

      v62 = MEMORY[0x277D84F90];
LABEL_59:

      v52 = v104;
      v47 = v105;
    }

    else
    {
      v62 = MEMORY[0x277D84F90];
    }

    v103 = v106;
    *(v106 + *(v52 + 44)) = v62;
    TNCFollowUpNotification.init(flNotification:)([v47 notification], v103 + *(v52 + 48));
  }

  else
  {
    __break(1u);
  }
}

double TNCFollowUpAction.init(identifier:title:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = a3;
  *(a5 + 3) = a4;
  v6 = type metadata accessor for TNCFollowUpAction(0);
  v7 = v6[6];
  v8 = type metadata accessor for URL();
  v9 = *(*(v8 - 8) + 56);
  v9(&a5[v7], 1, 1, v8);
  *&a5[v6[7]] = 0;
  v9(&a5[v6[8]], 1, 1, v8);
  result = 0.0;
  *&a5[v6[9]] = xmmword_22002A5C0;
  a5[v6[10]] = 0;
  return result;
}

Swift::Void __swiftcall TNCFollowUpItem.set(actions:)(Swift::OpaquePointer actions)
{
  v3 = *(type metadata accessor for TNCFollowUpItem(0) + 44);
  v4 = *(v1 + v3);

  *(v1 + v3) = actions;
}

id TNCFollowUpAction.flAction.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - v7;
  v9 = [objc_allocWithZone(MEMORY[0x277CFE4F8]) init];
  if (v1[1])
  {
    v10 = MEMORY[0x223D75470](*v1);
  }

  else
  {
    v10 = 0;
  }

  [v9 setIdentifier_];

  if (v1[3])
  {
    v11 = MEMORY[0x223D75470](v1[2]);
  }

  else
  {
    v11 = 0;
  }

  [v9 setLabel_];

  v12 = type metadata accessor for TNCFollowUpAction(0);
  outlined init with copy of Date?(v1 + v12[6], v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  v17 = 0;
  if (v15(v8, 1, v13) != 1)
  {
    URL._bridgeToObjectiveC()(v16);
    v17 = v18;
    (*(v14 + 8))(v8, v13);
  }

  [v9 setUrl_];

  if (*(v1 + v12[7]))
  {
    v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v19.super.isa = 0;
  }

  [v9 setUserInfo_];

  outlined init with copy of Date?(v1 + v12[8], v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (v15(v6, 1, v13) == 1)
  {
    v21 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v20);
    v21 = v22;
    (*(v14 + 8))(v6, v13);
  }

  [v9 setLaunchActionURL_];

  v23 = (v1 + v12[9]);
  if (v23[1] >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v25 = *v23;
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  [v9 setLaunchActionArguments_];

  [v9 setDestructive_];
  return v9;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo21FLNotificationOptionsaG_SSs5NeverOTg5047_s22ThreatNotificationCore011TNCFollowUpB0V02flm17ACSgSo08FLFollowem14CSg_tcfcSSSo21D13OptionsaXEfU_Tf1cn_nTm(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v28;
  v4 = -1 << *(a1 + 32);
  v27 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v26 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v27 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    v12 = *(*(a1 + 48) + 8 * v6);
    result = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = *(v28 + 16);
    v14 = *(v28 + 24);
    if (v15 >= v14 >> 1)
    {
      v24 = v13;
      v25 = result;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
      v13 = v24;
      result = v25;
    }

    *(v28 + 16) = v15 + 1;
    v16 = v28 + 16 * v15;
    *(v16 + 32) = result;
    *(v16 + 40) = v13;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v17 = *(v27 + 8 * v10);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v26;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v9 = v26;
      v21 = (a1 + 64 + 8 * v10);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = outlined consume of Set<FLNotificationOptions>.Index._Variant(v6, v11, 0);
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<FLNotificationOptions>.Index._Variant(v6, v11, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v9)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_So21FLNotificationOptionsas5NeverOTg5047_s22ThreatNotificationCore011TNCFollowUpB0V02flm13So08FLFollowem7CvgSo21D15OptionsaSSXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v28;
  v3 = a1 + 56;
  v4 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = a1;
  v8 = 0;
  v26 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v7 + 32))
  {
    v11 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v27 = *(v7 + 36);
    v12 = (*(v7 + 48) + 16 * v6);
    v13 = *v12;
    v14 = v12[1];

    v15 = MEMORY[0x223D75470](v13, v14);

    v17 = *(v28 + 16);
    v16 = *(v28 + 24);
    if (v17 >= v16 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
    }

    *(v28 + 16) = v17 + 1;
    *(v28 + 8 * v17 + 32) = v15;
    v9 = 1 << *(v7 + 32);
    if (v6 >= v9)
    {
      goto LABEL_22;
    }

    v3 = a1 + 56;
    v18 = *(a1 + 56 + 8 * v11);
    if ((v18 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v27 != *(v7 + 36))
    {
      goto LABEL_24;
    }

    v19 = v18 & (-2 << (v6 & 0x3F));
    if (v19)
    {
      v9 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v10 = v26;
    }

    else
    {
      v20 = v11 << 6;
      v21 = v11 + 1;
      v22 = (a1 + 64 + 8 * v11);
      v10 = v26;
      while (v21 < (v9 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = outlined consume of Set<FLNotificationOptions>.Index._Variant(v6, v27, 0);
          v7 = a1;
          v9 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<FLNotificationOptions>.Index._Variant(v6, v27, 0);
      v7 = a1;
    }

LABEL_4:
    ++v8;
    v6 = v9;
    if (v8 == v10)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

id TNCFollowUpNotification.flNotification.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v28[-v7];
  v9 = [objc_allocWithZone(MEMORY[0x277CFE510]) init];
  if (v1[1])
  {
    v10 = MEMORY[0x223D75470](*v1);
  }

  else
  {
    v10 = 0;
  }

  [v9 setTitle_];

  if (v1[3])
  {
    v11 = MEMORY[0x223D75470](v1[2]);
  }

  else
  {
    v11 = 0;
  }

  [v9 setInformativeText_];

  if (v1[5])
  {
    v12 = MEMORY[0x223D75470](v1[4]);
  }

  else
  {
    v12 = 0;
  }

  [v9 setSubtitleText_];

  v13 = type metadata accessor for TNCFollowUpNotification(0);
  outlined init with copy of Date?(v1 + v13[7], v8, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
  v14 = type metadata accessor for TNCFollowUpAction(0);
  v15 = *(*(v14 - 8) + 48);
  if (v15(v8, 1, v14) == 1)
  {
    outlined destroy of NSObject?(v8, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
    v16 = 0;
  }

  else
  {
    v16 = TNCFollowUpAction.flAction.getter();
    outlined destroy of TNCFollowUpAction(v8, type metadata accessor for TNCFollowUpAction);
  }

  [v9 setActivateAction_];

  outlined init with copy of Date?(v1 + v13[8], v6, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
  if (v15(v6, 1, v14) == 1)
  {
    outlined destroy of NSObject?(v6, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
    v17 = 0;
  }

  else
  {
    v17 = TNCFollowUpAction.flAction.getter();
    outlined destroy of TNCFollowUpAction(v6, type metadata accessor for TNCFollowUpAction);
  }

  [v9 setClearAction_];

  v18 = (v1 + v13[9]);
  if (v18[1])
  {
    v19 = MEMORY[0x223D75470](*v18);
  }

  else
  {
    v19 = 0;
  }

  [v9 setUnlockActionLabel_];

  v20 = (v1 + v13[10]);
  v21 = *v20;
  if (*(v20 + 8))
  {
    v21 = 0.0;
  }

  [v9 setFrequency_];
  v22 = (v1 + v13[11]);
  v23 = *v22;
  if (*(v22 + 8))
  {
    v23 = 0.0;
  }

  [v9 setFirstNotificationDelay_];
  v24 = *(v1 + v13[12]);
  if (v24)
  {
    v25 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_So21FLNotificationOptionsas5NeverOTg5047_s22ThreatNotificationCore011TNCFollowUpB0V02flm13So08FLFollowem7CvgSo21D15OptionsaSSXEfU_Tf1cn_n(v24);
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo21FLNotificationOptionsa_SayAEGTt0g5Tf4g_n(v25);

  type metadata accessor for FLNotificationOptions();
  lazy protocol witness table accessor for type FLNotificationOptions and conformance FLNotificationOptions(&lazy protocol witness table cache variable for type FLNotificationOptions and conformance FLNotificationOptions, type metadata accessor for FLNotificationOptions);
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v9 setOptions_];

  return v9;
}

uint64_t TNCFollowUpAction.userInfo.getter()
{
  v1 = *(v0 + *(type metadata accessor for TNCFollowUpAction(0) + 28));
}

uint64_t TNCFollowUpAction.launchActionArguments.getter()
{
  v1 = v0 + *(type metadata accessor for TNCFollowUpAction(0) + 36);
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

uint64_t TNCFollowUpAction.init(flAction:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v47 - v9;
  v11 = type metadata accessor for TNCFollowUpAction(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v48 = v13;
    v16 = a1;
    v17 = [v16 identifier];
    if (v17)
    {
      v18 = v17;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    *v15 = v19;
    v15[1] = v21;
    v24 = [v16 label];
    if (v24)
    {
      v25 = v24;
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    v15[2] = v26;
    v15[3] = v28;
    v29 = [v16 url];
    if (v29)
    {
      v30 = v29;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v31 = type metadata accessor for URL();
      (*(*(v31 - 8) + 56))(v10, 0, 1, v31);
    }

    else
    {
      v32 = type metadata accessor for URL();
      (*(*(v32 - 8) + 56))(v10, 1, 1, v32);
    }

    outlined init with take of Date?(v10, v15 + v11[6], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v33 = [v16 userInfo];
    if (v33)
    {
      v34 = v33;
      v35 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v35 = 0;
    }

    *(v15 + v11[7]) = v35;
    v36 = [v16 launchActionURL];
    if (v36)
    {
      v37 = v36;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    v39 = type metadata accessor for URL();
    (*(*(v39 - 8) + 56))(v8, v38, 1, v39);
    outlined init with take of Date?(v8, v15 + v11[8], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v40 = [v16 launchActionArguments];
    if (v40)
    {
      v41 = v40;
      v42 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;
    }

    else
    {
      v42 = 0;
      v44 = 0xF000000000000000;
    }

    v45 = (v15 + v11[9]);
    *v45 = v42;
    v45[1] = v44;
    v46 = [v16 destructive];

    *(v15 + v11[10]) = v46;
    outlined init with take of TNCFollowUpAction(v15, a2, type metadata accessor for TNCFollowUpAction);
    return (*(v48 + 56))(a2, 0, 1, v11);
  }

  else
  {
    v22 = *(v13 + 56);

    return v22(a2, 1, 1, v11);
  }
}

uint64_t TNCFollowUpNotification.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TNCFollowUpNotification.informativeText.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t TNCFollowUpNotification.subtitleText.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t TNCFollowUpNotification.unlockActionLabel.getter()
{
  v1 = (v0 + *(type metadata accessor for TNCFollowUpNotification(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TNCFollowUpNotification.frequency.getter()
{
  v1 = (v0 + *(type metadata accessor for TNCFollowUpNotification(0) + 40));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t TNCFollowUpNotification.firstNotificationDelay.getter()
{
  v1 = (v0 + *(type metadata accessor for TNCFollowUpNotification(0) + 44));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t TNCFollowUpNotification.options.getter()
{
  v1 = *(v0 + *(type metadata accessor for TNCFollowUpNotification(0) + 48));
}

id TNCFollowUpNotification.init(title:informativeText:activateAction:clearAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  v10 = type metadata accessor for TNCFollowUpNotification(0);
  outlined init with copy of Date?(a5, a7 + v10[7], &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
  outlined init with copy of Date?(a6, a7 + v10[8], &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
  a7[4] = 0;
  a7[5] = 0;
  v11 = (a7 + v10[9]);
  *v11 = 0;
  v11[1] = 0;
  v12 = a7 + v10[10];
  *v12 = 0;
  v12[8] = 1;
  v13 = a7 + v10[11];
  *v13 = 0;
  v13[8] = 1;
  result = [objc_opt_self() defaultOptions];
  if (result)
  {
    v15 = result;
    type metadata accessor for FLNotificationOptions();
    lazy protocol witness table accessor for type FLNotificationOptions and conformance FLNotificationOptions(&lazy protocol witness table cache variable for type FLNotificationOptions and conformance FLNotificationOptions, type metadata accessor for FLNotificationOptions);
    v16 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo21FLNotificationOptionsaG_SSs5NeverOTg5047_s22ThreatNotificationCore011TNCFollowUpB0V02flm17ACSgSo08FLFollowem14CSg_tcfcSSSo21D13OptionsaXEfU_Tf1cn_nTm(v16);

    v18 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v17);

    outlined destroy of NSObject?(a6, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
    result = outlined destroy of NSObject?(a5, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
    *(a7 + v10[12]) = v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t TNCFollowUpNotification.init(flNotification:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TNCFollowUpNotification(0);
  v5 = *(*(v4 - 1) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v42 = v6;
    v9 = a1;
    v10 = [v9 title];
    if (v10)
    {
      v11 = v10;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    *v8 = v12;
    v8[1] = v14;
    v17 = [v9 informativeText];
    if (v17)
    {
      v18 = v17;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    v8[2] = v19;
    v8[3] = v21;
    v22 = [v9 subtitleText];
    if (v22)
    {
      v23 = v22;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    v8[4] = v24;
    v8[5] = v26;
    TNCFollowUpAction.init(flAction:)([v9 activateAction], v8 + v4[7]);
    TNCFollowUpAction.init(flAction:)([v9 clearAction], v8 + v4[8]);
    v27 = [v9 unlockActionLabel];
    if (v27)
    {
      v28 = v27;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    v32 = (v8 + v4[9]);
    *v32 = v29;
    v32[1] = v31;
    [v9 frequency];
    v33 = v8 + v4[10];
    *v33 = v34;
    v33[8] = 0;
    [v9 firstNotificationDelay];
    v35 = v8 + v4[11];
    *v35 = v36;
    v35[8] = 0;
    v37 = [v9 options];
    if (v37)
    {
      v38 = v37;
      type metadata accessor for FLNotificationOptions();
      lazy protocol witness table accessor for type FLNotificationOptions and conformance FLNotificationOptions(&lazy protocol witness table cache variable for type FLNotificationOptions and conformance FLNotificationOptions, type metadata accessor for FLNotificationOptions);
      v39 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v40 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo21FLNotificationOptionsaG_SSs5NeverOTg5047_s22ThreatNotificationCore011TNCFollowUpB0V02flm17ACSgSo08FLFollowem14CSg_tcfcSSSo21D13OptionsaXEfU_Tf1cn_nTm(v39);
    }

    else
    {
      v40 = MEMORY[0x277D84F90];
    }

    v41 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v40);

    *(v8 + v4[12]) = v41;
    outlined init with take of TNCFollowUpAction(v8, a2, type metadata accessor for TNCFollowUpNotification);
    return (*(v42 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v15 = *(v6 + 56);

    return v15(a2, 1, 1, v4);
  }
}

uint64_t one-time initialization function for primaryAccountAltDSID()
{
  v0 = *MEMORY[0x277CF0028];
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static TNCFollowUpItem.UserInfoKey.primaryAccountAltDSID = result;
  unk_27CF20980 = v2;
  return result;
}

uint64_t one-time initialization function for notifyingAppID()
{
  v0 = *MEMORY[0x277CFE3F0];
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static TNCFollowUpItem.UserInfoKey.notifyingAppID = result;
  unk_27CF20990 = v2;
  return result;
}

uint64_t TNCFollowUpItem.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TNCFollowUpItem.informativeText.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t TNCFollowUpItem.userInfo.getter()
{
  v1 = *(v0 + *(type metadata accessor for TNCFollowUpItem(0) + 36));
}

uint64_t TNCFollowUpItem.actions.getter()
{
  v1 = *(v0 + *(type metadata accessor for TNCFollowUpItem(0) + 44));
}

uint64_t TNCFollowUpItem.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(132);
  MEMORY[0x223D75500](0x696669746E656449, 0xEC000000203A7265);
  MEMORY[0x223D75500](*v1, v1[1]);
  MEMORY[0x223D75500](0x3A656C746974202CLL, 0xE900000000000020);
  v16 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v2 = Optional.debugDescription.getter();
  MEMORY[0x223D75500](v2);

  MEMORY[0x223D75500](0xD000000000000013, 0x800000022002BF70);
  v17 = *(v0 + 48);
  v3 = Optional.debugDescription.getter();
  MEMORY[0x223D75500](v3);

  MEMORY[0x223D75500](0xD000000000000012, 0x800000022002BF90);
  v4 = type metadata accessor for TNCFollowUpItem(0);
  v5 = v4[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = Optional.debugDescription.getter();
  MEMORY[0x223D75500](v6);

  MEMORY[0x223D75500](0x6E4972657375202CLL, 0xEC000000203A6F66);
  *&v17 = *(v1 + v4[9]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGSgMd, &_sSDys11AnyHashableVypGSgMR);
  v7 = Optional.debugDescription.getter();
  MEMORY[0x223D75500](v7);

  MEMORY[0x223D75500](0xD000000000000013, 0x800000022002BFB0);
  if (*(v1 + v4[10]))
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (*(v1 + v4[10]))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x223D75500](v8, v9);

  MEMORY[0x223D75500](0x6E6F69746361202CLL, 0xEB00000000203A73);
  v10 = *(v1 + v4[11]);
  v11 = type metadata accessor for TNCFollowUpAction(0);
  v12 = MEMORY[0x223D75560](v10, v11);
  MEMORY[0x223D75500](v12);

  MEMORY[0x223D75500](0xD000000000000010, 0x800000022002BFD0);
  v13 = v4[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore011TNCFollowUpB0VSgMd, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMR);
  v14 = Optional.debugDescription.getter();
  MEMORY[0x223D75500](v14);

  return 0;
}

BOOL _sSasSQRzlE2eeoiySbSayxG_ABtFZ22ThreatNotificationCore17TNCFollowUpActionV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TNCFollowUpAction(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v11 = (&v19 - v10);
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        outlined init with copy of TNCFollowUpAction(v14, v11);
        outlined init with copy of TNCFollowUpAction(v15, v8);
        v17 = specialized static TNCFollowUpAction.== infix(_:_:)(v11, v8);
        outlined destroy of TNCFollowUpAction(v8, type metadata accessor for TNCFollowUpAction);
        outlined destroy of TNCFollowUpAction(v11, type metadata accessor for TNCFollowUpAction);
        if (!v17)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    return 0;
  }

  return v17;
}

uint64_t TNCFollowUpItem.init(identifier:groupIdentifier:title:informativeText:expirationDate:userInfo:shouldOmitBadge:actions:notification:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  *a9 = a1;
  a9[1] = a2;
  if (!a4)
  {
    v19 = *MEMORY[0x277CFE440];
    a3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v20;
  }

  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  v21 = type metadata accessor for TNCFollowUpItem(0);
  outlined init with take of Date?(a10, a9 + v21[8], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  *(a9 + v21[9]) = a11;
  *(a9 + v21[10]) = a12 & 1;
  *(a9 + v21[11]) = a13;
  return outlined init with take of Date?(a14, a9 + v21[12], &_s22ThreatNotificationCore011TNCFollowUpB0VSgMd, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMR);
}

id static TNCFollowUpItem.spywareAttackItem(expirationDate:actions:userInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v86 = a2;
  v83 = a1;
  v6 = type metadata accessor for TNCFollowUpNotification(0);
  v80 = *(v6 - 8);
  v7 = *(v80 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v71 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore011TNCFollowUpB0VSgMd, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v79 = &v71 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v71 - v22;
  if (a3)
  {
    v24 = a3;
  }

  else
  {
    v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  v85 = v6;
  v25 = one-time initialization token for notifyingAppID;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = static TNCFollowUpItem.UserInfoKey.notifyingAppID;
  v89 = static TNCFollowUpItem.UserInfoKey.notifyingAppID;

  v27 = MEMORY[0x277D837D0];
  AnyHashable.init<A>(_:)();
  if (*(v24 + 16) && (v28 = specialized __RawDictionaryStorage.find<A>(_:)(v91), (v29 & 1) != 0))
  {
    outlined init with copy of Any(*(v24 + 56) + 32 * v28, &v89);
    outlined destroy of AnyHashable(v91);
    outlined destroy of NSObject?(&v89, &_sypSgMd, &_sypSgMR);
  }

  else
  {
    outlined destroy of AnyHashable(v91);
    v89 = 0u;
    v90 = 0u;
    outlined destroy of NSObject?(&v89, &_sypSgMd, &_sypSgMR);
    v89 = v26;

    AnyHashable.init<A>(_:)();
    v30 = *MEMORY[0x277CFE420];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v90 + 1) = v27;
    *&v89 = v31;
    *(&v89 + 1) = v32;
    outlined init with take of Any(&v89, v88);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v87 = v24;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v88, v91, isUniquelyReferenced_nonNull_native);
    outlined destroy of AnyHashable(v91);
    v24 = v87;
  }

  v84 = v24;
  v34 = *MEMORY[0x277CFE450];
  v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v76 = v35;
  v75 = specialized static TNCLocalization.localizedString(key:value:tableSuffix:)(0xD000000000000019, 0x800000022002BCB0, 0, 0xE000000000000000);
  v74 = v36;
  v73 = specialized static TNCLocalization.localizedString(key:value:tableSuffix:)(0xD000000000000019, 0x800000022002BCB0, 0, 0xE000000000000000);
  v72 = v37;
  v78 = v23;
  outlined init with copy of Date?(v83, v23, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v38 = &loc_22002A000;
  if (v86)
  {
    v71 = v86;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22ThreatNotificationCore17TNCFollowUpActionVGMd, &_ss23_ContiguousArrayStorageCy22ThreatNotificationCore17TNCFollowUpActionVGMR);
    v39 = (type metadata accessor for TNCFollowUpAction(0) - 8);
    v40 = *(*v39 + 72);
    v41 = (*(*v39 + 80) + 32) & ~*(*v39 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_22002A5A0;
    v71 = v42;
    v43 = v42 + v41;
    *v43 = 0xD000000000000038;
    *(v43 + 8) = 0x800000022002B560;
    *(v43 + 16) = xmmword_22002A5B0;
    v44 = v39[8];
    v45 = type metadata accessor for URL();
    v46 = *(*(v45 - 8) + 56);
    v46(v43 + v44, 1, 1, v45);
    *(v43 + v39[9]) = 0;
    v46(v43 + v39[10], 1, 1, v45);
    v38 = &loc_22002A000;
    *(v43 + v39[11]) = xmmword_22002A5C0;
    *(v43 + v39[12]) = 0;
  }

  v83 = 0x800000022002BFF0;
  v82 = 0x800000022002C010;
  *v16 = xmmword_22002B0D0;
  *(v16 + 1) = xmmword_22002B0E0;
  v47 = type metadata accessor for TNCFollowUpAction(0);
  v48 = v47[6];
  v49 = type metadata accessor for URL();
  v50 = *(*(v49 - 8) + 56);
  v50(&v16[v48], 1, 1, v49);
  *&v16[v47[7]] = 0;
  v50(&v16[v47[8]], 1, 1, v49);
  v51 = v47[9];
  v81 = v38[92];
  *&v16[v51] = v81;
  v16[v47[10]] = 0;
  v52 = *(*(v47 - 1) + 56);
  v52(v16, 0, 1, v47);
  *v14 = xmmword_22002B0F0;
  *(v14 + 1) = xmmword_22002B100;
  v50(&v14[v47[6]], 1, 1, v49);
  *&v14[v47[7]] = 0;
  v50(&v14[v47[8]], 1, 1, v49);
  *&v14[v47[9]] = v81;
  v14[v47[10]] = 0;
  v52(v14, 0, 1, v47);
  v53 = v83;
  *v9 = 0xD000000000000019;
  v9[1] = v53;
  v54 = v82;
  v9[2] = 0xD00000000000008BLL;
  v9[3] = v54;
  v55 = v85;
  outlined init with copy of Date?(v16, v9 + v85[7], &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
  outlined init with copy of Date?(v14, v9 + v55[8], &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
  v9[4] = 0;
  v9[5] = 0;
  v56 = (v9 + v55[9]);
  *v56 = 0;
  v56[1] = 0;
  v57 = v9 + v55[10];
  *v57 = 0;
  v57[8] = 1;
  v58 = v9 + v55[11];
  *v58 = 0;
  v58[8] = 1;
  v59 = objc_opt_self();
  v60 = v84;

  result = [v59 defaultOptions];
  if (result)
  {
    v62 = result;
    type metadata accessor for FLNotificationOptions();
    lazy protocol witness table accessor for type FLNotificationOptions and conformance FLNotificationOptions(&lazy protocol witness table cache variable for type FLNotificationOptions and conformance FLNotificationOptions, type metadata accessor for FLNotificationOptions);
    v63 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v64 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo21FLNotificationOptionsaG_SSs5NeverOTg5047_s22ThreatNotificationCore011TNCFollowUpB0V02flm17ACSgSo08FLFollowem14CSg_tcfcSSSo21D13OptionsaXEfU_Tf1cn_nTm(v63);

    v65 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v64);

    outlined destroy of NSObject?(v14, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
    outlined destroy of NSObject?(v16, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
    *(v9 + v55[12]) = v65;
    v66 = v79;
    outlined init with take of TNCFollowUpAction(v9, v79, type metadata accessor for TNCFollowUpNotification);
    (*(v80 + 56))(v66, 0, 1, v55);
    *a4 = 0xD000000000000033;
    a4[1] = 0x800000022002B5E0;
    v67 = v76;
    a4[2] = v77;
    a4[3] = v67;
    v68 = v74;
    a4[4] = v75;
    a4[5] = v68;
    v69 = v72;
    a4[6] = v73;
    a4[7] = v69;
    v70 = type metadata accessor for TNCFollowUpItem(0);
    outlined init with take of Date?(v78, a4 + v70[8], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    *(a4 + v70[9]) = v60;
    *(a4 + v70[10]) = 0;
    *(a4 + v70[11]) = v71;
    outlined init with take of Date?(v66, a4 + v70[12], &_s22ThreatNotificationCore011TNCFollowUpB0VSgMd, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMR);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t type metadata accessor for FLFollowUpAction()
{
  result = lazy cache variable for type metadata for FLFollowUpAction;
  if (!lazy cache variable for type metadata for FLFollowUpAction)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for FLFollowUpAction);
  }

  return result;
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = MEMORY[0x223D75240]();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = MEMORY[0x223D75240]();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    outlined consume of Data._Representation(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  closure #1 in static Data.== infix(_:_:)(v14, a3, a4, &v13);
  v10 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v17 = Hasher._finalize()();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22ThreatNotificationCore17TNCFollowUpActionVGMd, &_ss23_ContiguousArrayStorageCy22ThreatNotificationCore17TNCFollowUpActionVGMR);
  v10 = *(type metadata accessor for TNCFollowUpAction(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for TNCFollowUpAction(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t type metadata accessor for TNCFollowUpAction(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v39 = *(v24 + 32);
        v37 = v25;
        v38 = v26;
        outlined init with take of Any((*(v5 + 56) + 32 * v23), v36);
      }

      else
      {
        outlined init with copy of AnyHashable(v24, &v37);
        outlined init with copy of Any(*(v5 + 56) + 32 * v23, v36);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v8 + 40));
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v37;
      v19 = v38;
      *(v17 + 32) = v39;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = outlined init with take of Any(v36, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v19 = *v4;
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of AnyHashable(a2, v22);
      return specialized _NativeDictionary._insert(at:key:value:)(v10, v22, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);

  return outlined init with take of Any(a1, v17);
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x223D756C0](v9, a1);
      outlined destroy of AnyHashable(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        outlined init with copy of Any(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = outlined init with take of Any(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21FLNotificationOptionsaGMd, &_ss23_ContiguousArrayStorageCySo21FLNotificationOptionsaGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for FLNotificationOptions();
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();

  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
      if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
      {

        goto LABEL_12;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v23 = *(*(v6 + 48) + 8 * v10);
    *a1 = v23;
    v24 = v23;
    return 0;
  }

  else
  {
LABEL_9:
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v21 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v21, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
    *a1 = v21;
    return 1;
  }
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo21FLNotificationOptionsaGMd, &_ss11_SetStorageCySo21FLNotificationOptionsaGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v20 = Hasher._finalize()();

      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero(v8, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();

  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    type metadata accessor for FLNotificationOptions();
    do
    {
      v14 = *(*(v9 + 48) + 8 * a2);
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
      if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
      {
        goto LABEL_19;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = v6;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo21FLNotificationOptionsaGMd, &_ss11_SetStorageCySo21FLNotificationOptionsaGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo21FLNotificationOptionsaGMd, &_ss11_SetStorageCySo21FLNotificationOptionsaGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v20 = v18;
      String.hash(into:)();
      v21 = Hasher._finalize()();

      v22 = -1 << *(v6 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v13 + 8 * v24);
          if (v28 != -1)
          {
            v14 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v20;
      ++*(v6 + 16);
      v3 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x223D75620](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      specialized Set._Variant.insert(_:)(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of Date?(v4, v13, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo21FLNotificationOptionsa_SayAEGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for FLNotificationOptions();
  v4 = v3;
  v5 = lazy protocol witness table accessor for type FLNotificationOptions and conformance FLNotificationOptions(&lazy protocol witness table cache variable for type FLNotificationOptions and conformance FLNotificationOptions, type metadata accessor for FLNotificationOptions);
  result = MEMORY[0x223D75620](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      specialized Set._Variant.insert(_:)(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  MEMORY[0x223D75240]();
  closure #1 in static Data.== infix(_:_:)(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t specialized static Data.== infix(_:_:)(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          outlined copy of Data._Representation(a3, a4);
          return specialized Data.withUnsafeBytes<A>(_:)(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL specialized static TNCFollowUpNotification.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for TNCFollowUpAction(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (&v67 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore17TNCFollowUpActionVSg_ADtMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSg_ADtMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v67 - v21;
  v23 = a1[1];
  v24 = a2[1];
  if (v23)
  {
    if (!v24 || (*a1 != *a2 || v23 != v24) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v25 = a1[3];
  v26 = a2[3];
  if (v25)
  {
    if (!v26 || (a1[2] != a2[2] || v25 != v26) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v26)
  {
    return 0;
  }

  v27 = a1[5];
  v28 = a2[5];
  if (v27)
  {
    if (!v28 || (a1[4] != a2[4] || v27 != v28) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v28)
  {
    return 0;
  }

  v70 = v13;
  v68 = v8;
  v29 = type metadata accessor for TNCFollowUpNotification(0);
  v72 = v5;
  v69 = v29;
  v30 = *(v29 + 28);
  v31 = *(v16 + 48);
  outlined init with copy of Date?(a1 + v30, v22, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
  v32 = v72;
  v71 = v31;
  outlined init with copy of Date?(a2 + v30, &v22[v31], &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
  v35 = *(v32 + 48);
  v33 = v32 + 48;
  v34 = v35;
  if (v35(v22, 1, v4) == 1)
  {
    v36 = v34(&v22[v71], 1, v4);
    v37 = v70;
    if (v36 == 1)
    {
      v67 = v34;
      outlined destroy of NSObject?(v22, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
      goto LABEL_29;
    }

LABEL_27:
    v39 = v22;
LABEL_35:
    outlined destroy of NSObject?(v39, &_s22ThreatNotificationCore17TNCFollowUpActionVSg_ADtMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSg_ADtMR);
    return 0;
  }

  outlined init with copy of Date?(v22, v15, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
  v67 = v34;
  v72 = v33;
  v38 = v34(&v22[v71], 1, v4);
  v37 = v70;
  if (v38 == 1)
  {
    outlined destroy of TNCFollowUpAction(v15, type metadata accessor for TNCFollowUpAction);
    goto LABEL_27;
  }

  v40 = v68;
  outlined init with take of TNCFollowUpAction(&v22[v71], v68, type metadata accessor for TNCFollowUpAction);
  LODWORD(v71) = specialized static TNCFollowUpAction.== infix(_:_:)(v15, v40);
  outlined destroy of TNCFollowUpAction(v40, type metadata accessor for TNCFollowUpAction);
  outlined destroy of TNCFollowUpAction(v15, type metadata accessor for TNCFollowUpAction);
  outlined destroy of NSObject?(v22, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
  if ((v71 & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  v41 = v69[8];
  v42 = *(v16 + 48);
  outlined init with copy of Date?(a1 + v41, v20, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
  outlined init with copy of Date?(a2 + v41, &v20[v42], &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
  v43 = v67;
  if (v67(v20, 1, v4) == 1)
  {
    if (v43(&v20[v42], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v20, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
      goto LABEL_38;
    }

    goto LABEL_34;
  }

  outlined init with copy of Date?(v20, v37, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
  if (v43(&v20[v42], 1, v4) == 1)
  {
    outlined destroy of TNCFollowUpAction(v37, type metadata accessor for TNCFollowUpAction);
LABEL_34:
    v39 = v20;
    goto LABEL_35;
  }

  v45 = &v20[v42];
  v46 = v68;
  outlined init with take of TNCFollowUpAction(v45, v68, type metadata accessor for TNCFollowUpAction);
  v47 = specialized static TNCFollowUpAction.== infix(_:_:)(v37, v46);
  outlined destroy of TNCFollowUpAction(v46, type metadata accessor for TNCFollowUpAction);
  outlined destroy of TNCFollowUpAction(v37, type metadata accessor for TNCFollowUpAction);
  outlined destroy of NSObject?(v20, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMd, &_s22ThreatNotificationCore17TNCFollowUpActionVSgMR);
  if (!v47)
  {
    return 0;
  }

LABEL_38:
  v48 = v69[9];
  v49 = (a1 + v48);
  v50 = *(a1 + v48 + 8);
  v51 = (a2 + v48);
  v52 = v51[1];
  if (v50)
  {
    if (!v52 || (*v49 != *v51 || v50 != v52) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v52)
  {
    return 0;
  }

  v53 = v69[10];
  v54 = (a1 + v53);
  v55 = *(a1 + v53 + 8);
  v56 = (a2 + v53);
  v57 = *(a2 + v53 + 8);
  if (v55)
  {
    if (!v57)
    {
      return 0;
    }
  }

  else
  {
    if (*v54 != *v56)
    {
      LOBYTE(v57) = 1;
    }

    if (v57)
    {
      return 0;
    }
  }

  v58 = v69[11];
  v59 = (a1 + v58);
  v60 = *(a1 + v58 + 8);
  v61 = (a2 + v58);
  v62 = *(a2 + v58 + 8);
  if (v60)
  {
    if (!v62)
    {
      return 0;
    }
  }

  else
  {
    if (*v59 != *v61)
    {
      LOBYTE(v62) = 1;
    }

    if (v62)
    {
      return 0;
    }
  }

  v63 = v69[12];
  v64 = *(a1 + v63);
  v65 = *(a2 + v63);
  if (v64)
  {
    if (v65)
    {

      v66 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v64, v65);

      if (v66)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v65;
}

BOOL specialized static TNCFollowUpAction.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v58[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v58[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v58[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v58[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v22 = &v58[-v21];
  v23 = a1[1];
  v24 = a2[1];
  if (v23)
  {
    if (!v24 || (*a1 != *a2 || v23 != v24) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v25 = a1[3];
  v26 = a2[3];
  if (!v25)
  {
    if (!v26)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (!v26 || (a1[2] != a2[2] || v25 != v26) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  v60 = v13;
  v61 = v8;
  v27 = type metadata accessor for TNCFollowUpAction(0);
  v65 = a2;
  v28 = *(v27 + 24);
  v29 = *(v16 + 48);
  v62 = v27;
  v63 = a1;
  outlined init with copy of Date?(a1 + v28, v22, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined init with copy of Date?(v65 + v28, &v22[v29], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v64 = v5;
  v30 = *(v5 + 48);
  if (v30(v22, 1, v4) == 1)
  {
    if (v30(&v22[v29], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v22, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  outlined init with copy of Date?(v22, v15, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (v30(&v22[v29], 1, v4) == 1)
  {
    (*(v64 + 8))(v15, v4);
LABEL_20:
    outlined destroy of NSObject?(v22, &_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
    return 0;
  }

  v31 = v64;
  v32 = v61;
  (*(v64 + 32))(v61, &v22[v29], v4);
  lazy protocol witness table accessor for type FLNotificationOptions and conformance FLNotificationOptions(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
  v59 = dispatch thunk of static Equatable.== infix(_:_:)();
  v33 = *(v31 + 8);
  v33(v32, v4);
  v33(v15, v4);
  outlined destroy of NSObject?(v22, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((v59 & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  v34 = v62;
  v35 = v62[8];
  v36 = *(v16 + 48);
  outlined init with copy of Date?(v63 + v35, v20, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v37 = v65 + v35;
  v38 = v65;
  outlined init with copy of Date?(v37, &v20[v36], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (v30(v20, 1, v4) == 1)
  {
    if (v30(&v20[v36], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v20, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  v39 = v60;
  outlined init with copy of Date?(v20, v60, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (v30(&v20[v36], 1, v4) == 1)
  {
    (*(v64 + 8))(v39, v4);
LABEL_27:
    outlined destroy of NSObject?(v20, &_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
    return 0;
  }

  v40 = v64;
  v41 = &v20[v36];
  v42 = v61;
  (*(v64 + 32))(v61, v41, v4);
  lazy protocol witness table accessor for type FLNotificationOptions and conformance FLNotificationOptions(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
  v43 = dispatch thunk of static Equatable.== infix(_:_:)();
  v44 = *(v40 + 8);
  v44(v42, v4);
  v44(v39, v4);
  v38 = v65;
  outlined destroy of NSObject?(v20, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((v43 & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  v45 = v34[9];
  v46 = v63;
  v48 = *(v63 + v45);
  v47 = *(v63 + v45 + 8);
  v49 = (v38 + v45);
  v51 = *v49;
  v50 = v49[1];
  if (v47 >> 60 == 15)
  {
    if (v50 >> 60 == 15)
    {
      outlined copy of Data?(v48, v47);
      outlined copy of Data?(v51, v50);
      outlined consume of Data?(v48, v47);
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  if (v50 >> 60 == 15)
  {
LABEL_33:
    outlined copy of Data?(v48, v47);
    outlined copy of Data?(v51, v50);
    outlined consume of Data?(v48, v47);
    outlined consume of Data?(v51, v50);
    return 0;
  }

  outlined copy of Data?(v48, v47);
  outlined copy of Data?(v51, v50);
  v52 = specialized static Data.== infix(_:_:)(v48, v47, v51, v50);
  outlined consume of Data?(v51, v50);
  outlined consume of Data?(v48, v47);
  if ((v52 & 1) == 0)
  {
    return 0;
  }

LABEL_35:
  if (*(v46 + v34[10]) != *(v38 + v34[10]))
  {
    return 0;
  }

  v54 = v34[7];
  if (!*(v46 + v54))
  {
    return *(v38 + v54) == 0;
  }

  v55.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  if (!*(v38 + v34[7]))
  {

    return 0;
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v57 = [(objc_class *)v55.super.isa isEqualToDictionary:isa];

  return v57;
}

uint64_t outlined init with take of TNCFollowUpAction(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL specialized static TNCFollowUpItem.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v60 = *(v4 - 8);
  v61 = v4;
  v5 = *(v60 + 64);
  MEMORY[0x28223BE20](v4);
  v59 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v55 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v55 - v13;
  v15 = type metadata accessor for TNCFollowUpNotification(0);
  v62 = *(v15 - 8);
  v16 = *(v62 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore011TNCFollowUpB0VSgMd, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = (&v55 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22ThreatNotificationCore011TNCFollowUpB0VSg_ADtMd, &_s22ThreatNotificationCore011TNCFollowUpB0VSg_ADtMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v55 - v25;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v27 = a1[3];
  v28 = a2[3];
  if (v27)
  {
    if (!v28 || (a1[2] != a2[2] || v27 != v28) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v28)
  {
    return 0;
  }

  v29 = a1[5];
  v30 = a2[5];
  if (v29)
  {
    if (!v30 || (a1[4] != a2[4] || v29 != v30) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v30)
  {
    return 0;
  }

  v31 = a1[7];
  v32 = a2[7];
  if (v31)
  {
    if (!v32 || (a1[6] != a2[6] || v31 != v32) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v32)
  {
    return 0;
  }

  v57 = v10;
  v33 = type metadata accessor for TNCFollowUpItem(0);
  if (!_sSasSQRzlE2eeoiySbSayxG_ABtFZ22ThreatNotificationCore17TNCFollowUpActionV_Tt1g5(*(a1 + *(v33 + 44)), *(a2 + *(v33 + 44))))
  {
    return 0;
  }

  v56 = v33;
  v34 = *(v33 + 48);
  v35 = *(v23 + 48);
  v36 = v34;
  outlined init with copy of Date?(a1 + v34, v26, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMd, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMR);
  v58 = v35;
  outlined init with copy of Date?(a2 + v36, &v26[v35], &_s22ThreatNotificationCore011TNCFollowUpB0VSgMd, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMR);
  v37 = *(v62 + 48);
  if (v37(v26, 1, v15) == 1)
  {
    if (v37(&v26[v58], 1, v15) == 1)
    {
      outlined destroy of NSObject?(v26, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMd, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMR);
      goto LABEL_33;
    }

LABEL_31:
    outlined destroy of NSObject?(v26, &_s22ThreatNotificationCore011TNCFollowUpB0VSg_ADtMd, &_s22ThreatNotificationCore011TNCFollowUpB0VSg_ADtMR);
    return 0;
  }

  outlined init with copy of Date?(v26, v22, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMd, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMR);
  if (v37(&v26[v58], 1, v15) == 1)
  {
    outlined destroy of TNCFollowUpAction(v22, type metadata accessor for TNCFollowUpNotification);
    goto LABEL_31;
  }

  outlined init with take of TNCFollowUpAction(&v26[v58], v18, type metadata accessor for TNCFollowUpNotification);
  v38 = specialized static TNCFollowUpNotification.== infix(_:_:)(v22, v18);
  outlined destroy of TNCFollowUpAction(v18, type metadata accessor for TNCFollowUpNotification);
  outlined destroy of TNCFollowUpAction(v22, type metadata accessor for TNCFollowUpNotification);
  outlined destroy of NSObject?(v26, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMd, &_s22ThreatNotificationCore011TNCFollowUpB0VSgMR);
  if (!v38)
  {
    return 0;
  }

LABEL_33:
  v39 = v56;
  v40 = *(v56 + 32);
  v41 = *(v11 + 48);
  outlined init with copy of Date?(a1 + v40, v14, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of Date?(a2 + v40, &v14[v41], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v43 = v60;
  v42 = v61;
  v44 = *(v60 + 48);
  if (v44(v14, 1, v61) != 1)
  {
    v45 = v57;
    outlined init with copy of Date?(v14, v57, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (v44(&v14[v41], 1, v42) != 1)
    {
      v46 = &v14[v41];
      v47 = v59;
      (*(v43 + 32))(v59, v46, v42);
      lazy protocol witness table accessor for type FLNotificationOptions and conformance FLNotificationOptions(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
      v48 = dispatch thunk of static Equatable.== infix(_:_:)();
      v49 = *(v43 + 8);
      v49(v47, v42);
      v49(v45, v42);
      outlined destroy of NSObject?(v14, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if ((v48 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_40;
    }

    (*(v43 + 8))(v45, v42);
LABEL_38:
    outlined destroy of NSObject?(v14, &_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
    return 0;
  }

  if (v44(&v14[v41], 1, v42) != 1)
  {
    goto LABEL_38;
  }

  outlined destroy of NSObject?(v14, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_40:
  if (*(a1 + *(v39 + 40)) == *(a2 + *(v39 + 40)))
  {
    v51 = *(v39 + 36);
    if (!*(a1 + v51))
    {
      return *(a2 + v51) == 0;
    }

    v52.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    if (*(a2 + *(v39 + 36)))
    {
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v54 = [(objc_class *)v52.super.isa isEqualToDictionary:isa];

      return v54;
    }
  }

  return 0;
}