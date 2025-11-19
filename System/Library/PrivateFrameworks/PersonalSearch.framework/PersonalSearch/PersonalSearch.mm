uint64_t EchoClient.__allocating_init(clientSessionFactory:)(__int128 *a1)
{
  v2 = swift_allocObject();
  outlined init with take of ClientSessionFactory(a1, v2 + 16);
  return v2;
}

uint64_t outlined init with take of ClientSessionFactory(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t EchoClient.__allocating_init()()
{
  EchoServiceName.getter();
  v2[3] = type metadata accessor for MachClientSessionFactory();
  v2[4] = MEMORY[0x277D3A318];
  __swift_allocate_boxed_opaque_existential_1(v2);
  MachClientSessionFactory.init(serviceName:)();
  return (*(v0 + 88))(v2);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t EchoClient.echo(_:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for Logger();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](EchoClient.echo(_:), 0, 0);
}

uint64_t EchoClient.echo(_:)()
{
  v1 = v0[6];
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v3 = ClientSessionFactory.createSession()();
  v0[10] = v3;
  v4 = v3;
  v6 = v0[4];
  v5 = v0[5];
  v7 = swift_task_alloc();
  v0[11] = v7;
  v7[2] = v4;
  v7[3] = v6;
  v7[4] = v5;
  v8 = *(MEMORY[0x277D85A40] + 4);

  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = EchoClient.echo(_:);
  v10 = MEMORY[0x277D837D0];

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0x293A5F286F686365, 0xE800000000000000, partial apply for closure #1 in EchoClient.echo(_:), v7, v10);
}

{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v8 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = EchoClient.echo(_:);
  }

  else
  {
    v5 = *(v2 + 80);
    v6 = *(v2 + 88);

    v4 = EchoClient.echo(_:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[2];
  v4 = v0[3];
  OUTLINED_FUNCTION_0();
  dispatch thunk of XPCSession.cancel(reason:)();

  v5 = v0[1];

  return v5(v3, v4);
}

{
  v1 = v0[10];
  v2 = v0[11];

  OUTLINED_FUNCTION_0();
  dispatch thunk of XPCSession.cancel(reason:)();

  v3 = v0[13];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t closure #1 in EchoClient.echo(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  v9 = (MEMORY[0x28223BE20])();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v34 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  v15 = type metadata accessor for XPCReceivedMessage();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a3;
  v42 = a4;
  dispatch thunk of XPCSession.sendSync<A>(_:)();
  v35 = v12;
  v36 = v15;
  v37 = v16;
  v38 = a1;
  static Logging.client.getter();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_25E466000, v20, v21, "Sent message, waiting for reply...", v22, 2u);
    MEMORY[0x25F8B3A30](v22, -1, -1);
  }

  v23 = *(v39 + 8);
  v23(v14, v40);
  XPCReceivedMessage.decode<A>(as:)();
  v25 = v41;
  v24 = v42;
  v26 = v35;
  static Logging.client.getter();

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v41 = v30;
    *v29 = 136315138;
    *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v24, &v41);
    _os_log_impl(&dword_25E466000, v27, v28, "Received response with result: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x25F8B3A30](v30, -1, -1);
    MEMORY[0x25F8B3A30](v29, -1, -1);
  }

  v23(v26, v40);
  v32 = v36;
  v31 = v37;
  v41 = v25;
  v42 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySSs5Error_pGMd, &_sScCySSs5Error_pGMR);
  CheckedContinuation.resume(returning:)();
  return (*(v31 + 8))(v19, v32);
}

uint64_t EchoClient.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t dispatch thunk of EchoClient.echo(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 96);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of EchoClient.echo(_:);

  return v10(a1, a2);
}

{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
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

uint64_t outlined init with copy of ClientSessionFactory(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t key path setter for PersonalSearchClient.session : PersonalSearchClient(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 104);

  return v3(v4);
}

uint64_t PersonalSearchClient.session.getter()
{
  OUTLINED_FUNCTION_17();
  v1 = *(v0 + 56);
}

uint64_t PersonalSearchClient.session.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t PersonalSearchClient.__allocating_init(clientSessionFactory:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 56) = 0;
  outlined init with take of ClientSessionFactory(a1, v2 + 16);
  return v2;
}

uint64_t PersonalSearchClient.init(clientSessionFactory:)(__int128 *a1)
{
  *(v1 + 56) = 0;
  outlined init with take of ClientSessionFactory(a1, v1 + 16);
  return v1;
}

uint64_t PersonalSearchClient.__allocating_init()()
{
  PersonalSearchServiceName.getter();
  v2[3] = type metadata accessor for MachClientSessionFactory();
  v2[4] = MEMORY[0x277D3A318];
  __swift_allocate_boxed_opaque_existential_1(v2);
  MachClientSessionFactory.init(serviceName:)();
  return (*(v0 + 120))(v2);
}

uint64_t PersonalSearchClient.connection()()
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_4();
  v8 = (*(v7 + 96))();
  if (v8)
  {
    return v8;
  }

  v9 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v9);
  swift_allocObject();
  swift_weakInit();

  v10 = dispatch thunk of ClientSessionFactory.createSession(cancellationHandler:)();
  if (v1)
  {

    static Logging.client.getter();
    MEMORY[0x25F8B3980](v1);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    MEMORY[0x25F8B3970](v1);
    if (os_log_type_enabled(v11, v12))
    {
      v9 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v9 = 138412290;
      MEMORY[0x25F8B3980](v1);
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&dword_25E466000, v11, v12, "Failed to connect to listener, error: %@", v9, 0xCu);
      outlined destroy of NSObject?(v13);
      MEMORY[0x25F8B3A30](v13, -1, -1);
      MEMORY[0x25F8B3A30](v9, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    swift_willThrow();
  }

  else
  {
    v9 = v10;

    v15 = *(*v0 + 104);

    v15(v16);
  }

  return v9;
}

uint64_t sub_25E4687C4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t closure #1 in PersonalSearchClient.connection()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCRichError();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v26 = *(v9 - 8);
  v10 = *(v26 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logging.client.getter();
  v13 = *(v5 + 16);
  v13(v8, a1, v4);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v25 = a2;
    v17 = v16;
    v23 = swift_slowAlloc();
    *v17 = 138412290;
    lazy protocol witness table accessor for type PersonalSearchRequest and conformance PersonalSearchRequest(&lazy protocol witness table cache variable for type XPCRichError and conformance XPCRichError, MEMORY[0x277D855E8]);
    swift_allocError();
    v24 = v9;
    v13(v18, v8, v4);
    v19 = _swift_stdlib_bridgeErrorToNSError();
    (*(v5 + 8))(v8, v4);
    *(v17 + 4) = v19;
    v20 = v23;
    *v23 = v19;
    v9 = v24;
    _os_log_impl(&dword_25E466000, v14, v15, "Session cancelled, error: %@", v17, 0xCu);
    outlined destroy of NSObject?(v20);
    MEMORY[0x25F8B3A30](v20, -1, -1);
    MEMORY[0x25F8B3A30](v17, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  (*(v26 + 8))(v12, v9);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 104))(0);
  }

  return result;
}

Swift::Void __swiftcall PersonalSearchClient.resetConnection()()
{
  OUTLINED_FUNCTION_4();
  if ((*(v1 + 96))())
  {
    dispatch thunk of XPCSession.cancel(reason:)();
  }

  v2 = *(*v0 + 104);

  v2(0);
}

uint64_t PersonalSearchClient.deinit()
{
  OUTLINED_FUNCTION_17();
  if (*(v0 + 56))
  {

    dispatch thunk of XPCSession.cancel(reason:)();
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 56);

  return v0;
}

uint64_t PersonalSearchClient.__deallocating_deinit()
{
  PersonalSearchClient.deinit();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t PersonalSearchClient.perform(_:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  OUTLINED_FUNCTION_8();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t PersonalSearchClient.perform(_:)()
{
  OUTLINED_FUNCTION_16();
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_4();
  v3 = (*(v2 + 128))();
  *(v0 + 40) = v3;
  v4 = v3;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  v6 = *(v0 + 24);
  *(v5 + 16) = v4;
  *(v5 + 24) = v6;
  v7 = *(MEMORY[0x277D85A40] + 4);
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19PersonalSearchTypes0aB6ResultVGMd, &_sSay19PersonalSearchTypes0aB6ResultVGMR);
  *v8 = v0;
  v8[1] = PersonalSearchClient.perform(_:);
  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822008A0](v9, v10, v11, v12, v13, v14, v5, v15);
}

{
  OUTLINED_FUNCTION_3();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_6();
  *v7 = v6;
  *(v2 + 64) = v0;

  if (!v0)
  {
    v8 = *(v2 + 48);
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_3();
  v1 = v0[5];

  v2 = v0[2];
  v3 = v0[1];

  return v3(v2);
}

{
  OUTLINED_FUNCTION_3();
  v1 = v0[5];
  v2 = v0[6];

  v3 = v0[8];
  OUTLINED_FUNCTION_12();

  return v4();
}

uint64_t closure #1 in PersonalSearchClient.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v92 = a4;
  v95 = a1;
  v4 = type metadata accessor for PersonalSearchError();
  v88 = *(v4 - 8);
  v89 = v4;
  v5 = *(v88 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v84 = &v79[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v86 = &v79[-v8];
  v9 = type metadata accessor for Logger();
  v93 = *(v9 - 8);
  v94 = v9;
  v10 = *(v93 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v91 = &v79[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v85 = &v79[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v79[-v16];
  MEMORY[0x28223BE20](v15);
  v19 = &v79[-v18];
  v20 = type metadata accessor for PersonalSearchResponse();
  v87 = *(v20 - 8);
  v21 = *(v87 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v79[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v26 = &v79[-v25];
  v27 = type metadata accessor for XPCReceivedMessage();
  v90 = *(v27 - 8);
  v28 = *(v90 + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v79[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PersonalSearchRequest();
  lazy protocol witness table accessor for type PersonalSearchRequest and conformance PersonalSearchRequest(&lazy protocol witness table cache variable for type PersonalSearchRequest and conformance PersonalSearchRequest, MEMORY[0x277D3A2D0]);
  dispatch thunk of XPCSession.sendSync<A>(_:)();
  v82 = v19;
  v83 = v27;
  v31 = v88;
  v32 = v89;
  v33 = v87;
  lazy protocol witness table accessor for type PersonalSearchRequest and conformance PersonalSearchRequest(&lazy protocol witness table cache variable for type PersonalSearchResponse and conformance PersonalSearchResponse, MEMORY[0x277D3A2F8]);
  XPCReceivedMessage.decode<A>(as:)();
  v34 = v20;
  v35 = v33;
  v36 = v24;
  (*(v33 + 16))(v24, v26, v34);
  v37 = (*(v33 + 88))(v24, v34);
  if (v37 == *MEMORY[0x277D3A2E8])
  {
    v92 = v30;
    (*(v33 + 96))(v24, v34);
    v38 = v34;
    v39 = v86;
    v40 = v32;
    (*(v31 + 32))(v86, v36, v32);
    v41 = v85;
    static Logging.client.getter();
    v42 = *(v31 + 16);
    v43 = v84;
    v91 = (v31 + 16);
    v82 = v42;
    v42(v84, v39, v40);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v96 = v81;
      *v46 = 136315138;
      lazy protocol witness table accessor for type PersonalSearchRequest and conformance PersonalSearchRequest(&lazy protocol witness table cache variable for type PersonalSearchError and conformance PersonalSearchError, MEMORY[0x277D3A298]);
      v80 = v45;
      v47 = Error.localizedDescription.getter();
      v48 = v38;
      v49 = v43;
      v51 = v50;
      v52 = *(v31 + 8);
      v52(v49, v40);
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v51, &v96);
      v54 = v48;

      *(v46 + 4) = v53;
      _os_log_impl(&dword_25E466000, v44, v80, "Received error: %s", v46, 0xCu);
      v55 = v81;
      __swift_destroy_boxed_opaque_existential_1Tm(v81);
      v35 = v33;
      v56 = v52;
      MEMORY[0x25F8B3A30](v55, -1, -1);
      MEMORY[0x25F8B3A30](v46, -1, -1);

      (*(v93 + 8))(v85, v94);
      v57 = v83;
    }

    else
    {

      v56 = *(v31 + 8);
      v56(v43, v40);
      (*(v93 + 8))(v41, v94);
      v57 = v83;
      v54 = v38;
    }

    lazy protocol witness table accessor for type PersonalSearchRequest and conformance PersonalSearchRequest(&lazy protocol witness table cache variable for type PersonalSearchError and conformance PersonalSearchError, MEMORY[0x277D3A298]);
    v68 = swift_allocError();
    v69 = v86;
    v82(v70, v86, v40);
    v96 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay19PersonalSearchTypes0aB6ResultVGs5Error_pGMd, &_sScCySay19PersonalSearchTypes0aB6ResultVGs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
    v56(v69, v40);
    (*(v35 + 8))(v26, v54);
    return (*(v90 + 8))(v92, v57);
  }

  else if (v37 == *MEMORY[0x277D3A2F0])
  {
    v58 = *(v33 + 96);
    v59 = v34;
    v58(v24, v34);
    v60 = *v24;
    if (*v36)
    {
      v61 = v17;
      v62 = v26;
      v63 = *v36;

      static Logging.client.getter();

      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 134217984;
        v67 = *(v60 + 16);

        *(v66 + 4) = v67;

        _os_log_impl(&dword_25E466000, v64, v65, "Received response with result: %ld", v66, 0xCu);
        MEMORY[0x25F8B3A30](v66, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v78 = v83;
      v76 = v90;
      (*(v93 + 8))(v61, v94);
    }

    else
    {
      v62 = v26;
      v72 = v82;
      static Logging.client.getter();
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.info.getter();
      v75 = os_log_type_enabled(v73, v74);
      v76 = v90;
      if (v75)
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_25E466000, v73, v74, "Received response success", v77, 2u);
        MEMORY[0x25F8B3A30](v77, -1, -1);

        (*(v93 + 8))(v72, v94);
      }

      else
      {

        (*(v93 + 8))(v72, v94);
      }

      v60 = MEMORY[0x277D84F90];
      v78 = v83;
    }

    v96 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay19PersonalSearchTypes0aB6ResultVGs5Error_pGMd, &_sScCySay19PersonalSearchTypes0aB6ResultVGs5Error_pGMR);
    CheckedContinuation.resume(returning:)();
    (*(v35 + 8))(v62, v59);
    return (*(v76 + 8))(v30, v78);
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t PersonalSearchClient.preheat()()
{
  OUTLINED_FUNCTION_3();
  v1[2] = v0;
  v2 = type metadata accessor for PersonalSearchRequest();
  v1[3] = v2;
  OUTLINED_FUNCTION_5(v2);
  v1[4] = v3;
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_3();
  (*(v0[4] + 104))(v0[5], *MEMORY[0x277D3A2C0], v0[3]);
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_2(v1);

  return PersonalSearchClient.perform(_:)(v2);
}

{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  v5 = v1[6];
  *v4 = *v2;
  *(v3 + 56) = v0;

  v6 = v1[5];
  v7 = v1[4];
  v8 = v1[3];
  if (!v0)
  {

    v15 = OUTLINED_FUNCTION_0_0();
    v16(v15);

    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_18();

    __asm { BRAA            X1, X16 }
  }

  v9 = OUTLINED_FUNCTION_0_0();
  v10(v9);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t PersonalSearchClient.activate()()
{
  OUTLINED_FUNCTION_3();
  v1[2] = v0;
  v2 = type metadata accessor for PersonalSearchRequest();
  v1[3] = v2;
  OUTLINED_FUNCTION_5(v2);
  v1[4] = v3;
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_3();
  (*(v0[4] + 104))(v0[5], *MEMORY[0x277D3A2C8], v0[3]);
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_2(v1);

  return PersonalSearchClient.perform(_:)(v2);
}

uint64_t PersonalSearchClient.deactivate()()
{
  OUTLINED_FUNCTION_3();
  v1[2] = v0;
  v2 = type metadata accessor for PersonalSearchRequest();
  v1[3] = v2;
  OUTLINED_FUNCTION_5(v2);
  v1[4] = v3;
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_3();
  (*(v0[4] + 104))(v0[5], *MEMORY[0x277D3A2B0], v0[3]);
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_2(v1);

  return PersonalSearchClient.perform(_:)(v2);
}

{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  v5 = v1[6];
  *v4 = *v2;
  *(v3 + 56) = v0;

  v6 = v1[5];
  v7 = v1[4];
  v8 = v1[3];
  if (!v0)
  {

    v15 = OUTLINED_FUNCTION_0_0();
    v16(v15);

    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_18();

    __asm { BRAA            X1, X16 }
  }

  v9 = OUTLINED_FUNCTION_0_0();
  v10(v9);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_12();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t PersonalSearchClient.search(_:structuredQuery:typeIdentifiers:options:)()
{
  OUTLINED_FUNCTION_3();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19PersonalSearchTypes0aB12QueryOptionsVSgMd, &_s19PersonalSearchTypes0aB12QueryOptionsVSgMR) - 8) + 64);
  v1[8] = OUTLINED_FUNCTION_13();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19PersonalSearchTypes15StructuredQueryVSgMd, &_s19PersonalSearchTypes15StructuredQueryVSgMR) - 8) + 64);
  v1[9] = OUTLINED_FUNCTION_13();
  v9 = type metadata accessor for PersonalSearchRequest();
  v1[10] = v9;
  OUTLINED_FUNCTION_5(v9);
  v1[11] = v10;
  v12 = *(v11 + 64);
  v1[12] = OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v8 = v0[2];
  outlined init with copy of StructuredQuery?(v0[4], v0[9], &_s19PersonalSearchTypes15StructuredQueryVSgMd, &_s19PersonalSearchTypes15StructuredQueryVSgMR);
  outlined init with copy of StructuredQuery?(v5, v4, &_s19PersonalSearchTypes0aB12QueryOptionsVSgMd, &_s19PersonalSearchTypes0aB12QueryOptionsVSgMR);

  PersonalSearchQuery.init(searchQuery:structuredQuery:typeIdentifiers:options:)();
  (*(v2 + 104))(v1, *MEMORY[0x277D3A2B8], v3);
  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = PersonalSearchClient.search(_:structuredQuery:typeIdentifiers:options:);
  v10 = v0[12];
  v11 = v0[7];

  return PersonalSearchClient.perform(_:)(v10);
}

{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = v2[13];
  v6 = *v1;
  *v4 = *v1;
  v3[14] = v0;

  v7 = v2[12];
  v8 = v2[11];
  v9 = v2[10];
  if (!v0)
  {
    v15 = v3[8];
    v14 = v3[9];
    (*(v8 + 8))(v2[12], v9);

    v16 = v6[1];
    OUTLINED_FUNCTION_18();

    __asm { BRAA            X2, X16 }
  }

  (*(v8 + 8))(v2[12], v9);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_3();
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[9];

  OUTLINED_FUNCTION_12();
  v5 = v0[14];

  return v4();
}

uint64_t outlined init with copy of StructuredQuery?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25E46A738@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  OUTLINED_FUNCTION_4();
  result = (*(v4 + 96))();
  *a2 = result;
  return result;
}

uint64_t dispatch thunk of PersonalSearchClient.preheat()()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_4();
  v1 = *(v0 + 152);
  v16 = v0 + 152;
  v17 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_11(v4, v6, v7, v8, v9, v10, v11, v12, v15, v16, v17);

  return v13();
}

uint64_t dispatch thunk of PersonalSearchClient.activate()()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_4();
  v1 = *(v0 + 160);
  v16 = v0 + 160;
  v17 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_11(v4, v6, v7, v8, v9, v10, v11, v12, v15, v16, v17);

  return v13();
}

uint64_t dispatch thunk of PersonalSearchClient.deactivate()()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_4();
  v1 = *(v0 + 168);
  v16 = v0 + 168;
  v17 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_11(v4, v6, v7, v8, v9, v10, v11, v12, v15, v16, v17);

  return v13();
}

{
  OUTLINED_FUNCTION_3();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_6();
  *v3 = v2;

  OUTLINED_FUNCTION_12();

  return v4();
}

uint64_t dispatch thunk of PersonalSearchClient.search(_:structuredQuery:typeIdentifiers:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_4();
  v11 = *(v10 + 176);
  v17 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_15(v13);
  *v14 = v15;
  v14[1] = dispatch thunk of PersonalSearchClient.search(_:structuredQuery:typeIdentifiers:options:);

  return v17(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of PersonalSearchClient.search(_:structuredQuery:typeIdentifiers:options:)()
{
  OUTLINED_FUNCTION_3();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_6();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(v2);
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  OUTLINED_FUNCTION_8();
  v9 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    outlined init with copy of Any(v14, *a3);
    *a3 = v12 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return v10;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v9;
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
    result = _StringObject.sharedUTF8.getter();
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
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
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
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t lazy protocol witness table accessor for type PersonalSearchRequest and conformance PersonalSearchRequest(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_2(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 16);
  return *(v2 + 40);
}

uint64_t OUTLINED_FUNCTION_9()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_12()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_13()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_17()
{

  return swift_beginAccess();
}