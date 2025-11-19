void *specialized static ConversationMUXUtils.homeMember(withUserId:from:)(uint64_t a1)
{
  v2 = MUXContextMessage.userIdToHomeMember.getter();
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void specialized static ConversationMUXUtils.isOwner(_:)(void *a1, uint64_t *a2)
{
  v3 = [a1 attributes];
  if (v3)
  {
    v4 = v3;
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = 0;
      v8 = *a2;
      v9 = v5 + 32;
      while (v7 < *(v5 + 16))
      {
        outlined init with copy of Any(v9, v20);
        outlined init with copy of Any(v20, v19);
        v10 = swift_dynamicCast();
        if (v10)
        {
          v11 = v17;
        }

        else
        {
          v11 = 0;
        }

        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (v10)
        {
          v14 = v18 == 0;
        }

        else
        {
          v14 = 1;
        }

        if (v14)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v20);
        }

        else
        {
          if (v11 == v12 && v18 == v13)
          {

            __swift_destroy_boxed_opaque_existential_1Tm(v20);
LABEL_22:

            return;
          }

          v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

          __swift_destroy_boxed_opaque_existential_1Tm(v20);
          if (v16)
          {
            goto LABEL_22;
          }
        }

        ++v7;
        v9 += 32;
        if (v6 == v7)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_20:
    }
  }
}

void specialized static ConversationMUXUtils.singleKnownUserInHome(muxContextMessage:)()
{
  v0 = type metadata accessor for UserID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v51 = v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v50 - v9;
  v11 = MUXContextMessage.userIdToHomeMember.getter();
  v59 = 0;
  v12 = 0;
  v14 = v11 + 64;
  v13 = *(v11 + 64);
  v53 = v11;
  v15 = 1 << *(v11 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v13;
  v18 = (v15 + 63) >> 6;
  v50[2] = v1 + 16;
  v50[1] = v1 + 32;
  v62 = *MEMORY[0x1E69C7EF0];
  v52 = v1;
  v57 = v11 + 64;
  v58 = (v1 + 8);
  v55 = v0;
  v56 = v18;
  v54 = v8;
  v60 = v10;
  if ((v16 & v13) == 0)
  {
    goto LABEL_7;
  }

  while (1)
  {
LABEL_16:
    v22 = v8;
    v21 = v12;
LABEL_17:
    v24 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v25 = v24 | (v21 << 6);
    v27 = v52;
    v26 = v53;
    v28 = v51;
    (*(v52 + 16))(v51, *(v53 + 48) + *(v52 + 72) * v25, v0);
    v29 = *(*(v26 + 56) + 8 * v25);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMR);
    v31 = *(v30 + 48);
    v32 = v28;
    v8 = v22;
    (*(v27 + 32))(v22, v32, v0);
    *&v22[v31] = v29;
    (*(*(v30 - 8) + 56))(v22, 0, 1, v30);
    v33 = v29;
    v10 = v60;
LABEL_18:
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v8, v10, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetSgMR);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMR);
    if ((*(*(v34 - 8) + 48))(v10, 1, v34) == 1)
    {

      return;
    }

    v35 = *&v10[*(v34 + 48)];
    v36 = [v35 attributes];
    if (!v36)
    {

      if (v59)
      {
        goto LABEL_46;
      }

      goto LABEL_40;
    }

    v37 = v36;
    v61 = v35;
    v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = *(v38 + 16);
    if (v39)
    {
      break;
    }

LABEL_39:

    v10 = v60;
    if (v59)
    {
LABEL_46:

      (*v58)(v10, v0);
      return;
    }

LABEL_40:
    (*v58)(v10, v0);
    v59 = 1;
    v18 = v56;
    v14 = v57;
    if (!v17)
    {
      goto LABEL_7;
    }
  }

  v40 = 0;
  v41 = v38 + 32;
  while (1)
  {
    if (v40 >= *(v38 + 16))
    {
      __break(1u);
      goto LABEL_48;
    }

    outlined init with copy of Any(v41, v66);
    outlined init with copy of Any(v66, v65);
    v42 = swift_dynamicCast();
    v43 = v64;
    if (v42)
    {
      v44 = v63;
    }

    else
    {
      v44 = 0;
    }

    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v42)
    {
      v47 = v43 == 0;
    }

    else
    {
      v47 = 1;
    }

    if (v47)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v66);

      goto LABEL_23;
    }

    if (v44 == v45 && v43 == v46)
    {
      break;
    }

    v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    if (v49)
    {
      goto LABEL_6;
    }

LABEL_23:
    ++v40;
    v41 += 32;
    if (v39 == v40)
    {

      v8 = v54;
      v0 = v55;
      goto LABEL_39;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v66);
LABEL_6:

  v10 = v60;
  v0 = v55;
  (*v58)(v60, v55);
  v8 = v54;
  v18 = v56;
  v14 = v57;
  if (v17)
  {
    goto LABEL_16;
  }

LABEL_7:
  if (v18 <= v12 + 1)
  {
    v19 = v12 + 1;
  }

  else
  {
    v19 = v18;
  }

  v20 = v19 - 1;
  while (1)
  {
    v21 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v21 >= v18)
    {
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So16SAHomeMemberInfoC5valuetMR);
      (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
      v17 = 0;
      v12 = v20;
      goto LABEL_18;
    }

    v17 = *(v14 + 8 * v21);
    ++v12;
    if (v17)
    {
      v22 = v8;
      v12 = v21;
      goto LABEL_17;
    }
  }

LABEL_48:
  __break(1u);
}

void *specialized static ConversationMUXUtils.voiceIdentificationSignal(withRefId:requestType:isPersonalRequest:isServerFallback:voiceIdClassification:voiceIdOverridden:selectedUserId:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, uint64_t a6, int a7, int a8, uint64_t a9)
{
  v58 = a7;
  v57 = a6;
  v56 = a4;
  v54 = a1;
  v55 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v52[-v13];
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v52[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = type metadata accessor for RequestType();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v52[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a5)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.conversationBridge);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_7;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "Not sending VoiceIdenfiticationSignal in case of server fallback";
LABEL_6:
    _os_log_impl(&dword_1DC659000, v27, v28, v30, v29, 2u);
    MEMORY[0x1E12A2F50](v29, -1, -1);
LABEL_7:

    return 0;
  }

  v53 = a8;
  (*(v21 + 104))(v25, *MEMORY[0x1E69D0548], v20, v23);
  lazy protocol witness table accessor for type UserID and conformance UserID(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v61 == v59 && v62 == v60)
  {
    (*(v21 + 8))(v25, v20);
  }

  else
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
    (*(v21 + 8))(v25, v20);

    if ((v32 & 1) == 0)
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      __swift_project_value_buffer(v51, static Logger.conversationBridge);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v27, v28))
      {
        goto LABEL_7;
      }

      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = "Not sending VoiceIdentification since this is not a speech request";
      goto LABEL_6;
    }
  }

  v33 = [objc_allocWithZone(MEMORY[0x1E69C7A38]) init];
  UUID.init()();
  v34 = UUID.uuidString.getter();
  v36 = v35;
  (*(v16 + 8))(v19, v15);
  v37 = MEMORY[0x1E12A1410](v34, v36);

  [v33 setAceId_];

  v38 = v33;
  v39 = MEMORY[0x1E12A1410](v54, v55);
  [v38 setRefId_];

  v40 = v38;
  [v38 setRecordUserAudio_];
  v41 = ((v57 - 3) < 2) & ~v58;
  outlined init with copy of UserID?(a9, v14);
  v42 = type metadata accessor for UserID();
  v43 = *(v42 - 8);
  if ((*(v43 + 48))(v14, 1, v42) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
LABEL_17:
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static Logger.conversationBridge);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 67109376;
      *(v50 + 4) = v41;
      *(v50 + 8) = 1024;
      *(v50 + 10) = v53 & 1;
      _os_log_impl(&dword_1DC659000, v48, v49, "Not updating selectedSharedUserId in VoiceIdentificationSignal because either selectedUserId is nil or isConfidentEnough: %{BOOL}d, voiceIDOverridden: %{BOOL}d", v50, 0xEu);
      MEMORY[0x1E12A2F50](v50, -1, -1);
    }

    goto LABEL_26;
  }

  v44 = UserID.sharedUserId.getter();
  v46 = v45;
  (*(v43 + 8))(v14, v42);
  if (!v41 || (v53 & 1) != 0)
  {

    goto LABEL_17;
  }

  v48 = MEMORY[0x1E12A1410](v44, v46);

  [v40 setSelectedSharedUserId_];
LABEL_26:

  return v40;
}

uint64_t static ConversationMUXUtils.getUserIdForPrimaryUser(from:)(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_39;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return 0;
  }

LABEL_3:
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v30 = a1;
  v31 = a1 & 0xFFFFFFFFFFFFFF8;
  v6 = a1 + 32;
  v7 = *a2;
  v8 = &selRef_setMitigationSource_;
  v32 = a1 & 0xC000000000000001;
  v33 = v2;
  v34 = a1 + 32;
  while (1)
  {
    if (v4)
    {
      a1 = MEMORY[0x1E12A1FE0](v3, v30);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_38;
      }

      a1 = *(v6 + 8 * v3);
    }

    v9 = a1;
    if (__OFADD__(v3++, 1))
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      v27 = a1;
      v28 = a2;
      v29 = __CocoaSet.count.getter();
      a2 = v28;
      v2 = v29;
      a1 = v27;
      if (!v2)
      {
        return 0;
      }

      goto LABEL_3;
    }

    v11 = [a1 v8[32]];
    if (v11)
    {
      break;
    }

LABEL_5:
    if (v3 == v2)
    {
      return 0;
    }
  }

  v35 = v9;
  v12 = v11;
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = *(v13 + 16);
  if (!v14)
  {

LABEL_31:
    v6 = v34;
    v8 = &selRef_setMitigationSource_;
    goto LABEL_5;
  }

  v15 = 0;
  v16 = v13 + 32;
  while (1)
  {
    if (v15 >= *(v13 + 16))
    {
      __break(1u);
      goto LABEL_37;
    }

    outlined init with copy of Any(v16, v39);
    outlined init with copy of Any(v39, v38);
    v17 = swift_dynamicCast();
    if (v17)
    {
      v18 = v36;
    }

    else
    {
      v18 = 0;
    }

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v17)
    {
      v21 = v37 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v39);

      goto LABEL_14;
    }

    if (v18 == v19 && v37 == v20)
    {
      break;
    }

    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    a1 = __swift_destroy_boxed_opaque_existential_1Tm(v39);
    if (v23)
    {
      goto LABEL_34;
    }

LABEL_14:
    ++v15;
    v16 += 32;
    if (v14 == v15)
    {

      v4 = v32;
      v2 = v33;
      v5 = v31;
      goto LABEL_31;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v39);
LABEL_34:

  v24 = [v35 sharedUserId];

  if (!v24)
  {
    return 0;
  }

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v25;
}

uint64_t lazy protocol witness table accessor for type UserID and conformance UserID(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized Dictionary.removeValue(forKey:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v16 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v9 = v16;
  }

  v10 = *(v9 + 48);
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = (*(v9 + 56) + 16 * v6);
  v13 = *v12;
  v14 = v12[1];
  specialized _NativeDictionary._delete(at:)(v6, v9);
  *v2 = v9;
  return v13;
}

uint64_t ConversationOutputSubmitter.__allocating_init(requestDispatcherServiceHelper:isMUXEnabled:muxContextMessage:messagePublisher:featureChecker:)(uint64_t a1, char a2, uint64_t a3, __int128 *a4, uint64_t *a5)
{
  v10 = swift_allocObject();
  v11 = a5[3];
  v12 = a5[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a5, v11);
  v14 = *(*(v11 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v15);
  v19 = specialized ConversationOutputSubmitter.init(requestDispatcherServiceHelper:isMUXEnabled:muxContextMessage:messagePublisher:featureChecker:)(a1, a2, a3, a4, v17, v10, v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  return v19;
}

uint64_t ConversationOutputSubmitter.isMUXEnabled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 72) = a1;
  return result;
}

void ConversationOutputSubmitter.muxContextMessage.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  *(v1 + 80) = a1;
}

uint64_t ConversationOutputSubmitter.selfReflectionAgent.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 88);
  *(v1 + 88) = a1;
}

uint64_t ConversationOutputSubmitter.flowCommandCompletions.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
}

uint64_t ConversationOutputSubmitter.flowCommandCompletions.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  *(v1 + 96) = a1;
}

uint64_t ConversationOutputSubmitter.plannerTimeout.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 104) = a1;
  return result;
}

uint64_t ConversationOutputSubmitter.init(requestDispatcherServiceHelper:isMUXEnabled:muxContextMessage:messagePublisher:featureChecker:)(uint64_t a1, char a2, uint64_t a3, __int128 *a4, uint64_t *a5)
{
  v11 = a5[3];
  v12 = a5[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a5, v11);
  v14 = *(*(v11 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v15);
  v19 = specialized ConversationOutputSubmitter.init(requestDispatcherServiceHelper:isMUXEnabled:muxContextMessage:messagePublisher:featureChecker:)(a1, a2, a3, a4, v17, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  return v19;
}

uint64_t ConversationOutputSubmitter.__allocating_init(requestDispatcherServiceHelper:isMUXEnabled:muxContextMessage:messagePublisher:selfReflection:featureChecker:)(uint64_t a1, char a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t *a6)
{
  v12 = swift_allocObject();
  v13 = a6[3];
  v14 = a6[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a6, v13);
  v16 = *(*(v13 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v17);
  v21 = specialized ConversationOutputSubmitter.init(requestDispatcherServiceHelper:isMUXEnabled:muxContextMessage:messagePublisher:selfReflection:featureChecker:)(a1, a2, a3, a4, a5, v19, v12, v13, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  return v21;
}

uint64_t ConversationOutputSubmitter.init(requestDispatcherServiceHelper:isMUXEnabled:muxContextMessage:messagePublisher:selfReflection:featureChecker:)(uint64_t a1, char a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t *a6)
{
  v13 = a6[3];
  v14 = a6[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a6, v13);
  v16 = *(*(v13 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v17);
  v21 = specialized ConversationOutputSubmitter.init(requestDispatcherServiceHelper:isMUXEnabled:muxContextMessage:messagePublisher:selfReflection:featureChecker:)(a1, a2, a3, a4, a5, v19, v6, v13, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  return v21;
}

void ConversationOutputSubmitter.handleMitigation(mitigationResult:executionOutput:requestId:requestIdOverride:contextUpdater:executionContextMatchingInfo:executionContextUpdateMetadata:assistantId:sessionId:invocationId:_:)(unsigned __int8 *a1, char *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void (*a15)(id, void), uint64_t a16)
{
  v17 = v16;
  v422 = a7;
  v418 = a6;
  v413 = a5;
  v430 = a4;
  v428 = a3;
  v387 = a2;
  v386 = a16;
  v385 = a15;
  v414 = a14;
  v415 = a13;
  v427 = a12;
  v431 = a11;
  v429 = a10;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = (&v373 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v411 = &v373 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v373 - v27;
  updated = type metadata accessor for ContextUpdateScope();
  v416 = *(updated - 8);
  v29 = v416[8];
  MEMORY[0x1EEE9AC00](updated);
  v402 = &v373 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v401 = &v373 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v400 = &v373 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v399 = &v373 - v38;
  v39 = type metadata accessor for BinaryDecodingOptions();
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v408 = &v373 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v395 = &v373 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v409 = &v373 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v398 = &v373 - v48;
  v396 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  v406 = *(v396 - 8);
  v49 = *(v406 + 64);
  MEMORY[0x1EEE9AC00](v396);
  v410 = &v373 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v407 = &v373 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v384 = &v373 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v388 = &v373 - v56;
  v436 = type metadata accessor for RequestSummary.ExecutionSource();
  v437 = *(v436 - 8);
  v57 = v437[8];
  MEMORY[0x1EEE9AC00](v436);
  v425 = (&v373 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v59);
  v426 = &v373 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v435 = &v373 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v434 = &v373 - v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v66 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65 - 8);
  v417 = &v373 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68);
  v420 = &v373 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v433 = (&v373 - v71);
  MEMORY[0x1EEE9AC00](v72);
  v432 = &v373 - v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v75 = *(v74 - 8);
  v76 = v75[8];
  v77 = MEMORY[0x1EEE9AC00](v74 - 8);
  v79 = &v373 - v78;
  LODWORD(v80) = *a1;
  v81 = (*(*v17 + 200))(v77);
  if (!v81)
  {
    return;
  }

  v419 = v28;
  v405 = v23;
  v383 = v81;
  v423 = a8;
  v424 = a9;
  if (one-time initialization token for conversationBridge != -1)
  {
LABEL_119:
    swift_once();
  }

  v412 = type metadata accessor for Logger();
  v404 = __swift_project_value_buffer(v412, static Logger.conversationBridge);
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.debug.getter();
  v84 = os_log_type_enabled(v82, v83);
  v421 = v17;
  if (v84)
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    *&v445 = v86;
    *v85 = 136315394;
    *(v85 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD0000000000000BFLL, 0x80000001DCA80160, &v445);
    *(v85 + 12) = 2080;
    LOBYTE(v443) = v80;
    v87 = SelfReflectionAgentDecision.description.getter();
    v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v88, &v445);

    *(v85 + 14) = v89;
    _os_log_impl(&dword_1DC659000, v82, v83, "ConversationOutputSubmitter.%s self reflection decision: <%s>", v85, 0x16u);
    swift_arrayDestroy();
    v90 = v86;
    v17 = v421;
    MEMORY[0x1E12A2F50](v90, -1, -1);
    MEMORY[0x1E12A2F50](v85, -1, -1);
  }

  v91 = v424;
  if (v80 <= 3)
  {
    if (v80 == 2)
    {
LABEL_65:

      goto LABEL_67;
    }

    if (v80 == 3)
    {
LABEL_9:
      if (*&v387[OBJC_IVAR___SKRExecutionOutput_command])
      {
        v92 = [objc_allocWithZone(MEMORY[0x1E69C7788]) init];
        v385(v92, 0);
      }

      else
      {
        v385(0, 0);
      }

      goto LABEL_65;
    }

LABEL_13:
    outlined init with copy of ReferenceResolutionClientProtocol?(v422, &v445, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v427, v79, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v93 = (*(v75 + 80) + 152) & ~*(v75 + 80);
    v94 = swift_allocObject();
    v95 = v91;
    v96 = v386;
    *(v94 + 16) = v385;
    *(v94 + 24) = v96;
    v97 = v387;
    *(v94 + 32) = v387;
    *(v94 + 40) = v17;
    v98 = v430;
    *(v94 + 48) = v428;
    *(v94 + 56) = v98;
    v99 = v418;
    *(v94 + 64) = v413;
    *(v94 + 72) = v99;
    v100 = v446;
    *(v94 + 80) = v445;
    *(v94 + 96) = v100;
    v101 = v423;
    *(v94 + 112) = v447;
    *(v94 + 120) = v101;
    v102 = v429;
    *(v94 + 128) = v95;
    *(v94 + 136) = v102;
    *(v94 + 144) = v431;
    outlined init with take of UUID?(v79, v94 + v93);
    v103 = (v94 + (&v76[v93 + 7] & 0xFFFFFFFFFFFFFFF8));
    v104 = v414;
    *v103 = v415;
    v103[1] = v104;

    v105 = v97;

    v106 = v101;

    SelfReflectionAgent.createAskToRepeatAction(revealSpeech:_:)(v80 & 1, partial apply for closure #1 in ConversationOutputSubmitter.handleMitigation(mitigationResult:executionOutput:requestId:requestIdOverride:contextUpdater:executionContextMatchingInfo:executionContextUpdateMetadata:assistantId:sessionId:invocationId:_:), v94);

    return;
  }

  if (v80 != 4)
  {
    if (v80 != 5)
    {
      if (v80 == 6)
      {
        goto LABEL_9;
      }

      goto LABEL_13;
    }

    v225 = v424;
    outlined init with copy of ReferenceResolutionClientProtocol?(v422, &v443, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
    if (v444)
    {
      outlined init with take of ReferenceResolutionClientProtocol(&v443, &v445);
      v226 = v387;
      if (v225)
      {
        v227 = *&v387[OBJC_IVAR___SKRExecutionOutput_contextUpdate];
        if (v227)
        {
          v228 = *(*v17 + 152);

          v229 = v227;
          v230 = v228();
          v231 = ContextUpdateScope.toExecutionContextUpdateScope(isMUXEnabled:)(v230 & 1);
          v232 = *(&v446 + 1);
          v233 = v447;
          __swift_project_boxed_opaque_existential_1(&v445, *(&v446 + 1));
          (v233[1])(v229, v225, v231, v232, v233);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v445);
        goto LABEL_75;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v445);
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v443, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
      v226 = v387;
    }

    v237 = Logger.logObject.getter();
    v238 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v237, v238))
    {
      v239 = swift_slowAlloc();
      *v239 = 0;
      _os_log_impl(&dword_1DC659000, v237, v238, "Not applying any context but just submitting ExecutionOutput since ContextUpdater or metadata or both are nil", v239, 2u);
      MEMORY[0x1E12A2F50](v239, -1, -1);
    }

LABEL_75:
    ConversationOutputSubmitter.sendOutputMessagesIfNecessary(output:requestId:commandExecutionInfo:assistantId:sessionId:invocationId:)(v226, v428, v430, v423, v429, v431, v427, v415, v414);
    v240 = *(v226 + OBJC_IVAR___SKRExecutionOutput_command);
    if (v225)
    {
      v241 = OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId;
      v242 = type metadata accessor for UserID();
      v243 = *(v242 - 8);
      v244 = v225 + v241;
      v245 = v411;
      (*(v243 + 16))(v411, v244, v242);
      (*(v243 + 56))(v245, 0, 1, v242);
      v246 = *(v225 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold);
      v247 = *(v225 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold);
    }

    else
    {
      v248 = type metadata accessor for UserID();
      v245 = v411;
      (*(*(v248 - 8) + 56))(v411, 1, 1, v248);
      v247 = 0;
      v246 = 0;
    }

    v435 = 0;
    BYTE1(v371) = v247;
    LOBYTE(v371) = v246;
    (*(*v17 + 328))(v240, v428, v430, v413, v418, v423, v429, v431, v427, v245, v371, v385, v386);
    outlined destroy of ReferenceResolutionClientProtocol?(v245, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
    SelfReflectionAgent.createRevealRecognizedSpeech()();
    v434 = v249;
    v250 = v226 + OBJC_IVAR___SKRExecutionOutput_executionRequestId;
    v252 = *(v226 + OBJC_IVAR___SKRExecutionOutput_executionRequestId);
    v251 = *(v250 + 8);
    v253 = type metadata accessor for FlowOutputMessage.InAppResponse();
    v254 = v420;
    (*(*(v253 - 8) + 56))(v420, 1, 1, v253);
    v255 = v437;
    v256 = v426;
    v257 = v436;
    (v437[13])(v426, *MEMORY[0x1E69D0678], v436);
    v258 = v255[2];
    v259 = v425;
    v258(v425, v256, v257);
    v260 = v254;
    v261 = v417;
    outlined init with copy of ReferenceResolutionClientProtocol?(v260, v417, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v433 = type metadata accessor for ExecutionOutput();
    v262 = objc_allocWithZone(v433);
    v263 = &v262[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
    *v263 = v252;
    *(v263 + 1) = v251;
    v264 = &v262[OBJC_IVAR___SKRExecutionOutput_fullPrint];
    *v264 = 0;
    *(v264 + 1) = 0;
    v265 = &v262[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
    *v265 = 0;
    *(v265 + 1) = 0;
    v266 = &v262[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
    *v266 = 0;
    *(v266 + 1) = 0;
    v267 = &v262[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
    *v267 = 0;
    *(v267 + 1) = 0;
    v258(&v262[OBJC_IVAR___SKRExecutionOutput_executionSource], v259, v257);
    v432 = v262;
    v268 = v261;
    v269 = v434;
    outlined init with copy of ReferenceResolutionClientProtocol?(v268, &v262[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    objc_opt_self();
    v270 = swift_dynamicCastObjCClass();
    v271 = one-time initialization token for executor;
    v272 = v269;
    v273 = v272;
    if (!v270)
    {

      if (v271 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v412, static Logger.executor);
      v288 = v273;
      v289 = Logger.logObject.getter();
      v290 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v289, v290))
      {
        v291 = swift_slowAlloc();
        v292 = swift_slowAlloc();
        v293 = v273;
        v294 = swift_slowAlloc();
        *&v445 = v294;
        *v291 = 136315394;
        *(v291 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v445);
        *(v291 + 12) = 2112;
        *(v291 + 14) = v288;
        *v292 = v269;
        v295 = v288;
        _os_log_impl(&dword_1DC659000, v289, v290, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v291, 0x16u);
        outlined destroy of ReferenceResolutionClientProtocol?(v292, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1E12A2F50](v292, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v294);
        v296 = v294;
        v273 = v293;
        MEMORY[0x1E12A2F50](v296, -1, -1);
        MEMORY[0x1E12A2F50](v291, -1, -1);
      }

      v297 = v424;
      v298 = v436;
      v299 = v405;
      v300 = 0x1FB2FA000;
      v301 = v432;
      *&v432[OBJC_IVAR___SKRExecutionOutput_command] = v269;
      *&v301[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = 0;
      v302 = v288;
      v303 = v433;
LABEL_96:
      v442.receiver = v301;
      v442.super_class = v303;
      v327 = objc_msgSendSuper2(&v442, v300[390]);
      outlined destroy of ReferenceResolutionClientProtocol?(v417, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
      v328 = v437[1];
      v328(v425, v298);

      v328(v426, v298);
      outlined destroy of ReferenceResolutionClientProtocol?(v420, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
      outlined init with copy of ReferenceResolutionClientProtocol?(v422, &v443, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
      v329 = v423;
      if (v444)
      {
        outlined init with take of ReferenceResolutionClientProtocol(&v443, &v445);
        v330 = v421;
        if (v297)
        {
          v331 = *&v327[OBJC_IVAR___SKRExecutionOutput_contextUpdate];
          if (v331)
          {
            v419 = v273;
            v332 = *(*v421 + 152);

            v333 = v331;
            v334 = v332();
            v335 = ContextUpdateScope.toExecutionContextUpdateScope(isMUXEnabled:)(v334 & 1);
            v336 = *(&v446 + 1);
            v337 = v447;
            __swift_project_boxed_opaque_existential_1(&v445, *(&v446 + 1));
            v338 = v435;
            (v337[1])(v333, v297, v335, v336, v337);
            if (v338)
            {

              v339 = v338;
              v340 = Logger.logObject.getter();
              v341 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v340, v341))
              {
                v342 = swift_slowAlloc();
                v343 = swift_slowAlloc();
                *&v443 = v343;
                *v342 = 136315138;
                v441 = v338;
                v344 = v338;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
                v345 = String.init<A>(describing:)();
                v347 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v345, v346, &v443);

                *(v342 + 4) = v347;
                _os_log_impl(&dword_1DC659000, v340, v341, "Error while applying context: %s", v342, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v343);
                MEMORY[0x1E12A2F50](v343, -1, -1);
                MEMORY[0x1E12A2F50](v342, -1, -1);
              }

              __swift_destroy_boxed_opaque_existential_1Tm(&v445);
              return;
            }

            v329 = v423;
            v330 = v421;
            v273 = v419;
          }

          __swift_destroy_boxed_opaque_existential_1Tm(&v445);
LABEL_112:
          ConversationOutputSubmitter.sendOutputMessagesIfNecessary(output:requestId:commandExecutionInfo:assistantId:sessionId:invocationId:)(v327, v428, v430, v329, v429, v431, v427, v415, v414);
          v363 = *&v327[OBJC_IVAR___SKRExecutionOutput_command];
          if (v297)
          {
            v364 = OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId;
            v365 = type metadata accessor for UserID();
            v366 = *(v365 - 8);
            (*(v366 + 16))(v299, v297 + v364, v365);
            (*(v366 + 56))(v299, 0, 1, v365);
            v367 = *(v297 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold);
            v368 = *(v297 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold);
          }

          else
          {
            v369 = type metadata accessor for UserID();
            (*(*(v369 - 8) + 56))(v299, 1, 1, v369);
            v368 = 0;
            v367 = 0;
          }

          BYTE1(v372) = v368;
          LOBYTE(v372) = v367;
          (*(*v330 + 328))(v363, v428, v430, v413, v418, v329, v429, v431, v427, v299, v372, destructiveProjectEnumData for AceServiceInvokerImpl.AceSubmitOptions, 0);

          outlined destroy of ReferenceResolutionClientProtocol?(v299, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);

          return;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v445);
      }

      else
      {
        outlined destroy of ReferenceResolutionClientProtocol?(&v443, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
        v330 = v421;
      }

      v348 = Logger.logObject.getter();
      v349 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v348, v349))
      {
        v350 = swift_slowAlloc();
        *v350 = 0;
        _os_log_impl(&dword_1DC659000, v348, v349, "Not applying any context but just submitting ExecutionOutput since ContextUpdater or metadata or both are nil", v350, 2u);
        MEMORY[0x1E12A2F50](v350, -1, -1);
      }

      goto LABEL_112;
    }

    v434 = v270;
    v274 = v272;
    v275 = v272;

    if (v271 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v412, static Logger.executor);
    v276 = v275;
    v277 = Logger.logObject.getter();
    v278 = static os_log_type_t.debug.getter();

    v279 = os_log_type_enabled(v277, v278);
    v280 = v435;
    v281 = v409;
    v419 = v274;
    if (v279)
    {
      v282 = swift_slowAlloc();
      v283 = swift_slowAlloc();
      v284 = swift_slowAlloc();
      *&v445 = v284;
      *v282 = 136315394;
      *(v282 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v445);
      *(v282 + 12) = 2112;
      v285 = v434;
      *(v282 + 14) = v434;
      *v283 = v285;
      v286 = v276;
      _os_log_impl(&dword_1DC659000, v277, v278, "ExecutionOutput: %s: converting SARDNativeFlowContextUpdate=%@ to ExecutionOutput", v282, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v283, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v283, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v284);
      MEMORY[0x1E12A2F50](v284, -1, -1);
      MEMORY[0x1E12A2F50](v282, -1, -1);

      v287 = v410;
    }

    else
    {

      v287 = v410;
      v285 = v434;
    }

    v304 = [v285 promptContextProto];
    if (v304)
    {
      v305 = v304;
      v306 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v308 = v307;

      v447 = 0;
      v445 = 0u;
      v446 = 0u;
      outlined copy of Data._Representation(v306, v308);
      BinaryDecodingOptions.init()();
      lazy protocol witness table accessor for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext(&lazy protocol witness table cache variable for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext, MEMORY[0x1E69D1500]);
      v309 = v396;
      Message.init(serializedData:extensions:partial:options:)();
      if (!v280)
      {
        v435 = 0;
        v351 = v406;
        (*(v406 + 56))(v281, 0, 1, v309);
        v352 = v407;
        (*(v351 + 32))(v407, v281, v309);
        (*(v351 + 16))(v287, v352, v309);
        v353 = v309;
        v354 = Logger.logObject.getter();
        v355 = v287;
        v356 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v354, v356))
        {
          v357 = swift_slowAlloc();
          v412 = swift_slowAlloc();
          *&v445 = v412;
          *v357 = 136315394;
          *(v357 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v445);
          *(v357 + 12) = 2080;
          v358 = v353;
          v359 = Message.textFormatString()();
          LODWORD(v411) = v356;
          v360 = *(v351 + 8);
          v360(v355, v353);
          v361 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v359._countAndFlagsBits, v359._object, &v445);

          *(v357 + 14) = v361;
          _os_log_impl(&dword_1DC659000, v354, v411, "ExecutionOutput: %s: NFCU has prompt context %s", v357, 0x16u);
          v362 = v412;
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v362, -1, -1);
          MEMORY[0x1E12A2F50](v357, -1, -1);

          outlined consume of Data._Representation(v306, v308);
          v360(v407, v358);
        }

        else
        {

          outlined consume of Data._Representation(v306, v308);
          v370 = *(v351 + 8);
          v370(v287, v353);
          v370(v407, v353);
        }

LABEL_95:
        v314 = type metadata accessor for Parse.DirectInvocation();
        v315 = v399;
        (*(*(v314 - 8) + 56))(v399, 1, 1, v314);
        v316 = type metadata accessor for PommesContext();
        v317 = v400;
        (*(*(v316 - 8) + 56))(v400, 1, 1, v316);
        v318 = v416;
        v319 = v402;
        v320 = updated;
        (v416[13])(v402, *MEMORY[0x1E69CFF08], updated);
        v321 = type metadata accessor for ExecutionContextUpdate();
        v322 = objc_allocWithZone(v321);
        v323 = v401;
        outlined init with copy of ReferenceResolutionClientProtocol?(v317, v401, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
        v324 = v434;
        specialized static ExecutionContextUpdate.synchronizePromptContexts(pommesContext:nativeFlowContextCommand:)(v323, v434);
        *&v322[OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand] = 0;
        *&v322[OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand] = v324;
        *&v322[OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs] = 0;
        *&v322[OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks] = 0;
        *&v322[OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks] = 0;
        outlined init with copy of ReferenceResolutionClientProtocol?(v315, &v322[OBJC_IVAR___SKRExecutionContextUpdate_undoDirectInvocation], &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
        *&v322[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities] = 0;
        outlined init with copy of ReferenceResolutionClientProtocol?(v323, &v322[OBJC_IVAR___SKRExecutionContextUpdate_pommesContext], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
        (v318[2])(&v322[OBJC_IVAR___SKRExecutionContextUpdate_contextUpdateScope], v319, v320);
        v325 = &v322[OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId];
        *v325 = 0;
        v325[1] = 0;
        v322[OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice] = 0;
        v440.receiver = v322;
        v440.super_class = v321;
        v300 = off_1E8646000;
        v326 = objc_msgSendSuper2(&v440, sel_init);
        (v318[1])(v319, v320);
        outlined destroy of ReferenceResolutionClientProtocol?(v317, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v315, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v323, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
        v301 = v432;
        *&v432[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = v326;
        *&v301[OBJC_IVAR___SKRExecutionOutput_command] = 0;
        v298 = v436;
        v299 = v405;
        v273 = v419;
        v303 = v433;
        v297 = v424;
        goto LABEL_96;
      }

      outlined consume of Data._Representation(v306, v308);
      (*(v406 + 56))(v281, 1, 1, v309);
      outlined destroy of ReferenceResolutionClientProtocol?(v281, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
      v280 = 0;
    }

    v435 = v280;
    v310 = Logger.logObject.getter();
    v311 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v310, v311))
    {
      v312 = swift_slowAlloc();
      v313 = swift_slowAlloc();
      *&v445 = v313;
      *v312 = 136315138;
      *(v312 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v445);
      _os_log_impl(&dword_1DC659000, v310, v311, "ExecutionOutput: %s: NFCU has no (or invalid) prompt context", v312, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v313);
      MEMORY[0x1E12A2F50](v313, -1, -1);
      MEMORY[0x1E12A2F50](v312, -1, -1);
    }

    goto LABEL_95;
  }

  specialized Logger.debugF(_:_:_:_:)();
  v107 = *MEMORY[0x1E69C82D0];
  v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v79 = SelfReflectionAgent.createCloseAssitantAction(closeAssistantReason:)(v108, v109);

  v110 = SelfReflectionAgent.createCancelRequestAction()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  v112 = 0;
  v113 = 0;
  v420 = 0;
  *(&v114 + 1) = 5;
  *(inited + 32) = v79;
  v382 = inited + 32;
  v115 = &v387[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
  v411 = (inited & 0xC000000000000001);
  v380 = inited & 0xFFFFFFFFFFFFFF8;
  v116 = MEMORY[0x1E69D0678];
  *(inited + 16) = xmmword_1DCA6ACA0;
  v117 = v437;
  v410 = (v437 + 13);
  v409 = (v437 + 2);
  v394 = inited;
  *(inited + 40) = v110;
  v397 = "mmand8@NSError16";
  v381 = (v406 + 56);
  v119 = *v115;
  v118 = v115[1];
  v408 = v119;
  v407 = v118;
  v378 = (v406 + 32);
  v377 = (v406 + 16);
  v376 = (v406 + 8);
  LODWORD(v406) = *v116;
  v393 = (v416 + 13);
  v392 = (v416 + 2);
  v391 = (v416 + 1);
  *&v114 = 136315394;
  v389 = v114;
  *&v114 = 136315138;
  v379 = v114;
  v390 = *MEMORY[0x1E69CFF08];
  v405 = (v117 + 1);
  do
  {
    LODWORD(v426) = v112;
    if (v411)
    {
      v125 = MEMORY[0x1E12A1FE0](v113, v394);
    }

    else
    {
      if (v113 >= *(v380 + 16))
      {
        __break(1u);
        goto LABEL_119;
      }

      v125 = *(v382 + 8 * v113);
    }

    v126 = v125;
    v127 = type metadata accessor for FlowOutputMessage.InAppResponse();
    v128 = v432;
    (*(*(v127 - 8) + 56))(v432, 1, 1, v127);
    v129 = v434;
    v130 = v436;
    (*v410)(v434, v406, v436);
    v131 = *v409;
    v132 = v435;
    (*v409)(v435, v129, v130);
    v133 = v433;
    outlined init with copy of ReferenceResolutionClientProtocol?(v128, v433, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v425 = type metadata accessor for ExecutionOutput();
    v134 = objc_allocWithZone(v425);
    v135 = &v134[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
    v136 = v407;
    *v135 = v408;
    *(v135 + 1) = v136;
    v137 = &v134[OBJC_IVAR___SKRExecutionOutput_fullPrint];
    *v137 = 0;
    *(v137 + 1) = 0;
    v138 = &v134[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
    *v138 = 0;
    *(v138 + 1) = 0;
    v139 = &v134[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
    *v139 = 0;
    *(v139 + 1) = 0;
    v140 = &v134[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
    *v140 = 0;
    *(v140 + 1) = 0;
    v131(&v134[OBJC_IVAR___SKRExecutionOutput_executionSource], v132, v130);
    outlined init with copy of ReferenceResolutionClientProtocol?(v133, &v134[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    objc_opt_self();
    v141 = swift_dynamicCastObjCClass();
    v142 = one-time initialization token for executor;
    v143 = v126;
    v144 = v143;
    v437 = v143;
    if (v141)
    {
      v145 = v143;

      if (v142 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v412, static Logger.executor);
      v146 = v145;
      v147 = Logger.logObject.getter();
      v148 = static os_log_type_t.debug.getter();

      v149 = os_log_type_enabled(v147, v148);
      v417 = v134;
      if (v149)
      {
        v150 = swift_slowAlloc();
        v151 = swift_slowAlloc();
        v152 = swift_slowAlloc();
        *&v445 = v152;
        *v150 = v389;
        *(v150 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, v397 | 0x8000000000000000, &v445);
        *(v150 + 12) = 2112;
        *(v150 + 14) = v141;
        *v151 = v141;
        v153 = v146;
        _os_log_impl(&dword_1DC659000, v147, v148, "ExecutionOutput: %s: converting SARDNativeFlowContextUpdate=%@ to ExecutionOutput", v150, 0x16u);
        outlined destroy of ReferenceResolutionClientProtocol?(v151, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1E12A2F50](v151, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v152);
        MEMORY[0x1E12A2F50](v152, -1, -1);
        MEMORY[0x1E12A2F50](v150, -1, -1);
      }

      v416 = v141;
      v154 = [v141 promptContextProto];
      v155 = v398;
      if (v154)
      {
        v156 = v154;
        v157 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v159 = v158;

        v447 = 0;
        v445 = 0u;
        v446 = 0u;
        outlined copy of Data._Representation(v157, v159);
        BinaryDecodingOptions.init()();
        lazy protocol witness table accessor for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext(&lazy protocol witness table cache variable for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext, MEMORY[0x1E69D1500]);
        v160 = v396;
        v161 = v420;
        Message.init(serializedData:extensions:partial:options:)();
        if (!v161)
        {
          v420 = 0;
          (*v381)(v155, 0, 1, v160);
          v211 = v388;
          (*v378)(v388, v155, v160);
          v212 = v384;
          (*v377)(v384, v211, v160);
          v213 = Logger.logObject.getter();
          v214 = static os_log_type_t.debug.getter();
          v215 = v160;
          if (os_log_type_enabled(v213, v214))
          {
            v216 = swift_slowAlloc();
            v375 = swift_slowAlloc();
            *&v445 = v375;
            *v216 = v389;
            *(v216 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, v397 | 0x8000000000000000, &v445);
            *(v216 + 12) = 2080;
            v217 = v215;
            v218 = Message.textFormatString()();
            v219 = *v376;
            v374 = v213;
            v219(v212, v215);
            v220 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v218._countAndFlagsBits, v218._object, &v445);

            *(v216 + 14) = v220;
            v221 = v374;
            _os_log_impl(&dword_1DC659000, v374, v214, "ExecutionOutput: %s: NFCU has prompt context %s", v216, 0x16u);
            v222 = v375;
            swift_arrayDestroy();
            MEMORY[0x1E12A2F50](v222, -1, -1);
            MEMORY[0x1E12A2F50](v216, -1, -1);

            outlined consume of Data._Representation(v157, v159);
            v219(v388, v217);
          }

          else
          {

            outlined consume of Data._Representation(v157, v159);
            v223 = v160;
            v224 = *v376;
            (*v376)(v212, v223);
            v224(v211, v223);
          }

LABEL_35:
          v166 = type metadata accessor for Parse.DirectInvocation();
          v167 = v399;
          (*(*(v166 - 8) + 56))(v399, 1, 1, v166);
          v168 = type metadata accessor for PommesContext();
          v169 = v400;
          (*(*(v168 - 8) + 56))(v400, 1, 1, v168);
          v170 = v402;
          v171 = updated;
          (*v393)(v402, v390, updated);
          v172 = type metadata accessor for ExecutionContextUpdate();
          v173 = objc_allocWithZone(v172);
          v174 = v401;
          outlined init with copy of ReferenceResolutionClientProtocol?(v169, v401, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
          v175 = v416;
          specialized static ExecutionContextUpdate.synchronizePromptContexts(pommesContext:nativeFlowContextCommand:)(v174, v416);
          *&v173[OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand] = 0;
          *&v173[OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand] = v175;
          *&v173[OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs] = 0;
          *&v173[OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks] = 0;
          *&v173[OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks] = 0;
          outlined init with copy of ReferenceResolutionClientProtocol?(v167, &v173[OBJC_IVAR___SKRExecutionContextUpdate_undoDirectInvocation], &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
          *&v173[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities] = 0;
          outlined init with copy of ReferenceResolutionClientProtocol?(v174, &v173[OBJC_IVAR___SKRExecutionContextUpdate_pommesContext], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
          (*v392)(&v173[OBJC_IVAR___SKRExecutionContextUpdate_contextUpdateScope], v170, v171);
          v176 = &v173[OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId];
          *v176 = 0;
          v176[1] = 0;
          v173[OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice] = 0;
          v438.receiver = v173;
          v438.super_class = v172;
          v177 = objc_msgSendSuper2(&v438, sel_init);
          (*v391)(v170, v171);
          v178 = v169;
          v179 = off_1E8646000;
          outlined destroy of ReferenceResolutionClientProtocol?(v178, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v167, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v174, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
          v134 = v417;
          *&v417[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = v177;
          *&v134[OBJC_IVAR___SKRExecutionOutput_command] = 0;
          v75 = v419;
          v180 = v424;
          goto LABEL_41;
        }

        outlined consume of Data._Representation(v157, v159);
        (*v381)(v155, 1, 1, v160);
        outlined destroy of ReferenceResolutionClientProtocol?(v155, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
        v420 = 0;
      }

      v162 = Logger.logObject.getter();
      v163 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v162, v163))
      {
        v164 = swift_slowAlloc();
        v165 = swift_slowAlloc();
        *&v445 = v165;
        *v164 = v379;
        *(v164 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, v397 | 0x8000000000000000, &v445);
        _os_log_impl(&dword_1DC659000, v162, v163, "ExecutionOutput: %s: NFCU has no (or invalid) prompt context", v164, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v165);
        MEMORY[0x1E12A2F50](v165, -1, -1);
        MEMORY[0x1E12A2F50](v164, -1, -1);
      }

      goto LABEL_35;
    }

    v181 = v424;
    if (v142 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v412, static Logger.executor);
    v182 = v144;
    v183 = Logger.logObject.getter();
    v184 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v183, v184))
    {
      v185 = swift_slowAlloc();
      v186 = swift_slowAlloc();
      v187 = swift_slowAlloc();
      *&v445 = v187;
      *v185 = v389;
      *(v185 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, v397 | 0x8000000000000000, &v445);
      *(v185 + 12) = 2112;
      *(v185 + 14) = v182;
      *v186 = v126;
      v188 = v182;
      _os_log_impl(&dword_1DC659000, v183, v184, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v185, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v186, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v186, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v187);
      MEMORY[0x1E12A2F50](v187, -1, -1);
      MEMORY[0x1E12A2F50](v185, -1, -1);
    }

    v179 = off_1E8646000;
    v180 = v181;
    *&v134[OBJC_IVAR___SKRExecutionOutput_command] = v126;
    *&v134[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = 0;
    v189 = v182;
    v75 = v419;
LABEL_41:
    v439.receiver = v134;
    v439.super_class = v425;
    v76 = objc_msgSendSuper2(&v439, sel_init);
    v79 = &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR;
    outlined destroy of ReferenceResolutionClientProtocol?(v433, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v190 = *v405;
    v191 = v436;
    (*v405)(v435, v436);

    v190(v434, v191);
    outlined destroy of ReferenceResolutionClientProtocol?(v432, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v422, &v443, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
    if (!v444)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v443, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
      v17 = v421;
      v192 = v180;
LABEL_49:
      v80 = v423;
      v208 = Logger.logObject.getter();
      v209 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v208, v209))
      {
        v79 = swift_slowAlloc();
        *v79 = 0;
        _os_log_impl(&dword_1DC659000, v208, v209, "Not applying any context but just submitting ExecutionOutput since ContextUpdater or metadata or both are nil", v79, 2u);
        MEMORY[0x1E12A2F50](v79, -1, -1);
      }

      ConversationOutputSubmitter.sendOutputMessagesIfNecessary(output:requestId:commandExecutionInfo:assistantId:sessionId:invocationId:)(v76, v428, v430, v80, v429, v431, v427, v415, v414);
      v120 = *&v76[OBJC_IVAR___SKRExecutionOutput_command];
      if (v192)
      {
        goto LABEL_17;
      }

      v210 = type metadata accessor for UserID();
      (*(*(v210 - 8) + 56))(v75, 1, 1, v210);
      v124 = 0;
      v123 = 0;
LABEL_18:
      BYTE1(v371) = v124;
      LOBYTE(v371) = v123;
      (*(*v17 + 328))(v120, v428, v430, v413, v418, v80, v429, v431, v427, v75, v371, destructiveProjectEnumData for AceServiceInvokerImpl.AceSubmitOptions, 0);

      outlined destroy of ReferenceResolutionClientProtocol?(v75, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
      goto LABEL_19;
    }

    outlined init with take of ReferenceResolutionClientProtocol(&v443, &v445);
    v17 = v421;
    v192 = v180;
    if (!v180)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v445);
      goto LABEL_49;
    }

    v193 = *&v76[OBJC_IVAR___SKRExecutionOutput_contextUpdate];
    v80 = v423;
    if (!v193)
    {
      goto LABEL_16;
    }

    v194 = *(*v421 + 152);

    v195 = v193;
    v196 = v194();
    v197 = ContextUpdateScope.toExecutionContextUpdateScope(isMUXEnabled:)(v196 & 1);
    v198 = *(&v446 + 1);
    v75 = v447;
    __swift_project_boxed_opaque_existential_1(&v445, *(&v446 + 1));
    v79 = v420;
    (v75[1])(v195, v192, v197, v198, v75);
    v80 = v79;
    if (!v79)
    {
      v420 = 0;

      v80 = v423;
      v75 = v419;
LABEL_16:
      __swift_destroy_boxed_opaque_existential_1Tm(&v445);
      ConversationOutputSubmitter.sendOutputMessagesIfNecessary(output:requestId:commandExecutionInfo:assistantId:sessionId:invocationId:)(v76, v428, v430, v80, v429, v431, v427, v415, v414);
      v120 = *&v76[OBJC_IVAR___SKRExecutionOutput_command];
LABEL_17:
      v79 = OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId;
      v121 = type metadata accessor for UserID();
      v122 = *(v121 - 8);
      (*(v122 + 16))(v75, &v79[v192], v121);
      (*(v122 + 56))(v75, 0, 1, v121);
      v123 = *(v192 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold);
      v124 = *(v192 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold);
      goto LABEL_18;
    }

    v199 = v79;
    v200 = Logger.logObject.getter();
    v201 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v200, v201))
    {
      v202 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *&v443 = v79;
      *v202 = v379;
      v441 = v80;
      v203 = v80;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v204 = String.init<A>(describing:)();
      v75 = v205;
      v206 = v80;
      v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v204, v205, &v443);

      *(v202 + 4) = v80;
      _os_log_impl(&dword_1DC659000, v200, v201, "Error while applying context: %s", v202, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v79);
      MEMORY[0x1E12A2F50](v79, -1, -1);
      MEMORY[0x1E12A2F50](v202, -1, -1);
      v207 = v206;
      v179 = off_1E8646000;
    }

    else
    {
      v207 = v79;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v445);
    v420 = 0;
LABEL_19:
    v112 = 1;
    v113 = 1;
  }

  while ((v426 & 1) == 0);
  v234 = v394;
  swift_setDeallocating();
  v235 = *(v234 + 16);
  swift_arrayDestroy();
  if (*&v387[OBJC_IVAR___SKRExecutionOutput_command])
  {
    v236 = [objc_allocWithZone(MEMORY[0x1E69C7788]) v179[390]];
    v385(v236, 0);
  }

  else
  {
    v385(0, 0);
  }

LABEL_67:
}

void closure #1 in ConversationOutputSubmitter.handleMitigation(mitigationResult:executionOutput:requestId:requestIdOverride:contextUpdater:executionContextMatchingInfo:executionContextUpdateMetadata:assistantId:sessionId:invocationId:_:)(void *a1, id a2, void *a3, void *a4, void (*a5)(void, void), uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, void *a17, void *a18, void *a19, void *a20)
{
  v332 = a8;
  v320 = a6;
  v334 = a3;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v311 = &v286 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v305 = &v286 - v29;
  updated = type metadata accessor for ContextUpdateScope();
  v304 = *(updated - 8);
  v31 = *(v304 + 64);
  MEMORY[0x1EEE9AC00](updated);
  v303 = &v286 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v302 = &v286 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v301 = &v286 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v300 = &v286 - v40;
  v41 = type metadata accessor for BinaryDecodingOptions();
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v296 = &v286 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v297 = &v286 - v46;
  v299 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  v298 = *(v299 - 8);
  v47 = *(v298 + 64);
  MEMORY[0x1EEE9AC00](v299);
  v293 = &v286 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v294 = &v286 - v50;
  v315 = 0;
  v336 = type metadata accessor for RequestSummary.ExecutionSource();
  v335 = *(v336 - 8);
  v51 = *(v335 + 64);
  MEMORY[0x1EEE9AC00](v336);
  v325 = &v286 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v324 = &v286 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v317 = (&v286 - v56);
  MEMORY[0x1EEE9AC00](v57);
  v318 = &v286 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59 - 8);
  v62 = &v286 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v323 = &v286 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v286 - v66;
  MEMORY[0x1EEE9AC00](v68);
  v316 = &v286 - v69;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v321 = type metadata accessor for Logger();
  v322 = __swift_project_value_buffer(v321, static Logger.conversationBridge);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.debug.getter();
  v72 = os_log_type_enabled(v70, v71);
  v333 = a2;
  v312 = v62;
  if (v72)
  {
    v73 = swift_slowAlloc();
    v74 = v67;
    v75 = updated;
    v76 = a4;
    v77 = a5;
    v78 = a1;
    v79 = a7;
    v80 = swift_slowAlloc();
    *&v342 = v80;
    *v73 = 136315138;
    *(v73 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD0000000000000BFLL, 0x80000001DCA80160, &v342);
    _os_log_impl(&dword_1DC659000, v70, v71, "ConversationOutputSubmitter.%s handling ask to repeat action", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v80);
    v81 = v80;
    a7 = v79;
    a1 = v78;
    a5 = v77;
    a4 = v76;
    updated = v75;
    v67 = v74;
    MEMORY[0x1E12A2F50](v81, -1, -1);
    v82 = v73;
    a2 = v333;
    MEMORY[0x1E12A2F50](v82, -1, -1);
  }

  if (a1)
  {
    v292 = updated;
    v331 = a16;
    v319 = a15;
    v330 = a14;
    v313 = a13;
    v310 = a12;
    v309 = a11;
    v328 = a10;
    v327 = a9;
    v308 = a19;
    v307 = a20;
    v329 = a17;
    v326 = a18;
    v83 = MEMORY[0x1E69D0678];
    v306 = a5;
    v314 = a1;
    if (!a2)
    {
      v154 = a1;
      v155 = v334;
      goto LABEL_55;
    }

    v291 = a7;
    v84 = *(a7 + OBJC_IVAR___SKRExecutionOutput_executionRequestId);
    v85 = *(a7 + OBJC_IVAR___SKRExecutionOutput_executionRequestId + 8);
    v86 = type metadata accessor for FlowOutputMessage.InAppResponse();
    v87 = *(*(v86 - 8) + 56);
    v295 = v67;
    v88 = v316;
    v87(v316, 1, 1, v86);
    v89 = *v83;
    v90 = v335;
    v91 = v318;
    v92 = v336;
    (*(v335 + 104))(v318, v89, v336);
    v93 = *(v90 + 16);
    v94 = v317;
    v93(v317, v91, v92);
    v95 = v88;
    v96 = v295;
    outlined init with copy of ReferenceResolutionClientProtocol?(v95, v295, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v290 = type metadata accessor for ExecutionOutput();
    v97 = objc_allocWithZone(v290);
    v98 = &v97[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
    *v98 = v84;
    *(v98 + 1) = v85;
    v99 = v333;
    v288 = v85;
    v100 = &v97[OBJC_IVAR___SKRExecutionOutput_fullPrint];
    *v100 = 0;
    *(v100 + 1) = 0;
    v101 = &v97[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
    *v101 = 0;
    *(v101 + 1) = 0;
    v102 = &v97[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
    *v102 = 0;
    *(v102 + 1) = 0;
    v103 = &v97[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
    *v103 = 0;
    *(v103 + 1) = 0;
    v93(&v97[OBJC_IVAR___SKRExecutionOutput_executionSource], v94, v92);
    v289 = v97;
    outlined init with copy of ReferenceResolutionClientProtocol?(v96, &v97[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    objc_opt_self();
    v104 = swift_dynamicCastObjCClass();
    v105 = v99;
    v106 = v105;
    if (!v104)
    {
      outlined copy of (SAUIAddViews, SAUIRevealRecognizedSpeech?, ExecutionContextUpdate)?(v314, v99, v334);
      v156 = one-time initialization token for executor;
      v157 = v106;

      v158 = v319;
      if (v156 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v321, static Logger.executor);
      v159 = v157;
      v160 = Logger.logObject.getter();
      v161 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v160, v161))
      {
        v162 = swift_slowAlloc();
        v163 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        *&v342 = v164;
        *v162 = 136315394;
        *(v162 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v342);
        *(v162 + 12) = 2112;
        *(v162 + 14) = v159;
        *v163 = v333;
        v165 = v159;
        _os_log_impl(&dword_1DC659000, v160, v161, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v162, 0x16u);
        outlined destroy of ReferenceResolutionClientProtocol?(v163, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1E12A2F50](v163, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v164);
        v166 = v164;
        v96 = v295;
        MEMORY[0x1E12A2F50](v166, -1, -1);
        v167 = v162;
        v99 = v333;
        MEMORY[0x1E12A2F50](v167, -1, -1);
      }

      v144 = v289;
      *&v289[OBJC_IVAR___SKRExecutionOutput_command] = v99;
      *&v144[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = 0;
      v168 = v159;
      v145 = v158;
LABEL_29:
      v338.receiver = v144;
      v338.super_class = v290;
      v169 = objc_msgSendSuper2(&v338, sel_init, v286);
      outlined destroy of ReferenceResolutionClientProtocol?(v96, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
      v170 = *(v335 + 8);
      v171 = v336;
      v170(v317, v336);

      v170(v318, v171);
      outlined destroy of ReferenceResolutionClientProtocol?(v316, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
      outlined init with copy of ReferenceResolutionClientProtocol?(v313, &v340, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
      if (v341)
      {
        outlined init with take of ReferenceResolutionClientProtocol(&v340, &v342);
        if (v145)
        {
          v172 = *&v169[OBJC_IVAR___SKRExecutionOutput_contextUpdate];
          if (v172)
          {
            v173 = *(*v332 + 152);

            v174 = v172;
            v175 = v173();
            v176 = ContextUpdateScope.toExecutionContextUpdateScope(isMUXEnabled:)(v175 & 1);
            v177 = *(&v343 + 1);
            v178 = v344;
            __swift_project_boxed_opaque_existential_1(&v342, *(&v343 + 1));
            v179 = v315;
            (*(v178 + 8))(v174, v145, v176, v177, v178);
            if (v179)
            {

              v180 = v179;
              v181 = Logger.logObject.getter();
              v182 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v181, v182))
              {
                v183 = swift_slowAlloc();
                v184 = swift_slowAlloc();
                *&v340 = v184;
                *v183 = 136315138;
                v339 = v179;
                v185 = v179;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
                v186 = String.init<A>(describing:)();
                v188 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v186, v187, &v340);

                *(v183 + 4) = v188;
                _os_log_impl(&dword_1DC659000, v181, v182, "Error while applying context: %s", v183, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v184);
                MEMORY[0x1E12A2F50](v184, -1, -1);
                MEMORY[0x1E12A2F50](v183, -1, -1);
              }

              a7 = v291;
              __swift_destroy_boxed_opaque_existential_1Tm(&v342);
              v315 = 0;
              v83 = MEMORY[0x1E69D0678];
LABEL_55:
              v220 = *(a7 + OBJC_IVAR___SKRExecutionOutput_executionRequestId);
              v219 = *(a7 + OBJC_IVAR___SKRExecutionOutput_executionRequestId + 8);
              v221 = type metadata accessor for FlowOutputMessage.InAppResponse();
              v222 = v323;
              (*(*(v221 - 8) + 56))(v323, 1, 1, v221);
              v223 = *v83;
              v224 = v335;
              v225 = v324;
              v226 = v336;
              (*(v335 + 104))(v324, v223, v336);
              v227 = *(v224 + 16);
              v228 = v325;
              v227(v325, v225, v226);
              v229 = v312;
              outlined init with copy of ReferenceResolutionClientProtocol?(v222, v312, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
              v317 = type metadata accessor for ExecutionOutput();
              v230 = objc_allocWithZone(v317);
              v231 = &v230[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
              *v231 = v220;
              *(v231 + 1) = v219;
              v232 = &v230[OBJC_IVAR___SKRExecutionOutput_fullPrint];
              *v232 = 0;
              *(v232 + 1) = 0;
              v233 = &v230[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
              *v233 = 0;
              *(v233 + 1) = 0;
              v234 = &v230[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
              *v234 = 0;
              *(v234 + 1) = 0;
              v235 = &v230[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
              *v235 = 0;
              *(v235 + 1) = 0;
              v227(&v230[OBJC_IVAR___SKRExecutionOutput_executionSource], v228, v226);
              outlined init with copy of ReferenceResolutionClientProtocol?(v229, &v230[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
              v236 = one-time initialization token for executor;
              v237 = v314;
              v238 = v314;
              v318 = v334;

              if (v236 != -1)
              {
                swift_once();
              }

              __swift_project_value_buffer(v321, static Logger.executor);
              v239 = v238;
              v240 = Logger.logObject.getter();
              v241 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v240, v241))
              {
                v242 = swift_slowAlloc();
                v243 = swift_slowAlloc();
                v244 = swift_slowAlloc();
                *&v342 = v244;
                *v242 = 136315394;
                *(v242 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v342);
                *(v242 + 12) = 2112;
                *(v242 + 14) = v239;
                *v243 = v237;
                v245 = v239;
                _os_log_impl(&dword_1DC659000, v240, v241, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v242, 0x16u);
                outlined destroy of ReferenceResolutionClientProtocol?(v243, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                MEMORY[0x1E12A2F50](v243, -1, -1);
                __swift_destroy_boxed_opaque_existential_1Tm(v244);
                MEMORY[0x1E12A2F50](v244, -1, -1);
                MEMORY[0x1E12A2F50](v242, -1, -1);
              }

              v246 = v306;
              v247 = v319;
              *&v230[OBJC_IVAR___SKRExecutionOutput_command] = v237;
              *&v230[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = v334;
              v345.receiver = v230;
              v345.super_class = v317;
              v248 = objc_msgSendSuper2(&v345, sel_init);
              outlined destroy of ReferenceResolutionClientProtocol?(v229, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
              v249 = *(v335 + 8);
              v250 = v336;
              v249(v325, v336);
              v249(v324, v250);
              outlined destroy of ReferenceResolutionClientProtocol?(v323, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
              outlined init with copy of ReferenceResolutionClientProtocol?(v313, &v340, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
              if (v341)
              {
                outlined init with take of ReferenceResolutionClientProtocol(&v340, &v342);
                if (v247)
                {
                  v251 = *&v248[OBJC_IVAR___SKRExecutionOutput_contextUpdate];
                  v252 = v332;
                  if (v251)
                  {
                    v253 = *(*v332 + 152);

                    v254 = v251;
                    v255 = v253();
                    v247 = v319;
                    v256 = ContextUpdateScope.toExecutionContextUpdateScope(isMUXEnabled:)(v255 & 1);
                    v257 = *(&v343 + 1);
                    v258 = v344;
                    __swift_project_boxed_opaque_existential_1(&v342, *(&v343 + 1));
                    v259 = v315;
                    (*(v258 + 8))(v254, v247, v256, v257, v258);
                    if (v259)
                    {

                      v260 = v259;
                      v261 = Logger.logObject.getter();
                      v262 = static os_log_type_t.error.getter();

                      if (os_log_type_enabled(v261, v262))
                      {
                        v263 = swift_slowAlloc();
                        v264 = swift_slowAlloc();
                        *&v340 = v264;
                        *v263 = 136315138;
                        v339 = v259;
                        v265 = v259;
                        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
                        v266 = String.init<A>(describing:)();
                        v268 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v266, v267, &v340);

                        *(v263 + 4) = v268;
                        _os_log_impl(&dword_1DC659000, v261, v262, "Error while applying context: %s", v263, 0xCu);
                        __swift_destroy_boxed_opaque_existential_1Tm(v264);
                        MEMORY[0x1E12A2F50](v264, -1, -1);
                        MEMORY[0x1E12A2F50](v263, -1, -1);
                      }

                      v269 = v306;
                      v270 = v259;
                      v269(0, v259);

                      __swift_destroy_boxed_opaque_existential_1Tm(&v342);
                      return;
                    }

                    v246 = v306;
                  }

                  __swift_destroy_boxed_opaque_existential_1Tm(&v342);
                  goto LABEL_73;
                }

                __swift_destroy_boxed_opaque_existential_1Tm(&v342);
              }

              else
              {
                outlined destroy of ReferenceResolutionClientProtocol?(&v340, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
              }

              v252 = v332;
              v271 = Logger.logObject.getter();
              v272 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v271, v272))
              {
                v273 = swift_slowAlloc();
                *v273 = 0;
                _os_log_impl(&dword_1DC659000, v271, v272, "Not applying any context but just submitting ExecutionOutput since ContextUpdater or metadata or both are nil", v273, 2u);
                MEMORY[0x1E12A2F50](v273, -1, -1);
              }

LABEL_73:
              ConversationOutputSubmitter.sendOutputMessagesIfNecessary(output:requestId:commandExecutionInfo:assistantId:sessionId:invocationId:)(v248, v327, v328, v330, v331, v329, v326, v308, v307);
              v274 = *&v248[OBJC_IVAR___SKRExecutionOutput_command];
              if (v247)
              {
                v275 = OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId;
                v276 = type metadata accessor for UserID();
                v277 = *(v276 - 8);
                v278 = v247 + v275;
                v279 = v311;
                (*(v277 + 16))(v311, v278, v276);
                (*(v277 + 56))(v279, 0, 1, v276);
                v280 = *(v247 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold);
                v281 = *(v247 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold);
              }

              else
              {
                v282 = type metadata accessor for UserID();
                v279 = v311;
                (*(*(v282 - 8) + 56))(v311, 1, 1, v282);
                v281 = 0;
                v280 = 0;
              }

              BYTE1(v284) = v281;
              LOBYTE(v284) = v280;
              (*(*v252 + 328))(v274, v327, v328, v309, v310, v330, v331, v329, v326, v279, v284, v246, v320);

              outlined destroy of ReferenceResolutionClientProtocol?(v279, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
              return;
            }

            v315 = 0;
          }

          __swift_destroy_boxed_opaque_existential_1Tm(&v342);
LABEL_51:
          ConversationOutputSubmitter.sendOutputMessagesIfNecessary(output:requestId:commandExecutionInfo:assistantId:sessionId:invocationId:)(v169, v327, v328, v330, v331, v329, v326, v308, v307);
          v211 = *&v169[OBJC_IVAR___SKRExecutionOutput_command];
          if (v145)
          {
            v212 = OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId;
            v213 = type metadata accessor for UserID();
            v214 = *(v213 - 8);
            v215 = v305;
            (*(v214 + 16))(v305, v145 + v212, v213);
            (*(v214 + 56))(v215, 0, 1, v213);
            v216 = *(v145 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsUserSessionThreshold);
            v217 = *(v145 + OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_meetsPersonalRequestThreshold);
          }

          else
          {
            v218 = type metadata accessor for UserID();
            v215 = v305;
            (*(*(v218 - 8) + 56))(v305, 1, 1, v218);
            v217 = 0;
            v216 = 0;
          }

          v83 = MEMORY[0x1E69D0678];
          HIBYTE(v285) = v217;
          LOBYTE(v285) = v216;
          (*(*v332 + 328))(v211, v327, v328, v309, v310, v330, v331, v329, v326, v215, v285, destructiveProjectEnumData for AceServiceInvokerImpl.AceSubmitOptions, 0);

          outlined destroy of ReferenceResolutionClientProtocol?(v215, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
          a7 = v291;
          goto LABEL_55;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v342);
      }

      else
      {
        outlined destroy of ReferenceResolutionClientProtocol?(&v340, &_s14SiriKitRuntime15ContextUpdating_pSgMd, &_s14SiriKitRuntime15ContextUpdating_pSgMR);
      }

      v189 = Logger.logObject.getter();
      v190 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v189, v190))
      {
        v191 = swift_slowAlloc();
        *v191 = 0;
        _os_log_impl(&dword_1DC659000, v189, v190, "Not applying any context but just submitting ExecutionOutput since ContextUpdater or metadata or both are nil", v191, 2u);
        MEMORY[0x1E12A2F50](v191, -1, -1);
      }

      goto LABEL_51;
    }

    v287 = v105;
    v107 = v105;
    outlined copy of (SAUIAddViews, SAUIRevealRecognizedSpeech?, ExecutionContextUpdate)?(v314, v99, v334);
    v108 = one-time initialization token for executor;
    v109 = v107;

    if (v108 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v321, static Logger.executor);
    v110 = v109;
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.debug.getter();

    v113 = os_log_type_enabled(v111, v112);
    v114 = v299;
    if (v113)
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      *&v342 = v117;
      *v115 = 136315394;
      *(v115 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v342);
      *(v115 + 12) = 2112;
      *(v115 + 14) = v104;
      *v116 = v104;
      v118 = v110;
      _os_log_impl(&dword_1DC659000, v111, v112, "ExecutionOutput: %s: converting SARDNativeFlowContextUpdate=%@ to ExecutionOutput", v115, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v116, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v116, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v117);
      MEMORY[0x1E12A2F50](v117, -1, -1);
      MEMORY[0x1E12A2F50](v115, -1, -1);
    }

    v119 = [v104 promptContextProto];
    v286 = v104;
    if (v119)
    {
      v120 = v119;
      v121 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v123 = v122;

      v344 = 0;
      v342 = 0u;
      v343 = 0u;
      outlined copy of Data._Representation(v121, v123);
      BinaryDecodingOptions.init()();
      v124 = lazy protocol witness table accessor for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext(&lazy protocol witness table cache variable for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext, MEMORY[0x1E69D1500]);
      v125 = v297;
      v126 = v315;
      Message.init(serializedData:extensions:partial:options:)();
      if (!v126)
      {
        v296 = v124;
        v315 = 0;
        v200 = v298;
        (*(v298 + 56))(v125, 0, 1, v114);
        v201 = v294;
        (*(v200 + 32))(v294, v125, v114);
        v202 = v293;
        (*(v200 + 16))(v293, v201, v114);
        v203 = Logger.logObject.getter();
        v204 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v203, v204))
        {
          v205 = swift_slowAlloc();
          v206 = swift_slowAlloc();
          LODWORD(v288) = v204;
          v207 = v206;
          *&v342 = v206;
          *v205 = 136315394;
          *(v205 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v342);
          *(v205 + 12) = 2080;
          v208 = Message.textFormatString()();
          v297 = v123;
          v209 = *(v200 + 8);
          v209(v202, v114);
          v210 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v208._countAndFlagsBits, v208._object, &v342);

          *(v205 + 14) = v210;
          _os_log_impl(&dword_1DC659000, v203, v288, "ExecutionOutput: %s: NFCU has prompt context %s", v205, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v207, -1, -1);
          MEMORY[0x1E12A2F50](v205, -1, -1);

          outlined consume of Data._Representation(v121, v297);
          v209(v294, v114);
        }

        else
        {

          outlined consume of Data._Representation(v121, v123);
          v283 = *(v200 + 8);
          v283(v202, v114);
          v283(v201, v114);
        }

LABEL_18:
        v131 = type metadata accessor for Parse.DirectInvocation();
        v132 = v300;
        (*(*(v131 - 8) + 56))(v300, 1, 1, v131);
        v133 = type metadata accessor for PommesContext();
        v134 = v301;
        (*(*(v133 - 8) + 56))(v301, 1, 1, v133);
        v135 = v304;
        v136 = v303;
        v137 = v292;
        (*(v304 + 104))(v303, *MEMORY[0x1E69CFF08], v292);
        v138 = type metadata accessor for ExecutionContextUpdate();
        v139 = objc_allocWithZone(v138);
        v140 = v302;
        outlined init with copy of ReferenceResolutionClientProtocol?(v134, v302, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
        v141 = v286;
        specialized static ExecutionContextUpdate.synchronizePromptContexts(pommesContext:nativeFlowContextCommand:)(v140, v286);
        *&v139[OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand] = 0;
        *&v139[OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand] = v141;
        *&v139[OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs] = 0;
        *&v139[OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks] = 0;
        *&v139[OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks] = 0;
        outlined init with copy of ReferenceResolutionClientProtocol?(v132, &v139[OBJC_IVAR___SKRExecutionContextUpdate_undoDirectInvocation], &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
        *&v139[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities] = 0;
        outlined init with copy of ReferenceResolutionClientProtocol?(v140, &v139[OBJC_IVAR___SKRExecutionContextUpdate_pommesContext], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
        (*(v135 + 16))(&v139[OBJC_IVAR___SKRExecutionContextUpdate_contextUpdateScope], v136, v137);
        v142 = &v139[OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId];
        *v142 = 0;
        v142[1] = 0;
        v139[OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice] = 0;
        v337.receiver = v139;
        v337.super_class = v138;
        v143 = objc_msgSendSuper2(&v337, sel_init);
        (*(v135 + 8))(v136, v137);
        outlined destroy of ReferenceResolutionClientProtocol?(v134, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v132, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v140, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
        v144 = v289;
        *&v289[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = v143;
        *&v144[OBJC_IVAR___SKRExecutionOutput_command] = 0;
        v96 = v295;
        v145 = v319;
        v106 = v287;
        goto LABEL_29;
      }

      outlined consume of Data._Representation(v121, v123);
      (*(v298 + 56))(v125, 1, 1, v114);
      outlined destroy of ReferenceResolutionClientProtocol?(v125, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
      v315 = 0;
    }

    v127 = Logger.logObject.getter();
    v128 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      *&v342 = v130;
      *v129 = 136315138;
      *(v129 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, &v342);
      _os_log_impl(&dword_1DC659000, v127, v128, "ExecutionOutput: %s: NFCU has no (or invalid) prompt context", v129, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v130);
      MEMORY[0x1E12A2F50](v130, -1, -1);
      MEMORY[0x1E12A2F50](v129, -1, -1);
    }

    goto LABEL_18;
  }

  v146 = a4;
  v147 = Logger.logObject.getter();
  v148 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v147, v148))
  {
    v149 = swift_slowAlloc();
    v150 = swift_slowAlloc();
    *&v342 = v150;
    *v149 = 136315394;
    *(v149 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD0000000000000BFLL, 0x80000001DCA80160, &v342);
    *(v149 + 12) = 2080;
    if (a4)
    {
      swift_getErrorValue();
      v151 = Error.localizedDescription.getter();
      v153 = v152;
    }

    else
    {
      v153 = 0x80000001DCA802C0;
      v151 = 0xD000000000000037;
    }

    v192 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v151, v153, &v342);

    *(v149 + 14) = v192;
    _os_log_impl(&dword_1DC659000, v147, v148, "ConversationOutputSubmitter.%s error: %s", v149, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v150, -1, -1);
    MEMORY[0x1E12A2F50](v149, -1, -1);
  }

  else
  {
  }

  *&v342 = 0;
  *(&v342 + 1) = 0xE000000000000000;
  if (a4)
  {
    swift_getErrorValue();
    v193 = Error.localizedDescription.getter();
    v195 = v194;
  }

  else
  {
    v195 = 0x80000001DCA802C0;
    v193 = 0xD000000000000037;
  }

  MEMORY[0x1E12A1580](v193, v195);

  v196 = v342;
  v197 = objc_allocWithZone(MEMORY[0x1E69C7778]);
  v198 = MEMORY[0x1E12A1410](v196, *(&v196 + 1));

  v199 = [v197 initWithReason_];

  a5(v199, 0);
}

void ConversationOutputSubmitter.flowOutputCompleted(flowOutputMessageId:result:)(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51 - v12;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = __swift_project_value_buffer(v14, static Logger.conversationBridge);
  v57 = v7[2];
  v58 = v7 + 2;
  v57(v13, a1, v6);
  v16 = a2;
  v17 = a3;
  v59 = v15;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  v20 = os_log_type_enabled(v18, v19);
  v60 = v7;
  if (v20)
  {
    v53 = v19;
    v55 = a1;
    v56 = v10;
    v21 = v7;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v63[0] = v52;
    *v22 = 136315650;
    lazy protocol witness table accessor for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v6;
    v27 = v26;
    v28 = v13;
    v29 = v25;
    v54 = v21[1];
    v54(v28, v25);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v27, v63);

    *(v22 + 4) = v30;
    *(v22 + 12) = 2112;
    *(v22 + 14) = v16;
    *v23 = a2;
    *(v22 + 22) = 2112;
    v31 = v16;
    v32 = a2;
    if (a3)
    {
      v33 = a3;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      v35 = v34;
    }

    else
    {
      v34 = 0;
      v35 = 0;
    }

    v38 = v53;
    *(v22 + 24) = v34;
    v23[1] = v35;
    _os_log_impl(&dword_1DC659000, v18, v38, "Flow output completed for messageId: %s result: (%@, %@)", v22, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v23, -1, -1);
    v39 = v52;
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    MEMORY[0x1E12A2F50](v39, -1, -1);
    MEMORY[0x1E12A2F50](v22, -1, -1);

    a1 = v55;
    v10 = v56;
    v36 = v54;
  }

  else
  {
    v32 = a2;

    v36 = v7[1];
    v37 = v13;
    v29 = v6;
    v36(v37, v6);
  }

  v40 = (*(*v61 + 240))(v63);
  v41 = specialized Dictionary.removeValue(forKey:)(a1);
  v40(v63, 0);
  if (v41)
  {
    v62 = a3;
    v63[0] = v32;
    v41(v63, &v62);
    _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v41);
  }

  else
  {
    v57(v10, a1, v29);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = v10;
      v46 = swift_slowAlloc();
      v63[0] = v46;
      *v44 = 136315138;
      lazy protocol witness table accessor for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      v36(v45, v29);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, v63);

      *(v44 + 4) = v50;
      _os_log_impl(&dword_1DC659000, v42, v43, "Could not find flow command completion. commandId: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x1E12A2F50](v46, -1, -1);
      MEMORY[0x1E12A2F50](v44, -1, -1);
    }

    else
    {

      v36(v10, v29);
    }
  }
}

void ConversationOutputSubmitter.sendSiriWillAskForConfirmation(assistantId:sessionId:requestId:)()
{
  v1 = v0;
  v2 = objc_allocWithZone(type metadata accessor for SiriWillAskForConfirmationMessage());
  v3 = SiriWillAskForConfirmationMessage.init(build:)();
  if (v3)
  {
    v4 = v3;
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.conversationBridge);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1DC659000, v6, v7, "Going to post SiriWillAskForConfirmationMessage", v8, 2u);
      MEMORY[0x1E12A2F50](v8, -1, -1);
    }

    v9 = v1[8];
    __swift_project_boxed_opaque_existential_1(v1 + 4, v1[7]);
    dispatch thunk of MessagePublishing.postMessage(_:)();
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.conversationBridge);
    v4 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1DC659000, v4, v11, "Could not create SiriWillAskForConfirmationMessage", v12, 2u);
      MEMORY[0x1E12A2F50](v12, -1, -1);
    }
  }
}

uint64_t ConversationOutputSubmitter.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  v3 = *(v0 + 88);

  v4 = *(v0 + 96);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  return v0;
}

uint64_t ConversationOutputSubmitter.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  v3 = *(v0 + 88);

  v4 = *(v0 + 96);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));

  return swift_deallocClassInstance();
}

uint64_t specialized ConversationOutputSubmitter.init(requestDispatcherServiceHelper:isMUXEnabled:muxContextMessage:messagePublisher:selfReflection:featureChecker:)(uint64_t a1, char a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25 = a8;
  v26 = a9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v24);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_0, a6, a8);
  type metadata accessor for ConcurrentTaskPool();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E7CC0];
  *(v18 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v18 + 24) = v20;
  *(a7 + 16) = v18;
  *(a7 + 88) = 0;
  *(a7 + 80) = 0;
  *(a7 + 96) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_ySo13SABaseCommandCSg_s5Error_pSgt14SiriKitRuntime15MessageBusActorCYccTt0g5Tf4g_n(v19);
  *(a7 + 104) = 30000000000;
  *(a7 + 24) = a1;
  *(a7 + 72) = a2;
  swift_beginAccess();
  v21 = *(a7 + 80);
  *(a7 + 80) = a3;

  outlined init with take of ReferenceResolutionClientProtocol(a4, a7 + 32);
  swift_beginAccess();
  v22 = *(a7 + 88);
  *(a7 + 88) = a5;

  outlined init with take of ReferenceResolutionClientProtocol(&v24, a7 + 112);
  return a7;
}

uint64_t specialized ConversationOutputSubmitter.init(requestDispatcherServiceHelper:isMUXEnabled:muxContextMessage:messagePublisher:featureChecker:)(uint64_t a1, char a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a7;
  v23 = a8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v21);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_0, a5, a7);
  type metadata accessor for ConcurrentTaskPool();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E7CC0];
  *(v16 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v16 + 24) = v18;
  *(a6 + 16) = v16;
  *(a6 + 88) = 0;
  *(a6 + 80) = 0;
  *(a6 + 96) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_ySo13SABaseCommandCSg_s5Error_pSgt14SiriKitRuntime15MessageBusActorCYccTt0g5Tf4g_n(v17);
  *(a6 + 104) = 30000000000;
  *(a6 + 24) = a1;
  *(a6 + 72) = a2;
  swift_beginAccess();
  v19 = *(a6 + 80);
  *(a6 + 80) = a3;

  outlined init with take of ReferenceResolutionClientProtocol(a4, a6 + 32);
  outlined init with take of ReferenceResolutionClientProtocol(&v21, a6 + 112);
  return a6;
}

void partial apply for closure #1 in ConversationOutputSubmitter.handleMitigation(mitigationResult:executionOutput:requestId:requestIdOverride:contextUpdater:executionContextMatchingInfo:executionContextUpdateMetadata:assistantId:sessionId:invocationId:_:)(void *a1, void *a2, void *a3, void *a4)
{
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v10 = (*(v9 + 80) + 152) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  closure #1 in ConversationOutputSubmitter.handleMitigation(mitigationResult:executionOutput:requestId:requestIdOverride:contextUpdater:executionContextMatchingInfo:executionContextUpdateMetadata:assistantId:sessionId:invocationId:_:)(a1, a2, a3, a4, *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 72), v4 + 80, *(v4 + 120), *(v4 + 128), *(v4 + 136), *(v4 + 144), (v4 + v10), *(v4 + v11), *(v4 + v11 + 8));
}

uint64_t dispatch thunk of ConversationOutputSubmitter.handleMitigation(mitigationResult:executionOutput:requestId:requestIdOverride:contextUpdater:executionContextMatchingInfo:executionContextUpdateMetadata:assistantId:sessionId:invocationId:_:)()
{
  v2 = *(*v0 + 288);

  return v2();
}

id outlined copy of (SAUIAddViews, SAUIRevealRecognizedSpeech?, ExecutionContextUpdate)?(id result, void *a2, void *a3)
{
  if (result)
  {
    v6 = result;
    v4 = a2;
    v5 = a3;

    return v6;
  }

  return result;
}

id ConversationParaphraseResult.xpcRepresentation.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for ActionParaphrase();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ConversationParaphraseResult(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of ConversationParaphraseResult(v1, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    v16 = v14[1];
    (*(v7 + 56))(v5, 1, 1, v6);
    v17 = type metadata accessor for ConversationParaphraseResultXPC(0);
    v18 = objc_allocWithZone(v17);
    outlined init with copy of ActionParaphrase?(v5, &v18[OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_paraphrase]);
    v19 = &v18[OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_errorMsg];
    *v19 = v15;
    *(v19 + 1) = v16;
    v26.receiver = v18;
    v26.super_class = v17;
    v20 = objc_msgSendSuper2(&v26, sel_init);
    outlined destroy of ActionParaphrase?(v5);
  }

  else
  {
    (*(v7 + 32))(v10, v14, v6);
    (*(v7 + 16))(v5, v10, v6);
    (*(v7 + 56))(v5, 0, 1, v6);
    v21 = type metadata accessor for ConversationParaphraseResultXPC(0);
    v22 = objc_allocWithZone(v21);
    outlined init with copy of ActionParaphrase?(v5, &v22[OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_paraphrase]);
    v23 = &v22[OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_errorMsg];
    *v23 = 0;
    *(v23 + 1) = 0;
    v25.receiver = v22;
    v25.super_class = v21;
    v20 = objc_msgSendSuper2(&v25, sel_init);
    outlined destroy of ActionParaphrase?(v5);
    (*(v7 + 8))(v10, v6);
  }

  return v20;
}

id static ConversationParaphraseResultXPC.paraphrase(paraphrase:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for ActionParaphrase();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = objc_allocWithZone(v1);
  outlined init with copy of ActionParaphrase?(v6, &v9[OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_paraphrase]);
  v10 = &v9[OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_errorMsg];
  *v10 = 0;
  *(v10 + 1) = 0;
  v13.receiver = v9;
  v13.super_class = v1;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  outlined destroy of ActionParaphrase?(v6);
  return v11;
}

uint64_t outlined init with copy of ConversationParaphraseResult(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationParaphraseResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id static ConversationParaphraseResultXPC.error(errorMsg:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for ActionParaphrase();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = objc_allocWithZone(v2);
  outlined init with copy of ActionParaphrase?(v8, &v10[OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_paraphrase]);
  v11 = &v10[OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_errorMsg];
  *v11 = a1;
  *(v11 + 1) = a2;
  v14.receiver = v10;
  v14.super_class = v2;

  v12 = objc_msgSendSuper2(&v14, sel_init);
  outlined destroy of ActionParaphrase?(v8);
  return v12;
}

uint64_t outlined init with copy of ActionParaphrase?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ActionParaphrase?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ConversationParaphraseResultXPC.swiftRepresentation()@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_errorMsg + 8);
  if (v7)
  {
    *a1 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_errorMsg);
    a1[1] = v7;
    type metadata accessor for ConversationParaphraseResult(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    outlined init with copy of ActionParaphrase?(v1 + OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_paraphrase, v6);
    v8 = type metadata accessor for ActionParaphrase();
    v9 = *(v8 - 8);
    v10 = *(v9 + 48);
    if (v10(v6, 1, v8) == 1)
    {
      static ActionParaphrase.noParaphrase()();
      if (v10(v6, 1, v8) != 1)
      {
        outlined destroy of ActionParaphrase?(v6);
      }
    }

    else
    {
      (*(v9 + 32))(a1, v6, v8);
    }

    type metadata accessor for ConversationParaphraseResult(0);
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t static ConversationParaphraseResultXPC.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  static ConversationParaphraseResultXPC.supportsSecureCoding = a1;
  return result;
}

Swift::Void __swiftcall ConversationParaphraseResultXPC.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for ActionParaphrase();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActionParaphrase?(v2 + OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_paraphrase, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of ActionParaphrase?(v7);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v13 = type metadata accessor for PropertyListEncoder();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    lazy protocol witness table accessor for type ActionParaphrase and conformance ActionParaphrase(&lazy protocol witness table cache variable for type ActionParaphrase and conformance ActionParaphrase);
    v16 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v18 = v17;

    isa = Data._bridgeToObjectiveC()().super.isa;
    v20 = MEMORY[0x1E12A1410](0x6172687061726170, 0xEA00000000006573);
    [(objc_class *)with.super.isa encodeObject:isa forKey:v20];
    outlined consume of Data._Representation(v16, v18);

    (*(v9 + 8))(v12, v8);
  }

  if (*(v2 + OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_errorMsg + 8))
  {
    v21 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_errorMsg));
    v22 = MEMORY[0x1E12A1410](0x67734D726F727265, 0xE800000000000000);
    [(objc_class *)with.super.isa encodeObject:v21 forKey:v22];
  }
}

id ConversationParaphraseResultXPC.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized ConversationParaphraseResultXPC.init(coder:)(a1);

  return v4;
}

id ConversationParaphraseResultXPC.init(coder:)(void *a1)
{
  v2 = specialized ConversationParaphraseResultXPC.init(coder:)(a1);

  return v2;
}

SiriKitRuntime::ConversationParaphraseResultXPC::CodingKeys_optional __swiftcall ConversationParaphraseResultXPC.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ConversationParaphraseResultXPC.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = SiriKitRuntime_ConversationParaphraseResultXPC_CodingKeys_errorMsg;
  }

  else
  {
    v4.value = SiriKitRuntime_ConversationParaphraseResultXPC_CodingKeys_unknownDefault;
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

SiriKitRuntime::ConversationParaphraseResultXPC::CodingKeys_optional __swiftcall ConversationParaphraseResultXPC.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ConversationParaphraseResultXPC.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = SiriKitRuntime_ConversationParaphraseResultXPC_CodingKeys_errorMsg;
  }

  else
  {
    v4.value = SiriKitRuntime_ConversationParaphraseResultXPC_CodingKeys_unknownDefault;
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

uint64_t ConversationParaphraseResultXPC.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x67734D726F727265;
  }

  else
  {
    return 0x6172687061726170;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ConversationParaphraseResultXPC.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x67734D726F727265;
  }

  else
  {
    v4 = 0x6172687061726170;
  }

  if (v3)
  {
    v5 = 0xEA00000000006573;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x67734D726F727265;
  }

  else
  {
    v6 = 0x6172687061726170;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xEA00000000006573;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ConversationParaphraseResultXPC.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ConversationParaphraseResultXPC.CodingKeys()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConversationParaphraseResultXPC.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ConversationParaphraseResultXPC.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ConversationParaphraseResultXPC.CodingKeys.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance ConversationParaphraseResultXPC.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 0x6172687061726170;
  if (*v1)
  {
    v2 = 0x67734D726F727265;
  }

  v3 = 0xEA00000000006573;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ConversationParaphraseResultXPC.CodingKeys()
{
  if (*v0)
  {
    result = 0x67734D726F727265;
  }

  else
  {
    result = 0x6172687061726170;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ConversationParaphraseResultXPC.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ConversationParaphraseResultXPC.CodingKeys.init(rawValue:), v3);

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

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ConversationParaphraseResultXPC.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ConversationParaphraseResultXPC.CodingKeys and conformance ConversationParaphraseResultXPC.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ConversationParaphraseResultXPC.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ConversationParaphraseResultXPC.CodingKeys and conformance ConversationParaphraseResultXPC.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ConversationParaphraseResultXPC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConversationParaphraseResultXPC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized ConversationParaphraseResultXPC.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v31 - v8;
  v10 = MEMORY[0x1E12A1410](0x67734D726F727265, 0xE800000000000000, v7);
  v11 = [a1 containsValueForKey_];

  if (v11 && (type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0), (v12 = NSCoder.decodeObject<A>(of:forKey:)()) != 0))
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  v17 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v17)
  {
    v18 = v17;
    v31 = ObjectType;
    v19 = type metadata accessor for PropertyListDecoder();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    v22 = type metadata accessor for ActionParaphrase();
    v23 = v18;
    v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    lazy protocol witness table accessor for type ActionParaphrase and conformance ActionParaphrase(&lazy protocol witness table cache variable for type ActionParaphrase and conformance ActionParaphrase);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    outlined consume of Data._Representation(v24, v26);

    (*(*(v22 - 8) + 56))(v9, 0, 1, v22);
    outlined init with take of ActionParaphrase?(v9, &v2[OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_paraphrase]);
    ObjectType = v31;
  }

  else
  {
    v27 = OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_paraphrase;
    v28 = type metadata accessor for ActionParaphrase();
    (*(*(v28 - 8) + 56))(&v2[v27], 1, 1, v28);
  }

  v29 = &v2[OBJC_IVAR____TtC14SiriKitRuntime31ConversationParaphraseResultXPC_errorMsg];
  *v29 = v14;
  v29[1] = v16;
  v32.receiver = v2;
  v32.super_class = ObjectType;
  return objc_msgSendSuper2(&v32, sel_init);
}

unint64_t lazy protocol witness table accessor for type ConversationParaphraseResultXPC.CodingKeys and conformance ConversationParaphraseResultXPC.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ConversationParaphraseResultXPC.CodingKeys and conformance ConversationParaphraseResultXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConversationParaphraseResultXPC.CodingKeys and conformance ConversationParaphraseResultXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationParaphraseResultXPC.CodingKeys and conformance ConversationParaphraseResultXPC.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConversationParaphraseResultXPC.CodingKeys and conformance ConversationParaphraseResultXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConversationParaphraseResultXPC.CodingKeys and conformance ConversationParaphraseResultXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationParaphraseResultXPC.CodingKeys and conformance ConversationParaphraseResultXPC.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConversationParaphraseResultXPC.CodingKeys and conformance ConversationParaphraseResultXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConversationParaphraseResultXPC.CodingKeys and conformance ConversationParaphraseResultXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationParaphraseResultXPC.CodingKeys and conformance ConversationParaphraseResultXPC.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConversationParaphraseResultXPC.CodingKeys and conformance ConversationParaphraseResultXPC.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConversationParaphraseResultXPC.CodingKeys and conformance ConversationParaphraseResultXPC.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationParaphraseResultXPC.CodingKeys and conformance ConversationParaphraseResultXPC.CodingKeys);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ConversationParaphraseResult(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v5 + 16) & ~v5));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = a2[1];
      *a1 = *a2;
      a1[1] = v6;
    }

    else
    {
      v8 = type metadata accessor for ActionParaphrase();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t destroy for ConversationParaphraseResult(uint64_t a1)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = *(a1 + 8);
  }

  else
  {
    v4 = type metadata accessor for ActionParaphrase();
    v5 = *(*(v4 - 8) + 8);

    return v5(a1, v4);
  }
}

void *initializeWithCopy for ConversationParaphraseResult(void *a1, void *a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = a2[1];
    *a1 = *a2;
    a1[1] = v4;
  }

  else
  {
    v5 = type metadata accessor for ActionParaphrase();
    (*(*(v5 - 8) + 16))(a1, a2, v5);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void *assignWithCopy for ConversationParaphraseResult(void *a1, void *a2)
{
  if (a1 != a2)
  {
    outlined destroy of ConversationParaphraseResult(a1);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a1 = *a2;
      a1[1] = a2[1];
    }

    else
    {
      v4 = type metadata accessor for ActionParaphrase();
      (*(*(v4 - 8) + 16))(a1, a2, v4);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t outlined destroy of ConversationParaphraseResult(uint64_t a1)
{
  v2 = type metadata accessor for ConversationParaphraseResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *initializeWithTake for ConversationParaphraseResult(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = type metadata accessor for ActionParaphrase();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *assignWithTake for ConversationParaphraseResult(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of ConversationParaphraseResult(a1);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = type metadata accessor for ActionParaphrase();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t type metadata completion function for ConversationParaphraseResult()
{
  result = type metadata accessor for ActionParaphrase();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void type metadata completion function for ConversationParaphraseResultXPC()
{
  type metadata accessor for ActionParaphrase?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for ActionParaphrase?()
{
  if (!lazy cache variable for type metadata for ActionParaphrase?)
  {
    type metadata accessor for ActionParaphrase();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ActionParaphrase?);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ActionParaphrase and conformance ActionParaphrase(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ActionParaphrase();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of ActionParaphrase?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseVSgMd, &_s11SiriKitFlow16ActionParaphraseVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void ConversationRequestProcessor.handleRunPommesResponseMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for RunPommesResponseMessage.UserInput();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.conversationBridge);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x80000001DCA80380, &v23);
    _os_log_impl(&dword_1DC659000, v10, v11, "%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1E12A2F50](v13, -1, -1);
    MEMORY[0x1E12A2F50](v12, -1, -1);
  }

  if ((*(*v2 + 608))())
  {
    RunPommesResponseMessage.userInput.getter();
    v14 = (*(v5 + 88))(v8, v4);
    if (v14 == *MEMORY[0x1E69D03B0])
    {
      (*(v5 + 96))(v8, v4);
      v15 = *v8;
      ConversationRequestProcessor.handleRunPommesResponseMessage(withSpeechPackage:message:)(*v8, a1);

LABEL_15:

      return;
    }

    if (v14 == *MEMORY[0x1E69D03A8])
    {
      (*(v5 + 96))(v8, v4);
      ConversationRequestProcessor.handleRunPommesResponseMessageInternal(withTextInput:message:)(*v8, v8[1], a1);

      goto LABEL_15;
    }

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1DC659000, v19, v20, "Unknown UserInput type received with RunPommesResponseMessage", v21, 2u);
      MEMORY[0x1E12A2F50](v21, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v22 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1DC659000, v22, v16, "PommesTRPCandidateMessage received for an inactive request. Dropping it on the floor.", v17, 2u);
      MEMORY[0x1E12A2F50](v17, -1, -1);
    }

    v18 = v22;
  }
}

uint64_t ConversationRequestProcessor.handleRunPommesResponseMessage(withSpeechPackage:message:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v187 = &v184 - v8;
  v190 = type metadata accessor for UserSessionAccessLevel();
  v197 = *(v190 - 8);
  v9 = *(v197 + 64);
  MEMORY[0x1EEE9AC00](v190);
  v189 = &v184 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v196 = &v184 - v12;
  v202 = type metadata accessor for UserSessionState();
  v199 = *(v202 - 8);
  v13 = *(v199 + 64);
  MEMORY[0x1EEE9AC00](v202);
  v186 = &v184 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v198 = &v184 - v16;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  v17 = *(*(v194 - 8) + 64);
  MEMORY[0x1EEE9AC00](v194);
  v188 = &v184 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v195 = &v184 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v203 = &v184 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v192 = &v184 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v201 = &v184 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v193 = &v184 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v184 - v31;
  v33 = type metadata accessor for UserID();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v184 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for UUID();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v184 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v209 = UUID.uuidString.getter();
  v210 = v43;
  (*(v39 + 8))(v42, v38);
  v200 = a2;
  RunPommesResponseMessage.userId.getter();
  v44 = *(v34 + 48);
  v45 = v44(v32, 1, v33);
  v207 = v33;
  v208 = v37;
  v204 = v44;
  if (v45 == 1)
  {
    v46 = v3;
    (*(v34 + 16))(v37, v3 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionUserId, v33);
    if (v44(v32, 1, v33) != 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v32, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
    }
  }

  else
  {
    v46 = v3;
    (*(v34 + 32))(v37, v32, v33);
  }

  v47 = swift_allocObject();
  v49 = v209;
  v48 = v210;
  v47[2] = v209;
  v47[3] = v48;
  v47[4] = a1;
  v50 = objc_allocWithZone(MEMORY[0x1E69D0900]);
  v51 = swift_allocObject();
  *(v51 + 16) = partial apply for closure #1 in ConversationRequestProcessor.handleRunPommesResponseMessage(withSpeechPackage:message:);
  *(v51 + 24) = v47;
  v52 = v47;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed SMTTCUPackageMutating?) -> ();
  aBlock[5] = v51;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed SMTTCUPackageMutating?) -> ();
  aBlock[3] = &block_descriptor_7;
  v53 = _Block_copy(aBlock);

  v54 = a1;

  v55 = [v50 initWithBuilder_];
  _Block_release(v53);
  v206 = v34;
  if (v55)
  {
    MEMORY[0x1EEE9AC00](v56);
    *(&v184 - 6) = v46;
    *(&v184 - 5) = v49;
    v57 = v208;
    *(&v184 - 4) = v48;
    *(&v184 - 3) = v57;
    *(&v184 - 2) = v55;
    v58 = objc_allocWithZone(type metadata accessor for TRPCandidateRequestMessage());
    v59 = TRPCandidateRequestMessage.init(build:)();
    if (v59)
    {
      v60 = v59;
      v61 = one-time initialization token for conversationBridge;

      v62 = v46;
      v63 = v52;
      if (v61 != -1)
      {
        swift_once();
      }

      v64 = type metadata accessor for Logger();
      v205 = __swift_project_value_buffer(v64, static Logger.conversationBridge);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.debug.getter();
      v67 = os_log_type_enabled(v65, v66);
      v191 = v55;
      if (v67)
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        aBlock[0] = v69;
        *v68 = 136315138;
        *(v68 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x80000001DCA80470, aBlock);
        _os_log_impl(&dword_1DC659000, v65, v66, "Posting message %s to ConversationBridge", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v69);
        MEMORY[0x1E12A2F50](v69, -1, -1);
        v70 = v68;
        v62 = v46;
        MEMORY[0x1E12A2F50](v70, -1, -1);
      }

      (*(*v62 + 856))(v60);

      v71 = v200;
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.info.getter();

      v74 = os_log_type_enabled(v72, v73);
      v184 = v63;
      if (v74)
      {
        v200 = v62;
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        aBlock[0] = v76;
        *v75 = 136315394;
        RunPommesResponseMessage.selectedUserAttributes.getter();
        v77 = String.init<A>(describing:)();
        v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, aBlock);

        *(v75 + 4) = v79;
        *(v75 + 12) = 2080;
        v80 = v193;
        RunPommesResponseMessage.userId.getter();
        v81 = v207;
        if (v204(v80, 1, v207) == 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v80, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
          v82 = 0xE500000000000000;
          v83 = 0x3E6C696E3CLL;
        }

        else
        {
          v97 = UserID.sharedUserId.getter();
          v98 = v80;
          v99 = v97;
          v82 = v100;
          (*(v206 + 8))(v98, v81);
          v83 = v99;
        }

        v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v82, aBlock);

        *(v75 + 14) = v101;
        _os_log_impl(&dword_1DC659000, v72, v73, "#user-session: #pommes received selectedUserAttribute=%s from pommes for userId: %s", v75, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v76, -1, -1);
        MEMORY[0x1E12A2F50](v75, -1, -1);

        v34 = v206;
        v62 = v200;
      }

      else
      {
      }

      v102 = v201;
      RunPommesResponseMessage.userId.getter();
      v103 = v207;
      v104 = v204(v102, 1, v207);
      v185 = v60;
      if (v104 == 1)
      {
        v105 = outlined destroy of ReferenceResolutionClientProtocol?(v102, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
        v89 = v208;
      }

      else
      {
        UserID.sharedUserId.getter();
        (*(v34 + 8))(v102, v103);

        v106 = v195;
        RunPommesResponseMessage.selectedUserAttributes.getter();
        v107 = type metadata accessor for SelectedUserAttributes();
        v108 = (*(*(v107 - 8) + 48))(v106, 1, v107);
        v105 = outlined destroy of ReferenceResolutionClientProtocol?(v106, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
        v89 = v208;
        if (v108 != 1)
        {
          v125 = v203;
          v126 = RunPommesResponseMessage.selectedUserAttributes.getter();
          goto LABEL_42;
        }
      }

      v204 = v71;
      v109 = (*v62 + 568);
      v110 = *v109;
      v111 = v198;
      (*v109)(v105);
      v112 = UserSessionState.isSessionActiveForUser(siriSharedUserId:)(v89);
      v113 = *(v199 + 8);
      v113(v111, v202);
      if (v112)
      {
        v114 = Logger.logObject.getter();
        v115 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v114, v115))
        {
          v116 = swift_slowAlloc();
          *v116 = 0;
          _os_log_impl(&dword_1DC659000, v114, v115, "#user-session: constructing selectedUserAttribute from an existing user session", v116, 2u);
          MEMORY[0x1E12A2F50](v116, -1, -1);
        }

        v117 = v186;
        v110();
        v118 = v187;
        UserSessionState.activeUserAccessLevel.getter();
        v113(v117, v202);
        v119 = v197;
        v120 = *(v197 + 48);
        v121 = v190;
        if (v120(v118, 1, v190) == 1)
        {
          v122 = *(v119 + 104);
          v122(v196, *MEMORY[0x1E69D0870], v121);
          if (v120(v118, 1, v121) != 1)
          {
            outlined destroy of ReferenceResolutionClientProtocol?(v118, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMd, &_s16SiriMessageTypes22UserSessionAccessLevelOSgMR);
          }

          v123 = v196;
          v119 = v197;
        }

        else
        {
          v123 = v196;
          (*(v119 + 32))(v196, v118, v121);
          v122 = *(v119 + 104);
        }

        v127 = *MEMORY[0x1E69D0878];
        v128 = v189;
        v122(v189, v127, v121);
        static UserSessionAccessLevel.== infix(_:_:)();
        v129 = *(v119 + 8);
        v129(v128, v121);
        v122(v128, v127, v121);
        static UserSessionAccessLevel.== infix(_:_:)();
        v129(v128, v121);
        v130 = v188;
        SelectedUserAttributes.init(score:classification:lowScoreThreshold:meetsUserSessionThreshold:meetsPersonalRequestThreshold:)();
        v129(v123, v121);
        v131 = type metadata accessor for SelectedUserAttributes();
        (*(*(v131 - 8) + 56))(v130, 0, 1, v131);
        v125 = v203;
        v126 = outlined init with take of SelectedUserAttributes?(v130, v203);
        v89 = v208;
      }

      else
      {
        v124 = type metadata accessor for SelectedUserAttributes();
        v125 = v203;
        v126 = (*(*(v124 - 8) + 56))(v203, 1, 1, v124);
      }

      v71 = v204;
LABEL_42:
      MEMORY[0x1EEE9AC00](v126);
      v132 = v209;
      v133 = v210;
      *(&v184 - 8) = v62;
      *(&v184 - 7) = v132;
      *(&v184 - 6) = v133;
      *(&v184 - 5) = v89;
      *(&v184 - 4) = v191;
      *(&v184 - 3) = v71;
      *(&v184 - 2) = v125;
      v134 = objc_allocWithZone(type metadata accessor for TTResponseMessage());
      v135 = TTResponseMessage.init(build:)();
      if (v135)
      {
        v136 = v135;

        v137 = Logger.logObject.getter();
        v138 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v137, v138))
        {
          v139 = swift_slowAlloc();
          v140 = swift_slowAlloc();
          aBlock[0] = v140;
          *v139 = 136315138;
          *(v139 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x80000001DCA80450, aBlock);
          _os_log_impl(&dword_1DC659000, v137, v138, "Posting message %s to ConversationBridge", v139, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v140);
          MEMORY[0x1E12A2F50](v140, -1, -1);
          MEMORY[0x1E12A2F50](v139, -1, -1);
        }

        (*(*v62 + 880))(v136);

        MEMORY[0x1EEE9AC00](v141);
        v142 = v209;
        v143 = v210;
        *(&v184 - 4) = v62;
        *(&v184 - 3) = v142;
        *(&v184 - 2) = v143;
        *(&v184 - 1) = v71;
        v144 = objc_allocWithZone(type metadata accessor for PommesTRPCandidateMessage());
        v145 = PommesTRPCandidateMessage.init(build:)();
        if (v145)
        {
          v146 = v145;

          v147 = Logger.logObject.getter();
          v148 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v147, v148))
          {
            v149 = swift_slowAlloc();
            v150 = swift_slowAlloc();
            aBlock[0] = v150;
            *v149 = 136315138;
            *(v149 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x80000001DCA80430, aBlock);
            _os_log_impl(&dword_1DC659000, v147, v148, "Posting message %s to ConversationBridge", v149, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v150);
            v151 = v150;
            v125 = v203;
            MEMORY[0x1E12A2F50](v151, -1, -1);
            MEMORY[0x1E12A2F50](v149, -1, -1);
          }

          (*(*v62 + 952))(v146);

          MEMORY[0x1EEE9AC00](v152);
          v153 = v209;
          v154 = v210;
          *(&v184 - 4) = v62;
          *(&v184 - 3) = v153;
          *(&v184 - 2) = v154;
          v155 = objc_allocWithZone(type metadata accessor for StoppedListeningForSpeechContinuationMessage());
          v204 = StoppedListeningForSpeechContinuationMessage.init(build:)();
          if (v204)
          {

            v156 = Logger.logObject.getter();
            v157 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v156, v157))
            {
              v158 = swift_slowAlloc();
              v159 = swift_slowAlloc();
              aBlock[0] = v159;
              *v158 = 136315138;
              *(v158 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x80000001DCA80400, aBlock);
              _os_log_impl(&dword_1DC659000, v156, v157, "Posting message %s to ConversationBridge", v158, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v159);
              MEMORY[0x1E12A2F50](v159, -1, -1);
              MEMORY[0x1E12A2F50](v158, -1, -1);
            }

            v160 = v209;
            v88 = v207;
            (*(*v62 + 904))(v204);

            MEMORY[0x1EEE9AC00](v161);
            *(&v184 - 4) = v62;
            *(&v184 - 3) = v160;
            *(&v184 - 2) = v210;
            v162 = objc_allocWithZone(type metadata accessor for NLRoutingDecisionMessage());
            v163 = NLRoutingDecisionMessage.init(build:)();

            if (v163)
            {

              v164 = Logger.logObject.getter();
              v165 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v164, v165))
              {
                v166 = swift_slowAlloc();
                v167 = v62;
                v168 = swift_slowAlloc();
                aBlock[0] = v168;
                *v166 = 136315138;
                *(v166 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x80000001DCA803E0, aBlock);
                _os_log_impl(&dword_1DC659000, v164, v165, "Posting message %s to ConversationBridge", v166, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v168);
                v169 = v168;
                v62 = v167;
                MEMORY[0x1E12A2F50](v169, -1, -1);
                MEMORY[0x1E12A2F50](v166, -1, -1);
              }

              (*(*v62 + 872))(v163);

              v170 = v185;
            }

            else
            {
              v180 = Logger.logObject.getter();
              v181 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v180, v181))
              {
                v182 = swift_slowAlloc();
                *v182 = 0;
                _os_log_impl(&dword_1DC659000, v180, v181, "Could not construct NLRoutingDecisionMessage", v182, 2u);
                MEMORY[0x1E12A2F50](v182, -1, -1);
              }

              v170 = v204;
            }

            outlined destroy of ReferenceResolutionClientProtocol?(v203, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
            goto LABEL_69;
          }

          v177 = Logger.logObject.getter();
          v178 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v177, v178))
          {
            v179 = swift_slowAlloc();
            *v179 = 0;
            _os_log_impl(&dword_1DC659000, v177, v178, "Could not construct StoppedListeningForSpeechContinuationMessage", v179, 2u);
            MEMORY[0x1E12A2F50](v179, -1, -1);
          }
        }

        else
        {

          v174 = Logger.logObject.getter();
          v175 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v174, v175))
          {
            v176 = swift_slowAlloc();
            *v176 = 0;
            _os_log_impl(&dword_1DC659000, v174, v175, "Could not construct PommesTRPCandidateMessage", v176, 2u);
            MEMORY[0x1E12A2F50](v176, -1, -1);
          }
        }
      }

      else
      {

        v171 = Logger.logObject.getter();
        v172 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v171, v172))
        {
          v173 = swift_slowAlloc();
          *v173 = 0;
          _os_log_impl(&dword_1DC659000, v171, v172, "Could not construct TTResponseMessage", v173, 2u);
          MEMORY[0x1E12A2F50](v173, -1, -1);
        }
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v125, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
      v88 = v207;
      goto LABEL_69;
    }

    v91 = v55;

    v88 = v207;
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v92 = type metadata accessor for Logger();
    __swift_project_value_buffer(v92, static Logger.conversationBridge);
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.error.getter();
    v95 = os_log_type_enabled(v93, v94);
    v89 = v208;
    if (v95)
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&dword_1DC659000, v93, v94, "Could not construct TRPCandidateRequestMessage", v96, 2u);
      MEMORY[0x1E12A2F50](v96, -1, -1);
    }
  }

  else
  {

    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v84 = type metadata accessor for Logger();
    __swift_project_value_buffer(v84, static Logger.conversationBridge);
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.error.getter();
    v87 = os_log_type_enabled(v85, v86);
    v88 = v207;
    v89 = v208;
    if (v87)
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&dword_1DC659000, v85, v86, "Could not construct TCUPackage", v90, 2u);
      MEMORY[0x1E12A2F50](v90, -1, -1);
    }
  }

LABEL_69:
  (*(v206 + 8))(v89, v88);
}

uint64_t ConversationRequestProcessor.handleRunPommesResponseMessageInternal(withTextInput:message:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v109 = a2;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMR);
  v7 = *(*(v103 - 8) + 64);
  MEMORY[0x1EEE9AC00](v103);
  v104 = (&v101 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v105 = &v101 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v101 - v14;
  v16 = type metadata accessor for UserID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v111 = UUID.uuidString.getter();
  v108 = v26;
  (*(v22 + 8))(v25, v21);
  v27 = v16;
  v28 = v17;
  v106 = a3;
  RunPommesResponseMessage.userId.getter();
  v29 = *(v17 + 48);
  v30 = v29(v15, 1, v27);
  v110 = v20;
  if (v30 == 1)
  {
    (*(v17 + 16))(v20, v4 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionUserId, v27);
    v31 = v29(v15, 1, v27);
    if (v31 != 1)
    {
      v31 = outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
    }
  }

  else
  {
    v31 = (*(v17 + 32))(v20, v15, v27);
  }

  MEMORY[0x1EEE9AC00](v31);
  v33 = v110;
  v32 = v111;
  *(&v101 - 6) = v4;
  *(&v101 - 5) = v33;
  v34 = v108;
  *(&v101 - 4) = v32;
  *(&v101 - 3) = v34;
  v35 = v109;
  *(&v101 - 2) = a1;
  *(&v101 - 1) = v35;
  v36 = objc_allocWithZone(type metadata accessor for TextBasedResultCandidateMessage());
  v109 = TextBasedResultCandidateMessage.init(build:)();
  v107 = v27;
  if (v109)
  {
    v37 = one-time initialization token for conversationBridge;

    if (v37 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.conversationBridge);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v112 = v42;
      *v41 = 136315138;
      *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x80000001DCA804F0, &v112);
      _os_log_impl(&dword_1DC659000, v39, v40, "Posting message %s to ConversationBridge", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x1E12A2F50](v42, -1, -1);
      MEMORY[0x1E12A2F50](v41, -1, -1);
    }

    (*(*v4 + 768))(v109);

    MEMORY[0x1EEE9AC00](v43);
    v44 = v111;
    *(&v101 - 4) = v4;
    *(&v101 - 3) = v44;
    *(&v101 - 2) = v34;
    v45 = objc_allocWithZone(type metadata accessor for ResultSelectedMessage());
    v46 = MEMORY[0x1E129ECE0](partial apply for closure #2 in ConversationRequestProcessor.handleRunPommesResponseMessageInternal(withTextInput:message:), &v101 - 6);
    if (v46)
    {
      v47 = v46;

      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v112 = v51;
        *v50 = 136315138;
        *(v50 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000001DCA804D0, &v112);
        _os_log_impl(&dword_1DC659000, v48, v49, "Posting message %s to ConversationBridge", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v51);
        v34 = v108;
        MEMORY[0x1E12A2F50](v51, -1, -1);
        MEMORY[0x1E12A2F50](v50, -1, -1);
      }

      (*(*v4 + 968))(v47);

      MEMORY[0x1EEE9AC00](v52);
      v53 = v110;
      v54 = v111;
      *(&v101 - 6) = v4;
      *(&v101 - 5) = v54;
      *(&v101 - 4) = v34;
      *(&v101 - 3) = v53;
      *(&v101 - 2) = v106;
      v55 = objc_allocWithZone(type metadata accessor for NLResultCandidateMessage());
      v108 = NLResultCandidateMessage.init(build:)();
      if (v108)
      {
        v102 = v47;

        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v112 = v59;
          *v58 = 136315138;
          *(v58 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x80000001DCA804B0, &v112);
          _os_log_impl(&dword_1DC659000, v56, v57, "Posting message %s to ConversationBridge", v58, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v59);
          MEMORY[0x1E12A2F50](v59, -1, -1);
          MEMORY[0x1E12A2F50](v58, -1, -1);
        }

        v60 = v105;
        (*(*v4 + 792))(v108);

        v61 = v104;
        RunPommesResponseMessage.pommesResult.getter();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v62 = type metadata accessor for PommesError();
          v63 = *(v62 - 8);
          (*(v63 + 32))(v60, v61, v62);
          v64 = (*(v63 + 56))(v60, 0, 1, v62);
          v65 = 0;
        }

        else
        {
          v65 = *v61;
          v76 = type metadata accessor for PommesError();
          (*(*(v76 - 8) + 56))(v60, 1, 1, v76);
          v64 = v65;
        }

        MEMORY[0x1EEE9AC00](v64);
        v77 = v111;
        *(&v101 - 6) = v4;
        *(&v101 - 5) = v77;
        *(&v101 - 4) = v34;
        *(&v101 - 3) = v65;
        v78 = v106;
        *(&v101 - 2) = v60;
        *(&v101 - 1) = v78;
        v79 = objc_allocWithZone(type metadata accessor for PommesResultCandidateMessage());
        v80 = PommesResultCandidateMessage.init(build:)();

        if (v80)
        {

          v81 = Logger.logObject.getter();
          v82 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v81, v82))
          {
            v83 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            v112 = v84;
            *v83 = 136315138;
            *(v83 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x80000001DCA80490, &v112);
            _os_log_impl(&dword_1DC659000, v81, v82, "Posting message %s to ConversationBridge", v83, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v84);
            v85 = v84;
            v60 = v105;
            MEMORY[0x1E12A2F50](v85, -1, -1);
            MEMORY[0x1E12A2F50](v83, -1, -1);
          }

          (*(*v4 + 840))(v80);

          MEMORY[0x1EEE9AC00](v86);
          v87 = v111;
          *(&v101 - 4) = v4;
          *(&v101 - 3) = v87;
          *(&v101 - 2) = v34;
          v88 = objc_allocWithZone(type metadata accessor for NLRoutingDecisionMessage());
          v89 = NLRoutingDecisionMessage.init(build:)();

          if (v89)
          {

            v90 = Logger.logObject.getter();
            v91 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v90, v91))
            {
              v92 = swift_slowAlloc();
              v93 = swift_slowAlloc();
              v112 = v93;
              *v92 = 136315138;
              *(v92 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x80000001DCA803E0, &v112);
              _os_log_impl(&dword_1DC659000, v90, v91, "Posting message %s to ConversationBridge", v92, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v93);
              MEMORY[0x1E12A2F50](v93, -1, -1);
              MEMORY[0x1E12A2F50](v92, -1, -1);
            }

            (*(*v4 + 872))(v89);
          }

          else
          {
            v97 = Logger.logObject.getter();
            v98 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v97, v98))
            {
              v99 = swift_slowAlloc();
              *v99 = 0;
              _os_log_impl(&dword_1DC659000, v97, v98, "Could not construct NLRoutingDecisionMessage", v99, 2u);
              MEMORY[0x1E12A2F50](v99, -1, -1);
            }
          }
        }

        else
        {

          v94 = Logger.logObject.getter();
          v95 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v94, v95))
          {
            v96 = swift_slowAlloc();
            *v96 = 0;
            _os_log_impl(&dword_1DC659000, v94, v95, "Could not construct PommesResultCandidateMessage", v96, 2u);
            MEMORY[0x1E12A2F50](v96, -1, -1);
          }
        }

        outlined destroy of ReferenceResolutionClientProtocol?(v60, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
      }

      else
      {

        v73 = Logger.logObject.getter();
        v74 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          *v75 = 0;
          _os_log_impl(&dword_1DC659000, v73, v74, "Could not construct NLResultCandidateMessage", v75, 2u);
          MEMORY[0x1E12A2F50](v75, -1, -1);
        }
      }
    }

    else
    {

      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_1DC659000, v70, v71, "Could not construct ResultSelectedMessage", v72, 2u);
        MEMORY[0x1E12A2F50](v72, -1, -1);
      }
    }
  }

  else
  {

    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    __swift_project_value_buffer(v66, static Logger.conversationBridge);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_1DC659000, v67, v68, "Could not construct TextBasedResultCandidateMessage", v69, 2u);
      MEMORY[0x1E12A2F50](v69, -1, -1);
    }
  }

  return (*(v28 + 8))(v110, v107);
}

id closure #1 in ConversationRequestProcessor.handleRunPommesResponseMessage(withSpeechPackage:message:)(id result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v5 = result;
    v6 = MEMORY[0x1E12A1410](a2, a3);
    [v5 setTcuId_];

    return [v5 setSpeechPackage_];
  }

  return result;
}

uint64_t closure #2 in ConversationRequestProcessor.handleRunPommesResponseMessage(withSpeechPackage:message:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v34[1] = a3;
  v35 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v34 - v18;
  v20 = *MEMORY[0x1E69D0460];
  v21 = type metadata accessor for MessageSource();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v19, v20, v21);
  (*(v22 + 56))(v19, 0, 1, v21);
  TRPCandidateRequestMessage.Builder.source.setter();
  v23 = *(a2 + 12);
  v24 = *(a2 + 13);

  TRPCandidateRequestMessage.Builder.assistantId.setter();
  v25 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v26 = type metadata accessor for UUID();
  v27 = *(v26 - 8);
  (*(v27 + 16))(v15, &a2[v25], v26);
  (*(v27 + 56))(v15, 0, 1, v26);
  TRPCandidateRequestMessage.Builder.sessionId.setter();
  v28 = *(a2 + 8);
  v29 = *(a2 + 9);

  TRPCandidateRequestMessage.Builder.requestId.setter();

  TRPCandidateRequestMessage.Builder.trpCandidateId.setter();
  v30 = type metadata accessor for UserID();
  v31 = *(v30 - 8);
  (*(v31 + 16))(v11, v35, v30);
  (*(v31 + 56))(v11, 0, 1, v30);
  TRPCandidateRequestMessage.Builder.userId.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13SMTTCUPackageC_16SiriMessageTypes33ImmutableConversationSessionState_ptGMd, &_ss23_ContiguousArrayStorageCySo13SMTTCUPackageC_16SiriMessageTypes33ImmutableConversationSessionState_ptGMR);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1DCA66060;
  *(v32 + 32) = a6;
  (*(*a2 + 424))(v36, a6);
  __swift_project_boxed_opaque_existential_1(v36, v36[3]);
  dispatch thunk of ConversationSessionState.immutableSnapshot()();
  __swift_destroy_boxed_opaque_existential_1Tm(v36);
  return TRPCandidateRequestMessage.Builder.tcuToContextList.setter();
}

id closure #3 in ConversationRequestProcessor.handleRunPommesResponseMessage(withSpeechPackage:message:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v53 = a4;
  v50[1] = a7;
  v55 = a5;
  v56 = a6;
  v54 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v51 = v50 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v50 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v50 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = v50 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = v50 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = v50 - v30;
  v32 = *MEMORY[0x1E69D0460];
  v33 = type metadata accessor for MessageSource();
  v34 = *(v33 - 8);
  (*(v34 + 104))(v31, v32, v33);
  (*(v34 + 56))(v31, 0, 1, v33);
  TTResponseMessage.Builder.source.setter();
  v35 = *(a2 + 12);
  v36 = *(a2 + 13);

  TTResponseMessage.Builder.assistantId.setter();
  v37 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v38 = type metadata accessor for UUID();
  v39 = *(v38 - 8);
  (*(v39 + 16))(v27, &a2[v37], v38);
  (*(v39 + 56))(v27, 0, 1, v38);
  TTResponseMessage.Builder.sessionId.setter();
  v40 = *(a2 + 8);
  v41 = *(a2 + 9);

  TTResponseMessage.Builder.requestId.setter();

  TTResponseMessage.Builder.trpCandidateId.setter();
  v42 = type metadata accessor for UserID();
  v43 = *(v42 - 8);
  (*(v43 + 16))(v23, v55, v42);
  (*(v43 + 56))(v23, 0, 1, v42);
  TTResponseMessage.Builder.userId.setter();
  v44 = *MEMORY[0x1E69D0270];
  v45 = type metadata accessor for TTResponseMessage.MitigationDecision();
  v46 = *(v45 - 8);
  (*(v46 + 104))(v19, v44, v45);
  (*(v46 + 56))(v19, 0, 1, v45);
  TTResponseMessage.Builder.mitigationDecision.setter();
  result = [v56 tcuId];
  if (result)
  {
    v48 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    RunPommesResponseMessage.nlResponse.getter();
    TCUMappedNLResponse.init(tcuId:nlResponse:)();
    v49 = type metadata accessor for TCUMappedNLResponse();
    (*(*(v49 - 8) + 56))(v15, 0, 1, v49);
    TTResponseMessage.Builder.tcuMappedNLResponse.setter();
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So11SMTTCUStateVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    TTResponseMessage.Builder.tcuStateDict.setter();
    outlined init with copy of ReferenceResolutionClientProtocol?(v52, v51, &_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
    return TTResponseMessage.Builder.selectedUserAttributes.setter();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #4 in ConversationRequestProcessor.handleRunPommesResponseMessage(withSpeechPackage:message:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35[0] = a3;
  v35[1] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGSgMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v35 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = v35 - v20;
  v22 = *MEMORY[0x1E69D0460];
  v23 = type metadata accessor for MessageSource();
  v24 = *(v23 - 8);
  (*(v24 + 104))(v21, v22, v23);
  (*(v24 + 56))(v21, 0, 1, v23);
  PommesTRPCandidateMessage.Builder.source.setter();
  v25 = *(a2 + 12);
  v26 = *(a2 + 13);

  PommesTRPCandidateMessage.Builder.assistantId.setter();
  v27 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v28 = type metadata accessor for UUID();
  v29 = *(v28 - 8);
  (*(v29 + 16))(v17, &a2[v27], v28);
  (*(v29 + 56))(v17, 0, 1, v28);
  PommesTRPCandidateMessage.Builder.sessionId.setter();
  v30 = *(a2 + 8);
  v31 = *(a2 + 9);

  PommesTRPCandidateMessage.Builder.requestId.setter();
  swift_bridgeObjectRetain_n();
  PommesTRPCandidateMessage.Builder.trpCandidateId.setter();
  RunPommesResponseMessage.pommesResult.getter();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch14PommesResponseC0B12MessageTypes0E5ErrorOGMR);
  (*(*(v32 - 8) + 56))(v13, 0, 1, v32);
  PommesTRPCandidateMessage.Builder.pommesResult.setter();
  RunPommesResponseMessage.pommesSearchReason.getter();
  v33 = type metadata accessor for PommesSearchReason();
  (*(*(v33 - 8) + 56))(v9, 0, 1, v33);
  PommesTRPCandidateMessage.Builder.searchReason.setter();
  return PommesTRPCandidateMessage.Builder.tcuId.setter();
}

uint64_t closure #5 in ConversationRequestProcessor.handleRunPommesResponseMessage(withSpeechPackage:message:)(uint64_t a1, char *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v22 - v9;
  v11 = *MEMORY[0x1E69D0460];
  v12 = type metadata accessor for MessageSource();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v10, v11, v12);
  (*(v13 + 56))(v10, 0, 1, v12);
  StoppedListeningForSpeechContinuationMessage.Builder.source.setter();
  v14 = *(a2 + 12);
  v15 = *(a2 + 13);

  StoppedListeningForSpeechContinuationMessage.Builder.assistantId.setter();
  v16 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v6, &a2[v16], v17);
  (*(v18 + 56))(v6, 0, 1, v17);
  StoppedListeningForSpeechContinuationMessage.Builder.sessionId.setter();
  v20 = *(a2 + 8);
  v19 = *(a2 + 9);

  StoppedListeningForSpeechContinuationMessage.Builder.requestId.setter();

  return StoppedListeningForSpeechContinuationMessage.Builder.lastTRPId.setter();
}

uint64_t closure #1 in ConversationRequestProcessor.handleRunPommesResponseMessageInternal(withTextInput:message:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a4;
  v35 = a6;
  v33 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v32 - v17;
  v19 = *MEMORY[0x1E69D0460];
  v20 = type metadata accessor for MessageSource();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v18, v19, v20);
  (*(v21 + 56))(v18, 0, 1, v20);
  TextBasedResultCandidateMessage.Builder.source.setter();
  v22 = *(a2 + 12);
  v23 = *(a2 + 13);

  TextBasedResultCandidateMessage.Builder.assistantId.setter();
  v24 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v25 = type metadata accessor for UUID();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v14, &a2[v24], v25);
  (*(v26 + 56))(v14, 0, 1, v25);
  TextBasedResultCandidateMessage.Builder.sessionId.setter();
  v27 = *(a2 + 8);
  v28 = *(a2 + 9);

  TextBasedResultCandidateMessage.Builder.requestId.setter();
  v29 = type metadata accessor for UserID();
  v30 = *(v29 - 8);
  (*(v30 + 16))(v10, v33, v29);
  (*(v30 + 56))(v10, 0, 1, v29);
  TextBasedResultCandidateMessage.Builder.userId.setter();

  TextBasedResultCandidateMessage.Builder.resultCandidateId.setter();

  return TextBasedResultCandidateMessage.Builder.utterance.setter();
}

uint64_t closure #2 in ConversationRequestProcessor.handleRunPommesResponseMessageInternal(withTextInput:message:)(uint64_t a1, char *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v22 - v9;
  v11 = *MEMORY[0x1E69D0460];
  v12 = type metadata accessor for MessageSource();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v10, v11, v12);
  (*(v13 + 56))(v10, 0, 1, v12);
  ResultSelectedMessageBase.Builder.source.setter();
  v14 = *(a2 + 12);
  v15 = *(a2 + 13);

  ResultSelectedMessageBase.Builder.assistantId.setter();
  v16 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v6, &a2[v16], v17);
  (*(v18 + 56))(v6, 0, 1, v17);
  ResultSelectedMessageBase.Builder.sessionId.setter();
  v20 = *(a2 + 8);
  v19 = *(a2 + 9);

  ResultSelectedMessageBase.Builder.requestId.setter();

  ResultSelectedMessageBase.Builder.resultCandidateId.setter();
  ResultSelectedMessageBase.Builder.isMitigated.setter();
  return ResultSelectedMessageBase.Builder.endpointMode.setter();
}

uint64_t closure #3 in ConversationRequestProcessor.handleRunPommesResponseMessageInternal(withTextInput:message:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a5;
  v48[1] = a4;
  v48[2] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMd, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v50 = v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v48[3] = v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMd, &_s12SiriNLUTypes0A28_Nlu_External_ResponseStatusV0F4CodeOSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v48 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = v48 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = v48 - v26;
  v28 = *MEMORY[0x1E69D0460];
  v29 = type metadata accessor for MessageSource();
  v30 = *(v29 - 8);
  (*(v30 + 104))(v27, v28, v29);
  (*(v30 + 56))(v27, 0, 1, v29);
  NLResultCandidateMessage.Builder.source.setter();
  v31 = *(a2 + 12);
  v32 = *(a2 + 13);

  NLResultCandidateMessage.Builder.assistantId.setter();
  v33 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v34 = type metadata accessor for UUID();
  v35 = *(v34 - 8);
  (*(v35 + 16))(v23, &a2[v33], v34);
  (*(v35 + 56))(v23, 0, 1, v34);
  NLResultCandidateMessage.Builder.sessionId.setter();
  v36 = *(a2 + 8);
  v37 = *(a2 + 9);

  NLResultCandidateMessage.Builder.requestId.setter();

  NLResultCandidateMessage.Builder.resultCandidateId.setter();
  v38 = *MEMORY[0x1E69D0AA0];
  v39 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  v40 = *(v39 - 8);
  (*(v40 + 104))(v19, v38, v39);
  (*(v40 + 56))(v19, 0, 1, v39);
  NLResultCandidateMessage.Builder.responseStatusCode.setter();
  v41 = type metadata accessor for UserID();
  v42 = *(v41 - 8);
  (*(v42 + 16))(v15, v49, v41);
  (*(v42 + 56))(v15, 0, 1, v41);
  NLResultCandidateMessage.Builder.userId.setter();
  v43 = RunPommesResponseMessage.nlResponse.getter();
  NLParseResponse.userParses.getter();

  NLResultCandidateMessage.Builder.userParses.setter();
  v44 = RunPommesResponseMessage.nlResponse.getter();
  NLParseResponse.fallbackParse.getter();

  NLResultCandidateMessage.Builder.fallbackParse.setter();
  v45 = RunPommesResponseMessage.nlResponse.getter();
  NLParseResponse.languageVariantResult.getter();

  NLResultCandidateMessage.Builder.languageVariantResult.setter();
  v46 = RunPommesResponseMessage.nlResponse.getter();
  NLParseResponse.responseVariantResult.getter();

  return NLResultCandidateMessage.Builder.responseVariantResult.setter();
}

uint64_t closure #4 in ConversationRequestProcessor.handleRunPommesResponseMessageInternal(withTextInput:message:)(uint64_t a1, char *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v38 = a6;
  v39 = a7;
  v37[0] = a5;
  v37[1] = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = v37 - v22;
  v24 = *MEMORY[0x1E69D0460];
  v25 = type metadata accessor for MessageSource();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v23, v24, v25);
  (*(v26 + 56))(v23, 0, 1, v25);
  v27 = v37[0];
  PommesResultCandidateMessage.Builder.source.setter();
  v28 = *(a2 + 12);
  v29 = *(a2 + 13);

  PommesResultCandidateMessage.Builder.assistantId.setter();
  v30 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v31 = type metadata accessor for UUID();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v19, &a2[v30], v31);
  (*(v32 + 56))(v19, 0, 1, v31);
  PommesResultCandidateMessage.Builder.sessionId.setter();
  v33 = *(a2 + 8);
  v34 = *(a2 + 9);

  PommesResultCandidateMessage.Builder.requestId.setter();

  PommesResultCandidateMessage.Builder.resultCandidateId.setter();
  PommesResultCandidateMessage.Builder.pommesResponse.setter();
  outlined init with copy of ReferenceResolutionClientProtocol?(v38, v15, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  PommesResultCandidateMessage.Builder.error.setter();
  RunPommesResponseMessage.pommesSearchReason.getter();
  v35 = type metadata accessor for PommesSearchReason();
  (*(*(v35 - 8) + 56))(v11, 0, 1, v35);
  return PommesResultCandidateMessage.Builder.searchReason.setter();
}

uint64_t closure #1 in ConversationRequestProcessor.nlRoutingDecisionMessage(trpId:)(uint64_t a1, char *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v29 - v13;
  v15 = *MEMORY[0x1E69D0460];
  v16 = type metadata accessor for MessageSource();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v14, v15, v16);
  (*(v17 + 56))(v14, 0, 1, v16);
  NLRoutingDecisionMessage.Builder.source.setter();
  v18 = *(a2 + 12);
  v19 = *(a2 + 13);

  NLRoutingDecisionMessage.Builder.assistantId.setter();
  v20 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v10, &a2[v20], v21);
  (*(v22 + 56))(v10, 0, 1, v21);
  NLRoutingDecisionMessage.Builder.sessionId.setter();
  v24 = *(a2 + 8);
  v23 = *(a2 + 9);

  NLRoutingDecisionMessage.Builder.requestId.setter();

  NLRoutingDecisionMessage.Builder.trpCandidateId.setter();
  v25 = *MEMORY[0x1E69D02D8];
  v26 = type metadata accessor for NLRoutingDecisionMessage.RoutingDecision();
  v27 = *(v26 - 8);
  (*(v27 + 104))(v6, v25, v26);
  (*(v27 + 56))(v6, 0, 1, v26);
  return NLRoutingDecisionMessage.Builder.routingDecision.setter();
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed SMTTCUPackageMutating?) -> ()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

uint64_t partial apply for closure #5 in ConversationRequestProcessor.handleRunPommesResponseMessage(withSpeechPackage:message:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return closure #5 in ConversationRequestProcessor.handleRunPommesResponseMessage(withSpeechPackage:message:)(a1, *(v1 + 16));
}

uint64_t partial apply for closure #1 in ConversationRequestProcessor.nlRoutingDecisionMessage(trpId:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return closure #1 in ConversationRequestProcessor.nlRoutingDecisionMessage(trpId:)(a1, *(v1 + 16));
}

uint64_t outlined init with take of SelectedUserAttributes?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #2 in ConversationRequestProcessor.handleRunPommesResponseMessageInternal(withTextInput:message:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return closure #2 in ConversationRequestProcessor.handleRunPommesResponseMessageInternal(withTextInput:message:)(a1, *(v1 + 16));
}

uint64_t one-time initialization function for warmUpSignals()
{
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSSet, 0x1E695DFD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DCA69C10;
  v1 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAIntentGroupIntentSignal, 0x1E69C7858);
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25SAIntentGroupIntentSignalCmMd, &_sSo25SAIntentGroupIntentSignalCmMR);
  *(v0 + 32) = v1;
  v2 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAIntentGroupSiriKitPluginSignal, 0x1E69C78B0);
  *(v0 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo32SAIntentGroupSiriKitPluginSignalCmMd, &_sSo32SAIntentGroupSiriKitPluginSignalCmMR);
  *(v0 + 64) = v2;
  v3 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAAceDomainSignal, 0x1E69C7700);
  *(v0 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17SAAceDomainSignalCmMd, &_sSo17SAAceDomainSignalCmMR);
  *(v0 + 96) = v3;
  v4 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAMPMusicPlaybackImminent, 0x1E69C78E0);
  *(v0 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25SAMPMusicPlaybackImminentCmMd, &_sSo25SAMPMusicPlaybackImminentCmMR);
  *(v0 + 128) = v4;
  v5 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SADonateRankedQueriesToPortrait, 0x1E69C77D0);
  *(v0 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo31SADonateRankedQueriesToPortraitCmMd, &_sSo31SADonateRankedQueriesToPortraitCmMR);
  *(v0 + 160) = v5;
  result = MEMORY[0x1E12A1C90](v0);
  static ConversationRequestProcessor.warmUpSignals = result;
  return result;
}

uint64_t *ConversationRequestProcessor.warmUpSignals.unsafeMutableAddressor()
{
  if (one-time initialization token for warmUpSignals != -1)
  {
    swift_once();
  }

  return &static ConversationRequestProcessor.warmUpSignals;
}

id static ConversationRequestProcessor.warmUpSignals.getter()
{
  if (one-time initialization token for warmUpSignals != -1)
  {
    swift_once();
  }

  v1 = static ConversationRequestProcessor.warmUpSignals;

  return v1;
}

uint64_t ConversationRequestProcessor.sessionState.setter(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionState;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v3));
  outlined init with take of ReferenceResolutionClientProtocol(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t ConversationRequestProcessor.sentResultCandidateSelected.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sentResultCandidateSelected;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ConversationRequestProcessor.sentResultCandidateSelected.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sentResultCandidateSelected;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ConversationRequestProcessor.didCommitExecution.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_didCommitExecution;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ConversationRequestProcessor.didCommitExecution.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_didCommitExecution;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *ConversationRequestProcessor.muxContextMessage.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_muxContextMessage);
  v2 = v1;
  return v1;
}

uint64_t ConversationRequestProcessor.entitiesCollected.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_entitiesCollected;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ConversationRequestProcessor.entitiesCollected.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_entitiesCollected;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ConversationRequestProcessor.sessionUserId.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t key path setter for ConversationRequestProcessor.userSessionState : ConversationRequestProcessor(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserSessionState();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1, v6);
  return (*(**a2 + 576))(v8);
}

uint64_t ConversationRequestProcessor.userSessionState.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_userSessionState;
  swift_beginAccess();
  v4 = type metadata accessor for UserSessionState();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

void *ConversationRequestProcessor.__allocating_init(assistantId:sessionId:sessionConfiguration:requestId:rootRequestId:name:messagePublisher:executionClient:executionOutputSubmitter:decisionMaker:preExecutionActionHandler:sessionState:instrumentationUtil:requestDispatcherServiceHelper:isFirstRequestInSession:networkAvailabilityProvider:coreTelephonyServiceProvider:rrClient:correctionsPlatformClient:sessionUserId:recentDialogTracker:userSessionState:featureChecker:isSystemAssistantExperienceEnabled:muxContextMessage:isMUXEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t *a22, uint64_t *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t *a27, char a28, void *a29, char a30)
{

  v32 = *(v30 + 48);
  v33 = *(v30 + 52);
  v34 = swift_allocObject();
  v35 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_asyncWork;
  type metadata accessor for ConcurrentTaskPool();
  v36 = swift_allocObject();
  *(v36 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v36 + 24) = v37;
  *(v34 + v35) = v36;
  v38 = v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_state;
  *v38 = 0;
  *(v38 + 1) = 0;
  v38[16] = 3;
  *(v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rraasCollectionTask) = 0;
  *(v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sentResultCandidateSelected) = 0;
  *(v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_didCommitExecution) = 0;
  *(v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_entitiesCollected) = 2;
  v39 = (v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_gestureRCID);
  *v39 = 0;
  v39[1] = 0;
  v40 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionConfiguration;
  v41 = type metadata accessor for SessionConfiguration();
  v119 = *(v41 - 8);
  v120 = v41;
  v125 = a4;
  (*(v119 + 16))(v34 + v40, a4);
  v42 = objc_opt_self();

  v43 = [v42 sharedPreferences];
  v44 = [objc_opt_self() clientWithIdentifier_];
  v45 = type metadata accessor for TrialExperimentationAssetManager();
  v46 = swift_allocObject();
  v47 = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
  *(v46 + 16) = v44;
  *(v46 + 24) = v47;
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v48 = static SelfReflectionCurareDonator.instance;
  type metadata accessor for SelfReflectionAgent();
  v49 = swift_allocObject();
  v140 = v45;
  v141 = &protocol witness table for TrialExperimentationAssetManager;
  *&v139 = v46;
  v50 = type metadata accessor for TaggingService();
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();

  *(v49 + 104) = TaggingService.init()();
  *(v49 + 144) = 0;
  *(v49 + 128) = 0u;
  *(v49 + 112) = 0u;
  *(v49 + 16) = a17;
  *(v49 + 24) = a20;
  *(v49 + 32) = v43;
  *(v49 + 40) = a28 & 1;
  outlined init with take of ReferenceResolutionClientProtocol(&v139, v49 + 48);
  swift_beginAccess();
  *(v49 + 128) = 0;
  swift_beginAccess();
  *(v49 + 136) = 0;
  swift_beginAccess();
  *(v49 + 144) = 0;
  *(v49 + 152) = 33686018;
  *(v49 + 156) = 514;
  *(v49 + 160) = 0;
  *(v49 + 168) = 1;
  *(v49 + 176) = 0;
  *(v49 + 184) = 1;
  *(v49 + 185) = 2;
  *(v49 + 192) = 0;
  *(v49 + 200) = 0;
  LOBYTE(v136) = 1;
  LOBYTE(v135[0]) = 1;
  *(v49 + 208) = 33686018;
  *(v49 + 212) = 514;
  *(v49 + 216) = 0;
  *(v49 + 224) = 1;
  *(v49 + 225) = v144[0];
  *(v49 + 228) = *(v144 + 3);
  *(v49 + 232) = 0;
  *(v49 + 240) = 1;
  *(v49 + 241) = 2;
  v53 = v142;
  *(v49 + 246) = v143;
  *(v49 + 242) = v53;
  *(v49 + 248) = 0;
  *(v49 + 256) = 0;
  *(v49 + 88) = v48;
  *(v49 + 264) = 0;
  *(v49 + 96) = 0;
  v54 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent;
  *(v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent) = v49;
  outlined init with copy of ReferenceResolutionClientProtocol(a12, v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient);
  v55 = a13[3];
  v56 = *(*a13 + 152);
  v57 = swift_unknownObjectRetain();
  LOBYTE(v49) = v56(v57);
  outlined init with copy of ReferenceResolutionClientProtocol((a13 + 4), &v139);
  v58 = *(v34 + v54);
  v59 = type metadata accessor for FeatureChecker();
  v60 = swift_allocObject();
  v114 = a29;

  *(v60 + 16) = AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags();
  v137 = &type metadata for IntelligenceFlowFeatureFlag;
  v138 = lazy protocol witness table accessor for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag();
  LOBYTE(v56) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(&v136);
  *(v60 + 17) = v56 & 1;
  type metadata accessor for ConversationOutputSubmitter();
  v61 = swift_allocObject();
  v137 = v59;
  v138 = &protocol witness table for FeatureChecker;
  *&v136 = v60;
  v62 = swift_allocObject();
  v63 = MEMORY[0x1E69E7CC0];
  *(v62 + 16) = MEMORY[0x1E69E7CC0];
  v64 = swift_allocObject();
  *(v64 + 16) = 0;
  *(v62 + 24) = v64;
  *(v61 + 16) = v62;
  *(v61 + 88) = 0;
  *(v61 + 80) = 0;
  *(v61 + 96) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_ySo13SABaseCommandCSg_s5Error_pSgt14SiriKitRuntime15MessageBusActorCYccTt0g5Tf4g_n(v63);
  *(v61 + 104) = 30000000000;
  *(v61 + 24) = v55;
  *(v61 + 72) = v49 & 1;
  swift_beginAccess();
  v65 = *(v61 + 80);
  *(v61 + 80) = a29;

  outlined init with take of ReferenceResolutionClientProtocol(&v139, v61 + 32);
  swift_beginAccess();
  v66 = *(v61 + 88);
  *(v61 + 88) = v58;

  outlined init with take of ReferenceResolutionClientProtocol(&v136, v61 + 112);
  *(v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionOutputSubmitter) = v61;
  *(v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_decisionMaker) = a14;
  *(v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_preExecutionActionHandler) = a15;
  *(v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_requestDispatcherServiceHelper) = a18;
  outlined init with copy of ReferenceResolutionClientProtocol(a16, v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionState);
  *(v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_instrumentationUtil) = a17;
  *(v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isFirstRequestInSession) = a19 & 1;
  *(v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_networkAvailabilityProvider) = a20;
  *(v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_coreTelephonyServiceProvider) = a21;
  outlined init with copy of ReferenceResolutionClientProtocol(a22, v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rrClient);
  outlined init with copy of ReferenceResolutionClientProtocol(a23, v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_correctionsPlatformClient);
  *(v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_muxContextMessage) = a29;
  v67 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionUserId;
  v68 = type metadata accessor for UserID();
  v127 = *(v68 - 8);
  v128 = v68;
  v113 = *(v127 + 16);
  v113(v34 + v67, a24);
  *(v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isMUXEnabled) = a30 & 1;
  v69 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_userSessionState;
  v70 = type metadata accessor for UserSessionState();
  v117 = *(v70 - 8);
  v118 = v70;
  (*(v117 + 16))(v34 + v69, a26);
  outlined init with copy of ReferenceResolutionClientProtocol(a27, v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_featureChecker);
  *(v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_recentDialogTracker) = a25;
  v71 = *(*a25 + 224);

  v126 = v114;

  swift_unknownObjectRetain();
  v71(a5, a6, a3);
  *(v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isSystemAssistantExperienceEnabled) = a28 & 1;
  v72 = a23;
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v73 = static DeviceContextHelper.sharedInstance;
  v74 = (v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextDonator);
  v75 = type metadata accessor for DeviceContextHelper();
  v74[3] = v75;
  v74[4] = &protocol witness table for DeviceContextHelper;
  *v74 = v73;
  type metadata accessor for ConversationBridgeProcessorDelegate();
  v76 = swift_allocObject();
  swift_weakInit();
  v77 = a18;
  *(v76 + 24) = a18;
  *(v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionBridgeProcessorDelegate) = v76;
  if ((a30 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16SiriMessageTypes6UserIDVGMd, &_ss23_ContiguousArrayStorageCy16SiriMessageTypes6UserIDVGMR);
    v115 = *(v127 + 72);
    v116 = v75;
    v84 = (*(v127 + 80) + 32) & ~*(v127 + 80);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_1DCA66060;
    (v113)(v85 + v84, a24, v128);
    swift_unknownObjectRetain();

    v112 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC16SiriMessageTypes6UserIDV_Tt0g5Tf4g_n(v85);
    swift_setDeallocating();
    v86 = *(v127 + 8);
    v86(v85 + v84, v128);
    swift_deallocClassInstance();
    v83 = a22;
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_1DCA66060;
    v80 = v112;
    (v113)(v87 + v84, a24, v128);
    v130 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC16SiriMessageTypes6UserIDV_Tt0g5Tf4g_n(v87);
    swift_setDeallocating();
    v88 = v87 + v84;
    v75 = v116;
    v72 = a23;
    v86(v88, v128);
    swift_deallocClassInstance();
    v82 = a16;
    v79 = a18;
    goto LABEL_9;
  }

  if (a29)
  {
    v78 = v126;
    v79 = a18;
    swift_unknownObjectRetain();

    v80 = specialized static ConversationMUXUtils.getAllUserIds(from:)();
    specialized static ConversationMUXUtils.getAllKnownUserIds(from:)();
    v130 = v81;

    v82 = a16;
    v83 = a22;
LABEL_9:
    v89 = type metadata accessor for MultiUserContextUpdater();
    outlined init with copy of ReferenceResolutionClientProtocol(v82, &v139);
    outlined init with copy of ReferenceResolutionClientProtocol(v83, &v136);
    outlined init with copy of ReferenceResolutionClientProtocol(v72, v135);
    ObjectType = swift_getObjectType();
    v134 = v73;

    swift_unknownObjectRetain();
    v91 = a2;

    v92 = a6;

    v93 = a8;

    v111 = ObjectType;
    v110 = v75;
    v94 = a5;
    *(&v109 + 1) = v80;
    *&v109 = a17;
    v95 = a7;
    v96 = a1;
    v97 = specialized MultiUserContextUpdater.__allocating_init(sessionState:rraasClient:correctionsPlatformClient:serviceHelper:assistantId:requestId:rootRequestId:contextDonator:instrumentationUtil:userIdSet:knownUserIdSet:)(&v139, &v136, v135, v79, a1, a2, a5, a6, a7, a8, &v134, v109, v130, v89, v110, v111, &protocol witness table for DeviceContextHelper);
    v98 = &protocol witness table for MultiUserContextUpdater;
    v77 = v79;
    goto LABEL_10;
  }

  v104 = one-time initialization token for conversationBridge;
  swift_unknownObjectRetain();

  if (v104 != -1)
  {
    swift_once();
  }

  v94 = a5;
  v105 = type metadata accessor for Logger();
  __swift_project_value_buffer(v105, static Logger.conversationBridge);
  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    *v108 = 0;
    _os_log_impl(&dword_1DC659000, v106, v107, "Cannot create an instance of ContextUpdater since MUXContextMessage is unavailable", v108, 2u);
    MEMORY[0x1E12A2F50](v108, -1, -1);
  }

  v89 = 0;
  v98 = 0;
  v97 = 0;
  v95 = a7;
  v93 = a8;
  v92 = a6;
  v96 = a1;
  v91 = a2;
LABEL_10:
  v99 = (v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextUpdater);
  *v99 = v97;
  v99[1] = 0;
  v99[2] = 0;
  v99[3] = v89;
  v99[4] = v98;
  v100 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v132 = type metadata accessor for UUID();
  v101 = *(v132 - 8);
  (*(v101 + 16))(v34 + v100, a3, v132);
  outlined init with copy of ReferenceResolutionClientProtocol(a11, (v34 + 3));
  v34[12] = v96;
  v34[13] = v91;
  v34[8] = v94;
  v34[9] = v92;
  v34[10] = v95;
  v34[11] = v93;
  v34[2] = v77;
  v102 = *(v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionBridgeProcessorDelegate);
  swift_unknownObjectRetain();

  ConversationBridgeProcessorDelegate.setExecutionProcessor(executionProcessor:)();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(a27);
  (*(v117 + 8))(a26, v118);
  (*(v127 + 8))(a24, v128);
  __swift_destroy_boxed_opaque_existential_1Tm(a23);
  __swift_destroy_boxed_opaque_existential_1Tm(a22);
  __swift_destroy_boxed_opaque_existential_1Tm(a16);
  __swift_destroy_boxed_opaque_existential_1Tm(a12);
  __swift_destroy_boxed_opaque_existential_1Tm(a11);
  (*(v119 + 8))(v125, v120);
  (*(v101 + 8))(a3, v132);
  return v34;
}

void *ConversationRequestProcessor.init(assistantId:sessionId:sessionConfiguration:requestId:rootRequestId:name:messagePublisher:executionClient:executionOutputSubmitter:decisionMaker:preExecutionActionHandler:sessionState:instrumentationUtil:requestDispatcherServiceHelper:isFirstRequestInSession:networkAvailabilityProvider:coreTelephonyServiceProvider:rrClient:correctionsPlatformClient:sessionUserId:recentDialogTracker:userSessionState:featureChecker:isSystemAssistantExperienceEnabled:muxContextMessage:isMUXEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t *a22, uint64_t *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t *a27, char a28, void *a29, char a30)
{
  v31 = v30;

  v33 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_asyncWork;
  type metadata accessor for ConcurrentTaskPool();
  v34 = swift_allocObject();
  *(v34 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v34 + 24) = v35;
  *(v31 + v33) = v34;
  v36 = v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_state;
  *v36 = 0;
  *(v36 + 1) = 0;
  v36[16] = 3;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rraasCollectionTask) = 0;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sentResultCandidateSelected) = 0;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_didCommitExecution) = 0;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_entitiesCollected) = 2;
  v37 = (v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_gestureRCID);
  *v37 = 0;
  v37[1] = 0;
  v38 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionConfiguration;
  v39 = type metadata accessor for SessionConfiguration();
  v112 = *(v39 - 8);
  v113 = v39;
  v118 = a4;
  (*(v112 + 16))(v31 + v38, a4);
  v40 = objc_opt_self();

  v41 = [v40 sharedPreferences];
  v42 = [objc_opt_self() clientWithIdentifier_];
  v43 = type metadata accessor for TrialExperimentationAssetManager();
  v44 = swift_allocObject();
  v45 = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
  *(v44 + 16) = v42;
  *(v44 + 24) = v45;
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v46 = static SelfReflectionCurareDonator.instance;
  type metadata accessor for SelfReflectionAgent();
  v47 = swift_allocObject();
  v133 = v43;
  v134 = &protocol witness table for TrialExperimentationAssetManager;
  *&v132 = v44;
  v48 = type metadata accessor for TaggingService();
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();

  *(v47 + 104) = TaggingService.init()();
  *(v47 + 144) = 0;
  *(v47 + 128) = 0u;
  *(v47 + 112) = 0u;
  *(v47 + 16) = a17;
  *(v47 + 24) = a20;
  *(v47 + 32) = v41;
  *(v47 + 40) = a28 & 1;
  outlined init with take of ReferenceResolutionClientProtocol(&v132, v47 + 48);
  swift_beginAccess();
  *(v47 + 128) = 0;
  swift_beginAccess();
  *(v47 + 136) = 0;
  swift_beginAccess();
  v51 = *(v47 + 144);
  *(v47 + 144) = 0;

  *(v47 + 152) = 33686018;
  *(v47 + 156) = 514;
  *(v47 + 160) = 0;
  *(v47 + 168) = 1;
  *(v47 + 176) = 0;
  *(v47 + 184) = 1;
  *(v47 + 185) = 2;
  *(v47 + 192) = 0;
  *(v47 + 200) = 0;
  LOBYTE(v129) = 1;
  LOBYTE(v128[0]) = 1;
  *(v47 + 208) = 33686018;
  *(v47 + 212) = 514;
  *(v47 + 216) = 0;
  *(v47 + 224) = 1;
  *(v47 + 225) = v137[0];
  *(v47 + 228) = *(v137 + 3);
  *(v47 + 232) = 0;
  *(v47 + 240) = 1;
  *(v47 + 241) = 2;
  v52 = v135;
  *(v47 + 246) = v136;
  *(v47 + 242) = v52;
  *(v47 + 248) = 0;
  *(v47 + 256) = 0;
  *(v47 + 88) = v46;
  *(v47 + 264) = 0;
  *(v47 + 96) = 0;
  v53 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent) = v47;
  outlined init with copy of ReferenceResolutionClientProtocol(a12, v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient);
  v54 = a13[3];
  v55 = *(*a13 + 152);
  v56 = swift_unknownObjectRetain();
  LOBYTE(v47) = v55(v56);
  outlined init with copy of ReferenceResolutionClientProtocol((a13 + 4), &v132);
  v57 = *(v31 + v53);
  v58 = type metadata accessor for FeatureChecker();
  v59 = swift_allocObject();
  v108 = a29;

  *(v59 + 16) = AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags();
  v130 = &type metadata for IntelligenceFlowFeatureFlag;
  v131 = lazy protocol witness table accessor for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag();
  LOBYTE(v55) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(&v129);
  *(v59 + 17) = v55 & 1;
  type metadata accessor for ConversationOutputSubmitter();
  v60 = swift_allocObject();
  v130 = v58;
  v131 = &protocol witness table for FeatureChecker;
  *&v129 = v59;
  v61 = swift_allocObject();
  v62 = MEMORY[0x1E69E7CC0];
  *(v61 + 16) = MEMORY[0x1E69E7CC0];
  v63 = swift_allocObject();
  *(v63 + 16) = 0;
  *(v61 + 24) = v63;
  *(v60 + 16) = v61;
  *(v60 + 88) = 0;
  *(v60 + 80) = 0;
  *(v60 + 96) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_ySo13SABaseCommandCSg_s5Error_pSgt14SiriKitRuntime15MessageBusActorCYccTt0g5Tf4g_n(v62);
  *(v60 + 104) = 30000000000;
  *(v60 + 24) = v54;
  *(v60 + 72) = v47 & 1;
  swift_beginAccess();
  v64 = *(v60 + 80);
  *(v60 + 80) = a29;

  outlined init with take of ReferenceResolutionClientProtocol(&v132, v60 + 32);
  swift_beginAccess();
  v65 = *(v60 + 88);
  *(v60 + 88) = v57;

  outlined init with take of ReferenceResolutionClientProtocol(&v129, v60 + 112);
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionOutputSubmitter) = v60;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_decisionMaker) = a14;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_preExecutionActionHandler) = a15;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_requestDispatcherServiceHelper) = a18;
  outlined init with copy of ReferenceResolutionClientProtocol(a16, v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionState);
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_instrumentationUtil) = a17;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isFirstRequestInSession) = a19 & 1;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_networkAvailabilityProvider) = a20;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_coreTelephonyServiceProvider) = a21;
  outlined init with copy of ReferenceResolutionClientProtocol(a22, v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rrClient);
  outlined init with copy of ReferenceResolutionClientProtocol(a23, v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_correctionsPlatformClient);
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_muxContextMessage) = a29;
  v66 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionUserId;
  v67 = type metadata accessor for UserID();
  v119 = *(v67 - 8);
  v120 = v67;
  v106 = *(v119 + 16);
  v106(v31 + v66, a24);
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isMUXEnabled) = a30 & 1;
  v68 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_userSessionState;
  v69 = type metadata accessor for UserSessionState();
  v110 = *(v69 - 8);
  v111 = v69;
  (*(v110 + 16))(v31 + v68, a26);
  outlined init with copy of ReferenceResolutionClientProtocol(a27, v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_featureChecker);
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_recentDialogTracker) = a25;
  v70 = *(*a25 + 224);

  v71 = v108;

  swift_unknownObjectRetain();
  v73 = a5;
  v72 = a6;
  v70(a5, a6, a3);
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isSystemAssistantExperienceEnabled) = a28 & 1;
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v74 = static DeviceContextHelper.sharedInstance;
  v75 = (v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextDonator);
  v107 = type metadata accessor for DeviceContextHelper();
  v75[3] = v107;
  v75[4] = &protocol witness table for DeviceContextHelper;
  *v75 = v74;
  type metadata accessor for ConversationBridgeProcessorDelegate();
  v76 = swift_allocObject();
  swift_weakInit();
  *(v76 + 24) = a18;
  *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionBridgeProcessorDelegate) = v76;
  v109 = v71;
  if ((a30 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16SiriMessageTypes6UserIDVGMd, &_ss23_ContiguousArrayStorageCy16SiriMessageTypes6UserIDVGMR);
    v105 = *(v119 + 72);
    v80 = (*(v119 + 80) + 32) & ~*(v119 + 80);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_1DCA66060;
    (v106)(v81 + v80, a24, v120);
    swift_unknownObjectRetain();

    v124 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC16SiriMessageTypes6UserIDV_Tt0g5Tf4g_n(v81);
    swift_setDeallocating();
    v79 = a18;
    v82 = *(v119 + 8);
    v82(v81 + v80, v120);
    swift_deallocClassInstance();
    v72 = a6;
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_1DCA66060;
    (v106)(v83 + v80, a24, v120);
    v121 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC16SiriMessageTypes6UserIDV_Tt0g5Tf4g_n(v83);
    swift_setDeallocating();
    v84 = v83 + v80;
    v73 = a5;
    v82(v84, v120);
    swift_deallocClassInstance();
    goto LABEL_9;
  }

  if (a29)
  {
    v77 = v71;
    swift_unknownObjectRetain();

    v124 = specialized static ConversationMUXUtils.getAllUserIds(from:)();
    specialized static ConversationMUXUtils.getAllKnownUserIds(from:)();
    v121 = v78;

    v79 = a18;
LABEL_9:
    v86 = a7;
    v85 = a8;
    v87 = type metadata accessor for MultiUserContextUpdater();
    outlined init with copy of ReferenceResolutionClientProtocol(a16, &v132);
    outlined init with copy of ReferenceResolutionClientProtocol(a22, &v129);
    outlined init with copy of ReferenceResolutionClientProtocol(a23, v128);
    ObjectType = swift_getObjectType();
    v127 = v74;

    swift_unknownObjectRetain();
    v89 = a2;

    v104 = ObjectType;
    *(&v103 + 1) = v124;
    *&v103 = a17;
    v90 = a1;
    v91 = specialized MultiUserContextUpdater.__allocating_init(sessionState:rraasClient:correctionsPlatformClient:serviceHelper:assistantId:requestId:rootRequestId:contextDonator:instrumentationUtil:userIdSet:knownUserIdSet:)(&v132, &v129, v128, v79, a1, a2, v73, v72, a7, a8, &v127, v103, v121, v87, v107, v104, &protocol witness table for DeviceContextHelper);
    v92 = &protocol witness table for MultiUserContextUpdater;
    goto LABEL_10;
  }

  v98 = one-time initialization token for conversationBridge;
  swift_unknownObjectRetain();

  if (v98 != -1)
  {
    swift_once();
  }

  v99 = type metadata accessor for Logger();
  __swift_project_value_buffer(v99, static Logger.conversationBridge);
  v100 = Logger.logObject.getter();
  v101 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    *v102 = 0;
    _os_log_impl(&dword_1DC659000, v100, v101, "Cannot create an instance of ContextUpdater since MUXContextMessage is unavailable", v102, 2u);
    MEMORY[0x1E12A2F50](v102, -1, -1);
  }

  v87 = 0;
  v92 = 0;
  v91 = 0;
  v79 = a18;
  v86 = a7;
  v85 = a8;
  v73 = a5;
  v72 = a6;
  v90 = a1;
  v89 = a2;
LABEL_10:
  v93 = (v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextUpdater);
  *v93 = v91;
  v93[1] = 0;
  v93[2] = 0;
  v93[3] = v87;
  v93[4] = v92;
  v94 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v126 = type metadata accessor for UUID();
  v95 = *(v126 - 8);
  (*(v95 + 16))(v31 + v94, a3, v126);
  outlined init with copy of ReferenceResolutionClientProtocol(a11, (v31 + 3));
  v31[12] = v90;
  v31[13] = v89;
  v31[8] = v73;
  v31[9] = v72;
  v31[10] = v86;
  v31[11] = v85;
  v31[2] = v79;
  v96 = *(v31 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionBridgeProcessorDelegate);
  swift_unknownObjectRetain();

  ConversationBridgeProcessorDelegate.setExecutionProcessor(executionProcessor:)();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(a27);
  (*(v110 + 8))(a26, v111);
  (*(v119 + 8))(a24, v120);
  __swift_destroy_boxed_opaque_existential_1Tm(a23);
  __swift_destroy_boxed_opaque_existential_1Tm(a22);
  __swift_destroy_boxed_opaque_existential_1Tm(a16);
  __swift_destroy_boxed_opaque_existential_1Tm(a12);
  __swift_destroy_boxed_opaque_existential_1Tm(a11);
  (*(v112 + 8))(v118, v113);
  (*(v95 + 8))(a3, v126);
  return v31;
}

void *ConversationRequestProcessor.__allocating_init(assistantId:sessionId:sessionConfiguration:requestId:rootRequestId:name:messagePublisher:executionClient:contextUpdater:executionOutputSubmitter:decisionMaker:preExecutionActionHandler:sessionState:instrumentationUtil:requestDispatcherServiceHelper:isFirstRequestInSession:networkAvailabilityProvider:coreTelephonyServiceProvider:rrClient:correctionsPlatformClient:sessionUserId:recentDialogTracker:userSessionState:featureChecker:isSystemAssistantExperienceEnabled:muxContextMessage:isMUXEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t *a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t *a23, uint64_t *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t *a28, char a29, void *a30, char a31)
{

  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  v34 = swift_allocObject();
  v35 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_asyncWork;
  type metadata accessor for ConcurrentTaskPool();
  v36 = swift_allocObject();
  *(v36 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v36 + 24) = v37;
  *(v34 + v35) = v36;
  v38 = v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_state;
  *v38 = 0;
  *(v38 + 1) = 0;
  v38[16] = 3;
  *(v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rraasCollectionTask) = 0;
  *(v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sentResultCandidateSelected) = 0;
  *(v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_didCommitExecution) = 0;
  *(v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_entitiesCollected) = 2;
  v39 = (v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_gestureRCID);
  *v39 = 0;
  v39[1] = 0;
  v40 = objc_opt_self();

  v41 = [v40 sharedPreferences];
  v42 = [objc_opt_self() clientWithIdentifier_];
  v43 = type metadata accessor for TrialExperimentationAssetManager();
  v44 = swift_allocObject();
  v45 = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
  *(v44 + 16) = v42;
  *(v44 + 24) = v45;
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v46 = static SelfReflectionCurareDonator.instance;
  type metadata accessor for SelfReflectionAgent();
  v47 = swift_allocObject();
  v100 = v43;
  v101 = &protocol witness table for TrialExperimentationAssetManager;
  *&v99 = v44;
  v48 = type metadata accessor for TaggingService();
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();

  *(v47 + 104) = TaggingService.init()();
  *(v47 + 144) = 0;
  *(v47 + 128) = 0u;
  *(v47 + 112) = 0u;
  *(v47 + 16) = a18;
  *(v47 + 24) = a21;
  *(v47 + 32) = v41;
  *(v47 + 40) = a29 & 1;
  outlined init with take of ReferenceResolutionClientProtocol(&v99, v47 + 48);
  swift_beginAccess();
  *(v47 + 128) = 0;
  swift_beginAccess();
  *(v47 + 136) = 0;
  swift_beginAccess();
  *(v47 + 144) = 0;
  *(v47 + 152) = 33686018;
  *(v47 + 156) = 514;
  *(v47 + 160) = 0;
  *(v47 + 168) = 1;
  *(v47 + 176) = 0;
  *(v47 + 184) = 1;
  *(v47 + 185) = 2;
  *(v47 + 192) = 0;
  *(v47 + 200) = 0;
  LOBYTE(v96) = 1;
  *(v47 + 208) = 33686018;
  *(v47 + 212) = 514;
  *(v47 + 216) = 0;
  *(v47 + 224) = 1;
  *(v47 + 225) = v104[0];
  *(v47 + 228) = *(v104 + 3);
  *(v47 + 232) = 0;
  *(v47 + 240) = 1;
  *(v47 + 241) = 2;
  v51 = v102;
  *(v47 + 246) = v103;
  *(v47 + 242) = v51;
  *(v47 + 248) = 0;
  *(v47 + 256) = 0;
  *(v47 + 88) = v46;
  *(v47 + 264) = 0;
  *(v47 + 96) = 0;
  v52 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent;
  *(v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent) = v47;
  outlined init with copy of ReferenceResolutionClientProtocol(a12, v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient);
  v53 = a14[3];
  v54 = *(*a14 + 152);
  v55 = swift_unknownObjectRetain();
  LOBYTE(v47) = v54(v55);
  outlined init with copy of ReferenceResolutionClientProtocol((a14 + 4), &v99);
  v56 = *(v34 + v52);
  v57 = type metadata accessor for FeatureChecker();
  v58 = swift_allocObject();
  v83 = a30;

  *(v58 + 16) = AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags();
  v97 = &type metadata for IntelligenceFlowFeatureFlag;
  v98 = lazy protocol witness table accessor for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag();
  v59 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(&v96);
  *(v58 + 17) = v59 & 1;
  type metadata accessor for ConversationOutputSubmitter();
  v60 = swift_allocObject();
  v97 = v57;
  v98 = &protocol witness table for FeatureChecker;
  *&v96 = v58;
  v61 = swift_allocObject();
  v62 = MEMORY[0x1E69E7CC0];
  *(v61 + 16) = MEMORY[0x1E69E7CC0];
  v63 = swift_allocObject();
  *(v63 + 16) = 0;
  *(v61 + 24) = v63;
  *(v60 + 16) = v61;
  *(v60 + 88) = 0;
  *(v60 + 80) = 0;
  *(v60 + 96) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_ySo13SABaseCommandCSg_s5Error_pSgt14SiriKitRuntime15MessageBusActorCYccTt0g5Tf4g_n(v62);
  *(v60 + 104) = 30000000000;
  *(v60 + 24) = v53;
  *(v60 + 72) = v47 & 1;
  swift_beginAccess();
  v64 = *(v60 + 80);
  *(v60 + 80) = a30;

  outlined init with take of ReferenceResolutionClientProtocol(&v99, v60 + 32);
  swift_beginAccess();
  v65 = *(v60 + 88);
  *(v60 + 88) = v56;

  outlined init with take of ReferenceResolutionClientProtocol(&v96, v60 + 112);
  *(v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionOutputSubmitter) = v60;
  *(v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_decisionMaker) = a15;
  *(v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_preExecutionActionHandler) = a16;
  *(v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_requestDispatcherServiceHelper) = a19;
  outlined init with copy of ReferenceResolutionClientProtocol(a17, v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionState);
  *(v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_instrumentationUtil) = a18;
  *(v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isFirstRequestInSession) = a20 & 1;
  *(v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_networkAvailabilityProvider) = a21;
  *(v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_coreTelephonyServiceProvider) = a22;
  outlined init with copy of ReferenceResolutionClientProtocol(a23, v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rrClient);
  outlined init with copy of ReferenceResolutionClientProtocol(a24, v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_correctionsPlatformClient);
  outlined init with copy of ReferenceResolutionClientProtocol(a13, v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextUpdater);
  *(v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_muxContextMessage) = a30;
  v66 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionUserId;
  v67 = type metadata accessor for UserID();
  v86 = *(v67 - 8);
  v87 = v67;
  (*(v86 + 16))(v34 + v66, a25);
  *(v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isMUXEnabled) = a31 & 1;
  type metadata accessor for ConversationBridgeProcessorDelegate();
  v68 = swift_allocObject();
  swift_weakInit();
  *(v68 + 24) = a19;
  *(v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionBridgeProcessorDelegate) = v68;
  v69 = one-time initialization token for sharedInstance;
  swift_unknownObjectRetain_n();

  v85 = v83;

  if (v69 != -1)
  {
    swift_once();
  }

  v70 = static DeviceContextHelper.sharedInstance;
  v71 = (v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextDonator);
  v71[3] = type metadata accessor for DeviceContextHelper();
  v71[4] = &protocol witness table for DeviceContextHelper;
  *v71 = v70;
  *(v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_recentDialogTracker) = a26;
  v72 = *(*a26 + 224);

  v72(a5, a6, a3);
  v73 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_userSessionState;
  v74 = type metadata accessor for UserSessionState();
  v75 = *(v74 - 8);
  (*(v75 + 16))(v34 + v73, a27, v74);
  outlined init with copy of ReferenceResolutionClientProtocol(a28, v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_featureChecker);
  v76 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionConfiguration;
  v84 = type metadata accessor for SessionConfiguration();
  v77 = *(v84 - 8);
  (*(v77 + 16))(v34 + v76, a4, v84);
  *(v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isSystemAssistantExperienceEnabled) = a29 & 1;
  v78 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v79 = type metadata accessor for UUID();
  v80 = *(v79 - 8);
  (*(v80 + 16))(v34 + v78, a3, v79);
  outlined init with copy of ReferenceResolutionClientProtocol(a11, (v34 + 3));
  v34[12] = a1;
  v34[13] = a2;
  v34[8] = a5;
  v34[9] = a6;
  v34[10] = a7;
  v34[11] = a8;
  v34[2] = a19;
  v81 = *(v34 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionBridgeProcessorDelegate);
  swift_unknownObjectRetain();

  ConversationBridgeProcessorDelegate.setExecutionProcessor(executionProcessor:)();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(a28);
  (*(v75 + 8))(a27, v74);
  (*(v86 + 8))(a25, v87);
  __swift_destroy_boxed_opaque_existential_1Tm(a24);
  __swift_destroy_boxed_opaque_existential_1Tm(a23);
  __swift_destroy_boxed_opaque_existential_1Tm(a17);
  __swift_destroy_boxed_opaque_existential_1Tm(a13);
  __swift_destroy_boxed_opaque_existential_1Tm(a12);
  __swift_destroy_boxed_opaque_existential_1Tm(a11);
  (*(v77 + 8))(a4, v84);
  (*(v80 + 8))(a3, v79);
  return v34;
}

void *ConversationRequestProcessor.init(assistantId:sessionId:sessionConfiguration:requestId:rootRequestId:name:messagePublisher:executionClient:contextUpdater:executionOutputSubmitter:decisionMaker:preExecutionActionHandler:sessionState:instrumentationUtil:requestDispatcherServiceHelper:isFirstRequestInSession:networkAvailabilityProvider:coreTelephonyServiceProvider:rrClient:correctionsPlatformClient:sessionUserId:recentDialogTracker:userSessionState:featureChecker:isSystemAssistantExperienceEnabled:muxContextMessage:isMUXEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t *a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t *a23, uint64_t *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t *a28, char a29, void *a30, char a31)
{
  v32 = v31;

  v33 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_asyncWork;
  type metadata accessor for ConcurrentTaskPool();
  v34 = swift_allocObject();
  *(v34 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v34 + 24) = v35;
  *(v32 + v33) = v34;
  v36 = v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_state;
  *v36 = 0;
  *(v36 + 1) = 0;
  v36[16] = 3;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rraasCollectionTask) = 0;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sentResultCandidateSelected) = 0;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_didCommitExecution) = 0;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_entitiesCollected) = 2;
  v37 = (v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_gestureRCID);
  *v37 = 0;
  v37[1] = 0;
  v38 = objc_opt_self();

  v39 = [v38 sharedPreferences];
  v40 = [objc_opt_self() clientWithIdentifier_];
  v41 = type metadata accessor for TrialExperimentationAssetManager();
  v42 = swift_allocObject();
  v43 = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
  *(v42 + 16) = v40;
  *(v42 + 24) = v43;
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v44 = static SelfReflectionCurareDonator.instance;
  type metadata accessor for SelfReflectionAgent();
  v45 = swift_allocObject();
  v99 = v41;
  v100 = &protocol witness table for TrialExperimentationAssetManager;
  *&v98 = v42;
  v46 = type metadata accessor for TaggingService();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();

  *(v45 + 104) = TaggingService.init()();
  *(v45 + 144) = 0;
  *(v45 + 128) = 0u;
  *(v45 + 112) = 0u;
  *(v45 + 16) = a18;
  *(v45 + 24) = a21;
  *(v45 + 32) = v39;
  *(v45 + 40) = a29 & 1;
  outlined init with take of ReferenceResolutionClientProtocol(&v98, v45 + 48);
  swift_beginAccess();
  *(v45 + 128) = 0;
  swift_beginAccess();
  *(v45 + 136) = 0;
  swift_beginAccess();
  v49 = *(v45 + 144);
  *(v45 + 144) = 0;

  *(v45 + 152) = 33686018;
  *(v45 + 156) = 514;
  *(v45 + 160) = 0;
  *(v45 + 168) = 1;
  *(v45 + 176) = 0;
  *(v45 + 184) = 1;
  *(v45 + 185) = 2;
  *(v45 + 192) = 0;
  *(v45 + 200) = 0;
  LOBYTE(v95) = 1;
  *(v45 + 208) = 33686018;
  *(v45 + 212) = 514;
  *(v45 + 216) = 0;
  *(v45 + 224) = 1;
  *(v45 + 225) = v103[0];
  *(v45 + 228) = *(v103 + 3);
  *(v45 + 232) = 0;
  *(v45 + 240) = 1;
  *(v45 + 241) = 2;
  v50 = v101;
  *(v45 + 246) = v102;
  *(v45 + 242) = v50;
  *(v45 + 248) = 0;
  *(v45 + 256) = 0;
  *(v45 + 88) = v44;
  *(v45 + 264) = 0;
  *(v45 + 96) = 0;
  v51 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_selfReflectionAgent) = v45;
  outlined init with copy of ReferenceResolutionClientProtocol(a12, v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionClient);
  v52 = a14[3];
  v53 = *(*a14 + 152);
  v54 = swift_unknownObjectRetain();
  LOBYTE(v45) = v53(v54);
  outlined init with copy of ReferenceResolutionClientProtocol((a14 + 4), &v98);
  v55 = *(v32 + v51);
  v56 = type metadata accessor for FeatureChecker();
  v57 = swift_allocObject();
  v81 = a30;

  *(v57 + 16) = AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags();
  v96 = &type metadata for IntelligenceFlowFeatureFlag;
  v97 = lazy protocol witness table accessor for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag();
  v58 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(&v95);
  *(v57 + 17) = v58 & 1;
  type metadata accessor for ConversationOutputSubmitter();
  v59 = swift_allocObject();
  v96 = v56;
  v97 = &protocol witness table for FeatureChecker;
  *&v95 = v57;
  v60 = swift_allocObject();
  v61 = MEMORY[0x1E69E7CC0];
  *(v60 + 16) = MEMORY[0x1E69E7CC0];
  v62 = swift_allocObject();
  *(v62 + 16) = 0;
  *(v60 + 24) = v62;
  *(v59 + 16) = v60;
  *(v59 + 88) = 0;
  *(v59 + 80) = 0;
  *(v59 + 96) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_ySo13SABaseCommandCSg_s5Error_pSgt14SiriKitRuntime15MessageBusActorCYccTt0g5Tf4g_n(v61);
  *(v59 + 104) = 30000000000;
  *(v59 + 24) = v52;
  *(v59 + 72) = v45 & 1;
  swift_beginAccess();
  v63 = *(v59 + 80);
  *(v59 + 80) = a30;

  outlined init with take of ReferenceResolutionClientProtocol(&v98, v59 + 32);
  swift_beginAccess();
  v64 = *(v59 + 88);
  *(v59 + 88) = v55;

  outlined init with take of ReferenceResolutionClientProtocol(&v95, v59 + 112);
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionOutputSubmitter) = v59;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_decisionMaker) = a15;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_preExecutionActionHandler) = a16;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_requestDispatcherServiceHelper) = a19;
  outlined init with copy of ReferenceResolutionClientProtocol(a17, v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionState);
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_instrumentationUtil) = a18;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isFirstRequestInSession) = a20 & 1;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_networkAvailabilityProvider) = a21;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_coreTelephonyServiceProvider) = a22;
  outlined init with copy of ReferenceResolutionClientProtocol(a23, v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rrClient);
  outlined init with copy of ReferenceResolutionClientProtocol(a24, v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_correctionsPlatformClient);
  outlined init with copy of ReferenceResolutionClientProtocol(a13, v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextUpdater);
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_muxContextMessage) = a30;
  v65 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionUserId;
  v66 = type metadata accessor for UserID();
  v85 = *(v66 - 8);
  v86 = v66;
  (*(v85 + 16))(v32 + v65, a25);
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isMUXEnabled) = a31 & 1;
  type metadata accessor for ConversationBridgeProcessorDelegate();
  v67 = swift_allocObject();
  swift_weakInit();
  *(v67 + 24) = a19;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionBridgeProcessorDelegate) = v67;
  v68 = one-time initialization token for sharedInstance;
  swift_unknownObjectRetain_n();

  v84 = v81;

  if (v68 != -1)
  {
    swift_once();
  }

  v69 = static DeviceContextHelper.sharedInstance;
  v70 = (v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_contextDonator);
  v70[3] = type metadata accessor for DeviceContextHelper();
  v70[4] = &protocol witness table for DeviceContextHelper;
  *v70 = v69;
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_recentDialogTracker) = a26;
  v71 = *(*a26 + 224);

  v71(a5, a6, a3);
  v72 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_userSessionState;
  v82 = type metadata accessor for UserSessionState();
  v73 = *(v82 - 8);
  (*(v73 + 16))(v32 + v72, a27, v82);
  outlined init with copy of ReferenceResolutionClientProtocol(a28, v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_featureChecker);
  v74 = OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_sessionConfiguration;
  v83 = type metadata accessor for SessionConfiguration();
  v75 = *(v83 - 8);
  (*(v75 + 16))(v32 + v74, a4, v83);
  *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isSystemAssistantExperienceEnabled) = a29 & 1;
  v76 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v77 = type metadata accessor for UUID();
  v78 = *(v77 - 8);
  (*(v78 + 16))(v32 + v76, a3, v77);
  outlined init with copy of ReferenceResolutionClientProtocol(a11, (v32 + 3));
  v32[12] = a1;
  v32[13] = a2;
  v32[8] = a5;
  v32[9] = a6;
  v32[10] = a7;
  v32[11] = a8;
  v32[2] = a19;
  v79 = *(v32 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_executionBridgeProcessorDelegate);
  swift_unknownObjectRetain();

  ConversationBridgeProcessorDelegate.setExecutionProcessor(executionProcessor:)();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(a28);
  (*(v73 + 8))(a27, v82);
  (*(v85 + 8))(a25, v86);
  __swift_destroy_boxed_opaque_existential_1Tm(a24);
  __swift_destroy_boxed_opaque_existential_1Tm(a23);
  __swift_destroy_boxed_opaque_existential_1Tm(a17);
  __swift_destroy_boxed_opaque_existential_1Tm(a13);
  __swift_destroy_boxed_opaque_existential_1Tm(a12);
  __swift_destroy_boxed_opaque_existential_1Tm(a11);
  (*(v75 + 8))(a4, v83);
  (*(v78 + 8))(a3, v77);
  return v32;
}

uint64_t ConversationRequestProcessor.pendingTurn.getter()
{
  v1 = (*(*v0 + 400))();
  if (v3 == 1)
  {
    v4 = v2;

    v2 = v4;
    v3 = 1;
    v5 = v1;
  }

  else
  {
    v5 = 0;
  }

  outlined consume of ConversationRequestProcessor.State(v1, v2, v3);
  return v5;
}

void ConversationRequestProcessor.handleStartRequest(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for InputOrigin();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RequestType();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StartSpeechDictationRequestMessage();
  if (swift_dynamicCastClass())
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.conversationBridge);
    v28 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1DC659000, v28, v15, "Ignoring dictation start request", v16, 2u);
      MEMORY[0x1E12A2F50](v16, -1, -1);
    }

    v17 = v28;
  }

  else
  {
    (*(v10 + 104))(v13, *MEMORY[0x1E69D0548], v9);
    v18 = RequestMessageBase.requestId.getter();
    v28 = v2;
    v19 = v18;
    v21 = v20;
    StartRequestMessageBase.inputOrigin.getter();
    v22 = type metadata accessor for ConversationRequestProcessorTurnState();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    v25 = swift_allocObject();
    *(v25 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_flowPluginInfo) = 0;
    *(v25 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_outputCounter) = 0;
    *(v25 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState) = xmmword_1DCA6B010;
    (*(v10 + 32))(v25 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType, v13, v9);
    v26 = (v25 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
    *v26 = v19;
    v26[1] = v21;
    *(v25 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_asrOnServer) = 0;
    (*(v5 + 32))(v25 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_inputOrigin, v8, v4);
    specialized ConversationRequestProcessor.handleStartRequestInternal(_:turnState:isTapToEdit:)(a1, v25, 0, v28);
  }
}

uint64_t static ConversationRequestProcessor.createUtteranceRREntity(utterance:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMd, &_s32SiriReferenceResolutionDataModel15GroupIdentifierVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v33 - v4;
  v6 = type metadata accessor for UsoIdentifier();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  String.md5String.getter();
  if (v11)
  {
    v34 = a1;
    v12 = type metadata accessor for UsoEntityBuilder_common_LocalisedString();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = UsoEntityBuilder_common_LocalisedString.init()();
    dispatch thunk of UsoEntityBuilder_common_LocalisedString.setStringValue(value:)();

    UsoIdentifier.init(value:appBundleId:namespace:)();
    dispatch thunk of UsoBuilder.addUsoIdentifier(usoIdentifier:)();
    (*(v7 + 8))(v10, v6);
    if (MEMORY[0x1E129CC60](v15))
    {
      v16 = type metadata accessor for GroupIdentifier();
      (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
      v17 = v34;
      RREntity.init(id:appBundleId:usoEntity:dataType:data:group:)();

      v18 = type metadata accessor for RREntity();
      return (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
    }

    else
    {

      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Logger.conversationBridge);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1DC659000, v29, v30, "#donateUtteranceForReferenceResolution: failed to create UsoEntity_common_LocalisedString entity", v31, 2u);
        MEMORY[0x1E12A2F50](v31, -1, -1);
      }

      v32 = type metadata accessor for RREntity();
      return (*(*(v32 - 8) + 56))(v34, 1, 1, v32);
    }
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.conversationBridge);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = a1;
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1DC659000, v21, v22, "#donateUtteranceForReferenceResolution: failed to get md5String from utterance string", v24, 2u);
      v25 = v24;
      a1 = v23;
      MEMORY[0x1E12A2F50](v25, -1, -1);
    }

    v26 = type metadata accessor for RREntity();
    v27 = *(*(v26 - 8) + 56);

    return v27(a1, 1, 1, v26);
  }
}

uint64_t ConversationRequestProcessor.handleStartChildTextRequestMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TextRequestType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1;
  v10 = specialized ConversationRequestProcessorTurnState.__allocating_init(startTextRequestMessage:)(v9);
  StartChildTextRequestMessage.textRequestType.getter();
  v11 = (*(v5 + 88))(v8, v4) == *MEMORY[0x1E69D06D0];
  (*(v5 + 8))(v8, v4);
  specialized ConversationRequestProcessor.handleStartRequestInternal(_:turnState:isTapToEdit:)(v9, v10, v11, v2, 0, 0);
}

uint64_t ConversationRequestProcessor.handleStartTextRequestMessage(_:)(void *a1)
{
  v2 = a1;
  v3 = specialized ConversationRequestProcessorTurnState.__allocating_init(startTextRequestMessage:)(v2);
  specialized ConversationRequestProcessor.handleStartRequestInternal(_:turnState:isTapToEdit:)(v2, v3, 0, v1);
}

uint64_t ConversationRequestProcessor.handleStartUnderstandingOnServerRequestMessage(_:)(void *a1, unsigned int *a2)
{
  v4 = v2;
  v31 = type metadata accessor for InputOrigin();
  v6 = *(v31 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RequestType();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v15, *a2, v10, v13);
  v16 = a1;
  v30 = RequestMessageBase.requestId.getter();
  v18 = v17;
  v19 = v16;
  StartRequestMessageBase.inputOrigin.getter();

  v20 = type metadata accessor for ConversationRequestProcessorTurnState();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  *(v23 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_flowPluginInfo) = 0;
  *(v23 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_outputCounter) = 0;
  *(v23 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState) = xmmword_1DCA6B010;
  (*(v11 + 32))(v23 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType, v15, v10);
  v24 = (v23 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  v25 = v31;
  *v24 = v30;
  v24[1] = v18;
  *(v23 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_asrOnServer) = 0;
  v26 = (*(v6 + 32))(v23 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_inputOrigin, v9, v25);
  v27 = (*(*v4 + 680))(v26);
  v28 = *&v4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rraasCollectionTask];
  *&v4[OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rraasCollectionTask] = v27;

  specialized ConversationRequestProcessor.handleStartRequestInternal(_:turnState:isTapToEdit:)(v19, v23, 0, v4, 0, 0);
}

uint64_t ConversationRequestProcessor.createRRaaSCollectionTask()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2 = *(*(v1 - 8) + 64);
  v3.n128_f64[0] = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v12 - v4;
  (*(*v0 + 528))(0, v3);
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = one-time initialization token for shared;

  if (v7 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = static MessageBusActor.shared;
  v9 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor);
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = v9;
  v10[4] = v0;

  return _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in ConversationRequestProcessor.createRRaaSCollectionTask(), v10);
}

uint64_t closure #1 in ConversationRequestProcessor.createRRaaSCollectionTask()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static MessageBusActor.shared;
  *(v4 + 48) = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationRequestProcessor.createRRaaSCollectionTask(), v5, 0);
}

uint64_t closure #1 in ConversationRequestProcessor.createRRaaSCollectionTask()()
{
  v1 = (*(v0 + 40) + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_rrClient);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = *(MEMORY[0x1E69D00E8] + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = closure #1 in ConversationRequestProcessor.createRRaaSCollectionTask();

  return MEMORY[0x1EEE39D58](v3, v2);
}

{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  v5 = *(v2 + 48);
  if (v0)
  {

    v6 = closure #1 in ConversationRequestProcessor.createRRaaSCollectionTask();
  }

  else
  {

    v6 = closure #1 in ConversationRequestProcessor.createRRaaSCollectionTask();
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v2 = v0[5];
  v1 = v0[6];

  (*(*v2 + 528))(1);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.conversationBridge);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DC659000, v4, v5, "RRaaS entities collected", v6, 2u);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  v7 = v0[1];

  return v7();
}

uint64_t ConversationRequestProcessor.handleStartIFRequestMessage(_:)(void *a1)
{
  v2 = v1;
  v35 = type metadata accessor for InputOrigin();
  v4 = *(v35 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RequestType();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.conversationBridge);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v34 = v7;
    v18 = v4;
    v19 = a1;
    v20 = v2;
    v21 = v17;
    v36 = v17;
    *v16 = 136315138;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x80000001DCA80550, &v36);
    _os_log_impl(&dword_1DC659000, v14, v15, "%s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    v22 = v21;
    v2 = v20;
    a1 = v19;
    v4 = v18;
    v7 = v34;
    MEMORY[0x1E12A2F50](v22, -1, -1);
    MEMORY[0x1E12A2F50](v16, -1, -1);
  }

  (*(v9 + 104))(v12, *MEMORY[0x1E69D0530], v8);
  v23 = a1;
  v24 = RequestMessageBase.requestId.getter();
  v26 = v25;
  StartIFRequestMessage.inputOrigin.getter();

  v27 = type metadata accessor for ConversationRequestProcessorTurnState();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  v30 = swift_allocObject();
  *(v30 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_flowPluginInfo) = 0;
  *(v30 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_outputCounter) = 0;
  *(v30 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState) = xmmword_1DCA6B010;
  (*(v9 + 32))(v30 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType, v12, v8);
  v31 = (v30 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  *v31 = v24;
  v31[1] = v26;
  *(v30 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_asrOnServer) = 0;
  (*(v4 + 32))(v30 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_inputOrigin, v7, v35);
  specialized ConversationRequestProcessor.handleStartRequestInternal(_:turnState:isTapToEdit:)(v23, v30, 0, v2);
}

void ConversationRequestProcessor.handleStartCandidateRequestMessage(_:)(void *a1)
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationBridge);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000026, 0x80000001DCA80570, &v10);
    *(v5 + 12) = 2112;
    *(v5 + 14) = v3;
    *v6 = v3;
    v8 = v3;
    _os_log_impl(&dword_1DC659000, oslog, v4, "%s: %@", v5, 0x16u);
    outlined destroy of ReferenceResolutionClientProtocol?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E12A2F50](v7, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }
}

void ConversationRequestProcessor.handleRequestContextMessage(_:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12RestrictionsVSgMd, &_s13SiriUtilities12RestrictionsVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v179 = &v160 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v176 = &v160 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v173 = &v160 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v160 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v172 = &v160 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v171 = &v160 - v19;
  v170 = type metadata accessor for InputOrigin();
  v184 = *(v170 - 8);
  v20 = v184[8];
  MEMORY[0x1EEE9AC00](v170);
  v168 = &v160 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v183 = &v160 - v23;
  v24 = type metadata accessor for RequestType();
  v25 = *(v24 - 8);
  v26 = v25[8];
  MEMORY[0x1EEE9AC00](v24);
  v178 = &v160 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v177 = &v160 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v175 = &v160 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v174 = &v160 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v160 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v160 - v38;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  v41 = __swift_project_value_buffer(v40, static Logger.conversationBridge);
  v42 = a1;
  v185 = v41;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v45 = 138412290;
    *(v45 + 4) = v42;
    *v46 = v42;
    v47 = v42;
    _os_log_impl(&dword_1DC659000, v43, v44, "ConversationBridge handling message: %@", v45, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v46, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v46, -1, -1);
    MEMORY[0x1E12A2F50](v45, -1, -1);
  }

  v186 = v42;

  v48 = (*v187 + 400);
  v49 = *v48;
  v50 = (*v48)();
  v53 = v50;
  if (v52 == 1)
  {
    v163 = v13;
    v167 = v51;
    v54 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
    swift_beginAccess();
    v180 = v25[2];
    v181 = v25 + 2;
    v180(v39, v53 + v54, v24);
    v55 = *MEMORY[0x1E69D0528];
    v56 = v24;
    v166 = v25[13];
    v166(v36, v55, v24);
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568]);
    v57 = dispatch thunk of static Equatable.== infix(_:_:)();
    v58 = v25[1];
    v58(v36, v56);
    v169 = v56;
    v182 = v58;
    v58(v39, v56);
    v165 = v25 + 1;
    v164 = v54;
    if (v57)
    {
      goto LABEL_8;
    }

    v59 = v169;
    v180(v39, v53 + v54, v169);
    v166(v36, *MEMORY[0x1E69D0558], v59);
    v60 = dispatch thunk of static Equatable.== infix(_:_:)();
    v61 = v36;
    v62 = v182;
    v182(v61, v59);
    v62(v39, v59);
    if (v60)
    {
LABEL_8:

      v63 = v186;

      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = v53;
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v190 = v69;
        *v67 = 138412546;
        *(v67 + 4) = v63;
        *v68 = v63;
        *(v67 + 12) = 2080;
        v70 = v169;
        v180(v39, v66 + v164, v169);
        v71 = v63;
        v72 = RequestType.rawValue.getter();
        v74 = v73;
        v182(v39, v70);
        v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, &v190);

        *(v67 + 14) = v75;
        _os_log_impl(&dword_1DC659000, v64, v65, "%@ is not supported for this requestType: %s", v67, 0x16u);
        outlined destroy of ReferenceResolutionClientProtocol?(v68, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1E12A2F50](v68, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v69);
        MEMORY[0x1E12A2F50](v69, -1, -1);
        MEMORY[0x1E12A2F50](v67, -1, -1);
      }
    }

    else
    {
      v162 = v25 + 13;
      v85 = *MEMORY[0x1E69D04C0];
      v86 = v170;
      v161 = v184[13];
      v161(v183, v85, v170);
      _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type InputOrigin and conformance InputOrigin, MEMORY[0x1E69D04D0]);
      v185 = v53;
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v190 == v188 && v191 == v189)
      {
        v87 = 1;
      }

      else
      {
        v87 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v88 = v169;
      v89 = v184[1];
      v89(v183, v86);

      if (v87)
      {
        v90 = v168;
        v161(v168, v85, v86);
        v91 = InputOrigin.aceInputOrigin.getter();
        v93 = v92;
        v89(v90, v86);
      }

      else
      {
        v91 = InputOrigin.aceInputOrigin.getter();
        v93 = v96;
      }

      v97 = type metadata accessor for RequestContextData.Builder(0);
      v98 = *(v97 + 48);
      v99 = *(v97 + 52);
      swift_allocObject();
      v100 = *RequestContextData.Builder.init()();
      v101 = (*(v100 + 1040))(v91, v93);

      RequestContextMessage.audioSource.getter();
      v102 = v171;
      AudioSource.init(aceValue:)();
      v103 = (*(*v101 + 1048))(v102);

      outlined destroy of ReferenceResolutionClientProtocol?(v102, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
      RequestContextMessage.audioDestination.getter();
      v104 = v172;
      AudioDestination.init(aceValue:)();
      v105 = (*(*v103 + 1056))(v104);

      outlined destroy of ReferenceResolutionClientProtocol?(v104, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
      RequestContextMessage.responseMode.getter();
      v106 = v173;
      ResponseMode.init(aceValue:)();
      v107 = type metadata accessor for ResponseMode();
      v108 = *(v107 - 8);
      v109 = *(v108 + 48);
      v110 = v109(v106, 1, v107);
      v111 = v187;
      if (v110 == 1)
      {
        v112 = v163;
        static ResponseMode.displayForward.getter();
        if (v109(v106, 1, v107) != 1)
        {
          outlined destroy of ReferenceResolutionClientProtocol?(v106, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
        }
      }

      else
      {
        v112 = v163;
        (*(v108 + 32))(v163, v106, v107);
      }

      v113 = 1;
      (*(v108 + 56))(v112, 0, 1, v107);
      v114 = (*(*v105 + 1064))(v112);

      outlined destroy of ReferenceResolutionClientProtocol?(v112, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
      v115 = RequestContextMessage.isEyesFree.getter();
      v116 = (*(*v114 + 1072))(v115 & 1);

      v117 = v174;
      v180(v174, v185 + v164, v88);
      v118 = v175;
      v166(v175, *MEMORY[0x1E69D0508], v88);
      _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v190 != v188 || v191 != v189)
      {
        v113 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v119 = v118;
      v120 = v182;
      v182(v119, v88);
      v120(v117, v88);

      v121 = (*(*v116 + 1080))(v113 & 1);

      v122 = RequestContextMessage.isVoiceTriggerEnabled.getter();
      v123 = (*(*v121 + 1088))(v122 & 1);

      v124 = RequestContextMessage.isTextToSpeechEnabled.getter();
      v125 = (*(*v123 + 1096))(v124 & 1);

      v126 = RequestContextMessage.bargeInModes.getter();
      v127 = (*(*v125 + 1128))(v126);

      v128 = v176;
      RequestContextMessage.approximatePreviousTTSInterval.getter();
      v129 = (*(*v127 + 1136))(v128);

      outlined destroy of ReferenceResolutionClientProtocol?(v128, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
      RequestContextMessage.deviceRestrictions.getter();
      v130 = v179;
      Restrictions.init(aceValue:)();
      v131 = type metadata accessor for Restrictions();
      v132 = 1;
      (*(*(v131 - 8) + 56))(v130, 0, 1, v131);
      v133 = (*(*v129 + 1144))(v130);

      outlined destroy of ReferenceResolutionClientProtocol?(v130, &_s13SiriUtilities12RestrictionsVSgMd, &_s13SiriUtilities12RestrictionsVSgMR);
      v134 = (*(*v133 + 1160))(v111[12], v111[13]);

      v135 = RequestContextMessage.isTriggerlessFollowup.getter();
      v136 = (*(*v134 + 1168))(v135 & 1);

      v137 = ConversationRequestProcessor.didPreviouslyFallbackToServer(forUserId:)();
      v138 = (*(*v136 + 1176))(v137 & 1);

      v139 = v185;
      v140 = v177;
      v180(v177, v185 + v164, v88);
      v141 = v178;
      v166(v178, *MEMORY[0x1E69D0548], v88);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v190 != v188 || v191 != v189)
      {
        v132 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v142 = v141;
      v143 = v182;
      v182(v142, v88);
      v143(v140, v88);

      v144 = (*(*v138 + 1184))(v132 & 1);

      v145 = RequestContextMessage.voiceTriggerEventInfo.getter();
      v146 = (*(*v144 + 1200))(v145);

      if (*(v111 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_muxContextMessage))
      {
        v147 = MUXContextMessage.isRMVEnabled.getter();
      }

      else
      {
        v147 = 0;
      }

      v148 = (*(*v146 + 1208))(v147 & 1);

      v149 = RequestContextMessage.voiceAudioSessionId.getter();
      v150 = *(*v148 + 1216);
      LOBYTE(v190) = 0;
      v151 = v150(v149);

      v152 = RequestContextMessage.isSystemApertureEnabled.getter();
      v153 = (*(*v151 + 1224))(v152);

      v154 = RequestContextMessage.isLiveActivitiesSupported.getter();
      v155 = (*(*v153 + 1232))(v154);

      v156 = RequestContextMessage.isInAmbient.getter();
      v157 = (*(*v155 + 1240))(v156);

      v159 = (*(*v157 + 1280))(v158);

      ConversationRequestProcessor.sendRequestContextData(_:turn:candidateRequestMessages:)(v159, v139, v167);
    }
  }

  else
  {
    outlined consume of ConversationRequestProcessor.State(v50, v51, v52);

    v186 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v186, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v192 = v78;
      *v77 = 136315138;
      v79 = v49();
      if (v81 > 1u)
      {
        if (v81 == 2)
        {
          outlined consume of ConversationRequestProcessor.State(v79, v80, 2);
          v82 = 0xEC00000064657472;
          v83 = 0x617473206E727574;
        }

        else
        {
          v94 = (v79 | v80) == 0;
          if (v79 | v80)
          {
            v83 = 0x6574656C706D6F63;
          }

          else
          {
            v83 = 1701602409;
          }

          if (v94)
          {
            v82 = 0xE400000000000000;
          }

          else
          {
            v82 = 0xE800000000000000;
          }
        }
      }

      else if (v81)
      {
        v82 = 0x80000001DCA80530;
        outlined consume of ConversationRequestProcessor.State(v79, v80, 1);
        v83 = 0xD00000000000001DLL;
      }

      else
      {
        v82 = 0x80000001DCA80510;
        outlined consume of ConversationRequestProcessor.State(v79, v80, 0);
        v83 = 0xD000000000000011;
      }

      v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v82, &v192);

      *(v77 + 4) = v95;
      _os_log_impl(&dword_1DC659000, v186, v76, "ConversationBridge got request context data while in unexpected state: %s", v77, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v78);
      MEMORY[0x1E12A2F50](v78, -1, -1);
      MEMORY[0x1E12A2F50](v77, -1, -1);
    }

    else
    {
      v84 = v186;
    }
  }
}

uint64_t ConversationRequestProcessor.handleASRResultCandidateMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16SiriMessageTypes11RequestTypeOGMd, &_ss23_ContiguousArrayStorageCy16SiriMessageTypes11RequestTypeOGMR);
  v7 = type metadata accessor for RequestType();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DCA66060;
  (*(v8 + 104))(v11 + v10, *MEMORY[0x1E69D0548], v7);
  v12 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isMUXEnabled);

  v13 = a1;
  specialized ConversationRequestProcessor.handleCandidateMessage(_:rcId:expectedTypes:messageToCacheIfNotInActiveTurn:shouldUpdateExistingRCState:createResultCandidateState:)(v13, v4, v6, v11, 0xF000000000000007, v12, v2, v13);

  swift_setDeallocating();
  (*(v8 + 8))(v11 + v10, v7);

  return swift_deallocClassInstance();
}

void ConversationRequestProcessor.handleMUXASRResultCandidateMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for RequestType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v61 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v56 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v56 - v12;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = __swift_project_value_buffer(v14, static Logger.conversationBridge);
  v16 = a1;
  v62 = v15;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v16;
    *v20 = v16;
    v21 = v16;
    _os_log_impl(&dword_1DC659000, v17, v18, "ConversationBridge handling message: %@", v19, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v20, -1, -1);
    MEMORY[0x1E12A2F50](v19, -1, -1);
  }

  v22 = (*(*v2 + 608))();
  if (!v22)
  {

    v62 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v62, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v66 = v29;
      *v28 = 136315138;
      v30 = (*(*v2 + 400))();
      if (v32 > 1u)
      {
        if (v32 == 2)
        {
          outlined consume of ConversationRequestProcessor.State(v30, v31, 2);
          v33 = 0xEC00000064657472;
          v34 = 0x617473206E727574;
        }

        else
        {
          v54 = (v30 | v31) == 0;
          if (v30 | v31)
          {
            v34 = 0x6574656C706D6F63;
          }

          else
          {
            v34 = 1701602409;
          }

          if (v54)
          {
            v33 = 0xE400000000000000;
          }

          else
          {
            v33 = 0xE800000000000000;
          }
        }
      }

      else if (v32)
      {
        v33 = 0x80000001DCA80530;
        outlined consume of ConversationRequestProcessor.State(v30, v31, 1);
        v34 = 0xD00000000000001DLL;
      }

      else
      {
        v33 = 0x80000001DCA80510;
        outlined consume of ConversationRequestProcessor.State(v30, v31, 0);
        v34 = 0xD000000000000011;
      }

      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v33, &v66);

      *(v28 + 4) = v55;
      _os_log_impl(&dword_1DC659000, v62, v27, "Got ASRResultCandidateMessage when in state %s: Ignoring", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x1E12A2F50](v29, -1, -1);
      MEMORY[0x1E12A2F50](v28, -1, -1);
    }

    else
    {
      v53 = v62;
    }

    return;
  }

  v23 = v22;
  v24 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
  swift_beginAccess();
  v25 = *(v5 + 16);
  v58 = v5 + 16;
  v59 = v24;
  v57 = v25;
  v25(v13, v23 + v24, v4);
  (*(v5 + 104))(v10, *MEMORY[0x1E69D0548], v4);
  _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v65[0] == v63 && v65[1] == v64)
  {
    v26 = 1;
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v35 = *(v5 + 8);
  v35(v10, v4);
  v60 = v5 + 8;
  v35(v13, v4);

  if ((v26 & 1) == 0)
  {
    v41 = v16;

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v65[0] = v62;
      *v44 = 138412546;
      *(v44 + 4) = v41;
      *v45 = v41;
      *(v44 + 12) = 2080;
      v46 = v61;
      v57(v61, v23 + v59, v4);
      v47 = v41;
      v48 = RequestType.rawValue.getter();
      v50 = v49;
      v35(v46, v4);
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, v65);

      *(v44 + 14) = v51;
      _os_log_impl(&dword_1DC659000, v42, v43, "%@ is not supported for this requestType: %s", v44, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v45, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v45, -1, -1);
      v52 = v62;
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      MEMORY[0x1E12A2F50](v52, -1, -1);
      MEMORY[0x1E12A2F50](v44, -1, -1);
    }

    return;
  }

  specialized ConversationRequestProcessor.makeResultCandidateStatesForMultiUser(from:)(v16);
  v37 = v36;
  if (v36 >> 62)
  {
    v38 = __CocoaSet.count.getter();
    if (v38)
    {
      goto LABEL_17;
    }

LABEL_40:

    return;
  }

  v38 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v38)
  {
    goto LABEL_40;
  }

LABEL_17:
  if (v38 >= 1)
  {
    v39 = 0;
    do
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v40 = MEMORY[0x1E12A1FE0](v39, v37);
      }

      else
      {
        v40 = *(v37 + 8 * v39 + 32);
      }

      ++v39;
      ConversationRequestProcessorTurnState.addResultCandidateState(_:)(v40);
      (*(*v40 + 416))(4);
    }

    while (v38 != v39);
    goto LABEL_40;
  }

  __break(1u);
}

uint64_t ConversationRequestProcessor.handleTextBasedResultCandidateMessage(_:)(void *a1)
{
  v2 = v1;
  v15 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16SiriMessageTypes11RequestTypeOGMd, &_ss23_ContiguousArrayStorageCy16SiriMessageTypes11RequestTypeOGMR);
  v6 = type metadata accessor for RequestType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DCA6B020;
  v11 = v10 + v9;
  v12 = *(v7 + 104);
  v12(v11, *MEMORY[0x1E69D0530], v6);
  v12(v11 + v8, *MEMORY[0x1E69D0558], v6);
  v12(v11 + 2 * v8, *MEMORY[0x1E69D0538], v6);

  v13 = a1;
  specialized ConversationRequestProcessor.handleCandidateMessage(_:rcId:expectedTypes:messageToCacheIfNotInActiveTurn:shouldUpdateExistingRCState:createResultCandidateState:)(v13, v15, v5, v10, 0xF000000000000007, 0, v2, v13, specialized ConversationRequestProcessor.makeResultCandidateState(from:));

  swift_setDeallocating();
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

uint64_t ConversationRequestProcessor.handleGestureBasedResultCandidateMessage(_:)(void *a1, unsigned int *a2, void (*a3)(id))
{
  ResultCandidateRequestMessageBase.resultCandidateId.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16SiriMessageTypes11RequestTypeOGMd, &_ss23_ContiguousArrayStorageCy16SiriMessageTypes11RequestTypeOGMR);
  v6 = type metadata accessor for RequestType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DCA66060;
  (*(v7 + 104))(v10 + v9, *a2, v6);

  v12 = a1;
  a3(v12);

  swift_setDeallocating();
  (*(v7 + 8))(v10 + v9, v6);

  return swift_deallocClassInstance();
}

void ConversationRequestProcessor.handleNLResultCandidateMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for RequestType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UserID();
  isa = v9[-1].isa;
  v119 = v9;
  v10 = *(isa + 8);
  MEMORY[0x1EEE9AC00](v9);
  v116 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v117 = &v112 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v112 - v16;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.conversationBridge);
  v19 = a1;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v115 = v17;
    v24 = v5;
    v25 = v23;
    *v22 = 138412290;
    *(v22 + 4) = v19;
    *v23 = v19;
    v26 = v19;
    _os_log_impl(&dword_1DC659000, v20, v21, "ConversationBridge handling message: %@", v22, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v25, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v27 = v25;
    v5 = v24;
    v17 = v115;
    MEMORY[0x1E12A2F50](v27, -1, -1);
    MEMORY[0x1E12A2F50](v22, -1, -1);
  }

  v28 = (*(*v2 + 608))();
  if (!v28)
  {

    v119 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v119, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v120 = v58;
      *v57 = 136315138;
      v59 = (*(*v2 + 400))();
      if (v61 > 1u)
      {
        if (v61 == 2)
        {
          outlined consume of ConversationRequestProcessor.State(v59, v60, 2);
          v62 = 0xEC00000064657472;
          v63 = 0x617473206E727574;
        }

        else
        {
          v87 = (v59 | v60) == 0;
          if (v59 | v60)
          {
            v63 = 0x6574656C706D6F63;
          }

          else
          {
            v63 = 1701602409;
          }

          if (v87)
          {
            v62 = 0xE400000000000000;
          }

          else
          {
            v62 = 0xE800000000000000;
          }
        }
      }

      else if (v61)
      {
        v62 = 0x80000001DCA80530;
        outlined consume of ConversationRequestProcessor.State(v59, v60, 1);
        v63 = 0xD00000000000001DLL;
      }

      else
      {
        v62 = 0x80000001DCA80510;
        outlined consume of ConversationRequestProcessor.State(v59, v60, 0);
        v63 = 0xD000000000000011;
      }

      v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v62, &v120);

      *(v57 + 4) = v88;
      _os_log_impl(&dword_1DC659000, v119, v56, "Got DirectActionResultCandidateMessage when in state %s: Ignoring", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      MEMORY[0x1E12A2F50](v58, -1, -1);
      MEMORY[0x1E12A2F50](v57, -1, -1);
      goto LABEL_43;
    }

LABEL_22:
    v75 = v119;

    return;
  }

  v29 = v28;
  if (!ConversationRequestProcessorTurnState.requestSupportedForOnDeviceExecution()())
  {
    v64 = v19;

    v119 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v119, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v121 = v68;
      *v66 = 138412546;
      *(v66 + 4) = v64;
      *v67 = v64;
      *(v66 + 12) = 2080;
      v69 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
      swift_beginAccess();
      (*(v5 + 16))(v8, v29 + v69, v4);
      v70 = v64;
      v71 = RequestType.rawValue.getter();
      v73 = v72;
      (*(v5 + 8))(v8, v4);
      v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, &v121);

      *(v66 + 14) = v74;
      _os_log_impl(&dword_1DC659000, v119, v65, "%@ is not supported for this requestType: %s", v66, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v67, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v67, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      MEMORY[0x1E12A2F50](v68, -1, -1);
      MEMORY[0x1E12A2F50](v66, -1, -1);

LABEL_43:

      return;
    }

    goto LABEL_22;
  }

  v30 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v32 = v31;
  v33 = (v29 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
  swift_beginAccess();
  v35 = *v33;
  v34 = v33[1];
  outlined copy of ConversationRequestProcessorTurnState.SpeechState(v35, v34);
  v115 = v30;
  v36 = ConversationRequestProcessorTurnState.SpeechState.getRcState(rcId:)(v30, v32, v35);
  outlined consume of ConversationRequestProcessorTurnState.SpeechState(v35, v34);
  if (!v36)
  {

    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v121 = v79;
      *v78 = 136315138;
      v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v115, v32, &v121);

      *(v78 + 4) = v80;
      _os_log_impl(&dword_1DC659000, v76, v77, "Received NL result before RC state is created for RC ID: %s ..this may happen if no ASR or text input message was received before the NL output message is received from the message bus", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v79);
      MEMORY[0x1E12A2F50](v79, -1, -1);
      MEMORY[0x1E12A2F50](v78, -1, -1);
    }

    else
    {
    }

    goto LABEL_50;
  }

  NLResultCandidateMessage.voiceIdScore.getter();
  NLResultCandidateMessage.voiceIdClassification.getter();
  static SelectedUserAttributes.defaultLowVoiceIdThreshold.getter();
  SelectedUserAttributes.init(score:classification:lowScoreThreshold:meetsUserSessionThreshold:meetsPersonalRequestThreshold:)();
  v37 = type metadata accessor for SelectedUserAttributes();
  (*(*(v37 - 8) + 56))(v17, 0, 1, v37);
  v38 = (*(*v36 + 800))(v17);
  v39 = (*(*v36 + 408))(v38);
  if (ResultCandidateProcessingStatus.rawValue.getter(v39) == 0x64656C65636E6163 && v40 == 0xE800000000000000)
  {

LABEL_28:

    v76 = Logger.logObject.getter();
    v81 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v76, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v121 = v83;
      *v82 = 136315138;
      v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v115, v32, &v121);

      *(v82 + 4) = v84;
      v85 = "RC ID:%s has already been canceled. Not handling NLResultCandidateMessage any further.";
LABEL_30:
      _os_log_impl(&dword_1DC659000, v76, v81, v85, v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v83);
      MEMORY[0x1E12A2F50](v83, -1, -1);
      v86 = v82;
LABEL_31:
      MEMORY[0x1E12A2F50](v86, -1, -1);
LABEL_49:

LABEL_50:

      return;
    }

LABEL_48:

    goto LABEL_49;
  }

  v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v42)
  {
    goto LABEL_28;
  }

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v113 = v45;
    v114 = swift_slowAlloc();
    v121 = v114;
    *v45 = 136315138;
    v46 = *(*v36 + 832);

    v112 = v43;
    v48 = v46(v47);
    v50 = v49;

    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v121);

    v53 = v112;
    v52 = v113;
    *(v113 + 1) = v51;
    v54 = v52;
    _os_log_impl(&dword_1DC659000, v53, v44, "Received NL output when RC state: %s", v52, 0xCu);
    v55 = v114;
    __swift_destroy_boxed_opaque_existential_1Tm(v114);
    MEMORY[0x1E12A2F50](v55, -1, -1);
    MEMORY[0x1E12A2F50](v54, -1, -1);
  }

  else
  {
  }

  if ((*(*v36 + 312))())
  {

    v76 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v76, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v121 = v83;
      *v82 = 136315138;
      v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v115, v32, &v121);

      *(v82 + 4) = v89;
      v85 = "Already received NL output for this RC ID: %s .. this happened because we received multiple NL outputs for the same RC ID.";
      goto LABEL_30;
    }

    goto LABEL_48;
  }

  v90 = v117;
  UserIdAwareResultCandidateMessageBase.userId.getter();
  v91 = UserID.sharedUserId.getter();
  v93 = v92;
  v117 = *(isa + 1);
  (v117)(v90, v119);
  v94 = OBJC_IVAR____TtC14SiriKitRuntime20ResultCandidateState_userId;
  if (v91 == UserID.sharedUserId.getter() && v93 == v95)
  {
  }

  else
  {
    v96 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v96 & 1) == 0)
    {
      v97 = v19;

      v76 = Logger.logObject.getter();
      v98 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v76, v98))
      {
        goto LABEL_49;
      }

      v99 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v121 = v115;
      *v99 = 136315394;
      v100 = v116;
      v114 = v76;
      UserIdAwareResultCandidateMessageBase.userId.getter();
      v101 = UserID.sharedUserId.getter();
      v103 = v102;
      v104 = v119;
      LODWORD(v113) = v98;
      v105 = v117;
      (v117)(v100, v119);
      v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v103, &v121);

      *(v99 + 4) = v106;
      *(v99 + 12) = 2080;
      (*(isa + 2))(v100, &v36[v94], v104);
      _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x1E69D08C8]);
      v107 = dispatch thunk of CustomStringConvertible.description.getter();
      v109 = v108;
      v105(v100, v104);
      v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v109, &v121);

      *(v99 + 14) = v110;
      v76 = v114;
      _os_log_impl(&dword_1DC659000, v114, v113, "Discrepency in userId. UserId received with NL RC: %s, but RCState userId: %s", v99, 0x16u);
      v111 = v115;
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v111, -1, -1);
      v86 = v99;
      goto LABEL_31;
    }
  }

  ConversationRequestProcessor.handleNLResultCandidateMessage(_:rcState:)(v19, v36);
}

void ConversationRequestProcessor.handleNLRepetitionMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for RequestType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v66 - v10;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.conversationBridge);
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  v66 = v13;

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    v18 = v66;
    *(v16 + 4) = v66;
    *v17 = v18;
    v19 = v18;
    _os_log_impl(&dword_1DC659000, v14, v15, "ConversationBridge handling message: %@", v16, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v17, -1, -1);
    MEMORY[0x1E12A2F50](v16, -1, -1);
  }

  v20 = (*(*v2 + 608))();
  if (v20)
  {
    v21 = v20;
    v22 = OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType;
    swift_beginAccess();
    (*(v5 + 16))(v11, v21 + v22, v4);
    (*(v5 + 104))(v8, *MEMORY[0x1E69D0548], v4);
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568]);
    LOBYTE(v22) = dispatch thunk of static Equatable.== infix(_:_:)();
    v23 = *(v5 + 8);
    v23(v8, v4);
    v23(v11, v4);
    if (v22)
    {
      v24 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
      v26 = v25;
      v27 = (v21 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
      swift_beginAccess();
      v28 = *v27;
      if (*v27 >> 62 == 1)
      {
        v29 = *((v28 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v30 = *((v28 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

        v31 = v29 == v24 && v30 == v26;
        if (!v31 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {

          v51 = Logger.logObject.getter();
          v61 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v51, v61))
          {
            v62 = swift_slowAlloc();
            *v62 = 0;
            _os_log_impl(&dword_1DC659000, v51, v61, "RC already selected. Not handling NLRepetitionMessage.", v62, 2u);
            MEMORY[0x1E12A2F50](v62, -1, -1);
          }

          goto LABEL_34;
        }
      }

      v33 = *v27;
      v32 = v27[1];
      outlined copy of ConversationRequestProcessorTurnState.SpeechState(v33, v32);
      v34 = ConversationRequestProcessorTurnState.SpeechState.getRcState(rcId:)(v24, v26, v33);
      outlined consume of ConversationRequestProcessorTurnState.SpeechState(v33, v32);
      if (v34)
      {
        v35 = (*(*v34 + 408))();
        if (ResultCandidateProcessingStatus.rawValue.getter(v35) == 0x64656C65636E6163 && v36 == 0xE800000000000000)
        {
        }

        else
        {
          v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v38 & 1) == 0)
          {
            v40 = (*(*v34 + 896))(v39);
            if (v40)
            {
              v41 = v40;
              if ((*(*v40 + 120))())
              {

                v42 = Logger.logObject.getter();
                v43 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v42, v43))
                {
                  v44 = swift_slowAlloc();
                  v45 = swift_slowAlloc();
                  v67 = v45;
                  *v44 = 136315138;
                  v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v67);

                  *(v44 + 4) = v46;
                  v47 = "Repetition result is already set for this RC ID: %s. This should not happen as there is only one NLRepetition message for one RC.";
LABEL_49:
                  _os_log_impl(&dword_1DC659000, v42, v43, v47, v44, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v45);
                  MEMORY[0x1E12A2F50](v45, -1, -1);
                  MEMORY[0x1E12A2F50](v44, -1, -1);
LABEL_51:

                  goto LABEL_46;
                }
              }

              else
              {
                v64 = NLRepetitionMessage.repetitionResults.getter();
                (*(*v41 + 128))(v64);

                v42 = Logger.logObject.getter();
                v43 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v42, v43))
                {
                  v44 = swift_slowAlloc();
                  v45 = swift_slowAlloc();
                  v67 = v45;
                  *v44 = 136315138;
                  v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v67);

                  *(v44 + 4) = v65;
                  v47 = "Cached NL repetition results in ResultCandidateState for RC ID: %s";
                  goto LABEL_49;
                }
              }

              goto LABEL_51;
            }

            v55 = Logger.logObject.getter();
            v56 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v55, v56))
            {
              v57 = swift_slowAlloc();
              v58 = swift_slowAlloc();
              v67 = v58;
              *v57 = 136315138;
              v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v67);

              *(v57 + 4) = v63;
              v60 = "RC ID:%s is not a speech-based RC. Not revealing ASR.";
              goto LABEL_38;
            }

            goto LABEL_44;
          }
        }

        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v67 = v58;
          *v57 = 136315138;
          v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v67);

          *(v57 + 4) = v59;
          v60 = "RC ID:%s has already been canceled. Not handling NLRepetitionMessage.";
LABEL_38:
          _os_log_impl(&dword_1DC659000, v55, v56, v60, v57, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v58);
          MEMORY[0x1E12A2F50](v58, -1, -1);
          MEMORY[0x1E12A2F50](v57, -1, -1);
LABEL_45:

LABEL_46:

          return;
        }

LABEL_44:

        goto LABEL_45;
      }

      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        v54 = "RC State missing. SpeechBasedRCState should be created before NLRepetitionMessage.";
        goto LABEL_33;
      }
    }

    else
    {
      v51 = Logger.logObject.getter();
      LOBYTE(v52) = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        v54 = "Request is not a speech request. Not handling NLRepetitionMessage";
LABEL_33:
        _os_log_impl(&dword_1DC659000, v51, v52, v54, v53, 2u);
        MEMORY[0x1E12A2F50](v53, -1, -1);
      }
    }

LABEL_34:

    return;
  }

  v66 = Logger.logObject.getter();
  v48 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v66, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_1DC659000, v66, v48, "Request not active. Not handling NLRepetitionMessage.", v49, 2u);
    MEMORY[0x1E12A2F50](v49, -1, -1);
  }

  v50 = v66;
}

void ConversationRequestProcessor.handleNLResultCandidateMessage(_:rcState:)(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMd, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a2[2];
  v15 = a2[3];
  v17 = NLResultCandidateMessageBase.userParses.getter();
  (*(*a2 + 320))(v17);
  NLResultCandidateMessageBase.responseStatusCode.getter();
  (*(*a2 + 608))(v14);
  NLResultCandidateMessageBase.languageVariantResult.getter();
  (*(*a2 + 344))(v10);
  v18 = NLResultCandidateMessageBase.responseVariantResult.getter();
  (*(*a2 + 368))(v18);
  (*(*a2 + 416))(5);
  NLResultCandidateMessageBase.fallbackParse.getter();
  (*(*a2 + 704))(v6);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.conversationBridge);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v26 = v23;
    *v22 = 136315138;
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, &v26);

    *(v22 + 4) = v24;
    _os_log_impl(&dword_1DC659000, v20, v21, "Cached NL output in ResultCandidateState for RC ID: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x1E12A2F50](v23, -1, -1);
    MEMORY[0x1E12A2F50](v22, -1, -1);
  }

  else
  {
  }

  ConversationRequestProcessor.maybeRunExecution(rcState:)(a2);
}

void ConversationRequestProcessor.fallbackToIntelligenceFlow(prescribedTool:)()
{
  v1 = v0;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationBridge);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "Trying to fallback to IntelligenceFlow", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  MEMORY[0x1EEE9AC00](v6);
  v7 = objc_allocWithZone(type metadata accessor for FallbackToIFRequestedMessage());
  v8 = FallbackToIFRequestedMessage.init(build:)();
  if (v8)
  {
    v9 = v8;
    v10 = v1[7];
    __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
    dispatch thunk of MessagePublishing.postMessage(_:)();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DC659000, v11, v12, "Posted FallbackToIFRequestedMessage to the bus", v13, 2u);
      MEMORY[0x1E12A2F50](v13, -1, -1);
    }
  }

  else
  {

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v16 = 136315138;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1[8], v1[9], &v18);
      _os_log_impl(&dword_1DC659000, v14, v15, "Failed to create FallbackToIFRequestedMessage for requestId: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1E12A2F50](v17, -1, -1);
      MEMORY[0x1E12A2F50](v16, -1, -1);
    }
  }
}

uint64_t closure #1 in ConversationRequestProcessor.fallbackToIntelligenceFlow(prescribedTool:)(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14PrescribedToolVSgMd, &_s11SiriKitFlow14PrescribedToolVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes021FallbackToIFRequestedB0C14PrescribedToolOSgMd, &_s16SiriMessageTypes021FallbackToIFRequestedB0C14PrescribedToolOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v35 - v19;
  v21 = *MEMORY[0x1E69D0448];
  v22 = type metadata accessor for MessageSource();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v20, v21, v22);
  (*(v23 + 56))(v20, 0, 1, v22);
  FallbackToIFRequestedMessage.Builder.source.setter();
  v24 = *(a2 + 12);
  v25 = *(a2 + 13);

  FallbackToIFRequestedMessage.Builder.assistantId.setter();
  v26 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v27 = type metadata accessor for UUID();
  v28 = *(v27 - 8);
  (*(v28 + 16))(v16, &a2[v26], v27);
  (*(v28 + 56))(v16, 0, 1, v27);
  FallbackToIFRequestedMessage.Builder.sessionId.setter();
  v29 = *(a2 + 8);
  v30 = *(a2 + 9);

  FallbackToIFRequestedMessage.Builder.requestId.setter();
  outlined init with copy of ReferenceResolutionClientProtocol?(a3, v8, &_s11SiriKitFlow14PrescribedToolVSgMd, &_s11SiriKitFlow14PrescribedToolVSgMR);
  v31 = type metadata accessor for PrescribedTool();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v8, 1, v31) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s11SiriKitFlow14PrescribedToolVSgMd, &_s11SiriKitFlow14PrescribedToolVSgMR);
    v33 = type metadata accessor for FallbackToIFRequestedMessage.PrescribedTool();
    (*(*(v33 - 8) + 56))(v12, 1, 1, v33);
  }

  else
  {
    PrescribedTool.messageBusRepresentation.getter(v12);
    (*(v32 + 8))(v8, v31);
  }

  return FallbackToIFRequestedMessage.Builder.prescribedTool.setter();
}

uint64_t PrescribedTool.messageBusRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PrescribedTool();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  (*(v5 + 16))(&v26 - v11, v2, v4, v10);
  static PrescribedTool.searchTool.getter();
  _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type PrescribedTool and conformance PrescribedTool, MEMORY[0x1E69CFE68]);
  v13 = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = *(v5 + 8);
  v14(v8, v4);
  if (v13)
  {
    v14(v12, v4);
    v15 = *MEMORY[0x1E69D03C8];
    v16 = type metadata accessor for FallbackToIFRequestedMessage.PrescribedTool();
    v17 = *(v16 - 8);
    (*(v17 + 104))(a1, v15, v16);
    return (*(v17 + 56))(a1, 0, 1, v16);
  }

  static PrescribedTool.generateKnowledgeResponseIntentTool.getter();
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v14(v8, v4);
  v14(v12, v4);
  if (v18)
  {
    v19 = *MEMORY[0x1E69D03C0];
    v16 = type metadata accessor for FallbackToIFRequestedMessage.PrescribedTool();
    v17 = *(v16 - 8);
    (*(v17 + 104))(a1, v19, v16);
    return (*(v17 + 56))(a1, 0, 1, v16);
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.conversationBridge);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1DC659000, v22, v23, "Unknown PrescribedTool", v24, 2u);
    MEMORY[0x1E12A2F50](v24, -1, -1);
  }

  v25 = type metadata accessor for FallbackToIFRequestedMessage.PrescribedTool();
  return (*(*(v25 - 8) + 56))(a1, 1, 1, v25);
}

void ConversationRequestProcessor.redirectToSiriX(rcId:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v93 = a3;
  v7 = type metadata accessor for SiriXRedirectContext.RedirectReason();
  v89 = *(v7 - 8);
  v90 = v7;
  v8 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v88 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SiriXRedirectContext.RedirectReason.UnableToHandleRequest();
  v86 = *(v10 - 8);
  v87 = v10;
  v11 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v85 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SiriXRedirectContext();
  v92 = *(v13 - 8);
  v14 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v94 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0A16XRedirectContextVSgMd, &_s11SiriKitFlow0A16XRedirectContextVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v83 - v18;
  v20 = type metadata accessor for SiriXRedirectContext();
  isa = v20[-1].isa;
  v96 = v20;
  v21 = *(isa + 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v91 = &v83 - v25;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Logger.conversationBridge);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = a2;
    v30 = a1;
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_1DC659000, v27, v28, "Trying to fallback to SiriX", v31, 2u);
    v32 = v31;
    a1 = v30;
    a2 = v29;
    MEMORY[0x1E12A2F50](v32, -1, -1);
  }

  v33 = (*(*v4 + 608))();
  if (v33)
  {
    v84 = v13;
    v34 = (v33 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
    swift_beginAccess();
    v36 = *v34;
    v35 = v34[1];
    outlined copy of ConversationRequestProcessorTurnState.SpeechState(v36, v35);
    v37 = ConversationRequestProcessorTurnState.SpeechState.getRcState(rcId:)(a1, a2, v36);
    v38 = a2;
    v39 = a1;
    v40 = v37;
    outlined consume of ConversationRequestProcessorTurnState.SpeechState(v36, v35);
    if (v40)
    {
      (*(*v4 + 504))(0);
      (*(*v40 + 416))(15);
      outlined init with copy of ReferenceResolutionClientProtocol?(v93, v19, &_s11SiriKitFlow0A16XRedirectContextVSgMd, &_s11SiriKitFlow0A16XRedirectContextVSgMR);
      v42 = isa;
      v41 = v96;
      if ((*(isa + 6))(v19, 1, v96) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v19, &_s11SiriKitFlow0A16XRedirectContextVSgMd, &_s11SiriKitFlow0A16XRedirectContextVSgMR);
        ConversationRequestProcessor.maybeRunExecution(rcState:)(v40);
      }

      else
      {
        v55 = v91;
        (*(v42 + 4))(v91, v19, v41);
        (*(v42 + 2))(v23, v55, v41);
        v56 = v23;
        v57 = v55;
        SiriXRedirectContext.init(from:)(v56, v94);
        v58 = v88;
        SiriXRedirectContext.reason.getter();
        v60 = v89;
        v59 = v90;
        if ((*(v89 + 88))(v58, v90) == *MEMORY[0x1E69CFA20])
        {
          (*(v60 + 96))(v58, v59);
          v61 = v85;
          v62 = v86;
          v63 = v87;
          (*(v86 + 32))(v85, v58, v87);
          v64 = SiriXRedirectContext.RedirectReason.UnableToHandleRequest.rewrittenUtterance.getter();
          v66 = v65;
          v67 = (*(v62 + 8))(v61, v63);
        }

        else
        {
          v67 = (*(v60 + 8))(v58, v59);
          v64 = 0;
          v66 = 0;
        }

        MEMORY[0x1EEE9AC00](v67);
        *(&v83 - 4) = v57;
        *(&v83 - 3) = v4;
        *(&v83 - 2) = v64;
        *(&v83 - 1) = v66;
        v69 = objc_allocWithZone(type metadata accessor for FallbackToSiriXRequestedMessage());
        v70 = FallbackToSiriXRequestedMessage.init(build:)();

        if (v70)
        {
          v71 = Logger.logObject.getter();
          v72 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            *v73 = 0;
            _os_log_impl(&dword_1DC659000, v71, v72, "Posting FallbackToSiriXRequestedMessage", v73, 2u);
            MEMORY[0x1E12A2F50](v73, -1, -1);
          }

          v74 = v4[7];
          __swift_project_boxed_opaque_existential_1(v4 + 3, v4[6]);
          dispatch thunk of MessagePublishing.postMessage(_:)();

          (*(v92 + 8))(v94, v84);
          (*(isa + 1))(v57, v96);
        }

        else
        {
          v75 = Logger.logObject.getter();
          v76 = static os_log_type_t.error.getter();
          v77 = os_log_type_enabled(v75, v76);
          v78 = isa;
          if (v77)
          {
            v79 = swift_slowAlloc();
            *v79 = 0;
            _os_log_impl(&dword_1DC659000, v75, v76, "Could not build FallbackToSiriXRequestedMessage. Missing fields?", v79, 2u);
            MEMORY[0x1E12A2F50](v79, -1, -1);
          }

          else
          {
          }

          v82 = v84;

          (*(v92 + 8))(v94, v82);
          (*(v78 + 1))(v57, v96);
        }
      }
    }

    else
    {

      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v97 = v54;
        *v53 = 136315138;
        *(v53 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v38, &v97);
        _os_log_impl(&dword_1DC659000, v51, v52, "Received redirectToSiriX before RC state is created for RC ID: %s ..this may happen if no ASR or text input message was received before the NL output message is received from the message bus", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v54);
        MEMORY[0x1E12A2F50](v54, -1, -1);
        MEMORY[0x1E12A2F50](v53, -1, -1);
      }
    }
  }

  else
  {

    v96 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v96, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v98 = v45;
      *v44 = 136315138;
      v46 = (*(*v4 + 400))();
      if (v48 > 1u)
      {
        if (v48 == 2)
        {
          outlined consume of ConversationRequestProcessor.State(v46, v47, 2);
          v49 = 0xEC00000064657472;
          v50 = 0x617473206E727574;
        }

        else
        {
          v80 = (v46 | v47) == 0;
          if (v46 | v47)
          {
            v50 = 0x6574656C706D6F63;
          }

          else
          {
            v50 = 1701602409;
          }

          if (v80)
          {
            v49 = 0xE400000000000000;
          }

          else
          {
            v49 = 0xE800000000000000;
          }
        }
      }

      else if (v48)
      {
        v49 = 0x80000001DCA80530;
        outlined consume of ConversationRequestProcessor.State(v46, v47, 1);
        v50 = 0xD00000000000001DLL;
      }

      else
      {
        v49 = 0x80000001DCA80510;
        outlined consume of ConversationRequestProcessor.State(v46, v47, 0);
        v50 = 0xD000000000000011;
      }

      v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v49, &v98);

      *(v44 + 4) = v81;
      _os_log_impl(&dword_1DC659000, v96, v43, "Got redirectToSiriX when in state %s: Ignoring", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x1E12A2F50](v45, -1, -1);
      MEMORY[0x1E12A2F50](v44, -1, -1);
    }

    else
    {
      v68 = v96;
    }
  }
}

uint64_t SiriXRedirectContext.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for SiriXRedirectContext.RedirectReason.UnableToHandleRequest();
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v33 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for SiriXRedirectContext.RedirectReason.NoMatchingTool();
  v6 = *(v36 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SiriXRedirectContext.RedirectReason();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SiriXRedirectContext.RedirectReason();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v33 - v21;
  v38 = a1;
  SiriXRedirectContext.reason.getter();
  v23 = (*(v11 + 88))(v14, v10);
  if (v23 == *MEMORY[0x1E69CFA18])
  {
    (*(v11 + 96))(v14, v10);
    v24 = v14;
    v25 = v36;
    (*(v6 + 32))(v9, v24, v36);
    SiriXRedirectContext.RedirectReason.NoMatchingTool.searchSucceeded.getter();
    SiriXRedirectContext.RedirectReason.NoMatchingTool.init(searchSucceeded:)();
    (*(v6 + 8))(v9, v25);
    v26 = MEMORY[0x1E69D0400];
LABEL_9:
    (*(v16 + 104))(v22, *v26, v15);
    (*(v16 + 16))(v19, v22, v15);
    SiriXRedirectContext.init(reason:)();
    v31 = type metadata accessor for SiriXRedirectContext();
    (*(*(v31 - 8) + 8))(v38, v31);
    return (*(v16 + 8))(v22, v15);
  }

  if (v23 == *MEMORY[0x1E69CFA20])
  {
    (*(v11 + 96))(v14, v10);
    v27 = v33;
    v28 = v34;
    v29 = v14;
    v30 = v35;
    (*(v34 + 32))(v33, v29, v35);
    SiriXRedirectContext.RedirectReason.UnableToHandleRequest.rewrittenUtterance.getter();
    SiriXRedirectContext.RedirectReason.UnableToHandleRequest.init(rewrittenUtterance:)();
    (*(v28 + 8))(v27, v30);
    v26 = MEMORY[0x1E69D0408];
    goto LABEL_9;
  }

  if (v23 == *MEMORY[0x1E69CF9F8])
  {
    v26 = MEMORY[0x1E69D03F8];
    goto LABEL_9;
  }

  if (v23 == *MEMORY[0x1E69CFA40])
  {
    v26 = MEMORY[0x1E69D0410];
    goto LABEL_9;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

{
  v45 = a2;
  v43 = 0;
  v3 = type metadata accessor for SiriXRedirectContext.RedirectReason.UnableToHandleRequest();
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SiriXRedirectContext.RedirectReason.NoMatchingTool();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SiriXRedirectContext.RedirectReason();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SiriXRedirectContext.RedirectReason();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1;
  SiriXRedirectContext.reason.getter();
  v21 = (*(v12 + 88))(v15, v11);
  if (v21 == *MEMORY[0x1E69D0400])
  {
    (*(v12 + 96))(v15, v11);
    (*(v7 + 32))(v10, v15, v6);
    v22 = type metadata accessor for SiriXRedirectContext.RedirectReason.NoMatchingTool();
    MEMORY[0x1EEE9AC00](v22);
    *(&v39 - 2) = v10;
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type SiriXRedirectContext.RedirectReason.NoMatchingTool and conformance SiriXRedirectContext.RedirectReason.NoMatchingTool, MEMORY[0x1E69CFA10]);
    static Buildable.withBuilder(_:)();
    (*(v17 + 104))(v20, *MEMORY[0x1E69CFA18], v16);
    (*(v7 + 8))(v10, v6);
    v23 = v17;
LABEL_10:
    v29 = type metadata accessor for SiriXRedirectContext();
    MEMORY[0x1EEE9AC00](v29);
    *(&v39 - 2) = v20;
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type SiriXRedirectContext and conformance SiriXRedirectContext, MEMORY[0x1E69CFA50]);
    v30 = v45;
    static Buildable.withBuilder(_:)();
    v31 = type metadata accessor for SiriXRedirectContext();
    (*(*(v31 - 8) + 8))(v44, v31);
    (*(v23 + 8))(v20, v16);
    return (*(*(v29 - 8) + 56))(v30, 0, 1, v29);
  }

  v39 = v17;
  if (v21 == *MEMORY[0x1E69D0408])
  {
    (*(v12 + 96))(v15, v11);
    v25 = v40;
    v24 = v41;
    v26 = v42;
    (*(v41 + 32))(v40, v15, v42);
    v27 = type metadata accessor for SiriXRedirectContext.RedirectReason.UnableToHandleRequest();
    MEMORY[0x1EEE9AC00](v27);
    *(&v39 - 2) = v25;
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type SiriXRedirectContext.RedirectReason.UnableToHandleRequest and conformance SiriXRedirectContext.RedirectReason.UnableToHandleRequest, MEMORY[0x1E69CFA38]);
    static Buildable.withBuilder(_:)();
    v23 = v39;
    (*(v39 + 104))(v20, *MEMORY[0x1E69CFA20], v16);
    (*(v24 + 8))(v25, v26);
    goto LABEL_10;
  }

  if (v21 == *MEMORY[0x1E69D03F8])
  {
    v28 = MEMORY[0x1E69CF9F8];
LABEL_9:
    v23 = v39;
    (*(v39 + 104))(v20, *v28, v16);
    goto LABEL_10;
  }

  if (v21 == *MEMORY[0x1E69D0410])
  {
    v28 = MEMORY[0x1E69CFA40];
    goto LABEL_9;
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logger.conversationBridge);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1DC659000, v34, v35, "SiriXRedirectContext has an invalid reason", v36, 2u);
    MEMORY[0x1E12A2F50](v36, -1, -1);
  }

  v37 = type metadata accessor for SiriXRedirectContext();
  (*(*(v37 - 8) + 8))(v44, v37);
  (*(v12 + 8))(v15, v11);
  v38 = type metadata accessor for SiriXRedirectContext();
  return (*(*(v38 - 8) + 56))(v45, 1, 1, v38);
}

uint64_t closure #1 in ConversationRequestProcessor.redirectToSiriX(rcId:context:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v42 = a4;
  v43 = a5;
  v40 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0A16XRedirectContextVSgMd, &_s16SiriMessageTypes0A16XRedirectContextVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v41 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes0B6SourceOSgMd, &_s16SiriMessageTypes0B6SourceOSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v40 - v15;
  v17 = type metadata accessor for SiriXRedirectContext();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for SiriXRedirectContext();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, v40, v17, v25);

  SiriXRedirectContext.init(from:)(v21, v27);
  v28 = *MEMORY[0x1E69D0460];
  v29 = type metadata accessor for MessageSource();
  v30 = *(v29 - 8);
  (*(v30 + 104))(v16, v28, v29);
  (*(v30 + 56))(v16, 0, 1, v29);
  FallbackToSiriXRequestedMessage.Builder.source.setter();
  v31 = *(a3 + 12);
  v32 = *(a3 + 13);

  FallbackToSiriXRequestedMessage.Builder.assistantId.setter();
  v33 = OBJC_IVAR____TtC14SiriKitRuntime32ConversationRequestProcessorBase_sessionId;
  v34 = type metadata accessor for UUID();
  v35 = *(v34 - 8);
  (*(v35 + 16))(v12, &a3[v33], v34);
  (*(v35 + 56))(v12, 0, 1, v34);
  FallbackToSiriXRequestedMessage.Builder.sessionId.setter();
  v36 = *(a3 + 8);
  v37 = *(a3 + 9);

  FallbackToSiriXRequestedMessage.Builder.requestId.setter();
  FallbackToSiriXRequestedMessage.Builder.rewrittenUtterance.setter();
  v38 = v41;
  (*(v23 + 16))(v41, v27, v22);
  (*(v23 + 56))(v38, 0, 1, v22);
  FallbackToSiriXRequestedMessage.Builder.siriXRedirectContext.setter();
  return (*(v23 + 8))(v27, v22);
}

void ConversationRequestProcessor.willRedirectToSiriX(rcId:context:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0A16XRedirectContextVSgMd, &_s11SiriKitFlow0A16XRedirectContextVSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v36 - v10;
  v12 = (*(*v3 + 608))(v9);
  if (v12)
  {
    v13 = (v12 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
    swift_beginAccess();
    v14 = *v13;
    v15 = v13[1];
    outlined copy of ConversationRequestProcessorTurnState.SpeechState(*v13, v15);
    v16 = ConversationRequestProcessorTurnState.SpeechState.getRcState(rcId:)(a1, a2, v14);
    outlined consume of ConversationRequestProcessorTurnState.SpeechState(v14, v15);
    if (v16)
    {
      v17 = type metadata accessor for SiriXRedirectContext();
      v18 = *(v17 - 8);
      (*(v18 + 16))(v11, a3, v17);
      (*(v18 + 56))(v11, 0, 1, v17);
      (*(*v16 + 752))(v11);
    }

    else
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Logger.conversationBridge);

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v38 = v32;
        *v31 = 136315138;
        *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v38);
        _os_log_impl(&dword_1DC659000, v29, v30, "Received willRedirectToSiriX before RC state is created for RC ID: %s ..this may happen if no ASR or text input message was received before the NL output message is received from the message bus", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        MEMORY[0x1E12A2F50](v32, -1, -1);
        MEMORY[0x1E12A2F50](v31, -1, -1);
      }
    }
  }

  else
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.conversationBridge);

    v37 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v39 = v22;
      *v21 = 136315138;
      v23 = (*(*v3 + 400))();
      if (v25 > 1u)
      {
        if (v25 == 2)
        {
          outlined consume of ConversationRequestProcessor.State(v23, v24, 2);
          v26 = 0xEC00000064657472;
          v27 = 0x617473206E727574;
        }

        else
        {
          v34 = (v23 | v24) == 0;
          if (v23 | v24)
          {
            v27 = 0x6574656C706D6F63;
          }

          else
          {
            v27 = 1701602409;
          }

          if (v34)
          {
            v26 = 0xE400000000000000;
          }

          else
          {
            v26 = 0xE800000000000000;
          }
        }
      }

      else if (v25)
      {
        v26 = 0x80000001DCA80530;
        outlined consume of ConversationRequestProcessor.State(v23, v24, 1);
        v27 = 0xD00000000000001DLL;
      }

      else
      {
        v26 = 0x80000001DCA80510;
        outlined consume of ConversationRequestProcessor.State(v23, v24, 0);
        v27 = 0xD000000000000011;
      }

      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v26, &v39);

      *(v21 + 4) = v35;
      _os_log_impl(&dword_1DC659000, v37, v20, "Got willRedirectToSiriX when in state %s: Ignoring", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1E12A2F50](v22, -1, -1);
      MEMORY[0x1E12A2F50](v21, -1, -1);
    }

    else
    {
      v33 = v37;
    }
  }
}

void ConversationRequestProcessor.handlePommesResultCandidateMessage(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v113 = &v108 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v114 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v108 - v11;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = __swift_project_value_buffer(v13, static Logger.conversationBridge);
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v15;
    *v19 = v15;
    v20 = v15;
    _os_log_impl(&dword_1DC659000, v16, v17, "ExecutionBridge received message: %@", v18, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v19, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v19, -1, -1);
    MEMORY[0x1E12A2F50](v18, -1, -1);
  }

  v115 = (*(*v2 + 608))();
  if (v115)
  {
    v110 = v12;
    v21 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
    v23 = v22;
    v24 = (v115 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
    swift_beginAccess();
    v25 = *v24;
    v26 = v24[1];
    if (v25 >> 62 != 1 || (*((v25 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) == v21 ? (v27 = *((v25 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) == v23) : (v27 = 0), v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      outlined copy of ConversationRequestProcessorTurnState.SpeechState(v25, v26);
      v28 = ConversationRequestProcessorTurnState.SpeechState.getRcState(rcId:)(v21, v23, v25);
      outlined consume of ConversationRequestProcessorTurnState.SpeechState(v25, v26);
      if (v28)
      {
        v108 = v7;

        v112 = v14;
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.debug.getter();

        v31 = os_log_type_enabled(v29, v30);
        v111 = v23;
        if (v31)
        {
          v32 = swift_slowAlloc();
          v109 = v21;
          v33 = v32;
          v34 = swift_slowAlloc();
          v116 = v34;
          *v33 = 136315394;
          *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v109, v23, &v116);
          *(v33 + 12) = 2080;
          v35 = v15;
          v36 = v28;
          v37 = *(*v28 + 832);

          v39 = v37(v38);
          v28 = v36;
          v40 = v39;
          v42 = v41;

          v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v116);
          v15 = v35;

          *(v33 + 14) = v43;
          _os_log_impl(&dword_1DC659000, v29, v30, "PommesResultCandidateMessage was received for RC ID %s when RC state: %s", v33, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v34, -1, -1);
          v44 = v33;
          v21 = v109;
          MEMORY[0x1E12A2F50](v44, -1, -1);
        }

        v53 = (*(*v28 + 408))();
        if (ResultCandidateProcessingStatus.rawValue.getter(v53) == 0x64656C65636E6163 && v54 == 0xE800000000000000)
        {
        }

        else
        {
          v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v56 & 1) == 0)
          {
            if ((*(*v28 + 384))(v57))
            {

              v58 = v111;

              v48 = Logger.logObject.getter();
              v59 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v48, v59))
              {
                v60 = swift_slowAlloc();
                v61 = swift_slowAlloc();
                v116 = v61;
                *v60 = 136315138;
                v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v58, &v116);

                *(v60 + 4) = v62;
                v63 = "Already received Pommes output for this RC ID: %s .. this happened because we received multiple Pommes outputs for the same RC ID.";
LABEL_33:
                _os_log_impl(&dword_1DC659000, v48, v59, v63, v60, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v61);
                MEMORY[0x1E12A2F50](v61, -1, -1);
                MEMORY[0x1E12A2F50](v60, -1, -1);
LABEL_35:

LABEL_40:

                return;
              }

              goto LABEL_34;
            }

            v67 = PommesResultCandidateMessage.pommesResponse.getter();
            v68 = v110;
            PommesResultCandidateMessage.error.getter();
            v69 = v113;
            PommesResultCandidateMessage.searchReason.getter();
            v70 = type metadata accessor for PommesSearchReason();
            (*(*(v70 - 8) + 56))(v69, 0, 1, v70);
            v71 = type metadata accessor for PommesInfo(0);
            v72 = *(v71 + 48);
            v73 = *(v71 + 52);
            v74 = swift_allocObject();
            *(v74 + 16) = v67;
            outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v68, v74 + OBJC_IVAR____TtC14SiriKitRuntime10PommesInfo_pommesError, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
            outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v69, v74 + OBJC_IVAR____TtC14SiriKitRuntime10PommesInfo_pommesSearchReason, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);
            (*(*v28 + 392))(v74);
            v75 = v111;

            v76 = Logger.logObject.getter();
            v77 = static os_log_type_t.debug.getter();

            v78 = os_log_type_enabled(v76, v77);
            v109 = v21;
            if (v78)
            {
              v79 = v15;
              v80 = swift_slowAlloc();
              v81 = swift_slowAlloc();
              v82 = v21;
              v83 = v81;
              v116 = v81;
              *v80 = 136315138;
              *(v80 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v75, &v116);
              _os_log_impl(&dword_1DC659000, v76, v77, "Cached PommesResultCandidateMessage in ResultCandidateState for RC ID: %s", v80, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v83);
              MEMORY[0x1E12A2F50](v83, -1, -1);
              v84 = v80;
              v15 = v79;
              MEMORY[0x1E12A2F50](v84, -1, -1);
            }

            v85 = v114;
            PommesResultCandidateMessage.error.getter();
            v86 = type metadata accessor for PommesError();
            v87 = (*(*(v86 - 8) + 48))(v85, 1, v86);
            outlined destroy of ReferenceResolutionClientProtocol?(v85, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
            if (v87 != 1)
            {
              v88 = v15;

              v89 = Logger.logObject.getter();
              v90 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v89, v90))
              {
                v91 = swift_slowAlloc();
                v114 = swift_slowAlloc();
                v116 = v114;
                *v91 = 136315394;
                PommesResultCandidateMessage.error.getter();
                v92 = String.init<A>(describing:)();
                v94 = v15;
                v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v93, &v116);

                *(v91 + 4) = v95;
                v15 = v94;
                *(v91 + 12) = 2080;
                *(v91 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v109, v75, &v116);
                _os_log_impl(&dword_1DC659000, v89, v90, "PommesResultCandidateMessage had error: %s for RC ID: %s", v91, 0x16u);
                v96 = v114;
                swift_arrayDestroy();
                MEMORY[0x1E12A2F50](v96, -1, -1);
                MEMORY[0x1E12A2F50](v91, -1, -1);
              }
            }

            v97 = PommesResultCandidateMessage.pommesResponse.getter();
            if (v97)
            {
              v98 = v97;
            }

            else
            {

              v98 = Logger.logObject.getter();
              v99 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v98, v99))
              {
                v100 = v15;
                v101 = swift_slowAlloc();
                v102 = swift_slowAlloc();
                v116 = v102;
                *v101 = 136315138;
                v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v109, v75, &v116);

                *(v101 + 4) = v103;
                _os_log_impl(&dword_1DC659000, v98, v99, "PommesResultCandidateMessage had unexpected nil response for RC ID: %s", v101, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v102);
                MEMORY[0x1E12A2F50](v102, -1, -1);
                v104 = v101;
                v15 = v100;
                MEMORY[0x1E12A2F50](v104, -1, -1);
LABEL_52:

                if (one-time initialization token for insightRequestSummaryLogger != -1)
                {
                  swift_once();
                }

                v105 = type metadata accessor for InsightRequestSummaryLogger();
                v106 = __swift_project_value_buffer(v105, static Logger.insightRequestSummaryLogger);
                v107 = v15;

                specialized InsightRequestSummaryLogger.emitDebug(_:)(v106, v107, v2, v28);

                ConversationRequestProcessor.maybeRunExecution(rcState:)(v28);

                return;
              }
            }

            goto LABEL_52;
          }
        }

        v64 = v111;

        v48 = Logger.logObject.getter();
        v59 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v48, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v116 = v61;
          *v60 = 136315138;
          v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v64, &v116);

          *(v60 + 4) = v65;
          v63 = "RC ID:%s has already been canceled. Not handling PommesResultCandidateMessage.";
          goto LABEL_33;
        }

LABEL_34:

        goto LABEL_35;
      }

      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v48, v49))
      {

        goto LABEL_40;
      }

      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v116 = v51;
      *v50 = 136315138;
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v116);

      *(v50 + 4) = v52;
      _os_log_impl(&dword_1DC659000, v48, v49, "Received PommesResultCandidateMessage before RC state was created for RC ID: %s. Dropping it on the floor.", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x1E12A2F50](v51, -1, -1);
    }

    else
    {

      v48 = Logger.logObject.getter();
      v66 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v48, v66))
      {
        goto LABEL_40;
      }

      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1DC659000, v48, v66, "A different RC was already selected. Not handling PommesResultCandidateMessage.", v50, 2u);
    }

    MEMORY[0x1E12A2F50](v50, -1, -1);
    goto LABEL_40;
  }

  v115 = Logger.logObject.getter();
  v45 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v115, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_1DC659000, v115, v45, "Request already canceled. Not handling PommesResultCandidateMessage.", v46, 2u);
    MEMORY[0x1E12A2F50](v46, -1, -1);
  }

  v47 = v115;
}

void ConversationRequestProcessor.handleSpeechStopDetectedMessage(_:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.conversationBridge);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    osloga = swift_slowAlloc();
    v79[0] = osloga;
    *v8 = 136315138;
    v9 = v5;
    v10 = v5;
    v11 = [v9 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v5 = v10;
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, v79);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_1DC659000, v6, v7, "ConversationBridge received SpeechStopDetectedMessage: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(osloga);
    MEMORY[0x1E12A2F50](osloga, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  if (*(v2 + OBJC_IVAR____TtC14SiriKitRuntime28ConversationRequestProcessor_isMUXEnabled))
  {
    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1DC659000, oslog, v16, "SpeechStopDetectedMessage handling was never undertaken for multi user devices as Flexible Endpoitning was deprecated before multi user on Medoc work started.", v17, 2u);
      MEMORY[0x1E12A2F50](v17, -1, -1);
    }

LABEL_8:

    return;
  }

  v18 = (*(*v2 + 608))();
  if (v18)
  {
    v19 = v18;
    v20 = (v18 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
    v22 = *(v18 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
    v21 = *(v18 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId + 8);

    if (v22 == RequestMessageBase.requestId.getter() && v21 == v23)
    {
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v25 & 1) == 0)
      {
        v26 = v5;

        oslog = Logger.logObject.getter();
        v27 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(oslog, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v79[0] = v29;
          *v28 = 136315394;
          v30 = RequestMessageBase.requestId.getter();
          v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v79);

          *(v28 + 4) = v32;
          *(v28 + 12) = 2080;
          v33 = *v20;
          v34 = v20[1];

          v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v79);

          *(v28 + 14) = v35;
          _os_log_impl(&dword_1DC659000, oslog, v27, "SpeechStopDetectedMessage request ID %s does not match this turn's: %s. Dropping it on the floor.", v28, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12A2F50](v29, -1, -1);
          MEMORY[0x1E12A2F50](v28, -1, -1);

          return;
        }

        goto LABEL_8;
      }
    }

    v40 = SpeechStopDetectedMessage.lastTRPId.getter();
    v42 = v41;
    v43 = (v19 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState);
    swift_beginAccess();
    v45 = *v43;
    v44 = v43[1];
    outlined copy of ConversationRequestProcessorTurnState.SpeechState(v45, v44);
    v46 = ConversationRequestProcessorTurnState.SpeechState.getRcState(rcId:)(v40, v42, v45);
    outlined consume of ConversationRequestProcessorTurnState.SpeechState(v45, v44);
    if (v46)
    {
      v74 = v42;
      v75 = v5;

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.debug.getter();

      v73 = v40;
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v78 = v72;
        *v49 = 136315138;
        v50 = *(*v46 + 832);

        v52 = v50(v51);
        v54 = v53;

        v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, &v78);

        *(v49 + 4) = v55;
        _os_log_impl(&dword_1DC659000, v47, v48, "SpeechStopDetectedMessage received for TRP state: %s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v72);
        MEMORY[0x1E12A2F50](v72, -1, -1);
        MEMORY[0x1E12A2F50](v49, -1, -1);
      }

      else
      {
      }

      v63 = (*(*v46 + 408))();
      if (ResultCandidateProcessingStatus.rawValue.getter(v63) == 0x64656C65636E6163 && v64 == 0xE800000000000000)
      {
      }

      else
      {
        v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v66 & 1) == 0)
        {

          (*(*v2 + 976))(v75, v19, v46);

LABEL_40:

          return;
        }
      }

      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v78 = v70;
        *v69 = 136315138;
        v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, &v78);

        *(v69 + 4) = v71;
        _os_log_impl(&dword_1DC659000, v67, v68, "TRP ID: %s already canceled. Not sending commit signal.", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v70);
        MEMORY[0x1E12A2F50](v70, -1, -1);
        MEMORY[0x1E12A2F50](v69, -1, -1);
      }

      else
      {
      }

      goto LABEL_40;
    }

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v60 = v40;
      v61 = v59;
      v78 = v59;
      *v58 = 136315138;
      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v42, &v78);

      *(v58 + 4) = v62;
      _os_log_impl(&dword_1DC659000, v56, v57, "Received SpeechStopDetectedMessage before RC state was created for TRP ID: %s. Dropping it on the floor.", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      MEMORY[0x1E12A2F50](v61, -1, -1);
      MEMORY[0x1E12A2F50](v58, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1DC659000, v36, v37, "SpeechStopDetectedMessage received for an inactive request. Will cache it for when we get a start-turn signal.", v38, 2u);
      MEMORY[0x1E12A2F50](v38, -1, -1);
    }

    v39 = (*(*v2 + 416))(v79);
    ConversationRequestProcessor.State.cacheCandidateMessage(_:)(v5 | 0x8000000000000000);
    v39(v79, 0);
  }
}