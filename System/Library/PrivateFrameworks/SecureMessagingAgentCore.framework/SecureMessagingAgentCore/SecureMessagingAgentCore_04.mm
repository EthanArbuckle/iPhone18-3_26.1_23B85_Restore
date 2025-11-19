uint64_t protocol witness for MLS.Persister.loadRetryCount(forGroup:messageID:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 392);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = protocol witness for MLS.Persister.loadRetryCount(forGroup:messageID:clientIdentifier:) in conformance DaemonPersister;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for MLS.Persister.loadRetryCount(forGroup:messageID:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, char a2)
{
  v6 = *(*v3 + 16);
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    v10 = *(v7 + 8);

    return v10(a1, a2 & 1);
  }
}

uint64_t protocol witness for MLS.Persister.save(retryCount:forGroup:messageID:clientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 400);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t protocol witness for MLS.Persister.getSwiftMLSPersister(forClientIdentifier:) in conformance DaemonPersister(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 552);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v10(a1, a2);
}

uint64_t specialized SqliteStore.query<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x2822009F8](specialized SqliteStore.query<A>(_:), v2, 0);
}

{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x2822009F8](specialized SqliteStore.query<A>(_:), v2, 0);
}

{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x2822009F8](specialized SqliteStore.query<A>(_:), v2, 0);
}

{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x2822009F8](specialized SqliteStore.query<A>(_:), v2, 0);
}

uint64_t specialized SqliteStore.query<A>(_:)()
{
  v53 = v0;
  v1 = *(v0 + 80);
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = SecureMessagingClientQuery.queryStatement(_:)(v3, *(v0 + 64), *(v0 + 72));
    v5 = v4;
    if (v4)
    {
      v6 = sqlite3_step(v4);
      v7 = v6;
      if ((v6 & 0xFFFFFFFE) == 0x64)
      {
        v8 = MEMORY[0x277D84F90];
        if (v6 == 100)
        {
          do
          {
            if (one-time initialization token for converter != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v15 = static SecureMessagingClientQuery.converter;

            v16 = v15(v5);
            v18 = v17;
            v20 = v19;
            v22 = v21;

            if (v22)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
              }

              v24 = *(v8 + 2);
              v23 = *(v8 + 3);
              if (v24 >= v23 >> 1)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v8);
              }

              *(v8 + 2) = v24 + 1;
              v14 = &v8[32 * v24];
              *(v14 + 4) = v16;
              *(v14 + 5) = v18;
              *(v14 + 6) = v20;
              *(v14 + 7) = v22;
            }
          }

          while (sqlite3_step(v5) == 100);
        }

        sqlite3_finalize(v5);
        v9 = *(v0 + 8);

        return v9(v8);
      }

      v36 = *(v0 + 80);

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      v39 = os_log_type_enabled(v37, v38);
      v40 = *(v0 + 80);
      if (!v39)
      {

        goto LABEL_31;
      }

      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v51 = v42;
      *v41 = 136315138;
      v43 = sqlite3_errmsg(*(v1 + v2));

      if (v43)
      {
        v44 = String.init(cString:)();
        v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v51);

        *(v41 + 4) = v46;
        _os_log_impl(&dword_26524C000, v37, v38, "query-sqlite3_step: SQLite error %s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        MEMORY[0x2667577B0](v42, -1, -1);
        MEMORY[0x2667577B0](v41, -1, -1);

LABEL_31:
        v51 = 0x726F7272456C7173;
        v52 = 0xE90000000000003ALL;
        *(v0 + 40) = v7;
        v47 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266756A70](v47);

        v48 = v51;
        v49 = v52;
        lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
        swift_allocError();
        *v50 = 0;
        *(v50 + 8) = v48;
        *(v50 + 16) = v49;
        swift_willThrow();
        sqlite3_finalize(v5);
        goto LABEL_10;
      }

LABEL_33:
      __break(1u);
      return result;
    }

    v25 = *(v0 + 80);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 80);
    if (v28)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v51 = v31;
      *v30 = 136315138;
      v32 = sqlite3_errmsg(*(v1 + v2));

      if (!v32)
      {
        __break(1u);
        goto LABEL_33;
      }

      v33 = String.init(cString:)();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v51);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_26524C000, v26, v27, "query-queryStatement: SQLite error %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x2667577B0](v31, -1, -1);
      MEMORY[0x2667577B0](v30, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v12 = 2;
  }

  else
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v12 = 1;
  }

  *v11 = v12;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  swift_willThrow();
LABEL_10:
  v13 = *(v0 + 8);

  return v13();
}

{
  v56 = v0;
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = *(v0 + 80);
    v5 = *(v0 + 88);
    v6 = SecureMessagingGroupQuery.queryStatement(_:)(v3, *(v0 + 64), *(v0 + 72));
    v7 = v6;
    if (v6)
    {
      v8 = sqlite3_step(v6);
      v9 = v8;
      if ((v8 & 0xFFFFFFFE) == 0x64)
      {
        v10 = MEMORY[0x277D84F90];
        if (v8 == 100)
        {
          do
          {
            if (one-time initialization token for converter != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v19 = static SecureMessagingGroupQuery.converter;

            v19(&v48, v7);

            if (*(&v49 + 1))
            {
              v52 = v48;
              v53 = v49;
              v54 = v50;
              v55 = v51;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
              }

              v21 = *(v10 + 2);
              v20 = *(v10 + 3);
              if (v21 >= v20 >> 1)
              {
                v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v10);
              }

              *(v10 + 2) = v21 + 1;
              v15 = &v10[64 * v21];
              v16 = v52;
              v17 = v53;
              v18 = v55;
              *(v15 + 4) = v54;
              *(v15 + 5) = v18;
              *(v15 + 2) = v16;
              *(v15 + 3) = v17;
            }
          }

          while (sqlite3_step(v7) == 100);
        }

        sqlite3_finalize(v7);
        v44 = *(v0 + 8);

        return v44(v10);
      }

      v33 = *(v0 + 96);

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      v36 = os_log_type_enabled(v34, v35);
      v37 = *(v0 + 96);
      if (!v36)
      {

        goto LABEL_32;
      }

      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v52 = v39;
      *v38 = 136315138;
      v40 = sqlite3_errmsg(*(v1 + v2));

      if (v40)
      {
        v41 = String.init(cString:)();
        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v52);

        *(v38 + 4) = v43;
        _os_log_impl(&dword_26524C000, v34, v35, "query-sqlite3_step: SQLite error %s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v39);
        MEMORY[0x2667577B0](v39, -1, -1);
        MEMORY[0x2667577B0](v38, -1, -1);

LABEL_32:
        *&v52 = 0x726F7272456C7173;
        *(&v52 + 1) = 0xE90000000000003ALL;
        *(v0 + 40) = v9;
        v45 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266756A70](v45);

        v46 = v52;
        lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
        swift_allocError();
        *v47 = 0;
        *(v47 + 8) = v46;
        swift_willThrow();
        sqlite3_finalize(v7);
        goto LABEL_8;
      }

LABEL_34:
      __break(1u);
      return result;
    }

    v22 = *(v0 + 96);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 96);
    if (v25)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v52 = v28;
      *v27 = 136315138;
      v29 = sqlite3_errmsg(*(v1 + v2));

      if (!v29)
      {
        __break(1u);
        goto LABEL_34;
      }

      v30 = String.init(cString:)();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v52);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_26524C000, v23, v24, "query-queryStatement: SQLite error %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x2667577B0](v28, -1, -1);
      MEMORY[0x2667577B0](v27, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v12 = 2;
  }

  else
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v12 = 1;
  }

  *v11 = v12;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  swift_willThrow();
LABEL_8:
  v13 = *(v0 + 8);

  return v13();
}

{
  v54 = v0;
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = SwiftMLSGroupIDQuery.queryStatement(_:)(v3, *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));
    v5 = v4;
    if (v4)
    {
      v6 = sqlite3_step(v4);
      v7 = v6;
      if ((v6 & 0xFFFFFFFE) == 0x64)
      {
        v8 = MEMORY[0x277D84F90];
        if (v6 == 100)
        {
          do
          {
            if (one-time initialization token for converter != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v17 = static SwiftMLSGroupIDQuery.converter;

            v17(&v46, v5);

            if (*(&v47 + 1))
            {
              v50 = v46;
              v51 = v47;
              v52 = v48;
              v53 = v49;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
              }

              v19 = *(v8 + 2);
              v18 = *(v8 + 3);
              if (v19 >= v18 >> 1)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v8);
              }

              *(v8 + 2) = v19 + 1;
              v13 = &v8[64 * v19];
              v14 = v50;
              v15 = v51;
              v16 = v53;
              *(v13 + 4) = v52;
              *(v13 + 5) = v16;
              *(v13 + 2) = v14;
              *(v13 + 3) = v15;
            }
          }

          while (sqlite3_step(v5) == 100);
        }

        sqlite3_finalize(v5);
        v42 = *(v0 + 8);

        return v42(v8);
      }

      v31 = *(v0 + 96);

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      v34 = os_log_type_enabled(v32, v33);
      v35 = *(v0 + 96);
      if (!v34)
      {

        goto LABEL_32;
      }

      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&v50 = v37;
      *v36 = 136315138;
      v38 = sqlite3_errmsg(*(v1 + v2));

      if (v38)
      {
        v39 = String.init(cString:)();
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v50);

        *(v36 + 4) = v41;
        _os_log_impl(&dword_26524C000, v32, v33, "query-sqlite3_step: SQLite error %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v37);
        MEMORY[0x2667577B0](v37, -1, -1);
        MEMORY[0x2667577B0](v36, -1, -1);

LABEL_32:
        *&v50 = 0x726F7272456C7173;
        *(&v50 + 1) = 0xE90000000000003ALL;
        *(v0 + 40) = v7;
        v43 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266756A70](v43);

        v44 = v50;
        lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
        swift_allocError();
        *v45 = 0;
        *(v45 + 8) = v44;
        swift_willThrow();
        sqlite3_finalize(v5);
        goto LABEL_8;
      }

LABEL_34:
      __break(1u);
      return result;
    }

    v20 = *(v0 + 96);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 96);
    if (v23)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v50 = v26;
      *v25 = 136315138;
      v27 = sqlite3_errmsg(*(v1 + v2));

      if (!v27)
      {
        __break(1u);
        goto LABEL_34;
      }

      v28 = String.init(cString:)();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v50);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_26524C000, v21, v22, "query-queryStatement: SQLite error %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x2667577B0](v26, -1, -1);
      MEMORY[0x2667577B0](v25, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v10 = 2;
  }

  else
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v10 = 1;
  }

  *v9 = v10;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  swift_willThrow();
LABEL_8:
  v11 = *(v0 + 8);

  return v11();
}

{
  v56 = v0;
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = *(v0 + 80);
    v5 = *(v0 + 88);
    v6 = PendingGroupMemberQuery.queryStatement(_:)(v3, *(v0 + 64), *(v0 + 72));
    v7 = v6;
    if (v6)
    {
      v8 = sqlite3_step(v6);
      v9 = v8;
      if ((v8 & 0xFFFFFFFE) == 0x64)
      {
        if (v8 == 100)
        {
          v10 = MEMORY[0x277D84F90];
          do
          {
            if (one-time initialization token for converter != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v19 = static PendingGroupMemberQuery.converter;

            v19(&v48, v7);

            if (*(&v49 + 1))
            {
              v54 = v50;
              v55[0] = *v51;
              *(v55 + 13) = *&v51[13];
              v52 = v48;
              v53 = v49;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
              }

              v21 = *(v10 + 2);
              v20 = *(v10 + 3);
              if (v21 >= v20 >> 1)
              {
                v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v10);
              }

              *(v10 + 2) = v21 + 1;
              v15 = &v10[72 * v21];
              *(v15 + 2) = v52;
              v16 = v53;
              v17 = v54;
              v18 = v55[0];
              *(v15 + 93) = *(v55 + 13);
              *(v15 + 4) = v17;
              *(v15 + 5) = v18;
              *(v15 + 3) = v16;
            }
          }

          while (sqlite3_step(v7) == 100);
        }

        else
        {
          v10 = MEMORY[0x277D84F90];
        }

        sqlite3_finalize(v7);
        v44 = *(v0 + 8);

        return v44(v10);
      }

      v33 = *(v0 + 96);

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      v36 = os_log_type_enabled(v34, v35);
      v37 = *(v0 + 96);
      if (!v36)
      {

        goto LABEL_33;
      }

      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v52 = v39;
      *v38 = 136315138;
      v40 = sqlite3_errmsg(*(v1 + v2));

      if (v40)
      {
        v41 = String.init(cString:)();
        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v52);

        *(v38 + 4) = v43;
        _os_log_impl(&dword_26524C000, v34, v35, "query-sqlite3_step: SQLite error %s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v39);
        MEMORY[0x2667577B0](v39, -1, -1);
        MEMORY[0x2667577B0](v38, -1, -1);

LABEL_33:
        *&v52 = 0x726F7272456C7173;
        *(&v52 + 1) = 0xE90000000000003ALL;
        *(v0 + 40) = v9;
        v45 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266756A70](v45);

        v46 = v52;
        lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
        swift_allocError();
        *v47 = 0;
        *(v47 + 8) = v46;
        swift_willThrow();
        sqlite3_finalize(v7);
        goto LABEL_8;
      }

LABEL_35:
      __break(1u);
      return result;
    }

    v22 = *(v0 + 96);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 96);
    if (v25)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v52 = v28;
      *v27 = 136315138;
      v29 = sqlite3_errmsg(*(v1 + v2));

      if (!v29)
      {
        __break(1u);
        goto LABEL_35;
      }

      v30 = String.init(cString:)();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v52);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_26524C000, v23, v24, "query-queryStatement: SQLite error %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x2667577B0](v28, -1, -1);
      MEMORY[0x2667577B0](v27, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v12 = 2;
  }

  else
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v12 = 1;
  }

  *v11 = v12;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  swift_willThrow();
LABEL_8:
  v13 = *(v0 + 8);

  return v13();
}

{
  v56 = v0;
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = *(v0 + 80);
    v5 = *(v0 + 88);
    v6 = GroupMemberQuery.queryStatement(_:)(v3, *(v0 + 64), *(v0 + 72));
    v7 = v6;
    if (v6)
    {
      v8 = sqlite3_step(v6);
      v9 = v8;
      if ((v8 & 0xFFFFFFFE) == 0x64)
      {
        if (v8 == 100)
        {
          v10 = MEMORY[0x277D84F90];
          do
          {
            if (one-time initialization token for converter != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v19 = static GroupMemberQuery.converter;

            v19(&v48, v7);

            if (*(&v49 + 1))
            {
              v54 = v50;
              v55[0] = *v51;
              *(v55 + 13) = *&v51[13];
              v52 = v48;
              v53 = v49;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
              }

              v21 = *(v10 + 2);
              v20 = *(v10 + 3);
              if (v21 >= v20 >> 1)
              {
                v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v10);
              }

              *(v10 + 2) = v21 + 1;
              v15 = &v10[72 * v21];
              *(v15 + 2) = v52;
              v16 = v53;
              v17 = v54;
              v18 = v55[0];
              *(v15 + 93) = *(v55 + 13);
              *(v15 + 4) = v17;
              *(v15 + 5) = v18;
              *(v15 + 3) = v16;
            }
          }

          while (sqlite3_step(v7) == 100);
        }

        else
        {
          v10 = MEMORY[0x277D84F90];
        }

        sqlite3_finalize(v7);
        v44 = *(v0 + 8);

        return v44(v10);
      }

      v33 = *(v0 + 96);

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      v36 = os_log_type_enabled(v34, v35);
      v37 = *(v0 + 96);
      if (!v36)
      {

        goto LABEL_33;
      }

      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v52 = v39;
      *v38 = 136315138;
      v40 = sqlite3_errmsg(*(v1 + v2));

      if (v40)
      {
        v41 = String.init(cString:)();
        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v52);

        *(v38 + 4) = v43;
        _os_log_impl(&dword_26524C000, v34, v35, "query-sqlite3_step: SQLite error %s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v39);
        MEMORY[0x2667577B0](v39, -1, -1);
        MEMORY[0x2667577B0](v38, -1, -1);

LABEL_33:
        *&v52 = 0x726F7272456C7173;
        *(&v52 + 1) = 0xE90000000000003ALL;
        *(v0 + 40) = v9;
        v45 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266756A70](v45);

        v46 = v52;
        lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
        swift_allocError();
        *v47 = 0;
        *(v47 + 8) = v46;
        swift_willThrow();
        sqlite3_finalize(v7);
        goto LABEL_8;
      }

LABEL_35:
      __break(1u);
      return result;
    }

    v22 = *(v0 + 96);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 96);
    if (v25)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v52 = v28;
      *v27 = 136315138;
      v29 = sqlite3_errmsg(*(v1 + v2));

      if (!v29)
      {
        __break(1u);
        goto LABEL_35;
      }

      v30 = String.init(cString:)();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v52);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_26524C000, v23, v24, "query-queryStatement: SQLite error %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x2667577B0](v28, -1, -1);
      MEMORY[0x2667577B0](v27, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v12 = 2;
  }

  else
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v12 = 1;
  }

  *v11 = v12;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  swift_willThrow();
LABEL_8:
  v13 = *(v0 + 8);

  return v13();
}

{
  v55 = v0;
  v1 = *(v0 + 72);
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = *(v0 + 64);
    v5 = FailureToDecryptRetryQuery.queryStatement(_:)(v3);
    v6 = v5;
    if (v5)
    {
      v7 = sqlite3_step(v5);
      v8 = v7;
      if ((v7 & 0xFFFFFFFE) == 0x64)
      {
        v9 = MEMORY[0x277D84F90];
        if (v7 == 100)
        {
          do
          {
            if (one-time initialization token for converter != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v18 = static FailureToDecryptRetryQuery.converter;

            v18(&v47, v6);

            if (*(&v48 + 1))
            {
              v51 = v47;
              v52 = v48;
              v53 = v49;
              v54 = v50;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
              }

              v20 = *(v9 + 2);
              v19 = *(v9 + 3);
              if (v20 >= v19 >> 1)
              {
                v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v9);
              }

              *(v9 + 2) = v20 + 1;
              v14 = &v9[64 * v20];
              v15 = v51;
              v16 = v52;
              v17 = v54;
              *(v14 + 4) = v53;
              *(v14 + 5) = v17;
              *(v14 + 2) = v15;
              *(v14 + 3) = v16;
            }
          }

          while (sqlite3_step(v6) == 100);
        }

        sqlite3_finalize(v6);
        v43 = *(v0 + 8);

        return v43(v9);
      }

      v32 = *(v0 + 72);

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      v35 = os_log_type_enabled(v33, v34);
      v36 = *(v0 + 72);
      if (!v35)
      {

        goto LABEL_32;
      }

      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v51 = v38;
      *v37 = 136315138;
      v39 = sqlite3_errmsg(*(v1 + v2));

      if (v39)
      {
        v40 = String.init(cString:)();
        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v51);

        *(v37 + 4) = v42;
        _os_log_impl(&dword_26524C000, v33, v34, "query-sqlite3_step: SQLite error %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v38);
        MEMORY[0x2667577B0](v38, -1, -1);
        MEMORY[0x2667577B0](v37, -1, -1);

LABEL_32:
        *&v51 = 0x726F7272456C7173;
        *(&v51 + 1) = 0xE90000000000003ALL;
        *(v0 + 40) = v8;
        v44 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266756A70](v44);

        v45 = v51;
        lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
        swift_allocError();
        *v46 = 0;
        *(v46 + 8) = v45;
        swift_willThrow();
        sqlite3_finalize(v6);
        goto LABEL_8;
      }

LABEL_34:
      __break(1u);
      return result;
    }

    v21 = *(v0 + 72);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 72);
    if (v24)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v51 = v27;
      *v26 = 136315138;
      v28 = sqlite3_errmsg(*(v1 + v2));

      if (!v28)
      {
        __break(1u);
        goto LABEL_34;
      }

      v29 = String.init(cString:)();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v51);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_26524C000, v22, v23, "query-queryStatement: SQLite error %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x2667577B0](v27, -1, -1);
      MEMORY[0x2667577B0](v26, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v11 = 2;
  }

  else
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v11 = 1;
  }

  *v10 = v11;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  swift_willThrow();
LABEL_8:
  v12 = *(v0 + 8);

  return v12();
}

{
  v56 = v0;
  v1 = *(v0 + 152);
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = *(v0 + 136);
    v5 = *(v0 + 144);
    v6 = KeyUpdateQuery.queryStatement(_:)(v3, *(v0 + 120), *(v0 + 128));
    v7 = v6;
    if (v6)
    {
      v8 = sqlite3_step(v6);
      v9 = v8;
      if ((v8 & 0xFFFFFFFE) == 0x64)
      {
        v10 = MEMORY[0x277D84F90];
        if (v8 == 100)
        {
          do
          {
            if (one-time initialization token for converter != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v17 = static KeyUpdateQuery.converter;

            v17(v7);
            v18 = *(v0 + 16);
            v19 = *(v0 + 24);
            v21 = *(v0 + 32);
            v20 = *(v0 + 40);
            v23 = *(v0 + 48);
            v22 = *(v0 + 56);
            v53 = *(v0 + 64);

            if (v20)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
              }

              v25 = *(v10 + 2);
              v24 = *(v10 + 3);
              if (v25 >= v24 >> 1)
              {
                v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v10);
              }

              *(v10 + 2) = v25 + 1;
              v16 = &v10[56 * v25];
              *(v16 + 4) = v18;
              *(v16 + 5) = v19;
              *(v16 + 6) = v21;
              *(v16 + 7) = v20;
              *(v16 + 8) = v23;
              *(v16 + 9) = v22;
              v16[80] = v53 & 1;
            }
          }

          while (sqlite3_step(v7) == 100);
        }

        sqlite3_finalize(v7);
        v11 = *(v0 + 8);

        return v11(v10);
      }

      v37 = *(v0 + 152);

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      v40 = os_log_type_enabled(v38, v39);
      v41 = *(v0 + 152);
      if (!v40)
      {

        goto LABEL_31;
      }

      v42 = v7;
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v54 = v44;
      *v43 = 136315138;
      v45 = sqlite3_errmsg(*(v1 + v2));

      if (v45)
      {
        v46 = String.init(cString:)();
        v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v54);

        *(v43 + 4) = v48;
        _os_log_impl(&dword_26524C000, v38, v39, "query-sqlite3_step: SQLite error %s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v44);
        MEMORY[0x2667577B0](v44, -1, -1);
        MEMORY[0x2667577B0](v43, -1, -1);

        v7 = v42;
LABEL_31:
        v54 = 0x726F7272456C7173;
        v55 = 0xE90000000000003ALL;
        *(v0 + 96) = v9;
        v49 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266756A70](v49);

        v50 = v54;
        v51 = v55;
        lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
        swift_allocError();
        *v52 = 0;
        *(v52 + 8) = v50;
        *(v52 + 16) = v51;
        swift_willThrow();
        sqlite3_finalize(v7);
        goto LABEL_10;
      }

LABEL_33:
      __break(1u);
      return result;
    }

    v26 = *(v0 + 152);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 152);
    if (v29)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v54 = v32;
      *v31 = 136315138;
      v33 = sqlite3_errmsg(*(v1 + v2));

      if (!v33)
      {
        __break(1u);
        goto LABEL_33;
      }

      v34 = String.init(cString:)();
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v54);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_26524C000, v27, v28, "query-queryStatement: SQLite error %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x2667577B0](v32, -1, -1);
      MEMORY[0x2667577B0](v31, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v14 = 2;
  }

  else
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v14 = 1;
  }

  *v13 = v14;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  swift_willThrow();
LABEL_10:
  v15 = *(v0 + 8);

  return v15();
}

{
  v51 = v0;
  v1 = *(v0 + 80);
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = IncomingEventQuery.queryStatement(_:)(v3, *(v0 + 64), *(v0 + 72));
    v5 = v4;
    if (v4)
    {
      v6 = sqlite3_step(v4);
      v7 = v6;
      if ((v6 & 0xFFFFFFFE) == 0x64)
      {
        v8 = MEMORY[0x277D84F90];
        if (v6 == 100)
        {
          do
          {
            if (one-time initialization token for converter != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v17 = static IncomingEventQuery.converter;

            v17(v46, v5);

            if (*(&v46[0] + 1) >> 60 != 15)
            {
              v47 = v46[0];
              v48 = v46[1];
              v49 = v46[2];
              v50 = v46[3];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
              }

              v19 = *(v8 + 2);
              v18 = *(v8 + 3);
              if (v19 >= v18 >> 1)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v8);
              }

              *(v8 + 2) = v19 + 1;
              v13 = &v8[64 * v19];
              v14 = v47;
              v15 = v48;
              v16 = v50;
              *(v13 + 4) = v49;
              *(v13 + 5) = v16;
              *(v13 + 2) = v14;
              *(v13 + 3) = v15;
            }
          }

          while (sqlite3_step(v5) == 100);
        }

        sqlite3_finalize(v5);
        v42 = *(v0 + 8);

        return v42(v8);
      }

      v31 = *(v0 + 80);

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      v34 = os_log_type_enabled(v32, v33);
      v35 = *(v0 + 80);
      if (!v34)
      {

        goto LABEL_32;
      }

      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&v47 = v37;
      *v36 = 136315138;
      v38 = sqlite3_errmsg(*(v1 + v2));

      if (v38)
      {
        v39 = String.init(cString:)();
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v47);

        *(v36 + 4) = v41;
        _os_log_impl(&dword_26524C000, v32, v33, "query-sqlite3_step: SQLite error %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v37);
        MEMORY[0x2667577B0](v37, -1, -1);
        MEMORY[0x2667577B0](v36, -1, -1);

LABEL_32:
        *&v47 = 0x726F7272456C7173;
        *(&v47 + 1) = 0xE90000000000003ALL;
        *(v0 + 40) = v7;
        v43 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266756A70](v43);

        v44 = v47;
        lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
        swift_allocError();
        *v45 = 0;
        *(v45 + 8) = v44;
        swift_willThrow();
        sqlite3_finalize(v5);
        goto LABEL_8;
      }

LABEL_34:
      __break(1u);
      return result;
    }

    v20 = *(v0 + 80);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 80);
    if (v23)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v47 = v26;
      *v25 = 136315138;
      v27 = sqlite3_errmsg(*(v1 + v2));

      if (!v27)
      {
        __break(1u);
        goto LABEL_34;
      }

      v28 = String.init(cString:)();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v47);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_26524C000, v21, v22, "query-queryStatement: SQLite error %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x2667577B0](v26, -1, -1);
      MEMORY[0x2667577B0](v25, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v10 = 2;
  }

  else
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v10 = 1;
  }

  *v9 = v10;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  swift_willThrow();
LABEL_8:
  v11 = *(v0 + 8);

  return v11();
}

{
  v54 = v0;
  v1 = *(v0 + 80);
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = OutgoingEventQuery.queryStatement(_:)(v3, *(v0 + 64), *(v0 + 72));
    v5 = v4;
    if (v4)
    {
      v6 = sqlite3_step(v4);
      v7 = v6;
      if ((v6 & 0xFFFFFFFE) == 0x64)
      {
        v8 = MEMORY[0x277D84F90];
        if (v6 == 100)
        {
          do
          {
            if (one-time initialization token for converter != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v18 = static OutgoingEventQuery.converter;

            v18(v47, v5);

            if (*(&v47[0] + 1) >> 60 != 15)
            {
              v50 = v47[2];
              v51 = v47[3];
              v52 = v47[4];
              v53 = v47[5];
              v48 = v47[0];
              v49 = v47[1];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
              }

              v20 = *(v8 + 2);
              v19 = *(v8 + 3);
              if (v20 >= v19 >> 1)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v8);
              }

              *(v8 + 2) = v20 + 1;
              v13 = &v8[96 * v20];
              v14 = v49;
              *(v13 + 2) = v48;
              *(v13 + 3) = v14;
              v15 = v50;
              v16 = v51;
              v17 = v53;
              *(v13 + 6) = v52;
              *(v13 + 7) = v17;
              *(v13 + 4) = v15;
              *(v13 + 5) = v16;
            }
          }

          while (sqlite3_step(v5) == 100);
        }

        sqlite3_finalize(v5);
        v43 = *(v0 + 8);

        return v43(v8);
      }

      v32 = *(v0 + 80);

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      v35 = os_log_type_enabled(v33, v34);
      v36 = *(v0 + 80);
      if (!v35)
      {

        goto LABEL_32;
      }

      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v48 = v38;
      *v37 = 136315138;
      v39 = sqlite3_errmsg(*(v1 + v2));

      if (v39)
      {
        v40 = String.init(cString:)();
        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v48);

        *(v37 + 4) = v42;
        _os_log_impl(&dword_26524C000, v33, v34, "query-sqlite3_step: SQLite error %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v38);
        MEMORY[0x2667577B0](v38, -1, -1);
        MEMORY[0x2667577B0](v37, -1, -1);

LABEL_32:
        *&v48 = 0x726F7272456C7173;
        *(&v48 + 1) = 0xE90000000000003ALL;
        *(v0 + 40) = v7;
        v44 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266756A70](v44);

        v45 = v48;
        lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
        swift_allocError();
        *v46 = 0;
        *(v46 + 8) = v45;
        swift_willThrow();
        sqlite3_finalize(v5);
        goto LABEL_8;
      }

LABEL_34:
      __break(1u);
      return result;
    }

    v21 = *(v0 + 80);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 80);
    if (v24)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v48 = v27;
      *v26 = 136315138;
      v28 = sqlite3_errmsg(*(v1 + v2));

      if (!v28)
      {
        __break(1u);
        goto LABEL_34;
      }

      v29 = String.init(cString:)();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v48);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_26524C000, v22, v23, "query-queryStatement: SQLite error %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x2667577B0](v27, -1, -1);
      MEMORY[0x2667577B0](v26, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v10 = 2;
  }

  else
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v10 = 1;
  }

  *v9 = v10;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  swift_willThrow();
LABEL_8:
  v11 = *(v0 + 8);

  return v11();
}

{
  v55 = v0;
  v1 = *(v0 + 80);
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = *(v0 + 64);
    v5 = *(v0 + 72);
    v6 = ClientStateQuery.queryStatement(_:)(v3);
    v7 = v6;
    if (v6)
    {
      v8 = sqlite3_step(v6);
      v9 = v8;
      if ((v8 & 0xFFFFFFFE) == 0x64)
      {
        v10 = MEMORY[0x277D84F90];
        if (v8 == 100)
        {
          do
          {
            if (one-time initialization token for converter != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v17 = static ClientStateQuery.converter;

            v18 = v17(v7);
            v20 = v19;
            v22 = v21;
            v24 = v23;

            if (v20)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
              }

              v26 = *(v10 + 2);
              v25 = *(v10 + 3);
              if (v26 >= v25 >> 1)
              {
                v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v10);
              }

              *(v10 + 2) = v26 + 1;
              v16 = &v10[32 * v26];
              *(v16 + 4) = v18;
              *(v16 + 5) = v20;
              *(v16 + 6) = v22;
              *(v16 + 7) = v24;
            }
          }

          while (sqlite3_step(v7) == 100);
        }

        sqlite3_finalize(v7);
        v11 = *(v0 + 8);

        return v11(v10);
      }

      v38 = *(v0 + 80);

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();
      v41 = os_log_type_enabled(v39, v40);
      v42 = *(v0 + 80);
      if (!v41)
      {

        goto LABEL_31;
      }

      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v53 = v44;
      *v43 = 136315138;
      v45 = sqlite3_errmsg(*(v1 + v2));

      if (v45)
      {
        v46 = String.init(cString:)();
        v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v53);

        *(v43 + 4) = v48;
        _os_log_impl(&dword_26524C000, v39, v40, "query-sqlite3_step: SQLite error %s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v44);
        MEMORY[0x2667577B0](v44, -1, -1);
        MEMORY[0x2667577B0](v43, -1, -1);

LABEL_31:
        v53 = 0x726F7272456C7173;
        v54 = 0xE90000000000003ALL;
        *(v0 + 40) = v9;
        v49 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266756A70](v49);

        v50 = v53;
        v51 = v54;
        lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
        swift_allocError();
        *v52 = 0;
        *(v52 + 8) = v50;
        *(v52 + 16) = v51;
        swift_willThrow();
        sqlite3_finalize(v7);
        goto LABEL_10;
      }

LABEL_33:
      __break(1u);
      return result;
    }

    v27 = *(v0 + 80);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 80);
    if (v30)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v53 = v33;
      *v32 = 136315138;
      v34 = sqlite3_errmsg(*(v1 + v2));

      if (!v34)
      {
        __break(1u);
        goto LABEL_33;
      }

      v35 = String.init(cString:)();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v53);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_26524C000, v28, v29, "query-queryStatement: SQLite error %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x2667577B0](v33, -1, -1);
      MEMORY[0x2667577B0](v32, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v14 = 2;
  }

  else
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v14 = 1;
  }

  *v13 = v14;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  swift_willThrow();
LABEL_10:
  v15 = *(v0 + 8);

  return v15();
}

{
  v50 = v0;
  v1 = *(v0 + 144);
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = GroupStateQuery.queryStatement(_:)(v3, *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));
    v5 = v4;
    if (v4)
    {
      v6 = sqlite3_step(v4);
      v7 = v6;
      if ((v6 & 0xFFFFFFFE) == 0x64)
      {
        v8 = MEMORY[0x277D84F90];
        if (v6 == 100)
        {
          do
          {
            if (one-time initialization token for converter != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v14 = static GroupStateQuery.converter;

            v14(v5);
            v46 = *(v0 + 32);
            v47 = *(v0 + 16);
            v15 = *(v0 + 48);
            v16 = *(v0 + 56);

            if (*(&v47 + 1) >> 60 != 15)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
              }

              v18 = *(v8 + 2);
              v17 = *(v8 + 3);
              if (v18 >= v17 >> 1)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v8);
              }

              *(v8 + 2) = v18 + 1;
              v13 = &v8[48 * v18];
              *(v13 + 2) = v47;
              *(v13 + 3) = v46;
              *(v13 + 8) = v15;
              *(v13 + 9) = v16;
            }
          }

          while (sqlite3_step(v5) == 100);
        }

        sqlite3_finalize(v5);
        v41 = *(v0 + 8);

        return v41(v8);
      }

      v30 = *(v0 + 144);

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      v33 = os_log_type_enabled(v31, v32);
      v34 = *(v0 + 144);
      if (!v33)
      {

        goto LABEL_32;
      }

      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v48 = v36;
      *v35 = 136315138;
      v37 = sqlite3_errmsg(*(v1 + v2));

      if (v37)
      {
        v38 = String.init(cString:)();
        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v48);

        *(v35 + 4) = v40;
        _os_log_impl(&dword_26524C000, v31, v32, "query-sqlite3_step: SQLite error %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v36);
        MEMORY[0x2667577B0](v36, -1, -1);
        MEMORY[0x2667577B0](v35, -1, -1);

LABEL_32:
        v48 = 0x726F7272456C7173;
        v49 = 0xE90000000000003ALL;
        *(v0 + 88) = v7;
        v42 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266756A70](v42);

        v43 = v48;
        v44 = v49;
        lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
        swift_allocError();
        *v45 = 0;
        *(v45 + 8) = v43;
        *(v45 + 16) = v44;
        swift_willThrow();
        sqlite3_finalize(v5);
        goto LABEL_8;
      }

LABEL_34:
      __break(1u);
      return result;
    }

    v19 = *(v0 + 144);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 144);
    if (v22)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v48 = v25;
      *v24 = 136315138;
      v26 = sqlite3_errmsg(*(v1 + v2));

      if (!v26)
      {
        __break(1u);
        goto LABEL_34;
      }

      v27 = String.init(cString:)();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v48);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_26524C000, v20, v21, "query-queryStatement: SQLite error %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x2667577B0](v25, -1, -1);
      MEMORY[0x2667577B0](v24, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v10 = 2;
  }

  else
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v10 = 1;
  }

  *v9 = v10;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  swift_willThrow();
LABEL_8:
  v11 = *(v0 + 8);

  return v11();
}

{
  v53 = v0;
  v1 = *(v0 + 72);
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = *(v0 + 64);
    v5 = EpochQuery.queryStatement(_:)(v3);
    v6 = v5;
    if (v5)
    {
      v7 = sqlite3_step(v5);
      v8 = v7;
      if ((v7 & 0xFFFFFFFE) == 0x64)
      {
        v9 = MEMORY[0x277D84F90];
        if (v7 == 100)
        {
          do
          {
            if (one-time initialization token for converter != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v18 = static EpochQuery.converter;

            v18(v47, v6);

            if (*(&v47[0] + 1) >> 60 != 15)
            {
              v50 = v47[2];
              v51 = v47[3];
              v52 = v47[4];
              v48 = v47[0];
              v49 = v47[1];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
              }

              v20 = *(v9 + 2);
              v19 = *(v9 + 3);
              if (v20 >= v19 >> 1)
              {
                v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v9);
              }

              *(v9 + 2) = v20 + 1;
              v14 = &v9[80 * v20];
              *(v14 + 2) = v48;
              v15 = v49;
              v16 = v50;
              v17 = v52;
              *(v14 + 5) = v51;
              *(v14 + 6) = v17;
              *(v14 + 3) = v15;
              *(v14 + 4) = v16;
            }
          }

          while (sqlite3_step(v6) == 100);
        }

        sqlite3_finalize(v6);
        v43 = *(v0 + 8);

        return v43(v9);
      }

      v32 = *(v0 + 72);

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      v35 = os_log_type_enabled(v33, v34);
      v36 = *(v0 + 72);
      if (!v35)
      {

        goto LABEL_32;
      }

      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v48 = v38;
      *v37 = 136315138;
      v39 = sqlite3_errmsg(*(v1 + v2));

      if (v39)
      {
        v40 = String.init(cString:)();
        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v48);

        *(v37 + 4) = v42;
        _os_log_impl(&dword_26524C000, v33, v34, "query-sqlite3_step: SQLite error %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v38);
        MEMORY[0x2667577B0](v38, -1, -1);
        MEMORY[0x2667577B0](v37, -1, -1);

LABEL_32:
        *&v48 = 0x726F7272456C7173;
        *(&v48 + 1) = 0xE90000000000003ALL;
        *(v0 + 40) = v8;
        v44 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266756A70](v44);

        v45 = v48;
        lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
        swift_allocError();
        *v46 = 0;
        *(v46 + 8) = v45;
        swift_willThrow();
        sqlite3_finalize(v6);
        goto LABEL_8;
      }

LABEL_34:
      __break(1u);
      return result;
    }

    v21 = *(v0 + 72);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 72);
    if (v24)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v48 = v27;
      *v26 = 136315138;
      v28 = sqlite3_errmsg(*(v1 + v2));

      if (!v28)
      {
        __break(1u);
        goto LABEL_34;
      }

      v29 = String.init(cString:)();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v48);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_26524C000, v22, v23, "query-queryStatement: SQLite error %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x2667577B0](v27, -1, -1);
      MEMORY[0x2667577B0](v26, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v11 = 2;
  }

  else
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v11 = 1;
  }

  *v10 = v11;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  swift_willThrow();
LABEL_8:
  v12 = *(v0 + 8);

  return v12();
}

{
  *(v1 + 64) = v0;
  return MEMORY[0x2822009F8](specialized SqliteStore.query<A>(_:), v0, 0);
}

{
  v49 = v0;
  v1 = *(v0 + 64);
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = specialized OutgoingClientWithEventQuery.queryStatement(_:)(v3);
    v5 = v4;
    if (v4)
    {
      v6 = sqlite3_step(v4);
      v7 = v6;
      if ((v6 & 0xFFFFFFFE) == 0x64)
      {
        v8 = MEMORY[0x277D84F90];
        if (v6 == 100)
        {
          do
          {
            swift_beginAccess();
            v14 = static OutgoingClientWithEventQuery.converter;

            v15 = v14(v5);
            v17 = v16;

            if (v17 >> 60 != 15)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
              }

              v19 = *(v8 + 2);
              v18 = *(v8 + 3);
              if (v19 >= v18 >> 1)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v8);
              }

              *(v8 + 2) = v19 + 1;
              v13 = &v8[16 * v19];
              *(v13 + 4) = v15;
              *(v13 + 5) = v17;
            }
          }

          while (sqlite3_step(v5) == 100);
        }

        sqlite3_finalize(v5);
        v42 = *(v0 + 8);

        return v42(v8);
      }

      v31 = *(v0 + 64);

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      v34 = os_log_type_enabled(v32, v33);
      v35 = *(v0 + 64);
      if (!v34)
      {

        goto LABEL_30;
      }

      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v47 = v37;
      *v36 = 136315138;
      v38 = sqlite3_errmsg(*(v1 + v2));

      if (v38)
      {
        v39 = String.init(cString:)();
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v47);

        *(v36 + 4) = v41;
        _os_log_impl(&dword_26524C000, v32, v33, "query-sqlite3_step: SQLite error %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v37);
        MEMORY[0x2667577B0](v37, -1, -1);
        MEMORY[0x2667577B0](v36, -1, -1);

LABEL_30:
        v47 = 0x726F7272456C7173;
        v48 = 0xE90000000000003ALL;
        *(v0 + 40) = v7;
        v43 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266756A70](v43);

        v44 = v47;
        v45 = v48;
        lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
        swift_allocError();
        *v46 = 0;
        *(v46 + 8) = v44;
        *(v46 + 16) = v45;
        swift_willThrow();
        sqlite3_finalize(v5);
        goto LABEL_8;
      }

LABEL_32:
      __break(1u);
      return result;
    }

    v20 = *(v0 + 64);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 64);
    if (v23)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v47 = v26;
      *v25 = 136315138;
      v27 = sqlite3_errmsg(*(v1 + v2));

      if (!v27)
      {
        __break(1u);
        goto LABEL_32;
      }

      v28 = String.init(cString:)();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v47);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_26524C000, v21, v22, "query-queryStatement: SQLite error %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x2667577B0](v26, -1, -1);
      MEMORY[0x2667577B0](v25, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v10 = 2;
  }

  else
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v10 = 1;
  }

  *v9 = v10;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  swift_willThrow();
LABEL_8:
  v11 = *(v0 + 8);

  return v11();
}

{
  *(v1 + 64) = v0;
  return MEMORY[0x2822009F8](specialized SqliteStore.query<A>(_:), v0, 0);
}

{
  v49 = v0;
  v1 = *(v0 + 64);
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = specialized IncomingClientWithEventQuery.queryStatement(_:)(v3);
    v5 = v4;
    if (v4)
    {
      v6 = sqlite3_step(v4);
      v7 = v6;
      if ((v6 & 0xFFFFFFFE) == 0x64)
      {
        v8 = MEMORY[0x277D84F90];
        if (v6 == 100)
        {
          do
          {
            swift_beginAccess();
            v14 = static IncomingClientWithEventQuery.converter;

            v15 = v14(v5);
            v17 = v16;

            if (v17 >> 60 != 15)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
              }

              v19 = *(v8 + 2);
              v18 = *(v8 + 3);
              if (v19 >= v18 >> 1)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v8);
              }

              *(v8 + 2) = v19 + 1;
              v13 = &v8[16 * v19];
              *(v13 + 4) = v15;
              *(v13 + 5) = v17;
            }
          }

          while (sqlite3_step(v5) == 100);
        }

        sqlite3_finalize(v5);
        v42 = *(v0 + 8);

        return v42(v8);
      }

      v31 = *(v0 + 64);

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      v34 = os_log_type_enabled(v32, v33);
      v35 = *(v0 + 64);
      if (!v34)
      {

        goto LABEL_30;
      }

      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v47 = v37;
      *v36 = 136315138;
      v38 = sqlite3_errmsg(*(v1 + v2));

      if (v38)
      {
        v39 = String.init(cString:)();
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v47);

        *(v36 + 4) = v41;
        _os_log_impl(&dword_26524C000, v32, v33, "query-sqlite3_step: SQLite error %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v37);
        MEMORY[0x2667577B0](v37, -1, -1);
        MEMORY[0x2667577B0](v36, -1, -1);

LABEL_30:
        v47 = 0x726F7272456C7173;
        v48 = 0xE90000000000003ALL;
        *(v0 + 40) = v7;
        v43 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266756A70](v43);

        v44 = v47;
        v45 = v48;
        lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
        swift_allocError();
        *v46 = 0;
        *(v46 + 8) = v44;
        *(v46 + 16) = v45;
        swift_willThrow();
        sqlite3_finalize(v5);
        goto LABEL_8;
      }

LABEL_32:
      __break(1u);
      return result;
    }

    v20 = *(v0 + 64);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 64);
    if (v23)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v47 = v26;
      *v25 = 136315138;
      v27 = sqlite3_errmsg(*(v1 + v2));

      if (!v27)
      {
        __break(1u);
        goto LABEL_32;
      }

      v28 = String.init(cString:)();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v47);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_26524C000, v21, v22, "query-queryStatement: SQLite error %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x2667577B0](v26, -1, -1);
      MEMORY[0x2667577B0](v25, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v10 = 2;
  }

  else
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v10 = 1;
  }

  *v9 = v10;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  swift_willThrow();
LABEL_8:
  v11 = *(v0 + 8);

  return v11();
}

{
  *(v1 + 240) = v0;
  return MEMORY[0x2822009F8](specialized SqliteStore.query<A>(_:), v0, 0);
}

{
  v76 = v0;
  v1 = *(v0 + 240);
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = specialized StateMachineQuery.queryStatement(_:)(v3);
    v5 = v4;
    if (v4)
    {
      v6 = sqlite3_step(v4);
      v7 = v6;
      if ((v6 & 0xFFFFFFFE) == 0x64)
      {
        if (v6 == 100)
        {
          v8 = MEMORY[0x277D84F90];
          do
          {
            if (one-time initialization token for converter != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v22 = static StateMachineQuery.converter;

            v22(&v56, v5);

            v23 = v65[0];
            *(v0 + 144) = v64;
            *(v0 + 160) = v23;
            *(v0 + 169) = *(v65 + 9);
            v24 = v61;
            *(v0 + 80) = v60;
            *(v0 + 96) = v24;
            v25 = v63;
            *(v0 + 112) = v62;
            *(v0 + 128) = v25;
            v26 = v57;
            *(v0 + 16) = v56;
            *(v0 + 32) = v26;
            v27 = v59;
            *(v0 + 48) = v58;
            *(v0 + 64) = v27;
            if (_s24SecureMessagingAgentCore17StateMachineModelVSgWOg(v0 + 16) != 1)
            {
              v74 = v64;
              v75[0] = v65[0];
              *(v75 + 9) = *(v65 + 9);
              v70 = v60;
              v71 = v61;
              v72 = v62;
              v73 = v63;
              v66 = v56;
              v67 = v57;
              v68 = v58;
              v69 = v59;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
              }

              v29 = *(v8 + 2);
              v28 = *(v8 + 3);
              if (v29 >= v28 >> 1)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v8);
              }

              *(v8 + 2) = v29 + 1;
              v13 = &v8[176 * v29];
              v14 = v66;
              v15 = v68;
              *(v13 + 3) = v67;
              *(v13 + 4) = v15;
              *(v13 + 2) = v14;
              v16 = v69;
              v17 = v70;
              v18 = v72;
              *(v13 + 7) = v71;
              *(v13 + 8) = v18;
              *(v13 + 5) = v16;
              *(v13 + 6) = v17;
              v19 = v73;
              v20 = v74;
              v21 = v75[0];
              *(v13 + 185) = *(v75 + 9);
              *(v13 + 10) = v20;
              *(v13 + 11) = v21;
              *(v13 + 9) = v19;
            }
          }

          while (sqlite3_step(v5) == 100);
        }

        else
        {
          v8 = MEMORY[0x277D84F90];
        }

        sqlite3_finalize(v5);
        v52 = *(v0 + 8);

        return v52(v8);
      }

      v41 = *(v0 + 240);

      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();
      v44 = os_log_type_enabled(v42, v43);
      v45 = *(v0 + 240);
      if (!v44)
      {

        goto LABEL_33;
      }

      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v66 = v47;
      *v46 = 136315138;
      v48 = sqlite3_errmsg(*(v1 + v2));

      if (v48)
      {
        v49 = String.init(cString:)();
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v66);

        *(v46 + 4) = v51;
        _os_log_impl(&dword_26524C000, v42, v43, "query-sqlite3_step: SQLite error %s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
        MEMORY[0x2667577B0](v47, -1, -1);
        MEMORY[0x2667577B0](v46, -1, -1);

LABEL_33:
        *&v66 = 0x726F7272456C7173;
        *(&v66 + 1) = 0xE90000000000003ALL;
        *(v0 + 216) = v7;
        v53 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266756A70](v53);

        v54 = v66;
        lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
        swift_allocError();
        *v55 = 0;
        *(v55 + 8) = v54;
        swift_willThrow();
        sqlite3_finalize(v5);
        goto LABEL_8;
      }

LABEL_35:
      __break(1u);
      return result;
    }

    v30 = *(v0 + 240);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 240);
    if (v33)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&v66 = v36;
      *v35 = 136315138;
      v37 = sqlite3_errmsg(*(v1 + v2));

      if (!v37)
      {
        __break(1u);
        goto LABEL_35;
      }

      v38 = String.init(cString:)();
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v66);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_26524C000, v31, v32, "query-queryStatement: SQLite error %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x2667577B0](v36, -1, -1);
      MEMORY[0x2667577B0](v35, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v10 = 2;
  }

  else
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v10 = 1;
  }

  *v9 = v10;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  swift_willThrow();
LABEL_8:
  v11 = *(v0 + 8);

  return v11();
}

uint64_t specialized SqliteStore.query<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return MEMORY[0x2822009F8](specialized SqliteStore.query<A>(_:), v4, 0);
}

{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return MEMORY[0x2822009F8](specialized SqliteStore.query<A>(_:), v4, 0);
}

{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return MEMORY[0x2822009F8](specialized SqliteStore.query<A>(_:), v4, 0);
}

{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return MEMORY[0x2822009F8](specialized SqliteStore.query<A>(_:), v4, 0);
}

{
  v5[18] = a4;
  v5[19] = v4;
  v5[16] = a2;
  v5[17] = a3;
  v5[15] = a1;
  return MEMORY[0x2822009F8](specialized SqliteStore.query<A>(_:), v4, 0);
}

{
  v5[17] = a4;
  v5[18] = v4;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  return MEMORY[0x2822009F8](specialized SqliteStore.query<A>(_:), v4, 0);
}

uint64_t specialized SqliteStore.query<A>(_:)(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](specialized SqliteStore.query<A>(_:), v1, 0);
}

{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](specialized SqliteStore.query<A>(_:), v1, 0);
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

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO15PersistedMemberVGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO15PersistedMemberVGMR, MEMORY[0x277D4CD38]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVGMR, MEMORY[0x277D4D000]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO8EpochKeyVGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO8EpochKeyVGMR, MEMORY[0x277D4D200]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO6RecordVGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO6RecordVGMR, MEMORY[0x277D4D1F0]);
  *v3 = result;
  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24SecureMessagingAgentCore16GroupMemberModelVGMd, &_ss23_ContiguousArrayStorageCy24SecureMessagingAgentCore16GroupMemberModelVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys12StaticStringV_SbtGMd, &_ss23_ContiguousArrayStorageCys12StaticStringV_SbtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = specialized Dictionary._Variant.asNative.modify(v8);
  v8[9] = specialized _NativeDictionary.subscript.modify(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = specialized Dictionary._Variant.asNative.modify(v8);
  v8[9] = specialized _NativeDictionary.subscript.modify(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = specialized Dictionary._Variant.asNative.modify(v8);
  v8[9] = specialized _NativeDictionary.subscript.modify(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

void Dictionary._Variant.subscript.modifyspecialized (uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*specialized _NativeDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a4 & 1);
    v22 = *v5;
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return _NativeDictionary.subscript.modifyspecialized ;
}

{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a4 & 1);
    v22 = *v5;
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return _NativeDictionary.subscript.modifyspecialized ;
}

{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a4 & 1);
    v22 = *v5;
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (uint64_t **a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = **a1;
  v6 = *(*a1 + 40);
  if (v5)
  {
    v7 = v4[4];
    v8 = *v4[3];
    if (v6)
    {
      *(*(v8 + 56) + 8 * v7) = v5;
    }

    else
    {
      a3(v7, v4[1], v4[2], v5, v8);
    }
  }

  else if ((*a1)[5])
  {
    v9 = v4[4];
    v10 = *v4[3];
    outlined destroy of String(*(v10 + 48) + 16 * v9);
    a4(v9, v10);
  }

  v12 = *v4;

  free(v4);
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
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

uint64_t partial apply for implicit closure #3 in DaemonPersister.loadSwiftMLSClientID(identifier:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return UUID.init(uuidString:)();
}

uint64_t sub_2652A84D4()
{
  outlined consume of Data._Representation(v0[2], v0[3]);
  v1 = v0[5];

  v2 = v0[7];
  if (v2 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[6], v2);
  }

  v3 = v0[9];
  if (v3 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[8], v3);
  }

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2652A86A4()
{
  outlined consume of Data._Representation(v0[2], v0[3]);
  v1 = v0[5];

  v2 = v0[7];

  v3 = v0[9];
  if (v3 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[8], v3);
  }

  return MEMORY[0x2821FE8E8](v0, 85, 7);
}

uint64_t sub_2652A8704()
{
  outlined consume of Data._Representation(v0[2], v0[3]);
  v1 = v0[5];

  v2 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2652A87FC()
{
  outlined consume of Data._Representation(v0[2], v0[3]);
  outlined consume of Data._Representation(v0[4], v0[5]);
  v1 = v0[7];
  if (v1 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[6], v1);
  }

  v2 = v0[9];
  if (v2 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[8], v2);
  }

  v3 = v0[11];
  if (v3 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[10], v3);
  }

  outlined consume of Data._Representation(v0[12], v0[13]);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t outlined init with copy of MLS.OutgoingEventState?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2652A89AC()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));
  outlined consume of Data._Representation(*(v0 + 48), *(v0 + 56));
  outlined consume of Data._Representation(*(v0 + 64), *(v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t objectdestroy_28Tm(uint64_t a1)
{
  outlined consume of Data._Representation(v1[2], v1[3]);
  v3 = v1[5];

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4DataV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type Data and conformance Data();
  result = MEMORY[0x266756B80](v2, MEMORY[0x277CC9318], v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      outlined copy of Data._Representation(v7, *v5);
      specialized Set._Variant.insert(_:)(v8, v7, v6);
      outlined consume of Data._Representation(v8[0], v8[1]);
      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy10Foundation4DataVG_15SecureMessaging3MLSO22UniqueClientIdentifierVsAE_pTg504_s24fg33AgentCore15DaemonPersisterC31loadj35IdentifiersWithEventsSay0aB03MLSO06i3H10k22VGyYaKFAI10Foundation4E7VKXEfU_0fgM4Core0oP0CTf1cn_nTf4ng_n(uint64_t a1, uint64_t a2)
{
  v45 = type metadata accessor for MLS.UniqueClientIdentifier();
  v5 = *(v45 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v43 = v2;
    v46 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v42 = v46;
    v10 = a1 + 56;
    v11 = -1 << *(a1 + 32);
    result = _HashTable.startBucket.getter();
    v12 = result;
    v13 = 0;
    v14 = *(a2 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_decoder);
    v39 = v5;
    v40 = v14;
    v37 = v8;
    v38 = v5 + 32;
    v36 = a1 + 64;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      v17 = v12 >> 6;
      if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_24;
      }

      v41 = v13;
      v18 = v10;
      v19 = *(a1 + 36);
      v20 = a1;
      v21 = (*(a1 + 48) + 16 * v12);
      v23 = *v21;
      v22 = v21[1];
      outlined copy of Data._Representation(*v21, v22);
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v24 = v43;
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      if (v24)
      {
        outlined consume of Data._Representation(v23, v22);
      }

      v43 = 0;
      outlined consume of Data._Representation(v23, v22);
      v25 = v42;
      v46 = v42;
      v27 = *(v42 + 16);
      v26 = *(v42 + 24);
      if (v27 >= v26 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26 > 1, v27 + 1, 1);
        v25 = v46;
      }

      *(v25 + 16) = v27 + 1;
      v28 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v42 = v25;
      result = (*(v39 + 32))(v25 + v28 + *(v39 + 72) * v27, v44, v45);
      v15 = 1 << *(v20 + 32);
      if (v12 >= v15)
      {
        goto LABEL_25;
      }

      v29 = *(v18 + 8 * v17);
      if ((v29 & (1 << v12)) == 0)
      {
        goto LABEL_26;
      }

      a1 = v20;
      if (v19 != *(v20 + 36))
      {
        goto LABEL_27;
      }

      v10 = v18;
      v30 = v29 & (-2 << (v12 & 0x3F));
      if (v30)
      {
        v15 = __clz(__rbit64(v30)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v16 = v37;
      }

      else
      {
        v31 = v17 << 6;
        v32 = v17 + 1;
        v16 = v37;
        v33 = (v36 + 8 * v17);
        while (v32 < (v15 + 63) >> 6)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            result = outlined consume of Set<Data>.Index._Variant(v12, v19, 0);
            v15 = __clz(__rbit64(v34)) + v31;
            goto LABEL_4;
          }
        }

        result = outlined consume of Set<Data>.Index._Variant(v12, v19, 0);
      }

LABEL_4:
      v13 = v41 + 1;
      v12 = v15;
      if (v41 + 1 == v16)
      {
        return v42;
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
  }

  return result;
}

uint64_t outlined init with take of MLS.OutgoingEventState?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2652A9A0C()
{
  v1 = v0[3];

  outlined consume of Data._Representation(v0[4], v0[5]);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2652A9A4C()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));
  outlined consume of Data._Representation(*(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2652A9A94()
{
  outlined consume of Data._Representation(v0[2], v0[3]);
  outlined consume of Data._Representation(v0[8], v0[9]);
  v1 = v0[11];
  if (v1 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[10], v1);
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t type metadata accessor for DaemonPersister()
{
  result = type metadata singleton initialization cache for DaemonPersister;
  if (!type metadata singleton initialization cache for DaemonPersister)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2652A9BE8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

uint64_t sub_2652A9C34(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 176);

  return v3(v4);
}

uint64_t sub_2652A9C88@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2652A9D20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result;
  return result;
}

uint64_t sub_2652A9D6C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 224);

  return v3(v4);
}

uint64_t sub_2652A9DC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 240))();
  *a2 = result;
  return result;
}

uint64_t sub_2652A9E0C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 248);

  return v3(v4);
}

uint64_t type metadata completion function for DaemonPersister()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for SMAFeatureFlagsStore();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of DaemonPersister.setupDB()()
{
  v2 = *(*v0 + 280);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v6();
}

uint64_t dispatch thunk of DaemonPersister.closeDB()()
{
  v2 = *(*v0 + 288);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v6();
}

uint64_t dispatch thunk of DaemonPersister.deleteDB()()
{
  v2 = *(*v0 + 296);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v6();
}

uint64_t dispatch thunk of DaemonPersister.atomically<A>(with:do:rollback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *(*v8 + 304);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v9 + 16) = v20;
  *v20 = v9;
  v20[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v22(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of DaemonPersister.save(swiftMLSClientID:forIdentifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 312);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of DaemonPersister.loadSwiftMLSClientID(identifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 320);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of DaemonPersister.save(swiftMLSGroupID:forIdentifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 328);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 336);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of DaemonPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 344);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of DaemonPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of DaemonPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t dispatch thunk of DaemonPersister.save(groupClientContextBlob:forIdentifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 352);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of DaemonPersister.loadGroupClientContextBlob(identifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 360);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 368);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = dispatch thunk of DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:)(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 376);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of DaemonPersister.replaceGroupMembers(identifier:newMembers:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 384);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DaemonPersister.loadRetryCount(forGroup:messageID:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 392);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = dispatch thunk of DaemonPersister.loadRetryCount(forGroup:messageID:clientIdentifier:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of DaemonPersister.loadRetryCount(forGroup:messageID:clientIdentifier:)(uint64_t a1, char a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2 & 1);
}

uint64_t dispatch thunk of DaemonPersister.save(retryCount:forGroup:messageID:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 400);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of DaemonPersister.deleteGroup(identifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 408);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of DaemonPersister.deleteSecureMessagingGroup(identifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 416);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of DaemonPersister.save(outgoingEventUpdate:forGroup:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 424);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DaemonPersister.save(incomingEvent:forGroup:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 432);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DaemonPersister.delete(incomingEvent:forGroup:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 440);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DaemonPersister.save(eventsSinceLastKeyUpdate:forIdentifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 448);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DaemonPersister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 456);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DaemonPersister.loadClientIdentifiersWithEvents()()
{
  v2 = *(*v0 + 464);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of DaemonPersister.loadClientIdentifiersWithEvents();

  return v6();
}

uint64_t dispatch thunk of DaemonPersister.loadEvents(clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 472);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of DaemonPersister.loadRetriableEventStates(clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 480);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of DaemonPersister.read(clientUUID:)(uint64_t a1)
{
  v4 = *(*v1 + 488);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:);

  return v8(a1);
}

uint64_t dispatch thunk of DaemonPersister.write(clientUUID:clientState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 496);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 504);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DaemonPersister.readGroupState(groupID:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 512);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of DaemonPersister.readEpochData(groupID:epochID:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 520);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = dispatch thunk of DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DaemonPersister.readGroupState(swiftMLSGroupRead:clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 528);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of DaemonPersister.readEpochData(swiftMLSEpochRead:clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 536);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 544);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of DaemonPersister.getSwiftMLSPersister(forClientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 552);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v10(a1, a2);
}

uint64_t _s24SecureMessagingAgentCore17StateMachineModelVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t _s15SecureMessaging8MLSActorCACScAAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined consume of Set<Data>.Index._Variant(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t KeyPackageExchangerBroadcaster.__allocating_init(clientConnection:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t KeyPackageExchangerBroadcaster.retrieveKeyPackage(members:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MLSActor();
  v4[6] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](KeyPackageExchangerBroadcaster.retrieveKeyPackage(members:context:), v6, v5);
}

uint64_t KeyPackageExchangerBroadcaster.retrieveKeyPackage(members:context:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGMR);
  v2 = type metadata accessor for MLS.KeyPackageRetrievalError();
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *(v3 + 16) = *(v0 + 24);
  v4 = *(MEMORY[0x277D4D290] + 4);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_ACtMd, &_s10Foundation4DataV_ACtMR);
  lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>);
  lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError, MEMORY[0x277D4D050]);
  *v5 = v0;
  v5[1] = DelegateBroadcaster.fetchMember(uri:context:);
  v6 = *(v0 + 40);
  v7 = *(v0 + 16);

  return MEMORY[0x2821ACBF8](v7, v1, v2, partial apply for closure #1 in KeyPackageExchangerBroadcaster.retrieveKeyPackage(members:context:), v3, partial apply for closure #2 in KeyPackageExchangerBroadcaster.retrieveKeyPackage(members:context:), v6, v1);
}

uint64_t closure #1 in KeyPackageExchangerBroadcaster.retrieveKeyPackage(members:context:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for JSONEncoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
  lazy protocol witness table accessor for type [MLS.AllMember] and conformance <A> [A]();
  v6 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v8 = v7;

  if (!v1)
  {
    v10 = *(v3 + 48);
    v11 = *(v3 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO26KeyPackageRetrievalContextVSgMd, &_s15SecureMessaging3MLSO26KeyPackageRetrievalContextVSgMR);
    lazy protocol witness table accessor for type MLS.KeyPackageRetrievalContext? and conformance <A> A?();
    v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v14 = v13;

    *a1 = v6;
    a1[1] = v8;
    a1[2] = v12;
    a1[3] = v14;
  }

  return result;
}

uint64_t partial apply for closure #1 in KeyPackageExchangerBroadcaster.retrieveKeyPackage(members:context:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return closure #1 in KeyPackageExchangerBroadcaster.retrieveKeyPackage(members:context:)(a1);
}

uint64_t closure #2 in KeyPackageExchangerBroadcaster.retrieveKeyPackage(members:context:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = *(a4 + 16);
  outlined copy of Data._Representation(*a1, v7);
  outlined copy of Data._Representation(v8, v9);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v12 = Data._bridgeToObjectiveC()().super.isa;
  v15[4] = a2;
  v15[5] = a3;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Data?) -> ();
  v15[3] = &block_descriptor_3;
  v13 = _Block_copy(v15);

  [v10 retrieveKeyPackageWithMembers:isa context:v12 completion:v13];
  _Block_release(v13);

  outlined consume of Data._Representation(v8, v9);
  return outlined consume of Data._Representation(v6, v7);
}

uint64_t lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t KeyPackageExchangerBroadcaster.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t KeyPackageExchangerBroadcaster.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KeyPackageExchangerBroadcaster(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 96);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of KeyPackageExchangerBroadcaster.retrieveKeyPackage(members:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 96);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return v12(a1, a2, a3);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type [MLS.AllMember] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [MLS.AllMember] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [MLS.AllMember] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
    _s15SecureMessaging8MLSActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type MLS.AllMember and conformance MLS.AllMember, MEMORY[0x277D4D218]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [MLS.AllMember] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [MLS.AllMember] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [MLS.AllMember] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.AllMember and conformance MLS.AllMember, MEMORY[0x277D4D218]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [MLS.AllMember] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.KeyPackageRetrievalContext? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalContext? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalContext? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15SecureMessaging3MLSO26KeyPackageRetrievalContextVSgMd, &_s15SecureMessaging3MLSO26KeyPackageRetrievalContextVSgMR);
    _s15SecureMessaging8MLSActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalContext and conformance MLS.KeyPackageRetrievalContext, MEMORY[0x277D4D140]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalContext? and conformance <A> A?);
  }

  return result;
}

uint64_t _s15SecureMessaging8MLSActorCACScAAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t KDSRegistrationDaemon.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *KDSRegistrationDaemon.keyPackageExchanger.getter()
{
  v1 = type metadata accessor for SMAFeatureFlagsStore();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon____lazy_storage___keyPackageExchanger;
  if (*(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon____lazy_storage___keyPackageExchanger))
  {
    v7 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon____lazy_storage___keyPackageExchanger);
  }

  else
  {
    v8 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_stateMachineNetworkOperator);
    v9 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_pushHandler);
    swift_retain_n();
    v10 = v9;
    default argument 0 of SMAFeatureFlagsStore.init(overrides:)();
    SMAFeatureFlagsStore.init(overrides:)();
    v18 = &type metadata for SMAUserDefaults;
    v19 = &protocol witness table for SMAUserDefaults;
    v11 = type metadata accessor for KDSRegistrationKeyPackageExchanger();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    v7 = swift_allocObject();
    v7[10] = type metadata accessor for KDSRegistrationPushHandler();
    v7[11] = &protocol witness table for KDSRegistrationPushHandler;
    v7[7] = v10;
    v7[15] = type metadata accessor for KDSRegistrationStateMachineNetworkOperator();
    v7[16] = &protocol witness table for KDSRegistrationStateMachineNetworkOperator;
    v7[12] = v8;
    outlined init with take of SMAUserDefaultsProtocol(v17, v7 + 2);
    (*(v2 + 32))(v7 + OBJC_IVAR____TtC24SecureMessagingAgentCore34KDSRegistrationKeyPackageExchanger_featureFlagStore, v5, v1);

    v14 = *(v0 + v6);
    *(v0 + v6) = v7;
  }

  return v7;
}

uint64_t KDSRegistrationDaemon.keyPackageExchanger.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon____lazy_storage___keyPackageExchanger);
  *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon____lazy_storage___keyPackageExchanger) = a1;
}

uint64_t (*KDSRegistrationDaemon.keyPackageExchanger.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = KDSRegistrationDaemon.keyPackageExchanger.getter();
  return KDSRegistrationDaemon.keyPackageExchanger.modify;
}

uint64_t KDSRegistrationDaemon.keyPackageExchanger.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon____lazy_storage___keyPackageExchanger);
  *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon____lazy_storage___keyPackageExchanger) = v2;
}

uint64_t KDSRegistrationDaemon.heartbeatBGActivity.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_heartbeatBGActivity);
  v2 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_heartbeatBGActivity + 8);

  return v1;
}

uint64_t KDSRegistrationDaemon.registrationStateMachineBySimUniqueID.getter()
{
  v1 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_registrationStateMachineBySimUniqueID;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t KDSRegistrationDaemon.registrationStateMachineBySimUniqueID.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_registrationStateMachineBySimUniqueID;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t KDSRegistrationDaemon.testPhoneNumber.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_testPhoneNumber);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t KDSRegistrationDaemon.testPhoneNumber.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_testPhoneNumber);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

id KDSRegistrationDaemon.init(mlsDaemon:)(uint64_t a1)
{
  v2 = v1;
  v42 = a1;
  v3 = type metadata accessor for LogCategory();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v4[13];
  v8(v7, *MEMORY[0x277D4C900], v3);
  secureMessagingLogger(category:)();
  v9 = v4[1];
  v9(v7, v3);
  v10 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_clientXPCServer;
  type metadata accessor for RegistrationClientXPCServer();
  v11 = swift_allocObject();
  *(v11 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging15KDSRegistrationO22UniqueClientIdentifierV_0cD9AgentCore0eG0VTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&v2[v10] = v11;
  v12 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_phoneNumberProvider;
  v13 = type metadata accessor for PhoneNumberProvider(0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v8(v7, *MEMORY[0x277D4C908], v3);
  secureMessagingLogger(category:)();
  v9(v7, v3);
  *&v2[v12] = v16;
  v17 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_pushHandler;
  *&v2[v17] = [objc_allocWithZone(type metadata accessor for KDSRegistrationPushHandler()) init];
  v18 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_registrationPersister;
  v44 = 0;
  v45 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v19 = NSHomeDirectory();
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v44 = v20;
  v45 = v22;
  MEMORY[0x266756A70](0xD000000000000019, 0x80000002653491A0);
  v23 = v44;
  v24 = v45;
  v25 = type metadata accessor for KDSRegistrationPersister();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  *&v2[v18] = KDSRegistrationPersister.init(fileDir:dbFileName:)(v23, v24, 0xD000000000000012, 0x80000002653491C0);
  type metadata accessor for KDSRegistrationStateMachineNetworkOperator();
  v28 = swift_allocObject();
  type metadata accessor for RequestManager();
  v29 = swift_allocObject();
  v30 = [objc_opt_self() sharedInstance];
  v31 = [objc_allocWithZone(MEMORY[0x277D07DD0]) initWithIDSServerBag_];

  if (v31)
  {
    [v31 setLogToRegistration_];
  }

  v32 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_stateMachineNetworkOperator;
  *(v29 + 16) = v31;
  *(v28 + 16) = v29;
  static ServerBag.kdsBag.getter();
  *&v2[v32] = v28;
  *&v2[OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon____lazy_storage___keyPackageExchanger] = 0;
  v33 = &v2[OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_heartbeatBGActivity];
  *v33 = 0xD000000000000028;
  *(v33 + 1) = 0x800000026534A690;
  v34 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_registrationStateMachineBySimUniqueID;
  *&v2[v34] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_24SecureMessagingAgentCore27KDSRegistrationStateMachineCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v35 = &v2[OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_testPhoneNumber];
  *v35 = 0;
  *(v35 + 1) = 0;
  *&v2[OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_mlsDaemon] = v42;
  v36 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_mlsDaemonID;
  v37 = *MEMORY[0x277D4CD40];
  v38 = type metadata accessor for MLS.ClientIdentifier();
  (*(*(v38 - 8) + 104))(&v2[v36], v37, v38);
  v39 = type metadata accessor for KDSRegistrationDaemon();
  v43.receiver = v2;
  v43.super_class = v39;
  return objc_msgSendSuper2(&v43, sel_init);
}

id KDSRegistrationDaemon.__deallocating_deinit()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_logger, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26524C000, v7, v8, "KDSRegistrationDaemon deinitialized", v9, 2u);
    MEMORY[0x2667577B0](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v10 = type metadata accessor for KDSRegistrationDaemon();
  v12.receiver = v1;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, sel_dealloc);
}

uint64_t KDSRegistrationDaemon.start()()
{
  *(v1 + 64) = v0;
  return MEMORY[0x2822009F8](KDSRegistrationDaemon.start(), 0, 0);
}

{
  v1 = *(**(*(v0 + 64) + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_registrationPersister) + 128);
  v5 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = KDSRegistrationDaemon.start();

  return v5();
}

{
  v2 = *(*v1 + 72);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](KDSRegistrationDaemon.start(), 0, 0);
  }
}

{
  v1 = v0[8];
  v0[10] = *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_mlsDaemon);
  v2 = ((*MEMORY[0x277D85000] & *v1) + 184) & 0xFFFFFFFFFFFFLL | 0xB7E1000000000000;
  v0[11] = *((*MEMORY[0x277D85000] & *v1) + 0xB8);
  v0[12] = v2;
  type metadata accessor for RegistrationActor();
  v3 = v1;
  v0[13] = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](KDSRegistrationDaemon.start(), v5, v4);
}

{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[8];

  v0[14] = v3(v5);

  return MEMORY[0x2822009F8](KDSRegistrationDaemon.start(), 0, 0);
}

{
  *(v0 + 120) = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_mlsDaemonID;
  type metadata accessor for MLSActor();
  *(v0 + 128) = static MLSActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](KDSRegistrationDaemon.start(), v2, v1);
}

{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = v0[10];
  v5 = v0[8];

  specialized MLSDaemon.setupInternalConnection(mlsDaemonClient:regClientKeyPackageExchanger:identifier:)(v5, v3, v5 + v2, v4);

  v6 = *((*MEMORY[0x277D85000] & *v5) + 0x140);
  v11 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = KDSRegistrationDaemon.start();
  v9 = v0[8];

  return v11();
}

{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 64);
  v10 = *v0;

  v4 = *((*MEMORY[0x277D85000] & *v3) + 0x148);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v1 + 144) = v6;
  *v6 = v10;
  v6[1] = KDSRegistrationDaemon.start();
  v7 = *(v1 + 64);

  return v9();
}

{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x2822009F8](KDSRegistrationDaemon.start(), 0, 0);
}

{
  v1 = v0[8];
  v2 = [objc_opt_self() sharedScheduler];
  v3 = MEMORY[0x266756A10](*&v1[OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_heartbeatBGActivity], *&v1[OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_heartbeatBGActivity + 8]);
  type metadata accessor for OS_dispatch_queue();
  v4 = static OS_dispatch_queue.main.getter();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v0[6] = partial apply for closure #1 in KDSRegistrationDaemon.start();
  v0[7] = v5;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed (@guaranteed BGSystemTask) -> ();
  v0[5] = &block_descriptor_4;
  v6 = _Block_copy(v0 + 2);
  v7 = v0[7];
  v8 = v1;

  [v2 registerForTaskWithIdentifier:v3 usingQueue:v4 launchHandler:v6];
  _Block_release(v6);

  v9 = v0[1];

  return v9();
}

uint64_t closure #1 in KDSRegistrationDaemon.start()(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a2;
  v9[5] = a1;
  v10 = a2;
  v11 = a1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in closure #1 in KDSRegistrationDaemon.start(), v9);
}

uint64_t closure #1 in closure #1 in KDSRegistrationDaemon.start()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in KDSRegistrationDaemon.start(), 0, 0);
}

uint64_t closure #1 in closure #1 in KDSRegistrationDaemon.start()()
{
  v1 = v0[2] + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_logger;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26524C000, v2, v3, "Heartbeat background task fired.", v4, 2u);
    MEMORY[0x2667577B0](v4, -1, -1);
  }

  v5 = v0[2];

  v6 = *((*MEMORY[0x277D85000] & *v5) + 0x158);
  v12 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[4] = v8;
  *v8 = v0;
  v8[1] = closure #1 in closure #1 in KDSRegistrationDaemon.start();
  v10 = v0[2];
  v9 = v0[3];

  return v12(v9);
}

{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void thunk for @escaping @callee_guaranteed (@guaranteed BGSystemTask) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = v13;
  type metadata accessor for KDSRegistration.ClientCreationError();
  v19 = swift_allocObject();
  v19[2] = a10;
  v19[3] = a11;
  v19[4] = a2;
  v19[5] = a3;
  v19[6] = a6;
  v19[7] = a7;
  v19[8] = a8;
  v19[9] = a9;
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = v14;
  v20[5] = a12;
  v20[6] = a13;
  v20[7] = a1;
  v21 = swift_allocObject();
  *(v21 + 16) = &async function pointer to partial apply for closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:);
  *(v21 + 24) = v20;
  outlined copy of Data._Representation(a10, a11);
  outlined copy of Data._Representation(a2, a3);
  swift_unknownObjectRetain();

  v22 = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SS15SecureMessaging15KDSRegistrationO17URISupportedStateOAC22UniqueClientIdentifierVtMd, &_sSS_SS15SecureMessaging15KDSRegistrationO17URISupportedStateOAC22UniqueClientIdentifierVtMR);
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError, MEMORY[0x277D4CA88]);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 248) = v27;
  *(v8 + 256) = v28;
  *(v8 + 232) = v26;
  *(v8 + 216) = a7;
  *(v8 + 224) = a8;
  *(v8 + 200) = a5;
  *(v8 + 208) = a6;
  *(v8 + 184) = a3;
  *(v8 + 192) = a4;
  *(v8 + 168) = a1;
  *(v8 + 176) = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v8 + 264) = swift_task_alloc();
  v10 = *(*(type metadata accessor for JSONEncoder.OutputFormatting() - 8) + 64) + 15;
  *(v8 + 272) = swift_task_alloc();
  v11 = type metadata accessor for LogCategory();
  *(v8 + 280) = v11;
  v12 = *(v11 - 8);
  *(v8 + 288) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 296) = swift_task_alloc();
  v14 = type metadata accessor for KDSRegistration.URISupportedState();
  *(v8 + 304) = v14;
  v15 = *(v14 - 8);
  *(v8 + 312) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  v17 = type metadata accessor for KDSRegistration.UniqueClientIdentifier();
  *(v8 + 336) = v17;
  v18 = *(v17 - 8);
  *(v8 + 344) = v18;
  v19 = *(v18 + 64) + 15;
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15KDSRegistrationO16ClientIdentifierOSgMd, &_s15SecureMessaging15KDSRegistrationO16ClientIdentifierOSgMR) - 8) + 64) + 15;
  *(v8 + 368) = swift_task_alloc();
  v21 = type metadata accessor for KDSRegistration.ClientIdentifier();
  *(v8 + 376) = v21;
  v22 = *(v21 - 8);
  *(v8 + 384) = v22;
  v23 = *(v22 + 64) + 15;
  *(v8 + 392) = swift_task_alloc();
  *(v8 + 400) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:), 0, 0);
}

uint64_t closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:)()
{
  v90 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 384);
  v3 = *(v0 + 368);
  v5 = *(v0 + 216);
  v4 = *(v0 + 224);

  KDSRegistration.ClientIdentifier.init(rawValue:)();
  v6 = (*(v2 + 48))(v3, 1, v1);
  *(v0 + 656) = v6;
  if (v6 == 1)
  {
    outlined destroy of MLS.KeyPackageProvider?(*(v0 + 368), &_s15SecureMessaging15KDSRegistrationO16ClientIdentifierOSgMd, &_s15SecureMessaging15KDSRegistrationO16ClientIdentifierOSgMR);
    v8 = *(v0 + 392);
    v7 = *(v0 + 400);
    v10 = *(v0 + 360);
    v9 = *(v0 + 368);
    v11 = *(v0 + 352);
    v13 = *(v0 + 320);
    v12 = *(v0 + 328);
    v14 = *(v0 + 296);
    v16 = *(v0 + 264);
    v15 = *(v0 + 272);

    v17 = *(v0 + 8);
    v18 = *(v0 + 656) != 1;

    return v17(v18);
  }

  else
  {
    v20 = *(v0 + 400);
    v21 = *(v0 + 376);
    v22 = *(v0 + 384);
    v23 = *(v0 + 368);
    v24 = *(v22 + 32);
    *(v0 + 408) = v24;
    *(v0 + 416) = (v22 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v24(v20, v23, v21);
    if (specialized SMAUserDefaults.shouldUseTestNumber()())
    {
      v25 = *(v0 + 248);
      v26 = *(v0 + 232);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v30 = *(v0 + 240);
        v29 = *(v0 + 248);
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v89 = v32;
        *v31 = 136315138;
        *(v0 + 152) = v30;
        *(v0 + 160) = v29;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        v33 = String.init<A>(describing:)();
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v89);

        *(v31 + 4) = v35;
        _os_log_impl(&dword_26524C000, v27, v28, "KDSRegistrationDaemon -- Using Test Phone Number setupXPCConnection: %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        MEMORY[0x2667577B0](v32, -1, -1);
        MEMORY[0x2667577B0](v31, -1, -1);
      }

      v36 = *(v0 + 248);
      if (v36)
      {
        v37 = *(v0 + 240);
        v38 = *((*MEMORY[0x277D85000] & **(v0 + 232)) + 0xF0);

        v38(v37, v36);
      }
    }

    if (*(v0 + 256))
    {
      v39 = *(v0 + 360);
      v40 = *(v0 + 336);
      v41 = *(v0 + 344);
      v42 = *(v0 + 328);
      v43 = *(v0 + 304);
      v44 = *(v0 + 312);
      v45 = *(v0 + 224);
      v87 = *(v0 + 232);
      v47 = *(v0 + 200);
      v46 = *(v0 + 208);
      v48 = *(v0 + 192);
      v49 = *(v0 + 176);
      *(v0 + 424) = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_logger;
      v50 = *(v41 + 16);
      *(v0 + 432) = v50;
      *(v0 + 440) = (v41 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v50(v39, v46, v40);
      v51 = *(v44 + 16);
      *(v0 + 448) = v51;
      *(v0 + 456) = (v44 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v86 = v51;
      v51(v42, v47, v43);

      swift_unknownObjectRetain();

      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();

      v54 = os_log_type_enabled(v52, v53);
      v55 = *(v0 + 360);
      v57 = *(v0 + 336);
      v56 = *(v0 + 344);
      v58 = *(v0 + 328);
      if (v54)
      {
        v85 = *(v0 + 312);
        v83 = *(v0 + 320);
        v84 = *(v0 + 304);
        v77 = *(v0 + 216);
        v78 = *(v0 + 224);
        v81 = *(v0 + 184);
        v82 = *(v0 + 192);
        v79 = *(v0 + 168);
        v80 = *(v0 + 176);
        v59 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v89 = v88;
        *v59 = 136316162;
        _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.UniqueClientIdentifier and conformance KDSRegistration.UniqueClientIdentifier, MEMORY[0x277D4CAE8]);
        v60 = dispatch thunk of CustomStringConvertible.description.getter();
        v62 = v61;
        (*(v56 + 8))(v55, v57);
        v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, &v89);

        *(v59 + 4) = v63;
        *(v59 + 12) = 2080;
        *(v59 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, &v89);
        *(v59 + 22) = 2080;
        *(v59 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v80, &v89);
        *(v59 + 32) = 2080;
        *(v59 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, &v89);
        *(v59 + 42) = 2080;
        v86(v83, v58, v84);
        v64 = String.init<A>(describing:)();
        v66 = v65;
        (*(v85 + 8))(v58, v84);
        v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, &v89);

        *(v59 + 44) = v67;
        _os_log_impl(&dword_26524C000, v52, v53, "KDSRegistrationDaemon -- added client with uniqueClientIdentifier: %s, clientIdentifier: %s, simUniqueID: %s, simLabelID: %s, uriSupportedState: %s", v59, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x2667577B0](v88, -1, -1);
        MEMORY[0x2667577B0](v59, -1, -1);
      }

      else
      {
        v75 = *(v0 + 304);
        v74 = *(v0 + 312);

        (*(v74 + 8))(v58, v75);
        (*(v56 + 8))(v55, v57);
      }

      (*(*(v0 + 384) + 16))(*(v0 + 392), *(v0 + 400), *(v0 + 376));
      *(v0 + 496) = type metadata accessor for RegistrationActor();
      swift_unknownObjectRetain();
      *(v0 + 504) = static RegistrationActor.shared.getter();
      *(v0 + 512) = _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
      v70 = dispatch thunk of Actor.unownedExecutor.getter();
      v72 = v76;
      v73 = closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:);
    }

    else
    {
      v68 = *(*(v0 + 232) + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_clientXPCServer);
      *(v0 + 464) = v68;
      v69 = *v68 + 120;
      *(v0 + 472) = *v69;
      *(v0 + 480) = v69 & 0xFFFFFFFFFFFFLL | 0x6765000000000000;
      type metadata accessor for RegistrationActor();
      *(v0 + 488) = static RegistrationActor.shared.getter();
      _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
      v70 = dispatch thunk of Actor.unownedExecutor.getter();
      v72 = v71;
      v73 = closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:);
    }

    return MEMORY[0x2822009F8](v73, v70, v72);
  }
}

{
  v2 = v0[60];
  v1 = v0[61];
  v3 = v0[58];
  v4 = v0[59];
  v5 = v0[26];

  v4(v5);

  return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:), 0, 0);
}

{
  (*(*(v0 + 384) + 8))(*(v0 + 400), *(v0 + 376));
  v2 = *(v0 + 392);
  v1 = *(v0 + 400);
  v4 = *(v0 + 360);
  v3 = *(v0 + 368);
  v5 = *(v0 + 352);
  v7 = *(v0 + 320);
  v6 = *(v0 + 328);
  v8 = *(v0 + 296);
  v10 = *(v0 + 264);
  v9 = *(v0 + 272);

  v11 = *(v0 + 8);
  v12 = *(v0 + 656) != 1;

  return v11(v12);
}

{
  v1 = v0[63];
  v3 = v0[51];
  v2 = v0[52];
  v4 = v0[49];
  v5 = v0[47];
  v6 = v0[32];

  v7 = type metadata accessor for KDSRegistrationXPCBroadcaster();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v0[65] = v10;
  v3(v10 + OBJC_IVAR____TtC24SecureMessagingAgentCore29KDSRegistrationXPCBroadcaster_clientIdentifier, v4, v5);
  *(v10 + OBJC_IVAR____TtC24SecureMessagingAgentCore29KDSRegistrationXPCBroadcaster_clientConnection) = v6;

  return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:), 0, 0);
}

{
  v1 = v0[65];
  v2 = v0[64];
  v3 = v0[62];
  v4 = v0[32];
  v5 = *(v0[29] + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_clientXPCServer);
  v0[66] = v5;
  v6 = *v5 + 112;
  v0[67] = *v6;
  v0[68] = v6 & 0xFFFFFFFFFFFFLL | 0x5563000000000000;
  swift_unknownObjectRetain();

  v0[69] = static RegistrationActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:), v8, v7);
}

{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[67];
  v4 = v0[66];
  v5 = v0[65];
  v6 = v0[32];
  v7 = v0[26];

  v3(v6, v5, v7);
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:), 0, 0);
}

{
  v29 = v0;
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & **(v0 + 232)) + 0xD0))();
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 168), *(v0 + 176)), (v4 & 1) != 0))
  {
    v5 = *(v0 + 424);
    v6 = *(v0 + 232);
    v7 = *(v0 + 176);
    v8 = *(*(v2 + 56) + 8 * v3);
    *(v0 + 608) = v8;

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v12 = *(v0 + 168);
      v11 = *(v0 + 176);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v28 = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v28);
      _os_log_impl(&dword_26524C000, v9, v10, "KDSRegistrationDaemon -- Updating state machine for simUniqueID: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x2667577B0](v14, -1, -1);
      MEMORY[0x2667577B0](v13, -1, -1);
    }

    v15 = *(*v8 + 568);
    v27 = (v15 + *v15);
    v16 = v15[1];
    v17 = swift_task_alloc();
    *(v0 + 616) = v17;
    *v17 = v0;
    v17[1] = closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:);
    v18 = *(v0 + 200);

    return v27(v18);
  }

  else
  {
    v20 = *(v0 + 512);
    v21 = *(v0 + 496);
    v22 = *(v0 + 232);

    v23 = *(v22 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_pushHandler);
    *(v0 + 560) = v23;
    v24 = (*v1 & *v23) + 176;
    *(v0 + 568) = *((*v1 & *v23) + 0xB0);
    *(v0 + 576) = v24 & 0xFFFFFFFFFFFFLL | 0x4AE000000000000;
    *(v0 + 584) = static RegistrationActor.shared.getter();
    v26 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:), v26, v25);
  }
}

{
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[71];
  v4 = v0[70];

  v0[74] = v3(v5);
  v0[75] = v6;

  return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:), 0, 0);
}

{
  v29 = v0;
  v1 = v0[53];
  v2 = v0[29];
  v3 = v0[22];

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[21];
    v6 = v0[22];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v28);
    _os_log_impl(&dword_26524C000, v4, v5, "KDSRegistrationDaemon -- Initializing new state machine for simUniqueID: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x2667577B0](v9, -1, -1);
    MEMORY[0x2667577B0](v8, -1, -1);
  }

  v10 = v0[75];
  v11 = v0[74];
  v27 = v0[64];
  v12 = v0[62];
  v14 = v0[56];
  v13 = v0[57];
  v15 = v0[54];
  v16 = v0[55];
  v17 = v0[44];
  v18 = v0[42];
  v19 = v0[40];
  v20 = v0[38];
  v21 = v0[25];
  v22 = v0[26];
  v23 = v0[22];
  v0[79] = *(v0[29] + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_stateMachineNetworkOperator);
  v14(v19, v21, v20);
  v15(v17, v22, v18);

  outlined copy of Data?(v11, v10);
  v0[80] = static RegistrationActor.shared.getter();
  v25 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:), v25, v24);
}

{
  v2 = *(*v1 + 616);
  v5 = *v1;
  *(*v1 + 624) = v0;

  if (v0)
  {
    v3 = closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:);
  }

  else
  {
    v3 = closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 608);
  v2 = *(v0 + 520);
  v3 = *(v0 + 256);

  swift_unknownObjectRelease();
  (*(*(v0 + 384) + 8))(*(v0 + 400), *(v0 + 376));
  v5 = *(v0 + 392);
  v4 = *(v0 + 400);
  v7 = *(v0 + 360);
  v6 = *(v0 + 368);
  v8 = *(v0 + 352);
  v10 = *(v0 + 320);
  v9 = *(v0 + 328);
  v11 = *(v0 + 296);
  v13 = *(v0 + 264);
  v12 = *(v0 + 272);

  v14 = *(v0 + 8);
  v15 = *(v0 + 656) != 1;

  return v14(v15);
}

{
  v1 = v0[80];
  v2 = v0[79];
  v42 = v0[74];
  v43 = v0[75];
  v46 = v0[62];
  v47 = v0[64];
  v37 = v0[56];
  v38 = v0[57];
  v40 = v0[54];
  v41 = v0[55];
  v39 = v0[44];
  v51 = v0[40];
  v52 = v0[42];
  v48 = v0[43];
  v49 = v0[39];
  v3 = v0[37];
  v50 = v0[38];
  v4 = v0[35];
  v5 = v0[36];
  v44 = v0[34];
  v45 = v0[33];
  v6 = v0[29];
  v35 = v0[23];
  v36 = v0[24];
  v33 = v0[21];
  v34 = v0[22];

  v7 = type metadata accessor for KDSRegistrationStateMachine();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v0[81] = v10;
  v0[5] = type metadata accessor for KDSRegistrationDaemon();
  v0[6] = &protocol witness table for KDSRegistrationDaemon;
  v0[2] = v6;
  v0[10] = type metadata accessor for KDSRegistrationStateMachineNetworkOperator();
  v0[11] = &protocol witness table for KDSRegistrationStateMachineNetworkOperator;
  v0[7] = v2;
  (*(v5 + 104))(v3, *MEMORY[0x277D4C918], v4);

  v11 = v6;
  secureMessagingLogger(category:)();
  (*(v5 + 8))(v3, v4);
  v12 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_phoneAuthInfo;
  v13 = type metadata accessor for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo();
  (*(*(v13 - 8) + 56))(v10 + v12, 1, 1, v13);
  *(v10 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_participantInfo) = xmmword_2653419D0;
  *(v10 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_CSR) = xmmword_2653419D0;
  v14 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_telURI;
  v15 = type metadata accessor for URI();
  (*(*(v15 - 8) + 56))(v10 + v14, 1, 1, v15);
  v16 = (v10 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_phoneNumberCredential);
  *v16 = 0;
  v16[1] = 0;
  *(v10 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_phoneNumberCredentialType) = 4;
  v17 = (v10 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_serverVendedClientID);
  *v17 = 0;
  v17[1] = 0;
  v18 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_keyPackage;
  v19 = type metadata accessor for MLS.KeyPackageInfo();
  (*(*(v19 - 8) + 56))(v10 + v18, 1, 1, v19);
  v20 = v10 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_nextHeartbeatInterval;
  *v20 = 0;
  *(v20 + 8) = 1;
  *(v10 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_devicePushToken) = xmmword_2653419D0;
  *(v10 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_heartbeatTransaction) = 0;
  v21 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_encoder;
  v22 = type metadata accessor for JSONEncoder();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  *(v10 + v21) = JSONEncoder.init()();
  *(v10 + 16) = 18;
  *(v10 + 24) = v33;
  *(v10 + 32) = v34;
  *(v10 + 40) = v35;
  *(v10 + 48) = v36;
  v37(v10 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_uriSupportedState, v51, v50);
  outlined init with copy of SMAUserDefaultsProtocol((v0 + 2), v10 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator);
  outlined init with copy of SMAUserDefaultsProtocol((v0 + 7), v10 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_networkOperator);
  v40(v10 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_uniqueClientIdentifier, v39, v52);
  v25 = (v10 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_devicePushToken);
  swift_beginAccess();
  v26 = *v25;
  v27 = v25[1];
  *v25 = v42;
  v25[1] = v43;

  outlined copy of Data?(v42, v43);
  outlined consume of Data?(v26, v27);
  v28 = *(v10 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_encoder);
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  v29 = type metadata accessor for TaskPriority();
  (*(*(v29 - 8) + 56))(v45, 1, 1, v29);

  v30 = static RegistrationActor.shared.getter();
  v31 = swift_allocObject();
  v31[2] = v30;
  v31[3] = v47;
  v31[4] = v10;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v45, &closure #1 in KDSRegistrationStateMachine.rerun()partial apply, v31);

  outlined consume of Data?(v42, v43);
  (*(v48 + 8))(v39, v52);
  (*(v49 + 8))(v51, v50);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:), 0, 0);
}

{
  v1 = *(v0 + 648);
  v2 = *(v0 + 600);
  v3 = *(v0 + 592);
  v24 = *(v0 + 520);
  v25 = *(v0 + 256);
  v5 = *(v0 + 168);
  v4 = *(v0 + 176);
  v6 = (*((*MEMORY[0x277D85000] & **(v0 + 232)) + 0xE0))(v0 + 96);
  v8 = v7;
  v9 = *v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v8;
  *v8 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v1, v5, v4, isUniquelyReferenced_nonNull_native);

  *v8 = v26;
  v6(v0 + 96, 0);
  outlined consume of Data?(v3, v2);

  swift_unknownObjectRelease();
  (*(*(v0 + 384) + 8))(*(v0 + 400), *(v0 + 376));
  v12 = *(v0 + 392);
  v11 = *(v0 + 400);
  v14 = *(v0 + 360);
  v13 = *(v0 + 368);
  v15 = *(v0 + 352);
  v17 = *(v0 + 320);
  v16 = *(v0 + 328);
  v18 = *(v0 + 296);
  v20 = *(v0 + 264);
  v19 = *(v0 + 272);

  v21 = *(v0 + 8);
  v22 = *(v0 + 656) != 1;

  return v21(v22);
}

{
  v1 = v0[76];
  v2 = v0[65];
  v4 = v0[49];
  v3 = v0[50];
  v5 = v0[47];
  v6 = v0[48];
  v8 = v0[45];
  v7 = v0[46];
  v9 = v0[44];
  v14 = v0[41];
  v15 = v0[40];
  v16 = v0[37];
  v17 = v0[34];
  v18 = v0[33];
  v10 = v0[32];

  swift_unknownObjectRelease();
  (*(v6 + 8))(v3, v5);

  v11 = v0[1];
  v12 = v0[78];

  return v11(0);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String, @guaranteed String, @in_guaranteed KDSRegistration.URISupportedState, @in_guaranteed KDSRegistration.UniqueClientIdentifier) -> (@unowned Bool, @error @owned Error)(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 16) = a1;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SS15SecureMessaging15KDSRegistrationO17URISupportedStateOAC22UniqueClientIdentifierVtMd, &_sSS_SS15SecureMessaging15KDSRegistrationO17URISupportedStateOAC22UniqueClientIdentifierVtMR);
  v11 = *(v10 + 64);
  v12 = *(v10 + 80);
  v16 = (a3 + *a3);
  v13 = a3[1];
  v14 = swift_task_alloc();
  *(v3 + 24) = v14;
  *v14 = v3;
  v14[1] = thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String, @guaranteed String, @in_guaranteed KDSRegistration.URISupportedState, @in_guaranteed KDSRegistration.UniqueClientIdentifier) -> (@unowned Bool, @error @owned Error);

  return v16(v6, v7, v8, v9, a2 + v11, a2 + v12);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String, @guaranteed String, @in_guaranteed KDSRegistration.URISupportedState, @in_guaranteed KDSRegistration.UniqueClientIdentifier) -> (@unowned Bool, @error @owned Error)(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1 & 1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t KDSRegistrationDaemon.update(simUniqueID:simLabelID:supportedState:uniqueClientIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  type metadata accessor for KDSRegistration.UpdateSupportedStateError();
  v17 = swift_allocObject();
  v17[2] = a5;
  v17[3] = a6;
  v17[4] = a7;
  v17[5] = a8;
  v17[6] = a1;
  v17[7] = a2;
  v17[8] = a3;
  v17[9] = a4;
  v18 = swift_allocObject();
  *(v18 + 16) = v8;
  v19 = swift_allocObject();
  *(v19 + 16) = &async function pointer to partial apply for closure #2 in KDSRegistrationDaemon.update(simUniqueID:simLabelID:supportedState:uniqueClientIdentifier:completion:);
  *(v19 + 24) = v18;
  outlined copy of Data._Representation(a5, a6);
  outlined copy of Data._Representation(a7, a8);

  v20 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SS15SecureMessaging15KDSRegistrationO17URISupportedStateOAC22UniqueClientIdentifierVtMd, &_sSS_SS15SecureMessaging15KDSRegistrationO17URISupportedStateOAC22UniqueClientIdentifierVtMR);
  type metadata accessor for KDSRegistration.SupportedStateUpdateProcessedContext();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError, MEMORY[0x277D4CBA0]);
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.SupportedStateUpdateProcessedContext and conformance KDSRegistration.SupportedStateUpdateProcessedContext, MEMORY[0x277D4CC10]);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, char *a7@<X8>)
{
  v32 = a4;
  v33 = a6;
  v31 = a5;
  v29 = a3;
  v35 = a1;
  v36 = a2;
  v34 = a7;
  v8 = type metadata accessor for KDSRegistration.UniqueClientIdentifier();
  v30 = *(v8 - 8);
  v9 = *(v30 + 64);
  MEMORY[0x28223BE20](v8);
  v37 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for KDSRegistration.URISupportedState();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for JSONDecoder();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.URISupportedState and conformance KDSRegistration.URISupportedState, MEMORY[0x277D4CA38]);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v7)
  {
    v20 = v12;
    v21 = v34;
    v22 = *(v16 + 48);
    v23 = *(v16 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.UniqueClientIdentifier and conformance KDSRegistration.UniqueClientIdentifier, MEMORY[0x277D4CAE8]);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SS15SecureMessaging15KDSRegistrationO17URISupportedStateOAC22UniqueClientIdentifierVtMd, &_sSS_SS15SecureMessaging15KDSRegistrationO17URISupportedStateOAC22UniqueClientIdentifierVtMR);
    v25 = *(v24 + 64);
    v26 = *(v24 + 80);
    v28 = v32;
    v27 = v33;
    *v21 = v29;
    *(v21 + 1) = v28;
    *(v21 + 2) = v31;
    *(v21 + 3) = v27;
    (*(v20 + 32))(&v21[v25], v15, v11);
    (*(v30 + 32))(&v21[v26], v37, v8);
  }

  return result;
}

uint64_t closure #2 in KDSRegistrationDaemon.update(simUniqueID:simLabelID:supportedState:uniqueClientIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[27] = a7;
  v8[28] = a8;
  v8[25] = a5;
  v8[26] = a6;
  v8[23] = a3;
  v8[24] = a4;
  v8[21] = a1;
  v8[22] = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v8[29] = swift_task_alloc();
  v10 = *(*(type metadata accessor for JSONEncoder.OutputFormatting() - 8) + 64) + 15;
  v8[30] = swift_task_alloc();
  v11 = type metadata accessor for LogCategory();
  v8[31] = v11;
  v12 = *(v11 - 8);
  v8[32] = v12;
  v13 = *(v12 + 64) + 15;
  v8[33] = swift_task_alloc();
  v14 = type metadata accessor for KDSRegistration.UniqueClientIdentifier();
  v8[34] = v14;
  v15 = *(v14 - 8);
  v8[35] = v15;
  v16 = *(v15 + 64) + 15;
  v8[36] = swift_task_alloc();
  v17 = type metadata accessor for KDSRegistration.URISupportedState();
  v8[37] = v17;
  v18 = *(v17 - 8);
  v8[38] = v18;
  v19 = *(v18 + 64) + 15;
  v8[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.update(simUniqueID:simLabelID:supportedState:uniqueClientIdentifier:completion:), 0, 0);
}

uint64_t closure #2 in KDSRegistrationDaemon.update(simUniqueID:simLabelID:supportedState:uniqueClientIdentifier:completion:)()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & **(v0 + 224)) + 0xD0))();
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 176), *(v0 + 184)), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
    *(v0 + 320) = v5;

    v15 = (*v5 + 568);
    v16 = (*v15 + **v15);
    v6 = (*v15)[1];
    v7 = swift_task_alloc();
    *(v0 + 328) = v7;
    *v7 = v0;
    v7[1] = closure #2 in KDSRegistrationDaemon.update(simUniqueID:simLabelID:supportedState:uniqueClientIdentifier:completion:);
    v8 = *(v0 + 208);

    return v16(v8);
  }

  else
  {
    v10 = *(v0 + 224);

    v11 = *(v10 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_pushHandler);
    *(v0 + 344) = v11;
    v12 = (*v1 & *v11) + 176;
    *(v0 + 352) = *((*v1 & *v11) + 0xB0);
    *(v0 + 360) = v12 & 0xFFFFFFFFFFFFLL | 0x4AE000000000000;
    *(v0 + 368) = type metadata accessor for RegistrationActor();
    *(v0 + 376) = static RegistrationActor.shared.getter();
    *(v0 + 384) = _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
    v14 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.update(simUniqueID:simLabelID:supportedState:uniqueClientIdentifier:completion:), v14, v13);
  }
}

{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = closure #2 in KDSRegistrationDaemon.update(simUniqueID:simLabelID:supportedState:uniqueClientIdentifier:completion:);
  }

  else
  {
    v3 = closure #2 in KDSRegistrationDaemon.update(simUniqueID:simLabelID:supportedState:uniqueClientIdentifier:completion:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[47];
  v3 = v0[44];
  v2 = v0[45];
  v4 = v0[43];

  v0[49] = v3(v5);
  v0[50] = v6;

  return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.update(simUniqueID:simLabelID:supportedState:uniqueClientIdentifier:completion:), 0, 0);
}

{
  v32 = v0;
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[28];
  outlined copy of Data?(v2, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  outlined consume of Data?(v2, v1);
  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[49];
    v6 = v0[50];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31 = v9;
    *v8 = 136315138;
    v0[19] = v7;
    v0[20] = v6;
    outlined copy of Data?(v7, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v31);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_26524C000, v4, v5, "PUSH TOKEN: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x2667577B0](v9, -1, -1);
    MEMORY[0x2667577B0](v8, -1, -1);
  }

  v14 = v0[49];
  v13 = v0[50];
  v15 = v0[48];
  v16 = v0[46];
  v18 = v0[38];
  v17 = v0[39];
  v20 = v0[36];
  v19 = v0[37];
  v21 = v0[34];
  v22 = v0[35];
  v23 = v0[27];
  v24 = v0[26];
  v25 = v0[23];
  v0[51] = *(v0[28] + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_stateMachineNetworkOperator);
  v26 = *(v18 + 16);
  v0[52] = v26;
  v0[53] = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v26(v17, v24, v19);
  v27 = *(v22 + 16);
  v0[54] = v27;
  v0[55] = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v27(v20, v23, v21);
  outlined copy of Data?(v14, v13);

  v0[56] = static RegistrationActor.shared.getter();
  v29 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.update(simUniqueID:simLabelID:supportedState:uniqueClientIdentifier:completion:), v29, v28);
}

{
  v1 = *(v0 + 320);

  v2 = *((*MEMORY[0x277D85000] & **(v0 + 224)) + 0x148);
  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 464) = v4;
  *v4 = v0;
  v4[1] = closure #2 in KDSRegistrationDaemon.update(simUniqueID:simLabelID:supportedState:uniqueClientIdentifier:completion:);
  v5 = *(v0 + 224);

  return v7();
}

{
  v1 = v0[56];
  v40 = v0[54];
  v41 = v0[55];
  v2 = v0[51];
  v37 = v0[52];
  v38 = v0[53];
  v42 = v0[49];
  v43 = v0[50];
  v46 = v0[46];
  v47 = v0[48];
  v49 = v0[38];
  v50 = v0[37];
  v51 = v0[39];
  v39 = v0[36];
  v48 = v0[35];
  v52 = v0[34];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[31];
  v6 = v0[28];
  v44 = v0[30];
  v45 = v0[29];
  v35 = v0[24];
  v36 = v0[25];
  v33 = v0[22];
  v34 = v0[23];

  v7 = type metadata accessor for KDSRegistrationStateMachine();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v0[57] = v10;
  v0[5] = type metadata accessor for KDSRegistrationDaemon();
  v0[6] = &protocol witness table for KDSRegistrationDaemon;
  v0[2] = v6;
  v0[10] = type metadata accessor for KDSRegistrationStateMachineNetworkOperator();
  v0[11] = &protocol witness table for KDSRegistrationStateMachineNetworkOperator;
  v0[7] = v2;
  (*(v4 + 104))(v3, *MEMORY[0x277D4C918], v5);

  v11 = v6;
  secureMessagingLogger(category:)();
  (*(v4 + 8))(v3, v5);
  v12 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_phoneAuthInfo;
  v13 = type metadata accessor for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo();
  (*(*(v13 - 8) + 56))(v10 + v12, 1, 1, v13);
  *(v10 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_participantInfo) = xmmword_2653419D0;
  *(v10 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_CSR) = xmmword_2653419D0;
  v14 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_telURI;
  v15 = type metadata accessor for URI();
  (*(*(v15 - 8) + 56))(v10 + v14, 1, 1, v15);
  v16 = (v10 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_phoneNumberCredential);
  *v16 = 0;
  v16[1] = 0;
  *(v10 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_phoneNumberCredentialType) = 4;
  v17 = (v10 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_serverVendedClientID);
  *v17 = 0;
  v17[1] = 0;
  v18 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_keyPackage;
  v19 = type metadata accessor for MLS.KeyPackageInfo();
  (*(*(v19 - 8) + 56))(v10 + v18, 1, 1, v19);
  v20 = v10 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_nextHeartbeatInterval;
  *v20 = 0;
  *(v20 + 8) = 1;
  *(v10 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_devicePushToken) = xmmword_2653419D0;
  *(v10 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_heartbeatTransaction) = 0;
  v21 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_encoder;
  v22 = type metadata accessor for JSONEncoder();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  *(v10 + v21) = JSONEncoder.init()();
  *(v10 + 16) = 18;
  *(v10 + 24) = v33;
  *(v10 + 32) = v34;
  *(v10 + 40) = v35;
  *(v10 + 48) = v36;
  v37(v10 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_uriSupportedState, v51, v50);
  outlined init with copy of SMAUserDefaultsProtocol((v0 + 2), v10 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator);
  outlined init with copy of SMAUserDefaultsProtocol((v0 + 7), v10 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_networkOperator);
  v40(v10 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_uniqueClientIdentifier, v39, v52);
  v25 = (v10 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_devicePushToken);
  swift_beginAccess();
  v26 = *v25;
  v27 = v25[1];
  *v25 = v42;
  v25[1] = v43;
  outlined copy of Data?(v42, v43);

  outlined consume of Data?(v26, v27);
  v28 = *(v10 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_encoder);
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  v29 = type metadata accessor for TaskPriority();
  (*(*(v29 - 8) + 56))(v45, 1, 1, v29);

  v30 = static RegistrationActor.shared.getter();
  v31 = swift_allocObject();
  v31[2] = v30;
  v31[3] = v47;
  v31[4] = v10;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v45, &async function pointer to partial apply for closure #1 in KDSRegistrationStateMachine.rerun(), v31);

  outlined consume of Data?(v42, v43);
  (*(v48 + 8))(v39, v52);
  (*(v49 + 8))(v51, v50);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.update(simUniqueID:simLabelID:supportedState:uniqueClientIdentifier:completion:), 0, 0);
}

{
  v1 = *(v0 + 456);
  v3 = *(v0 + 392);
  v2 = *(v0 + 400);
  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  v6 = (*((*MEMORY[0x277D85000] & **(v0 + 224)) + 0xE0))(v0 + 96);
  v8 = v7;
  v9 = *v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v8;
  *v8 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v1, v5, v4, isUniquelyReferenced_nonNull_native);

  *v8 = v17;
  v6(v0 + 96, 0);
  outlined consume of Data?(v3, v2);
  v11 = *((*MEMORY[0x277D85000] & **(v0 + 224)) + 0x148);
  v16 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v0 + 464) = v13;
  *v13 = v0;
  v13[1] = closure #2 in KDSRegistrationDaemon.update(simUniqueID:simLabelID:supportedState:uniqueClientIdentifier:completion:);
  v14 = *(v0 + 224);

  return v16();
}

{
  v1 = *(*v0 + 464);
  v3 = *v0;

  return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.update(simUniqueID:simLabelID:supportedState:uniqueClientIdentifier:completion:), 0, 0);
}

{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[33];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[21];
  KDSRegistration.SupportedStateUpdateProcessedContext.init()();

  v7 = v0[1];

  return v7();
}

{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[36];
  v4 = v0[33];
  v6 = v0[29];
  v5 = v0[30];

  v7 = v0[1];
  v8 = v0[42];

  return v7();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String, @guaranteed String, @in_guaranteed KDSRegistration.URISupportedState, @in_guaranteed KDSRegistration.UniqueClientIdentifier) -> (@out KDSRegistration.SupportedStateUpdateProcessedContext, @error @owned Error)(uint64_t a1, uint64_t *a2, int *a3)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SS15SecureMessaging15KDSRegistrationO17URISupportedStateOAC22UniqueClientIdentifierVtMd, &_sSS_SS15SecureMessaging15KDSRegistrationO17URISupportedStateOAC22UniqueClientIdentifierVtMR);
  v12 = *(v11 + 64);
  v13 = *(v11 + 80);
  v17 = (a3 + *a3);
  v14 = a3[1];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v17(a1, v7, v8, v9, v10, a2 + v12, a2 + v13);
}

uint64_t KDSRegistrationDaemon.isRegistered(simUniqueID:context:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  type metadata accessor for KDSRegistration.IsRegisteredError();
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  v11 = swift_allocObject();
  *(v11 + 16) = &async function pointer to partial apply for closure #2 in KDSRegistrationDaemon.isRegistered(simUniqueID:context:completion:);
  *(v11 + 24) = v10;
  outlined copy of Data._Representation(a3, a4);

  v12 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_15SecureMessaging15KDSRegistrationO19IsRegisteredContextVSgtMd, &_sSS_15SecureMessaging15KDSRegistrationO19IsRegisteredContextVSgtMR);
  type metadata accessor for KDSRegistration.IsRegisteredResult();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError, MEMORY[0x277D4CA10]);
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredResult and conformance KDSRegistration.IsRegisteredResult, MEMORY[0x277D4CA70]);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in KDSRegistrationDaemon.isRegistered(simUniqueID:context:completion:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15KDSRegistrationO19IsRegisteredContextVSgMd, &_s15SecureMessaging15KDSRegistrationO19IsRegisteredContextVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - v9;
  v11 = type metadata accessor for JSONDecoder();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type KDSRegistration.IsRegisteredContext? and conformance <A> A?();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v3)
  {
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_15SecureMessaging15KDSRegistrationO19IsRegisteredContextVSgtMd, &_sSS_15SecureMessaging15KDSRegistrationO19IsRegisteredContextVSgtMR) + 48);
    *a3 = a1;
    a3[1] = a2;
    outlined init with take of KDSRegistration.IsRegisteredContext?(v10, a3 + v15);
  }

  return result;
}

uint64_t closure #2 in KDSRegistrationDaemon.isRegistered(simUniqueID:context:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a3;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  IsRegistered = type metadata accessor for KDSRegistration.IsRegisteredError.ErrorType();
  v5[6] = IsRegistered;
  v7 = *(IsRegistered - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.isRegistered(simUniqueID:context:completion:), 0, 0);
}

uint64_t closure #2 in KDSRegistrationDaemon.isRegistered(simUniqueID:context:completion:)()
{
  v22 = v0;
  v2 = v0[4];
  v1 = v0[5];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[3];
    v5 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v21);
    _os_log_impl(&dword_26524C000, v3, v4, "KDSRegistrationDaemon isRegistered called for uniqueID: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x2667577B0](v8, -1, -1);
    MEMORY[0x2667577B0](v7, -1, -1);
  }

  v9 = (*((*MEMORY[0x277D85000] & *v0[5]) + 0xD0))();
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v0[3], v0[4]), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    v0[9] = v12;

    v13 = (*v12 + 240) & 0xFFFFFFFFFFFFLL | 0x9D01000000000000;
    v0[10] = *(*v12 + 240);
    v0[11] = v13;
    type metadata accessor for RegistrationActor();
    v0[12] = static RegistrationActor.shared.getter();
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
    v15 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.isRegistered(simUniqueID:context:completion:), v15, v14);
  }

  else
  {
    v17 = v0[7];
    v16 = v0[8];
    v18 = v0[6];

    (*(v17 + 104))(v16, *MEMORY[0x277D4CA00], v18);
    type metadata accessor for KDSRegistration.IsRegisteredError();
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError, MEMORY[0x277D4CA10]);
    swift_allocError();
    KDSRegistration.IsRegisteredError.init(type:underlyingErrorDescription:)();
    swift_willThrow();

    v19 = v0[1];

    return v19();
  }
}

{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);

  *(v0 + 104) = v4(v5);

  return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.isRegistered(simUniqueID:context:completion:), 0, 0);
}

{
  v1 = *(v0 + 104);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 16);
  KDSRegistration.IsRegisteredResult.init(isRegistered:)();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String, @in_guaranteed KDSRegistration.IsRegisteredContext?) -> (@out KDSRegistration.IsRegisteredResult, @error @owned Error)(uint64_t a1, uint64_t *a2, int *a3)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_15SecureMessaging15KDSRegistrationO19IsRegisteredContextVSgtMd, &_sSS_15SecureMessaging15KDSRegistrationO19IsRegisteredContextVSgtMR) + 48);
  v13 = (a3 + *a3);
  v10 = a3[1];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v13(a1, v7, v8, a2 + v9);
}

uint64_t KDSRegistrationDaemon.signWithParticipantKey(simUniqueID:input:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  type metadata accessor for KDSRegistration.SignWithParticipantKeyError();
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  v11 = swift_allocObject();
  *(v11 + 16) = &async function pointer to partial apply for closure #2 in KDSRegistrationDaemon.signWithParticipantKey(simUniqueID:input:completion:);
  *(v11 + 24) = v10;
  outlined copy of Data._Representation(a3, a4);

  v12 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_15SecureMessaging15KDSRegistrationO12SigningInputVtMd, &_sSS_15SecureMessaging15KDSRegistrationO12SigningInputVtMR);
  type metadata accessor for KDSRegistration.SigningOutput();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError, MEMORY[0x277D4CBC8]);
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.SigningOutput and conformance KDSRegistration.SigningOutput, MEMORY[0x277D4C978]);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in KDSRegistrationDaemon.signWithParticipantKey(simUniqueID:input:completion:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, char *a3@<X8>)
{
  v17 = a1;
  v6 = type metadata accessor for KDSRegistration.SigningInput();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for JSONDecoder();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.SigningInput and conformance KDSRegistration.SigningInput, MEMORY[0x277D4C968]);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v3)
  {
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_15SecureMessaging15KDSRegistrationO12SigningInputVtMd, &_sSS_15SecureMessaging15KDSRegistrationO12SigningInputVtMR) + 48);
    *a3 = v17;
    *(a3 + 1) = a2;
    (*(v7 + 32))(&a3[v15], v10, v6);
  }

  return result;
}

uint64_t closure #2 in KDSRegistrationDaemon.signWithParticipantKey(simUniqueID:input:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for KDSRegistration.SignWithParticipantKeyError.ErrorType();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = type metadata accessor for KDSRegistration.SigningInput.InputType();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v13 = type metadata accessor for URI();
  v5[14] = v13;
  v14 = *(v13 - 8);
  v5[15] = v14;
  v15 = *(v14 + 64) + 15;
  v5[16] = swift_task_alloc();
  v16 = type metadata accessor for KDSRegistration.SigningInput();
  v5[17] = v16;
  v17 = *(v16 - 8);
  v5[18] = v17;
  v18 = *(v17 + 64) + 15;
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.signWithParticipantKey(simUniqueID:input:completion:), 0, 0);
}

uint64_t closure #2 in KDSRegistrationDaemon.signWithParticipantKey(simUniqueID:input:completion:)()
{
  v43 = v0;
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[4];
  v0[20] = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_logger;
  (*(v2 + 16))(v1, v4, v3);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[18];
  v10 = v0[19];
  v12 = v0[17];
  if (v9)
  {
    v14 = v0[3];
    v13 = v0[4];
    v15 = swift_slowAlloc();
    v42[0] = swift_slowAlloc();
    v16 = v42[0];
    *v15 = 136315394;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, v42);
    *(v15 + 12) = 2080;
    v17 = KDSRegistration.SigningInput.description.getter();
    v19 = v18;
    (*(v11 + 8))(v10, v12);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v42);

    *(v15 + 14) = v20;
    _os_log_impl(&dword_26524C000, v7, v8, "KDSRegistrationDaemon signWithParticipantKey called for uniqueID: %s. { signingInput: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v16, -1, -1);
    MEMORY[0x2667577B0](v15, -1, -1);
  }

  else
  {

    v21 = (*(v11 + 8))(v10, v12);
  }

  v22 = (*((*MEMORY[0x277D85000] & *v0[6]) + 0xD0))(v21);
  if (*(v22 + 16) && (v23 = specialized __RawDictionaryStorage.find<A>(_:)(v0[3], v0[4]), (v24 & 1) != 0))
  {
    v25 = *(*(v22 + 56) + 8 * v23);
    v0[21] = v25;

    v26 = *v25 + 360;
    v0[22] = *v26;
    v0[23] = v26 & 0xFFFFFFFFFFFFLL | 0xBFD4000000000000;
    type metadata accessor for RegistrationActor();
    v0[24] = static RegistrationActor.shared.getter();
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
    v28 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.signWithParticipantKey(simUniqueID:input:completion:), v28, v27);
  }

  else
  {

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_26524C000, v29, v30, "KDSRegistrationDaemon signWithParticipantKey failed, no state machine found.", v31, 2u);
      MEMORY[0x2667577B0](v31, -1, -1);
    }

    v33 = v0[8];
    v32 = v0[9];
    v34 = v0[7];

    (*(v33 + 104))(v32, *MEMORY[0x277D4CBB0], v34);
    type metadata accessor for KDSRegistration.SignWithParticipantKeyError();
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError, MEMORY[0x277D4CBC8]);
    swift_allocError();
    KDSRegistration.IsRegisteredError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    v35 = v0[19];
    v36 = v0[16];
    v38 = v0[12];
    v37 = v0[13];
    v39 = v0[9];

    v40 = v0[1];

    return v40();
  }
}

{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[13];

  v4(v6);

  return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.signWithParticipantKey(simUniqueID:input:completion:), 0, 0);
}

{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[20];
    v5 = v0[6];
    outlined destroy of MLS.KeyPackageProvider?(v3, &_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_26524C000, v6, v7, "KDSRegistrationDaemon signWithParticipantKey failed, no tel uri found.", v8, 2u);
      MEMORY[0x2667577B0](v8, -1, -1);
    }

    v9 = v0[21];
    v11 = v0[8];
    v10 = v0[9];
    v12 = v0[7];

    (*(v11 + 104))(v10, *MEMORY[0x277D4CBA8], v12);
    type metadata accessor for KDSRegistration.SignWithParticipantKeyError();
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError, MEMORY[0x277D4CBC8]);
    swift_allocError();
    KDSRegistration.IsRegisteredError.init(type:underlyingErrorDescription:)();
    swift_willThrow();

    v13 = v0[19];
    v14 = v0[16];
    v16 = v0[12];
    v15 = v0[13];
    v17 = v0[9];

    v18 = v0[1];

    return v18();
  }

  else
  {
    v21 = v0[11];
    v20 = v0[12];
    v22 = v0[10];
    v23 = v0[5];
    (*(v2 + 32))(v0[16], v3, v1);
    KDSRegistration.SigningInput.inputType.getter();
    if ((*(v21 + 88))(v20, v22) == *MEMORY[0x277D4C960])
    {
      v24 = v0[20];
      v25 = v0[12];
      v26 = v0[6];
      (*(v0[11] + 96))(v25, v0[10]);
      v27 = *v25;
      v0[25] = *v25;
      v28 = v25[1];
      v0[26] = v28;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_26524C000, v29, v30, "KDSRegistrationDaemon signWithParticipantKey getting nonce signature.", v31, 2u);
        MEMORY[0x2667577B0](v31, -1, -1);
      }

      v32 = v0[6];

      v33 = *(v32 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_mlsDaemon);
      v34 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_mlsDaemonID;
      v35 = swift_task_alloc();
      v0[27] = v35;
      *v35 = v0;
      v35[1] = closure #2 in KDSRegistrationDaemon.signWithParticipantKey(simUniqueID:input:completion:);
      v36 = v0[16];

      return MLSDaemon.signWithParticipantKey(nonce:for:with:)(v27, v28, v36, v32 + v34);
    }

    else
    {
      v37 = v0[10];

      return MEMORY[0x2821FDEB8](v37, v37);
    }
  }
}

{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[21];
  v6 = v0[19];
  v8 = v0[15];
  v7 = v0[16];
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  v15 = v0[9];
  v12 = v0[2];
  KDSRegistration.SigningOutput.init(signature:)();
  outlined consume of Data._Representation(v3, v4);

  (*(v8 + 8))(v7, v9);

  v13 = v0[1];

  return v13();
}

{
  v1 = v0[21];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  outlined consume of Data._Representation(v0[25], v0[26]);

  (*(v3 + 8))(v2, v4);
  v5 = v0[28];
  v6 = v0[19];
  v7 = v0[16];
  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t closure #2 in KDSRegistrationDaemon.signWithParticipantKey(simUniqueID:input:completion:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 216);
  v8 = *v3;
  *(*v3 + 224) = v2;

  if (v2)
  {
    v9 = closure #2 in KDSRegistrationDaemon.signWithParticipantKey(simUniqueID:input:completion:);
  }

  else
  {
    *(v6 + 232) = a2;
    *(v6 + 240) = a1;
    v9 = closure #2 in KDSRegistrationDaemon.signWithParticipantKey(simUniqueID:input:completion:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t KDSRegistrationDaemon.signWithParticipantKey(nonce:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](KDSRegistrationDaemon.signWithParticipantKey(nonce:for:), 0, 0);
}

uint64_t KDSRegistrationDaemon.signWithParticipantKey(nonce:for:)()
{
  v1 = v0[5];
  v2 = *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_mlsDaemon);
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_mlsDaemonID;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = KDSRegistrationDaemon.signWithParticipantKey(nonce:for:);
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return MLSDaemon.signWithParticipantKey(nonce:for:with:)(v7, v5, v6, v1 + v3);
}

uint64_t KDSRegistrationDaemon.signWithParticipantKey(nonce:for:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 48);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String, @in_guaranteed KDSRegistration.SigningInput) -> (@out KDSRegistration.SigningOutput, @error @owned Error)(uint64_t a1, uint64_t *a2, int *a3)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_15SecureMessaging15KDSRegistrationO12SigningInputVtMd, &_sSS_15SecureMessaging15KDSRegistrationO12SigningInputVtMR) + 48);
  v13 = (a3 + *a3);
  v10 = a3[1];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v13(a1, v7, v8, a2 + v9);
}

uint64_t KDSRegistrationDaemon.save(registrationStateMachine:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](KDSRegistrationDaemon.save(registrationStateMachine:), 0, 0);
}

uint64_t KDSRegistrationDaemon.save(registrationStateMachine:)()
{
  v1 = *(**(v0[3] + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_registrationPersister) + 152);
  v6 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = closure #1 in closure #1 in KDSRegistrationDaemon.start();
  v4 = v0[2];

  return v6(v4);
}

uint64_t KDSRegistrationDaemon.loadRegistrationStateMachines()()
{
  *(v1 + 48) = v0;
  return MEMORY[0x2822009F8](KDSRegistrationDaemon.loadRegistrationStateMachines(), 0, 0);
}

{
  v1 = *(**(*(v0 + 48) + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_registrationPersister) + 160);
  v6 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = KDSRegistrationDaemon.loadRegistrationStateMachines();
  v4 = *(v0 + 48);

  return v6(v4);
}

{
  v45 = v0;
  v1 = *(v0 + 64);
  if (v1 >> 62)
  {
LABEL_28:
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_29:
    v36 = *(v42 + 64);

    v37 = *(v42 + 8);

    return v37();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_29;
  }

LABEL_3:
  if (result < 1)
  {
    __break(1u);
    return result;
  }

  v3 = 0;
  v4 = v42 + 16;
  v41 = *((*MEMORY[0x277D85000] & **(v42 + 48)) + 0xE0);
  v40 = v1 & 0xC000000000000001;
  v38 = *(v42 + 64) + 32;
  v39 = result;
  while (1)
  {
    v43 = v3;
    if (v40)
    {
      v7 = MEMORY[0x266756D10](v3, *(v42 + 64));
    }

    else
    {
      v7 = *(v38 + 8 * v3);
    }

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v44 = v11;
      *v10 = 136315138;
      v12 = *(v7 + 24);
      v13 = *(v7 + 32);

      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v44);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_26524C000, v8, v9, "KDSRegistrationDaemon loaded state machine for uniqueID: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x2667577B0](v11, -1, -1);
      MEMORY[0x2667577B0](v10, -1, -1);
    }

    v15 = *(v42 + 48);
    v17 = *(v7 + 24);
    v16 = *(v7 + 32);

    v18 = v4;
    v19 = v41(v4);
    v21 = v20;
    v22 = *v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = *v21;
    v1 = v44;
    *v21 = 0x8000000000000000;
    v25 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v16);
    v26 = *(v1 + 16);
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v29 = v24;
    if (*(v1 + 24) < v28)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v1 = v44;
      if (v24)
      {
        goto LABEL_5;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      v1 = v44;
      if (v29)
      {
LABEL_5:
        v5 = *(v1 + 56);
        v6 = *(v5 + 8 * v25);
        *(v5 + 8 * v25) = v7;

        goto LABEL_6;
      }
    }

LABEL_19:
    *(v1 + 8 * (v25 >> 6) + 64) |= 1 << v25;
    v32 = (*(v1 + 48) + 16 * v25);
    *v32 = v17;
    v32[1] = v16;
    *(*(v1 + 56) + 8 * v25) = v7;
    v33 = *(v1 + 16);
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_27;
    }

    *(v1 + 16) = v35;
LABEL_6:
    v3 = v43 + 1;
    *v21 = v1;
    v4 = v18;
    v19(v18, 0);

    if (v39 == v43 + 1)
    {
      goto LABEL_29;
    }
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, isUniquelyReferenced_nonNull_native);
  v30 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v16);
  if ((v29 & 1) == (v31 & 1))
  {
    v25 = v30;
    v1 = v44;
    if (v29)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.fault.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_26524C000, v4, v5, "failed to load state machines. error: %@", v8, 0xCu);
    outlined destroy of MLS.KeyPackageProvider?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2667577B0](v9, -1, -1);
    MEMORY[0x2667577B0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t KDSRegistrationDaemon.loadRegistrationStateMachines()(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v7 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v5 = KDSRegistrationDaemon.loadRegistrationStateMachines();
  }

  else
  {
    v5 = KDSRegistrationDaemon.loadRegistrationStateMachines();
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t KDSRegistrationDaemon.updatePushHandlerIfNeeded()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](KDSRegistrationDaemon.updatePushHandlerIfNeeded(), 0, 0);
}

{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0xD0))();
  *(v0 + 24) = v2;
  v3 = *(v2 + 32);
  *(v0 + 160) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -(-1 << v3));
  }

  v6 = v4 & *(v2 + 64);
  if (v6)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 32) = v6;
    *(v0 + 40) = v7;
    v10 = *(*(v2 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v6)))));
    *(v0 + 48) = v10;
    v11 = (*v10 + 240) & 0xFFFFFFFFFFFFLL | 0x9D01000000000000;
    *(v0 + 56) = *(*v10 + 240);
    *(v0 + 64) = v11;
    *(v0 + 72) = type metadata accessor for RegistrationActor();

    *(v0 + 80) = static RegistrationActor.shared.getter();
    *(v0 + 88) = _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
    v12 = dispatch thunk of Actor.unownedExecutor.getter();
    v14 = v13;
    v15 = KDSRegistrationDaemon.updatePushHandlerIfNeeded();
  }

  else
  {
    v8 = 0;
    v9 = ((63 - v5) >> 6) - 1;
    while (v9 != v8)
    {
      v7 = v8 + 1;
      v6 = *(v2 + 8 * v8++ + 72);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v16 = *(v0 + 16);

    v17 = *(v16 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_pushHandler);
    *(v0 + 96) = v17;
    v18 = (*v1 & *v17) + 168;
    *(v0 + 104) = *((*v1 & *v17) + 0xA8);
    *(v0 + 112) = v18 & 0xFFFFFFFFFFFFLL | 0x3646000000000000;
    type metadata accessor for RegistrationActor();
    *(v0 + 120) = static RegistrationActor.shared.getter();
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
    v12 = dispatch thunk of Actor.unownedExecutor.getter();
    v14 = v19;
    v15 = KDSRegistrationDaemon.updatePushHandlerIfNeeded();
  }

  return MEMORY[0x2822009F8](v15, v12, v14);
}

{
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 48);

  *(v0 + 161) = v3(v5);

  return MEMORY[0x2822009F8](KDSRegistrationDaemon.updatePushHandlerIfNeeded(), 0, 0);
}

{
  if (*(v0 + 161) == 26)
  {
    v1 = *(v0 + 88);
    v2 = *(*(v0 + 16) + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_pushHandler);
    v3 = *(v0 + 72);
    *(v0 + 128) = v2;
    v4 = (*MEMORY[0x277D85000] & *v2) + 168;
    *(v0 + 136) = *((*MEMORY[0x277D85000] & *v2) + 0xA8);
    *(v0 + 144) = v4 & 0xFFFFFFFFFFFFLL | 0x3646000000000000;
    *(v0 + 152) = static RegistrationActor.shared.getter();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = KDSRegistrationDaemon.updatePushHandlerIfNeeded();
LABEL_10:
    v11 = v8;
    v12 = v5;
    v13 = v7;

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  v9 = *(v0 + 48);
  v10 = *(v0 + 32);

  v14 = *(v0 + 40);
  v15 = (v10 - 1) & v10;
  if (v15)
  {
    v11 = *(v0 + 24);
LABEL_9:
    *(v0 + 32) = v15;
    *(v0 + 40) = v14;
    v17 = *(*(v11 + 56) + ((v14 << 9) | (8 * __clz(__rbit64(v15)))));
    *(v0 + 48) = v17;
    v18 = (*v17 + 240) & 0xFFFFFFFFFFFFLL | 0x9D01000000000000;
    *(v0 + 56) = *(*v17 + 240);
    *(v0 + 64) = v18;
    *(v0 + 72) = type metadata accessor for RegistrationActor();

    *(v0 + 80) = static RegistrationActor.shared.getter();
    *(v0 + 88) = _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v19;
    v8 = KDSRegistrationDaemon.updatePushHandlerIfNeeded();
    goto LABEL_10;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    v11 = *(v0 + 24);
    if (v16 >= (((1 << *(v0 + 160)) + 63) >> 6))
    {
      v20 = *(v0 + 16);

      v21 = *(v20 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_pushHandler);
      *(v0 + 96) = v21;
      v22 = (*MEMORY[0x277D85000] & *v21) + 168;
      *(v0 + 104) = *((*MEMORY[0x277D85000] & *v21) + 0xA8);
      *(v0 + 112) = v22 & 0xFFFFFFFFFFFFLL | 0x3646000000000000;
      type metadata accessor for RegistrationActor();
      *(v0 + 120) = static RegistrationActor.shared.getter();
      _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
      v5 = dispatch thunk of Actor.unownedExecutor.getter();
      v7 = v23;
      v8 = KDSRegistrationDaemon.updatePushHandlerIfNeeded();
      goto LABEL_10;
    }

    v15 = *(v11 + 8 * v16 + 64);
    ++v14;
    if (v15)
    {
      v14 = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];

  v4(0);
  v5 = v0[1];

  return v5();
}

{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v4 = v0[17];

  v4(1);

  return MEMORY[0x2822009F8](KDSRegistrationDaemon.updatePushHandlerIfNeeded(), 0, 0);
}

{
  v1 = v0[6];
  v2 = v0[3];

  v3 = v0[1];

  return v3();
}

uint64_t KDSRegistrationDaemon.setupHeartbeat(nextHeartbeatInterval:)(double a1)
{
  v5 = *MEMORY[0x277D85DE8];
  *(v2 + 32) = v1;
  *(v2 + 24) = a1;
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](KDSRegistrationDaemon.setupHeartbeat(nextHeartbeatInterval:), 0, 0);
}

uint64_t KDSRegistrationDaemon.setupHeartbeat(nextHeartbeatInterval:)()
{
  v48 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 4);
  v2 = objc_opt_self();
  v3 = [v2 sharedScheduler];
  v4 = *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_heartbeatBGActivity);
  v5 = *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_heartbeatBGActivity + 8);
  v6 = MEMORY[0x266756A10](v4, v5);
  v7 = [v3 taskRequestForIdentifier_];

  if (v7)
  {
    v8 = *(v0 + 4);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_26524C000, v9, v10, "KDSRegistrationDaemon -- SetupHeartbeat already has tasked scheduled. Canceling and rescheduling.", v11, 2u);
      MEMORY[0x2667577B0](v11, -1, -1);
    }

    v12 = [v2 sharedScheduler];
    v13 = MEMORY[0x266756A10](v4, v5);
    v0[2] = 0.0;
    v14 = [v12 cancelTaskRequestWithIdentifier:v13 error:v0 + 2];

    v15 = *(v0 + 2);
    if (v14)
    {
      v16 = v15;
    }

    else
    {
      v17 = v15;
      v18 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v19 = v18;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        v24 = v18;
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v22 + 4) = v25;
        *v23 = v25;
        _os_log_impl(&dword_26524C000, v20, v21, "KDSRegistraitonDaemon -- SetupHeartbeat hit error canceling existing scheduled task. { error: %@ }", v22, 0xCu);
        outlined destroy of MLS.KeyPackageProvider?(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x2667577B0](v23, -1, -1);
        MEMORY[0x2667577B0](v22, -1, -1);
      }

      else
      {
      }
    }
  }

  v26 = *(v0 + 4);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = *(v0 + 3);
    v30 = swift_slowAlloc();
    *v30 = 134217984;
    *(v30 + 4) = v29;
    _os_log_impl(&dword_26524C000, v27, v28, "KDSRegistrationDaemon -- SetupHeartbeat scheduling new heartbeat with interval: %f", v30, 0xCu);
    MEMORY[0x2667577B0](v30, -1, -1);
  }

  v31 = v0[3];

  v32 = objc_allocWithZone(MEMORY[0x277CF07C8]);
  v33 = MEMORY[0x266756A10](v4, v5);
  v34 = [v32 initWithIdentifier_];

  [v34 setScheduleAfter_];
  v35 = v34;
  [v35 setRequiresExternalPower_];
  [v35 setRequiresNetworkConnectivity_];
  [v35 setPriority_];
  [v35 setRequiresProtectionClass_];

  v36 = [v2 sharedScheduler];
  v0[2] = 0.0;
  v37 = [v36 submitTaskRequest:v35 error:v0 + 2];

  v38 = *(v0 + 2);
  if (v37)
  {
    v39 = v38;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_26524C000, v40, v41, "KDSRegistrationDaemon -- SetupHeartbeat submitted background task.", v42, 2u);
      MEMORY[0x2667577B0](v42, -1, -1);
    }

    v43 = *(v0 + 1);
    v44 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v45 = v38;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v43 = *(v0 + 1);
    v46 = *MEMORY[0x277D85DE8];
  }

  return v43();
}

uint64_t KDSRegistrationDaemon.heartbeatRegistration(heartbeatBGTask:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](KDSRegistrationDaemon.heartbeatRegistration(heartbeatBGTask:), 0, 0);
}

unint64_t KDSRegistrationDaemon.heartbeatRegistration(heartbeatBGTask:)()
{
  v92 = v0;
  v1 = *(v0 + 24);
  *(v0 + 32) = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_logger;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26524C000, v2, v3, "KDSRegistrationDaemon -- heartbeatRegistration called", v4, 2u);
    MEMORY[0x2667577B0](v4, -1, -1);
  }

  v5 = *(v0 + 24);

  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So17OS_os_transaction_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v87 = *((*MEMORY[0x277D85000] & *v5) + 0xD0);
  v7 = v87();
  v8 = v0;
  v9 = 0;
  v10 = v7 + 64;
  v11 = -1;
  v12 = -1 << *(v7 + 32);
  if (-v12 < 64)
  {
    v11 = ~(-1 << -v12);
  }

  v13 = v11 & *(v7 + 64);
  v14 = (63 - v12) >> 6;
  v90 = v7;
  v88 = v8;
LABEL_6:
  *(v8 + 40) = v6;
  while (v13)
  {
LABEL_12:
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v17 = (*(v90 + 48) + ((v9 << 10) | (16 * v16)));
    v19 = *v17;
    v18 = v17[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_2653419E0;
    *(v20 + 56) = MEMORY[0x277D837D0];
    *(v20 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v20 + 32) = v19;
    *(v20 + 40) = v18;
    swift_bridgeObjectRetain_n();
    String.init(format:_:)();
    String.utf8CString.getter();

    v21 = os_transaction_create();

    if (v21)
    {
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v91 = v6;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v19, v18);
      v30 = v6[2];
      v31 = (v29 & 1) == 0;
      v32 = __OFADD__(v30, v31);
      v33 = v30 + v31;
      if (v32)
      {
        __break(1u);
      }

      else
      {
        if (v6[3] < v33)
        {
          v34 = v29;
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, isUniquelyReferenced_nonNull_native);
          result = specialized __RawDictionaryStorage.find<A>(_:)(v19, v18);
          if ((v34 & 1) == (v35 & 1))
          {
            if ((v34 & 1) == 0)
            {
              goto LABEL_26;
            }

LABEL_24:
            v36 = result;

            v6 = v91;
            v37 = v91[7];
            v38 = *(v37 + 8 * v36);
            *(v37 + 8 * v36) = v21;
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v8 = v88;
            goto LABEL_6;
          }

LABEL_53:

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          if (v29)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v39 = result;
          v40 = v29;
          specialized _NativeDictionary.copy()();
          result = v39;
          if (v40)
          {
            goto LABEL_24;
          }
        }

LABEL_26:
        v6 = v91;
        v91[(result >> 6) + 8] |= 1 << result;
        v41 = (v6[6] + 16 * result);
        *v41 = v19;
        v41[1] = v18;
        *(v6[7] + 8 * result) = v21;
        result = swift_unknownObjectRelease();
        v42 = v6[2];
        v32 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (!v32)
        {
          v6[2] = v43;
          v8 = v88;
          goto LABEL_6;
        }
      }

      __break(1u);
      return result;
    }

    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v18);
    v24 = v23;

    if (v24)
    {
      v91 = v6;
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        specialized _NativeDictionary.copy()();
        v6 = v91;
      }

      v25 = *(v6[6] + 16 * v22 + 8);

      v26 = *(v6[7] + 8 * v22);
      swift_unknownObjectRelease();
      specialized _NativeDictionary._delete(at:)(v22, v6);
      v8 = v88;
      goto LABEL_6;
    }
  }

  while (1)
  {
    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_53;
    }

    if (v15 >= v14)
    {
      break;
    }

    v13 = *(v10 + 8 * v15);
    ++v9;
    if (v13)
    {
      v9 = v15;
      goto LABEL_12;
    }
  }

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_26524C000, v44, v45, "KDSRegistrationDaemon -- heartbeatRegistration transactions taken", v46, 2u);
    MEMORY[0x2667577B0](v46, -1, -1);
  }

  v47 = v88;
  v48 = *(v88 + 16);

  [v48 setTaskCompleted];
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_26524C000, v49, v50, "KDSRegistrationDaemon -- heartbeatRegistration set background task completed, heartbeating registration.", v51, 2u);
    MEMORY[0x2667577B0](v51, -1, -1);
  }

  v52 = *(v88 + 24);

  v53 = v87();
  *(v88 + 48) = v53;
  v54 = *(v53 + 32);
  *(v88 + 112) = v54;
  v55 = -1;
  v56 = -1 << v54;
  if (-(-1 << v54) < 64)
  {
    v55 = ~(-1 << -(-1 << v54));
  }

  v57 = v55 & *(v53 + 64);
  if (v57)
  {
    v58 = 0;
LABEL_39:
    *(v88 + 56) = v57;
    *(v88 + 64) = v58;
    v61 = *(v88 + 40);
    v62 = __clz(__rbit64(v57)) | (v58 << 6);
    v63 = (*(v53 + 48) + 16 * v62);
    v64 = *v63;
    *(v88 + 72) = *v63;
    v65 = v63[1];
    *(v88 + 80) = v65;
    v66 = *(*(v53 + 56) + 8 * v62);
    *(v88 + 88) = v66;
    v67 = *(v61 + 16);

    if (v67)
    {
      v68 = specialized __RawDictionaryStorage.find<A>(_:)(v64, v65);
      if (v69)
      {
        v70 = *(*(*(v88 + 40) + 56) + 8 * v68);
        *(v88 + 96) = v70;
        v71 = *(*v66 + 576);
        swift_unknownObjectRetain();
        v89 = (v71 + *v71);
        v72 = v71[1];
        v73 = swift_task_alloc();
        *(v88 + 104) = v73;
        *v73 = v88;
        v73[1] = KDSRegistrationDaemon.heartbeatRegistration(heartbeatBGTask:);

        return v89(v70);
      }
    }

    v75 = *(v88 + 24);
    v74 = *(v88 + 32);

    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();

    v78 = os_log_type_enabled(v76, v77);
    v79 = *(v88 + 40);
    v80 = *(v88 + 48);
    if (v78)
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v91 = v82;
      *v81 = 136315138;
      v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, &v91);

      *(v81 + 4) = v83;
      _os_log_impl(&dword_26524C000, v76, v77, "KDSRegistrationDaemon -- heartbeatRegistration found no transaction for simUniqueID: %s", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v82);
      v47 = v88;
      MEMORY[0x2667577B0](v82, -1, -1);
      MEMORY[0x2667577B0](v81, -1, -1);
    }

    else
    {
      v84 = *(v88 + 48);
    }
  }

  else
  {
    v59 = 0;
    v60 = ((63 - v56) >> 6) - 1;
    while (v60 != v59)
    {
      v58 = v59 + 1;
      v57 = *(v53 + 8 * v59++ + 72);
      if (v57)
      {
        goto LABEL_39;
      }
    }

    v85 = *(v88 + 40);
  }

  v86 = *(v47 + 8);

  return v86();
}

uint64_t KDSRegistrationDaemon.heartbeatRegistration(heartbeatBGTask:)()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x2822009F8](KDSRegistrationDaemon.heartbeatRegistration(heartbeatBGTask:), 0, 0);
}

void KDSRegistrationDaemon.heartbeatRegistration(heartbeatBGTask:)()
{
  v47 = v0;
  v1 = *(v0 + 80);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 88);
  v8 = *(v0 + 96);
  v9 = *(v0 + 80);
  if (v6)
  {
    v10 = *(v0 + 72);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v46 = v12;
    *v11 = 136315138;
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v46);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_26524C000, v4, v5, "KDSRegistrationDaemon -- heartbeatRegistration heartbeat triggered for simUniqueID: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x2667577B0](v12, -1, -1);
    MEMORY[0x2667577B0](v11, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = *(v0 + 96);
    swift_unknownObjectRelease();
  }

  v15 = *(v0 + 64);
  v16 = (*(v0 + 56) - 1) & *(v0 + 56);
  if (v16)
  {
    v17 = *(v0 + 48);
LABEL_10:
    *(v0 + 56) = v16;
    *(v0 + 64) = v15;
    v19 = *(v0 + 40);
    v20 = __clz(__rbit64(v16)) | (v15 << 6);
    v21 = (*(v17 + 48) + 16 * v20);
    v22 = *v21;
    *(v0 + 72) = *v21;
    v23 = v21[1];
    *(v0 + 80) = v23;
    v24 = *(*(v17 + 56) + 8 * v20);
    *(v0 + 88) = v24;
    v25 = *(v19 + 16);

    if (v25 && (v26 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v23), (v27 & 1) != 0))
    {
      v28 = *(*(*(v0 + 40) + 56) + 8 * v26);
      *(v0 + 96) = v28;
      v29 = *(*v24 + 576);
      swift_unknownObjectRetain();
      v45 = (v29 + *v29);
      v30 = v29[1];
      v31 = swift_task_alloc();
      *(v0 + 104) = v31;
      *v31 = v0;
      v31[1] = KDSRegistrationDaemon.heartbeatRegistration(heartbeatBGTask:);

      v45(v28);
    }

    else
    {
      v33 = *(v0 + 24);
      v32 = *(v0 + 32);

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();

      v36 = os_log_type_enabled(v34, v35);
      v37 = *(v0 + 40);
      v38 = *(v0 + 48);
      if (v36)
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v46 = v40;
        *v39 = 136315138;
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v46);

        *(v39 + 4) = v41;
        _os_log_impl(&dword_26524C000, v34, v35, "KDSRegistrationDaemon -- heartbeatRegistration found no transaction for simUniqueID: %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v40);
        MEMORY[0x2667577B0](v40, -1, -1);
        MEMORY[0x2667577B0](v39, -1, -1);
      }

      else
      {
        v42 = *(v0 + 48);
      }

LABEL_20:

      v44 = *(v0 + 8);

      v44();
    }
  }

  else
  {
    while (1)
    {
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v17 = *(v0 + 48);
      if (v18 >= (((1 << *(v0 + 112)) + 63) >> 6))
      {
        v43 = *(v0 + 40);

        goto LABEL_20;
      }

      v16 = *(v17 + 8 * v18 + 64);
      ++v15;
      if (v16)
      {
        v15 = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t KDSRegistrationDaemon.broadcastRegistrationState(uniqueClientIdentifier:simUniqueID:newRegistrationState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  IsRegisteredChanged = type metadata accessor for KDSRegistration.IsRegisteredChangedError.ErrorType();
  v5[7] = IsRegisteredChanged;
  v7 = *(IsRegisteredChanged - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15KDSRegistrationO28RegistrationCompletedContextVSgMd, &_s15SecureMessaging15KDSRegistrationO28RegistrationCompletedContextVSgMR) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  type metadata accessor for RegistrationActor();
  v5[11] = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[12] = v11;
  v5[13] = v10;

  return MEMORY[0x2822009F8](KDSRegistrationDaemon.broadcastRegistrationState(uniqueClientIdentifier:simUniqueID:newRegistrationState:), v11, v10);
}

uint64_t KDSRegistrationDaemon.broadcastRegistrationState(uniqueClientIdentifier:simUniqueID:newRegistrationState:)()
{
  v1 = (*(**(v0[6] + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_clientXPCServer) + 88))();
  if (*(v1 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(v0[2]), (v3 & 1) != 0))
  {
    v4 = v0[10];
    v5 = (*(v1 + 56) + 16 * v2);
    v0[14] = *v5;
    v6 = v5[1];
    v0[15] = v6;
    swift_unknownObjectRetain();

    v7 = type metadata accessor for KDSRegistration.RegistrationCompletedContext();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = *(*v6 + 104);
    v23 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    v0[16] = v10;
    *v10 = v0;
    v10[1] = KDSRegistrationDaemon.broadcastRegistrationState(uniqueClientIdentifier:simUniqueID:newRegistrationState:);
    v11 = v0[10];
    v12 = v0[4];
    v13 = v0[5];
    v14 = v0[3];

    return (v23)(v14, v12, v13, v11, DeregisterKeyPackageRequest.pushTokenForTesting.modify, 0);
  }

  else
  {
    v16 = v0[11];
    v18 = v0[8];
    v17 = v0[9];
    v19 = v0[7];

    (*(v18 + 104))(v17, *MEMORY[0x277D4CB58], v19);
    type metadata accessor for KDSRegistration.IsRegisteredChangedError();
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError, MEMORY[0x277D4CB68]);
    swift_allocError();
    KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    v21 = v0[9];
    v20 = v0[10];

    v22 = v0[1];

    return v22();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 136) = v0;

  outlined destroy of MLS.KeyPackageProvider?(v4, &_s15SecureMessaging15KDSRegistrationO28RegistrationCompletedContextVSgMd, &_s15SecureMessaging15KDSRegistrationO28RegistrationCompletedContextVSgMR);
  v6 = *(v2 + 104);
  v7 = *(v2 + 96);
  if (v0)
  {
    v8 = KDSRegistrationDaemon.broadcastRegistrationState(uniqueClientIdentifier:simUniqueID:newRegistrationState:);
  }

  else
  {
    v8 = KDSRegistrationDaemon.broadcastRegistrationState(uniqueClientIdentifier:simUniqueID:newRegistrationState:);
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

{
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  swift_unknownObjectRelease();

  v6 = v0[1];

  return v6();
}

{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[11];
  swift_unknownObjectRelease();

  v4 = v0[17];
  v6 = v0[9];
  v5 = v0[10];

  v7 = v0[1];

  return v7();
}

id KDSRegistrationDaemon.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t protocol witness for StateMachineOperator.getPhoneNumberInfo(for:) in conformance KDSRegistrationDaemon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return KDSRegistrationDaemon.getPhoneNumberInfo(for:)(a1, a2, a3);
}

uint64_t KDSRegistrationDaemon.getPhoneNumberInfo(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = type metadata accessor for PhoneNumberInfo(0);
  v4[8] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v7 = type metadata accessor for KDSRegistration.RegisterKeyPackageError.ErrorType();
  v4[10] = v7;
  v8 = *(v7 - 8);
  v4[11] = v8;
  v9 = *(v8 + 64) + 15;
  v4[12] = swift_task_alloc();
  v10 = type metadata accessor for URI();
  v4[13] = v10;
  v11 = *(v10 - 8);
  v4[14] = v11;
  v12 = *(v11 + 64) + 15;
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](KDSRegistrationDaemon.getPhoneNumberInfo(for:), 0, 0);
}

uint64_t KDSRegistrationDaemon.getPhoneNumberInfo(for:)()
{
  v42 = v0;
  v1 = specialized SMAUserDefaults.shouldUseTestNumber()();
  v2 = v0[7];
  if (v1)
  {
    v3 = v2;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[7];
    v8 = MEMORY[0x277D85000];
    if (v6)
    {
      v9 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v10 = v41;
      *v9 = 136315138;
      v0[2] = (*((*v8 & *v7) + 0xE8))();
      v0[3] = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v12 = String.init<A>(describing:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v41);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_26524C000, v4, v5, "test phone number: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x2667577B0](v10, -1, -1);
      MEMORY[0x2667577B0](v9, -1, -1);
    }

    else
    {
    }

    (*((*v8 & *v0[7]) + 0xE8))();
    if (v22)
    {
      v23 = v0[15];
      URI.init(prefixedURI:)();
      v24 = v0[8];
      v25 = v0[4];
      (*(v0[14] + 32))(v25, v0[15], v0[13]);
      v26 = (v25 + *(v24 + 20));
      *v26 = 0x4552432D54534554;
      v26[1] = 0xEF4C4149544E4544;
      *(v25 + *(v24 + 24)) = 0;
      v27 = v0[15];
      v28 = v0[12];
      v29 = v0[9];

      v30 = v0[1];
    }

    else
    {
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_26524C000, v31, v32, "No test phone number found.", v33, 2u);
        MEMORY[0x2667577B0](v33, -1, -1);
      }

      v35 = v0[11];
      v34 = v0[12];
      v36 = v0[10];

      (*(v35 + 104))(v34, *MEMORY[0x277D4CB38], v36);
      type metadata accessor for KDSRegistration.RegisterKeyPackageError();
      _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError, MEMORY[0x277D4CB48]);
      swift_allocError();
      KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
      swift_willThrow();
      v37 = v0[15];
      v38 = v0[12];
      v39 = v0[9];

      v30 = v0[1];
    }

    return v30();
  }

  else
  {
    v15 = *(**&v2[OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_phoneNumberProvider] + 88);
    v40 = (v15 + *v15);
    v16 = v15[1];
    v17 = swift_task_alloc();
    v0[16] = v17;
    *v17 = v0;
    v17[1] = KDSRegistrationDaemon.getPhoneNumberInfo(for:);
    v18 = v0[9];
    v19 = v0[5];
    v20 = v0[6];

    return v40(v18, v19, v20);
  }
}

{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = KDSRegistrationDaemon.getPhoneNumberInfo(for:);
  }

  else
  {
    v3 = KDSRegistrationDaemon.getPhoneNumberInfo(for:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  outlined init with take of PhoneNumberInfo(v0[9], v0[4]);
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t protocol witness for StateMachineOperator.publicSigningKey(for:) in conformance KDSRegistrationDaemon(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](protocol witness for StateMachineOperator.publicSigningKey(for:) in conformance KDSRegistrationDaemon, 0, 0);
}

uint64_t protocol witness for StateMachineOperator.publicSigningKey(for:) in conformance KDSRegistrationDaemon()
{
  v1 = v0[3];
  v2 = *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_mlsDaemon);
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_mlsDaemonID;
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = protocol witness for StateMachineOperator.publicSigningKey(for:) in conformance KDSRegistrationDaemon;
  v5 = v0[2];

  return MLSDaemon.publicSigningKey(for:with:)(v5, v1 + v3);
}

uint64_t KDSRegistrationDaemon.publicSigningKey(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](KDSRegistrationDaemon.publicSigningKey(for:), 0, 0);
}

uint64_t KDSRegistrationDaemon.publicSigningKey(for:)()
{
  v1 = v0[3];
  v2 = *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_mlsDaemon);
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_mlsDaemonID;
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = KDSRegistrationDaemon.publicSigningKey(for:);
  v5 = v0[2];

  return MLSDaemon.publicSigningKey(for:with:)(v5, v1 + v3);
}

uint64_t KDSRegistrationDaemon.publicSigningKey(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 32);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t protocol witness for StateMachineOperator.obtainPhoneAuthInfo(uniqueClientIdentifier:accountKey:) in conformance KDSRegistrationDaemon(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return KDSRegistrationDaemon.obtainPhoneAuthInfo(uniqueClientIdentifier:accountKey:)(a1, a2, a3, a4);
}

uint64_t KDSRegistrationDaemon.obtainPhoneAuthInfo(uniqueClientIdentifier:accountKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = type metadata accessor for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v12 = type metadata accessor for KDSRegistration.UniqueClientIdentifier();
  v5[13] = v12;
  v13 = *(v12 - 8);
  v5[14] = v13;
  v14 = *(v13 + 64) + 15;
  v5[15] = swift_task_alloc();
  type metadata accessor for RegistrationActor();
  v5[16] = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[17] = v16;
  v5[18] = v15;

  return MEMORY[0x2822009F8](KDSRegistrationDaemon.obtainPhoneAuthInfo(uniqueClientIdentifier:accountKey:), v16, v15);
}

uint64_t KDSRegistrationDaemon.obtainPhoneAuthInfo(uniqueClientIdentifier:accountKey:)()
{
  v44 = v0;
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  (*(v0[14] + 16))(v0[15], v0[3], v0[13]);
  outlined copy of Data._Representation(v3, v2);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(v3, v2);
  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[13];
  if (v6)
  {
    v40 = v0[4];
    v41 = v0[5];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v43[0] = v11;
    *v10 = 136315394;
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.UniqueClientIdentifier and conformance KDSRegistration.UniqueClientIdentifier, MEMORY[0x277D4CAE8]);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v8 + 8))(v7, v9);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, v43);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    v16 = Data.description.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v43);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_26524C000, v4, v5, "Obtaining phone auth info. { uniqueClientIdentifier: %s, accountKey: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v11, -1, -1);
    MEMORY[0x2667577B0](v10, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
  }

  v19 = v0[12];
  v20 = v0[6];
  outlined copy of Data._Representation(v0[4], v0[5]);
  v21 = KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.init(accountKey:hasAccountKeyChanged:)();
  v22 = (*(**(v20 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_clientXPCServer) + 88))(v21);
  if (*(v22 + 16) && (v23 = specialized __RawDictionaryStorage.find<A>(_:)(v0[3]), (v24 & 1) != 0))
  {
    v25 = (*(v22 + 56) + 16 * v23);
    v0[19] = *v25;
    v26 = v25[1];
    v0[20] = v26;
    swift_unknownObjectRetain();

    v27 = *(*v26 + 112);
    v42 = (v27 + *v27);
    v28 = v27[1];
    v29 = swift_task_alloc();
    v0[21] = v29;
    *v29 = v0;
    v29[1] = KDSRegistrationDaemon.obtainPhoneAuthInfo(uniqueClientIdentifier:accountKey:);
    v30 = v0[12];
    v31 = v0[2];

    return v42(v31, v30);
  }

  else
  {
    v33 = v0[16];
    v35 = v0[8];
    v34 = v0[9];
    v36 = v0[7];

    (*(v35 + 104))(v34, *MEMORY[0x277D4CBE8], v36);
    type metadata accessor for KDSRegistration.ObtainPhoneAuthenticationInfoError();
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError, MEMORY[0x277D4CC00]);
    swift_allocError();
    KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    v37 = v0[15];
    v38 = v0[9];
    (*(v0[11] + 8))(v0[12], v0[10]);

    v39 = v0[1];

    return v39();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 144);
  v6 = *(v2 + 136);
  if (v0)
  {
    v7 = KDSRegistrationDaemon.obtainPhoneAuthInfo(uniqueClientIdentifier:accountKey:);
  }

  else
  {
    v7 = KDSRegistrationDaemon.obtainPhoneAuthInfo(uniqueClientIdentifier:accountKey:);
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

{
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[11];
  v5 = v0[12];
  v8 = v0[9];
  v7 = v0[10];

  swift_unknownObjectRelease();

  (*(v6 + 8))(v5, v7);

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[16];

  swift_unknownObjectRelease();

  v4 = v0[22];
  v5 = v0[15];
  v6 = v0[9];
  (*(v0[11] + 8))(v0[12], v0[10]);

  v7 = v0[1];

  return v7();
}

uint64_t protocol witness for StateMachineOperator.credentialSigningRequest(for:) in conformance KDSRegistrationDaemon(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](protocol witness for StateMachineOperator.credentialSigningRequest(for:) in conformance KDSRegistrationDaemon, 0, 0);
}

uint64_t protocol witness for StateMachineOperator.credentialSigningRequest(for:) in conformance KDSRegistrationDaemon()
{
  v1 = v0[4];
  v2 = *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_mlsDaemon);
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_mlsDaemonID;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = protocol witness for StateMachineOperator.credentialSigningRequest(for:) in conformance KDSRegistrationDaemon;
  v5 = v0[2];
  v6 = v0[3];

  return MLSDaemon.credentialSigningRequest(for:with:)(v5, v6, v1 + v3);
}

uint64_t KDSRegistrationDaemon.credentialSigningRequest(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](protocol witness for StateMachineOperator.credentialSigningRequest(for:) in conformance KDSRegistrationDaemon, 0, 0);
}

uint64_t protocol witness for StateMachineOperator.updateClientID(clientID:uri:) in conformance KDSRegistrationDaemon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](protocol witness for StateMachineOperator.updateClientID(clientID:uri:) in conformance KDSRegistrationDaemon, 0, 0);
}

uint64_t protocol witness for StateMachineOperator.updateClientID(clientID:uri:) in conformance KDSRegistrationDaemon()
{
  v1 = v0[5];
  v2 = *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_mlsDaemon);
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_mlsDaemonID;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = protocol witness for StateMachineOperator.updateClientID(clientID:uri:) in conformance KDSRegistrationDaemon;
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return MLSDaemon.updateClientID(swiftMLSClientID:for:with:)(v7, v5, v6, v1 + v3);
}

uint64_t KDSRegistrationDaemon.updateClientID(clientID:uri:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](KDSRegistrationDaemon.updateClientID(clientID:uri:), 0, 0);
}

uint64_t KDSRegistrationDaemon.updateClientID(clientID:uri:)()
{
  v1 = v0[5];
  v2 = *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_mlsDaemon);
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_mlsDaemonID;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = KDSRegistrationDaemon.updateClientID(clientID:uri:);
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return MLSDaemon.updateClientID(swiftMLSClientID:for:with:)(v7, v5, v6, v1 + v3);
}

{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t protocol witness for StateMachineOperator.loadCredential(credential:uri:) in conformance KDSRegistrationDaemon(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](protocol witness for StateMachineOperator.loadCredential(credential:uri:) in conformance KDSRegistrationDaemon, 0, 0);
}

uint64_t protocol witness for StateMachineOperator.loadCredential(credential:uri:) in conformance KDSRegistrationDaemon()
{
  v1 = v0[4];
  v2 = *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_mlsDaemon);
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_mlsDaemonID;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = protocol witness for StateMachineOperator.credentialSigningRequest(for:) in conformance KDSRegistrationDaemon;
  v6 = v0[2];
  v5 = v0[3];

  return MLSDaemon.loadCredential(credential:uri:with:)(v6, v5, v1 + v3);
}

uint64_t KDSRegistrationDaemon.loadCredential(credential:uri:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](protocol witness for StateMachineOperator.loadCredential(credential:uri:) in conformance KDSRegistrationDaemon, 0, 0);
}

uint64_t protocol witness for StateMachineOperator.getKeyPackage(for:) in conformance KDSRegistrationDaemon(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](protocol witness for StateMachineOperator.getKeyPackage(for:) in conformance KDSRegistrationDaemon, 0, 0);
}

uint64_t protocol witness for StateMachineOperator.getKeyPackage(for:) in conformance KDSRegistrationDaemon()
{
  v1 = v0[4];
  v2 = *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_mlsDaemon);
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_mlsDaemonID;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = protocol witness for StateMachineOperator.credentialSigningRequest(for:) in conformance KDSRegistrationDaemon;
  v5 = v0[2];
  v6 = v0[3];

  return MLSDaemon.getKeyPackage(for:with:)(v5, v6, v1 + v3);
}

uint64_t KDSRegistrationDaemon.getKeyPackage(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](protocol witness for StateMachineOperator.getKeyPackage(for:) in conformance KDSRegistrationDaemon, 0, 0);
}

uint64_t protocol witness for StateMachineOperator.save(registrationStateMachine:) in conformance KDSRegistrationDaemon(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & **v1) + 0x138);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v8(a1);
}

uint64_t protocol witness for StateMachineOperator.setupHeartbeat(nextHeartbeatInterval:) in conformance KDSRegistrationDaemon(double a1)
{
  v4 = *((*MEMORY[0x277D85000] & **v1) + 0x150);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);
  v7.n128_f64[0] = a1;

  return v9(v7);
}

uint64_t protocol witness for StateMachineOperator.updatePushHandlerIfNeeded() in conformance KDSRegistrationDaemon()
{
  v2 = *((*MEMORY[0x277D85000] & **v0) + 0x148);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return v6();
}

uint64_t protocol witness for StateMachineOperator.broadcastRegistrationState(uniqueClientIdentifier:simUniqueID:newRegistrationState:) in conformance KDSRegistrationDaemon(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & **v4) + 0x160);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for StateMachineOperator.getCredential(for:) in conformance KDSRegistrationDaemon(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](protocol witness for StateMachineOperator.getCredential(for:) in conformance KDSRegistrationDaemon, 0, 0);
}

uint64_t protocol witness for StateMachineOperator.getCredential(for:) in conformance KDSRegistrationDaemon()
{
  v1 = v0[4];
  v2 = *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_mlsDaemon);
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_mlsDaemonID;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = protocol witness for StateMachineOperator.credentialSigningRequest(for:) in conformance KDSRegistrationDaemon;
  v5 = v0[2];
  v6 = v0[3];

  return MLSDaemon.getCredential(uri:with:)(v5, v6, v1 + v3);
}

uint64_t KDSRegistrationDaemon.getCredential(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](KDSRegistrationDaemon.getCredential(for:), 0, 0);
}

uint64_t KDSRegistrationDaemon.getCredential(for:)()
{
  v1 = v0[4];
  v2 = *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_mlsDaemon);
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_mlsDaemonID;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = KDSRegistrationDaemon.getCredential(for:);
  v5 = v0[2];
  v6 = v0[3];

  return MLSDaemon.getCredential(uri:with:)(v5, v6, v1 + v3);
}

{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v45 = type metadata accessor for MLS.UniqueClientIdentifier();
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v45);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v46 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v45;
    v7 = v46;
    v15 = v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v42 = (v13 + 1) & v12;
    v43 = v17;
    v18 = *(v16 + 56);
    v40 = (v16 - 8);
    v41 = a2 + 64;
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v44;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v43(v44, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v40)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v42)
      {
        if (v27 >= v42 && a1 >= v27)
        {
LABEL_15:
          v7 = v46;
          v30 = *(v46 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v46;
            v18 = v19;
            v15 = v22;
            v9 = v41;
          }

          else
          {
            v9 = v41;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v46;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 48 * a1);
          v33 = (v31 + 48 * v11);
          if (a1 != v11 || v32 >= v33 + 3)
          {
            v34 = *v33;
            v35 = v33[2];
            v32[1] = v33[1];
            v32[2] = v35;
            *v32 = v34;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v42 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v41;
      v18 = v19;
      v7 = v46;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(v7 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v38;
    ++*(v7 + 36);
  }

  return result;
}

{
  v31 = type metadata accessor for RegClientIdentifier();
  v4 = *(v31 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v31);
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = (_HashTable.previousHole(before:)() + 1) & ~v9;
    v13 = *(v4 + 72);
    v32 = a2 + 64;
    v14 = v33;
    do
    {
      v15 = v13;
      v16 = v13 * v10;
      outlined init with copy of RegClientIdentifier(*(a2 + 48) + v13 * v10, v14);
      v17 = *(a2 + 40);
      Hasher.init(_seed:)();
      type metadata accessor for MLS.ClientIdentifier();
      _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier, MEMORY[0x277D4CD48]);
      dispatch thunk of Hashable.hash(into:)();
      v18 = Hasher._finalize()();
      result = outlined destroy of RegClientIdentifier(v14);
      v19 = v18 & v11;
      if (a1 >= v12)
      {
        if (v19 < v12)
        {
          v8 = v32;
          v13 = v15;
          goto LABEL_4;
        }

        v13 = v15;
        if (a1 >= v19)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v13 = v15;
        if (v19 >= v12 || a1 >= v19)
        {
LABEL_11:
          v20 = *(a2 + 48);
          result = v20 + v13 * a1;
          if (v13 * a1 < v16 || result >= v20 + v16 + v13)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v8 = v32;
          }

          else
          {
            v21 = v13 * a1 == v16;
            v8 = v32;
            if (!v21)
            {
              result = swift_arrayInitWithTakeBackToFront();
            }
          }

          v22 = *(a2 + 56);
          v23 = v22 + 56 * a1;
          v24 = (v22 + 56 * v10);
          if (a1 != v10 || v23 >= v24 + 56)
          {
            v25 = *v24;
            v26 = v24[1];
            v27 = v24[2];
            *(v23 + 48) = *(v24 + 6);
            *(v23 + 16) = v26;
            *(v23 + 32) = v27;
            *v23 = v25;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      v8 = v32;
LABEL_4:
      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v28 = *(a2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v30;
    ++*(a2 + 36);
  }

  return result;
}

{
  v45 = type metadata accessor for MLS.UniqueClientIdentifier();
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v45);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v46 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v45;
    v7 = v46;
    v15 = v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v42 = (v13 + 1) & v12;
    v43 = v17;
    v18 = *(v16 + 56);
    v40 = (v16 - 8);
    v41 = a2 + 64;
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v44;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v43(v44, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v40)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v42)
      {
        if (v27 >= v42 && a1 >= v27)
        {
LABEL_15:
          v7 = v46;
          v30 = *(v46 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v46;
            v18 = v19;
            v15 = v22;
            v9 = v41;
          }

          else
          {
            v9 = v41;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v46;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = v31 + 40 * a1;
          v33 = (v31 + 40 * v11);
          if (a1 != v11 || v32 >= v33 + 40)
          {
            v34 = *v33;
            v35 = v33[1];
            *(v32 + 32) = *(v33 + 4);
            *v32 = v34;
            *(v32 + 16) = v35;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v42 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v41;
      v18 = v19;
      v7 = v46;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(v7 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v38;
    ++*(v7 + 36);
  }

  return result;
}

{
  v43 = type metadata accessor for KDSRegistration.UniqueClientIdentifier();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.UniqueClientIdentifier and conformance KDSRegistration.UniqueClientIdentifier, MEMORY[0x277D4CAE8]);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 16 * a1);
          v33 = (v31 + 16 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

{
  return specialized _NativeDictionary._delete(at:)(a1, a2, MEMORY[0x277D4CF18]);
}

{
  return specialized _NativeDictionary._delete(at:)(a1, a2, MEMORY[0x277D4CFD0]);
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v39 = a3;
  v5 = type metadata accessor for MLS.UniqueClientIdentifier();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x28223BE20](v5);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v44 = a2;
    v14 = ~v12;
    v15 = _HashTable.previousHole(before:)();
    v16 = v14;
    a2 = v44;
    v43 = (v15 + 1) & v16;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v41 = v11;
    v42 = v18;
    v19 = *(v17 + 56);
    v40 = (v17 - 8);
    do
    {
      v20 = v19;
      v21 = v19 * v13;
      v22 = v16;
      v23 = v17;
      v42(v10, *(a2 + 48) + v19 * v13, v5);
      v24 = *(a2 + 40);
      _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v25 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v40)(v10, v5);
      v16 = v22;
      v26 = v25 & v22;
      if (a1 >= v43)
      {
        if (v26 >= v43 && a1 >= v26)
        {
LABEL_15:
          v17 = v23;
          if (v20 * a1 < v21 || *(v44 + 48) + v20 * a1 >= (*(v44 + 48) + v21 + v20))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v20 * a1 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v44;
          v29 = *(v44 + 56);
          v30 = *(*(v39(0) - 8) + 72);
          v31 = v30 * a1;
          result = v29 + v30 * a1;
          v32 = v30 * v13;
          v33 = v29 + v30 * v13 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v11 = v41;
            v16 = v22;
          }

          else
          {
            a1 = v13;
            v35 = v31 == v32;
            v11 = v41;
            v16 = v22;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v22;
              a1 = v13;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v43 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v17 = v23;
      v11 = v41;
      a2 = v44;
LABEL_4:
      v13 = (v13 + 1) & v16;
      v19 = v20;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t specialized MLSDaemon.setupInternalConnection(mlsDaemonClient:regClientKeyPackageExchanger:identifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for RegClientIdentifier();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - v13;
  v34[3] = type metadata accessor for KDSRegistrationDaemon();
  v34[4] = &protocol witness table for KDSRegistrationDaemon;
  v34[0] = a1;
  v15 = _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistrationKeyPackageExchanger and conformance KDSRegistrationKeyPackageExchanger, type metadata accessor for KDSRegistrationKeyPackageExchanger);
  outlined init with copy of RegClientIdentifier(a3, v14);
  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v31 = v15;
    v20 = v19;
    v21 = swift_slowAlloc();
    v32 = a3;
    v33[0] = v21;
    v22 = v21;
    *v20 = 136315138;
    outlined init with copy of RegClientIdentifier(v14, v12);
    v23 = MLS.ClientIdentifier.description.getter();
    v25 = v24;
    outlined destroy of RegClientIdentifier(v12);
    outlined destroy of RegClientIdentifier(v14);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v33);

    *(v20 + 4) = v26;
    _os_log_impl(&dword_26524C000, v17, v18, "MLSDaemon setupInternalConnection called { clientIdentifier: %s }", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    v27 = v22;
    a3 = v32;
    MEMORY[0x2667577B0](v27, -1, -1);
    v28 = v20;
    v15 = v31;
    MEMORY[0x2667577B0](v28, -1, -1);
  }

  else
  {

    outlined destroy of RegClientIdentifier(v14);
  }

  outlined init with copy of SMAUserDefaultsProtocol(v34, v33);
  v33[5] = a2;
  v33[6] = v15;
  v29 = *(**(a4 + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_regClientServer) + 112);

  v29(v33, a3);
  outlined destroy of RegistrationClientProxy(v33);
  return __swift_destroy_boxed_opaque_existential_1Tm(v34);
}

uint64_t type metadata accessor for KDSRegistrationDaemon()
{
  result = type metadata singleton initialization cache for KDSRegistrationDaemon;
  if (!type metadata singleton initialization cache for KDSRegistrationDaemon)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2652BC710()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:)@<X0>(char *a1@<X8>)
{
  return partial apply for closure #1 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:)(a1);
}

{
  v2 = v1[2];
  v3 = v1[3];
  return closure #1 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:)(v1[4], v1[5], v1[6], v1[7], v1[8], v1[9], a1);
}

uint64_t partial apply for closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(v6 + 16);
  v14 = *(v6 + 24);
  v19 = *(v6 + 32);
  v15 = *(v6 + 48);
  v16 = *(v6 + 56);
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = dispatch thunk of DaemonPersister.loadClientIdentifiersWithEvents();

  return closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:)(a1, a2, a3, a4, a5, a6, v13, v14);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String, @guaranteed String, @in_guaranteed KDSRegistration.URISupportedState, @in_guaranteed KDSRegistration.UniqueClientIdentifier) -> (@unowned Bool, @error @owned Error)(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String, @guaranteed String, @in_guaranteed KDSRegistration.URISupportedState, @in_guaranteed KDSRegistration.UniqueClientIdentifier) -> (@unowned Bool, @error @owned Error)(a1, a2, v7);
}

uint64_t partial apply for closure #2 in KDSRegistrationDaemon.update(simUniqueID:simLabelID:supportedState:uniqueClientIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *(v7 + 16);
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in KDSRegistrationDaemon.update(simUniqueID:simLabelID:supportedState:uniqueClientIdentifier:completion:)(a1, a2, a3, a4, a5, a6, a7, v16);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String, @guaranteed String, @in_guaranteed KDSRegistration.URISupportedState, @in_guaranteed KDSRegistration.UniqueClientIdentifier) -> (@out KDSRegistration.SupportedStateUpdateProcessedContext, @error @owned Error)(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String, @guaranteed String, @in_guaranteed KDSRegistration.URISupportedState, @in_guaranteed KDSRegistration.UniqueClientIdentifier) -> (@out KDSRegistration.SupportedStateUpdateProcessedContext, @error @owned Error)(a1, a2, v7);
}