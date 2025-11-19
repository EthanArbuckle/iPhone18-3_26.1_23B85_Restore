id ParticipantPresenceCoordinator.init()()
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____WBParticipantPresenceCoordinator_participantPresenceStore;
  type metadata accessor for ParticipantPresenceStore();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = MEMORY[0x277D84F98];
  *(v3 + 112) = MEMORY[0x277D84F98];
  *(v3 + 120) = v4;
  *(v3 + 128) = v4;
  *(v3 + 136) = v4;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0u;
  *(v3 + 192) = 0xE000000000000000;
  *&v0[v2] = v3;
  v5 = OBJC_IVAR____WBParticipantPresenceCoordinator_connectionManagerStore;
  type metadata accessor for ParticipantPresenceCoordinator.ConnectionManagerStore();
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  v7 = MEMORY[0x277D84F90];
  *(v6 + 112) = 0;
  *(v6 + 120) = v7;
  *(v6 + 128) = 0;
  *(v6 + 136) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_17WebBookmarksSwift30ParticipantPresenceCoordinatorC22ConnectionManagerStoreC06SharedI0VTt0g5Tf4g_n(v7);
  *(v6 + 144) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So7CKShareC5share_Si5counttTt0g5Tf4g_n(v7);
  *(v6 + 152) = 1;
  *&v0[v5] = v6;
  v9.receiver = v0;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So7CKShareC5share_Si5counttTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo7CKShareC5share_Si5counttGMd, &_ss18_DictionaryStorageCySSSo7CKShareC5share_Si5counttGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      v9 = v7;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 16 * result);
      *v13 = v9;
      v13[1] = v8;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_17WebBookmarksSwift30ParticipantPresenceCoordinatorC22ConnectionManagerStoreC06SharedI0VTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS17WebBookmarksSwift30ParticipantPresenceCoordinatorC22ConnectionManagerStoreC06SharedI0VGMd, &_ss18_DictionaryStorageCySS17WebBookmarksSwift30ParticipantPresenceCoordinatorC22ConnectionManagerStoreC06SharedI0VGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 8)
    {
      v21 = v1;
      v5 = *(i - 2);
      v6 = *(i - 1);
      v8 = *i;
      v7 = i[1];
      v9 = i[2];
      v10 = i[3];
      v12 = i[4];
      v11 = i[5];

      v13 = v7;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v15)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v3[6] + 16 * result);
      *v16 = v5;
      v16[1] = v6;
      v17 = (v3[7] + 48 * result);
      *v17 = v8;
      v17[1] = v13;
      v17[2] = v9;
      v17[3] = v10;
      v17[4] = v12;
      v17[5] = v11;
      v18 = v3[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v3[2] = v20;
      v1 = v21 - 1;
      if (v21 == 1)
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

uint64_t outlined destroy of TaskPriority?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t @objc closure #1 in ParticipantPresenceCoordinator.activeParticipantsInTab(_:)()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[2];
  ParticipantPresenceStore.activeParticipantsInTab(_:)(v0[4], v0[5]);

  type metadata accessor for CKShareParticipant();
  lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject(&lazy protocol witness table cache variable for type CKShareParticipant and conformance NSObject, type metadata accessor for CKShareParticipant);
  isa = Set._bridgeToObjectiveC()().super.isa;

  (v2)[2](v2, isa);

  _Block_release(v2);
  v5 = v0[1];

  return v5();
}

{
  *(v0 + 48) = *(*(v0 + 16) + OBJC_IVAR____WBParticipantPresenceCoordinator_participantPresenceStore);
  return MEMORY[0x2822009F8](@objc closure #1 in ParticipantPresenceCoordinator.activeParticipantsInTab(_:));
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(a1, v5);
}

unint64_t type metadata accessor for CKShareParticipant()
{
  result = lazy cache variable for type metadata for CKShareParticipant;
  if (!lazy cache variable for type metadata for CKShareParticipant)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CKShareParticipant);
  }

  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_;

  return v7(a1);
}

uint64_t lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v7);
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return v8();
}

uint64_t _sIeghH_IeAgH_TRTA()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return _sIeghH_IeAgH_TR(v2, v3, v5);
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return v7();
}

uint64_t partial apply for @objc closure #1 in ParticipantPresenceCoordinator.activeParticipantsInTab(_:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return @objc closure #1 in ParticipantPresenceCoordinator.activeParticipantsInTab(_:)(v2, v3, v4);
}

uint64_t @objc closure #1 in ParticipantPresenceCoordinator.activeParticipantsInTab(_:)(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3[5] = v5;
  v6 = a3;

  return MEMORY[0x2822009F8](@objc closure #1 in ParticipantPresenceCoordinator.activeParticipantsInTab(_:));
}

uint64_t ParticipantPresenceStore.activeParticipantsInTab(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 136);
  v6 = *(v5 + 16);

  if (v6 && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v5 + 56) + 8 * v7);
  }

  else if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo18CKShareParticipantC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v9 = v11;
  }

  else
  {
    v9 = MEMORY[0x277D84FA0];
  }

  return v9;
}

uint64_t specialized closure #1 in CollaborationConnectionManager.startActivity()()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
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

uint64_t partial apply for closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:)(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:)(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[25] = v10;
  v8[26] = v11;
  v8[23] = a7;
  v8[24] = a8;
  v8[21] = a5;
  v8[22] = a6;
  v8[20] = a4;
  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:));
}

uint64_t closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:)()
{
  v16 = v0;
  v1 = v0[21];
  if (v1 && (v2 = v0[23]) != 0)
  {
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.tabGroup);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[22];
      v7 = v0[20];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136446466;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v1, &v15);
      *(v8 + 12) = 2082;
      *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v2, &v15);
      _os_log_impl(&dword_272D1B000, v4, v5, "Will move to tab with identifier %{public}s in shared tab group with identifier %{public}s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2743D7F00](v9, -1, -1);
      v10 = v8;
LABEL_11:
      MEMORY[0x2743D7F00](v10, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.tabGroup);
    v4 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_272D1B000, v4, v12, "Will leave all shared tab groups", v13, 2u);
      v10 = v13;
      goto LABEL_11;
    }
  }

  v0[27] = *(v0[24] + OBJC_IVAR____WBParticipantPresenceCoordinator_participantPresenceStore);

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:));
}

{
  v17 = v0;
  v1 = *(v0 + 216);
  ParticipantPresenceStore.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:)(*(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 200), *(v0 + 208), v10);
  v2 = v10[0];
  v3 = v10[1];
  *(v0 + 224) = v10[0];
  *(v0 + 232) = v3;
  v4 = v11;
  v5 = v12;
  *(v0 + 240) = v11;
  *(v0 + 248) = v5;
  v6 = v13;
  v7 = v14;
  *(v0 + 256) = v13;
  *(v0 + 264) = v7;
  v8 = v15;
  *(v0 + 272) = v15;
  *(v0 + 280) = v16;
  *(v0 + 72) = v2;
  *(v0 + 80) = v3;
  *(v0 + 88) = v4;
  *(v0 + 96) = v5;
  *(v0 + 104) = v6;
  *(v0 + 112) = v7;
  *(v0 + 120) = v8;

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:));
}

{
  v67 = v0;
  v1 = v0[36];
  if (v1)
  {
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v2 = v0[34];
    v4 = v0[30];
    v3 = v0[31];
    v6 = v0[28];
    v5 = v0[29];
    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.tabGroup);

    outlined copy of PresenceUpdateMessage.Kind(v6, v5);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();

    outlined consume of PresenceUpdateMessage.Kind(v6, v5);

    if (os_log_type_enabled(v8, v9))
    {
      v11 = v0[34];
      v10 = v0[35];
      v13 = v0[32];
      v12 = v0[33];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v64 = v15;
      *v14 = 136446466;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v1, &v64);
      *(v14 + 12) = 2082;
      v65 = 8252;
      v66 = 0xE200000000000000;
      v0[19] = v13;
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743D7240](v16);

      MEMORY[0x2743D7240](8236, 0xE200000000000000);
      MEMORY[0x2743D7240](v12, v11);
      MEMORY[0x2743D7240](15904, 0xE200000000000000);
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, &v64);

      *(v14 + 14) = v17;
      _os_log_impl(&dword_272D1B000, v8, v9, "Will send shared connection message to leave shared tab group with identifier %{public}s, generation: %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2743D7F00](v15, -1, -1);
      MEMORY[0x2743D7F00](v14, -1, -1);
    }

    v0[37] = *(v0[24] + OBJC_IVAR____WBParticipantPresenceCoordinator_connectionManagerStore);
    v18 = closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:);
  }

  else
  {
    v19 = v0[29];
    if (v19)
    {
      v20 = v0[31];
      v21 = one-time initialization token for tabGroup;
      v22 = v0[29];

      v23 = v19;
      if (v21 != -1)
      {
        swift_once();
        v58 = v0[31];
        v23 = v0[29];
      }

      v24 = v0[34];
      v25 = v0[30];
      v26 = v0[28];
      v27 = type metadata accessor for Logger();
      v0[40] = __swift_project_value_buffer(v27, static Logger.tabGroup);
      outlined copy of PresenceUpdateMessage.Kind(v26, v23);

      outlined copy of PresenceUpdateMessage.Kind(v26, v23);

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.info.getter();

      v30 = os_log_type_enabled(v28, v29);
      v31 = v0[34];
      if (v30)
      {
        v60 = v0[32];
        v61 = v0[33];
        v63 = v29;
        v32 = v0[30];
        v33 = v0[31];
        v34 = v0[28];
        v35 = v0[29];
        v36 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v64 = v62;
        *v36 = 136446722;
        *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v19, &v64);
        *(v36 + 12) = 2082;

        outlined consume of PresenceUpdateMessage.Kind(v34, v35);

        outlined consume of PresenceUpdateMessage.Kind(v34, v35);

        v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v20, &v64);

        *(v36 + 14) = v37;
        *(v36 + 22) = 2082;
        v65 = 8252;
        v66 = 0xE200000000000000;
        v0[17] = v60;
        v38 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x2743D7240](v38);

        MEMORY[0x2743D7240](8236, 0xE200000000000000);
        MEMORY[0x2743D7240](v61, v31);
        MEMORY[0x2743D7240](15904, 0xE200000000000000);
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, &v64);

        *(v36 + 24) = v39;
        _os_log_impl(&dword_272D1B000, v28, v63, "Will send shared connection message to join tab group identifier %{public}s in tab %{public}s, generation: %{public}s", v36, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x2743D7F00](v62, -1, -1);
        MEMORY[0x2743D7F00](v36, -1, -1);
      }

      else
      {
        v55 = v0[30];
        v54 = v0[31];
        v57 = v0[28];
        v56 = v0[29];

        outlined consume of PresenceUpdateMessage.Kind(v57, v56);

        outlined consume of PresenceUpdateMessage.Kind(v57, v56);
      }

      v0[41] = *(v0[24] + OBJC_IVAR____WBParticipantPresenceCoordinator_connectionManagerStore);
      v18 = closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:);
    }

    else
    {
      if (one-time initialization token for tabGroup != -1)
      {
        swift_once();
      }

      v40 = v0[34];
      v42 = v0[30];
      v41 = v0[31];
      v43 = v0[28];
      v44 = type metadata accessor for Logger();
      __swift_project_value_buffer(v44, static Logger.tabGroup);
      outlined copy of PresenceUpdateMessage.Kind(v43, 0);

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.info.getter();
      outlined consume of PresenceUpdateMessage.Kind(v43, 0);

      if (os_log_type_enabled(v45, v46))
      {
        v48 = v0[33];
        v47 = v0[34];
        v49 = v0[32];
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *v50 = 136446210;
        v64 = v51;
        v65 = 8252;
        v66 = 0xE200000000000000;
        v0[18] = v49;
        v52 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x2743D7240](v52);

        MEMORY[0x2743D7240](8236, 0xE200000000000000);
        MEMORY[0x2743D7240](v48, v47);
        MEMORY[0x2743D7240](15904, 0xE200000000000000);
        v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, &v64);

        *(v50 + 4) = v53;
        _os_log_impl(&dword_272D1B000, v45, v46, "Will send personal connection message to leave tab group, generation: %{public}s", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v51);
        MEMORY[0x2743D7F00](v51, -1, -1);
        MEMORY[0x2743D7F00](v50, -1, -1);
      }

      v0[44] = *(v0[24] + OBJC_IVAR____WBParticipantPresenceCoordinator_connectionManagerStore);
      v18 = closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:);
    }
  }

  return MEMORY[0x2822009F8](v18);
}

{
  *(v0 + 360) = *(*(v0 + 352) + 112);

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:));
}

{
  if (v0[45])
  {
    v1 = swift_task_alloc();
    v0[46] = v1;
    *v1 = v0;
    v1[1] = closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:);

    return specialized CollaborationConnectionManager.sendPresenceUpdateMessage(_:)((v0 + 9));
  }

  else
  {
    v3 = v0[34];
    v4 = v0[30];
    v5 = v0[31];
    outlined consume of PresenceUpdateMessage.Kind(v0[28], v0[29]);

    v6 = v0[1];

    return v6();
  }
}

{
  v1 = v0[37];
  v0[38] = ParticipantPresenceCoordinator.ConnectionManagerStore.sharedConnectionManager(forTabGroup:)(v0[35], v0[36]);

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:));
}

{
  v53 = v0;
  if (*(v0 + 304))
  {
    v1 = *(v0 + 272);
    *(v0 + 16) = 0u;
    v2 = *(v0 + 256);
    *(v0 + 32) = 0u;
    *(v0 + 48) = v2;
    *(v0 + 64) = v1;

    v3 = swift_task_alloc();
    *(v0 + 312) = v3;
    *v3 = v0;
    v3[1] = closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:);

    return specialized CollaborationConnectionManager.sendPresenceUpdateMessage(_:)(v0 + 16);
  }

  else
  {
    v5 = *(v0 + 232);
    if (v5)
    {
      v6 = *(v0 + 248);
      v7 = one-time initialization token for tabGroup;
      v8 = *(v0 + 232);

      v9 = v5;
      if (v7 != -1)
      {
        swift_once();
        v45 = *(v0 + 248);
        v9 = *(v0 + 232);
      }

      v10 = *(v0 + 272);
      v11 = *(v0 + 240);
      v12 = *(v0 + 224);
      v13 = type metadata accessor for Logger();
      *(v0 + 320) = __swift_project_value_buffer(v13, static Logger.tabGroup);
      outlined copy of PresenceUpdateMessage.Kind(v12, v9);

      outlined copy of PresenceUpdateMessage.Kind(v12, v9);

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.info.getter();

      v16 = os_log_type_enabled(v14, v15);
      v17 = *(v0 + 272);
      if (v16)
      {
        v46 = *(v0 + 256);
        v47 = *(v0 + 264);
        v49 = v15;
        v18 = *(v0 + 240);
        v19 = *(v0 + 248);
        v20 = *(v0 + 224);
        v21 = *(v0 + 232);
        v22 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v50 = v48;
        *v22 = 136446722;
        *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v5, &v50);
        *(v22 + 12) = 2082;

        outlined consume of PresenceUpdateMessage.Kind(v20, v21);

        outlined consume of PresenceUpdateMessage.Kind(v20, v21);

        v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v6, &v50);

        *(v22 + 14) = v23;
        *(v22 + 22) = 2082;
        v51 = 8252;
        v52 = 0xE200000000000000;
        *(v0 + 136) = v46;
        v24 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x2743D7240](v24);

        MEMORY[0x2743D7240](8236, 0xE200000000000000);
        MEMORY[0x2743D7240](v47, v17);
        MEMORY[0x2743D7240](15904, 0xE200000000000000);
        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, &v50);

        *(v22 + 24) = v25;
        _os_log_impl(&dword_272D1B000, v14, v49, "Will send shared connection message to join tab group identifier %{public}s in tab %{public}s, generation: %{public}s", v22, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x2743D7F00](v48, -1, -1);
        MEMORY[0x2743D7F00](v22, -1, -1);
      }

      else
      {
        v42 = *(v0 + 240);
        v41 = *(v0 + 248);
        v44 = *(v0 + 224);
        v43 = *(v0 + 232);

        outlined consume of PresenceUpdateMessage.Kind(v44, v43);

        outlined consume of PresenceUpdateMessage.Kind(v44, v43);
      }

      *(v0 + 328) = *(*(v0 + 192) + OBJC_IVAR____WBParticipantPresenceCoordinator_connectionManagerStore);
      v40 = closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:);
    }

    else
    {
      if (one-time initialization token for tabGroup != -1)
      {
        swift_once();
      }

      v26 = *(v0 + 272);
      v28 = *(v0 + 240);
      v27 = *(v0 + 248);
      v29 = *(v0 + 224);
      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Logger.tabGroup);
      outlined copy of PresenceUpdateMessage.Kind(v29, 0);

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.info.getter();
      outlined consume of PresenceUpdateMessage.Kind(v29, 0);

      if (os_log_type_enabled(v31, v32))
      {
        v34 = *(v0 + 264);
        v33 = *(v0 + 272);
        v35 = *(v0 + 256);
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v36 = 136446210;
        v50 = v37;
        v51 = 8252;
        v52 = 0xE200000000000000;
        *(v0 + 144) = v35;
        v38 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x2743D7240](v38);

        MEMORY[0x2743D7240](8236, 0xE200000000000000);
        MEMORY[0x2743D7240](v34, v33);
        MEMORY[0x2743D7240](15904, 0xE200000000000000);
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, &v50);

        *(v36 + 4) = v39;
        _os_log_impl(&dword_272D1B000, v31, v32, "Will send personal connection message to leave tab group, generation: %{public}s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v37);
        MEMORY[0x2743D7F00](v37, -1, -1);
        MEMORY[0x2743D7F00](v36, -1, -1);
      }

      *(v0 + 352) = *(*(v0 + 192) + OBJC_IVAR____WBParticipantPresenceCoordinator_connectionManagerStore);
      v40 = closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:);
    }

    return MEMORY[0x2822009F8](v40);
  }
}

{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 304);
  v3 = *(*v0 + 272);
  v5 = *v0;

  outlined consume of PresenceUpdateMessage.Kind(0, 0);

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:));
}

{
  v50 = v0;
  v1 = v0[29];
  if (v1)
  {
    v2 = v0[31];
    v3 = one-time initialization token for tabGroup;
    v4 = v0[29];

    v5 = v1;
    if (v3 != -1)
    {
      swift_once();
      v41 = v0[31];
      v5 = v0[29];
    }

    v6 = v0[34];
    v7 = v0[30];
    v8 = v0[28];
    v9 = type metadata accessor for Logger();
    v0[40] = __swift_project_value_buffer(v9, static Logger.tabGroup);
    outlined copy of PresenceUpdateMessage.Kind(v8, v5);

    outlined copy of PresenceUpdateMessage.Kind(v8, v5);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[34];
    if (v12)
    {
      v43 = v0[32];
      v44 = v0[33];
      v46 = v11;
      v14 = v0[30];
      v15 = v0[31];
      v16 = v0[28];
      v17 = v0[29];
      v18 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v47 = v45;
      *v18 = 136446722;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v1, &v47);
      *(v18 + 12) = 2082;

      outlined consume of PresenceUpdateMessage.Kind(v16, v17);

      outlined consume of PresenceUpdateMessage.Kind(v16, v17);

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v2, &v47);

      *(v18 + 14) = v19;
      *(v18 + 22) = 2082;
      v48 = 8252;
      v49 = 0xE200000000000000;
      v0[17] = v43;
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743D7240](v20);

      MEMORY[0x2743D7240](8236, 0xE200000000000000);
      MEMORY[0x2743D7240](v44, v13);
      MEMORY[0x2743D7240](15904, 0xE200000000000000);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v47);

      *(v18 + 24) = v21;
      _os_log_impl(&dword_272D1B000, v10, v46, "Will send shared connection message to join tab group identifier %{public}s in tab %{public}s, generation: %{public}s", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2743D7F00](v45, -1, -1);
      MEMORY[0x2743D7F00](v18, -1, -1);
    }

    else
    {
      v38 = v0[30];
      v37 = v0[31];
      v40 = v0[28];
      v39 = v0[29];

      outlined consume of PresenceUpdateMessage.Kind(v40, v39);

      outlined consume of PresenceUpdateMessage.Kind(v40, v39);
    }

    v0[41] = *(v0[24] + OBJC_IVAR____WBParticipantPresenceCoordinator_connectionManagerStore);
    v36 = closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:);
  }

  else
  {
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v22 = v0[34];
    v24 = v0[30];
    v23 = v0[31];
    v25 = v0[28];
    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.tabGroup);
    outlined copy of PresenceUpdateMessage.Kind(v25, 0);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    outlined consume of PresenceUpdateMessage.Kind(v25, 0);

    if (os_log_type_enabled(v27, v28))
    {
      v30 = v0[33];
      v29 = v0[34];
      v31 = v0[32];
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 136446210;
      v47 = v33;
      v48 = 8252;
      v49 = 0xE200000000000000;
      v0[18] = v31;
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743D7240](v34);

      MEMORY[0x2743D7240](8236, 0xE200000000000000);
      MEMORY[0x2743D7240](v30, v29);
      MEMORY[0x2743D7240](15904, 0xE200000000000000);
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v47);

      *(v32 + 4) = v35;
      _os_log_impl(&dword_272D1B000, v27, v28, "Will send personal connection message to leave tab group, generation: %{public}s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x2743D7F00](v33, -1, -1);
      MEMORY[0x2743D7F00](v32, -1, -1);
    }

    v0[44] = *(v0[24] + OBJC_IVAR____WBParticipantPresenceCoordinator_connectionManagerStore);
    v36 = closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:);
  }

  return MEMORY[0x2822009F8](v36);
}

{
  v1 = v0[41];
  v0[42] = ParticipantPresenceCoordinator.ConnectionManagerStore.sharedConnectionManager(forTabGroup:)(v0[28], v0[29]);

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:));
}

{
  v32 = v0;
  if (v0[42])
  {
    v1 = swift_task_alloc();
    v0[43] = v1;
    *v1 = v0;
    v1[1] = closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:);

    return specialized CollaborationConnectionManager.sendPresenceUpdateMessage(_:)((v0 + 9));
  }

  else
  {
    v3 = v0[40];
    v4 = v0[34];
    v6 = v0[30];
    v5 = v0[31];
    v8 = v0[28];
    v7 = v0[29];
    outlined copy of PresenceUpdateMessage.Kind(v8, v7);

    outlined copy of PresenceUpdateMessage.Kind(v8, v7);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[34];
    if (v11)
    {
      v26 = v0[32];
      v27 = v0[33];
      v14 = v0[30];
      v13 = v0[31];
      v15 = v0[28];
      v16 = v0[29];
      v17 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = v28;
      *v17 = 136446722;
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v29);

      *(v17 + 4) = v18;
      *(v17 + 12) = 2082;

      outlined consume of PresenceUpdateMessage.Kind(v15, v16);

      outlined consume of PresenceUpdateMessage.Kind(v15, v16);

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, &v29);

      *(v17 + 14) = v19;
      *(v17 + 22) = 2082;
      v30 = 8252;
      v31 = 0xE200000000000000;
      v0[16] = v26;
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743D7240](v20);

      MEMORY[0x2743D7240](8236, 0xE200000000000000);
      MEMORY[0x2743D7240](v27, v12);
      MEMORY[0x2743D7240](15904, 0xE200000000000000);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v29);

      *(v17 + 24) = v21;
      _os_log_impl(&dword_272D1B000, v9, v10, "Will send personal connection message to join tab group identifier %{public}s in tab %{public}s, generation: %{public}s", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2743D7F00](v28, -1, -1);
      MEMORY[0x2743D7F00](v17, -1, -1);
    }

    else
    {
      v23 = v0[30];
      v22 = v0[31];
      v25 = v0[28];
      v24 = v0[29];

      outlined consume of PresenceUpdateMessage.Kind(v25, v24);

      outlined consume of PresenceUpdateMessage.Kind(v25, v24);
    }

    v0[44] = *(v0[24] + OBJC_IVAR____WBParticipantPresenceCoordinator_connectionManagerStore);

    return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:));
  }
}

{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 336);
  v4 = *v0;

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:));
}

{
  v31 = v0;
  v1 = v0[40];
  v2 = v0[34];
  v4 = v0[30];
  v3 = v0[31];
  v6 = v0[28];
  v5 = v0[29];
  outlined copy of PresenceUpdateMessage.Kind(v6, v5);

  outlined copy of PresenceUpdateMessage.Kind(v6, v5);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[34];
    v10 = v0[31];
    v25 = v0[32];
    v26 = v0[33];
    v12 = v0[29];
    v11 = v0[30];
    v13 = v0[28];
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v14 = 136446722;
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v28);

    *(v14 + 4) = v15;
    *(v14 + 12) = 2082;

    outlined consume of PresenceUpdateMessage.Kind(v13, v12);

    outlined consume of PresenceUpdateMessage.Kind(v13, v12);

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v28);

    *(v14 + 14) = v16;
    *(v14 + 22) = 2082;
    v29 = 8252;
    v30 = 0xE200000000000000;
    v0[16] = v25;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743D7240](v17);

    MEMORY[0x2743D7240](8236, 0xE200000000000000);
    MEMORY[0x2743D7240](v26, v9);
    MEMORY[0x2743D7240](15904, 0xE200000000000000);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v28);

    *(v14 + 24) = v18;
    _os_log_impl(&dword_272D1B000, v7, v8, "Will send personal connection message to join tab group identifier %{public}s in tab %{public}s, generation: %{public}s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2743D7F00](v27, -1, -1);
    MEMORY[0x2743D7F00](v14, -1, -1);
  }

  else
  {
    v19 = v0[34];
    v21 = v0[30];
    v20 = v0[31];
    v23 = v0[28];
    v22 = v0[29];

    outlined consume of PresenceUpdateMessage.Kind(v23, v22);

    outlined consume of PresenceUpdateMessage.Kind(v23, v22);
  }

  v0[44] = *(v0[24] + OBJC_IVAR____WBParticipantPresenceCoordinator_connectionManagerStore);

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:));
}

{
  v1 = *v0;
  v2 = (*v0)[46];
  v3 = (*v0)[45];
  v9 = *v0;

  v4 = v1[34];
  v5 = v1[31];
  v6 = v1[30];
  outlined consume of PresenceUpdateMessage.Kind(v1[28], v1[29]);

  v7 = v9[1];

  return v7();
}

uint64_t one-time initialization function for tabGroup()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.tabGroup);
  __swift_project_value_buffer(v0, static Logger.tabGroup);
  return Logger.init(subsystem:category:)();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t ParticipantPresenceStore.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = v7[18];
  v10 = v7[22];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (!v11)
  {
    v13 = v7[19];
    v14 = v7[20];
    v15 = v7[21];
    v16 = v7[24];
    if (a4 && a2)
    {
      v7[18] = a3;
      v7[19] = a4;
      v7[20] = result;
      v7[21] = a2;
      v7[22] = v12;
      v7[23] = a5;
      v7[24] = a6;
      outlined copy of PresenceUpdateMessage.Kind(v9, v13);
    }

    else
    {
      *(v7 + 9) = 0u;
      *(v7 + 10) = 0u;
      v7[22] = v12;
      v7[23] = a5;
      v7[24] = a6;
      outlined copy of PresenceUpdateMessage.Kind(v9, v13);
    }

    outlined consume of PresenceUpdateMessage.Kind(v9, v13);

    if (v13)
    {

      outlined consume of PresenceUpdateMessage.Kind(v9, v13);

      v17 = v7[18];
      v18 = v7[19];
      if (v18)
      {
        v19 = v7[19];

        if (v9 == v17 && v13 == v18)
        {

LABEL_13:

          v17 = v7[18];
          v18 = v7[19];
          v22 = *(v7 + 10);
          v23 = *(v7 + 11);
          v21 = v7[24];
          outlined copy of PresenceUpdateMessage.Kind(v17, v18);
          v9 = 0;
          v13 = 0;
LABEL_16:

          *a7 = v17;
          *(a7 + 8) = v18;
          *(a7 + 16) = v22;
          *(a7 + 32) = v23;
          *(a7 + 48) = v21;
          *(a7 + 56) = v9;
          *(a7 + 64) = v13;
          return result;
        }

        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v20)
        {
          goto LABEL_13;
        }

        v17 = v7[18];
        v18 = v7[19];
      }

      v22 = *(v7 + 10);
      v23 = *(v7 + 11);
      v21 = v7[24];
      outlined copy of PresenceUpdateMessage.Kind(v17, v18);
      goto LABEL_16;
    }

    outlined consume of PresenceUpdateMessage.Kind(v9, 0);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t outlined copy of PresenceUpdateMessage.Kind(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined consume of PresenceUpdateMessage.Kind(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
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
  __swift_destroy_boxed_opaque_existential_1(v11);
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

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_272D1F2A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_272D1F2FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_272D1F35C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_272D1F3B8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_272D1F400()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_272D1F458()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_272D1F4D8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_272D1F514()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_272D1F60C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  *a2 = specialized CKShareGroupSessionProvider.id.getter();
  a2[1] = v4;
}

uint64_t sub_272D1F64C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return CKShareGroupSessionProvider.id.setter(v2, v3);
}

__n128 sub_272D1F698(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

id sub_272D1F758@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = specialized CKShareGroupSessionProvider.share.getter();
  *a2 = v4;

  return v4;
}

void sub_272D1F794(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  specialized CKShareGroupSessionProvider.share.setter(v3);
}

uint64_t AsyncBufferedQueue.__allocating_init(bufferingPolicy:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 48);
  v5 = *(v1 + 52);
  swift_allocObject();
  v6 = specialized AsyncBufferedQueue.init(bufferingPolicy:)(a1);
  v7 = *(v2 + 80);
  v8 = type metadata accessor for AsyncStream.Continuation.BufferingPolicy();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v6;
}

uint64_t AsyncBufferedQueue.init(bufferingPolicy:)(uint64_t a1)
{
  v3 = *v1;
  v4 = specialized AsyncBufferedQueue.init(bufferingPolicy:)(a1);
  v5 = *(v3 + 80);
  v6 = type metadata accessor for AsyncStream.Continuation.BufferingPolicy();
  (*(*(v6 - 8) + 8))(a1, v6);
  return v4;
}

uint64_t closure #1 in AsyncBufferedQueue.init(bufferingPolicy:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsyncStream.Continuation();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 8))(a2, v5);
  v8 = *(v4 - 8);
  (*(v8 + 16))(a2, a1, v4);
  v6 = *(v8 + 56);

  return v6(a2, 0, 1, v4);
}

uint64_t AsyncBufferedQueue.enqueue(_:)(uint64_t a1)
{
  v2 = *(*(*(*v1 + 80) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v4 = *(v3 + 88);
  (*(v5 + 16))(&v8 - v6);
  type metadata accessor for AsyncStream.Continuation();
  return AsyncStream.Continuation.yield(_:)();
}

Swift::Void __swiftcall AsyncBufferedQueue.finish()()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  type metadata accessor for AsyncStream.Continuation();
  AsyncStream.Continuation.finish()();
}

uint64_t AsyncBufferedQueue.makeAsyncIterator()()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  type metadata accessor for AsyncStream();
  return AsyncStream.makeAsyncIterator()();
}

uint64_t *AsyncBufferedQueue.deinit()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 88);
  v4 = *(v2 + 80);
  v5 = type metadata accessor for AsyncStream.Continuation();
  AsyncStream.Continuation.finish()();
  (*(*(v5 - 8) + 8))(v1 + *(*v1 + 88), v5);
  v6 = *(*v1 + 96);
  v7 = type metadata accessor for AsyncStream();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);
  return v1;
}

uint64_t AsyncBufferedQueue.__deallocating_deinit()
{
  AsyncBufferedQueue.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance AsyncBufferedQueue<A>()
{
  v1 = *v0;
  AsyncBufferedQueue.makeAsyncIterator()();
}

uint64_t specialized AsyncBufferedQueue.init(bufferingPolicy:)(uint64_t a1)
{
  v25 = a1;
  v2 = *(*v1 + 80);
  v23 = type metadata accessor for AsyncStream.Continuation.BufferingPolicy();
  v3 = *(v23 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v23);
  v21 = &v20 - v5;
  v24 = type metadata accessor for AsyncStream();
  v22 = *(v24 - 8);
  v6 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  v8 = &v20 - v7;
  v9 = type metadata accessor for AsyncStream.Continuation();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v20 - v16;
  v18 = *(v9 - 8);
  (*(v18 + 56))(&v20 - v16, 1, 1, v9);
  (*(v3 + 16))(v21, v25, v23);
  v26 = v2;
  v27 = v17;
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v22 + 32))(v1 + *(*v1 + 96), v8, v24);
  (*(v11 + 16))(v15, v17, v10);
  result = (*(v18 + 48))(v15, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v18 + 32))(v1 + *(*v1 + 88), v15, v9);
    (*(v11 + 8))(v17, v10);
    return v1;
  }

  return result;
}

{
  v22 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOyShy15GroupActivities11ParticipantVG__GMd, &_sScS12ContinuationV15BufferingPolicyOyShy15GroupActivities11ParticipantVG__GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSyShy15GroupActivities11ParticipantVGGMd, &_sScSyShy15GroupActivities11ParticipantVGGMR);
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v21);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyShy15GroupActivities11ParticipantVG_GSgMd, &_sScS12ContinuationVyShy15GroupActivities11ParticipantVG_GSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyShy15GroupActivities11ParticipantVG_GMd, &_sScS12ContinuationVyShy15GroupActivities11ParticipantVG_GMR);
  v19 = *(v18 - 8);
  (*(v19 + 56))(v17, 1, 1, v18);
  (*(v3 + 16))(v6, v22, v2);
  v23 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15GroupActivities11ParticipantVGMd, &_sShy15GroupActivities11ParticipantVGMR);
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v7 + 32))(v1 + *(*v1 + 96), v10, v21);
  outlined init with copy of TaskPriority?(v17, v15, &_sScS12ContinuationVyShy15GroupActivities11ParticipantVG_GSgMd, &_sScS12ContinuationVyShy15GroupActivities11ParticipantVG_GSgMR);
  result = (*(v19 + 48))(v15, 1, v18);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 8))(v22, v2);
    (*(v19 + 32))(v1 + *(*v1 + 88), v15, v18);
    outlined destroy of TaskPriority?(v17, &_sScS12ContinuationVyShy15GroupActivities11ParticipantVG_GSgMd, &_sScS12ContinuationVyShy15GroupActivities11ParticipantVG_GSgMR);
    return v1;
  }

  return result;
}

{
  v22 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0J16SessionMessengerC0I7ContextVt__GMd, &_sScS12ContinuationV15BufferingPolicyOy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0J16SessionMessengerC0I7ContextVt__GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtGMd, &_sScSy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtGMR);
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v21);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GSgMd, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMd, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMR);
  v19 = *(v18 - 8);
  (*(v19 + 56))(v17, 1, 1, v18);
  (*(v3 + 16))(v6, v22, v2);
  v23 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMR);
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v7 + 32))(v1 + *(*v1 + 96), v10, v21);
  outlined init with copy of TaskPriority?(v17, v15, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GSgMd, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GSgMR);
  result = (*(v19 + 48))(v15, 1, v18);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 8))(v22, v2);
    (*(v19 + 32))(v1 + *(*v1 + 88), v15, v18);
    outlined destroy of TaskPriority?(v17, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GSgMd, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GSgMR);
    return v1;
  }

  return result;
}

{
  v25 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy17WebBookmarksSwift21PresenceUpdateMessageV__GMd, &_sScS12ContinuationV15BufferingPolicyOy17WebBookmarksSwift21PresenceUpdateMessageV__GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy17WebBookmarksSwift21PresenceUpdateMessageVGMd, &_sScSy17WebBookmarksSwift21PresenceUpdateMessageVGMR);
  v7 = *(v24 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v24);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_GSgMd, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_GSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_GMd, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_GMR);
  v19 = *(v18 - 8);
  (*(v19 + 56))(v17, 1, 1, v18);
  v20 = *(v3 + 16);
  v23 = v2;
  v20(v6, v25, v2);
  v26 = v17;
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v7 + 32))(v1 + *(*v1 + 96), v10, v24);
  outlined init with copy of TaskPriority?(v17, v15, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_GSgMd, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_GSgMR);
  result = (*(v19 + 48))(v15, 1, v18);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 8))(v25, v23);
    (*(v19 + 32))(v1 + *(*v1 + 88), v15, v18);
    outlined destroy of TaskPriority?(v17, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_GSgMd, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_GSgMR);
    return v1;
  }

  return result;
}

uint64_t type metadata completion function for AsyncBufferedQueue(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for AsyncStream.Continuation();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = type metadata accessor for AsyncStream();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!lazy cache variable for type metadata for os_unfair_lock_s)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for os_unfair_lock_s);
    }
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CKShareCollaborationActivity.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x2743D77C0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CKShareCollaborationActivity.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x2743D77C0](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CKShareCollaborationActivity.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CKShareCollaborationActivity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CKShareCollaborationActivity.CodingKeys and conformance CKShareCollaborationActivity.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CKShareCollaborationActivity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CKShareCollaborationActivity.CodingKeys and conformance CKShareCollaborationActivity.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance CKShareCollaborationActivity@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17WebBookmarksSwift28CKShareCollaborationActivityV10CodingKeys33_BDCC217CEB0DF725B2BFAD583F8618F3LLOGMd, &_ss22KeyedDecodingContainerVy17WebBookmarksSwift28CKShareCollaborationActivityV10CodingKeys33_BDCC217CEB0DF725B2BFAD583F8618F3LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CKShareCollaborationActivity.CodingKeys and conformance CKShareCollaborationActivity.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance CKShareCollaborationActivity(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17WebBookmarksSwift28CKShareCollaborationActivityV10CodingKeys33_BDCC217CEB0DF725B2BFAD583F8618F3LLOGMd, &_ss22KeyedEncodingContainerVy17WebBookmarksSwift28CKShareCollaborationActivityV10CodingKeys33_BDCC217CEB0DF725B2BFAD583F8618F3LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CKShareCollaborationActivity.CodingKeys and conformance CKShareCollaborationActivity.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t protocol witness for GroupActivity.metadata.getter in conformance CKShareCollaborationActivity()
{
  v1 = *(*(type metadata accessor for GroupActivityMetadata.ActivityType() - 8) + 64) + 15;
  swift_task_alloc();
  GroupActivityMetadata.init()();
  static GroupActivityMetadata.ActivityType.collaboration.getter();
  GroupActivityMetadata.type.setter();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t protocol witness for Identifiable.id.getter in conformance CKShareCollaborationActivity@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CKShareCollaborationActivity()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CKShareCollaborationActivity(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CKShareCollaborationActivity(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CKShareCollaborationActivity and conformance CKShareCollaborationActivity()
{
  result = lazy protocol witness table cache variable for type CKShareCollaborationActivity and conformance CKShareCollaborationActivity;
  if (!lazy protocol witness table cache variable for type CKShareCollaborationActivity and conformance CKShareCollaborationActivity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CKShareCollaborationActivity and conformance CKShareCollaborationActivity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CKShareCollaborationActivity and conformance CKShareCollaborationActivity;
  if (!lazy protocol witness table cache variable for type CKShareCollaborationActivity and conformance CKShareCollaborationActivity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CKShareCollaborationActivity and conformance CKShareCollaborationActivity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CKShareCollaborationActivity and conformance CKShareCollaborationActivity;
  if (!lazy protocol witness table cache variable for type CKShareCollaborationActivity and conformance CKShareCollaborationActivity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CKShareCollaborationActivity and conformance CKShareCollaborationActivity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CKShareCollaborationActivity and conformance CKShareCollaborationActivity;
  if (!lazy protocol witness table cache variable for type CKShareCollaborationActivity and conformance CKShareCollaborationActivity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CKShareCollaborationActivity and conformance CKShareCollaborationActivity);
  }

  return result;
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CKShareCollaborationActivity.CodingKeys and conformance CKShareCollaborationActivity.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CKShareCollaborationActivity.CodingKeys and conformance CKShareCollaborationActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type CKShareCollaborationActivity.CodingKeys and conformance CKShareCollaborationActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CKShareCollaborationActivity.CodingKeys and conformance CKShareCollaborationActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CKShareCollaborationActivity.CodingKeys and conformance CKShareCollaborationActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type CKShareCollaborationActivity.CodingKeys and conformance CKShareCollaborationActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CKShareCollaborationActivity.CodingKeys and conformance CKShareCollaborationActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CKShareCollaborationActivity.CodingKeys and conformance CKShareCollaborationActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type CKShareCollaborationActivity.CodingKeys and conformance CKShareCollaborationActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CKShareCollaborationActivity.CodingKeys and conformance CKShareCollaborationActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CKShareCollaborationActivity.CodingKeys and conformance CKShareCollaborationActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type CKShareCollaborationActivity.CodingKeys and conformance CKShareCollaborationActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CKShareCollaborationActivity.CodingKeys and conformance CKShareCollaborationActivity.CodingKeys);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CKShareCollaborationActivity.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CKShareCollaborationActivity.CodingKeys(_WORD *result, int a2, int a3)
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

void type metadata completion function for CollaborationConnectionManager(void *a1)
{
  v1 = a1[10];
  v2 = a1[11];
  v3 = a1[14];
  v4 = type metadata accessor for FastSyncStateMachine();
  if (v5 <= 0x3F)
  {
    v8 = *(v4 - 8) + 64;
    type metadata accessor for Participant?();
    if (v7 <= 0x3F)
    {
      v9 = *(v6 - 8) + 64;
      swift_initClassMetadata2();
    }
  }
}

uint64_t one-time initialization function for joinLeaveSessionQueue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v15 = *(v0 - 8);
  v16 = v0;
  v1 = *(v15 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v14 = "participantUpdateQueues";
  (*(v9 + 104))(v12, *MEMORY[0x277D851B8], v8);
  static OS_dispatch_queue.global(qos:)();
  (*(v9 + 8))(v12, v8);
  static DispatchQoS.unspecified.getter();
  v17 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v15 + 104))(v3, *MEMORY[0x277D85260], v16);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  joinLeaveSessionQueue = result;
  return result;
}

uint64_t CollaborationConnectionManager.deinit()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 112);
  v5 = type metadata accessor for FastSyncStateMachine();
  (*(*(v5 - 8) + 8))(v0 + v1, v5);
  v6 = *(v0 + *(*v0 + 144));

  v7 = *(v0 + *(*v0 + 152));

  outlined destroy of Participant?(v0 + *(*v0 + 160));
  v8 = *(v0 + *(*v0 + 168));

  v9 = *(v0 + *(*v0 + 176));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t CollaborationConnectionManager.__deallocating_deinit()
{
  CollaborationConnectionManager.deinit();

  return MEMORY[0x282200960](v0);
}

void type metadata accessor for Participant?()
{
  if (!lazy cache variable for type metadata for Participant?)
  {
    type metadata accessor for Participant();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Participant?);
    }
  }
}

uint64_t type metadata instantiation function for CollaborationConnectionManager.WeakContainer()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for CollaborationConnectionManager.WeakContainer(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CollaborationConnectionManager.WeakContainer(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t outlined destroy of Participant?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
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

unint64_t type metadata completion function for FastSyncStateMachine(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  result = type metadata accessor for FastSyncStateMachine.State();
  if (v5 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      result = type metadata accessor for ()();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FastSyncStateMachine(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v8 + ((v6 + 24) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 24) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((v8 + v18) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

_BYTE *storeEnumTagSinglePayload for FastSyncStateMachine(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v10 = ((v9 + ((v8 + 24) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((v9 + ((v8 + 24) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&result[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v10] = 0;
      }

      else if (v14)
      {
        result[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      result = (&result[v8 + 24] & ~v8);
      if (v6 < 0x7FFFFFFF)
      {
        v20 = (&result[v9] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v20 = a2 & 0x7FFFFFFF;
          v20[1] = 0;
        }

        else
        {
          *v20 = a2 - 1;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((v9 + ((v8 + 24) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((v9 + ((v8 + 24) & ~v8)) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((v9 + ((v8 + 24) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v10] = v16;
    }

    else
    {
      *&result[v10] = v16;
    }
  }

  else if (v14)
  {
    result[v10] = v16;
  }

  return result;
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

uint64_t type metadata instantiation function for FastSyncStateMachine.State()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_17WebBookmarksSwift20FastSyncStateMachineV0F0Oyxq__G(uint64_t a1)
{
  v1 = *(a1 + 16) >> 61;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FastSyncStateMachine.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 24))
  {
    return (*a1 + 123);
  }

  v3 = (((*(a1 + 16) >> 57) >> 4) | (8 * ((*(a1 + 16) >> 57) & 8 | *(a1 + 16) & 7))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for FastSyncStateMachine.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for FastSyncStateMachine.State(uint64_t result, uint64_t a2)
{
  if (a2 < 5)
  {
    *(result + 16) = *(result + 16) & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (a2 - 5);
    *(result + 8) = xmmword_272D66830;
  }

  return result;
}

uint64_t FastSyncStateMachine.State.description.getter(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 61;
  if ((a3 >> 61) > 2)
  {
    if (v3 == 3)
    {
      _StringGuts.grow(_:)(63);
      MEMORY[0x2743D7240](0xD00000000000002ALL, 0x8000000272D68290);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      MEMORY[0x2743D7240](0x7473202020200A3BLL, 0xEF20676E69747261);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v6 = 10506;
      v7 = 0xE200000000000000;
      goto LABEL_10;
    }

    if (v3 != 4)
    {
      return 1701602409;
    }

    _StringGuts.grow(_:)(27);
    MEMORY[0x2743D7240](0x46676E696E696F6ALL, 0xEE002864656C6961);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x2743D7240](0x3A726F727265202CLL, 0xE800000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
    _print_unlocked<A, B>(_:_:)();
  }

  else
  {
    if (v3)
    {
      v4 = 0x28746E6573657270;
      v5 = 0xE800000000000000;
    }

    else
    {
      v4 = 0x676E697472617473;
      v5 = 0xE900000000000028;
    }

    MEMORY[0x2743D7240](v4, v5);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
  }

  v6 = 41;
  v7 = 0xE100000000000000;
LABEL_10:
  MEMORY[0x2743D7240](v6, v7);
  return 0;
}

void *GroupSessionMessengerController.deinit()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  v4 = v0[17];

  v5 = v0[18];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t GroupSessionMessengerController.__deallocating_deinit()
{
  GroupSessionMessengerController.deinit();

  return MEMORY[0x282200960](v0);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ParticipantHandleMap.ParticipantKind()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    CKShareParticipant.participantIdentifier.getter();
    if (v2)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }

  else
  {
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance ParticipantHandleMap.ParticipantKind()
{
  if (*v0)
  {
    CKShareParticipant.participantIdentifier.getter();
    if (v1)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }

  else
  {

    String.hash(into:)();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ParticipantHandleMap.ParticipantKind()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    CKShareParticipant.participantIdentifier.getter();
    if (v2)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }

  else
  {
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t CKShareParticipant.handles.getter()
{
  v1 = [v0 userIdentity];
  v2 = [v1 lookupInfo];

  result = MEMORY[0x277D84FA0];
  if (v2)
  {
    v29 = MEMORY[0x277D84FA0];
    v4 = [v2 emailAddress];
    if (v4)
    {
      v5 = v4;
      v6 = [objc_opt_self() normalizedEmailAddressHandleForValue_];

      if (v6)
      {
        v7 = [v6 normalizedValue];
        if (v7)
        {
          v8 = v7;
          v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v11 = v10;

          specialized Set._Variant.insert(_:)(&v28, v9, v11);
        }

        v12 = [v6 value];
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        specialized Set._Variant.insert(_:)(&v28, v13, v15);
      }
    }

    v16 = [v2 phoneNumber];
    if (v16 && (v17 = v16, v18 = [objc_opt_self() normalizedPhoneNumberHandleForValue:v16 isoCountryCode:0], v17, v18))
    {
      v19 = [v18 normalizedValue];
      if (v19)
      {
        v20 = v19;
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        specialized Set._Variant.insert(_:)(&v28, v21, v23);
      }

      v24 = [v18 value];
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      specialized Set._Variant.insert(_:)(&v28, v25, v27);
    }

    else
    {
    }

    return v29;
  }

  return result;
}

uint64_t ParticipantHandleMap.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t getEnumTagSinglePayload for ParticipantHandleMap.ParticipantKind(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ParticipantHandleMap.ParticipantKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for ParticipantHandleMap.ParticipantKind(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for ParticipantHandleMap.ParticipantKind(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t lazy protocol witness table accessor for type ParticipantHandleMap.ParticipantKind and conformance ParticipantHandleMap.ParticipantKind()
{
  result = lazy protocol witness table cache variable for type ParticipantHandleMap.ParticipantKind and conformance ParticipantHandleMap.ParticipantKind;
  if (!lazy protocol witness table cache variable for type ParticipantHandleMap.ParticipantKind and conformance ParticipantHandleMap.ParticipantKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantHandleMap.ParticipantKind and conformance ParticipantHandleMap.ParticipantKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticipantHandleMap.ParticipantKind and conformance ParticipantHandleMap.ParticipantKind;
  if (!lazy protocol witness table cache variable for type ParticipantHandleMap.ParticipantKind and conformance ParticipantHandleMap.ParticipantKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantHandleMap.ParticipantKind and conformance ParticipantHandleMap.ParticipantKind);
  }

  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAC34PersonalDeviceCoordinationActivityV15GroupActivities0sW15SessionProviderCyAJGAC21PresenceUpdateMessageV_AC18AsyncBufferedQueueCyShyAK11ParticipantVGGGGMd, &_ss23_ContiguousArrayStorageCy17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAC34PersonalDeviceCoordinationActivityV15GroupActivities0sW15SessionProviderCyAJGAC21PresenceUpdateMessageV_AC18AsyncBufferedQueueCyShyAK11ParticipantVGGGGMR, &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA34PersonalDeviceCoordinationActivityV15GroupActivities0pT15SessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShyAI11ParticipantVGGGMd, &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA34PersonalDeviceCoordinationActivityV15GroupActivities0pT15SessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShyAI11ParticipantVGGGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAC07CKShareG8ActivityVAC0S20GroupSessionProviderCyAJGAC21PresenceUpdateMessageV_AC18AsyncBufferedQueueCyShy0U10Activities11ParticipantVGGGGMd, &_ss23_ContiguousArrayStorageCy17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAC07CKShareG8ActivityVAC0S20GroupSessionProviderCyAJGAC21PresenceUpdateMessageV_AC18AsyncBufferedQueueCyShy0U10Activities11ParticipantVGGGGMR, &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA07CKShareD8ActivityVAA0P20GroupSessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShy0R10Activities11ParticipantVGGGMd, &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA07CKShareD8ActivityVAA0P20GroupSessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShy0R10Activities11ParticipantVGGGMR);
  *v3 = result;
  return result;
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySS_17WebBookmarksSwift20ParticipantHandleMapC0G4KindOtGGMd, &_ss23_ContiguousArrayStorageCySaySS_17WebBookmarksSwift20ParticipantHandleMapC0G4KindOtGGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySS_17WebBookmarksSwift20ParticipantHandleMapC0D4KindOtGMd, &_sSaySS_17WebBookmarksSwift20ParticipantHandleMapC0D4KindOtGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_17WebBookmarksSwift20ParticipantHandleMapC0G4KindOtGMd, &_ss23_ContiguousArrayStorageCySS_17WebBookmarksSwift20ParticipantHandleMapC0G4KindOtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_17WebBookmarksSwift20ParticipantHandleMapC0D4KindOtMd, &_sSS_17WebBookmarksSwift20ParticipantHandleMapC0D4KindOtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15GroupActivities17AddressableMemberVGMd, &_ss23_ContiguousArrayStorageCy15GroupActivities17AddressableMemberVGMR);
  v10 = *(type metadata accessor for AddressableMember() - 8);
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
  v15 = *(type metadata accessor for AddressableMember() - 8);
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

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 < a4 || v16 + 4 >= &a4[v14 + 4])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v16 != a4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = *a3;
  v9 = v7;

  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v5);
  v12 = v8[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v8[3] < v15)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, v4 & 1);
    v17 = *a3;
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v5);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  specialized _NativeDictionary.copy()();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();

    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v6;
  v23[1] = v5;
  *(v22[7] + 8 * v10) = v7;
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    MEMORY[0x2743D7240](0xD00000000000001BLL, 0x8000000272D683B0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x2743D7240](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v4 = (a1 + 9);
    v7 = 1;
    while (v7 < a1[2])
    {
      v6 = *(v4 - 2);
      v5 = *(v4 - 1);
      v26 = *v4;
      v27 = *a3;
      v9 = *v4;

      v28 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v5);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v32, 1);
        v33 = *a3;
        v28 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v5);
        if ((v16 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v6;
      v36[1] = v5;
      *(v35[7] + 8 * v28) = v26;
      v37 = v35[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v35[2] = v38;
      v4 += 3;
      if (v39 == v7)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

{
  v41 = a1[2];
  if (!v41)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, v5 & 1);
    v18 = *a3;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v22 = v11;
  specialized _NativeDictionary.copy()();
  v11 = v22;
  if (v17)
  {
LABEL_8:
    v20 = swift_allocError();
    swift_willThrow();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v23 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v24 = (v23[6] + 16 * v11);
  *v24 = v7;
  v24[1] = v6;
  *(v23[7] + 8 * v11) = v10;
  v25 = v23[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    MEMORY[0x2743D7240](0xD00000000000001BLL, 0x8000000272D683B0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x2743D7240](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v23[2] = v26;
  if (v41 != 1)
  {
    v5 = (a1 + 9);
    v27 = 1;
    while (v27 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v28 = *v5;
      v29 = *a3;

      v10 = v28;
      v30 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v15 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v31;
      if (v29[3] < v34)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, 1);
        v35 = *a3;
        v30 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
        if ((v17 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v37 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v7;
      v38[1] = v6;
      *(v37[7] + 8 * v30) = v10;
      v39 = v37[2];
      v15 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v27;
      v37[2] = v40;
      v5 += 3;
      if (v41 == v27)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

BOOL specialized static ParticipantHandleMap.ParticipantKind.== infix(_:_:)(void *a1, void *a2)
{
  if (a1)
  {
    v4 = a1;
    CKShareParticipant.participantIdentifier.getter();
    v6 = v5;

    if (!v6)
    {
      return 0;
    }

    if (!a2)
    {
      return 0;
    }

LABEL_6:
    v7 = a2;
    CKShareParticipant.participantIdentifier.getter();
    v9 = v8;

    if (!v9)
    {
      return 0;
    }

    if (!a1)
    {
      return 0;
    }

    v10 = CKShareParticipant.participantIdentifier.getter();
    v12 = v11;
    v13 = CKShareParticipant.participantIdentifier.getter();
    if (v12)
    {
      if (v14)
      {
        if (v10 == v13 && v12 == v14)
        {

          return 1;
        }

        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        return (v16 & 1) != 0;
      }
    }

    else if (!v14)
    {
      return 1;
    }

    return 0;
  }

  if (a2)
  {
    goto LABEL_6;
  }

  return 1;
}

id _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_SS_17WebBookmarksSwift20ParticipantHandleMapC0G4KindOts5NeverOTg504_s17de7Swift20ghi76C09handlesToD13KindsForShare33_DC6DDEA4C0316922E19757898A9692F2LLySDySSAC0D4J52OGSo7CKShareCKFZSaySS_AGtGSo0sD0CXEfU0_SS_AGtSSXEfU_AKTf1cn_nTf4ng_n(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v4 = a1;
  v35 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v3 = v35;
  v5 = v4 + 56;
  v6 = -1 << *(v4 + 32);
  result = _HashTable.startBucket.getter();
  v8 = result;
  v9 = 0;
  v27 = v4 + 64;
  v10 = a2;
  v29 = v2;
  v30 = v4 + 56;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v4 + 32))
  {
    v13 = v8 >> 6;
    if ((*(v5 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_21;
    }

    v31 = v9;
    v32 = *(v4 + 36);
    v14 = (*(v4 + 48) + 16 * v8);
    v15 = v14[1];
    v16 = v4;
    v17 = *(v35 + 16);
    v18 = *(v35 + 24);
    v33 = *v14;
    v34 = v17 + 1;

    result = v10;
    if (v17 >= v18 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v34, 1);
    }

    *(v35 + 16) = v34;
    v19 = (v35 + 24 * v17);
    v19[4] = v33;
    v19[5] = v15;
    v19[6] = v10;
    v11 = 1 << *(v16 + 32);
    if (v8 >= v11)
    {
      goto LABEL_22;
    }

    v5 = v30;
    v20 = *(v30 + 8 * v13);
    if ((v20 & (1 << v8)) == 0)
    {
      goto LABEL_23;
    }

    v4 = v16;
    if (v32 != *(v16 + 36))
    {
      goto LABEL_24;
    }

    v21 = v20 & (-2 << (v8 & 0x3F));
    if (v21)
    {
      v11 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
      v12 = v29;
    }

    else
    {
      v22 = v13 << 6;
      v23 = v13 + 1;
      v24 = (v27 + 8 * v13);
      v12 = v29;
      while (v23 < (v11 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = outlined consume of Set<String>.Index._Variant(v8, v32, 0);
          v10 = a2;
          v11 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<String>.Index._Variant(v8, v32, 0);
      v10 = a2;
    }

LABEL_4:
    v9 = v31 + 1;
    v8 = v11;
    if (v31 + 1 == v12)
    {
      return v3;
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

uint64_t specialized static ParticipantHandleMap.handlesToParticipantKindsForShare(_:)(uint64_t *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = [a1 currentUserParticipant];
  if (!v4)
  {
    if (one-time initialization token for tabGroup == -1)
    {
LABEL_21:
      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Logger.tabGroup);
      v22 = v3;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v65 = v26;
        *v25 = 136315138;
        v27 = [v22 recordID];
        v28 = [v27 ckShortDescription];

        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v65);

        *(v25 + 4) = v32;
        _os_log_impl(&dword_272D1B000, v23, v24, "Share %s does not have a currentUserParticipant", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v26);
        MEMORY[0x2743D7F00](v26, -1, -1);
        MEMORY[0x2743D7F00](v25, -1, -1);
      }

      lazy protocol witness table accessor for type ParticipantHandleMap.Errors and conformance ParticipantHandleMap.Errors();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_73:
    swift_once();
    goto LABEL_21;
  }

  v5 = [v3 participants];
  type metadata accessor for CKShareParticipant();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v65 = MEMORY[0x277D84F90];
  v7 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v6 >> 62)
  {
LABEL_63:
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v64 = v2;
  if (v8)
  {
    v9 = 0;
    v2 = v6 & 0xC000000000000001;
    v62 = v6 & 0xC000000000000001;
    v63 = MEMORY[0x277D84F90];
    v10 = 0x279E7D000uLL;
    while (2)
    {
      v11 = v9;
      while (1)
      {
        if (v2)
        {
          v12 = MEMORY[0x2743D7610](v11, v6);
        }

        else
        {
          if (v11 >= *(v7 + 16))
          {
            goto LABEL_57;
          }

          v12 = *(v6 + 8 * v11 + 32);
        }

        v13 = v12;
        v9 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if ([v12 *(v10 + 2456)] == 2)
        {
          v14 = v8;
          v15 = v6;
          v16 = v7;
          v17 = v10;
          v18 = [v13 userIdentity];
          v19 = [v18 userRecordID];

          v10 = v17;
          v7 = v16;
          v6 = v15;
          v8 = v14;
          v2 = v62;
          if (v19)
          {
            break;
          }
        }

        ++v11;
        if (v9 == v8)
        {
          goto LABEL_25;
        }
      }

      MEMORY[0x2743D7260]();
      if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v20 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v63 = v65;
      if (v9 != v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v63 = MEMORY[0x277D84F90];
  }

LABEL_25:

  v34 = v63;
  if (!(v63 >> 62))
  {
    v35 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
      goto LABEL_27;
    }

LABEL_65:

    v6 = MEMORY[0x277D84F90];
    v2 = *(MEMORY[0x277D84F90] + 16);
    if (v2)
    {
LABEL_39:
      v49 = 0;
      v50 = MEMORY[0x277D84F90];
      v7 = v6 + 32;
      while (1)
      {
        if (v49 >= *(v6 + 16))
        {
          goto LABEL_58;
        }

        v51 = *(v7 + 8 * v49);
        v52 = *(v51 + 16);
        v53 = v50[2];
        v54 = v53 + v52;
        if (__OFADD__(v53, v52))
        {
          goto LABEL_59;
        }

        v55 = *(v7 + 8 * v49);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v54 <= v50[3] >> 1)
        {
          if (!*(v51 + 16))
          {
            goto LABEL_40;
          }
        }

        else
        {
          if (v53 <= v54)
          {
            v57 = v53 + v52;
          }

          else
          {
            v57 = v53;
          }

          v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v57, 1, v50);
          if (!*(v51 + 16))
          {
LABEL_40:

            if (v52)
            {
              goto LABEL_60;
            }

            goto LABEL_41;
          }
        }

        if ((v50[3] >> 1) - v50[2] < v52)
        {
          goto LABEL_61;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_17WebBookmarksSwift20ParticipantHandleMapC0D4KindOtMd, &_sSS_17WebBookmarksSwift20ParticipantHandleMapC0D4KindOtMR);
        swift_arrayInitWithCopy();

        if (v52)
        {
          v58 = v50[2];
          v59 = __OFADD__(v58, v52);
          v60 = v58 + v52;
          if (v59)
          {
            goto LABEL_62;
          }

          v50[2] = v60;
        }

LABEL_41:
        if (v2 == ++v49)
        {
          goto LABEL_67;
        }
      }
    }

    goto LABEL_66;
  }

  v35 = __CocoaSet.count.getter();
  v34 = v63;
  if (!v35)
  {
    goto LABEL_65;
  }

LABEL_27:
  v36 = v34;
  v65 = MEMORY[0x277D84F90];
  v3 = &v65;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35 & ~(v35 >> 63), 0);
  if (v35 < 0)
  {
    __break(1u);
    goto LABEL_73;
  }

  v37 = 0;
  v6 = v65;
  v38 = v36;
  v39 = v36 & 0xC000000000000001;
  do
  {
    if (v39)
    {
      v40 = MEMORY[0x2743D7610](v37, v38);
    }

    else
    {
      v40 = *(v38 + 8 * v37 + 32);
    }

    v41 = v40;
    if ([v40 isCurrentUser])
    {
      v42 = 0;
    }

    else
    {
      v43 = v41;
      v42 = v41;
    }

    v44 = CKShareParticipant.handles.getter();
    v45 = v42;
    v46 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_SS_17WebBookmarksSwift20ParticipantHandleMapC0G4KindOts5NeverOTg504_s17de7Swift20ghi76C09handlesToD13KindsForShare33_DC6DDEA4C0316922E19757898A9692F2LLySDySSAC0D4J52OGSo7CKShareCKFZSaySS_AGtGSo0sD0CXEfU0_SS_AGtSSXEfU_AKTf1cn_nTf4ng_n(v44, v42);

    v65 = v6;
    v48 = *(v6 + 16);
    v47 = *(v6 + 24);
    if (v48 >= v47 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1);
      v6 = v65;
    }

    ++v37;
    *(v6 + 16) = v48 + 1;
    *(v6 + 8 * v48 + 32) = v46;
    v38 = v63;
  }

  while (v35 != v37);

  v2 = *(v6 + 16);
  if (v2)
  {
    goto LABEL_39;
  }

LABEL_66:
  v50 = MEMORY[0x277D84F90];
LABEL_67:

  if (v50[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS17WebBookmarksSwift20ParticipantHandleMapC0F4KindOGMd, &_ss18_DictionaryStorageCySS17WebBookmarksSwift20ParticipantHandleMapC0F4KindOGMR);
    v61 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v61 = MEMORY[0x277D84F98];
  }

  v65 = v61;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v50, 1, &v65);
  if (!v64)
  {
    return v65;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type ParticipantHandleMap.Errors and conformance ParticipantHandleMap.Errors()
{
  result = lazy protocol witness table cache variable for type ParticipantHandleMap.Errors and conformance ParticipantHandleMap.Errors;
  if (!lazy protocol witness table cache variable for type ParticipantHandleMap.Errors and conformance ParticipantHandleMap.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantHandleMap.Errors and conformance ParticipantHandleMap.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticipantHandleMap.Errors and conformance ParticipantHandleMap.Errors;
  if (!lazy protocol witness table cache variable for type ParticipantHandleMap.Errors and conformance ParticipantHandleMap.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantHandleMap.Errors and conformance ParticipantHandleMap.Errors);
  }

  return result;
}

uint64_t outlined consume of Set<String>.Index._Variant(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t specialized closure #1 in AsyncBufferedQueue.init(bufferingPolicy:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  outlined destroy of TaskPriority?(a2, a3, a4);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = *(v10 - 8);
  (*(v13 + 16))(a2, a1, v10);
  v11 = *(v13 + 56);

  return v11(a2, 0, 1, v10);
}

uint64_t specialized CollaborationConnectionManager.participantUpdates()(uint64_t (*a1)(BOOL, uint64_t, uint64_t, uint64_t), uint64_t *a2, uint64_t *a3, char *a4)
{
  v29 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOyShy15GroupActivities11ParticipantVG__GMd, &_sScS12ContinuationV15BufferingPolicyOyShy15GroupActivities11ParticipantVG__GMR);
  v30 = *(v8 - 8);
  v31 = v8;
  v9 = *(v30 + 64);
  MEMORY[0x28223BE20](v8);
  v32 = &v29 - v10;
  v11 = *(*v4 + 176);
  swift_beginAccess();
  v33 = v11;
  v34 = v4;
  v12 = *&v11[v4];
  v13 = *(v12 + 16);

  if (v13)
  {
    v14 = 0;
    v15 = v12 + 32;
    v16 = MEMORY[0x277D84F90];
    while (v14 < *(v12 + 16))
    {
      outlined init with copy of TaskPriority?(v15, v37, a2, a3);
      if (swift_weakLoadStrong())
      {

        outlined init with take of CollaborationConnectionManager<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>, PresenceUpdateMessage>.WeakContainer<AsyncBufferedQueue<Set<Participant>>>(v37, v36, a2, a3);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          (a4)(0, *(v16 + 16) + 1, 1);
          v16 = v35;
        }

        v19 = *(v16 + 16);
        v18 = *(v16 + 24);
        if (v19 >= v18 >> 1)
        {
          (a4)(v18 > 1, v19 + 1, 1);
          v16 = v35;
        }

        *(v16 + 16) = v19 + 1;
        outlined init with take of CollaborationConnectionManager<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>, PresenceUpdateMessage>.WeakContainer<AsyncBufferedQueue<Set<Participant>>>(v36, v16 + 8 * v19 + 32, a2, a3);
      }

      else
      {
        outlined destroy of TaskPriority?(v37, a2, a3);
      }

      ++v14;
      v15 += 8;
      if (v13 == v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_18:
    v13 = v29(0, *(v13 + 16) + 1, 1, v13);
    *&a4[v14] = v13;
    goto LABEL_14;
  }

  v16 = MEMORY[0x277D84F90];
LABEL_13:

  a4 = v33;
  v14 = v34;
  v20 = *&v33[v34];
  *&v33[v34] = v16;

  v21 = v32;
  (*(v30 + 104))(v32, *MEMORY[0x277D85778], v31);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift18AsyncBufferedQueueCyShy15GroupActivities11ParticipantVGGMd, &_s17WebBookmarksSwift18AsyncBufferedQueueCyShy15GroupActivities11ParticipantVGGMR);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v16 = specialized AsyncBufferedQueue.init(bufferingPolicy:)(v21);
  swift_weakInit();
  swift_beginAccess();
  v13 = *&a4[v14];
  v25 = swift_isUniquelyReferenced_nonNull_native();
  *&a4[v14] = v13;
  if ((v25 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  v27 = *(v13 + 16);
  v26 = *(v13 + 24);
  if (v27 >= v26 >> 1)
  {
    v13 = v29(v26 > 1, v27 + 1, 1, v13);
  }

  *(v13 + 16) = v27 + 1;
  outlined init with take of CollaborationConnectionManager<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>, PresenceUpdateMessage>.WeakContainer<AsyncBufferedQueue<Set<Participant>>>(v37, v13 + 8 * v27 + 32, a2, a3);
  *&a4[v14] = v13;
  swift_endAccess();
  return v16;
}

uint64_t specialized CollaborationConnectionManager.setActiveParticipants(_:)(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(BOOL, uint64_t, uint64_t))
{
  v31 = a4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOyShy15GroupActivities11ParticipantVG__GMd, &_sScS12ContinuationV11YieldResultOyShy15GroupActivities11ParticipantVG__GMR);
  v8 = *(v33 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v33);
  v32 = &v28 - v10;
  v11 = *(*v4 + 168);
  v12 = *(v4 + v11);
  *(v4 + v11) = a1;
  v34 = a1;

  v13 = *(*v4 + 176);
  swift_beginAccess();
  v29 = v13;
  v30 = v4;
  v14 = *(v4 + v13);
  v15 = *(v14 + 16);

  v35 = v15;
  if (v15)
  {
    v17 = 0;
    v18 = v14 + 32;
    v19 = (v8 + 8);
    v20 = MEMORY[0x277D84F90];
    while (v17 < *(v14 + 16))
    {
      outlined init with copy of TaskPriority?(v18, v37, a2, a3);
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v22 = *(*Strong + 88);
        v36 = v34;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyShy15GroupActivities11ParticipantVG_GMd, &_sScS12ContinuationVyShy15GroupActivities11ParticipantVG_GMR);
        v23 = v32;
        AsyncStream.Continuation.yield(_:)();

        (*v19)(v23, v33);
        outlined init with take of CollaborationConnectionManager<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>, PresenceUpdateMessage>.WeakContainer<AsyncBufferedQueue<Set<Participant>>>(v37, &v36, a2, a3);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v31(0, *(v20 + 16) + 1, 1);
          v20 = v38;
        }

        v26 = *(v20 + 16);
        v25 = *(v20 + 24);
        if (v26 >= v25 >> 1)
        {
          v31(v25 > 1, v26 + 1, 1);
          v20 = v38;
        }

        *(v20 + 16) = v26 + 1;
        result = outlined init with take of CollaborationConnectionManager<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>, PresenceUpdateMessage>.WeakContainer<AsyncBufferedQueue<Set<Participant>>>(&v36, v20 + 8 * v26 + 32, a2, a3);
      }

      else
      {
        result = outlined destroy of TaskPriority?(v37, a2, a3);
      }

      ++v17;
      v18 += 8;
      if (v35 == v17)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
LABEL_13:

    v27 = *(v30 + v29);
    *(v30 + v29) = v20;
  }

  return result;
}

uint64_t specialized CollaborationConnectionManager.sendPresenceUpdateMessage(_:)(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy17WebBookmarksSwift21PresenceUpdateMessageV__GMd, &_sScS12ContinuationV11YieldResultOy17WebBookmarksSwift21PresenceUpdateMessageV__GMR);
  v2[24] = v3;
  v4 = *(v3 - 8);
  v2[25] = v4;
  v5 = *(v4 + 64) + 15;
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.sendPresenceUpdateMessage(_:));
}

{
  v2[22] = a1;
  v2[23] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy17WebBookmarksSwift21PresenceUpdateMessageV__GMd, &_sScS12ContinuationV11YieldResultOy17WebBookmarksSwift21PresenceUpdateMessageV__GMR);
  v2[24] = v3;
  v4 = *(v3 - 8);
  v2[25] = v4;
  v5 = *(v4 + 64) + 15;
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.sendPresenceUpdateMessage(_:));
}

uint64_t specialized CollaborationConnectionManager.sendPresenceUpdateMessage(_:)()
{
  v37 = v0;
  v1 = *(v0 + 184);
  v2 = *(v1 + 168);
  if (v2)
  {
    v3 = one-time initialization token for tabGroup;
    v4 = *(v1 + 168);

    if (v3 != -1)
    {
      swift_once();
      v34 = *(v0 + 184);
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.tabGroup);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 184);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v36 = v10;
      *v9 = 136446210;
      swift_beginAccess();
      v11 = *(v8 + 136);
      v12 = *(v8 + 144);

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v36);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_272D1B000, v6, v7, "Session is active with message controller for activity %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x2743D7F00](v10, -1, -1);
      MEMORY[0x2743D7F00](v9, -1, -1);
    }

    v15 = *(v0 + 200);
    v14 = *(v0 + 208);
    v16 = *(v0 + 192);
    v17 = *(v0 + 176);
    v18 = *(**(v2 + 120) + 88);
    v20 = *(v17 + 16);
    v19 = *(v17 + 32);
    v21 = *v17;
    *(v0 + 64) = *(v17 + 48);
    *(v0 + 32) = v20;
    *(v0 + 48) = v19;
    *(v0 + 16) = v21;
    outlined init with copy of PresenceUpdateMessage(v17, v0 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_GMd, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_GMR);
    AsyncStream.Continuation.yield(_:)();
    (*(v15 + 8))(v14, v16);
  }

  else
  {
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
      v35 = *(v0 + 184);
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.tabGroup);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 184);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v36 = v27;
      *v26 = 136446210;
      swift_beginAccess();
      v28 = *(v25 + 136);
      v29 = *(v25 + 144);

      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v36);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_272D1B000, v23, v24, "Message ignored while there are no active sessions for activity: %{public}s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x2743D7F00](v27, -1, -1);
      MEMORY[0x2743D7F00](v26, -1, -1);
    }
  }

  v31 = *(v0 + 208);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t specialized closure #1 in CollaborationConnectionManager.startActivity()(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = swift_task_alloc();
    *(v2 + 24) = v4;
    *v4 = v2;
    v4[1] = specialized closure #1 in CollaborationConnectionManager.startActivity();

    return specialized CollaborationConnectionManager.leaveGroupSessionProvider(_:)();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v2 + 16) = v6;
    *v6 = v2;
    v6[1] = specialized closure #1 in CollaborationConnectionManager.startActivity();

    return specialized CollaborationConnectionManager.joinGroupSessionProvider(_:)(a1);
  }
}

{
  if (a2)
  {
    v4 = swift_task_alloc();
    *(v2 + 24) = v4;
    *v4 = v2;
    v4[1] = specialized closure #1 in CollaborationConnectionManager.startActivity();

    return specialized CollaborationConnectionManager.leaveGroupSessionProvider(_:)();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v2 + 16) = v6;
    *v6 = v2;
    v6[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

    return specialized CollaborationConnectionManager.joinGroupSessionProvider(_:)(a1);
  }
}

uint64_t specialized FastSyncStateMachine.startActivity(_:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v40 - v9;
  v11 = *v4;
  v12 = v4[1];
  v13 = v4[2];
  v14 = v13 >> 61;
  if ((v13 >> 61) <= 2)
  {
    if ((v13 >> 61) < 2)
    {
      v15 = 0;
      return v15 & 1;
    }

    v42 = a1;
    v25 = v4[5];
    v24 = v4[6];

    v26 = v25(v4 + 3);
    if (!v3)
    {
      v22 = v26;
      v27 = type metadata accessor for TaskPriority();
      (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
      v28 = swift_allocObject();
      v28[2] = 0;
      v28[3] = 0;
      v29 = v42;
      v28[4] = v12;
      v28[5] = v29;
      v28[6] = a2;
      v28[7] = v22;

      v30 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC15GroupActivities08PersonalE15SessionProviderCy17WebBookmarksSwift0G26DeviceCoordinationActivityVG_Tt2g5Tm(0, 0, v10, &async function pointer to partial apply for specialized closure #2 in FastSyncStateMachine.startActivity(_:), v28, &_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMd, &_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMR);
      outlined consume of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v11, v12, v13);
      v23 = v30 | 0x6000000000000000;
      goto LABEL_15;
    }

LABEL_12:

    return v15 & 1;
  }

  v42 = a1;
  if (v14 == 3)
  {
    v41 = a2;
    v32 = v4[5];
    v31 = v4[6];

    v33 = v32(v4 + 3);
    if (!v3)
    {
      v22 = v33;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMd, &_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMR);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
      MEMORY[0x2743D73C0](v13 & 0x1FFFFFFFFFFFFFFFLL, v40, v34, MEMORY[0x277D84950]);
      v35 = type metadata accessor for TaskPriority();
      (*(*(v35 - 8) + 56))(v10, 1, 1, v35);
      v36 = swift_allocObject();
      v36[2] = 0;
      v36[3] = 0;
      v37 = v42;
      v36[4] = v13 & 0x1FFFFFFFFFFFFFFFLL;
      v36[5] = v37;
      v36[6] = v41;
      v36[7] = v22;

      v38 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC15GroupActivities08PersonalE15SessionProviderCy17WebBookmarksSwift0G26DeviceCoordinationActivityVG_Tt2g5Tm(0, 0, v10, &async function pointer to partial apply for specialized closure #3 in FastSyncStateMachine.startActivity(_:), v36, &_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMd, &_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMR);
      outlined consume of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v11, v12, v13);
      v23 = v38 | 0x6000000000000000;
      v11 = v12;
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (v14 == 4)
  {

    v16 = v12;
  }

  v17 = v4[6];
  v18 = (v4[5])(v4 + 3);
  if (!v3)
  {
    v19 = v18;
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v42;
    v21[5] = a2;
    v21[6] = v19;

    v22 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC15GroupActivities08PersonalE15SessionProviderCy17WebBookmarksSwift0G26DeviceCoordinationActivityVG_Tt2g5Tm(0, 0, v10, &async function pointer to partial apply for specialized closure #1 in FastSyncStateMachine.startActivity(_:), v21, &_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMd, &_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMR);
    outlined consume of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v11, v12, v13);
    v23 = 0;
    v11 = v19;
LABEL_15:
    *v4 = v11;
    v4[1] = v22;
    v15 = 1;
    v4[2] = v23;
  }

  return v15 & 1;
}

{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v40 - v9;
  v11 = *v4;
  v12 = v4[1];
  v13 = v4[2];
  v14 = v13 >> 61;
  if ((v13 >> 61) <= 2)
  {
    if ((v13 >> 61) < 2)
    {
      v15 = 0;
      return v15 & 1;
    }

    v42 = a1;
    v25 = v4[5];
    v24 = v4[6];

    v26 = v25(v4 + 3);
    if (!v3)
    {
      v22 = v26;
      v27 = type metadata accessor for TaskPriority();
      (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
      v28 = swift_allocObject();
      v28[2] = 0;
      v28[3] = 0;
      v29 = v42;
      v28[4] = v12;
      v28[5] = v29;
      v28[6] = a2;
      v28[7] = v22;

      v30 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC15GroupActivities08PersonalE15SessionProviderCy17WebBookmarksSwift0G26DeviceCoordinationActivityVG_Tt2g5Tm(0, 0, v10, &async function pointer to partial apply for specialized closure #2 in FastSyncStateMachine.startActivity(_:), v28, &_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMd, &_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMR);
      outlined consume of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v11, v12, v13);
      v23 = v30 | 0x6000000000000000;
      goto LABEL_15;
    }

LABEL_12:

    return v15 & 1;
  }

  v42 = a1;
  if (v14 == 3)
  {
    v41 = a2;
    v32 = v4[5];
    v31 = v4[6];

    v33 = v32(v4 + 3);
    if (!v3)
    {
      v22 = v33;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMd, &_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMR);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
      MEMORY[0x2743D73C0](v13 & 0x1FFFFFFFFFFFFFFFLL, v40, v34, MEMORY[0x277D84950]);
      v35 = type metadata accessor for TaskPriority();
      (*(*(v35 - 8) + 56))(v10, 1, 1, v35);
      v36 = swift_allocObject();
      v36[2] = 0;
      v36[3] = 0;
      v37 = v42;
      v36[4] = v13 & 0x1FFFFFFFFFFFFFFFLL;
      v36[5] = v37;
      v36[6] = v41;
      v36[7] = v22;

      v38 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC15GroupActivities08PersonalE15SessionProviderCy17WebBookmarksSwift0G26DeviceCoordinationActivityVG_Tt2g5Tm(0, 0, v10, &async function pointer to partial apply for specialized closure #3 in FastSyncStateMachine.startActivity(_:), v36, &_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMd, &_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMR);
      outlined consume of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v11, v12, v13);
      v23 = v38 | 0x6000000000000000;
      v11 = v12;
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (v14 == 4)
  {

    v16 = v12;
  }

  v17 = v4[6];
  v18 = (v4[5])(v4 + 3);
  if (!v3)
  {
    v19 = v18;
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v42;
    v21[5] = a2;
    v21[6] = v19;

    v22 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC15GroupActivities08PersonalE15SessionProviderCy17WebBookmarksSwift0G26DeviceCoordinationActivityVG_Tt2g5Tm(0, 0, v10, &async function pointer to partial apply for specialized closure #1 in FastSyncStateMachine.startActivity(_:), v21, &_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMd, &_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMR);
    outlined consume of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v11, v12, v13);
    v23 = 0;
    v11 = v19;
LABEL_15:
    *v4 = v11;
    v4[1] = v22;
    v15 = 1;
    v4[2] = v23;
  }

  return v15 & 1;
}

uint64_t specialized CollaborationConnectionManager.leaveActivity()()
{
  v1[5] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.leaveActivity());
}

{
  v1 = v0[7];
  v2 = v0[5];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  swift_beginAccess();
  v5 = v2[14];
  v4 = v2[15];
  v6 = v2[16];
  v7 = v6 >> 61;
  if ((v6 >> 61) > 2)
  {
    if (v7 != 3)
    {
      v13 = v0[5];
      if (v7 == 4)
      {

        outlined copy of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v5, v4, v6);
      }

      else
      {
      }

      outlined destroy of TaskPriority?(v0[7], &_sScPSgMd, &_sScPSgMR);
      v2[14] = 0;
      v2[15] = 0;
      v2[16] = 0xA000000000000000;
      outlined consume of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v5, v4, v6);
      goto LABEL_15;
    }

    v16 = v0[5];
    v15 = v6 & 0x1FFFFFFFFFFFFFFFLL;

    outlined copy of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v5, v4, v6);

    v32 = v4;
LABEL_10:
    v17 = v0[6];
    v18 = v0[7];
    v19 = v0[5];
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMd, &_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMR);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
    MEMORY[0x2743D73C0](v15, v20, v21, MEMORY[0x277D84950]);
    outlined init with copy of TaskPriority?(v18, v17, &_sScPSgMd, &_sScPSgMR);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v15;
    v22[5] = &async function pointer to partial apply for specialized closure #1 in CollaborationConnectionManager.leaveActivity();
    v22[6] = v19;

    v23 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v17, &async function pointer to partial apply for specialized closure #1 in FastSyncStateMachine.leaveActivity(priority:_:), v22);
    outlined destroy of TaskPriority?(v18, &_sScPSgMd, &_sScPSgMR);
    v2[14] = v32;
    v2[15] = v23;
    goto LABEL_11;
  }

  if (!v7)
  {
    v14 = v0[5];

    outlined copy of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v5, v4, v6);
    v32 = v5;
    v15 = v4;
    goto LABEL_10;
  }

  if (v7 == 1)
  {
    v9 = v0[6];
    v8 = v0[7];
    v10 = v0[5];
    outlined init with copy of TaskPriority?(v8, v9, &_sScPSgMd, &_sScPSgMR);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v4;
    v11[5] = &async function pointer to partial apply for specialized closure #1 in CollaborationConnectionManager.leaveActivity();
    v11[6] = v10;
    v11[7] = v5;

    outlined copy of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v5, v4, v6);

    v12 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for specialized closure #2 in FastSyncStateMachine.leaveActivity(priority:_:), v11);
    outlined destroy of TaskPriority?(v8, &_sScPSgMd, &_sScPSgMR);
    v2[14] = v5;
    v2[15] = v12;
LABEL_11:
    v2[16] = 0x4000000000000000;
    outlined consume of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v5, v4, v6);
    v24 = 1;
    goto LABEL_16;
  }

  v25 = v0[7];
  v26 = v0[5];

  outlined copy of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v5, v4, v6);

  outlined destroy of TaskPriority?(v25, &_sScPSgMd, &_sScPSgMR);
LABEL_15:
  v24 = 0;
LABEL_16:
  v28 = v0[6];
  v27 = v0[7];
  v29 = v0[5];
  swift_endAccess();

  v30 = v0[1];

  return v30(v24);
}

{
  v1[5] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.leaveActivity());
}

{
  v1 = v0[7];
  v2 = v0[5];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  swift_beginAccess();
  v5 = v2[14];
  v4 = v2[15];
  v6 = v2[16];
  v7 = v6 >> 61;
  if ((v6 >> 61) > 2)
  {
    if (v7 != 3)
    {
      v13 = v0[5];
      if (v7 == 4)
      {

        outlined copy of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v5, v4, v6);
      }

      else
      {
      }

      outlined destroy of TaskPriority?(v0[7], &_sScPSgMd, &_sScPSgMR);
      v2[14] = 0;
      v2[15] = 0;
      v2[16] = 0xA000000000000000;
      outlined consume of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v5, v4, v6);
      goto LABEL_15;
    }

    v16 = v0[5];
    v15 = v6 & 0x1FFFFFFFFFFFFFFFLL;

    outlined copy of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v5, v4, v6);

    v32 = v4;
LABEL_10:
    v17 = v0[6];
    v18 = v0[7];
    v19 = v0[5];
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMd, &_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMR);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
    MEMORY[0x2743D73C0](v15, v20, v21, MEMORY[0x277D84950]);
    outlined init with copy of TaskPriority?(v18, v17, &_sScPSgMd, &_sScPSgMR);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v15;
    v22[5] = &async function pointer to partial apply for specialized closure #1 in CollaborationConnectionManager.leaveActivity();
    v22[6] = v19;

    v23 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v17, &async function pointer to partial apply for specialized closure #1 in FastSyncStateMachine.leaveActivity(priority:_:), v22);
    outlined destroy of TaskPriority?(v18, &_sScPSgMd, &_sScPSgMR);
    v2[14] = v32;
    v2[15] = v23;
    goto LABEL_11;
  }

  if (!v7)
  {
    v14 = v0[5];

    outlined copy of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v5, v4, v6);
    v32 = v5;
    v15 = v4;
    goto LABEL_10;
  }

  if (v7 == 1)
  {
    v9 = v0[6];
    v8 = v0[7];
    v10 = v0[5];
    outlined init with copy of TaskPriority?(v8, v9, &_sScPSgMd, &_sScPSgMR);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v4;
    v11[5] = &async function pointer to partial apply for specialized closure #1 in CollaborationConnectionManager.leaveActivity();
    v11[6] = v10;
    v11[7] = v5;

    outlined copy of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v5, v4, v6);

    v12 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for specialized closure #2 in FastSyncStateMachine.leaveActivity(priority:_:), v11);
    outlined destroy of TaskPriority?(v8, &_sScPSgMd, &_sScPSgMR);
    v2[14] = v5;
    v2[15] = v12;
LABEL_11:
    v2[16] = 0x4000000000000000;
    outlined consume of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v5, v4, v6);
    v24 = 1;
    goto LABEL_16;
  }

  v25 = v0[7];
  v26 = v0[5];

  outlined copy of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v5, v4, v6);

  outlined destroy of TaskPriority?(v25, &_sScPSgMd, &_sScPSgMR);
LABEL_15:
  v24 = 0;
LABEL_16:
  v28 = v0[6];
  v27 = v0[7];
  v29 = v0[5];
  swift_endAccess();

  v30 = v0[1];

  return v30(v24);
}

uint64_t specialized closure #1 in CollaborationConnectionManager.leaveActivity()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = specialized closure #1 in CollaborationConnectionManager.startActivity();

  return specialized CollaborationConnectionManager.leaveGroupSessionProvider(_:)();
}

{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized CollaborationConnectionManager.leaveGroupSessionProvider(_:)();
}

uint64_t specialized CollaborationConnectionManager.joinGroupSessionProvider(_:)(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.joinGroupSessionProvider(_:));
}

{
  v2[17] = a1;
  v2[18] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.joinGroupSessionProvider(_:));
}

uint64_t specialized CollaborationConnectionManager.joinGroupSessionProvider(_:)()
{
  v18 = v0;
  if (one-time initialization token for tabGroup != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = type metadata accessor for Logger();
  v0[20] = __swift_project_value_buffer(v2, static Logger.tabGroup);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[18];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136446210;
    swift_beginAccess();
    v8 = *(v5 + 136);
    v9 = *(v5 + 144);

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_272D1B000, v3, v4, "Will join groupSessionProvider for activity: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x2743D7F00](v7, -1, -1);
    MEMORY[0x2743D7F00](v6, -1, -1);
  }

  v11 = *(MEMORY[0x277CCB150] + 4);
  v12 = swift_task_alloc();
  v0[21] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMd, &_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMR);
  v14 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type PersonalGroupSessionProvider<PersonalDeviceCoordinationActivity> and conformance PersonalGroupSessionProvider<A>, &_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMd, &_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMR);
  *v12 = v0;
  v12[1] = specialized CollaborationConnectionManager.joinGroupSessionProvider(_:);
  v15 = v0[17];

  return MEMORY[0x28211FBF0](v13, v14);
}

{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 144);
  if (v0)
  {
    v6 = specialized CollaborationConnectionManager.joinGroupSessionProvider(_:);
  }

  else
  {
    v6 = specialized CollaborationConnectionManager.joinGroupSessionProvider(_:);
  }

  return MEMORY[0x2822009F8](v6);
}

{
  v22 = v0;
  v1 = v0[20];
  v2 = v0[18];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[18];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136446210;
    swift_beginAccess();
    v8 = *(v5 + 136);
    v9 = *(v5 + 144);

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v21);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_272D1B000, v3, v4, "Did join groupSessionProvider for activity: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x2743D7F00](v7, -1, -1);
    MEMORY[0x2743D7F00](v6, -1, -1);
  }

  v11 = v0[18];
  v12 = v0[19];
  v13 = v0[17];
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type CollaborationConnectionManager<PersonalDeviceCoordinationActivity, PersonalGroupSessionProvider<PersonalDeviceCoordinationActivity>, PresenceUpdateMessage> and conformance CollaborationConnectionManager<A, B, C>, &_s17WebBookmarksSwift30CollaborationConnectionManagerCyAA34PersonalDeviceCoordinationActivityV15GroupActivities0gK15SessionProviderCyAEGAA21PresenceUpdateMessageVGMd, &_s17WebBookmarksSwift30CollaborationConnectionManagerCyAA34PersonalDeviceCoordinationActivityV15GroupActivities0gK15SessionProviderCyAEGAA21PresenceUpdateMessageVGMR);
  v16 = swift_allocObject();
  v16[2] = v11;
  v16[3] = v15;
  v16[4] = v11;
  v16[5] = v13;
  swift_retain_n();

  v17 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for specialized closure #1 in CollaborationConnectionManager.joinGroupSessionProvider(_:), v16);
  swift_beginAccess();
  specialized FastSyncStateMachine.didStartActivity(sessionTask:groupSessionProvider:)(v17, v13);
  swift_endAccess();

  v18 = v0[19];

  v19 = v0[1];

  return v19();
}

{
  v18 = v0;
  if (one-time initialization token for tabGroup != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = type metadata accessor for Logger();
  v0[20] = __swift_project_value_buffer(v2, static Logger.tabGroup);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[18];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136446210;
    swift_beginAccess();
    v8 = *(v5 + 136);
    v9 = *(v5 + 144);

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_272D1B000, v3, v4, "Will join groupSessionProvider for activity: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x2743D7F00](v7, -1, -1);
    MEMORY[0x2743D7F00](v6, -1, -1);
  }

  v11 = *(MEMORY[0x277CCB150] + 4);
  v12 = swift_task_alloc();
  v0[21] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMd, &_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMR);
  v14 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>, &_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMd, &_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMR);
  *v12 = v0;
  v12[1] = specialized CollaborationConnectionManager.joinGroupSessionProvider(_:);
  v15 = v0[17];

  return MEMORY[0x28211FBF0](v13, v14);
}

{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 144);
  if (v0)
  {
    v6 = specialized CollaborationConnectionManager.joinGroupSessionProvider(_:);
  }

  else
  {
    v6 = specialized CollaborationConnectionManager.joinGroupSessionProvider(_:);
  }

  return MEMORY[0x2822009F8](v6);
}

{
  v22 = v0;
  v1 = v0[20];
  v2 = v0[18];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[18];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136446210;
    swift_beginAccess();
    v8 = *(v5 + 136);
    v9 = *(v5 + 144);

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v21);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_272D1B000, v3, v4, "Did join groupSessionProvider for activity: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x2743D7F00](v7, -1, -1);
    MEMORY[0x2743D7F00](v6, -1, -1);
  }

  v11 = v0[18];
  v12 = v0[19];
  v13 = v0[17];
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type CollaborationConnectionManager<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>, PresenceUpdateMessage> and conformance CollaborationConnectionManager<A, B, C>, &_s17WebBookmarksSwift30CollaborationConnectionManagerCyAA07CKShareD8ActivityVAA0G20GroupSessionProviderCyAEGAA21PresenceUpdateMessageVGMd, &_s17WebBookmarksSwift30CollaborationConnectionManagerCyAA07CKShareD8ActivityVAA0G20GroupSessionProviderCyAEGAA21PresenceUpdateMessageVGMR);
  v16 = swift_allocObject();
  v16[2] = v11;
  v16[3] = v15;
  v16[4] = v11;
  v16[5] = v13;
  swift_retain_n();

  v17 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for specialized closure #1 in CollaborationConnectionManager.joinGroupSessionProvider(_:), v16);
  swift_beginAccess();
  specialized FastSyncStateMachine.didStartActivity(sessionTask:groupSessionProvider:)(v17, v13);
  swift_endAccess();

  v18 = v0[19];

  v19 = v0[1];

  return v19();
}

{
  v24 = v0;
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[18];

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[22];
    v8 = v0[18];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v9 = 136446466;
    swift_beginAccess();
    v12 = *(v8 + 136);
    v13 = *(v8 + 144);

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v23);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    v15 = v7;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_272D1B000, v5, v6, "Did fail to join groupSessionProvider for activity %{public}s, error: %@", v9, 0x16u);
    outlined destroy of TaskPriority?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2743D7F00](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x2743D7F00](v11, -1, -1);
    MEMORY[0x2743D7F00](v9, -1, -1);
  }

  v17 = v0[22];
  v19 = v0[17];
  v18 = v0[18];
  swift_beginAccess();
  specialized FastSyncStateMachine.startActivity(_:didFailWith:)(v19, v17);
  swift_endAccess();

  v20 = v0[19];

  v21 = v0[1];

  return v21();
}

uint64_t specialized closure #1 in CollaborationConnectionManager.joinGroupSessionProvider(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized CollaborationConnectionManager.waitForGroupSessions(with:)(a5);
}

{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized CollaborationConnectionManager.waitForGroupSessions(with:)(a5);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  outlined init with copy of TaskPriority?(a3, v26 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of TaskPriority?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
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

      outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);

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

  outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);
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

void specialized FastSyncStateMachine.didStartActivity(sessionTask:groupSessionProvider:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = 1 << (v5 >> 61);
  if ((v6 & 0x26) == 0 && ((v6 & 0x11) == 0 ? (v7 = v2[1]) : (v7 = *v2), v7 == a2))
  {

    outlined consume of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v3, v4, v5);
    *v2 = a2;
    v2[1] = a1;
    v2[2] = 0x2000000000000000;
  }

  else
  {
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.tabGroup);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_272D1B000, oslog, v9, "Ignoring didStartActivity() for a group session provider we've stopped tracking", v10, 2u);
      MEMORY[0x2743D7F00](v10, -1, -1);
    }
  }
}

void specialized FastSyncStateMachine.startActivity(_:didFailWith:)(uint64_t a1, void *a2)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = v7 >> 61;
  if ((v7 >> 61) > 2)
  {
    if (v8 != 3)
    {
      if (v8 == 4)
      {
        v11 = *v2;

        v12 = v6;
      }

      goto LABEL_9;
    }

    v13 = *v2;

    v10 = v6;
  }

  else
  {
    if ((v8 - 1) < 2)
    {
      goto LABEL_9;
    }

    v9 = *v2;

    v10 = v5;
  }

  if (v10 == a1)
  {

    v21 = a2;
    outlined consume of FastSyncStateMachine<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>>.State(v5, v6, v7);
    *v2 = a1;
    v2[1] = a2;
    v2[2] = 0x8000000000000000;
    return;
  }

LABEL_9:
  if (one-time initialization token for tabGroup != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.tabGroup);
  v15 = a2;
  oslog = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = a2;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v20;
    *v18 = v20;
    _os_log_impl(&dword_272D1B000, oslog, v16, "Ignoring startActivity(_:didFailWith:) for a group session provider we've stopped tracking %@", v17, 0xCu);
    outlined destroy of TaskPriority?(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2743D7F00](v18, -1, -1);
    MEMORY[0x2743D7F00](v17, -1, -1);
  }
}

uint64_t specialized CollaborationConnectionManager.leaveGroupSessionProvider(_:)()
{
  *(v1 + 40) = v0;
  v2 = *(MEMORY[0x277CCB158] + 4);
  v3 = swift_task_alloc();
  *(v1 + 48) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMd, &_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMR);
  v5 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type PersonalGroupSessionProvider<PersonalDeviceCoordinationActivity> and conformance PersonalGroupSessionProvider<A>, &_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMd, &_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMR);
  *v3 = v1;
  v3[1] = specialized CollaborationConnectionManager.leaveGroupSessionProvider(_:);

  return MEMORY[0x28211FBF8](v4, v5);
}

{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {
    v4 = v3[5];

    return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.leaveGroupSessionProvider(_:));
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

{
  *(v1 + 40) = v0;
  v2 = *(MEMORY[0x277CCB158] + 4);
  v3 = swift_task_alloc();
  *(v1 + 48) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMd, &_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMR);
  v5 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>, &_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMd, &_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMR);
  *v3 = v1;
  v3[1] = specialized CollaborationConnectionManager.leaveGroupSessionProvider(_:);

  return MEMORY[0x28211FBF8](v4, v5);
}

{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {
    v4 = v3[5];

    return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.leaveGroupSessionProvider(_:));
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

{
  v21 = v0;
  if (one-time initialization token for tabGroup != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[5];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.tabGroup);

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[7];
  if (v7)
  {
    v9 = v0[5];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v10 = 136446466;
    swift_beginAccess();
    v13 = *(v9 + 136);
    v14 = *(v9 + 144);

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v20);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = v8;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&dword_272D1B000, v5, v6, "Did fail to leave groupSessionProvider for activity %{public}s, error: %@", v10, 0x16u);
    outlined destroy of TaskPriority?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2743D7F00](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x2743D7F00](v12, -1, -1);
    MEMORY[0x2743D7F00](v10, -1, -1);
  }

  else
  {
  }

  v18 = v0[1];

  return v18();
}

uint64_t specialized CollaborationConnectionManager.waitForGroupSessions(with:)(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = type metadata accessor for CancellationError();
  v2[18] = v3;
  v4 = *(v3 - 8);
  v2[19] = v4;
  v5 = *(v4 + 64) + 15;
  v2[20] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR) - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v7 = type metadata accessor for Participant();
  v2[22] = v7;
  v8 = *(v7 - 8);
  v2[23] = v8;
  v9 = *(v8 + 64) + 15;
  v2[24] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC8SessionsVy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV_GMd, &_s15GroupActivities0A7SessionC8SessionsVy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV_GMR);
  v2[25] = v10;
  v11 = *(v10 - 8);
  v2[26] = v11;
  v12 = *(v11 + 64) + 15;
  v2[27] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC8SessionsV8IteratorVy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV__GMd, &_s15GroupActivities0A7SessionC8SessionsV8IteratorVy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV__GMR);
  v2[28] = v13;
  v14 = *(v13 - 8);
  v2[29] = v14;
  v15 = *(v14 + 64) + 15;
  v2[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.waitForGroupSessions(with:));
}

{
  v2[16] = a1;
  v2[17] = v1;
  v3 = type metadata accessor for CancellationError();
  v2[18] = v3;
  v4 = *(v3 - 8);
  v2[19] = v4;
  v5 = *(v4 + 64) + 15;
  v2[20] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR) - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v7 = type metadata accessor for Participant();
  v2[22] = v7;
  v8 = *(v7 - 8);
  v2[23] = v8;
  v9 = *(v8 + 64) + 15;
  v2[24] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC8SessionsVy17WebBookmarksSwift28CKShareCollaborationActivityV_GMd, &_s15GroupActivities0A7SessionC8SessionsVy17WebBookmarksSwift28CKShareCollaborationActivityV_GMR);
  v2[25] = v10;
  v11 = *(v10 - 8);
  v2[26] = v11;
  v12 = *(v11 + 64) + 15;
  v2[27] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC8SessionsV8IteratorVy17WebBookmarksSwift28CKShareCollaborationActivityV__GMd, &_s15GroupActivities0A7SessionC8SessionsV8IteratorVy17WebBookmarksSwift28CKShareCollaborationActivityV__GMR);
  v2[28] = v13;
  v14 = *(v13 - 8);
  v2[29] = v14;
  v15 = *(v14 + 64) + 15;
  v2[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.waitForGroupSessions(with:));
}

uint64_t specialized CollaborationConnectionManager.waitForGroupSessions(with:)()
{
  v1 = v0[17];
  swift_beginAccess();
  v2 = *(v1 + 136);
  v0[31] = v2;
  v3 = *(v1 + 144);
  v0[32] = v3;
  v0[11] = v2;
  v0[12] = v3;

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.waitForGroupSessions(with:));
}

{
  v1 = v0[30];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  v5 = v0[16];
  v6 = v0[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMd, &_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMR);
  lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type PersonalGroupSessionProvider<PersonalDeviceCoordinationActivity> and conformance PersonalGroupSessionProvider<A>, &_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMd, &_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMR);
  GroupSessionProvider.sessions.getter();
  GroupSession.Sessions.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v7 = *v6;
  v0[33] = *(*v6 + 160);
  v0[34] = *(v7 + 168);
  v8 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type GroupSession<PersonalDeviceCoordinationActivity>.Sessions.Iterator and conformance GroupSession<A>.Sessions.Iterator, &_s15GroupActivities0A7SessionC8SessionsV8IteratorVy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV__GMd, &_s15GroupActivities0A7SessionC8SessionsV8IteratorVy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV__GMR);
  v9 = *(MEMORY[0x277D856D0] + 4);
  v10 = swift_task_alloc();
  v0[35] = v10;
  *v10 = v0;
  v10[1] = specialized CollaborationConnectionManager.waitForGroupSessions(with:);
  v11 = v0[30];
  v12 = v0[28];

  return MEMORY[0x282200308](v0 + 13, v12, v8);
}

{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = specialized CollaborationConnectionManager.waitForGroupSessions(with:);
  }

  else
  {
    v3 = specialized CollaborationConnectionManager.waitForGroupSessions(with:);
  }

  return MEMORY[0x2822009F8](v3);
}

{
  *(v0 + 296) = *(v0 + 104);
  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.waitForGroupSessions(with:));
}

{
  v23 = v0;
  if (v0[37])
  {
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v1 = v0[32];
    v2 = type metadata accessor for Logger();
    v0[38] = __swift_project_value_buffer(v2, static Logger.tabGroup);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[32];
    if (v5)
    {
      v7 = v0[31];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 136446210;
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v22);

      *(v8 + 4) = v10;
      _os_log_impl(&dword_272D1B000, v3, v4, "Did begin group session for activity: %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x2743D7F00](v9, -1, -1);
      MEMORY[0x2743D7F00](v8, -1, -1);
    }

    else
    {
      v19 = v0[32];
    }

    v20 = v0[24];
    v21 = v0[17];
    GroupSession.localParticipant.getter();

    return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.waitForGroupSessions(with:));
  }

  else
  {
    v11 = v0[32];
    (*(v0[29] + 8))(v0[30], v0[28]);

    v12 = v0[30];
    v13 = v0[27];
    v14 = v0[24];
    v16 = v0[20];
    v15 = v0[21];

    v17 = v0[1];

    return v17();
  }
}

{
  v1 = v0[33];
  v2 = v0[23];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[17];
  (*(v2 + 32))(v3, v0[24], v4);
  v6 = *(v2 + 56);
  v0[39] = v6;
  v0[40] = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v3, 0, 1, v4);
  swift_beginAccess();
  outlined assign with take of Participant?(v3, v5 + v1);
  swift_endAccess();

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.waitForGroupSessions(with:));
}

{
  v1 = v0[37];
  v2 = v0[17];
  v3 = swift_task_alloc();
  v0[41] = v3;
  v3[2] = v2;
  v3[3] = v1;
  v3[4] = v0 + 11;
  v4 = *(MEMORY[0x277D859B8] + 4);
  v5 = swift_task_alloc();
  v0[42] = v5;
  *v5 = v0;
  v5[1] = specialized CollaborationConnectionManager.waitForGroupSessions(with:);

  return MEMORY[0x282200740]();
}

{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v7 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = specialized CollaborationConnectionManager.waitForGroupSessions(with:);
  }

  else
  {
    v5 = *(v2 + 328);

    v4 = specialized CollaborationConnectionManager.waitForGroupSessions(with:);
  }

  return MEMORY[0x2822009F8](v4);
}

{
  v1 = *(v0 + 136);
  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.waitForGroupSessions(with:));
}

{
  v38 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 328);
  v3 = *(v0 + 160);
  v4 = *(v0 + 144);

  *(v0 + 120) = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 344);
    v7 = *(v0 + 296);
    v8 = *(v0 + 256);
    v10 = *(v0 + 152);
    v9 = *(v0 + 160);
    v11 = *(v0 + 144);
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));

    (*(v10 + 8))(v9, v11);

    v12 = *(v0 + 240);
    v13 = *(v0 + 216);
    v14 = *(v0 + 192);
    v16 = *(v0 + 160);
    v15 = *(v0 + 168);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v19 = *(v0 + 344);
    v20 = *(v0 + 304);
    v21 = *(v0 + 256);

    v22 = v19;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 344);
    v27 = *(v0 + 256);
    if (v25)
    {
      v28 = *(v0 + 248);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v37 = v31;
      *v29 = 136446466;
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v27, &v37);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2112;
      v33 = v26;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 14) = v34;
      *v30 = v34;
      _os_log_impl(&dword_272D1B000, v23, v24, "Retrying after group session for activity: %{public}s unexpectedly failed: %@", v29, 0x16u);
      outlined destroy of TaskPriority?(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x2743D7F00](v30, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x2743D7F00](v31, -1, -1);
      MEMORY[0x2743D7F00](v29, -1, -1);
    }

    else
    {
      v35 = *(v0 + 256);
    }

    v36 = *(v0 + 136);

    return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.waitForGroupSessions(with:));
  }
}

{
  v1 = *(v0 + 320);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  v4 = *(v0 + 168);
  v5 = *(v0 + 136);
  (*(v0 + 312))(v4, 1, 1, *(v0 + 176));
  swift_beginAccess();
  outlined assign with take of Participant?(v4, v5 + v3);
  swift_endAccess();
  v6 = *(v5 + v2);
  *(v5 + v2) = MEMORY[0x277D84FA0];

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.waitForGroupSessions(with:));
}

{
  v1 = v0[37];

  v2 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type GroupSession<PersonalDeviceCoordinationActivity>.Sessions.Iterator and conformance GroupSession<A>.Sessions.Iterator, &_s15GroupActivities0A7SessionC8SessionsV8IteratorVy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV__GMd, &_s15GroupActivities0A7SessionC8SessionsV8IteratorVy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV__GMR);
  v3 = *(MEMORY[0x277D856D0] + 4);
  v4 = swift_task_alloc();
  v0[35] = v4;
  *v4 = v0;
  v4[1] = specialized CollaborationConnectionManager.waitForGroupSessions(with:);
  v5 = v0[30];
  v6 = v0[28];

  return MEMORY[0x282200308](v0 + 13, v6, v2);
}

{
  v1 = v0[17];
  swift_beginAccess();
  v2 = *(v1 + 136);
  v0[31] = v2;
  v3 = *(v1 + 144);
  v0[32] = v3;
  v0[11] = v2;
  v0[12] = v3;

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.waitForGroupSessions(with:));
}

{
  v1 = v0[30];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  v5 = v0[16];
  v6 = v0[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMd, &_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMR);
  lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>, &_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMd, &_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMR);
  GroupSessionProvider.sessions.getter();
  GroupSession.Sessions.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v7 = *v6;
  v0[33] = *(*v6 + 160);
  v0[34] = *(v7 + 168);
  v8 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type GroupSession<CKShareCollaborationActivity>.Sessions.Iterator and conformance GroupSession<A>.Sessions.Iterator, &_s15GroupActivities0A7SessionC8SessionsV8IteratorVy17WebBookmarksSwift28CKShareCollaborationActivityV__GMd, &_s15GroupActivities0A7SessionC8SessionsV8IteratorVy17WebBookmarksSwift28CKShareCollaborationActivityV__GMR);
  v9 = *(MEMORY[0x277D856D0] + 4);
  v10 = swift_task_alloc();
  v0[35] = v10;
  *v10 = v0;
  v10[1] = specialized CollaborationConnectionManager.waitForGroupSessions(with:);
  v11 = v0[30];
  v12 = v0[28];

  return MEMORY[0x282200308](v0 + 13, v12, v8);
}

{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = specialized CollaborationConnectionManager.waitForGroupSessions(with:);
  }

  else
  {
    v3 = specialized CollaborationConnectionManager.waitForGroupSessions(with:);
  }

  return MEMORY[0x2822009F8](v3);
}

{
  *(v0 + 296) = *(v0 + 104);
  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.waitForGroupSessions(with:));
}

{
  v23 = v0;
  if (v0[37])
  {
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v1 = v0[32];
    v2 = type metadata accessor for Logger();
    v0[38] = __swift_project_value_buffer(v2, static Logger.tabGroup);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[32];
    if (v5)
    {
      v7 = v0[31];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 136446210;
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v22);

      *(v8 + 4) = v10;
      _os_log_impl(&dword_272D1B000, v3, v4, "Did begin group session for activity: %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x2743D7F00](v9, -1, -1);
      MEMORY[0x2743D7F00](v8, -1, -1);
    }

    else
    {
      v19 = v0[32];
    }

    v20 = v0[24];
    v21 = v0[17];
    GroupSession.localParticipant.getter();

    return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.waitForGroupSessions(with:));
  }

  else
  {
    v11 = v0[32];
    (*(v0[29] + 8))(v0[30], v0[28]);

    v12 = v0[30];
    v13 = v0[27];
    v14 = v0[24];
    v16 = v0[20];
    v15 = v0[21];

    v17 = v0[1];

    return v17();
  }
}

{
  *(v0 + 112) = *(v0 + 288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

{
  v1 = v0[33];
  v2 = v0[23];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[17];
  (*(v2 + 32))(v3, v0[24], v4);
  v6 = *(v2 + 56);
  v0[39] = v6;
  v0[40] = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v3, 0, 1, v4);
  swift_beginAccess();
  outlined assign with take of Participant?(v3, v5 + v1);
  swift_endAccess();

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.waitForGroupSessions(with:));
}

{
  v1 = v0[37];
  v2 = v0[17];
  v3 = swift_task_alloc();
  v0[41] = v3;
  v3[2] = v2;
  v3[3] = v1;
  v3[4] = v0 + 11;
  v4 = *(MEMORY[0x277D859B8] + 4);
  v5 = swift_task_alloc();
  v0[42] = v5;
  *v5 = v0;
  v5[1] = specialized CollaborationConnectionManager.waitForGroupSessions(with:);

  return MEMORY[0x282200740]();
}

{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v7 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = specialized CollaborationConnectionManager.waitForGroupSessions(with:);
  }

  else
  {
    v5 = *(v2 + 328);

    v4 = specialized CollaborationConnectionManager.waitForGroupSessions(with:);
  }

  return MEMORY[0x2822009F8](v4);
}

{
  v1 = *(v0 + 136);
  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.waitForGroupSessions(with:));
}

{
  v38 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 328);
  v3 = *(v0 + 160);
  v4 = *(v0 + 144);

  *(v0 + 120) = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 344);
    v7 = *(v0 + 296);
    v8 = *(v0 + 256);
    v10 = *(v0 + 152);
    v9 = *(v0 + 160);
    v11 = *(v0 + 144);
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));

    (*(v10 + 8))(v9, v11);

    v12 = *(v0 + 240);
    v13 = *(v0 + 216);
    v14 = *(v0 + 192);
    v16 = *(v0 + 160);
    v15 = *(v0 + 168);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v19 = *(v0 + 344);
    v20 = *(v0 + 304);
    v21 = *(v0 + 256);

    v22 = v19;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 344);
    v27 = *(v0 + 256);
    if (v25)
    {
      v28 = *(v0 + 248);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v37 = v31;
      *v29 = 136446466;
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v27, &v37);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2112;
      v33 = v26;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 14) = v34;
      *v30 = v34;
      _os_log_impl(&dword_272D1B000, v23, v24, "Retrying after group session for activity: %{public}s unexpectedly failed: %@", v29, 0x16u);
      outlined destroy of TaskPriority?(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x2743D7F00](v30, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x2743D7F00](v31, -1, -1);
      MEMORY[0x2743D7F00](v29, -1, -1);
    }

    else
    {
      v35 = *(v0 + 256);
    }

    v36 = *(v0 + 136);

    return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.waitForGroupSessions(with:));
  }
}

{
  v1 = *(v0 + 320);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  v4 = *(v0 + 168);
  v5 = *(v0 + 136);
  (*(v0 + 312))(v4, 1, 1, *(v0 + 176));
  swift_beginAccess();
  outlined assign with take of Participant?(v4, v5 + v3);
  swift_endAccess();
  v6 = *(v5 + v2);
  *(v5 + v2) = MEMORY[0x277D84FA0];

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.waitForGroupSessions(with:));
}

{
  v1 = v0[37];

  v2 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type GroupSession<CKShareCollaborationActivity>.Sessions.Iterator and conformance GroupSession<A>.Sessions.Iterator, &_s15GroupActivities0A7SessionC8SessionsV8IteratorVy17WebBookmarksSwift28CKShareCollaborationActivityV__GMd, &_s15GroupActivities0A7SessionC8SessionsV8IteratorVy17WebBookmarksSwift28CKShareCollaborationActivityV__GMR);
  v3 = *(MEMORY[0x277D856D0] + 4);
  v4 = swift_task_alloc();
  v0[35] = v4;
  *v4 = v0;
  v4[1] = specialized CollaborationConnectionManager.waitForGroupSessions(with:);
  v5 = v0[30];
  v6 = v0[28];

  return MEMORY[0x282200308](v0 + 13, v6, v2);
}

uint64_t specialized closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:));
}

{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:));
}

uint64_t specialized closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v17 = v4;
  v5 = v0[2];
  v6 = v0[3];
  v7 = type metadata accessor for TaskPriority();
  v8 = *(*(v7 - 8) + 56);
  v8(v1, 1, 1, v7);
  v9 = v8;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v3;
  v10[5] = v6;
  v10[6] = v4;
  v10[7] = v2;

  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntFyt_s5Error_pTg5(v1, &async function pointer to partial apply for specialized closure #1 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:), v10);
  outlined destroy of TaskPriority?(v1, &_sScPSgMd, &_sScPSgMR);
  v9(v1, 1, 1, v7);
  v11 = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v3;
  v12[5] = v6;
  v12[6] = v17;
  v12[7] = v2;

  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntFyt_s5Error_pTg5(v1, &async function pointer to partial apply for specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:), v12);
  outlined destroy of TaskPriority?(v1, &_sScPSgMd, &_sScPSgMR);
  v11(v1, 1, 1, v7);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v6;
  v13[5] = v3;

  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntFyt_s5Error_pTg5(v1, &async function pointer to partial apply for specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:), v13);
  outlined destroy of TaskPriority?(v1, &_sScPSgMd, &_sScPSgMR);
  v14 = swift_task_alloc();
  v0[8] = v14;
  *v14 = v0;
  v14[1] = specialized closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);
  v15 = v0[2];

  return specialized ThrowingTaskGroup.waitForAll(isolation:)(0, 0);
}

{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v17 = v4;
  v5 = v0[2];
  v6 = v0[3];
  v7 = type metadata accessor for TaskPriority();
  v8 = *(*(v7 - 8) + 56);
  v8(v1, 1, 1, v7);
  v9 = v8;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v3;
  v10[5] = v6;
  v10[6] = v4;
  v10[7] = v2;

  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntFyt_s5Error_pTg5(v1, &async function pointer to partial apply for specialized closure #1 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:), v10);
  outlined destroy of TaskPriority?(v1, &_sScPSgMd, &_sScPSgMR);
  v9(v1, 1, 1, v7);
  v11 = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v3;
  v12[5] = v6;
  v12[6] = v17;
  v12[7] = v2;

  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntFyt_s5Error_pTg5(v1, &async function pointer to partial apply for specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:), v12);
  outlined destroy of TaskPriority?(v1, &_sScPSgMd, &_sScPSgMR);
  v11(v1, 1, 1, v7);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v6;
  v13[5] = v3;

  _sScg7addTask8priority9operationyScPSg_xyYaKYAcntFyt_s5Error_pTg5(v1, &async function pointer to partial apply for specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:), v13);
  outlined destroy of TaskPriority?(v1, &_sScPSgMd, &_sScPSgMR);
  v14 = swift_task_alloc();
  v0[8] = v14;
  *v14 = v0;
  v14[1] = specialized closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);
  v15 = v0[2];

  return specialized ThrowingTaskGroup.waitForAll(isolation:)(0, 0);
}

{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t specialized closure #1 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[3] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC5StateOy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV_GMd, &_s15GroupActivities0A7SessionC5StateOy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV_GMR);
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC5StateOy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV_GSgMd, &_s15GroupActivities0A7SessionC5StateOy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV_GSgMR) - 8) + 64) + 15;
  v7[9] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0Vy15GroupActivities0E7SessionC5StateOy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV_G_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0Vy15GroupActivities0E7SessionC5StateOy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV_G_GGMR);
  v7[10] = v12;
  v13 = *(v12 - 8);
  v7[11] = v13;
  v14 = *(v13 + 64) + 15;
  v7[12] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15GroupActivities0D7SessionC5StateOy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV_G_GMd, &_s7Combine9PublishedV9PublisherVy15GroupActivities0D7SessionC5StateOy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV_G_GMR);
  v7[13] = v15;
  v16 = *(v15 - 8);
  v7[14] = v16;
  v17 = *(v16 + 64) + 15;
  v7[15] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy15GroupActivities0F7SessionC5StateOy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV_G_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy15GroupActivities0F7SessionC5StateOy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV_G_G_GMR);
  v7[16] = v18;
  v19 = *(v18 - 8);
  v7[17] = v19;
  v20 = *(v19 + 64) + 15;
  v7[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #1 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:));
}

{
  v7[4] = a6;
  v7[5] = a7;
  v7[3] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC5StateOy17WebBookmarksSwift28CKShareCollaborationActivityV_GMd, &_s15GroupActivities0A7SessionC5StateOy17WebBookmarksSwift28CKShareCollaborationActivityV_GMR);
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC5StateOy17WebBookmarksSwift28CKShareCollaborationActivityV_GSgMd, &_s15GroupActivities0A7SessionC5StateOy17WebBookmarksSwift28CKShareCollaborationActivityV_GSgMR) - 8) + 64) + 15;
  v7[9] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0Vy15GroupActivities0E7SessionC5StateOy17WebBookmarksSwift28CKShareCollaborationActivityV_G_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0Vy15GroupActivities0E7SessionC5StateOy17WebBookmarksSwift28CKShareCollaborationActivityV_G_GGMR);
  v7[10] = v12;
  v13 = *(v12 - 8);
  v7[11] = v13;
  v14 = *(v13 + 64) + 15;
  v7[12] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15GroupActivities0D7SessionC5StateOy17WebBookmarksSwift28CKShareCollaborationActivityV_G_GMd, &_s7Combine9PublishedV9PublisherVy15GroupActivities0D7SessionC5StateOy17WebBookmarksSwift28CKShareCollaborationActivityV_G_GMR);
  v7[13] = v15;
  v16 = *(v15 - 8);
  v7[14] = v16;
  v17 = *(v16 + 64) + 15;
  v7[15] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy15GroupActivities0F7SessionC5StateOy17WebBookmarksSwift28CKShareCollaborationActivityV_G_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy15GroupActivities0F7SessionC5StateOy17WebBookmarksSwift28CKShareCollaborationActivityV_G_G_GMR);
  v7[16] = v18;
  v19 = *(v18 - 8);
  v7[17] = v19;
  v20 = *(v19 + 64) + 15;
  v7[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #1 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:));
}

uint64_t specialized closure #1 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)()
{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[3];
  GroupSession.$state.getter();
  v9 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type Published<GroupSession<PersonalDeviceCoordinationActivity>.State>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy15GroupActivities0D7SessionC5StateOy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV_G_GMd, &_s7Combine9PublishedV9PublisherVy15GroupActivities0D7SessionC5StateOy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV_G_GMR);
  MEMORY[0x2743D7130](v4, v9);
  (*(v3 + 8))(v2, v4);
  AsyncPublisher.makeAsyncIterator()();
  (*(v7 + 8))(v5, v6);
  v10 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type AsyncPublisher<Published<GroupSession<PersonalDeviceCoordinationActivity>.State>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy15GroupActivities0F7SessionC5StateOy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV_G_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy15GroupActivities0F7SessionC5StateOy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV_G_G_GMR);
  v11 = *(MEMORY[0x277D856D0] + 4);
  v12 = swift_task_alloc();
  v0[19] = v12;
  *v12 = v0;
  v12[1] = specialized closure #1 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);
  v13 = v0[18];
  v14 = v0[16];
  v15 = v0[9];

  return MEMORY[0x282200308](v15, v14, v10);
}

{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = specialized closure #1 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);
  }

  else
  {
    v3 = specialized closure #1 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);
  }

  return MEMORY[0x2822009F8](v3);
}

{
  return MEMORY[0x2822009F8](specialized closure #1 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:));
}

{
  v35 = v0;
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v4 = v0[5];
    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.tabGroup);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v9 = v0[4];
      v8 = v0[5];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v34 = v11;
      *v10 = 136446210;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v34);
      _os_log_impl(&dword_272D1B000, v6, v7, "Did finish observing groupSession state changes for activity: %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x2743D7F00](v11, -1, -1);
      MEMORY[0x2743D7F00](v10, -1, -1);
    }

    v12 = v0[18];
    v13 = v0[15];
    v14 = v0[12];
    v16 = v0[8];
    v15 = v0[9];

    v17 = v0[1];
    goto LABEL_9;
  }

  v18 = v0[20];
  v19 = v0[8];
  v20 = v0[3];
  (*(v3 + 32))(v19, v1, v2);
  specialized CollaborationConnectionManager.handleGroupSessionStateChange(_:state:)(v20, v19, &_s15GroupActivities0A7SessionC5StateOy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV_GMd, &_s15GroupActivities0A7SessionC5StateOy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV_GMR);
  if (v18)
  {
    v22 = v0[17];
    v21 = v0[18];
    v24 = v0[15];
    v23 = v0[16];
    v25 = v0[12];
    v26 = v0[9];
    (*(v0[7] + 8))(v0[8], v0[6]);
    (*(v22 + 8))(v21, v23);

    v17 = v0[1];
LABEL_9:

    return v17();
  }

  (*(v0[7] + 8))(v0[8], v0[6]);
  v28 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type AsyncPublisher<Published<GroupSession<PersonalDeviceCoordinationActivity>.State>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy15GroupActivities0F7SessionC5StateOy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV_G_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy15GroupActivities0F7SessionC5StateOy17WebBookmarksSwift34PersonalDeviceCoordinationActivityV_G_G_GMR);
  v29 = *(MEMORY[0x277D856D0] + 4);
  v30 = swift_task_alloc();
  v0[19] = v30;
  *v30 = v0;
  v30[1] = specialized closure #1 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);
  v31 = v0[18];
  v32 = v0[16];
  v33 = v0[9];

  return MEMORY[0x282200308](v33, v32, v28);
}

{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[3];
  GroupSession.$state.getter();
  v9 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type Published<GroupSession<CKShareCollaborationActivity>.State>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy15GroupActivities0D7SessionC5StateOy17WebBookmarksSwift28CKShareCollaborationActivityV_G_GMd, &_s7Combine9PublishedV9PublisherVy15GroupActivities0D7SessionC5StateOy17WebBookmarksSwift28CKShareCollaborationActivityV_G_GMR);
  MEMORY[0x2743D7130](v4, v9);
  (*(v3 + 8))(v2, v4);
  AsyncPublisher.makeAsyncIterator()();
  (*(v7 + 8))(v5, v6);
  v10 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type AsyncPublisher<Published<GroupSession<CKShareCollaborationActivity>.State>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy15GroupActivities0F7SessionC5StateOy17WebBookmarksSwift28CKShareCollaborationActivityV_G_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy15GroupActivities0F7SessionC5StateOy17WebBookmarksSwift28CKShareCollaborationActivityV_G_G_GMR);
  v11 = *(MEMORY[0x277D856D0] + 4);
  v12 = swift_task_alloc();
  v0[19] = v12;
  *v12 = v0;
  v12[1] = specialized closure #1 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);
  v13 = v0[18];
  v14 = v0[16];
  v15 = v0[9];

  return MEMORY[0x282200308](v15, v14, v10);
}

{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = specialized closure #1 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);
  }

  else
  {
    v3 = specialized closure #1 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);
  }

  return MEMORY[0x2822009F8](v3);
}

{
  return MEMORY[0x2822009F8](specialized closure #1 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:));
}

{
  v35 = v0;
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v4 = v0[5];
    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.tabGroup);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v9 = v0[4];
      v8 = v0[5];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v34 = v11;
      *v10 = 136446210;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v34);
      _os_log_impl(&dword_272D1B000, v6, v7, "Did finish observing groupSession state changes for activity: %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x2743D7F00](v11, -1, -1);
      MEMORY[0x2743D7F00](v10, -1, -1);
    }

    v12 = v0[18];
    v13 = v0[15];
    v14 = v0[12];
    v16 = v0[8];
    v15 = v0[9];

    v17 = v0[1];
    goto LABEL_9;
  }

  v18 = v0[20];
  v19 = v0[8];
  v20 = v0[3];
  (*(v3 + 32))(v19, v1, v2);
  specialized CollaborationConnectionManager.handleGroupSessionStateChange(_:state:)(v20, v19, &_s15GroupActivities0A7SessionC5StateOy17WebBookmarksSwift28CKShareCollaborationActivityV_GMd, &_s15GroupActivities0A7SessionC5StateOy17WebBookmarksSwift28CKShareCollaborationActivityV_GMR);
  if (v18)
  {
    v22 = v0[17];
    v21 = v0[18];
    v24 = v0[15];
    v23 = v0[16];
    v25 = v0[12];
    v26 = v0[9];
    (*(v0[7] + 8))(v0[8], v0[6]);
    (*(v22 + 8))(v21, v23);

    v17 = v0[1];
LABEL_9:

    return v17();
  }

  (*(v0[7] + 8))(v0[8], v0[6]);
  v28 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type AsyncPublisher<Published<GroupSession<CKShareCollaborationActivity>.State>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy15GroupActivities0F7SessionC5StateOy17WebBookmarksSwift28CKShareCollaborationActivityV_G_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy15GroupActivities0F7SessionC5StateOy17WebBookmarksSwift28CKShareCollaborationActivityV_G_G_GMR);
  v29 = *(MEMORY[0x277D856D0] + 4);
  v30 = swift_task_alloc();
  v0[19] = v30;
  *v30 = v0;
  v30[1] = specialized closure #1 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);
  v31 = v0[18];
  v32 = v0[16];
  v33 = v0[9];

  return MEMORY[0x282200308](v33, v32, v28);
}

{
  *(v0 + 16) = *(v0 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t _sScg7addTask8priority9operationyScPSg_xyYaKYAcntFyt_s5Error_pTg5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v20 - v9;
  outlined init with copy of TaskPriority?(a1, v20 - v9, &_sScPSgMd, &_sScPSgMR);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of TaskPriority?(v10, &_sScPSgMd, &_sScPSgMR);
    if (*(a3 + 16))
    {
LABEL_3:
      v13 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = dispatch thunk of Actor.unownedExecutor.getter();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v4;
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VyShy15GroupActivities11ParticipantVG_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VyShy15GroupActivities11ParticipantVG_GGMR);
  v7[8] = v8;
  v9 = *(v8 - 8);
  v7[9] = v9;
  v10 = *(v9 + 64) + 15;
  v7[10] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMR);
  v7[11] = v11;
  v12 = *(v11 - 8);
  v7[12] = v12;
  v13 = *(v12 + 64) + 15;
  v7[13] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy15GroupActivities11ParticipantVG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy15GroupActivities11ParticipantVG_G_GMR);
  v7[14] = v14;
  v15 = *(v14 - 8);
  v7[15] = v15;
  v16 = *(v15 + 64) + 15;
  v7[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:));
}

{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VyShy15GroupActivities11ParticipantVG_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VyShy15GroupActivities11ParticipantVG_GGMR);
  v7[8] = v8;
  v9 = *(v8 - 8);
  v7[9] = v9;
  v10 = *(v9 + 64) + 15;
  v7[10] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMR);
  v7[11] = v11;
  v12 = *(v11 - 8);
  v7[12] = v12;
  v13 = *(v12 + 64) + 15;
  v7[13] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy15GroupActivities11ParticipantVG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy15GroupActivities11ParticipantVG_G_GMR);
  v7[14] = v14;
  v15 = *(v14 - 8);
  v7[15] = v15;
  v16 = *(v15 + 64) + 15;
  v7[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:));
}

uint64_t specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)()
{
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[4];
  GroupSession.$activeParticipants.getter();
  v9 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type Published<Set<Participant>>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMR);
  MEMORY[0x2743D7130](v4, v9);
  (*(v3 + 8))(v2, v4);
  AsyncPublisher.makeAsyncIterator()();
  (*(v7 + 8))(v5, v6);
  v10 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Set<Participant>>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy15GroupActivities11ParticipantVG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy15GroupActivities11ParticipantVG_G_GMR);
  v11 = *(MEMORY[0x277D856D0] + 4);
  v12 = swift_task_alloc();
  v0[17] = v12;
  *v12 = v0;
  v12[1] = specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);
  v13 = v0[16];
  v14 = v0[14];

  return MEMORY[0x282200308](v0 + 2, v14, v10);
}

{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);
  }

  else
  {
    v3 = specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);
  }

  return MEMORY[0x2822009F8](v3);
}

{
  *(v0 + 152) = *(v0 + 16);
  return MEMORY[0x2822009F8](specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:));
}

{
  v16 = v0;
  if (v0[19])
  {
    v1 = v0[5];

    return MEMORY[0x2822009F8](specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:));
  }

  else
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v2 = v0[7];
    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.tabGroup);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[6];
      v6 = v0[7];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136446210;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v15);
      _os_log_impl(&dword_272D1B000, v4, v5, "Did finish observing activeParticipants changes for activity: %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x2743D7F00](v9, -1, -1);
      MEMORY[0x2743D7F00](v8, -1, -1);
    }

    v10 = v0[16];
    v11 = v0[13];
    v12 = v0[10];

    v13 = v0[1];

    return v13();
  }
}

{
  v1 = v0[5];
  specialized CollaborationConnectionManager.setActiveParticipants(_:)(v0[19], &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA34PersonalDeviceCoordinationActivityV15GroupActivities0pT15SessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShyAI11ParticipantVGGGMd, &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA34PersonalDeviceCoordinationActivityV15GroupActivities0pT15SessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShyAI11ParticipantVGGGMR, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));

  v2 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Set<Participant>>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy15GroupActivities11ParticipantVG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy15GroupActivities11ParticipantVG_G_GMR);
  v3 = *(MEMORY[0x277D856D0] + 4);
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);
  v5 = v0[16];
  v6 = v0[14];

  return MEMORY[0x282200308](v0 + 2, v6, v2);
}

{
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[4];
  GroupSession.$activeParticipants.getter();
  v9 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type Published<Set<Participant>>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMR);
  MEMORY[0x2743D7130](v4, v9);
  (*(v3 + 8))(v2, v4);
  AsyncPublisher.makeAsyncIterator()();
  (*(v7 + 8))(v5, v6);
  v10 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Set<Participant>>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy15GroupActivities11ParticipantVG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy15GroupActivities11ParticipantVG_G_GMR);
  v11 = *(MEMORY[0x277D856D0] + 4);
  v12 = swift_task_alloc();
  v0[17] = v12;
  *v12 = v0;
  v12[1] = specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);
  v13 = v0[16];
  v14 = v0[14];

  return MEMORY[0x282200308](v0 + 2, v14, v10);
}

{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);
  }

  else
  {
    v3 = specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);
  }

  return MEMORY[0x2822009F8](v3);
}

{
  *(v0 + 152) = *(v0 + 16);
  return MEMORY[0x2822009F8](specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:));
}

{
  v16 = v0;
  if (v0[19])
  {
    v1 = v0[5];

    return MEMORY[0x2822009F8](specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:));
  }

  else
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v2 = v0[7];
    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.tabGroup);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[6];
      v6 = v0[7];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136446210;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v15);
      _os_log_impl(&dword_272D1B000, v4, v5, "Did finish observing activeParticipants changes for activity: %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x2743D7F00](v9, -1, -1);
      MEMORY[0x2743D7F00](v8, -1, -1);
    }

    v10 = v0[16];
    v11 = v0[13];
    v12 = v0[10];

    v13 = v0[1];

    return v13();
  }
}

{
  v1 = v0[5];
  specialized CollaborationConnectionManager.setActiveParticipants(_:)(v0[19], &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA07CKShareD8ActivityVAA0P20GroupSessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShy0R10Activities11ParticipantVGGGMd, &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA07CKShareD8ActivityVAA0P20GroupSessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShy0R10Activities11ParticipantVGGGMR, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));

  v2 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Set<Participant>>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy15GroupActivities11ParticipantVG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy15GroupActivities11ParticipantVG_G_GMR);
  v3 = *(MEMORY[0x277D856D0] + 4);
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);
  v5 = v0[16];
  v6 = v0[14];

  return MEMORY[0x282200308](v0 + 2, v6, v2);
}

{
  *(v0 + 24) = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized CollaborationConnectionManager.runGroupSession(_:)(a5);
}

{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized CollaborationConnectionManager.runGroupSession(_:)(a5);
}

uint64_t specialized ThrowingTaskGroup.waitForAll(isolation:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return MEMORY[0x2822009F8](specialized ThrowingTaskGroup.waitForAll(isolation:));
}

uint64_t specialized ThrowingTaskGroup.waitForAll(isolation:)()
{
  v1 = v0[4];
  v2 = *v1;
  v0[7] = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
  v0[8] = v3;
  if (MEMORY[0x2743D7410](v2, MEMORY[0x277D84F78] + 8, v3, MEMORY[0x277D84950]))
  {
    v4 = v0[1];

    return v4();
  }

  else
  {
    v0[9] = 0;
    v6 = *(MEMORY[0x277D85818] + 4);
    v7 = swift_task_alloc();
    v0[10] = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScgyyts5Error_pGMd, &_sScgyyts5Error_pGMR);
    *v7 = v0;
    v7[1] = specialized ThrowingTaskGroup.waitForAll(isolation:);
    v9 = v0[3];
    v10 = v0[4];
    v11 = v0[2];

    return MEMORY[0x2822004D0](v0 + 12, v11, v9, v8);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v10 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = *(v2 + 48);
    v6 = specialized ThrowingTaskGroup.waitForAll(isolation:);
  }

  else
  {
    *(v2 + 97) = *(v2 + 96);
    v7 = *(v2 + 40);
    v8 = *(v2 + 48);
    v6 = specialized ThrowingTaskGroup.waitForAll(isolation:);
  }

  return MEMORY[0x2822009F8](v6);
}

{
  if (*(v0 + 97))
  {
    v1 = *(v0 + 72);
    if (MEMORY[0x2743D7410](*(v0 + 56), MEMORY[0x277D84F78] + 8, *(v0 + 64), MEMORY[0x277D84950]))
    {
      if (v1)
      {
        swift_willThrow();
      }

      v2 = *(v0 + 8);

      return v2();
    }

    *(v0 + 72) = v1;
  }

  v4 = *(MEMORY[0x277D85818] + 4);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScgyyts5Error_pGMd, &_sScgyyts5Error_pGMR);
  *v5 = v0;
  v5[1] = specialized ThrowingTaskGroup.waitForAll(isolation:);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = *(v0 + 16);

  return MEMORY[0x2822004D0](v0 + 96, v9, v7, v6);
}

{
  v1 = v0[11];
  if (v0[9])
  {

    v1 = v0[9];
  }

  if (MEMORY[0x2743D7410](v0[7], MEMORY[0x277D84F78] + 8, v0[8], MEMORY[0x277D84950]))
  {
    if (v1)
    {
      swift_willThrow();
    }

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[9] = v1;
    v4 = *(MEMORY[0x277D85818] + 4);
    v5 = swift_task_alloc();
    v0[10] = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScgyyts5Error_pGMd, &_sScgyyts5Error_pGMR);
    *v5 = v0;
    v5[1] = specialized ThrowingTaskGroup.waitForAll(isolation:);
    v7 = v0[3];
    v8 = v0[4];
    v9 = v0[2];

    return MEMORY[0x2822004D0](v0 + 12, v9, v7, v6);
  }
}

uint64_t specialized CollaborationConnectionManager.runGroupSession(_:)(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0J16SessionMessengerC0I7ContextVt__GMd, &_sScS12ContinuationV11YieldResultOy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0J16SessionMessengerC0I7ContextVt__GMR);
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMR);
  v2[15] = v6;
  v7 = *(v6 - 8);
  v2[16] = v7;
  v8 = *(v7 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtSgMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtSgMR) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMd, &_sScS8IteratorVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMR);
  v2[21] = v10;
  v11 = *(v10 - 8);
  v2[22] = v11;
  v12 = *(v11 + 64) + 15;
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.runGroupSession(_:));
}

{
  v3 = *(*v1 + 224);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 232) = a1;

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.runGroupSession(_:));
}

{
  v2[10] = a1;
  v2[11] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0J16SessionMessengerC0I7ContextVt__GMd, &_sScS12ContinuationV11YieldResultOy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0J16SessionMessengerC0I7ContextVt__GMR);
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMR);
  v2[15] = v6;
  v7 = *(v6 - 8);
  v2[16] = v7;
  v8 = *(v7 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtSgMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtSgMR) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMd, &_sScS8IteratorVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMR);
  v2[21] = v10;
  v11 = *(v10 - 8);
  v2[22] = v11;
  v12 = *(v11 + 64) + 15;
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.runGroupSession(_:));
}

{
  v3 = *(*v1 + 224);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 232) = a1;

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.runGroupSession(_:));
}

uint64_t specialized CollaborationConnectionManager.runGroupSession(_:)()
{
  v14 = v0;
  if (one-time initialization token for tabGroup != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  v0[24] = __swift_project_value_buffer(v2, static Logger.tabGroup);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    GroupSession.activity.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0[8], v0[9], &v13);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_272D1B000, v3, v4, "Will join group session for activity: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x2743D7F00](v7, -1, -1);
    MEMORY[0x2743D7F00](v6, -1, -1);
  }

  if (one-time initialization token for joinLeaveSessionQueue != -1)
  {
    swift_once();
  }

  v9 = joinLeaveSessionQueue;
  v0[25] = joinLeaveSessionQueue;
  v10 = swift_task_alloc();
  v0[26] = v10;
  *v10 = v0;
  v10[1] = specialized CollaborationConnectionManager.runGroupSession(_:);
  v11 = v0[10];

  return specialized GroupSession.join(on:)(v9);
}

{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = specialized CollaborationConnectionManager.runGroupSession(_:);
  }

  else
  {
    v3 = specialized CollaborationConnectionManager.runGroupSession(_:);
  }

  return MEMORY[0x2822009F8](v3);
}

{
  v14 = v0;
  v1 = v0[24];
  v2 = v0[10];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    GroupSession.activity.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0[6], v0[7], &v13);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_272D1B000, v3, v4, "Did join group session for activity: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x2743D7F00](v7, -1, -1);
    MEMORY[0x2743D7F00](v6, -1, -1);
  }

  v9 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift31GroupSessionMessengerControllerCyAA34PersonalDeviceCoordinationActivityVAA21PresenceUpdateMessageVGMd, &_s17WebBookmarksSwift31GroupSessionMessengerControllerCyAA34PersonalDeviceCoordinationActivityVAA21PresenceUpdateMessageVGMR);
  swift_allocObject();

  v10 = swift_task_alloc();
  v0[28] = v10;
  *v10 = v0;
  v10[1] = specialized CollaborationConnectionManager.runGroupSession(_:);
  v11 = v0[10];

  return specialized GroupSessionMessengerController.init(groupSession:)(v11);
}

{
  v19 = v0;
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[10];

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[27];
    v8 = v0[10];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v9 = 136446466;
    GroupSession.activity.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0[2], v0[3], &v18);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2112;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v14;
    *v10 = v14;
    _os_log_impl(&dword_272D1B000, v5, v6, "Failed to join group session for activity: %{public}s, error: %@", v9, 0x16u);
    outlined destroy of TaskPriority?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2743D7F00](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x2743D7F00](v11, -1, -1);
    MEMORY[0x2743D7F00](v9, -1, -1);
  }

  v15 = swift_task_alloc();
  v0[35] = v15;
  *v15 = v0;
  v15[1] = specialized CollaborationConnectionManager.runGroupSession(_:);
  v16 = v0[11];

  return specialized CollaborationConnectionManager.didLeaveGroupSession(_:)();
}

{
  v1 = *(v0 + 88);
  v2 = *(v1 + 168);
  *(v1 + 168) = *(v0 + 232);

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.runGroupSession(_:));
}

{
  v1 = v0[23];
  v2 = *(**(v0[29] + 128) + 96);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtGMd, &_sScSy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtGMR);
  AsyncStream.makeAsyncIterator()();

  v0[30] = v0[27];
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[31] = v4;
  *v4 = v0;
  v4[1] = specialized CollaborationConnectionManager.runGroupSession(_:);
  v5 = v0[23];
  v6 = v0[20];
  v7 = v0[21];

  return MEMORY[0x2822003E8](v6, 0, 0, v7);
}

{
  v1 = *(*v0 + 248);
  v3 = *v0;

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.runGroupSession(_:));
}

{
  v1 = v0[20];
  v2 = v0[15];
  if ((*(v0[16] + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[25];
    v4 = v0[10];
    (*(v0[22] + 8))(v0[23], v0[21]);
    v5 = swift_task_alloc();
    v0[32] = v5;
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = *(MEMORY[0x277D859E0] + 4);
    v7 = swift_task_alloc();
    v0[33] = v7;
    *v7 = v0;
    v7[1] = specialized CollaborationConnectionManager.runGroupSession(_:);

    return MEMORY[0x2822007B8]();
  }

  else
  {
    v8 = v0[30];
    v9 = v0[19];
    v10 = *(v2 + 48);
    v11 = *(v1 + 48);
    v12 = *(v1 + 16);
    v13 = *(v1 + 32);
    *v9 = *v1;
    *(v9 + 16) = v12;
    *(v9 + 32) = v13;
    *(v9 + 48) = v11;
    v14 = type metadata accessor for GroupSessionMessenger.MessageContext();
    v15 = *(v14 - 8);
    (*(v15 + 32))(v9 + v10, v1 + v10, v14);
    static Task<>.checkCancellation()();
    if (v8)
    {
      v16 = v0[29];
      v18 = v0[22];
      v17 = v0[23];
      v19 = v0[21];
      v20 = v0[19];

      outlined destroy of TaskPriority?(v20, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMR);
      (*(v18 + 8))(v17, v19);
      v21 = v0[23];
      v22 = v0[19];
      v23 = v0[20];
      v25 = v0[17];
      v24 = v0[18];
      v26 = v0[14];

      v27 = v0[1];

      return v27();
    }

    else
    {
      v29 = v0[18];
      v28 = v0[19];
      v45 = v0[17];
      v46 = v0[14];
      v47 = v0[13];
      v48 = v0[12];
      v44 = *(v0[11] + 176);
      v30 = *(v0[15] + 48);
      v31 = *v28;
      v32 = *(v28 + 8);
      v33 = *(v28 + 16);
      v34 = *(v28 + 40);
      v35 = *(v28 + 48);
      v36 = *(v28 + 24);
      *v29 = *v28;
      *(v29 + 8) = v32;
      *(v29 + 16) = v33;
      *(v29 + 24) = v36;
      *(v29 + 40) = v34;
      *(v29 + 48) = v35;
      (*(v15 + 16))(v29 + v30, v9 + v10, v14);
      v37 = *(*v44 + 88);
      outlined init with copy of TaskPriority?(v29, v45, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMR);
      outlined copy of PresenceUpdateMessage.Kind(v31, v32);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMd, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMR);
      AsyncStream.Continuation.yield(_:)();
      outlined destroy of TaskPriority?(v29, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMR);
      (*(v47 + 8))(v46, v48);
      outlined destroy of TaskPriority?(v28, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMR);
      v0[30] = 0;
      v38 = *(MEMORY[0x277D85798] + 4);
      v39 = swift_task_alloc();
      v0[31] = v39;
      *v39 = v0;
      v39[1] = specialized CollaborationConnectionManager.runGroupSession(_:);
      v40 = v0[23];
      v41 = v0[20];
      v42 = v0[21];

      return MEMORY[0x2822003E8](v41, 0, 0, v42);
    }
  }
}

{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);
  v4 = *v0;

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.runGroupSession(_:));
}

{
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = specialized CollaborationConnectionManager.runGroupSession(_:);
  v2 = *(v0 + 88);

  return specialized CollaborationConnectionManager.didLeaveGroupSession(_:)();
}

{
  v1 = *(*v0 + 272);
  v3 = *v0;

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.runGroupSession(_:));
}

{
  v1 = *(*v0 + 280);
  v3 = *v0;

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.runGroupSession(_:));
}

{
  v14 = v0;
  if (one-time initialization token for tabGroup != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  v0[24] = __swift_project_value_buffer(v2, static Logger.tabGroup);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    GroupSession.activity.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0[8], v0[9], &v13);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_272D1B000, v3, v4, "Will join group session for activity: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x2743D7F00](v7, -1, -1);
    MEMORY[0x2743D7F00](v6, -1, -1);
  }

  if (one-time initialization token for joinLeaveSessionQueue != -1)
  {
    swift_once();
  }

  v9 = joinLeaveSessionQueue;
  v0[25] = joinLeaveSessionQueue;
  v10 = swift_task_alloc();
  v0[26] = v10;
  *v10 = v0;
  v10[1] = specialized CollaborationConnectionManager.runGroupSession(_:);
  v11 = v0[10];

  return specialized GroupSession.join(on:)(v9);
}

{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = specialized CollaborationConnectionManager.runGroupSession(_:);
  }

  else
  {
    v3 = specialized CollaborationConnectionManager.runGroupSession(_:);
  }

  return MEMORY[0x2822009F8](v3);
}

{
  v14 = v0;
  v1 = v0[24];
  v2 = v0[10];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    GroupSession.activity.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0[6], v0[7], &v13);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_272D1B000, v3, v4, "Did join group session for activity: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x2743D7F00](v7, -1, -1);
    MEMORY[0x2743D7F00](v6, -1, -1);
  }

  v9 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift31GroupSessionMessengerControllerCyAA28CKShareCollaborationActivityVAA21PresenceUpdateMessageVGMd, &_s17WebBookmarksSwift31GroupSessionMessengerControllerCyAA28CKShareCollaborationActivityVAA21PresenceUpdateMessageVGMR);
  swift_allocObject();

  v10 = swift_task_alloc();
  v0[28] = v10;
  *v10 = v0;
  v10[1] = specialized CollaborationConnectionManager.runGroupSession(_:);
  v11 = v0[10];

  return specialized GroupSessionMessengerController.init(groupSession:)(v11);
}

{
  v19 = v0;
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[10];

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[27];
    v8 = v0[10];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v9 = 136446466;
    GroupSession.activity.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0[2], v0[3], &v18);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2112;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v14;
    *v10 = v14;
    _os_log_impl(&dword_272D1B000, v5, v6, "Failed to join group session for activity: %{public}s, error: %@", v9, 0x16u);
    outlined destroy of TaskPriority?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2743D7F00](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x2743D7F00](v11, -1, -1);
    MEMORY[0x2743D7F00](v9, -1, -1);
  }

  v15 = swift_task_alloc();
  v0[35] = v15;
  *v15 = v0;
  v15[1] = specialized CollaborationConnectionManager.runGroupSession(_:);
  v16 = v0[11];

  return specialized CollaborationConnectionManager.didLeaveGroupSession(_:)();
}

{
  v1 = *(v0 + 88);
  v2 = *(v1 + 168);
  *(v1 + 168) = *(v0 + 232);

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.runGroupSession(_:));
}

{
  v1 = v0[23];
  v2 = *(**(v0[29] + 128) + 96);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtGMd, &_sScSy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtGMR);
  AsyncStream.makeAsyncIterator()();

  v0[30] = v0[27];
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[31] = v4;
  *v4 = v0;
  v4[1] = specialized CollaborationConnectionManager.runGroupSession(_:);
  v5 = v0[23];
  v6 = v0[20];
  v7 = v0[21];

  return MEMORY[0x2822003E8](v6, 0, 0, v7);
}

{
  v1 = *(*v0 + 248);
  v3 = *v0;

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.runGroupSession(_:));
}

{
  v1 = v0[20];
  v2 = v0[15];
  if ((*(v0[16] + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[25];
    v4 = v0[10];
    (*(v0[22] + 8))(v0[23], v0[21]);
    v5 = swift_task_alloc();
    v0[32] = v5;
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = *(MEMORY[0x277D859E0] + 4);
    v7 = swift_task_alloc();
    v0[33] = v7;
    *v7 = v0;
    v7[1] = specialized CollaborationConnectionManager.runGroupSession(_:);

    return MEMORY[0x2822007B8]();
  }

  else
  {
    v8 = v0[30];
    v9 = v0[19];
    v10 = *(v2 + 48);
    v11 = *(v1 + 48);
    v12 = *(v1 + 16);
    v13 = *(v1 + 32);
    *v9 = *v1;
    *(v9 + 16) = v12;
    *(v9 + 32) = v13;
    *(v9 + 48) = v11;
    v14 = type metadata accessor for GroupSessionMessenger.MessageContext();
    v15 = *(v14 - 8);
    (*(v15 + 32))(v9 + v10, v1 + v10, v14);
    static Task<>.checkCancellation()();
    if (v8)
    {
      v16 = v0[29];
      v18 = v0[22];
      v17 = v0[23];
      v19 = v0[21];
      v20 = v0[19];

      outlined destroy of TaskPriority?(v20, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMR);
      (*(v18 + 8))(v17, v19);
      v21 = v0[23];
      v22 = v0[19];
      v23 = v0[20];
      v25 = v0[17];
      v24 = v0[18];
      v26 = v0[14];

      v27 = v0[1];

      return v27();
    }

    else
    {
      v29 = v0[18];
      v28 = v0[19];
      v45 = v0[17];
      v46 = v0[14];
      v47 = v0[13];
      v48 = v0[12];
      v44 = *(v0[11] + 176);
      v30 = *(v0[15] + 48);
      v31 = *v28;
      v32 = *(v28 + 8);
      v33 = *(v28 + 16);
      v34 = *(v28 + 40);
      v35 = *(v28 + 48);
      v36 = *(v28 + 24);
      *v29 = *v28;
      *(v29 + 8) = v32;
      *(v29 + 16) = v33;
      *(v29 + 24) = v36;
      *(v29 + 40) = v34;
      *(v29 + 48) = v35;
      (*(v15 + 16))(v29 + v30, v9 + v10, v14);
      v37 = *(*v44 + 88);
      outlined init with copy of TaskPriority?(v29, v45, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMR);
      outlined copy of PresenceUpdateMessage.Kind(v31, v32);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMd, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMR);
      AsyncStream.Continuation.yield(_:)();
      outlined destroy of TaskPriority?(v29, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMR);
      (*(v47 + 8))(v46, v48);
      outlined destroy of TaskPriority?(v28, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMR);
      v0[30] = 0;
      v38 = *(MEMORY[0x277D85798] + 4);
      v39 = swift_task_alloc();
      v0[31] = v39;
      *v39 = v0;
      v39[1] = specialized CollaborationConnectionManager.runGroupSession(_:);
      v40 = v0[23];
      v41 = v0[20];
      v42 = v0[21];

      return MEMORY[0x2822003E8](v41, 0, 0, v42);
    }
  }
}

{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);
  v4 = *v0;

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.runGroupSession(_:));
}

{
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = specialized CollaborationConnectionManager.runGroupSession(_:);
  v2 = *(v0 + 88);

  return specialized CollaborationConnectionManager.didLeaveGroupSession(_:)();
}

{
  v1 = *(*v0 + 272);
  v3 = *v0;

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.runGroupSession(_:));
}

{
  v20 = v0;
  v1 = v0[24];
  v2 = v0[10];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136446210;
    GroupSession.activity.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0[4], v0[5], &v19);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_272D1B000, v3, v4, "Did finish running group session for activity: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x2743D7F00](v7, -1, -1);
    MEMORY[0x2743D7F00](v6, -1, -1);
  }

  v9 = v0[30];
  static Task<>.checkCancellation()();
  v10 = v0[29];

  v11 = v0[23];
  v12 = v0[19];
  v13 = v0[20];
  v15 = v0[17];
  v14 = v0[18];
  v16 = v0[14];

  v17 = v0[1];

  return v17();
}

{
  v1 = *(*v0 + 280);
  v3 = *v0;

  return MEMORY[0x2822009F8](specialized CollaborationConnectionManager.runGroupSession(_:));
}

{

  v1 = *(v0 + 184);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 112);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t specialized GroupSession.join(on:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD34PersonalDeviceCoordinationActivityV_GMd, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD34PersonalDeviceCoordinationActivityV_GMR);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized GroupSession.join(on:));
}

{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD28CKShareCollaborationActivityV_GMd, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD28CKShareCollaborationActivityV_GMR);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized GroupSession.join(on:));
}

uint64_t specialized GroupSession.join(on:)()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  *v2 = v0[3];
  swift_storeEnumTagMultiPayload();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy15GroupActivities0C7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAF34PersonalDeviceCoordinationActivityV_GSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCy15GroupActivities0C7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAF34PersonalDeviceCoordinationActivityV_GSo16os_unfair_lock_sVGMR);
  v5 = *(v4 + 52);
  v6 = (*(v4 + 48) + 3) & 0x1FFFFFFFCLL;
  v7 = swift_allocObject();
  v0[6] = v7;
  *(v7 + ((*(*v7 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  outlined init with copy of TaskPriority?(v2, v7 + *(*v7 + *MEMORY[0x277D841D0] + 16), &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD34PersonalDeviceCoordinationActivityV_GMd, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD34PersonalDeviceCoordinationActivityV_GMR);

  outlined destroy of TaskPriority?(v2, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD34PersonalDeviceCoordinationActivityV_GMd, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD34PersonalDeviceCoordinationActivityV_GMR);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v3;
  v9 = *(MEMORY[0x277D85A10] + 4);
  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  v10[1] = specialized GroupSession.join(on:);

  return MEMORY[0x282200830]();
}

{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = specialized GroupSession.join(on:);
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = specialized GroupSession.join(on:);
  }

  return MEMORY[0x2822009F8](v4);
}

{
  v1 = v0[5];
  v2 = v0[6];
  swift_setDeallocating();
  outlined destroy of TaskPriority?(v2 + *(*v2 + *MEMORY[0x277D841D0] + 16), &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD34PersonalDeviceCoordinationActivityV_GMd, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD34PersonalDeviceCoordinationActivityV_GMR);
  v3 = *(*v2 + 48);
  v4 = *(*v2 + 52);
  swift_deallocClassInstance();

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  swift_setDeallocating();
  outlined destroy of TaskPriority?(v1 + *(*v1 + *MEMORY[0x277D841D0] + 16), &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD34PersonalDeviceCoordinationActivityV_GMd, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD34PersonalDeviceCoordinationActivityV_GMR);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 52);
  swift_deallocClassInstance();

  v6 = v0[1];
  v7 = v0[9];

  return v6();
}

{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  *v2 = v0[3];
  swift_storeEnumTagMultiPayload();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy15GroupActivities0C7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAF28CKShareCollaborationActivityV_GSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCy15GroupActivities0C7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAF28CKShareCollaborationActivityV_GSo16os_unfair_lock_sVGMR);
  v5 = *(v4 + 52);
  v6 = (*(v4 + 48) + 3) & 0x1FFFFFFFCLL;
  v7 = swift_allocObject();
  v0[6] = v7;
  *(v7 + ((*(*v7 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  outlined init with copy of TaskPriority?(v2, v7 + *(*v7 + *MEMORY[0x277D841D0] + 16), &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD28CKShareCollaborationActivityV_GMd, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD28CKShareCollaborationActivityV_GMR);

  outlined destroy of TaskPriority?(v2, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD28CKShareCollaborationActivityV_GMd, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD28CKShareCollaborationActivityV_GMR);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v3;
  v9 = *(MEMORY[0x277D85A10] + 4);
  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  v10[1] = specialized GroupSession.join(on:);

  return MEMORY[0x282200830]();
}

{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = specialized GroupSession.join(on:);
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = specialized GroupSession.join(on:);
  }

  return MEMORY[0x2822009F8](v4);
}

{
  v1 = v0[5];
  v2 = v0[6];
  swift_setDeallocating();
  outlined destroy of TaskPriority?(v2 + *(*v2 + *MEMORY[0x277D841D0] + 16), &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD28CKShareCollaborationActivityV_GMd, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD28CKShareCollaborationActivityV_GMR);
  v3 = *(*v2 + 48);
  v4 = *(*v2 + 52);
  swift_deallocClassInstance();

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  swift_setDeallocating();
  outlined destroy of TaskPriority?(v1 + *(*v1 + *MEMORY[0x277D841D0] + 16), &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD28CKShareCollaborationActivityV_GMd, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD28CKShareCollaborationActivityV_GMR);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 52);
  swift_deallocClassInstance();

  v6 = v0[1];
  v7 = v0[9];

  return v6();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC15GroupActivities08PersonalE15SessionProviderCy17WebBookmarksSwift0G26DeviceCoordinationActivityVG_Tt2g5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v28[0] = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v28 - v14;
  outlined init with copy of TaskPriority?(a3, v28 - v14, &_sScPSgMd, &_sScPSgMR);
  v16 = type metadata accessor for TaskPriority();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v15, 1, v16);

  if (v18 == 1)
  {
    outlined destroy of TaskPriority?(v15, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v17 + 8))(v15, v16);
  }

  v19 = *(a5 + 16);
  v20 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v19)
  {
    swift_getObjectType();
    v21 = dispatch thunk of Actor.unownedExecutor.getter();
    v23 = v22;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24 = String.utf8CString.getter() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
      v25 = (v23 | v21);
      if (v23 | v21)
      {
        v29[0] = 0;
        v29[1] = 0;
        v25 = v29;
        v29[2] = v21;
        v29[3] = v23;
      }

      v28[1] = 7;
      v28[2] = v25;
      v28[3] = v24;
      v26 = swift_task_create();

      outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);

      return v26;
    }
  }

  else
  {
    v21 = 0;
    v23 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  if (v23 | v21)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v21;
    v29[7] = v23;
  }

  return swift_task_create();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  outlined init with copy of TaskPriority?(a3, v24 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of TaskPriority?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
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

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);

      return v22;
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

  outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t specialized closure #2 in FastSyncStateMachine.leaveActivity(priority:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](specialized closure #2 in FastSyncStateMachine.leaveActivity(priority:_:));
}

{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](specialized closure #2 in FastSyncStateMachine.leaveActivity(priority:_:));
}

uint64_t specialized closure #2 in FastSyncStateMachine.leaveActivity(priority:_:)()
{
  v1 = v0[3];
  MEMORY[0x2743D73C0](v0[2], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = specialized closure #2 in FastSyncStateMachine.leaveActivity(priority:_:);
  v5 = v0[4];
  v4 = v0[5];

  return v7(v4);
}

{
  v1 = v0[3];
  MEMORY[0x2743D73C0](v0[2], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = specialized closure #2 in FastSyncStateMachine.leaveActivity(priority:_:);
  v5 = v0[4];
  v4 = v0[5];

  return v7(v4);
}

{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t specialized closure #1 in FastSyncStateMachine.leaveActivity(priority:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v8 = *(MEMORY[0x277D857C8] + 4);
  v9 = swift_task_alloc();
  v6[5] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMd, &_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMR);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
  *v9 = v6;
  v9[1] = specialized closure #1 in FastSyncStateMachine.leaveActivity(priority:_:);
  v12 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v6 + 2, a4, v10, v11, v12);
}

{
  v6[3] = a5;
  v6[4] = a6;
  v8 = *(MEMORY[0x277D857C8] + 4);
  v9 = swift_task_alloc();
  v6[5] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMd, &_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMR);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
  *v9 = v6;
  v9[1] = specialized closure #1 in FastSyncStateMachine.leaveActivity(priority:_:);
  v12 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v6 + 2, a4, v10, v11, v12);
}

uint64_t specialized closure #1 in FastSyncStateMachine.leaveActivity(priority:_:)()
{
  v2 = *(*v1 + 40);
  v5 = *v1;

  if (v0)
  {

    v3 = specialized closure #1 in FastSyncStateMachine.leaveActivity(priority:_:);
  }

  else
  {
    v3 = specialized closure #1 in FastSyncStateMachine.leaveActivity(priority:_:);
  }

  return MEMORY[0x2822009F8](v3);
}

{
  v2 = v0[2];
  v1 = v0[3];
  v0[6] = v2;
  v7 = (v1 + *v1);
  v3 = v1[1];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = specialized closure #1 in FastSyncStateMachine.leaveActivity(priority:_:);
  v5 = v0[4];

  return v7(v2);
}

{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](specialized closure #1 in FastSyncStateMachine.leaveActivity(priority:_:));
}

{
  v2 = *(*v1 + 40);
  v5 = *v1;

  if (v0)
  {

    v3 = specialized closure #1 in FastSyncStateMachine.leaveActivity(priority:_:);
  }

  else
  {
    v3 = specialized closure #1 in FastSyncStateMachine.leaveActivity(priority:_:);
  }

  return MEMORY[0x2822009F8](v3);
}

{
  v2 = v0[2];
  v1 = v0[3];
  v0[6] = v2;
  v7 = (v1 + *v1);
  v3 = v1[1];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = specialized closure #1 in FastSyncStateMachine.leaveActivity(priority:_:);
  v5 = v0[4];

  return v7(v2);
}

{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](specialized closure #1 in FastSyncStateMachine.leaveActivity(priority:_:));
}

{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

{
  return (*(v0 + 8))();
}

void *specialized Array.append<A>(contentsOf:)(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTyyts5NeverOGMd, &_sScTyyts5NeverOGMR);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t specialized GroupSessionMessengerController._makeTasks()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24[-1] - v4;
  v6 = *(v0 + 112);
  GroupSession.activity.getter();
  if (one-time initialization token for tabGroup != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.tabGroup);
  v9 = v24[1];
  v8 = v24[2];
  swift_bridgeObjectRetain_n();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24[0] = v13;
    *v12 = 136446210;

    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, v24);
    _os_log_impl(&dword_272D1B000, v10, v11, "Setting up message subscription tasks for activity %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x2743D7F00](v13, -1, -1);
    MEMORY[0x2743D7F00](v12, -1, -1);
  }

  else
  {
  }

  v14 = type metadata accessor for TaskPriority();
  v15 = *(*(v14 - 8) + 56);
  v15(v5, 1, 1, v14);
  v16 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type GroupSessionMessengerController<PersonalDeviceCoordinationActivity, PresenceUpdateMessage> and conformance GroupSessionMessengerController<A, B>, &_s17WebBookmarksSwift31GroupSessionMessengerControllerCyAA34PersonalDeviceCoordinationActivityVAA21PresenceUpdateMessageVGMd, &_s17WebBookmarksSwift31GroupSessionMessengerControllerCyAA34PersonalDeviceCoordinationActivityVAA21PresenceUpdateMessageVGMR);
  v17 = swift_allocObject();
  v17[2] = v1;
  v17[3] = v16;
  v17[4] = v1;
  v17[5] = v9;
  v17[6] = v8;
  swift_retain_n();

  v18 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for specialized closure #1 in GroupSessionMessengerController._makeTasks(), v17);
  v15(v5, 1, 1, v14);
  v19 = swift_allocObject();
  v19[2] = v1;
  v19[3] = v16;
  v19[4] = v1;
  v19[5] = v9;
  v19[6] = v8;
  swift_retain_n();
  v20 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for specialized closure #2 in GroupSessionMessengerController._makeTasks(), v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyScTyyts5NeverOGGMd, &_ss23_ContiguousArrayStorageCyScTyyts5NeverOGGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_272D66CB0;
  *(v21 + 32) = v18;
  *(v21 + 40) = v20;

  return v21;
}

{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24[-1] - v4;
  v6 = *(v0 + 112);
  GroupSession.activity.getter();
  if (one-time initialization token for tabGroup != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.tabGroup);
  v9 = v24[1];
  v8 = v24[2];
  swift_bridgeObjectRetain_n();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24[0] = v13;
    *v12 = 136446210;

    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, v24);
    _os_log_impl(&dword_272D1B000, v10, v11, "Setting up message subscription tasks for activity %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x2743D7F00](v13, -1, -1);
    MEMORY[0x2743D7F00](v12, -1, -1);
  }

  else
  {
  }

  v14 = type metadata accessor for TaskPriority();
  v15 = *(*(v14 - 8) + 56);
  v15(v5, 1, 1, v14);
  v16 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type GroupSessionMessengerController<CKShareCollaborationActivity, PresenceUpdateMessage> and conformance GroupSessionMessengerController<A, B>, &_s17WebBookmarksSwift31GroupSessionMessengerControllerCyAA28CKShareCollaborationActivityVAA21PresenceUpdateMessageVGMd, &_s17WebBookmarksSwift31GroupSessionMessengerControllerCyAA28CKShareCollaborationActivityVAA21PresenceUpdateMessageVGMR);
  v17 = swift_allocObject();
  v17[2] = v1;
  v17[3] = v16;
  v17[4] = v1;
  v17[5] = v9;
  v17[6] = v8;
  swift_retain_n();

  v18 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for specialized closure #1 in GroupSessionMessengerController._makeTasks(), v17);
  v15(v5, 1, 1, v14);
  v19 = swift_allocObject();
  v19[2] = v1;
  v19[3] = v16;
  v19[4] = v1;
  v19[5] = v9;
  v19[6] = v8;
  swift_retain_n();
  v20 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for specialized closure #2 in GroupSessionMessengerController._makeTasks(), v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyScTyyts5NeverOGGMd, &_ss23_ContiguousArrayStorageCyScTyyts5NeverOGGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_272D66CB0;
  *(v21 + 32) = v18;
  *(v21 + 40) = v20;

  return v21;
}

uint64_t specialized closure #1 in GroupSessionMessengerController._makeTasks()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMR);
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v9 = *(v8 + 64) + 15;
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0J16SessionMessengerC0I7ContextVt__GMd, &_sScS12ContinuationV11YieldResultOy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0J16SessionMessengerC0I7ContextVt__GMR);
  v6[10] = v10;
  v11 = *(v10 - 8);
  v6[11] = v11;
  v12 = *(v11 + 64) + 15;
  v6[12] = swift_task_alloc();
  v13 = type metadata accessor for GroupSessionMessenger.MessageContext();
  v6[13] = v13;
  v14 = *(v13 - 8);
  v6[14] = v14;
  v15 = *(v14 + 64) + 15;
  v6[15] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtSgMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtSgMR) - 8) + 64) + 15;
  v6[16] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC8MessagesVy_17WebBookmarksSwift21PresenceUpdateMessageVGMd, &_s15GroupActivities0A16SessionMessengerC8MessagesVy_17WebBookmarksSwift21PresenceUpdateMessageVGMR);
  v6[17] = v17;
  v18 = *(v17 - 8);
  v6[18] = v18;
  v19 = *(v18 + 64) + 15;
  v6[19] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC8MessagesV8IteratorVy_17WebBookmarksSwift21PresenceUpdateMessageV_GMd, &_s15GroupActivities0A16SessionMessengerC8MessagesV8IteratorVy_17WebBookmarksSwift21PresenceUpdateMessageV_GMR);
  v6[20] = v20;
  v21 = *(v20 - 8);
  v6[21] = v21;
  v22 = *(v21 + 64) + 15;
  v6[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #1 in GroupSessionMessengerController._makeTasks());
}

{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMR);
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v9 = *(v8 + 64) + 15;
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0J16SessionMessengerC0I7ContextVt__GMd, &_sScS12ContinuationV11YieldResultOy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0J16SessionMessengerC0I7ContextVt__GMR);
  v6[10] = v10;
  v11 = *(v10 - 8);
  v6[11] = v11;
  v12 = *(v11 + 64) + 15;
  v6[12] = swift_task_alloc();
  v13 = type metadata accessor for GroupSessionMessenger.MessageContext();
  v6[13] = v13;
  v14 = *(v13 - 8);
  v6[14] = v14;
  v15 = *(v14 + 64) + 15;
  v6[15] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtSgMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtSgMR) - 8) + 64) + 15;
  v6[16] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC8MessagesVy_17WebBookmarksSwift21PresenceUpdateMessageVGMd, &_s15GroupActivities0A16SessionMessengerC8MessagesVy_17WebBookmarksSwift21PresenceUpdateMessageVGMR);
  v6[17] = v17;
  v18 = *(v17 - 8);
  v6[18] = v18;
  v19 = *(v18 + 64) + 15;
  v6[19] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC8MessagesV8IteratorVy_17WebBookmarksSwift21PresenceUpdateMessageV_GMd, &_s15GroupActivities0A16SessionMessengerC8MessagesV8IteratorVy_17WebBookmarksSwift21PresenceUpdateMessageV_GMR);
  v6[20] = v20;
  v21 = *(v20 - 8);
  v6[21] = v21;
  v22 = *(v21 + 64) + 15;
  v6[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #1 in GroupSessionMessengerController._makeTasks());
}

uint64_t specialized closure #1 in GroupSessionMessengerController._makeTasks()()
{
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v5 = *(v0[3] + 136);
  lazy protocol witness table accessor for type PresenceUpdateMessage and conformance PresenceUpdateMessage();
  lazy protocol witness table accessor for type PresenceUpdateMessage and conformance PresenceUpdateMessage();
  GroupSessionMessenger.messages<A>(of:)();
  GroupSessionMessenger.Messages.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v0[23] = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type GroupSessionMessengerController<PersonalDeviceCoordinationActivity, PresenceUpdateMessage> and conformance GroupSessionMessengerController<A, B>, &_s17WebBookmarksSwift31GroupSessionMessengerControllerCyAA34PersonalDeviceCoordinationActivityVAA21PresenceUpdateMessageVGMd, &_s17WebBookmarksSwift31GroupSessionMessengerControllerCyAA34PersonalDeviceCoordinationActivityVAA21PresenceUpdateMessageVGMR);
  v6 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type GroupSessionMessenger.Messages<PresenceUpdateMessage>.Iterator and conformance GroupSessionMessenger.Messages<A>.Iterator, &_s15GroupActivities0A16SessionMessengerC8MessagesV8IteratorVy_17WebBookmarksSwift21PresenceUpdateMessageV_GMd, &_s15GroupActivities0A16SessionMessengerC8MessagesV8IteratorVy_17WebBookmarksSwift21PresenceUpdateMessageV_GMR);
  v7 = *(MEMORY[0x277D856D0] + 4);
  v8 = swift_task_alloc();
  v0[24] = v8;
  *v8 = v0;
  v8[1] = specialized closure #1 in GroupSessionMessengerController._makeTasks();
  v9 = v0[22];
  v10 = v0[20];
  v11 = v0[16];

  return MEMORY[0x282200308](v11, v10, v6);
}

{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v2;

  v6 = *(v3 + 184);
  v7 = *(v3 + 24);
  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v8 = specialized closure #1 in GroupSessionMessengerController._makeTasks();
  }

  else
  {
    v8 = specialized closure #1 in GroupSessionMessengerController._makeTasks();
  }

  return MEMORY[0x2822009F8](v8);
}

{
  v1 = *(v0 + 24);
  return MEMORY[0x2822009F8](specialized closure #1 in GroupSessionMessengerController._makeTasks());
}

{
  v67 = v0;
  v1 = v0[16];
  v2 = v0[6];
  if ((*(v0[7] + 48))(v1, 1, v2) == 1)
  {
    (*(v0[21] + 8))(v0[22], v0[20]);
LABEL_13:
    v31 = v0[22];
    v32 = v0[19];
    v34 = v0[15];
    v33 = v0[16];
    v35 = v0[12];
    v37 = v0[8];
    v36 = v0[9];

    v38 = v0[1];

    return v38();
  }

  v3 = *(v2 + 48);
  v63 = *v1;
  v64 = v1[1];
  v4 = v1[3];
  v65 = v1[2];
  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  (*(v0[14] + 32))(v0[15], v1 + v3, v0[13]);
  if (static Task<>.isCancelled.getter())
  {
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v8 = v0[5];
    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.tabGroup);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[21];
    v13 = v0[22];
    v15 = v0[15];
    v57 = v15;
    v59 = v0[20];
    v16 = v0[13];
    v17 = v0[5];
    v18 = (v0[14] + 8);
    if (v12)
    {
      v19 = v0[4];
      v20 = swift_slowAlloc();
      v56 = v13;
      v21 = swift_slowAlloc();
      v66 = v21;
      *v20 = 136446210;

      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v17, &v66);
      _os_log_impl(&dword_272D1B000, v10, v11, "Did cancel receiving message subscription for activity %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x2743D7F00](v21, -1, -1);
      MEMORY[0x2743D7F00](v20, -1, -1);

      outlined consume of PresenceUpdateMessage.Kind(v63, v64);

      (*v18)(v57, v16);
      (*(v14 + 8))(v56, v59);
    }

    else
    {

      outlined consume of PresenceUpdateMessage.Kind(v63, v64);

      (*v18)(v57, v16);
      (*(v14 + 8))(v13, v59);
    }

    goto LABEL_13;
  }

  v60 = v5;
  if (one-time initialization token for tabGroup != -1)
  {
    swift_once();
  }

  v61 = v4;
  v62 = v7;
  v22 = v0[5];
  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.tabGroup);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  v26 = os_log_type_enabled(v24, v25);
  v27 = v0[5];
  if (v26)
  {
    v28 = v0[4];
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v66 = v30;
    *v29 = 136446210;

    *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v27, &v66);
    _os_log_impl(&dword_272D1B000, v24, v25, "Did receive message for activity %{public}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x2743D7F00](v30, -1, -1);
    MEMORY[0x2743D7F00](v29, -1, -1);
  }

  else
  {
  }

  v41 = v0[14];
  v40 = v0[15];
  v42 = v0[12];
  v43 = v0[13];
  v44 = v0[11];
  v58 = v0[10];
  v46 = v0[8];
  v45 = v0[9];
  v47 = *(v0[3] + 128);
  v48 = *(v0[6] + 48);
  *v45 = v63;
  v45[1] = v64;
  v45[2] = v65;
  v45[3] = v61;
  v45[4] = v6;
  v45[5] = v60;
  v45[6] = v62;
  (*(v41 + 16))(v45 + v48, v40, v43);
  v49 = *(*v47 + 88);
  outlined init with copy of TaskPriority?(v45, v46, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMd, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMR);
  AsyncStream.Continuation.yield(_:)();
  outlined destroy of TaskPriority?(v45, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMR);
  (*(v44 + 8))(v42, v58);
  (*(v41 + 8))(v40, v43);
  v50 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type GroupSessionMessenger.Messages<PresenceUpdateMessage>.Iterator and conformance GroupSessionMessenger.Messages<A>.Iterator, &_s15GroupActivities0A16SessionMessengerC8MessagesV8IteratorVy_17WebBookmarksSwift21PresenceUpdateMessageV_GMd, &_s15GroupActivities0A16SessionMessengerC8MessagesV8IteratorVy_17WebBookmarksSwift21PresenceUpdateMessageV_GMR);
  v51 = *(MEMORY[0x277D856D0] + 4);
  v52 = swift_task_alloc();
  v0[24] = v52;
  *v52 = v0;
  v52[1] = specialized closure #1 in GroupSessionMessengerController._makeTasks();
  v53 = v0[22];
  v54 = v0[20];
  v55 = v0[16];

  return MEMORY[0x282200308](v55, v54, v50);
}

{
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v5 = *(v0[3] + 136);
  lazy protocol witness table accessor for type PresenceUpdateMessage and conformance PresenceUpdateMessage();
  lazy protocol witness table accessor for type PresenceUpdateMessage and conformance PresenceUpdateMessage();
  GroupSessionMessenger.messages<A>(of:)();
  GroupSessionMessenger.Messages.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v0[23] = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type GroupSessionMessengerController<CKShareCollaborationActivity, PresenceUpdateMessage> and conformance GroupSessionMessengerController<A, B>, &_s17WebBookmarksSwift31GroupSessionMessengerControllerCyAA28CKShareCollaborationActivityVAA21PresenceUpdateMessageVGMd, &_s17WebBookmarksSwift31GroupSessionMessengerControllerCyAA28CKShareCollaborationActivityVAA21PresenceUpdateMessageVGMR);
  v6 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type GroupSessionMessenger.Messages<PresenceUpdateMessage>.Iterator and conformance GroupSessionMessenger.Messages<A>.Iterator, &_s15GroupActivities0A16SessionMessengerC8MessagesV8IteratorVy_17WebBookmarksSwift21PresenceUpdateMessageV_GMd, &_s15GroupActivities0A16SessionMessengerC8MessagesV8IteratorVy_17WebBookmarksSwift21PresenceUpdateMessageV_GMR);
  v7 = *(MEMORY[0x277D856D0] + 4);
  v8 = swift_task_alloc();
  v0[24] = v8;
  *v8 = v0;
  v8[1] = specialized closure #1 in GroupSessionMessengerController._makeTasks();
  v9 = v0[22];
  v10 = v0[20];
  v11 = v0[16];

  return MEMORY[0x282200308](v11, v10, v6);
}

{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v2;

  v6 = *(v3 + 184);
  v7 = *(v3 + 24);
  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v8 = specialized closure #1 in GroupSessionMessengerController._makeTasks();
  }

  else
  {
    v8 = specialized closure #1 in GroupSessionMessengerController._makeTasks();
  }

  return MEMORY[0x2822009F8](v8);
}

{
  v1 = *(v0 + 24);
  return MEMORY[0x2822009F8](specialized closure #1 in GroupSessionMessengerController._makeTasks());
}

{
  v67 = v0;
  v1 = v0[16];
  v2 = v0[6];
  if ((*(v0[7] + 48))(v1, 1, v2) == 1)
  {
    (*(v0[21] + 8))(v0[22], v0[20]);
LABEL_13:
    v31 = v0[22];
    v32 = v0[19];
    v34 = v0[15];
    v33 = v0[16];
    v35 = v0[12];
    v37 = v0[8];
    v36 = v0[9];

    v38 = v0[1];

    return v38();
  }

  v3 = *(v2 + 48);
  v63 = *v1;
  v64 = v1[1];
  v4 = v1[3];
  v65 = v1[2];
  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  (*(v0[14] + 32))(v0[15], v1 + v3, v0[13]);
  if (static Task<>.isCancelled.getter())
  {
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v8 = v0[5];
    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.tabGroup);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[21];
    v13 = v0[22];
    v15 = v0[15];
    v57 = v15;
    v59 = v0[20];
    v16 = v0[13];
    v17 = v0[5];
    v18 = (v0[14] + 8);
    if (v12)
    {
      v19 = v0[4];
      v20 = swift_slowAlloc();
      v56 = v13;
      v21 = swift_slowAlloc();
      v66 = v21;
      *v20 = 136446210;

      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v17, &v66);
      _os_log_impl(&dword_272D1B000, v10, v11, "Did cancel receiving message subscription for activity %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x2743D7F00](v21, -1, -1);
      MEMORY[0x2743D7F00](v20, -1, -1);

      outlined consume of PresenceUpdateMessage.Kind(v63, v64);

      (*v18)(v57, v16);
      (*(v14 + 8))(v56, v59);
    }

    else
    {

      outlined consume of PresenceUpdateMessage.Kind(v63, v64);

      (*v18)(v57, v16);
      (*(v14 + 8))(v13, v59);
    }

    goto LABEL_13;
  }

  v60 = v5;
  if (one-time initialization token for tabGroup != -1)
  {
    swift_once();
  }

  v61 = v4;
  v62 = v7;
  v22 = v0[5];
  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.tabGroup);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  v26 = os_log_type_enabled(v24, v25);
  v27 = v0[5];
  if (v26)
  {
    v28 = v0[4];
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v66 = v30;
    *v29 = 136446210;

    *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v27, &v66);
    _os_log_impl(&dword_272D1B000, v24, v25, "Did receive message for activity %{public}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x2743D7F00](v30, -1, -1);
    MEMORY[0x2743D7F00](v29, -1, -1);
  }

  else
  {
  }

  v41 = v0[14];
  v40 = v0[15];
  v42 = v0[12];
  v43 = v0[13];
  v44 = v0[11];
  v58 = v0[10];
  v46 = v0[8];
  v45 = v0[9];
  v47 = *(v0[3] + 128);
  v48 = *(v0[6] + 48);
  *v45 = v63;
  v45[1] = v64;
  v45[2] = v65;
  v45[3] = v61;
  v45[4] = v6;
  v45[5] = v60;
  v45[6] = v62;
  (*(v41 + 16))(v45 + v48, v40, v43);
  v49 = *(*v47 + 88);
  outlined init with copy of TaskPriority?(v45, v46, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMd, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMR);
  AsyncStream.Continuation.yield(_:)();
  outlined destroy of TaskPriority?(v45, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMR);
  (*(v44 + 8))(v42, v58);
  (*(v41 + 8))(v40, v43);
  v50 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type GroupSessionMessenger.Messages<PresenceUpdateMessage>.Iterator and conformance GroupSessionMessenger.Messages<A>.Iterator, &_s15GroupActivities0A16SessionMessengerC8MessagesV8IteratorVy_17WebBookmarksSwift21PresenceUpdateMessageV_GMd, &_s15GroupActivities0A16SessionMessengerC8MessagesV8IteratorVy_17WebBookmarksSwift21PresenceUpdateMessageV_GMR);
  v51 = *(MEMORY[0x277D856D0] + 4);
  v52 = swift_task_alloc();
  v0[24] = v52;
  *v52 = v0;
  v52[1] = specialized closure #1 in GroupSessionMessengerController._makeTasks();
  v53 = v0[22];
  v54 = v0[20];
  v55 = v0[16];

  return MEMORY[0x282200308](v55, v54, v50);
}

{
  *(v0 + 16) = *(v0 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}