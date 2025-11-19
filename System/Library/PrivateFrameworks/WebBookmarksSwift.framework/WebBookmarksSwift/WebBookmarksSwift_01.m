uint64_t specialized closure #2 in GroupSessionMessengerController._makeTasks()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[16] = a4;
  v7 = type metadata accessor for Participants();
  v6[19] = v7;
  v8 = *(v7 - 8);
  v6[20] = v8;
  v9 = *(v8 + 64) + 15;
  v6[21] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy17WebBookmarksSwift21PresenceUpdateMessageV_GMd, &_sScS8IteratorVy17WebBookmarksSwift21PresenceUpdateMessageV_GMR);
  v6[22] = v10;
  v11 = *(v10 - 8);
  v6[23] = v11;
  v12 = *(v11 + 64) + 15;
  v6[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #2 in GroupSessionMessengerController._makeTasks());
}

{
  v6[17] = a5;
  v6[18] = a6;
  v6[16] = a4;
  v7 = type metadata accessor for Participants();
  v6[19] = v7;
  v8 = *(v7 - 8);
  v6[20] = v8;
  v9 = *(v8 + 64) + 15;
  v6[21] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy17WebBookmarksSwift21PresenceUpdateMessageV_GMd, &_sScS8IteratorVy17WebBookmarksSwift21PresenceUpdateMessageV_GMR);
  v6[22] = v10;
  v11 = *(v10 - 8);
  v6[23] = v11;
  v12 = *(v11 + 64) + 15;
  v6[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #2 in GroupSessionMessengerController._makeTasks());
}

uint64_t specialized closure #2 in GroupSessionMessengerController._makeTasks()()
{
  v1 = *(v0 + 192);
  v2 = *(**(*(v0 + 128) + 120) + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy17WebBookmarksSwift21PresenceUpdateMessageVGMd, &_sScSy17WebBookmarksSwift21PresenceUpdateMessageVGMR);
  AsyncStream.makeAsyncIterator()();
  v3 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type GroupSessionMessengerController<PersonalDeviceCoordinationActivity, PresenceUpdateMessage> and conformance GroupSessionMessengerController<A, B>, &_s17WebBookmarksSwift31GroupSessionMessengerControllerCyAA34PersonalDeviceCoordinationActivityVAA21PresenceUpdateMessageVGMd, &_s17WebBookmarksSwift31GroupSessionMessengerControllerCyAA34PersonalDeviceCoordinationActivityVAA21PresenceUpdateMessageVGMR);
  *(v0 + 200) = v3;
  *(v0 + 240) = *MEMORY[0x277CCB260];
  v4 = *(v0 + 128);
  v5 = *(MEMORY[0x277D85798] + 4);
  v6 = swift_task_alloc();
  *(v0 + 208) = v6;
  *v6 = v0;
  v6[1] = specialized closure #2 in GroupSessionMessengerController._makeTasks();
  v7 = *(v0 + 192);
  v8 = *(v0 + 176);

  return MEMORY[0x2822003E8](v0 + 16, v4, v3, v8);
}

{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x2822009F8](specialized closure #2 in GroupSessionMessengerController._makeTasks());
}

{
  v38 = v0;
  v1 = *(v0 + 64);
  if (!v1)
  {
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
LABEL_14:
    v27 = *(v0 + 192);
    v28 = *(v0 + 168);

    v29 = *(v0 + 8);

    return v29();
  }

  v2 = *(v0 + 32);
  *(v0 + 72) = *(v0 + 16);
  *(v0 + 88) = v2;
  *(v0 + 104) = *(v0 + 48);
  *(v0 + 120) = v1;
  if (static Task<>.isCancelled.getter())
  {
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 144);
    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.tabGroup);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    v7 = os_log_type_enabled(v5, v6);
    v9 = *(v0 + 184);
    v8 = *(v0 + 192);
    v10 = *(v0 + 176);
    v11 = *(v0 + 144);
    if (v7)
    {
      v12 = *(v0 + 136);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v37 = v14;
      *v13 = 136446210;

      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v37);
      _os_log_impl(&dword_272D1B000, v5, v6, "Did cancel sending message subscription for activity %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x2743D7F00](v14, -1, -1);
      MEMORY[0x2743D7F00](v13, -1, -1);
    }

    else
    {
    }

    v24 = *(v0 + 88);
    v25 = *(v0 + 96);
    v26 = *(v0 + 120);
    outlined consume of PresenceUpdateMessage.Kind(*(v0 + 72), *(v0 + 80));

    (*(v9 + 8))(v8, v10);
    goto LABEL_14;
  }

  if (one-time initialization token for tabGroup != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 144);
  v16 = type metadata accessor for Logger();
  *(v0 + 216) = __swift_project_value_buffer(v16, static Logger.tabGroup);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v0 + 144);
  if (v19)
  {
    v21 = *(v0 + 136);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v37 = v23;
    *v22 = 136446210;

    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v20, &v37);
    _os_log_impl(&dword_272D1B000, v17, v18, "Will send message to activity %{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x2743D7F00](v23, -1, -1);
    MEMORY[0x2743D7F00](v22, -1, -1);
  }

  else
  {
  }

  v31 = *(*(v0 + 128) + 136);
  (*(*(v0 + 160) + 104))(*(v0 + 168), *(v0 + 240), *(v0 + 152));
  v32 = *(MEMORY[0x277CCB190] + 4);
  v33 = swift_task_alloc();
  *(v0 + 224) = v33;
  updated = lazy protocol witness table accessor for type PresenceUpdateMessage and conformance PresenceUpdateMessage();
  v35 = lazy protocol witness table accessor for type PresenceUpdateMessage and conformance PresenceUpdateMessage();
  *v33 = v0;
  v33[1] = specialized closure #2 in GroupSessionMessengerController._makeTasks();
  v36 = *(v0 + 168);

  return MEMORY[0x28211FC98](v0 + 72, v36, &type metadata for PresenceUpdateMessage, updated, v35);
}

{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *(*v1 + 168);
  v5 = *(*v1 + 160);
  v6 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 232) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 128);
  if (v0)
  {
    v9 = specialized closure #2 in GroupSessionMessengerController._makeTasks();
  }

  else
  {
    v9 = specialized closure #2 in GroupSessionMessengerController._makeTasks();
  }

  return MEMORY[0x2822009F8](v9);
}

{
  v22 = v0;
  v1 = v0[27];
  v2 = v0[18];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[18];
  if (v5)
  {
    v7 = v0[17];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136446210;

    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v21);
    _os_log_impl(&dword_272D1B000, v3, v4, "Did send message to activity %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x2743D7F00](v9, -1, -1);
    MEMORY[0x2743D7F00](v8, -1, -1);
  }

  else
  {
    v10 = v0[18];
  }

  v11 = v0[11];
  v12 = v0[12];
  v13 = v0[15];
  outlined consume of PresenceUpdateMessage.Kind(v0[9], v0[10]);

  v14 = v0[25];
  v15 = v0[16];
  v16 = *(MEMORY[0x277D85798] + 4);
  v17 = swift_task_alloc();
  v0[26] = v17;
  *v17 = v0;
  v17[1] = specialized closure #2 in GroupSessionMessengerController._makeTasks();
  v18 = v0[24];
  v19 = v0[22];

  return MEMORY[0x2822003E8](v0 + 2, v15, v14, v19);
}

{
  v28 = v0;
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[18];

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[29];
  v9 = v0[18];
  if (v7)
  {
    v10 = v0[17];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v11 = 136446466;
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v27);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2112;
    v15 = v8;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v16;
    *v12 = v16;
    _os_log_impl(&dword_272D1B000, v5, v6, "Failed to send message to activity %{public}s with error: %@", v11, 0x16u);
    outlined destroy of TaskPriority?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2743D7F00](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x2743D7F00](v13, -1, -1);
    MEMORY[0x2743D7F00](v11, -1, -1);
  }

  else
  {
  }

  v17 = v0[11];
  v18 = v0[12];
  v19 = v0[15];
  outlined consume of PresenceUpdateMessage.Kind(v0[9], v0[10]);

  v20 = v0[25];
  v21 = v0[16];
  v22 = *(MEMORY[0x277D85798] + 4);
  v23 = swift_task_alloc();
  v0[26] = v23;
  *v23 = v0;
  v23[1] = specialized closure #2 in GroupSessionMessengerController._makeTasks();
  v24 = v0[24];
  v25 = v0[22];

  return MEMORY[0x2822003E8](v0 + 2, v21, v20, v25);
}

{
  v1 = *(v0 + 192);
  v2 = *(**(*(v0 + 128) + 120) + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy17WebBookmarksSwift21PresenceUpdateMessageVGMd, &_sScSy17WebBookmarksSwift21PresenceUpdateMessageVGMR);
  AsyncStream.makeAsyncIterator()();
  v3 = lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type GroupSessionMessengerController<CKShareCollaborationActivity, PresenceUpdateMessage> and conformance GroupSessionMessengerController<A, B>, &_s17WebBookmarksSwift31GroupSessionMessengerControllerCyAA28CKShareCollaborationActivityVAA21PresenceUpdateMessageVGMd, &_s17WebBookmarksSwift31GroupSessionMessengerControllerCyAA28CKShareCollaborationActivityVAA21PresenceUpdateMessageVGMR);
  *(v0 + 200) = v3;
  *(v0 + 240) = *MEMORY[0x277CCB260];
  v4 = *(v0 + 128);
  v5 = *(MEMORY[0x277D85798] + 4);
  v6 = swift_task_alloc();
  *(v0 + 208) = v6;
  *v6 = v0;
  v6[1] = specialized closure #2 in GroupSessionMessengerController._makeTasks();
  v7 = *(v0 + 192);
  v8 = *(v0 + 176);

  return MEMORY[0x2822003E8](v0 + 16, v4, v3, v8);
}

{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x2822009F8](specialized closure #2 in GroupSessionMessengerController._makeTasks());
}

{
  v38 = v0;
  v1 = *(v0 + 64);
  if (!v1)
  {
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
LABEL_14:
    v27 = *(v0 + 192);
    v28 = *(v0 + 168);

    v29 = *(v0 + 8);

    return v29();
  }

  v2 = *(v0 + 32);
  *(v0 + 72) = *(v0 + 16);
  *(v0 + 88) = v2;
  *(v0 + 104) = *(v0 + 48);
  *(v0 + 120) = v1;
  if (static Task<>.isCancelled.getter())
  {
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 144);
    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.tabGroup);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    v7 = os_log_type_enabled(v5, v6);
    v9 = *(v0 + 184);
    v8 = *(v0 + 192);
    v10 = *(v0 + 176);
    v11 = *(v0 + 144);
    if (v7)
    {
      v12 = *(v0 + 136);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v37 = v14;
      *v13 = 136446210;

      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v37);
      _os_log_impl(&dword_272D1B000, v5, v6, "Did cancel sending message subscription for activity %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x2743D7F00](v14, -1, -1);
      MEMORY[0x2743D7F00](v13, -1, -1);
    }

    else
    {
    }

    v24 = *(v0 + 88);
    v25 = *(v0 + 96);
    v26 = *(v0 + 120);
    outlined consume of PresenceUpdateMessage.Kind(*(v0 + 72), *(v0 + 80));

    (*(v9 + 8))(v8, v10);
    goto LABEL_14;
  }

  if (one-time initialization token for tabGroup != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 144);
  v16 = type metadata accessor for Logger();
  *(v0 + 216) = __swift_project_value_buffer(v16, static Logger.tabGroup);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v0 + 144);
  if (v19)
  {
    v21 = *(v0 + 136);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v37 = v23;
    *v22 = 136446210;

    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v20, &v37);
    _os_log_impl(&dword_272D1B000, v17, v18, "Will send message to activity %{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x2743D7F00](v23, -1, -1);
    MEMORY[0x2743D7F00](v22, -1, -1);
  }

  else
  {
  }

  v31 = *(*(v0 + 128) + 136);
  (*(*(v0 + 160) + 104))(*(v0 + 168), *(v0 + 240), *(v0 + 152));
  v32 = *(MEMORY[0x277CCB190] + 4);
  v33 = swift_task_alloc();
  *(v0 + 224) = v33;
  updated = lazy protocol witness table accessor for type PresenceUpdateMessage and conformance PresenceUpdateMessage();
  v35 = lazy protocol witness table accessor for type PresenceUpdateMessage and conformance PresenceUpdateMessage();
  *v33 = v0;
  v33[1] = specialized closure #2 in GroupSessionMessengerController._makeTasks();
  v36 = *(v0 + 168);

  return MEMORY[0x28211FC98](v0 + 72, v36, &type metadata for PresenceUpdateMessage, updated, v35);
}

{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *(*v1 + 168);
  v5 = *(*v1 + 160);
  v6 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 232) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 128);
  if (v0)
  {
    v9 = specialized closure #2 in GroupSessionMessengerController._makeTasks();
  }

  else
  {
    v9 = specialized closure #2 in GroupSessionMessengerController._makeTasks();
  }

  return MEMORY[0x2822009F8](v9);
}

{
  v22 = v0;
  v1 = v0[27];
  v2 = v0[18];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[18];
  if (v5)
  {
    v7 = v0[17];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136446210;

    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v21);
    _os_log_impl(&dword_272D1B000, v3, v4, "Did send message to activity %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x2743D7F00](v9, -1, -1);
    MEMORY[0x2743D7F00](v8, -1, -1);
  }

  else
  {
    v10 = v0[18];
  }

  v11 = v0[11];
  v12 = v0[12];
  v13 = v0[15];
  outlined consume of PresenceUpdateMessage.Kind(v0[9], v0[10]);

  v14 = v0[25];
  v15 = v0[16];
  v16 = *(MEMORY[0x277D85798] + 4);
  v17 = swift_task_alloc();
  v0[26] = v17;
  *v17 = v0;
  v17[1] = specialized closure #2 in GroupSessionMessengerController._makeTasks();
  v18 = v0[24];
  v19 = v0[22];

  return MEMORY[0x2822003E8](v0 + 2, v15, v14, v19);
}

{
  v28 = v0;
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[18];

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[29];
  v9 = v0[18];
  if (v7)
  {
    v10 = v0[17];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v11 = 136446466;
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v27);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2112;
    v15 = v8;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v16;
    *v12 = v16;
    _os_log_impl(&dword_272D1B000, v5, v6, "Failed to send message to activity %{public}s with error: %@", v11, 0x16u);
    outlined destroy of TaskPriority?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2743D7F00](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x2743D7F00](v13, -1, -1);
    MEMORY[0x2743D7F00](v11, -1, -1);
  }

  else
  {
  }

  v17 = v0[11];
  v18 = v0[12];
  v19 = v0[15];
  outlined consume of PresenceUpdateMessage.Kind(v0[9], v0[10]);

  v20 = v0[25];
  v21 = v0[16];
  v22 = *(MEMORY[0x277D85798] + 4);
  v23 = swift_task_alloc();
  v0[26] = v23;
  *v23 = v0;
  v23[1] = specialized closure #2 in GroupSessionMessengerController._makeTasks();
  v24 = v0[24];
  v25 = v0[22];

  return MEMORY[0x2822003E8](v0 + 2, v21, v20, v25);
}

uint64_t specialized GroupSessionMessengerController.finish()()
{
  v1 = v0;
  v2 = *(**(v0 + 128) + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMd, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMR);
  AsyncStream.Continuation.finish()();
  v3 = *(**(v0 + 120) + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_GMd, &_sScS12ContinuationVy17WebBookmarksSwift21PresenceUpdateMessageV_GMR);
  AsyncStream.Continuation.finish()();
  swift_beginAccess();
  v4 = *(v0 + 144);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(v1 + 144);

    v7 = 32;
    v8 = MEMORY[0x277D84F78];
    v9 = MEMORY[0x277D84A98];
    v10 = MEMORY[0x277D84AC0];
    do
    {
      v11 = *(v4 + v7);

      MEMORY[0x2743D73C0](v12, v8 + 8, v9, v10);

      v7 += 8;
      --v5;
    }

    while (v5);

    v13 = *(v1 + 144);
  }

  *(v1 + 144) = MEMORY[0x277D84F90];
}

uint64_t ParticipantPresenceCoordinator.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ParticipantPresenceCoordinator.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____WBParticipantPresenceCoordinator_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return ParticipantPresenceCoordinator.delegate.modify;
}

void ParticipantPresenceCoordinator.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t ParticipantPresenceCoordinator.ConnectionManagerStore.sharedConnectionManager(forTabGroup:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for tabGroup != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.tabGroup);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29 = v10;
    *v9 = 136446466;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v29);
    *(v9 + 12) = 1026;
    swift_beginAccess();
    v11 = *(*(v2 + 136) + 16);
    if (v11)
    {
      v12 = *(v2 + 136);

      specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
      v14 = v13;

      LODWORD(v11) = v14 & 1;
    }

    *(v9 + 14) = v11;

    _os_log_impl(&dword_272D1B000, v7, v8, "Getting connection manager for tab group %{public}s, has manager: %{BOOL,public}d", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x2743D7F00](v10, -1, -1);
    MEMORY[0x2743D7F00](v9, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  v15 = *(v2 + 136);
  if (!*(v15 + 16))
  {
    goto LABEL_12;
  }

  v16 = *(v3 + 136);

  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v18 & 1) == 0)
  {

LABEL_12:
    v21 = 0;
    v26 = 0;
    v27 = 0;
    goto LABEL_13;
  }

  v19 = *(v15 + 56) + 48 * v17;
  v20 = *v19;
  v22 = *(v19 + 16);
  v21 = *(v19 + 24);
  v23 = *(v19 + 32);
  v24 = *(v19 + 40);
  v25 = *(v19 + 8);

  swift_retain_n();

  v26 = v25;
  v27 = v20;
LABEL_13:
  outlined consume of ParticipantPresenceCoordinator.ConnectionManagerStore.SharedConnection?(v27, v26);
  return v21;
}

uint64_t ParticipantPresenceCoordinator.ConnectionManagerStore.updateSharedConnection(with:)(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.ConnectionManagerStore.updateSharedConnection(with:));
}

uint64_t ParticipantPresenceCoordinator.ConnectionManagerStore.updateSharedConnection(with:)()
{
  v50 = v0;
  v1 = [*(v0 + 152) recordID];
  v2 = [v1 zoneID];

  v3 = [v2 safari_tabGroupRootRecordName];
  if (!v3)
  {
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.tabGroup);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_33;
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_272D1B000, v29, v30, "Trying to start a collaboration activity with a CKShare not attached to a tab group", v31, 2u);
    v32 = v31;
LABEL_32:
    MEMORY[0x2743D7F00](v32, -1, -1);
LABEL_33:

LABEL_35:
    v27 = 0;
LABEL_36:
    v47 = *(v0 + 8);

    return v47(v27);
  }

  v4 = *(v0 + 160);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  *(v0 + 168) = v5;
  *(v0 + 176) = v7;
  v8 = *(v0 + 160);
  if (*(v4 + 152) == 1)
  {
    swift_beginAccess();
    v9 = *(v8 + 144);
    if (*(v9 + 16))
    {
      v10 = *(v8 + 144);

      v11 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7);
      if (v12)
      {
        v13 = *(v0 + 160);
        v14 = *(*(v9 + 56) + 16 * v11);

        v15 = ParticipantPresenceCoordinator.ConnectionManagerStore.pausedSharedConnections.modify();
        v17 = specialized Dictionary.subscript.modify((v0 + 48), v5, v7);
        v18 = *v16;
        if (*v16)
        {
          v19 = *(v0 + 152);
          *v16 = v19;
          v20 = v19;
        }

        (v17)(v0 + 48, 0);
        (v15)(v0 + 16, 0);
        if (one-time initialization token for tabGroup != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        __swift_project_value_buffer(v21, static Logger.tabGroup);

        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v49 = v25;
          *v24 = 136446210;
          v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v49);

          *(v24 + 4) = v26;
          _os_log_impl(&dword_272D1B000, v22, v23, "Updating paused connection share for tab group %{public}s", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v25);
          MEMORY[0x2743D7F00](v25, -1, -1);
          MEMORY[0x2743D7F00](v24, -1, -1);
        }

        else
        {
        }

        v27 = v14;
        goto LABEL_36;
      }
    }

    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Logger.tabGroup);

    v29 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v29, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v49 = v42;
      *v41 = 136446210;
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v49);

      *(v41 + 4) = v43;
      v44 = "No paused connections to update for tab group %{public}s";
LABEL_31:
      _os_log_impl(&dword_272D1B000, v29, v40, v44, v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x2743D7F00](v42, -1, -1);
      v32 = v41;
      goto LABEL_32;
    }

    goto LABEL_34;
  }

  swift_beginAccess();
  v33 = *(v8 + 136);
  if (!*(v33 + 16))
  {
LABEL_27:
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.tabGroup);

    v29 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v29, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v49 = v42;
      *v41 = 136446210;
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v49);

      *(v41 + 4) = v46;
      v44 = "No active connections to update for tab group %{public}s";
      goto LABEL_31;
    }

LABEL_34:

    goto LABEL_35;
  }

  v34 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7);
  if ((v35 & 1) == 0)
  {

    goto LABEL_27;
  }

  v36 = (*(v33 + 56) + 48 * v34);
  v37 = v36[1];
  *(v0 + 184) = v37;
  *(v0 + 192) = v36[2];
  *(v0 + 200) = v36[3];
  *(v0 + 208) = v36[4];
  v38 = v37;

  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.ConnectionManagerStore.updateSharedConnection(with:));
}

{
  v1 = v0[25];
  swift_beginAccess();
  v0[27] = v1[14];
  v2 = v1[15];
  v0[28] = v2;
  v3 = v1[16] >> 61;
  v4 = v0[20];
  if (v3 > 2)
  {
    if (v3 == 3)
    {

      v8 = ParticipantPresenceCoordinator.ConnectionManagerStore.updateSharedConnection(with:);
    }

    else
    {
      if (v3 == 4)
      {

        v6 = v2;

        v7 = ParticipantPresenceCoordinator.ConnectionManagerStore.updateSharedConnection(with:);
      }

      else
      {
        v7 = ParticipantPresenceCoordinator.ConnectionManagerStore.updateSharedConnection(with:);
      }

      v8 = v7;
    }
  }

  else
  {
    if (v3)
    {
      v5 = ParticipantPresenceCoordinator.ConnectionManagerStore.updateSharedConnection(with:);
    }

    else
    {
      v5 = ParticipantPresenceCoordinator.ConnectionManagerStore.updateSharedConnection(with:);
    }

    v9 = v5;

    v8 = v9;
  }

  return MEMORY[0x2822009F8](v8);
}

{
  v1 = *(v0 + 216);
  v2 = *(v0 + 152);
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = v2;
  v4 = v2;

  swift_beginAccess();
  v5 = *(v1 + 48);

  *(v0 + 128) = CKShare.members.getter();
  CurrentValueSubject.send(_:)();

  v6 = *(v0 + 192);
  v7 = *(v0 + 184);

  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.ConnectionManagerStore.updateSharedConnection(with:));
}

{
  v1 = *(v0 + 224);
  v2 = *(v0 + 152);
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = v2;
  v4 = v2;

  swift_beginAccess();
  v5 = *(v1 + 48);

  *(v0 + 128) = CKShare.members.getter();
  CurrentValueSubject.send(_:)();

  v6 = *(v0 + 192);
  v7 = *(v0 + 184);

  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.ConnectionManagerStore.updateSharedConnection(with:));
}

{
  v1 = *(v0 + 192);
  v2 = *(v0 + 184);

  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.ConnectionManagerStore.updateSharedConnection(with:));
}

{
  v1 = specialized static ParticipantHandleMap.handlesToParticipantKindsForShare(_:)(*(v0 + 152));
  *(v0 + 232) = 0;
  v2 = *(v0 + 160);
  v3 = *(v0 + 192);
  v4 = *(v3 + 112);
  *(v3 + 112) = v1;

  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.ConnectionManagerStore.updateSharedConnection(with:));
}

{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  swift_beginAccess();
  v4 = *(v3 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v3 + 136);
  *(v3 + 136) = 0x8000000000000000;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v2, v1);
  v8 = v30[2];
  v9 = (v6 & 1) == 0;
  result = v8 + v9;
  if (__OFADD__(v8, v9))
  {
    __break(1u);
    goto LABEL_18;
  }

  v11 = v6;
  if (v30[3] >= result)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      result = specialized _NativeDictionary.copy()();
    }
  }

  else
  {
    v13 = *(v0 + 168);
    v12 = *(v0 + 176);
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(result, isUniquelyReferenced_nonNull_native);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
    if ((v11 & 1) != (v14 & 1))
    {

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

    v7 = result;
  }

  if ((v11 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v15 = v30[7] + 48 * v7;
  v16 = *v15;
  v17 = *(v15 + 8);
  v29 = *(v15 + 16);
  v18 = *(v15 + 32);
  v19 = *(v15 + 40);
  v20 = *(v0 + 152);

  if (v20)
  {
    v21 = *(v0 + 152);
    v22 = v30[7] + 48 * v7;
    *v22 = v16;
    *(v22 + 8) = v21;
    *(v22 + 16) = v29;
    *(v22 + 32) = v18;
    *(v22 + 40) = v19;
  }

  else
  {
    outlined destroy of String(v30[6] + 16 * v7);
    specialized _NativeDictionary._delete(at:)(v7, v30);
  }

  v24 = *(v0 + 200);
  v23 = *(v0 + 208);
  v26 = *(v0 + 184);
  v25 = *(v0 + 192);
  v27 = *(v0 + 176);
  *(*(v0 + 160) + 136) = v30;
  swift_endAccess();

  v28 = *(v0 + 8);

  return v28(v26);
}

{
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[23];
  v3 = v0[24];

  v5 = v0[1];
  v6 = v0[29];

  return v5();
}

uint64_t ParticipantPresenceCoordinator.ConnectionManagerStore.__deallocating_deinit()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[17];

  v4 = v0[18];

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t ParticipantPresenceCoordinator.currentConnectionState()()
{
  *(v1 + 72) = v0;
  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.currentConnectionState());
}

{
  *(v0 + 80) = *(*(v0 + 72) + OBJC_IVAR____WBParticipantPresenceCoordinator_connectionManagerStore);
  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.currentConnectionState());
}

{
  v1 = *(v0[10] + 112);
  v0[11] = v1;

  if (v1)
  {
    v2 = ParticipantPresenceCoordinator.currentConnectionState();
  }

  else
  {
    v0[14] = MEMORY[0x277D84F98];
    v2 = ParticipantPresenceCoordinator.currentConnectionState();
  }

  return MEMORY[0x2822009F8](v2);
}

{
  *(v0 + 96) = *(*(v0 + 88) + 168);

  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.currentConnectionState());
}

{
  if (v0[12])
  {
    v1 = v0[10];
    v2 = ParticipantPresenceCoordinator.currentConnectionState();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(-1, 0, 0xE000000000000000, isUniquelyReferenced_nonNull_native);
    v0[14] = v3;
    v5 = v0[10];
    v2 = ParticipantPresenceCoordinator.currentConnectionState();
  }

  return MEMORY[0x2822009F8](v2);
}

{
  *(v0 + 104) = *(*(v0 + 80) + 128);
  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.currentConnectionState());
}

{
  v1 = v0[13];
  v2 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v1, 0, 0xE000000000000000, isUniquelyReferenced_nonNull_native);
  v0[14] = v2;
  v4 = v0[10];

  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.currentConnectionState());
}

{
  v1 = *(v0 + 80);
  swift_beginAccess();
  *(v0 + 120) = *(v1 + 136);

  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.currentConnectionState());
}

{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v1 + 32);
  *(v0 + 216) = v3;
  v4 = -1;
  v5 = -1 << v3;
  v6 = *(v1 + 64);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  *(v0 + 128) = v2;
  v7 = v4 & v6;
  if ((v4 & v6) != 0)
  {
    v8 = 0;
LABEL_8:
    *(v0 + 136) = v7;
    *(v0 + 144) = v8;
    v11 = __clz(__rbit64(v7)) | (v8 << 6);
    v12 = (*(v1 + 48) + 16 * v11);
    *(v0 + 152) = *v12;
    *(v0 + 160) = v12[1];
    v13 = (*(v1 + 56) + 48 * v11);
    v14 = v13[1];
    *(v0 + 168) = v14;
    *(v0 + 176) = v13[2];
    *(v0 + 184) = v13[3];
    *(v0 + 192) = v13[4];
    *(v0 + 200) = v13[5];

    v15 = v14;

    v16 = ParticipantPresenceCoordinator.currentConnectionState();
  }

  else
  {
    v9 = 0;
    v10 = ((63 - v5) >> 6) - 1;
    while (v10 != v9)
    {
      v8 = v9 + 1;
      v7 = *(v1 + 8 * v9++ + 72);
      if (v7)
      {
        goto LABEL_8;
      }
    }

    v17 = *(v0 + 80);

    v16 = ParticipantPresenceCoordinator.currentConnectionState();
  }

  return MEMORY[0x2822009F8](v16);
}

{
  if (*(*(v0 + 184) + 168))
  {
    v1 = ParticipantPresenceCoordinator.currentConnectionState();
  }

  else
  {
    v1 = ParticipantPresenceCoordinator.currentConnectionState();
  }

  return MEMORY[0x2822009F8](v1);
}

{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 128);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 64) = v3;
  v5 = (v0 + 64);
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v2, v1);
  v8 = *(v3 + 16);
  v9 = (v7 & 1) == 0;
  v10 = __OFADD__(v8, v9);
  v11 = v8 + v9;
  if (v10)
  {
    goto LABEL_24;
  }

  LOBYTE(v2) = v7;
  if (*(*(v0 + 128) + 24) >= v11)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_25;
    }

    while (1)
    {
LABEL_8:
      v18 = *(v0 + 184);
      v17 = *(v0 + 192);
      v20 = *(v0 + 168);
      v19 = *(v0 + 176);
      v21 = *(v0 + 160);
      if (v2)
      {
        v2 = v6;
        v22 = *(v0 + 160);

        v5 = *v5;
        *(v5[7] + 8 * v2) = -1;
      }

      else
      {
        v23 = *(v0 + 152);
        v5 = *(v0 + 64);
        v5[(v6 >> 6) + 8] |= 1 << v6;
        v24 = (v5[6] + 16 * v6);
        *v24 = v23;
        v24[1] = v21;
        *(v5[7] + 8 * v6) = -1;

        v25 = v5[2];
        v10 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v10)
        {
          __break(1u);
          return MEMORY[0x2822009F8](v6);
        }

        v5[2] = v26;
      }

      v28 = *(v0 + 136);
      v27 = *(v0 + 144);
      *(v0 + 128) = v5;
      v29 = (v28 - 1) & v28;
      if (v29)
      {
        break;
      }

      while (1)
      {
        v30 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        v6 = *(v0 + 120);
        if (v30 >= (((1 << *(v0 + 216)) + 63) >> 6))
        {
          v36 = *(v0 + 80);

          v6 = ParticipantPresenceCoordinator.currentConnectionState();
          goto LABEL_19;
        }

        v29 = *(v6 + 8 * v30 + 64);
        ++v27;
        if (v29)
        {
          v27 = v30;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      v37 = v6;
      specialized _NativeDictionary.copy()();
      v6 = v37;
    }

    v6 = *(v0 + 120);
LABEL_18:
    *(v0 + 136) = v29;
    *(v0 + 144) = v27;
    v31 = __clz(__rbit64(v29)) | (v27 << 6);
    v32 = (*(v6 + 48) + 16 * v31);
    *(v0 + 152) = *v32;
    *(v0 + 160) = v32[1];
    v33 = (*(v6 + 56) + 48 * v31);
    v34 = v33[1];
    *(v0 + 168) = v34;
    *(v0 + 176) = v33[2];
    *(v0 + 184) = v33[3];
    *(v0 + 192) = v33[4];
    *(v0 + 200) = v33[5];

    v35 = v34;

    v6 = ParticipantPresenceCoordinator.currentConnectionState();
LABEL_19:

    return MEMORY[0x2822009F8](v6);
  }

  else
  {
    v13 = *(v0 + 152);
    v12 = *(v0 + 160);
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v11, isUniquelyReferenced_nonNull_native);
    v14 = *(v0 + 64);
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
    if ((v2 & 1) == (v15 & 1))
    {
      goto LABEL_8;
    }

    return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  }
}

{
  v1 = *(v0 + 200);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = *(v0 + 128);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 64) = v4;
  v6 = (v0 + 64);
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v2);
  v9 = *(v4 + 16);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    goto LABEL_24;
  }

  LOBYTE(v3) = v8;
  if (*(*(v0 + 128) + 24) >= v12)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_25;
    }

    while (1)
    {
LABEL_8:
      v19 = *(v0 + 184);
      v18 = *(v0 + 192);
      v21 = *(v0 + 168);
      v20 = *(v0 + 176);
      v22 = *(v0 + 160);
      if (v3)
      {
        v3 = v7;
        v23 = *(v0 + 160);

        v6 = *v6;
        *(v6[7] + 8 * v3) = v1;
      }

      else
      {
        v24 = *(v0 + 152);
        v6 = *(v0 + 64);
        v6[(v7 >> 6) + 8] |= 1 << v7;
        v25 = (v6[6] + 16 * v7);
        *v25 = v24;
        v25[1] = v22;
        *(v6[7] + 8 * v7) = v1;

        v26 = v6[2];
        v11 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v11)
        {
          __break(1u);
          return MEMORY[0x2822009F8](v7);
        }

        v6[2] = v27;
      }

      v29 = *(v0 + 136);
      v28 = *(v0 + 144);
      *(v0 + 128) = v6;
      v30 = (v29 - 1) & v29;
      if (v30)
      {
        break;
      }

      while (1)
      {
        v31 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        v7 = *(v0 + 120);
        if (v31 >= (((1 << *(v0 + 216)) + 63) >> 6))
        {
          v37 = *(v0 + 80);

          v7 = ParticipantPresenceCoordinator.currentConnectionState();
          goto LABEL_19;
        }

        v30 = *(v7 + 8 * v31 + 64);
        ++v28;
        if (v30)
        {
          v28 = v31;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      v38 = v7;
      specialized _NativeDictionary.copy()();
      v7 = v38;
    }

    v7 = *(v0 + 120);
LABEL_18:
    *(v0 + 136) = v30;
    *(v0 + 144) = v28;
    v32 = __clz(__rbit64(v30)) | (v28 << 6);
    v33 = (*(v7 + 48) + 16 * v32);
    *(v0 + 152) = *v33;
    *(v0 + 160) = v33[1];
    v34 = (*(v7 + 56) + 48 * v32);
    v35 = v34[1];
    *(v0 + 168) = v35;
    *(v0 + 176) = v34[2];
    *(v0 + 184) = v34[3];
    *(v0 + 192) = v34[4];
    *(v0 + 200) = v34[5];

    v36 = v35;

    v7 = ParticipantPresenceCoordinator.currentConnectionState();
LABEL_19:

    return MEMORY[0x2822009F8](v7);
  }

  else
  {
    v14 = *(v0 + 152);
    v13 = *(v0 + 160);
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v12, isUniquelyReferenced_nonNull_native);
    v15 = *(v0 + 64);
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v13);
    if ((v3 & 1) == (v16 & 1))
    {
      goto LABEL_8;
    }

    return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  }
}

{
  v1 = *(v0 + 80);
  swift_beginAccess();
  *(v0 + 208) = *(v1 + 144);

  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.currentConnectionState());
}

void ParticipantPresenceCoordinator.currentConnectionState()()
{
  v1 = 0;
  v2 = *(v0 + 208);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = -1;
  v7 = -1 << *(*(v0 + 208) + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v10 = *(v0 + 128);
  v11 = *(v0 + 208);
  if ((v6 & v3) != 0)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v13 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v13 >= v9)
    {
      v30 = *(v32 + 208);

      v31 = *(v32 + 8);

      v31(v10);
      return;
    }

    v8 = *(v4 + 8 * v13);
    ++v1;
  }

  while (!v8);
  while (1)
  {
    v14 = (*(v11 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v8)))));
    v16 = *v14;
    v15 = v14[1];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v15);
    v20 = v10[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      break;
    }

    v24 = v19;
    if (v10[3] >= v23)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = v18;
        specialized _NativeDictionary.copy()();
        v18 = v29;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, isUniquelyReferenced_nonNull_native);
      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v15);
      if ((v24 & 1) != (v25 & 1))
      {

        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        return;
      }
    }

    v8 &= v8 - 1;
    if (v24)
    {
      v12 = v18;

      *(v10[7] + 8 * v12) = -2;
      v1 = v13;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v10[(v18 >> 6) + 8] |= 1 << v18;
      v26 = (v10[6] + 16 * v18);
      *v26 = v16;
      v26[1] = v15;
      *(v10[7] + 8 * v18) = -2;
      v27 = v10[2];
      v22 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v22)
      {
        goto LABEL_28;
      }

      v10[2] = v28;
      v1 = v13;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v13 = v1;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t @objc closure #1 in ParticipantPresenceCoordinator.currentConnectionState()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in ParticipantPresenceCoordinator.currentConnectionState();

  return ParticipantPresenceCoordinator.currentConnectionState()();
}

uint64_t @objc closure #1 in ParticipantPresenceCoordinator.currentConnectionState()()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  (v2)[2](v2, isa);

  _Block_release(v2);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t closure #1 in ParticipantPresenceCoordinator.beginDeviceCoordination()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0J16SessionMessengerC0I7ContextVt__GMd, &_sScS12ContinuationV15BufferingPolicyOy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0J16SessionMessengerC0I7ContextVt__GMR);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.beginDeviceCoordination());
}

uint64_t closure #1 in ParticipantPresenceCoordinator.beginDeviceCoordination()()
{
  *(v0 + 72) = *(*(v0 + 40) + OBJC_IVAR____WBParticipantPresenceCoordinator_connectionManagerStore);
  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.beginDeviceCoordination());
}

{
  *(v0 + 80) = *(*(v0 + 72) + 112);

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.beginDeviceCoordination());
}

{
  if (v0[10])
  {

    return _assertionFailure(_:_:file:line:flags:)();
  }

  else
  {
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    v0[11] = __swift_project_value_buffer(v2, static Logger.tabGroup);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_272D1B000, v3, v4, "Starting personal device connection", v5, 2u);
      MEMORY[0x2743D7F00](v5, -1, -1);
    }

    v7 = v0[7];
    v6 = v0[8];
    v8 = v0[6];

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift30CollaborationConnectionManagerCyAA34PersonalDeviceCoordinationActivityV15GroupActivities0gK15SessionProviderCyAEGAA21PresenceUpdateMessageVGMd, &_s17WebBookmarksSwift30CollaborationConnectionManagerCyAA34PersonalDeviceCoordinationActivityV15GroupActivities0gK15SessionProviderCyAEGAA21PresenceUpdateMessageVGMR);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    v12 = swift_allocObject();
    v0[12] = v12;
    swift_defaultActor_initialize();
    *(v12 + 168) = 0;
    (*(v7 + 104))(v6, *MEMORY[0x277D85778], v8);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift18AsyncBufferedQueueCyAA21PresenceUpdateMessageV_15GroupActivities0J16SessionMessengerC0I7ContextVtGMd, &_s17WebBookmarksSwift18AsyncBufferedQueueCyAA21PresenceUpdateMessageV_15GroupActivities0J16SessionMessengerC0I7ContextVtGMR);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    *(v12 + 176) = specialized AsyncBufferedQueue.init(bufferingPolicy:)(v6);
    v16 = *(*v12 + 160);
    v17 = type metadata accessor for Participant();
    (*(*(v17 - 8) + 56))(v12 + v16, 1, 1, v17);
    *(v12 + *(*v12 + 168)) = MEMORY[0x277D84FA0];
    *(v12 + *(*v12 + 176)) = MEMORY[0x277D84F90];
    *(v12 + 112) = 0;
    *(v12 + 120) = 0;
    *(v12 + 128) = xmmword_272D66CC0;
    *(v12 + 144) = 0x8000000272D68750;
    *(v12 + 152) = closure #1 in closure #1 in ParticipantPresenceCoordinator.beginDeviceCoordination();
    *(v12 + 160) = 0;

    return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.beginDeviceCoordination());
  }
}

{
  v1 = *(v0 + 96);
  swift_beginAccess();

  specialized FastSyncStateMachine.startActivity(_:)(&async function pointer to partial apply for specialized closure #1 in CollaborationConnectionManager.startActivity(), v1);
  *(v0 + 104) = 0;
  v2 = *(v0 + 96);
  swift_endAccess();

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.beginDeviceCoordination());
}

{
  v1 = v0[11];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_272D1B000, v2, v3, "Did begin personal device connection activity", v4, 2u);
    MEMORY[0x2743D7F00](v4, -1, -1);
  }

  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[5];

  ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:)(v5);
  v0[14] = v8;

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.beginDeviceCoordination());
}

{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_272D1B000, v4, v5, "Failed to start activity with error %@", v8, 0xCu);
    outlined destroy of TaskPriority?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2743D7F00](v9, -1, -1);
    MEMORY[0x2743D7F00](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[8];

  v13 = v0[1];

  return v13();
}

{
  v1 = v0[14];
  v2 = v0[9];
  v3 = *(v2 + 112);
  *(v2 + 112) = v0[12];

  v4 = *(v2 + 120);
  *(v2 + 120) = v1;

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.beginDeviceCoordination());
}

{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = closure #1 in ParticipantPresenceCoordinator.beginDeviceCoordination();
  v3 = *(v0 + 72);
  v4 = *(v0 + 40);

  return specialized ParticipantPresenceCoordinator.ConnectionManagerStore.unpauseSharedConnections(using:)(v3, v4);
}

{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v5 = closure #1 in ParticipantPresenceCoordinator.beginDeviceCoordination();
  }

  else
  {
    v5 = closure #1 in ParticipantPresenceCoordinator.beginDeviceCoordination();
  }

  return MEMORY[0x2822009F8](v5);
}

{
  v1 = v0[12];

  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[16];
  v2 = v0[11];
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_272D1B000, v4, v5, "Failed to start activity with error %@", v8, 0xCu);
    outlined destroy of TaskPriority?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2743D7F00](v9, -1, -1);
    MEMORY[0x2743D7F00](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[8];

  v13 = v0[1];

  return v13();
}

uint64_t closure #1 in closure #1 in ParticipantPresenceCoordinator.beginDeviceCoordination()(uint64_t *a1)
{
  v5 = *a1;
  v6 = a1[1];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMd, &_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMR);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  return PersonalGroupSessionProvider.init(id:activity:)();
}

double ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for TaskPriority();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 1, 1, v7);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = v1;

  v10 = v1;
  v11 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:), v9);
  v8(v6, 1, 1, v7);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = v10;

  v13 = v10;
  v14 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:), v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyScTyyts5NeverOGGMd, &_ss23_ContiguousArrayStorageCyScTyyts5NeverOGGMR);
  v15 = swift_allocObject();
  *&result = 2;
  *(v15 + 16) = xmmword_272D66CB0;
  *(v15 + 32) = v11;
  *(v15 + 40) = v14;
  return result;
}

uint64_t ParticipantPresenceCoordinator.beginDeviceCoordination()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v10 = v2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, a2, v9);
}

uint64_t closure #1 in ParticipantPresenceCoordinator.endDeviceCoordination()()
{
  if (one-time initialization token for tabGroup != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[3] = __swift_project_value_buffer(v1, static Logger.tabGroup);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_272D1B000, v2, v3, "Ending personal device connection", v4, 2u);
    MEMORY[0x2743D7F00](v4, -1, -1);
  }

  v5 = v0[2];

  v6 = *&v5[OBJC_IVAR____WBParticipantPresenceCoordinator_connectionManagerStore];
  v0[4] = v6;
  v7 = v5;
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = closure #1 in ParticipantPresenceCoordinator.endDeviceCoordination();
  v9 = v0[2];

  return specialized ParticipantPresenceCoordinator.ConnectionManagerStore.pauseSharedConnections(using:)(v6, v9);
}

{
  *(v0 + 48) = *(*(v0 + 32) + 120);

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.endDeviceCoordination());
}

{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = MEMORY[0x277D84F78];
    v5 = MEMORY[0x277D84A98];
    v6 = MEMORY[0x277D84AC0];
    do
    {
      v7 = *v3++;

      MEMORY[0x2743D73C0](v8, v4 + 8, v5, v6);

      --v2;
    }

    while (v2);
    v9 = *(v0 + 48);
  }

  v10 = *(v0 + 32);

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.endDeviceCoordination());
}

{
  *(v0 + 56) = *(*(v0 + 32) + 112);

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.endDeviceCoordination());
}

{
  if (v0[7])
  {
    v1 = swift_task_alloc();
    v0[8] = v1;
    *v1 = v0;
    v1[1] = closure #1 in ParticipantPresenceCoordinator.endDeviceCoordination();

    return specialized CollaborationConnectionManager.leaveActivity()();
  }

  else
  {
    v3 = v0[3];
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_272D1B000, v4, v5, "Failed to leave activity", v6, 2u);
      MEMORY[0x2743D7F00](v6, -1, -1);
    }

    v7 = v0[4];

    return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.endDeviceCoordination());
  }
}

{
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);
  v3 = Logger.logObject.getter();
  if (v1 == 1)
  {
    v4 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_7;
    }

    v5 = "Did leave personal device connection activity";
  }

  else
  {
    v4 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_7;
    }

    v5 = "Failed to leave activity";
  }

  v6 = swift_slowAlloc();
  *v6 = 0;
  _os_log_impl(&dword_272D1B000, v3, v4, v5, v6, 2u);
  MEMORY[0x2743D7F00](v6, -1, -1);
LABEL_7:
  v7 = *(v0 + 32);

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.endDeviceCoordination());
}

{
  v1 = *(v0 + 32);
  v2 = *(v1 + 112);
  *(v1 + 112) = 0;

  v3 = *(v1 + 120);
  *(v1 + 120) = MEMORY[0x277D84F90];

  v4 = *(v0 + 8);

  return v4();
}

void closure #1 in ParticipantPresenceCoordinator.endDeviceCoordination()()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 16);
  v5 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 32);

    MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.endDeviceCoordination());
  }
}

uint64_t closure #1 in ParticipantPresenceCoordinator.endDeviceCoordination()(char a1)
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.endDeviceCoordination());
}

uint64_t @objc ParticipantPresenceCoordinator.beginDeviceCoordination()(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v12 = a1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, a4, v11);
}

uint64_t closure #1 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtSgMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtSgMR) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMd, &_sScS8IteratorVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMR);
  v5[21] = v7;
  v8 = *(v7 - 8);
  v5[22] = v8;
  v9 = *(v8 + 64) + 15;
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:));
}

uint64_t closure #1 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:)()
{
  if (one-time initialization token for tabGroup != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[24] = __swift_project_value_buffer(v1, static Logger.tabGroup);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_272D1B000, v2, v3, "Will begin receiving messages in personal device connection", v4, 2u);
    MEMORY[0x2743D7F00](v4, -1, -1);
  }

  v5 = v0[23];
  v6 = v0[18];

  v7 = *(**(v6 + 176) + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtGMd, &_sScSy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtGMR);
  AsyncStream.makeAsyncIterator()();
  v8 = OBJC_IVAR____WBParticipantPresenceCoordinator_connectionManagerStore;
  v0[25] = OBJC_IVAR____WBParticipantPresenceCoordinator_participantPresenceStore;
  v0[26] = v8;
  v9 = *(MEMORY[0x277D85798] + 4);
  v10 = swift_task_alloc();
  v0[27] = v10;
  *v10 = v0;
  v10[1] = closure #1 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:);
  v11 = v0[23];
  v12 = v0[20];
  v13 = v0[21];

  return MEMORY[0x2822003E8](v12, 0, 0, v13);
}

{
  v1 = *(*v0 + 216);
  v3 = *v0;

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:));
}

{
  v1 = *(v0 + 160);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMR);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
LABEL_5:
    v8 = *(v0 + 192);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_272D1B000, v9, v10, "Did finnish receiving messages in personal device connection", v11, 2u);
      MEMORY[0x2743D7F00](v11, -1, -1);
    }

    v12 = *(v0 + 184);
    v13 = *(v0 + 160);

    v14 = *(v0 + 8);

    return v14();
  }

  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  *(v0 + 64) = *(v1 + 6);
  *(v0 + 32) = v4;
  *(v0 + 48) = v5;
  *(v0 + 16) = v3;
  v6 = *(v2 + 48);
  *(v0 + 272) = v6;
  if (static Task<>.isCancelled.getter())
  {
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
    outlined destroy of PresenceUpdateMessage(v0 + 16);
    v7 = type metadata accessor for GroupSessionMessenger.MessageContext();
    (*(*(v7 - 8) + 8))(v1 + v6, v7);
    goto LABEL_5;
  }

  v16 = *(v0 + 192);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_272D1B000, v17, v18, "Did receive message for personal device connection", v19, 2u);
    MEMORY[0x2743D7F00](v19, -1, -1);
  }

  v20 = *(v0 + 200);
  v21 = *(v0 + 152);

  *(v0 + 224) = *(v21 + v20);

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:));
}

{
  v1 = v0[28];
  v0[16] = ParticipantPresenceStore.handleCurrentUserPresenceUpdateMessage(_:in:)((v0 + 2), 0, 0);
  v0[17] = v2;
  v0[29] = v2;

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:));
}

{
  if (*(v0 + 232))
  {
    v1 = *(v0 + 208);
    v2 = *(v0 + 152);
    *(v0 + 240) = *(v0 + 128);
    *(v0 + 248) = *(v2 + v1);

    return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:));
  }

  else
  {
    outlined destroy of PresenceUpdateMessage(v0 + 16);
    v3 = *(v0 + 272);
    v4 = *(v0 + 160);
    v5 = type metadata accessor for GroupSessionMessenger.MessageContext();
    (*(*(v5 - 8) + 8))(v4 + v3, v5);
    v6 = *(MEMORY[0x277D85798] + 4);
    v7 = swift_task_alloc();
    *(v0 + 216) = v7;
    *v7 = v0;
    v7[1] = closure #1 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:);
    v8 = *(v0 + 184);
    v9 = *(v0 + 160);
    v10 = *(v0 + 168);

    return MEMORY[0x2822003E8](v9, 0, 0, v10);
  }
}

{
  v1 = v0[31];
  v0[32] = ParticipantPresenceCoordinator.ConnectionManagerStore.sharedConnectionManager(forTabGroup:)(v0[30], v0[29]);

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:));
}

{
  if (*(v0 + 256))
  {
    v1 = *(v0 + 64);
    *(v0 + 88) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 104) = *(v0 + 48);
    *(v0 + 120) = v1;
    v2 = swift_task_alloc();
    *(v0 + 264) = v2;
    *v2 = v0;
    v2[1] = closure #1 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:);

    return specialized CollaborationConnectionManager.sendPresenceUpdateMessage(_:)(v0 + 72);
  }

  else
  {
    outlined destroy of PresenceUpdateMessage(v0 + 16);
    v4 = *(v0 + 272);
    v5 = *(v0 + 160);
    v6 = type metadata accessor for GroupSessionMessenger.MessageContext();
    (*(*(v6 - 8) + 8))(v5 + v4, v6);
    v7 = *(MEMORY[0x277D85798] + 4);
    v8 = swift_task_alloc();
    *(v0 + 216) = v8;
    *v8 = v0;
    v8[1] = closure #1 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:);
    v9 = *(v0 + 184);
    v10 = *(v0 + 160);
    v11 = *(v0 + 168);

    return MEMORY[0x2822003E8](v10, 0, 0, v11);
  }
}

{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:));
}

{
  v1 = *(v0 + 256);
  outlined destroy of PresenceUpdateMessage(v0 + 16);

  v2 = *(v0 + 272);
  v3 = *(v0 + 160);
  v4 = type metadata accessor for GroupSessionMessenger.MessageContext();
  (*(*(v4 - 8) + 8))(v3 + v2, v4);
  v5 = *(MEMORY[0x277D85798] + 4);
  v6 = swift_task_alloc();
  *(v0 + 216) = v6;
  *v6 = v0;
  v6[1] = closure #1 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:);
  v7 = *(v0 + 184);
  v8 = *(v0 + 160);
  v9 = *(v0 + 168);

  return MEMORY[0x2822003E8](v8, 0, 0, v9);
}

uint64_t closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v6 = type metadata accessor for Participants();
  v5[15] = v6;
  v7 = *(v6 - 8);
  v5[16] = v7;
  v8 = *(v7 + 64) + 15;
  v5[17] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR) - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  v10 = type metadata accessor for Participant();
  v5[19] = v10;
  v11 = *(v10 - 8);
  v5[20] = v11;
  v12 = *(v11 + 64) + 15;
  v5[21] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVyShy15GroupActivities11ParticipantVG_GMd, &_sScS8IteratorVyShy15GroupActivities11ParticipantVG_GMR);
  v5[22] = v13;
  v14 = *(v13 - 8);
  v5[23] = v14;
  v15 = *(v14 + 64) + 15;
  v5[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:));
}

uint64_t closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:)()
{
  if (one-time initialization token for tabGroup != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 200) = __swift_project_value_buffer(v1, static Logger.tabGroup);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_272D1B000, v2, v3, "Will begin observing active participant changes in personal device connection", v4, 2u);
    MEMORY[0x2743D7F00](v4, -1, -1);
  }

  v5 = *(v0 + 104);

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:));
}

{
  v1 = *(v0 + 104);
  *(v0 + 208) = specialized CollaborationConnectionManager.participantUpdates()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA34PersonalDeviceCoordinationActivityV15GroupActivities0pT15SessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShyAI11ParticipantVGGGMd, &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA34PersonalDeviceCoordinationActivityV15GroupActivities0pT15SessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShyAI11ParticipantVGGGMR, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:));
}

{
  v1 = *(v0 + 192);
  v2 = *(v0 + 104);
  v3 = *(**(v0 + 208) + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSyShy15GroupActivities11ParticipantVGGMd, &_sScSyShy15GroupActivities11ParticipantVGGMR);
  AsyncStream.makeAsyncIterator()();
  v4 = OBJC_IVAR____WBParticipantPresenceCoordinator_connectionManagerStore;
  *(v0 + 216) = *(*v2 + 160);
  *(v0 + 224) = v4;
  *(v0 + 232) = OBJC_IVAR____WBParticipantPresenceCoordinator_participantPresenceStore;
  swift_beginAccess();
  *(v0 + 384) = *MEMORY[0x277CCB268];
  *(v0 + 240) = MEMORY[0x277D84FA0];
  v5 = *(MEMORY[0x277D85798] + 4);
  v6 = swift_task_alloc();
  *(v0 + 248) = v6;
  *v6 = v0;
  v6[1] = closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:);
  v7 = *(v0 + 192);
  v8 = *(v0 + 176);

  return MEMORY[0x2822003E8](v0 + 96, 0, 0, v8);
}

{
  v1 = *(*v0 + 248);
  v3 = *v0;

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:));
}

{
  v1 = v0[12];
  v0[32] = v1;
  if (!v1)
  {
    (*(v0[23] + 8))(v0[24], v0[22]);
    goto LABEL_5;
  }

  if (static Task<>.isCancelled.getter())
  {
    (*(v0[23] + 8))(v0[24], v0[22]);

LABEL_5:
    v2 = v0[30];
    v3 = v0[25];

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_272D1B000, v4, v5, "Did finish observering active participant changes in personal device connection", v6, 2u);
      MEMORY[0x2743D7F00](v6, -1, -1);
    }

    v7 = v0[26];
    v8 = v0[24];
    v9 = v0[21];
    v11 = v0[17];
    v10 = v0[18];

    v12 = v0[1];

    return v12();
  }

  v14 = v0[25];
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_272D1B000, v15, v16, "Active participants did change in personal device connection", v17, 2u);
    MEMORY[0x2743D7F00](v17, -1, -1);
  }

  v18 = v0[13];

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:));
}

{
  outlined init with copy of TaskPriority?(v0[13] + v0[27], v0[18], &_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:));
}

{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[32];
  if (v4 == 1)
  {
    outlined destroy of TaskPriority?(v3, &_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
    v6 = v0[32];
  }

  else
  {
    v7 = v0[21];
    (*(v2 + 32))(v7, v3, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15GroupActivities11ParticipantVGMd, &_ss23_ContiguousArrayStorageCy15GroupActivities11ParticipantVGMR);
    v8 = *(v2 + 72);
    v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_272D66CD0;
    (*(v2 + 16))(v10 + v9, v7, v1);
    v6 = specialized _NativeSet.subtracting<A>(_:)(v10, v5);
    swift_setDeallocating();
    v11 = *(v10 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v2 + 8))(v7, v1);
  }

  v0[33] = v6;
  v0[34] = *(v0[14] + v0[28]);
  v0[35] = *(v6 + 16);

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:));
}

{
  *(*(v0 + 272) + 128) = *(v0 + 280);
  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:));
}

{
  v1 = v0[33];
  v2 = v0[30];
  if (*(v2 + 16) <= *(v1 + 16) >> 3)
  {
    v9 = v0[33];
    specialized Set._subtract<A>(_:)(v2);

    v3 = v9;
  }

  else
  {
    v3 = specialized _NativeSet.subtracting<A>(_:)(v0[30], v1);
  }

  v0[36] = v3;
  if (*(v3 + 16))
  {
    v0[37] = *(v0[14] + v0[29]);

    return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:));
  }

  else
  {

    v0[30] = v0[33];
    v4 = *(MEMORY[0x277D85798] + 4);
    v5 = swift_task_alloc();
    v0[31] = v5;
    *v5 = v0;
    v5[1] = closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:);
    v6 = v0[24];
    v7 = v0[22];

    return MEMORY[0x2822003E8](v0 + 12, 0, 0, v7);
  }
}

{
  v1 = v0[37];
  v2 = v0[13];
  v3 = v1[18];
  v0[38] = v3;
  v4 = v1[19];
  v0[39] = v4;
  v0[40] = v1[20];
  v0[41] = v1[21];
  v0[42] = v1[22];
  v0[43] = v1[23];
  v0[44] = v1[24];
  outlined copy of PresenceUpdateMessage.Kind(v3, v4);

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:));
}

{
  v1 = *(*(v0 + 104) + 168);
  *(v0 + 360) = v1;
  v2 = *(v0 + 352);
  if (v1)
  {
    v3 = *(v0 + 320);
    *(v0 + 16) = *(v0 + 304);
    *(v0 + 32) = v3;
    *(v0 + 48) = *(v0 + 336);
    *(v0 + 64) = v2;

    return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:));
  }

  else
  {
    v4 = *(v0 + 320);
    v5 = *(v0 + 328);
    v6 = *(v0 + 288);
    outlined consume of PresenceUpdateMessage.Kind(*(v0 + 304), *(v0 + 312));

    *(v0 + 240) = *(v0 + 264);
    v7 = *(MEMORY[0x277D85798] + 4);
    v8 = swift_task_alloc();
    *(v0 + 248) = v8;
    *v8 = v0;
    v8[1] = closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:);
    v9 = *(v0 + 192);
    v10 = *(v0 + 176);

    return MEMORY[0x2822003E8](v0 + 96, 0, 0, v10);
  }
}

{
  v1 = *(v0 + 384);
  v2 = *(v0 + 128);
  v3 = *(v0 + 120);
  v4 = *(*(v0 + 360) + 136);
  **(v0 + 136) = *(v0 + 288);
  (*(v2 + 104))();
  v5 = *(MEMORY[0x277CCB190] + 4);
  v6 = swift_task_alloc();
  *(v0 + 368) = v6;
  updated = lazy protocol witness table accessor for type PresenceUpdateMessage and conformance PresenceUpdateMessage();
  v8 = lazy protocol witness table accessor for type PresenceUpdateMessage and conformance PresenceUpdateMessage();
  *v6 = v0;
  v6[1] = closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:);
  v9 = *(v0 + 136);

  return MEMORY[0x28211FC98](v0 + 16, v9, &type metadata for PresenceUpdateMessage, updated, v8);
}

{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v20 = *(*v1 + 328);
  v4 = *(*v1 + 320);
  v5 = *(*v1 + 312);
  v6 = *(*v1 + 304);
  v7 = *(*v1 + 136);
  v8 = *(*v1 + 128);
  v9 = *(*v1 + 120);
  v10 = *v1;
  *(*v1 + 376) = v0;

  (*(v8 + 8))(v7, v9);
  outlined consume of PresenceUpdateMessage.Kind(v6, v5);
  if (v0)
  {
    v11 = v2[44];

    v12 = v2[45];

    return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:));
  }

  else
  {
    v13 = v2[44];
    v14 = v2[45];

    v2[30] = v2[33];
    v15 = *(MEMORY[0x277D85798] + 4);
    v16 = swift_task_alloc();
    v2[31] = v16;
    *v16 = v10;
    v16[1] = closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:);
    v17 = v2[24];
    v18 = v2[22];

    return MEMORY[0x2822003E8](v2 + 12, 0, 0, v18);
  }
}

{
  v1 = *(v0 + 360);

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:));
}

{
  v1 = v0[47];
  v2 = v0[25];
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[47];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_272D1B000, v4, v5, "Failed to send message to new participants in personal device connection, error: %@", v8, 0xCu);
    outlined destroy of TaskPriority?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2743D7F00](v9, -1, -1);
    MEMORY[0x2743D7F00](v8, -1, -1);
  }

  else
  {
  }

  v0[30] = v0[33];
  v12 = *(MEMORY[0x277D85798] + 4);
  v13 = swift_task_alloc();
  v0[31] = v13;
  *v13 = v0;
  v13[1] = closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:);
  v14 = v0[24];
  v15 = v0[22];

  return MEMORY[0x2822003E8](v0 + 12, 0, 0, v15);
}

uint64_t closure #1 in ParticipantPresenceCoordinator.beginCollaborationForShare(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.beginCollaborationForShare(_:));
}

uint64_t closure #1 in ParticipantPresenceCoordinator.beginCollaborationForShare(_:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *&v1[OBJC_IVAR____WBParticipantPresenceCoordinator_connectionManagerStore];
  v4 = v1;
  v5 = v2;
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = closure #1 in ParticipantPresenceCoordinator.beginCollaborationForShare(_:);
  v7 = v0[2];
  v8 = v0[3];

  return specialized ParticipantPresenceCoordinator.ConnectionManagerStore.addSharedConnection(forShare:createIfNeededUsing:)(v8, v3, v7, v8);
}

{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v5 = *v1;
  *(v5 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.beginCollaborationForShare(_:));
  }

  else
  {
    v6 = *(v5 + 8);

    return v6();
  }
}

{
  v26 = v0;
  if (one-time initialization token for tabGroup != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[3];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.tabGroup);
  v4 = v2;
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[5];
  if (v8)
  {
    v10 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v11 = 136315394;
    v14 = [v10 recordID];
    v15 = [v14 zoneID];

    v16 = [v15 zoneName];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v25);

    *(v11 + 4) = v20;
    *(v11 + 12) = 2112;
    v21 = v9;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v22;
    *v12 = v22;
    _os_log_impl(&dword_272D1B000, v6, v7, "Failed to start shared activity for share: %s with error %@", v11, 0x16u);
    outlined destroy of TaskPriority?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2743D7F00](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x2743D7F00](v13, -1, -1);
    MEMORY[0x2743D7F00](v11, -1, -1);
  }

  else
  {
  }

  v23 = v0[1];

  return v23();
}

uint64_t closure #1 in ParticipantPresenceCoordinator.shareDidUpdate(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return ParticipantPresenceCoordinator._updateActivityForShare(_:)(a5);
}

uint64_t ParticipantPresenceCoordinator._updateActivityForShare(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator._updateActivityForShare(_:));
}

{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v7 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v5 = ParticipantPresenceCoordinator._updateActivityForShare(_:);
  }

  else
  {
    v5 = ParticipantPresenceCoordinator._updateActivityForShare(_:);
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t ParticipantPresenceCoordinator._updateActivityForShare(_:)()
{
  v1 = [*(v0 + 16) recordID];
  v2 = [v1 zoneID];

  v3 = [v2 safari_tabGroupRootRecordName];
  if (v3)
  {
    v4 = *(v0 + 24);
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    *(v0 + 32) = v5;
    *(v0 + 40) = v7;
    v8 = *(v4 + OBJC_IVAR____WBParticipantPresenceCoordinator_connectionManagerStore);
    v9 = swift_task_alloc();
    *(v0 + 48) = v9;
    *v9 = v0;
    v9[1] = ParticipantPresenceCoordinator._updateActivityForShare(_:);
    v10 = *(v0 + 16);

    return ParticipantPresenceCoordinator.ConnectionManagerStore.updateSharedConnection(with:)(v10);
  }

  else
  {
    v12 = *(v0 + 8);

    return v12();
  }
}

{
  if (v0[7])
  {
    v0[9] = *(v0[3] + OBJC_IVAR____WBParticipantPresenceCoordinator_participantPresenceStore);

    return MEMORY[0x2822009F8](ParticipantPresenceCoordinator._updateActivityForShare(_:));
  }

  else
  {
    v1 = v0[5];

    v2 = v0[1];

    return v2();
  }
}

{
  v1 = *(v0 + 72);
  v2 = ParticipantPresenceStore.replace(share:with:in:)(*(v0 + 56), *(v0 + 16), *(v0 + 32), *(v0 + 40));
  v4 = v3;
  v6 = v5;
  v8 = v7;

  *(v0 + 80) = v2;
  *(v0 + 88) = v4;
  *(v0 + 96) = v6;
  *(v0 + 104) = v8;

  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator._updateActivityForShare(_:));
}

{
  type metadata accessor for MainActor();
  *(v0 + 112) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator._updateActivityForShare(_:));
}

{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v6 = v0[3];

  specialized ParticipantPresenceCoordinator._notifyStoreUpdates(_:)(v3, v2);

  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator._updateActivityForShare(_:));
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t ParticipantPresenceCoordinator.beginCollaborationForShare(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, char *, uint64_t, void *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v4;
  v13[5] = a1;
  v14 = v4;
  v15 = a1;
  a4(0, 0, v11, a3, v13);
}

uint64_t closure #1 in ParticipantPresenceCoordinator.endCollaborationForShare(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.endCollaborationForShare(_:));
}

uint64_t closure #1 in ParticipantPresenceCoordinator.endCollaborationForShare(_:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *&v1[OBJC_IVAR____WBParticipantPresenceCoordinator_connectionManagerStore];
  v4 = v1;
  v5 = v2;
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = closure #1 in ParticipantPresenceCoordinator.endCollaborationForShare(_:);
  v7 = v0[3];

  return specialized ParticipantPresenceCoordinator.ConnectionManagerStore.removeSharedConnection(forShare:cleanUpIfNeeedUsing:)(v7, v3, v7);
}

void closure #1 in ParticipantPresenceCoordinator.endCollaborationForShare(_:)()
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v5 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v5 + 8);

    v6();
  }
}

uint64_t @objc ParticipantPresenceCoordinator.beginCollaborationForShare(_:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(void, void, char *, uint64_t, void *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a1;
  v15[5] = a3;
  v16 = a3;
  v17 = a1;
  a6(0, 0, v13, a5, v15);
}

void *closure #1 in ParticipantPresenceCoordinator._startActivityForShare(_:tabGroupIdentifier:)(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMd, &_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMR);
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  return specialized CKShareGroupSessionProvider.init(id:activity:share:)(v3, v4, v3, v4, a2);
}

uint64_t ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v27 - v10;
  v12 = [a2 recordID];
  v13 = [v12 zoneID];

  v14 = [v13 safari_tabGroupRootRecordName];
  if (v14)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = type metadata accessor for TaskPriority();
    v19 = *(*(v18 - 8) + 56);
    v19(v11, 1, 1, v18);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v15;
    v20[5] = v17;
    v20[6] = a1;
    v20[7] = a3;
    v20[8] = v4;

    v21 = v4;
    v22 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:), v20);
    v19(v11, 1, 1, v18);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v15;
    v23[5] = v17;
    v23[6] = a1;
    v23[7] = v21;
    v23[8] = a3;

    v24 = v21;
    v25 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:), v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyScTyyts5NeverOGGMd, &_ss23_ContiguousArrayStorageCyScTyyts5NeverOGGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_272D66CB0;
    *(result + 32) = v22;
    *(result + 40) = v25;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = a7;
  v8[22] = a8;
  v8[19] = a5;
  v8[20] = a6;
  v8[18] = a4;
  v9 = type metadata accessor for Participant();
  v8[23] = v9;
  v10 = *(v9 - 8);
  v8[24] = v10;
  v11 = *(v10 + 64) + 15;
  v8[25] = swift_task_alloc();
  v12 = type metadata accessor for GroupSessionMessenger.MessageContext();
  v8[26] = v12;
  v13 = *(v12 - 8);
  v8[27] = v13;
  v14 = *(v13 + 64) + 15;
  v8[28] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtSgMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtSgMR) - 8) + 64) + 15;
  v8[29] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMd, &_sScS8IteratorVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMR);
  v8[30] = v16;
  v17 = *(v16 - 8);
  v8[31] = v17;
  v18 = *(v17 + 64) + 15;
  v8[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:));
}

uint64_t closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:)()
{
  v19 = v0;
  if (one-time initialization token for tabGroup != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = type metadata accessor for Logger();
  v0[33] = __swift_project_value_buffer(v2, static Logger.tabGroup);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[18];
    v5 = v0[19];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136446210;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v18);
    _os_log_impl(&dword_272D1B000, v3, v4, "Will begin receiving messages in shared connection for tab group %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x2743D7F00](v8, -1, -1);
    MEMORY[0x2743D7F00](v7, -1, -1);
  }

  v9 = v0[32];
  v10 = *(**(v0[20] + 176) + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtGMd, &_sScSy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtGMR);
  AsyncStream.makeAsyncIterator()();
  v11 = OBJC_IVAR____WBParticipantPresenceCoordinator_connectionManagerStore;
  v0[34] = OBJC_IVAR____WBParticipantPresenceCoordinator_participantPresenceStore;
  v0[35] = v11;
  v12 = *(MEMORY[0x277D85798] + 4);
  v13 = swift_task_alloc();
  v0[36] = v13;
  *v13 = v0;
  v13[1] = closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
  v14 = v0[32];
  v15 = v0[29];
  v16 = v0[30];

  return MEMORY[0x2822003E8](v15, 0, 0, v16);
}

{
  v1 = *(*v0 + 288);
  v3 = *v0;

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:));
}

{
  v38 = v0;
  v1 = *(v0 + 232);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMR);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    goto LABEL_4;
  }

  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 208);
  v7 = v1[1];
  v6 = v1[2];
  v8 = *v1;
  *(v0 + 64) = *(v1 + 6);
  *(v0 + 32) = v7;
  *(v0 + 48) = v6;
  *(v0 + 16) = v8;
  (*(v4 + 32))(v3, v1 + *(v2 + 48), v5);
  if (static Task<>.isCancelled.getter())
  {
    v10 = *(v0 + 216);
    v9 = *(v0 + 224);
    v11 = *(v0 + 208);
    outlined destroy of PresenceUpdateMessage(v0 + 16);
    (*(v10 + 8))(v9, v11);
LABEL_4:
    v12 = *(v0 + 264);
    v13 = *(v0 + 152);
    (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v17 = *(v0 + 144);
      v16 = *(v0 + 152);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v37 = v19;
      *v18 = 136446210;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, &v37);
      _os_log_impl(&dword_272D1B000, v14, v15, "Did finish receiving messages in shared connection for tab group %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x2743D7F00](v19, -1, -1);
      MEMORY[0x2743D7F00](v18, -1, -1);
    }

    v20 = *(v0 + 256);
    v21 = *(v0 + 224);
    v22 = *(v0 + 232);
    v23 = *(v0 + 200);

    v24 = *(v0 + 8);

    return v24();
  }

  v26 = *(v0 + 264);
  v27 = *(v0 + 152);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v31 = *(v0 + 144);
    v30 = *(v0 + 152);
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v37 = v33;
    *v32 = 136446210;
    *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v30, &v37);
    _os_log_impl(&dword_272D1B000, v28, v29, "Did receive message in shared connection for tab group %{public}s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x2743D7F00](v33, -1, -1);
    MEMORY[0x2743D7F00](v32, -1, -1);
  }

  v34 = *(v0 + 224);
  v35 = *(v0 + 200);
  v36 = *(v0 + 168);
  GroupSessionMessenger.MessageContext.source.getter();

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:));
}

{
  v1 = v0[25];
  v2 = v0[21];
  v3 = Participant.handle.getter();
  v5 = v4;
  v6 = *(v2 + 112);
  if (*(v6 + 16))
  {
    v7 = v3;
    v8 = *(v2 + 112);

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v5);
    v11 = v10;

    v12 = v0[25];
    v13 = v0[23];
    v14 = (v0[24] + 8);
    if (v11)
    {
      v15 = *(*(v6 + 56) + 8 * v9);
      v0[37] = v15;
      v16 = *v14;
      v17 = v15;
      v16(v12, v13);

      v18 = closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
    }

    else
    {
      outlined destroy of PresenceUpdateMessage((v0 + 2));

      (*v14)(v12, v13);
      v18 = closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
    }
  }

  else
  {
    v20 = v0[24];
    v19 = v0[25];
    v21 = v0[23];

    outlined destroy of PresenceUpdateMessage((v0 + 2));

    (*(v20 + 8))(v19, v21);
    v18 = closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
  }

  return MEMORY[0x2822009F8](v18);
}

{
  v1 = v0[37];
  v0[38] = *(v0[22] + v0[34]);
  if (v1)
  {
    v2 = closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
  }

  else
  {
    v2 = closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
  }

  return MEMORY[0x2822009F8](v2);
}

{
  v1 = *(v0 + 304);
  *(v0 + 312) = ParticipantPresenceStore.handleSharedPresenceUpdateMessage(_:from:)((v0 + 16), *(v0 + 296));
  *(v0 + 320) = v2;
  *(v0 + 328) = v3;
  *(v0 + 336) = v4;
  outlined destroy of PresenceUpdateMessage(v0 + 16);

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:));
}

{
  type metadata accessor for MainActor();
  *(v0 + 344) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:));
}

{
  v2 = v0[42];
  v1 = v0[43];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[39];
  v6 = v0[22];

  specialized ParticipantPresenceCoordinator._notifyStoreUpdates(_:)(v3, v2);

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:));
}

{

  (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
  v1 = *(MEMORY[0x277D85798] + 4);
  v2 = swift_task_alloc();
  *(v0 + 288) = v2;
  *v2 = v0;
  v2[1] = closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
  v3 = *(v0 + 256);
  v4 = *(v0 + 232);
  v5 = *(v0 + 240);

  return MEMORY[0x2822003E8](v4, 0, 0, v5);
}

{
  (*(v0[27] + 8))(v0[28], v0[26]);
  v1 = *(MEMORY[0x277D85798] + 4);
  v2 = swift_task_alloc();
  v0[36] = v2;
  *v2 = v0;
  v2[1] = closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
  v3 = v0[32];
  v4 = v0[29];
  v5 = v0[30];

  return MEMORY[0x2822003E8](v4, 0, 0, v5);
}

{
  v1 = v0[38];
  v0[16] = ParticipantPresenceStore.handleCurrentUserPresenceUpdateMessage(_:in:)((v0 + 2), v0[18], v0[19]);
  v0[17] = v2;
  v0[44] = v2;

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:));
}

{
  if (v0[44])
  {
    v1 = v0[35];
    v2 = v0[22];
    v0[45] = v0[16];
    v0[46] = *(v2 + v1);

    return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:));
  }

  else
  {
    outlined destroy of PresenceUpdateMessage((v0 + 2));
    (*(v0[27] + 8))(v0[28], v0[26]);
    v3 = *(MEMORY[0x277D85798] + 4);
    v4 = swift_task_alloc();
    v0[36] = v4;
    *v4 = v0;
    v4[1] = closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
    v5 = v0[32];
    v6 = v0[29];
    v7 = v0[30];

    return MEMORY[0x2822003E8](v6, 0, 0, v7);
  }
}

{
  v1 = v0[46];
  v0[47] = ParticipantPresenceCoordinator.ConnectionManagerStore.sharedConnectionManager(forTabGroup:)(v0[45], v0[44]);

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:));
}

{
  if (*(v0 + 376))
  {
    v1 = *(v0 + 64);
    *(v0 + 88) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 104) = *(v0 + 48);
    *(v0 + 120) = v1;
    v2 = swift_task_alloc();
    *(v0 + 384) = v2;
    *v2 = v0;
    v2[1] = closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);

    return specialized CollaborationConnectionManager.sendPresenceUpdateMessage(_:)(v0 + 72);
  }

  else
  {
    outlined destroy of PresenceUpdateMessage(v0 + 16);
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
    v4 = *(MEMORY[0x277D85798] + 4);
    v5 = swift_task_alloc();
    *(v0 + 288) = v5;
    *v5 = v0;
    v5[1] = closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
    v6 = *(v0 + 256);
    v7 = *(v0 + 232);
    v8 = *(v0 + 240);

    return MEMORY[0x2822003E8](v7, 0, 0, v8);
  }
}

{
  v1 = *(*v0 + 384);
  v3 = *v0;

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:));
}

{
  v1 = v0[47];
  outlined destroy of PresenceUpdateMessage((v0 + 2));

  (*(v0[27] + 8))(v0[28], v0[26]);
  v2 = *(MEMORY[0x277D85798] + 4);
  v3 = swift_task_alloc();
  v0[36] = v3;
  *v3 = v0;
  v3[1] = closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
  v4 = v0[32];
  v5 = v0[29];
  v6 = v0[30];

  return MEMORY[0x2822003E8](v5, 0, 0, v6);
}

uint64_t closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[25] = a7;
  v8[26] = a8;
  v8[23] = a5;
  v8[24] = a6;
  v8[22] = a4;
  v9 = type metadata accessor for Participants();
  v8[27] = v9;
  v10 = *(v9 - 8);
  v8[28] = v10;
  v11 = *(v10 + 64) + 15;
  v8[29] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR) - 8) + 64) + 15;
  v8[30] = swift_task_alloc();
  v13 = type metadata accessor for Participant();
  v8[31] = v13;
  v14 = *(v13 - 8);
  v8[32] = v14;
  v15 = *(v14 + 64) + 15;
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVyShy15GroupActivities11ParticipantVG_GMd, &_sScS8IteratorVyShy15GroupActivities11ParticipantVG_GMR);
  v8[35] = v16;
  v17 = *(v16 - 8);
  v8[36] = v17;
  v18 = *(v17 + 64) + 15;
  v8[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:));
}

uint64_t closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:)()
{
  v12 = v0;
  if (one-time initialization token for tabGroup != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = type metadata accessor for Logger();
  v0[38] = __swift_project_value_buffer(v2, static Logger.tabGroup);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[22];
    v5 = v0[23];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136446210;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v11);
    _os_log_impl(&dword_272D1B000, v3, v4, "Will begin observing active participant changes in shared connection for tab group %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x2743D7F00](v8, -1, -1);
    MEMORY[0x2743D7F00](v7, -1, -1);
  }

  v9 = v0[24];

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:));
}

{
  v1 = *(v0 + 192);
  *(v0 + 312) = specialized CollaborationConnectionManager.participantUpdates()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA07CKShareD8ActivityVAA0P20GroupSessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShy0R10Activities11ParticipantVGGGMd, &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA07CKShareD8ActivityVAA0P20GroupSessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShy0R10Activities11ParticipantVGGGMR, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:));
}

{
  v1 = *(v0 + 296);
  v2 = *(v0 + 192);
  v3 = *(**(v0 + 312) + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSyShy15GroupActivities11ParticipantVGGMd, &_sScSyShy15GroupActivities11ParticipantVGGMR);
  AsyncStream.makeAsyncIterator()();
  v4 = OBJC_IVAR____WBParticipantPresenceCoordinator_connectionManagerStore;
  *(v0 + 320) = *(*v2 + 160);
  *(v0 + 328) = v4;
  *(v0 + 336) = OBJC_IVAR____WBParticipantPresenceCoordinator_participantPresenceStore;
  swift_beginAccess();
  v5 = MEMORY[0x277D84FA0];
  *(v0 + 560) = *MEMORY[0x277CCB268];
  *(v0 + 344) = v5;
  *(v0 + 352) = v5;
  v6 = *(MEMORY[0x277D85798] + 4);
  v7 = swift_task_alloc();
  *(v0 + 360) = v7;
  *v7 = v0;
  v7[1] = closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
  v8 = *(v0 + 296);
  v9 = *(v0 + 280);

  return MEMORY[0x2822003E8](v0 + 160, 0, 0, v9);
}

{
  v1 = *(*v0 + 360);
  v3 = *v0;

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:));
}

{
  v24 = v0;
  v1 = v0[20];
  v0[46] = v1;
  if (!v1)
  {
    v3 = v0[44];
    (*(v0[36] + 8))(v0[37], v0[35]);
    goto LABEL_5;
  }

  if (static Task<>.isCancelled.getter())
  {
    v2 = v0[44];
    (*(v0[36] + 8))(v0[37], v0[35]);

LABEL_5:

    v4 = v0[43];
    v5 = v0[38];
    v6 = v0[23];

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[39];
    if (v9)
    {
      v12 = v0[22];
      v11 = v0[23];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136446210;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v23);
      _os_log_impl(&dword_272D1B000, v7, v8, "Did finish observing active participant changes in shared connection for tab group %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x2743D7F00](v14, -1, -1);
      MEMORY[0x2743D7F00](v13, -1, -1);
    }

    v15 = v0[37];
    v16 = v0[33];
    v17 = v0[34];
    v19 = v0[29];
    v18 = v0[30];

    v20 = v0[1];

    return v20();
  }

  v22 = v0[24];

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:));
}

{
  outlined init with copy of TaskPriority?(v0[24] + v0[40], v0[30], &_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:));
}

{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[30];
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[46];
  if (v4 == 1)
  {
    outlined destroy of TaskPriority?(v3, &_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
    v6 = v0[46];
  }

  else
  {
    v7 = v0[34];
    (*(v2 + 32))(v7, v3, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15GroupActivities11ParticipantVGMd, &_ss23_ContiguousArrayStorageCy15GroupActivities11ParticipantVGMR);
    v8 = *(v2 + 72);
    v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_272D66CD0;
    (*(v2 + 16))(v10 + v9, v7, v1);
    v6 = specialized _NativeSet.subtracting<A>(_:)(v10, v5);
    swift_setDeallocating();
    v11 = *(v10 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v2 + 8))(v7, v1);
  }

  v0[47] = v6;
  v0[48] = *(v0[25] + v0[41]);
  v0[49] = *(v6 + 16);

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:));
}

{
  v1 = *(v0 + 384);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = ParticipantPresenceCoordinator.ConnectionManagerStore.tabGroupIdentifiersToSharedConnections.modify();
  v6 = specialized Dictionary.subscript.modify((v0 + 104), v3, v2);
  if (*(v5 + 8))
  {
    *(v5 + 40) = *(v0 + 392);
  }

  (v6)(v0 + 104, 0);
  (v4)(v0 + 72, 0);
  v7 = *(v0 + 208);

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:));
}

{
  v1 = v0[47];
  v2 = v1 + 56;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 56);
  v6 = (63 - v4) >> 6;
  v7 = v0[47];

  v9 = 0;
  v30 = MEMORY[0x277D84F90];
  v31 = v1;
  while (v5)
  {
LABEL_10:
    v11 = v0[26];
    v12 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    (*(v0[32] + 16))(v0[33], *(v1 + 48) + *(v0[32] + 72) * (v12 | (v9 << 6)), v0[31]);
    v13 = Participant.handle.getter();
    v15 = v14;
    v16 = *(v11 + 112);
    if (*(v16 + 16) && (v17 = v13, v18 = *(v11 + 112), , v19 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v15), v21 = v20, , (v21 & 1) != 0))
    {
      v32 = v0[33];
      v22 = v0[31];
      v23 = *(*(v16 + 56) + 8 * v19);
      v24 = *(v0[32] + 8);
      v25 = v23;
      v24(v32, v22);
      v1 = v31;

      if (v23)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 16) + 1, 1, v30);
          v30 = isUniquelyReferenced_nonNull_native;
        }

        v27 = *(v30 + 16);
        v26 = *(v30 + 24);
        if (v27 >= v26 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v30);
          v30 = isUniquelyReferenced_nonNull_native;
        }

        *(v30 + 16) = v27 + 1;
        *(v30 + 8 * v27 + 32) = v23;
      }
    }

    else
    {

      isUniquelyReferenced_nonNull_native = (*(v0[32] + 8))(v0[33], v0[31]);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return MEMORY[0x2822009F8](isUniquelyReferenced_nonNull_native);
    }

    if (v10 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  v28 = v0[47];

  v0[50] = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17WebBookmarksSwift20ParticipantHandleMapC0E4KindO_SayAHGTt0g5Tf4g_n(v30);

  isUniquelyReferenced_nonNull_native = closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);

  return MEMORY[0x2822009F8](isUniquelyReferenced_nonNull_native);
}

{
  v1 = v0[47];
  v2 = v0[44];
  if (*(v2 + 16) <= *(v1 + 16) >> 3)
  {
    v31 = v0[47];
    specialized Set._subtract<A>(_:)(v2);
    v3 = v31;
  }

  else
  {
    v3 = specialized _NativeSet.subtracting<A>(_:)(v2, v1);
  }

  v0[51] = v3;
  if (!*(v3 + 16))
  {

    v5 = v0[50];
    v6 = v0[43];
    if (*(v5 + 16) <= *(v6 + 16) >> 3)
    {
      v32 = v0[43];

      specialized Set._subtract<A>(_:)(v5);
      v8 = v32;
      if (*(v32 + 16))
      {
LABEL_8:
        v0[63] = *(v0[25] + v0[42]);
        v9 = MEMORY[0x277D84F90];
        v0[21] = MEMORY[0x277D84F90];
        v10 = -1;
        v11 = -1 << *(v8 + 32);
        if (-v11 < 64)
        {
          v10 = ~(-1 << -v11);
        }

        v12 = v10 & *(v8 + 56);
        v13 = (63 - v11) >> 6;

        v18 = 0;
        if (!v12)
        {
          goto LABEL_13;
        }

        do
        {
LABEL_11:
          while (1)
          {
            v19 = __clz(__rbit64(v12));
            v12 &= v12 - 1;
            v20 = *(*(v8 + 48) + ((v18 << 9) | (8 * v19)));
            if (v20)
            {
              break;
            }

            if (!v12)
            {
              goto LABEL_13;
            }
          }

          v22 = v20;
          MEMORY[0x2743D7260]();
          if (*((v0[21] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[21] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v30 = *((v0[21] & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v14 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v9 = v0[21];
        }

        while (v12);
LABEL_13:
        while (1)
        {
          v21 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v21 >= v13)
          {

            v0[64] = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo18CKShareParticipantC_SayAEGTt0g5Tf4g_n(v9);

            v4 = closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
            goto LABEL_22;
          }

          v12 = *(v8 + 56 + 8 * v21);
          ++v18;
          if (v12)
          {
            v18 = v21;
            goto LABEL_11;
          }
        }

        __break(1u);
        return MEMORY[0x2822003E8](v14, v15, v16, v17);
      }
    }

    else
    {
      v7 = v0[43];

      v8 = specialized _NativeSet.subtracting<A>(_:)(v5, v6);
      if (*(v8 + 16))
      {
        goto LABEL_8;
      }
    }

    v23 = v0[43];
    v24 = v0[44];

    v25 = v0[47];
    v0[43] = v0[50];
    v0[44] = v25;
    v26 = *(MEMORY[0x277D85798] + 4);
    v27 = swift_task_alloc();
    v0[45] = v27;
    *v27 = v0;
    v27[1] = closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
    v28 = v0[37];
    v17 = v0[35];
    v14 = (v0 + 20);
    v15 = 0;
    v16 = 0;

    return MEMORY[0x2822003E8](v14, v15, v16, v17);
  }

  v0[52] = *(v0[25] + v0[42]);
  v4 = closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
LABEL_22:

  return MEMORY[0x2822009F8](v4);
}

{
  v1 = v0[52];
  v2 = v0[24];
  v3 = v1[18];
  v0[53] = v3;
  v4 = v1[19];
  v0[54] = v4;
  v0[55] = v1[20];
  v0[56] = v1[21];
  v0[57] = v1[22];
  v0[58] = v1[23];
  v0[59] = v1[24];
  outlined copy of PresenceUpdateMessage.Kind(v3, v4);

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:));
}

{
  v1 = *(*(v0 + 192) + 168);
  *(v0 + 480) = v1;
  if (v1)
  {
    v2 = *(v0 + 472);
    v3 = *(v0 + 440);
    *(v0 + 16) = *(v0 + 424);
    *(v0 + 32) = v3;
    *(v0 + 48) = *(v0 + 456);
    *(v0 + 64) = v2;

    v4 = closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
  }

  else
  {
    v5 = *(v0 + 472);
    v7 = *(v0 + 440);
    v6 = *(v0 + 448);
    v9 = *(v0 + 424);
    v8 = *(v0 + 432);
    v10 = *(v0 + 408);

    outlined consume of PresenceUpdateMessage.Kind(v9, v8);

    v4 = closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
  }

  return MEMORY[0x2822009F8](v4);
}

{
  v1 = *(v0 + 560);
  v2 = *(v0 + 224);
  v3 = *(v0 + 216);
  v4 = *(*(v0 + 480) + 136);
  **(v0 + 232) = *(v0 + 408);
  (*(v2 + 104))();
  v5 = *(MEMORY[0x277CCB190] + 4);

  v6 = swift_task_alloc();
  *(v0 + 488) = v6;
  updated = lazy protocol witness table accessor for type PresenceUpdateMessage and conformance PresenceUpdateMessage();
  v8 = lazy protocol witness table accessor for type PresenceUpdateMessage and conformance PresenceUpdateMessage();
  *v6 = v0;
  v6[1] = closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
  v9 = *(v0 + 232);

  return MEMORY[0x28211FC98](v0 + 16, v9, &type metadata for PresenceUpdateMessage, updated, v8);
}

{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v4 = *(*v1 + 232);
  v5 = *(*v1 + 224);
  v6 = *(*v1 + 216);
  v17 = *v1;
  *(*v1 + 496) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = v2[60];
    v8 = closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
  }

  else
  {
    v10 = v2[59];
    v9 = v2[60];
    v12 = v2[55];
    v11 = v2[56];
    v14 = v2[53];
    v13 = v2[54];
    v15 = v2[51];

    outlined consume of PresenceUpdateMessage.Kind(v14, v13);

    v8 = closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
  }

  return MEMORY[0x2822009F8](v8);
}

{
  v1 = v0[50];
  v2 = v0[43];
  if (*(v1 + 16) > *(v2 + 16) >> 3)
  {
    v3 = v0[43];

    v4 = specialized _NativeSet.subtracting<A>(_:)(v1, v2);
    if (*(v4 + 16))
    {
      goto LABEL_3;
    }

LABEL_20:
    v19 = v0[43];
    v20 = v0[44];

    v21 = v0[47];
    v0[43] = v0[50];
    v0[44] = v21;
    v22 = *(MEMORY[0x277D85798] + 4);
    v23 = swift_task_alloc();
    v0[45] = v23;
    *v23 = v0;
    v23[1] = closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
    v24 = v0[37];
    v13 = v0[35];
    v10 = (v0 + 20);
    v11 = 0;
    v12 = 0;

    return MEMORY[0x2822003E8](v10, v11, v12, v13);
  }

  v27 = v0[43];

  specialized Set._subtract<A>(_:)(v1);
  v4 = v27;
  if (!*(v27 + 16))
  {
    goto LABEL_20;
  }

LABEL_3:
  v0[63] = *(v0[25] + v0[42]);
  v5 = MEMORY[0x277D84F90];
  v0[21] = MEMORY[0x277D84F90];
  v6 = -1;
  v7 = -1 << *(v4 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v4 + 56);
  v9 = (63 - v7) >> 6;

  v14 = 0;
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_6:
    while (1)
    {
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * v15)));
      if (v16)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_8;
      }
    }

    v18 = v16;
    MEMORY[0x2743D7260]();
    if (*((v0[21] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[21] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v26 = *((v0[21] & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v10 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v5 = v0[21];
  }

  while (v8);
  while (1)
  {
LABEL_8:
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return MEMORY[0x2822003E8](v10, v11, v12, v13);
    }

    if (v17 >= v9)
    {
      break;
    }

    v8 = *(v4 + 56 + 8 * v17);
    ++v14;
    if (v8)
    {
      v14 = v17;
      goto LABEL_6;
    }
  }

  v0[64] = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo18CKShareParticipantC_SayAEGTt0g5Tf4g_n(v5);

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:));
}

{
  v1 = *(v0 + 480);
  v2 = *(v0 + 192);

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:));
}

{
  v1 = v0[59];
  v3 = v0[55];
  v2 = v0[56];
  v5 = v0[53];
  v4 = v0[54];
  v6 = v0[51];

  outlined consume of PresenceUpdateMessage.Kind(v5, v4);

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:));
}

{
  v43 = v0;
  v1 = v0[62];
  v2 = v0[38];
  v3 = v0[23];

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[62];
  if (v7)
  {
    v10 = v0[22];
    v9 = v0[23];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v42 = v13;
    *v11 = 136446466;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v42);
    *(v11 + 12) = 2112;
    v14 = v8;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_272D1B000, v5, v6, "Failed to send message to new participants in shared connection for tab group %{public}s, error: %@", v11, 0x16u);
    outlined destroy of TaskPriority?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2743D7F00](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x2743D7F00](v13, -1, -1);
    MEMORY[0x2743D7F00](v11, -1, -1);
  }

  else
  {
  }

  v16 = v0[50];
  v17 = v0[43];
  if (*(v16 + 16) > *(v17 + 16) >> 3)
  {
    v18 = v0[43];

    v19 = specialized _NativeSet.subtracting<A>(_:)(v16, v17);
    if (*(v19 + 16))
    {
      goto LABEL_6;
    }

LABEL_23:
    v34 = v0[43];
    v35 = v0[44];

    v36 = v0[47];
    v0[43] = v0[50];
    v0[44] = v36;
    v37 = *(MEMORY[0x277D85798] + 4);
    v38 = swift_task_alloc();
    v0[45] = v38;
    *v38 = v0;
    v38[1] = closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
    v39 = v0[37];
    v28 = v0[35];
    v25 = (v0 + 20);
    v26 = 0;
    v27 = 0;

    return MEMORY[0x2822003E8](v25, v26, v27, v28);
  }

  v42 = v0[43];

  specialized Set._subtract<A>(_:)(v16);
  v19 = v42;
  if (!v42[2])
  {
    goto LABEL_23;
  }

LABEL_6:
  v0[63] = *(v0[25] + v0[42]);
  v20 = MEMORY[0x277D84F90];
  v0[21] = MEMORY[0x277D84F90];
  v21 = -1;
  v22 = -1 << *(v19 + 32);
  if (-v22 < 64)
  {
    v21 = ~(-1 << -v22);
  }

  v23 = v21 & *(v19 + 56);
  v24 = (63 - v22) >> 6;

  v29 = 0;
  if (!v23)
  {
    goto LABEL_11;
  }

  do
  {
LABEL_9:
    while (1)
    {
      v30 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v31 = *(*(v19 + 48) + ((v29 << 9) | (8 * v30)));
      if (v31)
      {
        break;
      }

      if (!v23)
      {
        goto LABEL_11;
      }
    }

    v33 = v31;
    MEMORY[0x2743D7260]();
    if (*((v0[21] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[21] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v41 = *((v0[21] & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v25 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v20 = v0[21];
  }

  while (v23);
  while (1)
  {
LABEL_11:
    v32 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      return MEMORY[0x2822003E8](v25, v26, v27, v28);
    }

    if (v32 >= v24)
    {
      break;
    }

    v23 = *(v19 + 56 + 8 * v32);
    ++v29;
    if (v23)
    {
      v29 = v32;
      goto LABEL_9;
    }
  }

  v0[64] = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo18CKShareParticipantC_SayAEGTt0g5Tf4g_n(v20);

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:));
}

{
  v1 = v0[63];
  v2 = ParticipantPresenceStore.participants(_:didLeaveTabGroup:)(v0[64], v0[22], v0[23]);
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v0[65] = v2;
  v0[66] = v4;
  v0[67] = v6;
  v0[68] = v8;

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:));
}

{
  type metadata accessor for MainActor();
  *(v0 + 552) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:));
}

{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[67];
  v4 = v0[66];
  v5 = v0[65];
  v6 = v0[25];

  specialized ParticipantPresenceCoordinator._notifyStoreUpdates(_:)(v3, v2);

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:));
}

{
  v1 = v0[43];
  v2 = v0[44];

  v3 = v0[47];
  v0[43] = v0[50];
  v0[44] = v3;
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v0[45] = v5;
  *v5 = v0;
  v5[1] = closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
  v6 = v0[37];
  v7 = v0[35];

  return MEMORY[0x2822003E8](v0 + 20, 0, 0, v7);
}

Swift::Void __swiftcall ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:)(Swift::String_optional toTab, Swift::String_optional inTabGroup, Swift::String withDeviceIdentifier)
{
  object = withDeviceIdentifier._object;
  countAndFlagsBits = withDeviceIdentifier._countAndFlagsBits;
  v6 = inTabGroup.value._object;
  v7 = inTabGroup.value._countAndFlagsBits;
  v8 = toTab.value._object;
  v9 = toTab.value._countAndFlagsBits;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v17 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v9;
  v15[5] = v8;
  v15[6] = v7;
  v15[7] = v6;
  v15[8] = v3;
  v15[9] = countAndFlagsBits;
  v15[10] = object;

  v16 = v3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:), v15);
}

uint64_t closure #1 in ParticipantPresenceCoordinator.removeTabGroup(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.removeTabGroup(_:));
}

uint64_t closure #1 in ParticipantPresenceCoordinator.removeTabGroup(_:)()
{
  *(v0 + 40) = *(*(v0 + 16) + OBJC_IVAR____WBParticipantPresenceCoordinator_participantPresenceStore);
  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.removeTabGroup(_:));
}

{
  v1 = v0[5];
  ParticipantPresenceStore.removeTabGroup(_:)(v0[3], v0[4]);

  v2 = v0[1];

  return v2();
}

uint64_t ParticipantPresenceCoordinator.removeTabGroup(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v4;
  v13[5] = a1;
  v13[6] = a2;
  v14 = v4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, a4, v13);
}

uint64_t closure #1 in ParticipantPresenceCoordinator.removeTab(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.removeTab(_:));
}

uint64_t closure #1 in ParticipantPresenceCoordinator.removeTab(_:)()
{
  *(v0 + 40) = *(*(v0 + 16) + OBJC_IVAR____WBParticipantPresenceCoordinator_participantPresenceStore);
  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.removeTab(_:));
}

{
  v1 = v0[5];
  ParticipantPresenceStore.removeTab(_:)(v0[3], v0[4]);

  v2 = v0[1];

  return v2();
}

uint64_t @objc ParticipantPresenceCoordinator.removeTabGroup(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a1;
  v15[5] = v11;
  v15[6] = v13;
  v16 = a1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, a5, v15);
}

uint64_t ParticipantPresenceCoordinator.tabGroupIdentifierForParticipant(_:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.tabGroupIdentifierForParticipant(_:));
}

uint64_t ParticipantPresenceCoordinator.tabGroupIdentifierForParticipant(_:)()
{
  *(v0 + 64) = *(*(v0 + 56) + OBJC_IVAR____WBParticipantPresenceCoordinator_participantPresenceStore);
  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.tabGroupIdentifierForParticipant(_:));
}

{
  v1 = v0[8];
  swift_beginAccess();
  v2 = *(v1 + 120);
  if (!*(v2 + 16))
  {
    goto LABEL_6;
  }

  v3 = v0[5];
  v4 = v0[6];

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v4);
  if ((v6 & 1) == 0)
  {

LABEL_6:
    v9 = 0;
    v8 = 0;
    goto LABEL_7;
  }

  v7 = (*(v2 + 56) + 56 * v5);
  v9 = *v7;
  v8 = v7[1];
  v11 = v7[2];
  v10 = v7[3];
  v12 = v7[6];
  outlined copy of PresenceUpdateMessage.Kind(*v7, v8);

  if (v8)
  {

    outlined consume of PresenceUpdateMessage.Kind(v9, v8);
  }

  else
  {
    outlined consume of PresenceUpdateMessage.Kind(v9, 0);

    v9 = 0;
  }

LABEL_7:
  v13 = v0[1];

  return v13(v9, v8);
}

uint64_t @objc closure #1 in ParticipantPresenceCoordinator.tabGroupIdentifierForParticipant(_:)(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3[5] = v5;
  v6 = a3;

  return MEMORY[0x2822009F8](@objc closure #1 in ParticipantPresenceCoordinator.tabGroupIdentifierForParticipant(_:));
}

uint64_t @objc closure #1 in ParticipantPresenceCoordinator.tabGroupIdentifierForParticipant(_:)()
{
  *(v0 + 48) = *(*(v0 + 16) + OBJC_IVAR____WBParticipantPresenceCoordinator_participantPresenceStore);
  return MEMORY[0x2822009F8](@objc closure #1 in ParticipantPresenceCoordinator.tabGroupIdentifierForParticipant(_:));
}

{
  countAndFlagsBits = v0[3]._countAndFlagsBits;
  v2 = v0[1]._countAndFlagsBits;
  v3 = ParticipantPresenceStore.tabGroupIdentifierForParticipant(_:)(v0[2]);

  if (v3.value._object)
  {
    v4 = MEMORY[0x2743D7200](v3.value._countAndFlagsBits, v3.value._object);
  }

  else
  {
    v4 = 0;
  }

  object = v0[1]._object;
  (object)[2](object, v4);

  _Block_release(object);
  v6 = v0->_object;

  return v6();
}

uint64_t ParticipantPresenceCoordinator.tabIdentifierForParticipant(_:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.tabIdentifierForParticipant(_:));
}

uint64_t ParticipantPresenceCoordinator.tabIdentifierForParticipant(_:)()
{
  *(v0 + 64) = *(*(v0 + 56) + OBJC_IVAR____WBParticipantPresenceCoordinator_participantPresenceStore);
  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.tabIdentifierForParticipant(_:));
}

{
  v1 = v0[8];
  swift_beginAccess();
  v2 = *(v1 + 120);
  if (*(v2 + 16))
  {
    v3 = v0[5];
    v4 = v0[6];

    v5 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v4);
    if (v6)
    {
      v7 = (*(v2 + 56) + 56 * v5);
      v9 = *v7;
      v8 = v7[1];
      v11 = v7[2];
      v10 = v7[3];
      v12 = v7[6];
      outlined copy of PresenceUpdateMessage.Kind(*v7, v8);

      if (v8)
      {

        outlined consume of PresenceUpdateMessage.Kind(v9, v8);

        goto LABEL_9;
      }

      outlined consume of PresenceUpdateMessage.Kind(v9, 0);
    }
  }

  v11 = 0;
  v10 = 0;
LABEL_9:
  v13 = v0[1];

  return v13(v11, v10);
}

uint64_t @objc closure #1 in ParticipantPresenceCoordinator.tabIdentifierForParticipant(_:)(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3[5] = v5;
  v6 = a3;

  return MEMORY[0x2822009F8](@objc closure #1 in ParticipantPresenceCoordinator.tabIdentifierForParticipant(_:));
}

uint64_t @objc closure #1 in ParticipantPresenceCoordinator.tabIdentifierForParticipant(_:)()
{
  *(v0 + 48) = *(*(v0 + 16) + OBJC_IVAR____WBParticipantPresenceCoordinator_participantPresenceStore);
  return MEMORY[0x2822009F8](@objc closure #1 in ParticipantPresenceCoordinator.tabIdentifierForParticipant(_:));
}

{
  countAndFlagsBits = v0[3]._countAndFlagsBits;
  v2 = v0[1]._countAndFlagsBits;
  v3 = ParticipantPresenceStore.tabIdentifierForParticipant(_:)(v0[2]);

  if (v3.value._object)
  {
    v4 = MEMORY[0x2743D7200](v3.value._countAndFlagsBits, v3.value._object);
  }

  else
  {
    v4 = 0;
  }

  object = v0[1]._object;
  (object)[2](object, v4);

  _Block_release(object);
  v6 = v0->_object;

  return v6();
}

uint64_t ParticipantPresenceCoordinator.currentLocationIdentifiersForParticipant(_:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.currentLocationIdentifiersForParticipant(_:));
}

uint64_t ParticipantPresenceCoordinator.currentLocationIdentifiersForParticipant(_:)()
{
  *(v0 + 64) = *(*(v0 + 56) + OBJC_IVAR____WBParticipantPresenceCoordinator_participantPresenceStore);
  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.currentLocationIdentifiersForParticipant(_:));
}

{
  v1 = v0[8];
  swift_beginAccess();
  v2 = *(v1 + 120);
  if (!*(v2 + 16))
  {
    goto LABEL_6;
  }

  v3 = v0[5];
  v4 = v0[6];

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v4);
  if ((v6 & 1) == 0)
  {

LABEL_6:
    v8 = 0;
    v9 = 0;
    goto LABEL_7;
  }

  v7 = (*(v2 + 56) + 56 * v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  v12 = v7[6];
  outlined copy of PresenceUpdateMessage.Kind(*v7, v9);

  if (v9)
  {

    outlined consume of PresenceUpdateMessage.Kind(v8, v9);

    goto LABEL_8;
  }

  outlined consume of PresenceUpdateMessage.Kind(v8, 0);

  v8 = 0;
LABEL_7:
  v10 = 0;
  v11 = 0;
LABEL_8:
  v13 = v0[1];

  return v13(v8, v9, v10, v11);
}

uint64_t @objc closure #1 in ParticipantPresenceCoordinator.currentLocationIdentifiersForParticipant(_:)(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = @objc closure #1 in ParticipantPresenceCoordinator.currentLocationIdentifiersForParticipant(_:);

  return ParticipantPresenceCoordinator.currentLocationIdentifiersForParticipant(_:)(v5, v7);
}

uint64_t @objc closure #1 in ParticipantPresenceCoordinator.currentLocationIdentifiersForParticipant(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = *(*v4 + 40);
  v11 = *(*v4 + 32);
  v12 = *(*v4 + 16);
  v13 = *v4;

  if (a2)
  {
    v14 = MEMORY[0x2743D7200](a1, a2);
    if (a4)
    {
LABEL_3:
      v15 = MEMORY[0x2743D7200](a3, a4);
      goto LABEL_6;
    }
  }

  else
  {
    v14 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
LABEL_6:
  v16 = *(v9 + 24);
  (v16)[2](v16, v14, v15);

  _Block_release(v16);

  v17 = *(v13 + 8);

  return v17();
}

uint64_t ParticipantPresenceCoordinator.activeParticipantsInTabGroup(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.activeParticipantsInTabGroup(_:));
}

uint64_t ParticipantPresenceCoordinator.activeParticipantsInTabGroup(_:)()
{
  *(v0 + 40) = *(*(v0 + 32) + OBJC_IVAR____WBParticipantPresenceCoordinator_participantPresenceStore);
  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.activeParticipantsInTabGroup(_:));
}

{
  v1 = v0[5];
  v2 = ParticipantPresenceStore.activeParticipantsInTabGroup(_:)(v0[2], v0[3]);
  v3 = v0[1];

  return v3(v2);
}

uint64_t @objc closure #1 in ParticipantPresenceCoordinator.activeParticipantsInTabGroup(_:)(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3[5] = v5;
  v6 = a3;

  return MEMORY[0x2822009F8](@objc closure #1 in ParticipantPresenceCoordinator.activeParticipantsInTabGroup(_:));
}

uint64_t @objc closure #1 in ParticipantPresenceCoordinator.activeParticipantsInTabGroup(_:)()
{
  *(v0 + 48) = *(*(v0 + 16) + OBJC_IVAR____WBParticipantPresenceCoordinator_participantPresenceStore);
  return MEMORY[0x2822009F8](@objc closure #1 in ParticipantPresenceCoordinator.activeParticipantsInTabGroup(_:));
}

{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[2];
  ParticipantPresenceStore.activeParticipantsInTabGroup(_:)(v0[4], v0[5]);

  type metadata accessor for CKShareParticipant();
  lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject(&lazy protocol witness table cache variable for type CKShareParticipant and conformance NSObject, type metadata accessor for CKShareParticipant);
  isa = Set._bridgeToObjectiveC()().super.isa;

  (v2)[2](v2, isa);

  _Block_release(v2);
  v5 = v0[1];

  return v5();
}

uint64_t ParticipantPresenceCoordinator.activeParticipantsInTab(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.activeParticipantsInTab(_:));
}

uint64_t ParticipantPresenceCoordinator.activeParticipantsInTab(_:)()
{
  *(v0 + 40) = *(*(v0 + 32) + OBJC_IVAR____WBParticipantPresenceCoordinator_participantPresenceStore);
  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.activeParticipantsInTab(_:));
}

{
  v1 = v0[5];
  v2 = ParticipantPresenceStore.activeParticipantsInTab(_:)(v0[2], v0[3]);
  v3 = v0[1];

  return v3(v2);
}

id ParticipantPresenceCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ParticipantPresenceCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *specialized CKShareGroupSessionProvider.init(id:activity:share:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v12 = type metadata accessor for PresenceSessionInfo();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = type metadata accessor for GroupSessionProviderState();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  (*(v17 + 104))(&v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CCB1A8]);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15GroupActivities0E20SessionProviderStateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities0E20SessionProviderStateOs5NeverOGMR);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v5[4] = CurrentValueSubject.init(_:)();
  static PresenceSessionInfo.default.getter();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOGMR);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v5[5] = CurrentValueSubject.init(_:)();
  v5[2] = a1;
  v5[3] = a2;
  v5[7] = a3;
  v5[8] = a4;
  v5[14] = a5;
  v24 = a5;
  *&v53 = CKShare.members.getter();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMR);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v5[6] = CurrentValueSubject.init(_:)();
  v28 = [v24 currentUserParticipant];
  if (v28 && (v29 = v28, v30 = CKShareParticipant.handle.getter(), v29, v30))
  {
    v31 = [v30 normalizedValue];
    if (!v31)
    {
      v31 = [v30 value];
    }

    v32 = v31;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    *(&v54 + 1) = type metadata accessor for AddressableMember();
    v55 = lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject(&lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember, MEMORY[0x277CCB290]);
    __swift_allocate_boxed_opaque_existential_1(&v53);
    AddressableMember.init(handle:)();

    v33 = v54;
    *(v6 + 9) = v53;
    *(v6 + 11) = v33;
    v6[13] = v55;
  }

  else
  {
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.tabGroup);
    v35 = v24;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v53 = v39;
      *v38 = 136315138;
      v40 = [v35 recordID];
      v41 = [v40 ckShortDescription];

      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v53);

      *(v38 + 4) = v45;
      _os_log_impl(&dword_272D1B000, v36, v37, "Share %s does not have a currentUserParticipant", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x2743D7F00](v39, -1, -1);
      MEMORY[0x2743D7F00](v38, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift27CKShareGroupSessionProviderC6ErrorsOyAA0D21CollaborationActivityV_GMd, &_s17WebBookmarksSwift27CKShareGroupSessionProviderC6ErrorsOyAA0D21CollaborationActivityV_GMR);
    lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type CKShareGroupSessionProvider<CKShareCollaborationActivity>.Errors and conformance CKShareGroupSessionProvider<A>.Errors, &_s17WebBookmarksSwift27CKShareGroupSessionProviderC6ErrorsOyAA0D21CollaborationActivityV_GMd, &_s17WebBookmarksSwift27CKShareGroupSessionProviderC6ErrorsOyAA0D21CollaborationActivityV_GMR);
    swift_allocError();
    swift_willThrow();

    v46 = v6[3];

    v47 = v6[4];

    v48 = v6[5];

    v49 = v6[6];

    v50 = v6[8];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMd, &_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMR);
    swift_deallocPartialClassInstance();
  }

  return v6;
}

uint64_t specialized GroupSession.JoinState.join(resuming:)(uint64_t a1)
{
  v33 = a1;
  v2 = v1;
  v31 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v32 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD34PersonalDeviceCoordinationActivityV_GMd, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD34PersonalDeviceCoordinationActivityV_GMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (v27 - v12);
  outlined init with copy of TaskPriority?(v2, v27 - v12, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD34PersonalDeviceCoordinationActivityV_GMd, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD34PersonalDeviceCoordinationActivityV_GMR);
  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    outlined destroy of TaskPriority?(v2, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD34PersonalDeviceCoordinationActivityV_GMd, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD34PersonalDeviceCoordinationActivityV_GMR);
    v27[2] = v10;
    v16 = *v13;
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    v28 = *(v6 + 16);
    v29 = v6 + 16;
    v30 = v2;
    v28(v9, v33, v5);
    v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    *(v19 + 24) = v16;
    v20 = v5;
    (*(v6 + 32))(v19 + v18, v9, v5);
    aBlock[4] = partial apply for specialized closure #1 in GroupSession.JoinState.join(resuming:);
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_472;
    v27[1] = _Block_copy(aBlock);
    aBlock[7] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v21 = type metadata accessor for DispatchWorkItem();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v15 = DispatchWorkItem.init(flags:block:)();

    swift_beginAccess();
    v24 = *(v17 + 16);
    *(v17 + 16) = v15;

    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A8WorkItemC_ScCyyts5Error_pGtMd, &_s8Dispatch0A8WorkItemC_ScCyyts5Error_pGtMR) + 48);
    v26 = v30;
    *v30 = v15;
    v28(&v26[v25], v33, v20);
    swift_storeEnumTagMultiPayload();
    swift_retain_n();

    return v15;
  }

  if (result == 2)
  {
    v15 = type metadata accessor for CancellationError();
    lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x277D85678]);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();
    return v15;
  }

  __break(1u);
  return result;
}

{
  v33 = a1;
  v2 = v1;
  v31 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v32 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD28CKShareCollaborationActivityV_GMd, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD28CKShareCollaborationActivityV_GMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (v27 - v12);
  outlined init with copy of TaskPriority?(v2, v27 - v12, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD28CKShareCollaborationActivityV_GMd, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD28CKShareCollaborationActivityV_GMR);
  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    outlined destroy of TaskPriority?(v2, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD28CKShareCollaborationActivityV_GMd, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD28CKShareCollaborationActivityV_GMR);
    v27[2] = v10;
    v16 = *v13;
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    v28 = *(v6 + 16);
    v29 = v6 + 16;
    v30 = v2;
    v28(v9, v33, v5);
    v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    *(v19 + 24) = v16;
    v20 = v5;
    (*(v6 + 32))(v19 + v18, v9, v5);
    aBlock[4] = partial apply for specialized closure #1 in GroupSession.JoinState.join(resuming:);
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_332;
    v27[1] = _Block_copy(aBlock);
    aBlock[7] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v21 = type metadata accessor for DispatchWorkItem();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v15 = DispatchWorkItem.init(flags:block:)();

    swift_beginAccess();
    v24 = *(v17 + 16);
    *(v17 + 16) = v15;

    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A8WorkItemC_ScCyyts5Error_pGtMd, &_s8Dispatch0A8WorkItemC_ScCyyts5Error_pGtMR) + 48);
    v26 = v30;
    *v30 = v15;
    v28(&v26[v25], v33, v20);
    swift_storeEnumTagMultiPayload();
    swift_retain_n();

    return v15;
  }

  if (result == 2)
  {
    v15 = type metadata accessor for CancellationError();
    lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x277D85678]);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();
    return v15;
  }

  __break(1u);
  return result;
}

void specialized closure #1 in GroupSession.JoinState.join(resuming:)(uint64_t a1)
{
  swift_beginAccess();
  if (!*(a1 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = *(a1 + 16);

  v3 = dispatch thunk of DispatchWorkItem.isCancelled.getter();

  if (v3)
  {
    return;
  }

  GroupSession.join()();
  swift_beginAccess();
  if (!*(a1 + 16))
  {
LABEL_9:
    __break(1u);
    return;
  }

  v4 = *(a1 + 16);

  v5 = dispatch thunk of DispatchWorkItem.isCancelled.getter();

  if (v5)
  {
    GroupSession.leave()();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t specialized closure #1 in GroupSession.join(on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](specialized closure #1 in GroupSession.join(on:));
}

{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](specialized closure #1 in GroupSession.join(on:));
}

uint64_t specialized closure #1 in GroupSession.join(on:)()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = specialized closure #1 in GroupSession.join(on:);
  v4 = *(v0 + 16);
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0x3A6E6F286E696F6ALL, 0xE900000000000029, partial apply for specialized closure #1 in closure #1 in GroupSession.join(on:), v1, v5);
}

{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](specialized closure #1 in GroupSession.join(on:));
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = specialized closure #1 in GroupSession.join(on:);
  v4 = *(v0 + 16);
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0x3A6E6F286E696F6ALL, 0xE900000000000029, partial apply for specialized closure #1 in closure #1 in GroupSession.join(on:), v1, v5);
}

{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](specialized closure #1 in GroupSession.join(on:));
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t specialized closure #1 in closure #1 in GroupSession.join(on:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(*a2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a2 + v4));
  partial apply for specialized closure #1 in closure #1 in closure #1 in GroupSession.join(on:)(&v6);
  os_unfair_lock_unlock((a2 + v4));

  OS_dispatch_queue.async(execute:)();
}

{
  v3 = *(*a2 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(*a2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a2 + v4));
  partial apply for specialized closure #1 in closure #1 in closure #1 in GroupSession.join(on:)(&v6);
  os_unfair_lock_unlock((a2 + v4));

  OS_dispatch_queue.async(execute:)();
}

void specialized closure #2 in GroupSession.join(on:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(*a1 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*a1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a1 + v7));
  specialized closure #1 in closure #2 in GroupSession.join(on:)(a1 + v6, a2, a3);

  os_unfair_lock_unlock((a1 + v7));
}

uint64_t specialized closure #1 in closure #2 in GroupSession.join(on:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v19 - v13;
  outlined init with take of CollaborationConnectionManager<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>, PresenceUpdateMessage>.WeakContainer<AsyncBufferedQueue<Set<Participant>>>(a1, v9, a2, a3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v9;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A8WorkItemC_ScCyyts5Error_pGtMd, &_s8Dispatch0A8WorkItemC_ScCyyts5Error_pGtMR);
    (*(v11 + 32))(v14, &v9[*(v16 + 48)], v10);
    dispatch thunk of DispatchWorkItem.cancel()();
    type metadata accessor for CancellationError();
    lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x277D85678]);
    v17 = swift_allocError();
    CancellationError.init()();
    v19[1] = v17;
    CheckedContinuation.resume(throwing:)();

    (*(v11 + 8))(v14, v10);
  }

  else
  {
    outlined destroy of TaskPriority?(v9, a2, a3);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t specialized closure #1 in GroupSession.leave(on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v25[1] = a4;
  v30 = a2;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v8 - 8);
  v9 = *(v29 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v12 = *(v28 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v28);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v25 - v19;
  (*(v17 + 16))(v25 - v19, a1, v16);
  v21 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  (*(v17 + 32))(v22 + v21, v20, v16);
  aBlock[4] = v26;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = v27;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v31 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x2743D74B0](0, v15, v11, v23);
  _Block_release(v23);
  (*(v29 + 8))(v11, v8);
  (*(v12 + 8))(v15, v28);
}

uint64_t specialized closure #1 in closure #1 in GroupSession.leave(on:)()
{
  GroupSession.leave()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v24 - v10;
  outlined init with copy of TaskPriority?(a3, v24 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of TaskPriority?(v11, &_sScPSgMd, &_sScPSgMR);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = String.utf8CString.getter() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);

    return v22;
  }

LABEL_8:
  outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17WebBookmarksSwift20ParticipantHandleMapC0G4KindOGMd, &_ss23_ContiguousArrayStorageCy17WebBookmarksSwift20ParticipantHandleMapC0G4KindOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS17WebBookmarksSwift20ParticipantHandleMapC0F4KindOGMd, &_ss18_DictionaryStorageCySS17WebBookmarksSwift20ParticipantHandleMapC0F4KindOGMR);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v19;
        v22[1] = v20;
        *(*(v4 + 56) + 8 * v17) = v21;
        v23 = v21;
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

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS17WebBookmarksSwift30ParticipantPresenceCoordinatorC22ConnectionManagerStoreC06SharedI0VGMd, &_ss18_DictionaryStorageCySS17WebBookmarksSwift30ParticipantPresenceCoordinatorC22ConnectionManagerStoreC06SharedI0VGMR);
  v31 = v0;
  v1 = *v0;
  v2 = static _DictionaryStorage.copy(original:)();
  v3 = v2;
  if (*(v1 + 16))
  {
    result = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 64 + 8 * v5)
    {
      result = memmove(result, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = 16 * v16;
        v18 = (*(v1 + 48) + 16 * v16);
        v20 = *v18;
        v19 = v18[1];
        v16 *= 48;
        v21 = (*(v1 + 56) + v16);
        v22 = *v21;
        v23 = v21[1];
        v24 = v21[2];
        v25 = v21[3];
        v27 = v21[4];
        v26 = v21[5];
        v28 = (*(v3 + 48) + v17);
        *v28 = v20;
        v28[1] = v19;
        v29 = (*(v3 + 56) + v16);
        *v29 = v22;
        v29[1] = v23;
        v29[2] = v24;
        v29[3] = v25;
        v29[4] = v27;
        v29[5] = v26;

        v30 = v23;
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v31 = v3;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd, &_ss18_DictionaryStorageCySSSiGMR);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSShySo18CKShareParticipantCGGMd, &_ss18_DictionaryStorageCySSShySo18CKShareParticipantCGGMR);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS17WebBookmarksSwift21PresenceUpdateMessageVGMd, &_ss18_DictionaryStorageCySS17WebBookmarksSwift21PresenceUpdateMessageVGMR);
  v30 = v0;
  v1 = *v0;
  v2 = static _DictionaryStorage.copy(original:)();
  v3 = v2;
  if (*(v1 + 16))
  {
    result = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 64 + 8 * v5)
    {
      result = memmove(result, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = 16 * v16;
        v18 = (*(v1 + 48) + 16 * v16);
        v20 = *v18;
        v19 = v18[1];
        v16 *= 56;
        v21 = *(v1 + 56) + v16;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = *(v21 + 16);
        v25 = *(v21 + 40);
        v26 = *(v21 + 48);
        v27 = (*(v3 + 48) + v17);
        v28 = *(v21 + 24);
        *v27 = v20;
        v27[1] = v19;
        v29 = *(v3 + 56) + v16;
        *v29 = v22;
        *(v29 + 8) = v23;
        *(v29 + 16) = v24;
        *(v29 + 24) = v28;
        *(v29 + 40) = v25;
        *(v29 + 48) = v26;

        outlined copy of PresenceUpdateMessage.Kind(v22, v23);
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v30 = v3;
  }

  return result;
}

id specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo7CKShareC5share_Si5counttGMd, &_ss18_DictionaryStorageCySSSo7CKShareC5share_Si5counttGMR);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(v2 + 56) + v17;
        v23 = *v21;
        v22 = *(v21 + 8);
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v23;
        v25[1] = v22;

        result = v23;
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo18CKShareParticipantCGMd, &_ss18_DictionaryStorageCySSSo18CKShareParticipantCGMR);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS17WebBookmarksSwift20ParticipantHandleMapC0F4KindOGMd, &_ss18_DictionaryStorageCySS17WebBookmarksSwift20ParticipantHandleMapC0F4KindOGMR);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v25;
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS17WebBookmarksSwift30ParticipantPresenceCoordinatorC22ConnectionManagerStoreC06SharedI0VGMd, &_ss18_DictionaryStorageCySS17WebBookmarksSwift30ParticipantPresenceCoordinatorC22ConnectionManagerStoreC06SharedI0VGMR);
  v48 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v45 = v2;
    v46 = v5;
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
    v47 = result;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v50 = (v13 - 1) & v13;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = v24[1];
      v53 = *v24;
      v26 = (*(v5 + 56) + 48 * v23);
      v27 = v26[1];
      v51 = *v26;
      v28 = v26[2];
      v29 = v26[3];
      v30 = v26[4];
      v49 = v26[5];
      if ((v48 & 1) == 0)
      {

        v31 = v27;
      }

      v52 = v27;
      v32 = v30;
      v33 = v29;
      v34 = v28;
      v35 = v25;
      v8 = v47;
      v36 = *(v47 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v37 = -1 << *(v47 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v15 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        v17 = v52;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v15 + 8 * v39);
          if (v43 != -1)
          {
            v16 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v38) & ~*(v15 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
      v17 = v52;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v18 = (*(v47 + 48) + 16 * v16);
      *v18 = v53;
      v18[1] = v35;
      v19 = (*(v47 + 56) + 48 * v16);
      v13 = v50;
      *v19 = v51;
      v19[1] = v17;
      v19[2] = v34;
      v19[3] = v33;
      v19[4] = v32;
      v19[5] = v49;
      ++*(v47 + 16);
      v5 = v46;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        v50 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_35;
    }

    v44 = 1 << *(v5 + 32);
    v3 = v45;
    if (v44 >= 64)
    {
      bzero(v10, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v44;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo7CKShareC5share_Si5counttGMd, &_ss18_DictionaryStorageCySSSo7CKShareC5share_Si5counttGMR);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v3;
    v40 = v5;
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
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + v23;
      v28 = *v27;
      v42 = *(v27 + 8);
      if ((v41 & 1) == 0)
      {

        v29 = v28;
      }

      v30 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v28;
      v19[1] = v42;
      ++*(v8 + 16);
      v5 = v40;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v10, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd, &_ss18_DictionaryStorageCySSSiGMR);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo18CKShareParticipantCGMd, &_ss18_DictionaryStorageCySSSo18CKShareParticipantCGMR);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSShySo18CKShareParticipantCGGMd, &_ss18_DictionaryStorageCySSShySo18CKShareParticipantCGGMR);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS17WebBookmarksSwift21PresenceUpdateMessageVGMd, &_ss18_DictionaryStorageCySS17WebBookmarksSwift21PresenceUpdateMessageVGMR);
  v46 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v43 = v3;
    v44 = v5;
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
    v45 = result;
    while (v13)
    {
      v21 = __clz(__rbit64(v13));
      v48 = (v13 - 1) & v13;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = v25[1];
      v51 = *v25;
      v27 = *(v5 + 56) + 56 * v24;
      v28 = *v27;
      v29 = *(v27 + 8);
      v30 = *(v27 + 16);
      v50 = *(v27 + 24);
      v31 = *(v27 + 48);
      v47 = *(v27 + 40);
      if ((v46 & 1) == 0)
      {

        outlined copy of PresenceUpdateMessage.Kind(v28, v29);
      }

      v49 = v30;
      v32 = v29;
      v33 = v28;
      v34 = *(v45 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v8 = v45;
      v35 = -1 << *(v45 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v15 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v17 = v49;
        v18 = v31;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v15 + 8 * v37);
          if (v41 != -1)
          {
            v16 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v36) & ~*(v15 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v17 = v49;
      v18 = v31;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v19 = (*(v45 + 48) + 16 * v16);
      *v19 = v51;
      v19[1] = v26;
      v20 = *(v45 + 56) + 56 * v16;
      *v20 = v33;
      *(v20 + 8) = v32;
      *(v20 + 16) = v17;
      *(v20 + 24) = v50;
      v13 = v48;
      *(v20 + 40) = v47;
      *(v20 + 48) = v18;
      ++*(v45 + 16);
      v5 = v44;
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v48 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_35;
    }

    v42 = 1 << *(v5 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v10, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v42;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 48 * result);
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  v6[2] = a4[2];
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v20 = *v5;
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 48 * v11;
    v24 = *(v23 + 16);
    v33 = *(v23 + 8);
    v26 = *(v23 + 24);
    v25 = *(v23 + 32);
    v27 = a1[1];
    *v23 = *a1;
    *(v23 + 16) = v27;
    *(v23 + 32) = a1[2];

    return;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v28 = (v22[6] + 16 * v11);
  *v28 = a2;
  v28[1] = a3;
  v29 = (v22[7] + 48 * v11);
  v30 = a1[1];
  *v29 = *a1;
  v29[1] = v30;
  v29[2] = a1[2];
  v31 = v22[2];
  v15 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v32;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
      v22 = *v6;
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = v24[7] + 16 * v13;
    v26 = *v25;
    *v25 = a1;
    *(v25 + 8) = a2;

    return;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v27 = (v24[6] + 16 * v13);
  *v27 = a3;
  v27[1] = a4;
  v28 = (v24[7] + 16 * v13);
  *v28 = a1;
  v28[1] = a2;
  v29 = v24[2];
  v17 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v30;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v20 = *v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      specialized _NativeDictionary.copy()();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 8 * result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

uint64_t partial apply for closure #1 in ParticipantPresenceCoordinator.beginDeviceCoordination()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return closure #1 in ParticipantPresenceCoordinator.beginDeviceCoordination()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in ParticipantPresenceCoordinator.endDeviceCoordination()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return closure #1 in ParticipantPresenceCoordinator.endDeviceCoordination()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in ParticipantPresenceCoordinator.beginCollaborationForShare(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return closure #1 in ParticipantPresenceCoordinator.beginCollaborationForShare(_:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in ParticipantPresenceCoordinator.shareDidUpdate(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return closure #1 in ParticipantPresenceCoordinator.shareDidUpdate(_:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in ParticipantPresenceCoordinator.endCollaborationForShare(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return closure #1 in ParticipantPresenceCoordinator.endCollaborationForShare(_:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in ParticipantPresenceCoordinator.removeTabGroup(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return closure #1 in ParticipantPresenceCoordinator.removeTabGroup(_:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in ParticipantPresenceCoordinator.removeTab(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return closure #1 in ParticipantPresenceCoordinator.removeTab(_:)(a1, v4, v5, v6, v7, v8);
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v20 = *v5;
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v20 = *v5;
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v20 = *v5;
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 56 * v11;

    return outlined assign with take of PresenceUpdateMessage(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = v22[7] + 56 * v11;
  v27 = *a1;
  v28 = *(a1 + 16);
  v29 = *(a1 + 32);
  *(v26 + 48) = *(a1 + 48);
  *(v26 + 16) = v28;
  *(v26 + 32) = v29;
  *v26 = v27;
  v30 = v22[2];
  v15 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v31;
}

uint64_t specialized _NativeSet.subtracting<A>(_:)(uint64_t a1, uint64_t a2)
{
  v98 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v69 - v10);
  v12 = type metadata accessor for Participant();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v89 = (&v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v69 - v17);
  MEMORY[0x28223BE20](v16);
  v84 = (&v69 - v20);
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x277D84FA0];
    goto LABEL_54;
  }

  v70 = v11;
  v72 = v9;
  v22 = a1 + 56;
  v21 = *(a1 + 56);
  v23 = -1 << *(a1 + 32);
  v83 = ~v23;
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v91 = (v24 & v21);
  v76 = (63 - v23) >> 6;
  v90 = v19 + 16;
  v81 = (v19 + 48);
  v82 = (v19 + 56);
  v80 = (v19 + 32);
  v86 = (a2 + 56);
  v71 = v19;
  v92 = (v19 + 8);

  v26 = 0;
  v73 = a1;
  for (i = a1 + 56; ; v22 = i)
  {
    v27 = v91;
    v28 = v26;
    if (v91)
    {
LABEL_14:
      v2 = (v27 - 1) & v27;
      v32 = v70;
      (*(v71 + 16))(v70, *(a1 + 48) + *(v71 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
      v33 = 0;
      v30 = v28;
    }

    else
    {
      v29 = v76 <= (v26 + 1) ? v26 + 1 : v76;
      v30 = v29 - 1;
      v31 = v26;
      while (1)
      {
        v28 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_57;
        }

        if (v28 >= v76)
        {
          break;
        }

        v27 = *(v22 + 8 * v28);
        ++v31;
        if (v27)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v33 = 1;
      v32 = v70;
    }

    v78 = *v82;
    v78(v32, v33, 1, v12);
    v93 = a1;
    v94 = v22;
    v95 = v83;
    v96 = v30;
    v97 = v2;
    v77 = *v81;
    if (v77(v32, 1, v12) == 1)
    {
      outlined destroy of TaskPriority?(v32, &_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
      goto LABEL_52;
    }

    v75 = *v80;
    v75(v84, v32, v12);
    v34 = *(a2 + 40);
    v74 = lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject(&lazy protocol witness table cache variable for type Participant and conformance Participant, MEMORY[0x277CCB248]);
    v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v36 = -1 << *(a2 + 32);
    v26 = v35 & ~v36;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v86[v26 >> 6]) != 0)
    {
      break;
    }

    (*v92)(v84, v12);
LABEL_22:
    v26 = v30;
    v91 = v2;
  }

  v69 = v92 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v85 = ~v36;
  v37 = *(v71 + 72);
  v87 = *(v71 + 16);
  v88 = v37;
  while (1)
  {
    v87(v18, *(a2 + 48) + v88 * v26, v12);
    v38 = lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject(&lazy protocol witness table cache variable for type Participant and conformance Participant, MEMORY[0x277CCB248]);
    v39 = dispatch thunk of static Equatable.== infix(_:_:)();
    v91 = *v92;
    v91(v18, v12);
    if (v39)
    {
      break;
    }

    v26 = (v26 + 1) & v85;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v86[v26 >> 6]) == 0)
    {
      a1 = v73;
      v91(v84, v12);
      goto LABEL_22;
    }
  }

  v85 = v38;
  v40 = (v91)(v84, v12);
  v41 = *(a2 + 32);
  v69 = ((1 << v41) + 63) >> 6;
  v25 = 8 * v69;
  a1 = v73;
  if ((v41 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v70 = &v69;
    MEMORY[0x28223BE20](v40);
    v43 = &v69 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v43, v86, v42);
    v44 = *&v43[8 * v28] & ~v22;
    v45 = *(a2 + 16);
    v84 = v43;
    *&v43[8 * v28] = v44;
    v46 = v45 - 1;
    v26 = v72;
    v47 = i;
    v48 = v76;
LABEL_26:
    v71 = v46;
    while (v2)
    {
      v49 = v30;
LABEL_38:
      v52 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v87(v26, *(a1 + 48) + (v52 | (v49 << 6)) * v88, v12);
      v53 = 0;
LABEL_39:
      v78(v26, v53, 1, v12);
      v93 = a1;
      v94 = v47;
      v95 = v83;
      v96 = v30;
      v97 = v2;
      if (v77(v26, 1, v12) == 1)
      {
        outlined destroy of TaskPriority?(v26, &_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
        a2 = specialized _NativeSet.extractSubset(using:count:)(v84, v69, v71, a2);
        goto LABEL_52;
      }

      v75(v89, v26, v12);
      v54 = *(a2 + 40);
      v55 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v56 = a2;
      v57 = -1 << *(a2 + 32);
      v58 = v55 & ~v57;
      v28 = v58 >> 6;
      v22 = 1 << v58;
      if (((1 << v58) & v86[v58 >> 6]) != 0)
      {
        v87(v18, *(v56 + 48) + v58 * v88, v12);
        v59 = dispatch thunk of static Equatable.== infix(_:_:)();
        v91(v18, v12);
        if ((v59 & 1) == 0)
        {
          v60 = ~v57;
          do
          {
            v58 = (v58 + 1) & v60;
            v28 = v58 >> 6;
            v22 = 1 << v58;
            if (((1 << v58) & v86[v58 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v87(v18, *(v56 + 48) + v58 * v88, v12);
            v61 = dispatch thunk of static Equatable.== infix(_:_:)();
            v91(v18, v12);
          }

          while ((v61 & 1) == 0);
        }

        v91(v89, v12);
        v62 = v84[v28];
        v84[v28] = v62 & ~v22;
        a2 = v56;
        a1 = v73;
        v26 = v72;
        v47 = i;
        v48 = v76;
        if ((v62 & v22) != 0)
        {
          v46 = v71 - 1;
          if (__OFSUB__(v71, 1))
          {
            __break(1u);
          }

          if (v71 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v91(v89, v12);
        a2 = v56;
        a1 = v73;
        v26 = v72;
        v47 = i;
        v48 = v76;
      }
    }

    if (v48 <= (v30 + 1))
    {
      v50 = v30 + 1;
    }

    else
    {
      v50 = v48;
    }

    v51 = v50 - 1;
    while (1)
    {
      v49 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v49 >= v48)
      {
        v2 = 0;
        v53 = 1;
        v30 = v51;
        goto LABEL_39;
      }

      v2 = *(v47 + 8 * v49);
      ++v30;
      if (v2)
      {
        v30 = v49;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v65 = v25;

    v84 = a2;
    v66 = v65;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v67 = v84;

      a2 = v67;
      continue;
    }

    break;
  }

  v68 = swift_slowAlloc();
  memcpy(v68, v86, v66);
  a2 = specialized closure #1 in _NativeSet.subtracting<A>(_:)(v68, v69, v84, v26, &v93);

  MEMORY[0x2743D7F00](v68, -1, -1);
LABEL_52:
  outlined consume of Set<Participant>.Iterator._Variant();
LABEL_54:
  v63 = *MEMORY[0x277D85DE8];
  return a2;
}

{
  v66[2] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for Participant();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v60 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v52 - v10;
  MEMORY[0x28223BE20](v9);
  i = v52 - v12;
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x277D84FA0];
    goto LABEL_31;
  }

  v66[0] = a1;
  v13 = *(a1 + 16);

  v54 = v13;
  if (!v13)
  {
    goto LABEL_30;
  }

  v14 = 0;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = *(v15 + 64);
  v56 = a1;
  v57 = a1 + ((v17 + 32) & ~v17);
  v63 = *(v15 + 56);
  v64 = v16;
  v61 = (a2 + 56);
  v62 = a2;
  v65 = v15;
  v18 = (v15 - 8);
  v53 = ((v15 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  while (1)
  {
    v58 = v14 + 1;
    v66[1] = v14 + 1;
    v64(i, v57 + v63 * v14, v4);
    v19 = *(a2 + 40);
    v55 = lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject(&lazy protocol witness table cache variable for type Participant and conformance Participant, MEMORY[0x277CCB248]);
    v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v21 = -1 << *(a2 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & v61[v22 >> 6]) != 0)
    {
      break;
    }

    v27 = *v18;
LABEL_10:
    v27(i, v4);
    v14 = v58;
    if (v58 == v54)
    {
      goto LABEL_30;
    }
  }

  v25 = ~v21;
  while (1)
  {
    v64(v11, *(v62 + 48) + v22 * v63, v4);
    lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject(&lazy protocol witness table cache variable for type Participant and conformance Participant, MEMORY[0x277CCB248]);
    v26 = dispatch thunk of static Equatable.== infix(_:_:)();
    v27 = *v18;
    (*v18)(v11, v4);
    if (v26)
    {
      break;
    }

    v22 = (v22 + 1) & v25;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & v61[v22 >> 6]) == 0)
    {
      a2 = v62;
      goto LABEL_10;
    }
  }

  v28 = (v27)(i, v4);
  v29 = v62;
  v30 = *(v62 + 32);
  v52[0] = ((1 << v30) + 63) >> 6;
  v31 = 8 * v52[0];
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v52[1] = v52;
    MEMORY[0x28223BE20](v28);
    v33 = v52 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v33, v61, v32);
    v34 = *(v29 + 16);
    *&v33[8 * v23] &= ~v24;
    v53 = v33;
    v54 = (v34 - 1);
    v35 = *(v56 + 16);
    v36 = v58;
    for (i = v35; ; v35 = i)
    {
      if (v36 == v35)
      {
        a2 = specialized _NativeSet.extractSubset(using:count:)(v53, v52[0], v54, v29);
        goto LABEL_30;
      }

      if (v36 >= *(v56 + 16))
      {
        break;
      }

      v58 = v36;
      v64(v60, v57 + v36 * v63, v4);
      v38 = *(v29 + 40);
      v39 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v40 = -1 << *(v29 + 32);
      v22 = v39 & ~v40;
      v24 = v22 >> 6;
      v23 = 1 << v22;
      if (((1 << v22) & v61[v22 >> 6]) == 0)
      {
        goto LABEL_15;
      }

      v64(v11, *(v62 + 48) + v22 * v63, v4);
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      v27(v11, v4);
      if ((v41 & 1) == 0)
      {
        v42 = ~v40;
        while (1)
        {
          v22 = (v22 + 1) & v42;
          v24 = v22 >> 6;
          v23 = 1 << v22;
          if (((1 << v22) & v61[v22 >> 6]) == 0)
          {
            break;
          }

          v64(v11, *(v62 + 48) + v22 * v63, v4);
          v43 = dispatch thunk of static Equatable.== infix(_:_:)();
          v27(v11, v4);
          if (v43)
          {
            goto LABEL_25;
          }
        }

LABEL_15:
        v27(v60, v4);
        v29 = v62;
LABEL_16:
        v37 = v58;
        goto LABEL_17;
      }

LABEL_25:
      v27(v60, v4);
      v44 = v53[v24];
      v53[v24] = v44 & ~v23;
      v29 = v62;
      if ((v44 & v23) == 0)
      {
        goto LABEL_16;
      }

      v45 = v54 - 1;
      v37 = v58;
      if (__OFSUB__(v54, 1))
      {
        goto LABEL_33;
      }

      --v54;
      if (!v45)
      {

        a2 = MEMORY[0x277D84FA0];
        goto LABEL_30;
      }

LABEL_17:
      v36 = v37 + 1;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v48 = v31;

    v49 = v48;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v50 = v62;

      v29 = v50;
      continue;
    }

    break;
  }

  v51 = swift_slowAlloc();
  memcpy(v51, v61, v49);
  a2 = specialized closure #1 in _NativeSet.subtracting<A>(_:)(v51, v52[0], v62, v22, v66);

  MEMORY[0x2743D7F00](v51, -1, -1);
LABEL_30:

LABEL_31:
  v46 = *MEMORY[0x277D85DE8];
  return a2;
}

{
  v3 = a2;
  v118 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v3 = MEMORY[0x277D84FA0];
LABEL_116:
    v91 = *MEMORY[0x277D85DE8];
    return v3;
  }

  v100 = 0;
  v5 = a1 + 56;
  v4 = *(a1 + 56);
  v6 = -1 << *(a1 + 32);
  v106 = ~v6;
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v4;
  v9 = (63 - v6) >> 6;
  v111 = (a2 + 56);

  v12 = 0;
  v107 = v3;
  v105 = v10;
  v104 = v5;
  v103 = v9;
  while (1)
  {
    if (v8)
    {
      goto LABEL_13;
    }

    v13 = v12;
    do
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_118;
      }

      if (v14 >= v9)
      {
LABEL_115:
        outlined consume of Set<Participant>.Iterator._Variant();
        goto LABEL_116;
      }

      v8 = *(v5 + 8 * v14);
      ++v13;
    }

    while (!v8);
    v12 = v14;
LABEL_13:
    v15 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v16 = *(*(v10 + 48) + ((v12 << 9) | (8 * v15)));
    v113 = v10;
    v114 = v5;
    v115 = v106;
    v116 = v12;
    v117 = v8;
    v17 = *(v3 + 40);
    Hasher.init(_seed:)();
    v108 = v12;
    v109 = v16;
    if (v16)
    {
      v18 = v16;
      if ([v18 acceptanceStatus] == 2 && (v19 = objc_msgSend(v18, sel_userIdentity), v20 = objc_msgSend(v19, sel_userRecordID), v19, v20))
      {
        v21 = [v20 recordName];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
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

    v22 = Hasher._finalize()();
    v23 = -1 << *(v3 + 32);
    v9 = v22 & ~v23;
    v2 = v9 >> 6;
    v5 = 1 << v9;
    if (((1 << v9) & v111[v9 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v10 = v105;
    v5 = v104;
    v9 = v103;
    v12 = v108;
  }

  v110 = ~v23;
  while (1)
  {
    v24 = *(*(v3 + 48) + 8 * v9);
    if (v24)
    {
      v25 = v24;
      if ([v25 acceptanceStatus] != 2 || (v26 = objc_msgSend(v25, sel_userIdentity), v27 = objc_msgSend(v26, sel_userRecordID), v26, !v27))
      {

LABEL_29:
        goto LABEL_22;
      }

      v28 = [v27 recordName];

      v29 = v109;
      if (!v109)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v29 = v109;
      if (!v109)
      {
        goto LABEL_56;
      }
    }

    v30 = v29;
    if ([v30 acceptanceStatus] != 2 || (v31 = objc_msgSend(v30, sel_userIdentity), v32 = objc_msgSend(v31, sel_userRecordID), v31, !v32))
    {

      goto LABEL_22;
    }

    v33 = [v32 recordName];

    if (!v24)
    {
      goto LABEL_22;
    }

    if ([v24 acceptanceStatus] == 2 && (v34 = objc_msgSend(v24, sel_userIdentity), v35 = objc_msgSend(v34, sel_userRecordID), v34, v35))
    {
      v36 = [v35 recordName];

      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;
    }

    else
    {
      v37 = 0;
      v39 = 0;
    }

    if ([v30 acceptanceStatus] == 2)
    {
      v40 = [v30 userIdentity];
      v41 = [v40 userRecordID];

      if (v41)
      {
        v102 = v37;
        v42 = [v41 recordName];

        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v44;

        v37 = v102;
        if (!v39)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v43 = 0;
        if (!v39)
        {
LABEL_41:

          v3 = v107;
          if (!v41)
          {
            goto LABEL_55;
          }

          goto LABEL_22;
        }
      }
    }

    else
    {
      v43 = 0;
      v41 = 0;
      if (!v39)
      {
        goto LABEL_41;
      }
    }

    if (!v41)
    {

      v3 = v107;
      goto LABEL_22;
    }

    if (v37 == v43 && v39 == v41)
    {
      break;
    }

    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v3 = v107;
    if (v45)
    {
      goto LABEL_55;
    }

LABEL_22:
    v9 = (v9 + 1) & v110;
    v2 = v9 >> 6;
    v5 = 1 << v9;
    if ((v111[v9 >> 6] & (1 << v9)) == 0)
    {
      goto LABEL_6;
    }
  }

  v30 = v24;
  v3 = v107;
LABEL_55:

LABEL_56:
  v46 = *(v3 + 32);
  v98[0] = ((1 << v46) + 63) >> 6;
  v11 = 8 * v98[0];
  if ((v46 & 0x3Fu) > 0xD)
  {
    goto LABEL_119;
  }

  while (2)
  {
    v98[1] = v98;
    MEMORY[0x28223BE20](v22);
    v9 = v98 - ((v47 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v9, v111, v47);
    v48 = *(v9 + 8 * v2) & ~v5;
    v49 = *(v3 + 16);
    v101 = v9;
    *(v9 + 8 * v2) = v48;
    v50 = v49 - 1;
    v51 = v105;
    v52 = v104;
    v53 = v103;
    v5 = v108;
LABEL_58:
    v99 = v50;
LABEL_60:
    while (2)
    {
      if (v8)
      {
LABEL_66:
        v56 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v57 = *(*(v51 + 48) + ((v5 << 9) | (8 * v56)));
        v113 = v51;
        v114 = v52;
        v115 = v106;
        v116 = v5;
        v117 = v8;
        v58 = *(v3 + 40);
        Hasher.init(_seed:)();
        v110 = v57;
        v108 = v5;
        if (v57)
        {
          v59 = v57;
          if ([v59 acceptanceStatus] == 2 && (v60 = objc_msgSend(v59, sel_userIdentity), v61 = objc_msgSend(v60, sel_userRecordID), v60, v61))
          {
            v62 = [v61 recordName];

            static String._unconditionallyBridgeFromObjectiveC(_:)();
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

        v9 = &v112;
        v63 = Hasher._finalize()();
        v64 = -1 << *(v3 + 32);
        v65 = v63 & ~v64;
        v2 = v65 >> 6;
        v66 = 1 << v65;
        if (((1 << v65) & v111[v65 >> 6]) == 0)
        {
LABEL_59:

          v51 = v105;
          v52 = v104;
          v53 = v103;
          v5 = v108;
          continue;
        }

        v67 = ~v64;
        while (1)
        {
          v9 = *(*(v3 + 48) + 8 * v65);
          if (v9)
          {
            v68 = v9;
            if ([v68 acceptanceStatus] != 2 || (v69 = objc_msgSend(v68, sel_userIdentity), v70 = objc_msgSend(v69, sel_userRecordID), v69, !v70))
            {

LABEL_82:
              goto LABEL_75;
            }

            v71 = [v70 recordName];

            v72 = v110;
            if (!v110)
            {
              goto LABEL_82;
            }
          }

          else
          {
            v72 = v110;
            if (!v110)
            {
              goto LABEL_107;
            }
          }

          v73 = v72;
          if ([v73 acceptanceStatus] != 2 || (v74 = objc_msgSend(v73, sel_userIdentity), v75 = objc_msgSend(v74, sel_userRecordID), v74, !v75))
          {

            goto LABEL_75;
          }

          v76 = [v75 recordName];

          if (!v9)
          {
            goto LABEL_75;
          }

          if ([v9 acceptanceStatus] == 2 && (v77 = objc_msgSend(v9, sel_userIdentity), v78 = objc_msgSend(v77, sel_userRecordID), v77, v78))
          {
            v79 = [v78 recordName];

            v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v81 = v80;

            v82 = v81;
          }

          else
          {
            v109 = 0;
            v82 = 0;
          }

          if ([v73 acceptanceStatus] == 2)
          {
            v102 = v82;
            v83 = [v73 userIdentity];
            v84 = [v83 userRecordID];

            if (v84)
            {
              v85 = [v84 recordName];

              v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v84 = v87;
            }

            else
            {
              v86 = 0;
            }

            v82 = v102;
            if (!v102)
            {
LABEL_103:

              v3 = v107;
              if (!v84)
              {
                goto LABEL_106;
              }

              goto LABEL_75;
            }
          }

          else
          {
            v86 = 0;
            v84 = 0;
            if (!v82)
            {
              goto LABEL_103;
            }
          }

          if (v84)
          {
            if (v109 == v86 && v82 == v84)
            {

              v73 = v9;
              v3 = v107;
LABEL_106:

LABEL_107:
              v89 = v101[v2];
              v101[v2] = v89 & ~v66;
              v51 = v105;
              v52 = v104;
              v53 = v103;
              v5 = v108;
              if ((v89 & v66) != 0)
              {
                v50 = v99 - 1;
                if (__OFSUB__(v99, 1))
                {
                  __break(1u);
                }

                if (v99 == 1)
                {

                  v3 = MEMORY[0x277D84FA0];
                  goto LABEL_115;
                }

                goto LABEL_58;
              }

              goto LABEL_60;
            }

            v88 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v3 = v107;
            if (v88)
            {
              goto LABEL_106;
            }
          }

          else
          {

            v3 = v107;
          }

LABEL_75:
          v65 = (v65 + 1) & v67;
          v2 = v65 >> 6;
          v66 = 1 << v65;
          if ((v111[v65 >> 6] & (1 << v65)) == 0)
          {
            goto LABEL_59;
          }
        }
      }

      break;
    }

    v54 = v5;
    while (1)
    {
      v55 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        break;
      }

      if (v55 >= v53)
      {
        if (v53 <= v5 + 1)
        {
          v90 = v5 + 1;
        }

        else
        {
          v90 = v53;
        }

        v113 = v51;
        v114 = v52;
        v115 = v106;
        v116 = v90 - 1;
        v117 = 0;
        v3 = specialized _NativeSet.extractSubset(using:count:)(v101, v98[0], v99, v3);
        goto LABEL_115;
      }

      v8 = *(v52 + 8 * v55);
      ++v54;
      if (v8)
      {
        v5 = v55;
        goto LABEL_66;
      }
    }

LABEL_118:
    __break(1u);
LABEL_119:
    v93 = v11;

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v94 = swift_slowAlloc();
  memcpy(v94, v111, v93);
  v95 = v100;
  specialized closure #1 in _NativeSet.subtracting<A>(_:)(v94, v98[0], v3, v9, &v113);
  v97 = v96;

  if (!v95)
  {

    MEMORY[0x2743D7F00](v94, -1, -1);
    v3 = v97;
    goto LABEL_115;
  }

  result = MEMORY[0x2743D7F00](v94, -1, -1);
  __break(1u);
  return result;
}

uint64_t specialized Set._subtract<A>(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v20 - v5;
  v7 = type metadata accessor for Participant();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x28223BE20](v7);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;
    v20[0] = v8 + 8;
    v20[1] = v8 + 16;

    for (i = 0; v15; result = outlined destroy of TaskPriority?(v6, &_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      (*(v8 + 16))(v12, *(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v7);
      specialized Set._Variant.remove(_:)(v12, v6);
      (*(v8 + 8))(v12, v7);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void specialized Set._subtract<A>(_:)(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(*(a1 + 48) + ((v9 << 9) | (8 * v10)));
        v12 = v11;
        v13 = specialized Set._Variant.remove(_:)(v11);
        outlined consume of ParticipantHandleMap.ParticipantKind?(v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

uint64_t specialized closure #1 in _NativeSet.subtracting<A>(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v49 - v11;
  v13 = type metadata accessor for Participant();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v60 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15);
  v66 = &v49 - v18;
  v19 = *(a3 + 16);
  v20 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v21 = *(a1 + v20);
  v52 = a1;
  v53 = v12;
  *(a1 + v20) = v21 & ((-1 << a4) - 1);
  v22 = v19 - 1;
  v63 = v23 + 16;
  v64 = a3;
  v57 = (v23 + 48);
  v58 = (v23 + 56);
  v56 = (v23 + 32);
  v62 = a3 + 56;
  v59 = v23;
  v65 = (v23 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v22;
    do
    {
      while (1)
      {
        v25 = *a5;
        v26 = a5[1];
        v28 = a5[2];
        v27 = a5[3];
        v29 = a5[4];
        if (!v29)
        {
          v31 = (v28 + 64) >> 6;
          if (v31 <= v27 + 1)
          {
            v32 = v27 + 1;
          }

          else
          {
            v32 = (v28 + 64) >> 6;
          }

          v33 = v32 - 1;
          while (1)
          {
            v30 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v30 >= v31)
            {
              v34 = 0;
              v35 = 1;
              goto LABEL_15;
            }

            v29 = *(v26 + 8 * v30);
            ++v27;
            if (v29)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v30 = a5[3];
LABEL_14:
        v34 = (v29 - 1) & v29;
        (*(v59 + 16))(v12, *(v25 + 48) + *(v59 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v13);
        v35 = 0;
        v33 = v30;
LABEL_15:
        (*v58)(v12, v35, 1, v13);
        *a5 = v25;
        a5[1] = v26;
        a5[2] = v28;
        a5[3] = v33;
        a5[4] = v34;
        if ((*v57)(v12, 1, v13) == 1)
        {
          outlined destroy of TaskPriority?(v12, &_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
          v48 = v64;

          return specialized _NativeSet.extractSubset(using:count:)(v52, v50, v51, v48);
        }

        (*v56)(v66, v12, v13);
        v36 = v64;
        v37 = *(v64 + 40);
        lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject(&lazy protocol witness table cache variable for type Participant and conformance Participant, MEMORY[0x277CCB248]);
        v38 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v39 = -1 << *(v36 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v24 = *v65;
LABEL_4:
        result = (v24)(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject(&lazy protocol witness table cache variable for type Participant and conformance Participant, MEMORY[0x277CCB248]);
        v46 = dispatch thunk of static Equatable.== infix(_:_:)();
        v24 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      result = (v24)(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v22 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v51 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

{
  v37 = a2;
  v9 = type metadata accessor for Participant();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v44 = &v37 - v16;
  result = MEMORY[0x28223BE20](v15);
  v50 = &v37 - v18;
  v19 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v38 = a1;
  v39 = v19 - 1;
  v20 = *a5;
  v21 = a5[1];
  v22 = *(*a5 + 16);
  if (v21 == v22)
  {
LABEL_2:

    return specialized _NativeSet.extractSubset(using:count:)(v38, v37, v39, a3);
  }

  v42 = v10 + 32;
  v43 = v10;
  v45 = a3 + 56;
  v40 = a5;
  v48 = v10 + 16;
  v49 = (v10 + 8);
  while (v21 < v22)
  {
    v24 = *(v10 + 80);
    v47 = *(v10 + 72);
    v25 = v44;
    v46 = *(v10 + 16);
    v46(v44, v20 + ((v24 + 32) & ~v24) + v47 * v21, v9);
    a5[1] = v21 + 1;
    (*(v10 + 32))(v50, v25, v9);
    v26 = *(a3 + 40);
    lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject(&lazy protocol witness table cache variable for type Participant and conformance Participant, MEMORY[0x277CCB248]);
    v27 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v28 = -1 << *(a3 + 32);
    v29 = v27 & ~v28;
    v30 = v29 >> 6;
    v31 = 1 << v29;
    if (((1 << v29) & *(v45 + 8 * (v29 >> 6))) == 0)
    {
      v23 = *v49;
LABEL_6:
      result = (v23)(v50, v9);
      goto LABEL_7;
    }

    v41 = v49 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v32 = a3;
    v33 = ~v28;
    while (1)
    {
      v46(v14, *(v32 + 48) + v29 * v47, v9);
      lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject(&lazy protocol witness table cache variable for type Participant and conformance Participant, MEMORY[0x277CCB248]);
      v34 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = *v49;
      (*v49)(v14, v9);
      if (v34)
      {
        break;
      }

      v29 = (v29 + 1) & v33;
      v30 = v29 >> 6;
      v31 = 1 << v29;
      if (((1 << v29) & *(v45 + 8 * (v29 >> 6))) == 0)
      {
        a3 = v32;
        a5 = v40;
        goto LABEL_6;
      }
    }

    result = (v23)(v50, v9);
    v35 = v38[v30];
    v38[v30] = v35 & ~v31;
    if ((v35 & v31) == 0)
    {
      a3 = v32;
      a5 = v40;
LABEL_7:
      v10 = v43;
      goto LABEL_8;
    }

    v36 = v39 - 1;
    v10 = v43;
    if (__OFSUB__(v39, 1))
    {
      goto LABEL_21;
    }

    a3 = v32;
    a5 = v40;
    --v39;
    if (!v36)
    {
      return MEMORY[0x277D84FA0];
    }

LABEL_8:
    v20 = *a5;
    v21 = a5[1];
    v22 = *(*a5 + 16);
    if (v21 == v22)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}