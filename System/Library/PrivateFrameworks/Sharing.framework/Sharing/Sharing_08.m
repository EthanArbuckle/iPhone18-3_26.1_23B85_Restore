unint64_t sub_1A981101C()
{
  result = qword_1EB3ACAA0;
  if (!qword_1EB3ACAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ACAA0);
  }

  return result;
}

uint64_t sub_1A9811070(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001A99E4400 == a2;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A99E4420 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A99E4440 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xEF65746174536E6FLL || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4E676E6972616873 && a2 == 0xEB00000000656D61)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1A9811238()
{
  v0 = sub_1A99764A0();
  __swift_allocate_value_buffer(v0, qword_1EB3B26B0);
  __swift_project_value_buffer(v0, qword_1EB3B26B0);
  return sub_1A9976490();
}

uint64_t SFProximityHandoffUIClientError.hashValue.getter()
{
  v1 = *v0;
  sub_1A9977980();
  MEMORY[0x1AC58A630](v1);
  return sub_1A99779B0();
}

uint64_t sub_1A9811340@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC7Sharing26SFProximityHandoffUIClient_invalidationHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1A981321C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1A967C510(v4);
}

uint64_t sub_1A98113E0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A9813214;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC7Sharing26SFProximityHandoffUIClient_invalidationHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1A967C510(v3);
  return sub_1A967C46C(v8);
}

uint64_t SFProximityHandoffUIClient.invalidationHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC7Sharing26SFProximityHandoffUIClient_invalidationHandler);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_1A967C510(v3);
  return v3;
}

uint64_t SFProximityHandoffUIClient.invalidationHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC7Sharing26SFProximityHandoffUIClient_invalidationHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1A967C46C(v6);
}

id sub_1A98115C8()
{
  v1 = OBJC_IVAR____TtC7Sharing26SFProximityHandoffUIClient____lazy_storage___interface;
  v2 = *(v0 + OBJC_IVAR____TtC7Sharing26SFProximityHandoffUIClient____lazy_storage___interface);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Sharing26SFProximityHandoffUIClient____lazy_storage___interface);
  }

  else
  {
    v4 = sub_1A9812F44();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id SFProximityHandoffUIClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SFProximityHandoffUIClient.init()()
{
  ObjectType = swift_getObjectType();
  v12 = sub_1A9976FB0();
  v1 = *(v12 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A9976FA0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1A9976680();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v0[OBJC_IVAR____TtC7Sharing26SFProximityHandoffUIClient_invalidationHandler];
  *v9 = 0;
  *(v9 + 1) = 0;
  v11 = OBJC_IVAR____TtC7Sharing26SFProximityHandoffUIClient_queue;
  sub_1A9812DE0(0, &qword_1EB3AC8D0, 0x1E69E9610);
  sub_1A9976650();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1A98118DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B26D8, &unk_1A9997EB0);
  sub_1A9811934();
  sub_1A99771F0();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v12);
  *&v0[v11] = sub_1A9976FE0();
  *&v0[OBJC_IVAR____TtC7Sharing26SFProximityHandoffUIClient_connection] = 0;
  *&v0[OBJC_IVAR____TtC7Sharing26SFProximityHandoffUIClient____lazy_storage___interface] = 0;
  *&v0[OBJC_IVAR____TtC7Sharing26SFProximityHandoffUIClient_proximityHandoffUIServer] = 0;
  v14.receiver = v0;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_init);
}

unint64_t sub_1A98118DC()
{
  result = qword_1EB3AC8E0;
  if (!qword_1EB3AC8E0)
  {
    sub_1A9976FA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AC8E0);
  }

  return result;
}

unint64_t sub_1A9811934()
{
  result = qword_1EB3AC910;
  if (!qword_1EB3AC910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B26D8, &unk_1A9997EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AC910);
  }

  return result;
}

id SFProximityHandoffUIClient.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  sub_1A9811A04();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1A9811A04()
{
  v1 = OBJC_IVAR____TtC7Sharing26SFProximityHandoffUIClient_connection;
  v2 = *(v0 + OBJC_IVAR____TtC7Sharing26SFProximityHandoffUIClient_connection);
  if (v2)
  {
    v3 = v0;
    v4 = qword_1EB3B0AF0;
    v5 = v2;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = sub_1A99764A0();
    __swift_project_value_buffer(v6, qword_1EB3B26B0);
    v7 = sub_1A9976480();
    v8 = sub_1A9976F90();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1A9662000, v7, v8, "ProximityHandoffUIClient: Invalidating connection", v9, 2u);
      MEMORY[0x1AC58D2C0](v9, -1, -1);
    }

    v10 = *(v3 + v1);
    *(v3 + v1) = 0;

    v11 = v3 + OBJC_IVAR____TtC7Sharing26SFProximityHandoffUIClient_invalidationHandler;
    swift_beginAccess();
    v12 = *v11;
    if (*v11)
    {
      v13 = *(v11 + 8);

      v12(v14);
      sub_1A967C46C(v12);
    }

    [v5 invalidate];
  }

  else
  {
    if (qword_1EB3B0AF0 != -1)
    {
      swift_once();
    }

    v15 = sub_1A99764A0();
    __swift_project_value_buffer(v15, qword_1EB3B26B0);
    oslog = sub_1A9976480();
    v16 = sub_1A9976F60();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1A9662000, oslog, v16, "XPC Connection not available, skipping end.", v17, 2u);
      MEMORY[0x1AC58D2C0](v17, -1, -1);
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SFProximityHandoffUIClient.activate()()
{
  v1 = v0;
  v2 = sub_1A99767E0();
  v3 = sub_1A99767E0();
  v4 = [objc_opt_self() endpointForMachName:v2 service:v3 instance:0];

  if (!v4)
  {
    if (qword_1EB3B0AF0 != -1)
    {
      swift_once();
    }

    v29 = sub_1A99764A0();
    __swift_project_value_buffer(v29, qword_1EB3B26B0);
    v30 = sub_1A9976480();
    v31 = sub_1A9976F70();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1A9662000, v30, v31, "Could not find endpoint for AirDropUI launch angel. It may not be loaded.", v32, 2u);
      MEMORY[0x1AC58D2C0](v32, -1, -1);
    }

    sub_1A9812450();
    swift_allocError();
    *v33 = 2;
    swift_willThrow();
    return;
  }

  if (qword_1EB3B0AF0 != -1)
  {
    swift_once();
  }

  v5 = sub_1A99764A0();
  __swift_project_value_buffer(v5, qword_1EB3B26B0);
  v6 = sub_1A9976480();
  v7 = sub_1A9976F60();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1A9662000, v6, v7, "ProximityHandoffUIClient: endpoint created!", v8, 2u);
    MEMORY[0x1AC58D2C0](v8, -1, -1);
  }

  v9 = [objc_opt_self() connectionWithEndpoint_];
  if (!v9)
  {
LABEL_19:
    v34 = sub_1A9976480();
    v35 = sub_1A9976F70();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1A9662000, v34, v35, "Could not create a connection with the AirDropUI endpoint", v36, 2u);
      MEMORY[0x1AC58D2C0](v36, -1, -1);
    }

    sub_1A9812450();
    swift_allocError();
    *v37 = 0;
    swift_willThrow();

    return;
  }

  v10 = v9;
  v48 = &unk_1F1DAF0C8;
  v11 = swift_dynamicCastObjCProtocolConditional();
  if (!v11)
  {

    goto LABEL_19;
  }

  v12 = v11;
  v13 = sub_1A9976480();
  v14 = sub_1A9976F60();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1A9662000, v13, v14, "ProximityHandoffUIClient: connection created", v15, 2u);
    MEMORY[0x1AC58D2C0](v15, -1, -1);
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1A9812D98;
  *(v17 + 24) = v16;
  v46 = sub_1A9812DA0;
  v47 = v17;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v45 = sub_1A9812A84;
  *(&v45 + 1) = &block_descriptor_3;
  v18 = _Block_copy(&aBlock);
  v19 = v1;

  v20 = v10;

  [v12 configureConnection_];

  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
  }

  else
  {
    v21 = *&v19[OBJC_IVAR____TtC7Sharing26SFProximityHandoffUIClient_connection];
    *&v19[OBJC_IVAR____TtC7Sharing26SFProximityHandoffUIClient_connection] = v12;
    v40 = v20;

    [v12 activate];
    v22 = sub_1A99767E0();
    v23 = sub_1A99767E0();
    v24 = [objc_opt_self() attributeWithDomain:v22 name:v23];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2768, qword_1A9997EC0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1A9997EA0;
    *(v25 + 32) = v24;
    sub_1A9812DE0(0, &unk_1EB3B2770, 0x1E69C7550);
    v26 = v24;
    v27 = sub_1A9976AB0();

    v28 = [v12 remoteTargetWithLaunchingAssertionAttributes_];

    if (v28)
    {
      sub_1A99771B0();
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = 0u;
      v43 = 0u;
    }

    aBlock = v42;
    v45 = v43;
    sub_1A97E4448(&aBlock, &v42);
    if (*(&v43 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2780, &qword_1A9997ED8);
      if (swift_dynamicCast())
      {
        sub_1A9812E28(&aBlock);

        v38 = *&v19[OBJC_IVAR____TtC7Sharing26SFProximityHandoffUIClient_proximityHandoffUIServer];
        *&v19[OBJC_IVAR____TtC7Sharing26SFProximityHandoffUIClient_proximityHandoffUIServer] = v41;

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      sub_1A9812E28(&v42);
    }

    sub_1A9812450();
    swift_allocError();
    *v39 = 1;
    swift_willThrow();

    sub_1A9812E28(&aBlock);
  }
}

unint64_t sub_1A9812450()
{
  result = qword_1EB3B2700;
  if (!qword_1EB3B2700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2700);
  }

  return result;
}

id sub_1A98124A4(void *a1, uint64_t a2)
{
  if (qword_1EB3B0AF0 != -1)
  {
    swift_once();
  }

  v4 = sub_1A99764A0();
  __swift_project_value_buffer(v4, qword_1EB3B26B0);
  v5 = sub_1A9976480();
  v6 = sub_1A9976F60();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1A9662000, v5, v6, "ProximityHandoffUIClient: configuring session...", v7, 2u);
    MEMORY[0x1AC58D2C0](v7, -1, -1);
  }

  v8 = sub_1A99767E0();
  [a1 setName_];

  v9 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality_];

  v10 = sub_1A98115C8();
  [a1 setInterface_];

  [a1 setInterfaceTarget_];
  v21 = sub_1A981281C;
  v22 = 0;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1A9812904;
  v20 = &block_descriptor_30;
  v11 = _Block_copy(&v17);
  [a1 setActivationHandler_];
  _Block_release(v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_1A9813224;
  v22 = v12;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1A9812904;
  v20 = &block_descriptor_36;
  v13 = _Block_copy(&v17);

  [a1 setInterruptionHandler_];
  _Block_release(v13);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_1A9813248;
  v22 = v14;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1A9812904;
  v20 = &block_descriptor_40;
  v15 = _Block_copy(&v17);

  [a1 setInvalidationHandler_];
  _Block_release(v15);
  return [a1 setTargetQueue_];
}

void sub_1A981281C()
{
  if (qword_1EB3B0AF0 != -1)
  {
    swift_once();
  }

  v0 = sub_1A99764A0();
  __swift_project_value_buffer(v0, qword_1EB3B26B0);
  oslog = sub_1A9976480();
  v1 = sub_1A9976F60();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1A9662000, oslog, v1, "ProximityHandoffUIClient: connection activated!", v2, 2u);
    MEMORY[0x1AC58D2C0](v2, -1, -1);
  }
}

void sub_1A9812904(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_1A981296C(uint64_t a1, uint64_t a2, const char *a3)
{
  if (qword_1EB3B0AF0 != -1)
  {
    swift_once();
  }

  v4 = sub_1A99764A0();
  __swift_project_value_buffer(v4, qword_1EB3B26B0);
  v5 = sub_1A9976480();
  v6 = sub_1A9976F60();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1A9662000, v5, v6, a3, v7, 2u);
    MEMORY[0x1AC58D2C0](v7, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_1A9811A04();
  }
}

uint64_t sub_1A9812A84(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

void SFProximityHandoffUIClient.registerForProximityHandoffInteractionUpdates(completion:)(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC7Sharing26SFProximityHandoffUIClient_proximityHandoffUIServer);
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v11[4] = sub_1A9812E90;
    v11[5] = v6;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1A9812C6C;
    v11[3] = &block_descriptor_9;
    v7 = _Block_copy(v11);
    swift_unknownObjectRetain();

    [v5 registerForProximityHandoffInteractionUpdatesWithCompletion_];
    swift_unknownObjectRelease();
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1A9812450();
    v9 = swift_allocError();
    *v10 = 3;
    a1();
  }
}

void sub_1A9812C6C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = a2;
  v4(a2);
}

void sub_1A9812D34(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1A9975F10();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1A9812DA0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A9812DE0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1A9812E28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0BA0, &unk_1A99923D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A9812E90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_1A9812EBC()
{
  result = qword_1EB3B2788;
  if (!qword_1EB3B2788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2788);
  }

  return result;
}

id sub_1A9812F44()
{
  v0 = sub_1A99767E0();
  v1 = [objc_opt_self() interfaceWithIdentifier_];

  v2 = objc_opt_self();
  v3 = [v2 protocolForProtocol_];
  [v1 setServer_];

  v4 = [v2 protocolForProtocol_];
  [v1 setClient_];

  [v1 setClientMessagingExpectation_];
  return v1;
}

void sub_1A9813050(uint64_t a1, uint64_t a2)
{
  v10[2] = a2;
  v2 = *(a1 + OBJC_IVAR____TtC7Sharing26SFProximityHandoffUIClient_proximityHandoffUIServer);
  if (v2)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = sub_1A981320C;
    *(v3 + 24) = v10;
    aBlock[4] = sub_1A9813298;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A9812C6C;
    aBlock[3] = &block_descriptor_21;
    v4 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v2 registerForProximityHandoffInteractionUpdatesWithCompletion_];
    swift_unknownObjectRelease();
    _Block_release(v4);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    sub_1A9812450();
    v7 = swift_allocError();
    *v8 = 3;
    v9 = sub_1A9975F10();
    (*(a2 + 16))(a2, v9);
  }
}

void *_SFXPCContainerRegistry.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = MEMORY[0x1E69E7CC0];
  v0[14] = sub_1A97BF010(MEMORY[0x1E69E7CC0]);
  v0[15] = sub_1A97BF010(v1);
  v0[16] = sub_1A97BF010(v1);
  return v0;
}

void *_SFXPCContainerRegistry.init()()
{
  swift_defaultActor_initialize();
  v1 = MEMORY[0x1E69E7CC0];
  v0[14] = sub_1A97BF010(MEMORY[0x1E69E7CC0]);
  v0[15] = sub_1A97BF010(v1);
  v0[16] = sub_1A97BF010(v1);
  return v0;
}

BOOL _SFXPCContainerRegistry.isEmpty.getter()
{
  swift_beginAccess();
  if (*(v0[14] + 16))
  {
    return 0;
  }

  swift_beginAccess();
  if (*(v0[15] + 16))
  {
    return 0;
  }

  swift_beginAccess();
  return *(v0[16] + 16) == 0;
}

uint64_t _SFXPCContainerRegistry.description.getter()
{
  v1 = v0;
  v117 = sub_1A99762C0();
  v2 = *(v117 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v117);
  v114 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B27F0, &qword_1A9998010);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v105 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v102 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v102 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v111 = &v102 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v116 = &v102 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v102 - v19;
  v124 = 0xA3A736B636F6C42;
  v125 = 0xE800000000000000;
  swift_beginAccess();
  v21 = *(v0 + 112);
  v22 = *(v21 + 16);
  v115 = v2;
  v106 = v11;
  v110 = v14;
  v102 = v0;
  if (v22)
  {
    v23 = *(v21 + 64);
    v104 = v21 + 64;
    v24 = 1 << *(v21 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & v23;
    v103 = (v24 + 63) >> 6;
    v108 = v2 + 16;
    v107 = v2 + 32;
    v112 = v21;
    v113 = v2 + 8;

    v28 = 0;
    v29 = v116;
    v109 = v20;
    v30 = v115;
    if (!v26)
    {
LABEL_6:
      if (v103 <= v28 + 1)
      {
        v32 = v28 + 1;
      }

      else
      {
        v32 = v103;
      }

      v33 = v32 - 1;
      while (1)
      {
        v31 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v31 >= v103)
        {
          v48 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB3B27F8, &qword_1A9998018);
          (*(*(v48 - 8) + 56))(v29, 1, 1, v48);
          v26 = 0;
          goto LABEL_14;
        }

        v26 = *(v104 + 8 * v31);
        ++v28;
        if (v26)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_60;
    }

    while (1)
    {
      v31 = v28;
LABEL_13:
      v34 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v35 = v34 | (v31 << 6);
      v36 = v112;
      v37 = v114;
      v38 = v117;
      (*(v30 + 16))(v114, *(v112 + 48) + *(v30 + 72) * v35, v117);
      v39 = (*(v36 + 56) + 16 * v35);
      v41 = *v39;
      v40 = v39[1];
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB3B27F8, &qword_1A9998018);
      v43 = &v116[*(v42 + 48)];
      (*(v30 + 32))(v116, v37, v38);
      *v43 = v41;
      *(v43 + 1) = v40;
      v29 = v116;
      (*(*(v42 - 8) + 56))(v116, 0, 1, v42);

      v33 = v31;
      v20 = v109;
LABEL_14:
      sub_1A9814564(v29, v20);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB3B27F8, &qword_1A9998018);
      if ((*(*(v44 - 8) + 48))(v20, 1, v44) == 1)
      {
        break;
      }

      v45 = &v20[*(v44 + 48)];
      v46 = *v45;
      v47 = *(v45 + 1);
      v122 = 9;
      v123 = 0xE100000000000000;
      MEMORY[0x1AC5895B0](v46, v47);

      MEMORY[0x1AC5895B0](10, 0xE100000000000000);
      MEMORY[0x1AC5895B0](v122, v123);

      result = (*v113)(v20, v117);
      v28 = v33;
      if (!v26)
      {
        goto LABEL_6;
      }
    }

    v2 = v115;
    v11 = v106;
    v1 = v102;
    v14 = v110;
  }

  else
  {
    MEMORY[0x1AC5895B0](0x3E7974706D653C09, 0xE90000000000000ALL);
  }

  MEMORY[0x1AC5895B0](0x65636E6575716553, 0xEB000000000A3A73);
  swift_beginAccess();
  v49 = *(v1 + 120);
  if (*(v49 + 16))
  {
    v50 = *(v49 + 64);
    v108 = v49 + 64;
    v51 = 1 << *(v49 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & v50;
    v107 = (v51 + 63) >> 6;
    v112 = v2 + 16;
    v109 = v2 + 32;
    v116 = (v2 + 8);
    v113 = v49;

    v54 = 0;
    v55 = v111;
    if (v53)
    {
      while (1)
      {
        v56 = v54;
LABEL_32:
        v59 = __clz(__rbit64(v53));
        v53 &= v53 - 1;
        v60 = v59 | (v56 << 6);
        v61 = v113;
        v62 = v114;
        v63 = v115;
        v64 = v117;
        (*(v115 + 16))(v114, *(v113 + 48) + *(v115 + 72) * v60, v117);
        v65 = (*(v61 + 56) + 16 * v60);
        v66 = *v65;
        v67 = v65[1];
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB3B27F8, &qword_1A9998018);
        v69 = &v110[*(v68 + 48)];
        v70 = *(v63 + 32);
        v14 = v110;
        v70(v110, v62, v64);
        *v69 = v66;
        *(v69 + 1) = v67;
        (*(*(v68 - 8) + 56))(v14, 0, 1, v68);

        v58 = v56;
        v55 = v111;
LABEL_33:
        sub_1A9814564(v14, v55);
        v71 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB3B27F8, &qword_1A9998018);
        if ((*(*(v71 - 8) + 48))(v55, 1, v71) == 1)
        {
          break;
        }

        v72 = (v55 + *(v71 + 48));
        v73 = *v72;
        v74 = v72[1];
        v120 = 9;
        v121 = 0xE100000000000000;
        MEMORY[0x1AC5895B0](v73, v74);

        MEMORY[0x1AC5895B0](10, 0xE100000000000000);
        MEMORY[0x1AC5895B0](v120, v121);

        result = (*v116)(v55, v117);
        v54 = v58;
        if (!v53)
        {
          goto LABEL_25;
        }
      }

      v2 = v115;
      v11 = v106;
      v1 = v102;
      goto LABEL_39;
    }

LABEL_25:
    if (v107 <= v54 + 1)
    {
      v57 = v54 + 1;
    }

    else
    {
      v57 = v107;
    }

    v58 = v57 - 1;
    while (1)
    {
      v56 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        break;
      }

      if (v56 >= v107)
      {
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB3B27F8, &qword_1A9998018);
        (*(*(v75 - 8) + 56))(v14, 1, 1, v75);
        v53 = 0;
        goto LABEL_33;
      }

      v53 = *(v108 + 8 * v56);
      ++v54;
      if (v53)
      {
        goto LABEL_32;
      }
    }

LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  MEMORY[0x1AC5895B0](0x3E7974706D653C09, 0xE90000000000000ALL);
LABEL_39:
  MEMORY[0x1AC5895B0](0x726F746172657449, 0xEB000000000A3A73);
  swift_beginAccess();
  v76 = *(v1 + 128);
  if (!*(v76 + 16))
  {
    MEMORY[0x1AC5895B0](0x3E7974706D653C09, 0xE90000000000000ALL);
    return v124;
  }

  v77 = *(v76 + 64);
  v110 = (v76 + 64);
  v78 = 1 << *(v76 + 32);
  v79 = -1;
  if (v78 < 64)
  {
    v79 = ~(-1 << v78);
  }

  v80 = v79 & v77;
  v109 = (v78 + 63) >> 6;
  v111 = (v2 + 32);
  v112 = v2 + 16;
  v116 = (v2 + 8);
  v113 = v76;

  v81 = 0;
  v82 = v105;
  v83 = v115;
  if (v80)
  {
    while (1)
    {
      v84 = v81;
LABEL_51:
      v87 = __clz(__rbit64(v80));
      v80 &= v80 - 1;
      v88 = v87 | (v84 << 6);
      v89 = v113;
      v90 = v114;
      v91 = v117;
      (*(v83 + 16))(v114, *(v113 + 48) + *(v83 + 72) * v88, v117);
      v92 = (*(v89 + 56) + 16 * v88);
      v94 = *v92;
      v93 = v92[1];
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB3B27F8, &qword_1A9998018);
      v82 = v105;
      v96 = &v105[*(v95 + 48)];
      (*(v83 + 32))(v105, v90, v91);
      *v96 = v94;
      *(v96 + 1) = v93;
      (*(*(v95 - 8) + 56))(v82, 0, 1, v95);

      v86 = v84;
      v11 = v106;
LABEL_52:
      sub_1A9814564(v82, v11);
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB3B27F8, &qword_1A9998018);
      if ((*(*(v97 - 8) + 48))(v11, 1, v97) == 1)
      {
        break;
      }

      v98 = &v11[*(v97 + 48)];
      v99 = *v98;
      v100 = *(v98 + 1);
      v118 = 9;
      v119 = 0xE100000000000000;
      MEMORY[0x1AC5895B0](v99, v100);

      MEMORY[0x1AC5895B0](10, 0xE100000000000000);
      MEMORY[0x1AC5895B0](v118, v119);

      result = (*v116)(v11, v117);
      v81 = v86;
      if (!v80)
      {
        goto LABEL_44;
      }
    }

    return v124;
  }

LABEL_44:
  if (v109 <= v81 + 1)
  {
    v85 = v81 + 1;
  }

  else
  {
    v85 = v109;
  }

  v86 = v85 - 1;
  while (1)
  {
    v84 = v81 + 1;
    if (__OFADD__(v81, 1))
    {
      break;
    }

    if (v84 >= v109)
    {
      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB3B27F8, &qword_1A9998018);
      (*(*(v101 - 8) + 56))(v82, 1, 1, v101);
      v80 = 0;
      goto LABEL_52;
    }

    v80 = *&v110[8 * v84];
    ++v81;
    if (v80)
    {
      goto LABEL_51;
    }
  }

LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_1A9813FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1A9814008, a4, 0);
}

uint64_t sub_1A9814008()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  swift_beginAccess();

  v5 = *(v4 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v4 + 112);
  *(v4 + 112) = 0x8000000000000000;
  sub_1A97E3308(v2, v1, v3, isUniquelyReferenced_nonNull_native);
  *(v4 + 112) = v9;
  swift_endAccess();
  v7 = v0[1];

  return v7();
}

uint64_t sub_1A98140D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1A98140F8, a4, 0);
}

uint64_t sub_1A98140F8()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  swift_beginAccess();

  v5 = *(v4 + 120);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v4 + 120);
  *(v4 + 120) = 0x8000000000000000;
  sub_1A97E3308(v2, v1, v3, isUniquelyReferenced_nonNull_native);
  *(v4 + 120) = v9;
  swift_endAccess();
  v7 = v0[1];

  return v7();
}

uint64_t sub_1A98141C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1A98141E8, a4, 0);
}

uint64_t sub_1A98141E8()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  swift_beginAccess();

  v5 = *(v4 + 128);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v4 + 128);
  *(v4 + 128) = 0x8000000000000000;
  sub_1A97E3308(v2, v1, v3, isUniquelyReferenced_nonNull_native);
  *(v4 + 128) = v9;
  swift_endAccess();
  v7 = v0[1];

  return v7();
}

uint64_t sub_1A98142B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1A98142D4, a4, 0);
}

uint64_t sub_1A98142D4()
{
  v1 = v0[2];
  sub_1A9814334(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1A9814334(uint64_t a1)
{
  v2 = sub_1A99762C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v3 + 16);
  v7(v6, a1, v2);
  swift_beginAccess();
  sub_1A97DCD68(0, 0, v6);
  swift_endAccess();
  v7(v6, a1, v2);
  swift_beginAccess();
  sub_1A97DCD68(0, 0, v6);
  swift_endAccess();
  v7(v6, a1, v2);
  swift_beginAccess();
  sub_1A97DCD68(0, 0, v6);
  return swift_endAccess();
}

void *_SFXPCContainerRegistry.deinit()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t _SFXPCContainerRegistry.__deallocating_deinit()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1A9814564(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B27F0, &qword_1A9998010);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 Deque._UnsafeHandle.header.getter@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = v2;
  return result;
}

void *(*Deque._UnsafeHandle.count.modify(void *a1, uint64_t a2))(void *result)
{
  *a1 = *(a2 + 8);
  a1[1] = a2;
  return sub_1A9814688;
}

void *(*Deque._UnsafeHandle.startSlot.modify(void *a1, uint64_t a2))(void *result)
{
  *a1 = *(a2 + 16);
  a1[1] = a2;
  return sub_1A98146D0;
}

uint64_t Deque._UnsafeHandle.buffer(for:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v5 = *(*(a5 - 8) + 72);
    return sub_1A99767B0();
  }

  return result;
}

uint64_t Deque._UnsafeHandle.mutableBuffer(for:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v6 = *(*(a5 - 8) + 72);
    sub_1A99767B0();

    return sub_1A99770E0();
  }

  return result;
}

Sharing::_DequeSlot __swiftcall Deque._UnsafeHandle.slot(after:)(Sharing::_DequeSlot after)
{
  if (__OFADD__(after.position, 1))
  {
    __break(1u);
  }

  else if (after.position + 1 >= *v1)
  {
    return 0;
  }

  else
  {
    ++after.position;
  }

  return after;
}

Sharing::_DequeSlot __swiftcall Deque._UnsafeHandle.slot(before:)(Sharing::_DequeSlot before)
{
  if (before.position)
  {
    v2 = __OFSUB__(before.position, 1);
    result.position = before.position - 1;
    if (!v2)
    {
      return result;
    }

    __break(1u);
  }

  result.position = *v1 - 1;
  if (__OFSUB__(*v1, 1))
  {
    __break(1u);
  }

  return result;
}

Sharing::_DequeSlot __swiftcall Deque._UnsafeHandle.slot(_:offsetBy:)(Sharing::_DequeSlot _, Swift::Int offsetBy)
{
  v4 = __OFADD__(_.position, offsetBy);
  result.position = _.position + offsetBy;
  if (v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (offsetBy < 0)
  {
LABEL_7:
    if ((result.position & 0x8000000000000000) == 0)
    {
      return result;
    }

    v4 = __OFADD__(result.position, *v2);
    result.position += *v2;
    if (!v4)
    {
      return result;
    }

LABEL_11:
    __break(1u);
    return result;
  }

  v4 = __OFSUB__(result.position, *v2);
  if (result.position >= *v2)
  {
    result.position -= *v2;
    if (v4)
    {
      __break(1u);
      goto LABEL_7;
    }
  }

  return result;
}

Sharing::_DequeSlot __swiftcall Deque._UnsafeHandle.slot(forOffset:)(Swift::Int forOffset)
{
  v2 = v1[2] + forOffset;
  v3 = *v1;
  if (v2 < *v1)
  {
    v3 = 0;
  }

  return (v2 - v3);
}

void *Deque._UnsafeHandle.segments()@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = result[2];
  v8 = *result - v7;
  if (__OFSUB__(*result, v7))
  {
    __break(1u);
  }

  else
  {
    v9 = *(a3 - 8);
    v10 = result[1];
    if (v8 >= v10)
    {
      v12 = a2 + *(v9 + 72) * v7;
      result = _UnsafeWrappedBuffer.init(start:count:)(v15);
      goto LABEL_6;
    }

    if (!__OFSUB__(v10, v8))
    {
      v11 = a2 + *(v9 + 72) * v7;
      result = _UnsafeWrappedBuffer.init(first:count:second:count:)(v15);
LABEL_6:
      v13 = v16;
      v14 = v15[1];
      *a4 = v15[0];
      *(a4 + 16) = v14;
      *(a4 + 32) = v13;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t Deque._UnsafeHandle.segments(forOffsets:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a3[2];
  v8 = v7 + result;
  v9 = *a3;
  if (v7 + result >= *a3)
  {
    v10 = *a3;
  }

  else
  {
    v10 = 0;
  }

  v11 = v7 + a2;
  if (v11 >= v9)
  {
    v12 = *a3;
  }

  else
  {
    v12 = 0;
  }

  v13 = __OFSUB__(a2, result);
  v14 = a2 - result;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    v15 = v8 - v10;
    v16 = *(a5 - 8);
    if (!v14 || v15 < v11 - v12)
    {
      v18 = a4 + *(v16 + 72) * v15;
      result = _UnsafeWrappedBuffer.init(start:count:)(v21);
      goto LABEL_13;
    }

    if (!__OFSUB__(v9, v15))
    {
      v17 = a4 + *(v16 + 72) * v15;
      result = _UnsafeWrappedBuffer.init(first:count:second:count:)(v21);
LABEL_13:
      v19 = v22;
      v20 = v21[1];
      *a6 = v21[0];
      *(a6 + 16) = v20;
      *(a6 + 32) = v19;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t Deque._UnsafeHandle.mutableSegments()@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  Deque._UnsafeHandle.segments()(a1, a2, a3, &v22);
  v6 = sub_1A99770E0();
  v8 = v7;
  v17 = v23;
  v18 = v24;
  v16[2] = a3;
  sub_1A99767C0();
  sub_1A99770A0();
  v9 = sub_1A9977100();
  result = sub_1A97A4AD0(sub_1A98174EC, v16, MEMORY[0x1E69E73E0], v9, v10, &v19);
  v12 = v19;
  v13 = v20;
  if (v20)
  {
    v14 = v19;
  }

  else
  {
    v14 = 0;
  }

  if (v20)
  {
    v15 = v21;
  }

  else
  {
    v15 = 1;
  }

  if (!v21)
  {
    v12 = v14;
  }

  *a4 = v6;
  *(a4 + 8) = v8;
  *(a4 + 16) = v12;
  *(a4 + 24) = v13;
  *(a4 + 32) = v15;
  return result;
}

uint64_t Deque._UnsafeHandle.mutableSegments(forOffsets:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  Deque._UnsafeHandle.segments(forOffsets:)(a1, a2, a3, a4, a5, &v24);
  v8 = sub_1A99770E0();
  v10 = v9;
  v19 = v25;
  v20 = v26;
  v18[2] = a5;
  sub_1A99767C0();
  sub_1A99770A0();
  v11 = sub_1A9977100();
  result = sub_1A97A4AD0(sub_1A981772C, v18, MEMORY[0x1E69E73E0], v11, v12, &v21);
  v14 = v21;
  v15 = v22;
  if (v22)
  {
    v16 = v21;
  }

  else
  {
    v16 = 0;
  }

  if (v22)
  {
    v17 = v23;
  }

  else
  {
    v17 = 1;
  }

  if (!v23)
  {
    v14 = v16;
  }

  *a6 = v8;
  *(a6 + 8) = v10;
  *(a6 + 16) = v14;
  *(a6 + 24) = v15;
  *(a6 + 32) = v17;
  return result;
}

Sharing::_DequeSlot Deque._UnsafeHandle.availableSegments()@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = a1[1];
  v6 = a1[2];
  result.position = Deque._UnsafeHandle.slot(_:offsetBy:)(v6, v7).position;
  v9 = *a1;
  if (v7 >= *a1)
  {
    v12 = *(*(a2 - 8) + 72);
    result.position = sub_1A99770C0();
    goto LABEL_6;
  }

  if (result.position < v6)
  {
    if (!__OFSUB__(v6, result.position))
    {
      v10 = *(*(a2 - 8) + 72);
      sub_1A99767B0();
      result.position = sub_1A99770E0();
LABEL_6:
      v13 = 0;
      v14 = 0;
      v15 = 1;
LABEL_12:
      *a3 = result;
      *(a3 + 8) = v11;
      *(a3 + 16) = v13;
      *(a3 + 24) = v14;
      *(a3 + 32) = v15;
      return result;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (v9 < result.position)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFSUB__(v9, result.position))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v16 = *(*(a2 - 8) + 72);
  sub_1A99767B0();
  result.position = sub_1A99770E0();
  if ((a1[2] & 0x8000000000000000) == 0)
  {
    position = result.position;
    v19 = v17;
    sub_1A99767B0();
    v13 = sub_1A99770E0();
    result.position = position;
    v14 = v20;
    v11 = v19;
    v15 = v14 == 0;
    if (!v14)
    {
      v13 = 0;
    }

    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1A9814DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t), uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a3 < 1)
  {
    return a1;
  }

  result = a7(a2, a3, a6);
  if (result)
  {
    result = a8(result, a3, a5 + *(*(a6 - 8) + 72) * a1, a6);
    v14 = __OFADD__(a1, a3);
    a1 += a3;
    if (!v14)
    {
      return a1;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::tuple_source_Sharing__DequeSlot_target_Sharing__DequeSlot __swiftcall Deque._UnsafeHandle.move(from:to:count:)(Sharing::_DequeSlot from, Sharing::_DequeSlot to, Swift::Int count)
{
  if (count >= 1)
  {
    v5 = *(*(v3 - 8) + 72);
    position = from.position;
    v7 = to.position;
    sub_1A9977080();
    v8 = Deque._UnsafeHandle.slot(_:offsetBy:)(position, count).position;
    to.position = Deque._UnsafeHandle.slot(_:offsetBy:)(v7, count).position;
    from.position = v8;
  }

  result.target = to;
  result.source = from;
  return result;
}

uint64_t Deque._UnsafeHandle.copyElements()(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for _DequeBuffer();
  v6 = *a1;
  v13[14] = a1;
  v13[15] = a2;
  sub_1A9977310();

  v7 = sub_1A99774C0();
  v8 = v7;
  if (a1[1] < 1)
  {
  }

  else
  {
    v9 = MEMORY[0x1EEE9AC00](v7);
    v13[8] = a3;
    v13[9] = a1;
    v13[10] = a2;
    MEMORY[0x1EEE9AC00](v9);
    v13[2] = a3;
    v13[3] = sub_1A9817524;
    v13[4] = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    sub_1A982DE20(sub_1A9817544, v13, v8, &type metadata for _DequeBufferHeader, a3, v11, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], v14);
  }

  return v8;
}

uint64_t sub_1A98150BC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  Deque._UnsafeHandle.segments()(a3, a4, a5, v11);
  result = Deque._UnsafeHandle.initialize(at:from:)(a3[2], v11[0], v11[1], v8, a2, a5);
  if ((v12 & 1) == 0)
  {
    return Deque._UnsafeHandle.initialize(at:from:)(0, v11[2], v11[3], v10, a2, a5);
  }

  return result;
}

uint64_t Deque._UnsafeHandle.copyElements(minimumCapacity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _DequeBuffer();
  v13[14] = a2;
  v13[15] = a3;
  sub_1A9977310();

  v7 = sub_1A99774C0();
  v8 = v7;
  if (*(a2 + 8) < 1)
  {
  }

  else
  {
    v9 = MEMORY[0x1EEE9AC00](v7);
    v13[8] = a4;
    v13[9] = a2;
    v13[10] = a3;
    MEMORY[0x1EEE9AC00](v9);
    v13[2] = a4;
    v13[3] = sub_1A98175BC;
    v13[4] = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    sub_1A982DE20(sub_1A9817714, v13, v8, &type metadata for _DequeBufferHeader, a4, v11, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], v14);
  }

  return v8;
}

uint64_t sub_1A98152D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  Deque._UnsafeHandle.segments()(a3, a4, a5, v10);
  result = Deque._UnsafeHandle.initialize(at:from:)(0, v10[0], v10[1], v7, a2, a5);
  if ((v11 & 1) == 0)
  {
    return Deque._UnsafeHandle.initialize(at:from:)(result, v10[2], v10[3], v9, a2, a5);
  }

  return result;
}

uint64_t Deque._UnsafeHandle.moveElements(minimumCapacity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 8);
  type metadata accessor for _DequeBuffer();
  v14[14] = v7;
  sub_1A9977310();

  v8 = sub_1A99774C0();
  v9 = v8;
  if (v7 < 1)
  {
  }

  else
  {
    v10 = MEMORY[0x1EEE9AC00](v8);
    v14[8] = a4;
    v14[9] = a2;
    v14[10] = a3;
    MEMORY[0x1EEE9AC00](v10);
    v14[2] = a4;
    v14[3] = sub_1A9817620;
    v14[4] = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    sub_1A982DE20(sub_1A9817714, v14, v9, &type metadata for _DequeBufferHeader, a4, v12, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], v15);

    *(a2 + 8) = 0;
  }

  return v9;
}

uint64_t sub_1A98154E8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  Deque._UnsafeHandle.segments()(a3, a4, a5, &v20);
  sub_1A99770E0();
  v7 = v6;
  v16 = v21;
  v17 = v22;
  v15[2] = a5;
  sub_1A99767C0();
  sub_1A99770A0();
  v8 = sub_1A9977100();
  result = sub_1A97A4AD0(sub_1A981772C, v15, MEMORY[0x1E69E73E0], v8, v9, v18);
  v11 = v18[1];
  v12 = v19;
  if (v7 >= 1)
  {
    result = sub_1A99770B0();
    if (!result)
    {
      __break(1u);
      goto LABEL_12;
    }

    result = sub_1A9977080();
  }

  if (v11 < 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  if ((v13 & 1) == 0)
  {
    result = sub_1A99770B0();
    if (result)
    {
      v14 = *(*(a5 - 8) + 72);
      return sub_1A9977080();
    }

LABEL_12:
    __break(1u);
  }

  return result;
}

Sharing::_DequeSlot Deque._UnsafeHandle.withUnsafeSegment<A>(startingAt:maximumCount:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, Sharing::_DequeSlot *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v45 = a10;
  v43 = *(a10 - 8);
  v44 = a1;
  v14 = *(v43 + 64);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v22 = &v39 - v21;
  v24 = *(v23 + 8);
  if (v24 <= v25)
  {
    v38 = sub_1A99767B0();
    a5(v38);
    if (v10)
    {
      return v24;
    }

    v22 = v17;
LABEL_19:
    (*(v43 + 32))(v44, v22, v45);
    return v24;
  }

  v26 = v19;
  v40 = v18;
  v41 = v20;
  v42 = a5;
  result.position = Deque._UnsafeHandle.slot(_:offsetBy:)(a7[2], v24).position;
  v28 = a7[2].position + a2;
  position = a7->position;
  if (v28 >= a7->position)
  {
    v30 = a7->position;
  }

  else
  {
    v30 = 0;
  }

  v31 = v28 - v30;
  if (v31 < result.position)
  {
    position = result.position;
  }

  v32 = __OFSUB__(position, v31);
  v33 = position - v31;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    v34 = 0x7FFFFFFFFFFFFFFFLL;
    if ((v26 & 1) == 0)
    {
      v34 = v40;
    }

    if (v33 >= v34)
    {
      v35 = v34;
    }

    else
    {
      v35 = v33;
    }

    v36 = v41 + *(*(a9 - 8) + 72) * v31;
    v37 = sub_1A99767B0();
    result.position = v42(v37);
    if (v10)
    {
      return v24;
    }

    v24 = a2 + v35;
    if (!__OFADD__(a2, v35))
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t Deque._UnsafeHandle.uncheckedReplaceInPlace<A>(inOffsets:with:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result != a2)
  {
    v33 = v8;
    v34 = v9;
    Deque._UnsafeHandle.segments(forOffsets:)(result, a2, a4, a5, a6, v27);
    v14 = sub_1A99770E0();
    v16 = v15;
    v29 = v27[1];
    LOBYTE(v30) = v28;
    MEMORY[0x1EEE9AC00](v14);
    v23[2] = a6;
    sub_1A99767C0();
    sub_1A99770A0();
    v17 = sub_1A9977100();
    sub_1A97A4AD0(sub_1A981772C, v23, MEMORY[0x1E69E73E0], v17, v18, &v24);
    v19 = v24;
    if (v25)
    {
      v20 = v24;
    }

    else
    {
      v20 = 0;
    }

    if (v25)
    {
      v21 = v26;
    }

    else
    {
      v21 = 1;
    }

    if (!v26)
    {
      v19 = v20;
    }

    *&v29 = v14;
    *(&v29 + 1) = v16;
    v30 = v19;
    v31 = v25;
    v32 = v21;
    v22 = type metadata accessor for _UnsafeMutableWrappedBuffer();
    return _UnsafeMutableWrappedBuffer.assign<A>(from:)(a3, v22, a7, a8);
  }

  return result;
}

uint64_t Deque._UnsafeHandle.uncheckedAppend(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a3 + *(v8 + 72) * Deque._UnsafeHandle.slot(_:offsetBy:)(v12[2], v12[1].position).position;
  (*(v8 + 16))(v11, a1, a4);
  result = (*(v8 + 32))(v13, v11, a4);
  v15 = *(a2 + 8);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 8) = v17;
  }

  return result;
}

uint64_t Deque._UnsafeHandle.uncheckedAppend(contentsOf:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 1)
  {
    return result;
  }

  v6 = result;
  result = a3[1];
  v7 = __OFADD__(result, a2);
  v8 = result + a2;
  if (v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  a3[1] = v8;
  if (v8 < result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  Deque._UnsafeHandle.segments(forOffsets:)(result, v8, a3, a4, a5, &v25);
  v10 = sub_1A99770E0();
  v12 = v11;
  v28 = v26;
  LOBYTE(v29) = v27;
  MEMORY[0x1EEE9AC00](v10);
  v21[2] = a5;
  v13 = sub_1A99767C0();
  sub_1A99770A0();
  v14 = sub_1A9977100();
  sub_1A97A4AD0(sub_1A981772C, v21, MEMORY[0x1E69E73E0], v14, v15, &v22);
  v16 = v22;
  if (v23)
  {
    v17 = v22;
  }

  else
  {
    v17 = 0;
  }

  if (v23)
  {
    v18 = v24;
  }

  else
  {
    v18 = 1;
  }

  if (!v24)
  {
    v16 = v17;
  }

  *&v28 = v10;
  *(&v28 + 1) = v12;
  v29 = v16;
  v30 = v23;
  v31 = v18;
  v22 = v6;
  v23 = a2;
  v19 = type metadata accessor for _UnsafeMutableWrappedBuffer();
  WitnessTable = swift_getWitnessTable();
  return _UnsafeMutableWrappedBuffer.initialize<A>(from:)(&v22, v19, v13, WitnessTable);
}

uint64_t Deque._UnsafeHandle.uncheckedPrepend(_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x1EEE9AC00](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[2];
  if (!v12)
  {
LABEL_5:
    v13 = *a2 - 1;
    if (__OFSUB__(*a2, 1))
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v13 = v12 - 1;
  if (__OFSUB__(v12, 1))
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_6:
  v14 = v9 + v13 * *(v6 + 72);
  (*(v6 + 16))(v11);
  result = (*(v6 + 32))(v14, v11, a4);
  a2[2] = v13;
  v15 = a2[1];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    a2[1] = v17;
    return result;
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

Swift::Int Deque._UnsafeHandle.uncheckedPrepend(contentsOf:)(Swift::Int result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a2 >= 1)
  {
    v8 = result;
    v9 = a3[2];
    result = Deque._UnsafeHandle.slot(_:offsetBy:)(v9, -a2).position;
    a3[2] = result;
    v10 = a3[1];
    v11 = __OFADD__(v10, a2);
    v12 = v10 + a2;
    if (v11)
    {
      __break(1u);
    }

    else
    {
      a3[1] = v12;
      Deque._UnsafeHandle.mutableWrappedBuffer(between:and:)(result, v9, a3, a5, v17);
      v16[0] = v8;
      v16[1] = a2;
      v13 = type metadata accessor for _UnsafeMutableWrappedBuffer();
      v14 = sub_1A99767C0();
      WitnessTable = swift_getWitnessTable();
      return _UnsafeMutableWrappedBuffer.initialize<A>(from:)(v16, v13, v14, WitnessTable);
    }
  }

  return result;
}

uint64_t Deque._UnsafeHandle.mutableWrappedBuffer(between:and:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = *(a4 - 8);
  if (result >= a2)
  {
    if (!__OFSUB__(*a3, result))
    {
      v14 = *(v6 + 72);
      v8 = sub_1A99770C0();
      v10 = v15;
      result = sub_1A99770C0();
      v13 = v12 == 0;
      if (v12)
      {
        v11 = result;
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_8;
    }
  }

  else
  {
    if (!__OFSUB__(a2, result))
    {
      v7 = *(v6 + 72);
      result = sub_1A99770C0();
      v8 = result;
      v10 = v9;
      v11 = 0;
      v12 = 0;
      v13 = 1;
LABEL_8:
      *a5 = v8;
      *(a5 + 8) = v10;
      *(a5 + 16) = v11;
      *(a5 + 24) = v12;
      *(a5 + 32) = v13;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Deque._UnsafeHandle.uncheckedInsert<A>(contentsOf:count:atOffset:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(*(a7 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v18 = &v24[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (v12 < 1)
  {
    v22 = *(v16 + 8);

    return v22(v11, a7);
  }

  else
  {
    v19 = v11;
    v23 = v16;
    Deque._UnsafeHandle.openGap(ofSize:atOffset:)(v12, v13, v14, v15, v24);
    (*(v23 + 16))(v18, v19, a7);
    v20 = type metadata accessor for _UnsafeMutableWrappedBuffer();
    _UnsafeMutableWrappedBuffer.initialize<A>(from:)(v18, v20, a7, a8);
    return (*(v23 + 8))(v19, a7);
  }
}

uint64_t Deque._UnsafeHandle.openGap(ofSize:atOffset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, Swift::Int *a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v5 = a3[1];
  v6 = v5 - a2;
  if (__OFSUB__(v5, a2))
  {
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v9 = a2;
  v10 = result;
  v11 = a3[2];
  if (v6 > a2)
  {
    v12 = -result;
    if (!__OFSUB__(0, result))
    {
      v13.position = Deque._UnsafeHandle.slot(_:offsetBy:)(v11, -result).position;
      v14 = a3[2] + v9;
      v15 = *a3;
      if (v14 < *a3)
      {
        v15 = 0;
      }

      v16 = v14 - v15;
      result = Deque._UnsafeHandle.slot(_:offsetBy:)((v14 - v15), -v10).position;
      v6 = result;
      v17 = *a3;
      if (v16 <= 0)
      {
        v18 = *a3;
      }

      else
      {
        v18 = v16;
      }

      if (result <= 0)
      {
        v19 = *a3;
      }

      else
      {
        v19 = result;
      }

      if (v18 >= v11)
      {
        if (v19 < v13.position)
        {
          v34 = v17 - v13.position;
          if (__OFSUB__(v17, v13.position))
          {
LABEL_87:
            __break(1u);
            goto LABEL_88;
          }

          if (v34 < 1)
          {
            goto LABEL_47;
          }

          v35 = *(*(a4 - 8) + 72);
          sub_1A9977080();
          Deque._UnsafeHandle.slot(_:offsetBy:)(v11, v34);
          position = v13.position;
          v25 = v34;
LABEL_46:
          result = Deque._UnsafeHandle.slot(_:offsetBy:)(position, v25).position;
LABEL_47:
          if (v6 < 1)
          {
            goto LABEL_74;
          }

          v36 = *(*(a4 - 8) + 72);
          sub_1A9977080();
          Deque._UnsafeHandle.slot(_:offsetBy:)(v10, v6);
          v37 = 0;
          v38 = v6;
          goto LABEL_73;
        }

        if (v9 < 1)
        {
          goto LABEL_74;
        }

        v50 = *(*(a4 - 8) + 72);
        sub_1A9977080();
        Deque._UnsafeHandle.slot(_:offsetBy:)(v11, v9);
        v37 = v13.position;
        v38 = v9;
LABEL_73:
        result = Deque._UnsafeHandle.slot(_:offsetBy:)(v37, v38).position;
LABEL_74:
        a3[2] = v13.position;
        v51 = a3[1];
        v40 = __OFADD__(v51, v10);
        v52 = v51 + v10;
        if (!v40)
        {
          a3[1] = v52;
          if (v16 <= 0)
          {
            v48 = *a3;
          }

          else
          {
            v48 = v16;
          }

          v49 = v6;
LABEL_79:
          result = Deque._UnsafeHandle.mutableWrappedBuffer(between:and:)(v49, v48, a3, a4, v56);
          v53 = v57;
          v54 = v56[1];
          *a5 = v56[0];
          *(a5 + 16) = v54;
          *(a5 + 32) = v53;
          return result;
        }

        goto LABEL_83;
      }

      v9 = v17 - v11;
      LOBYTE(v20) = __OFSUB__(v17, v11);
      if (v19 < v13.position)
      {
        if (v20)
        {
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

        if (v9 >= 1)
        {
          v21 = *(*(a4 - 8) + 72);
          sub_1A9977080();
          Deque._UnsafeHandle.slot(_:offsetBy:)(v11, v9);
          result = Deque._UnsafeHandle.slot(_:offsetBy:)(v13, v9).position;
        }

        if (v10 < 1)
        {
          goto LABEL_47;
        }

        v22 = *a3 - v10;
        v23 = *(*(a4 - 8) + 72);
        sub_1A9977080();
        Deque._UnsafeHandle.slot(_:offsetBy:)(0, v10);
        position = v22;
        v25 = v10;
        goto LABEL_46;
      }

LABEL_56:
      if (v20)
      {
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      if (v9 >= 1)
      {
        v41 = *(*(a4 - 8) + 72);
        sub_1A9977080();
        Deque._UnsafeHandle.slot(_:offsetBy:)(v11, v9);
        result = Deque._UnsafeHandle.slot(_:offsetBy:)(v13, v9).position;
      }

      if (v16 < 1)
      {
        goto LABEL_74;
      }

      v42 = *a3 + v12;
      v43 = *(*(a4 - 8) + 72);
      sub_1A9977080();
      Deque._UnsafeHandle.slot(_:offsetBy:)(0, v16);
      v37 = v42;
      v38 = v16;
      goto LABEL_73;
    }

    goto LABEL_81;
  }

  result = Deque._UnsafeHandle.slot(_:offsetBy:)(v11, v5).position;
  if (__OFADD__(v5, v10))
  {
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v12 = result;
  v11 = Deque._UnsafeHandle.slot(_:offsetBy:)(v11, v5 + v10).position;
  v26 = a3[2] + v9;
  v27 = *a3;
  if (v26 < *a3)
  {
    v27 = 0;
  }

  v16 = v26 - v27;
  result = Deque._UnsafeHandle.slot(_:offsetBy:)((v26 - v27), v10).position;
  v13.position = result;
  v20 = *a3;
  if (v12 <= 0)
  {
    v28 = *a3;
  }

  else
  {
    v28 = v12;
  }

  if (v11 <= 0)
  {
    v29 = *a3;
  }

  else
  {
    v29 = v11;
  }

  if (v28 >= v16)
  {
    if (v29 < result)
    {
      if (__OFSUB__(0, v10))
      {
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      if (v11 >= 1)
      {
        v9 = v20 - v10;
        v39 = *(*(a4 - 8) + 72);
        sub_1A9977080();
        Deque._UnsafeHandle.slot(_:offsetBy:)(v9, v11);
        result = Deque._UnsafeHandle.slot(_:offsetBy:)(0, v11).position;
      }

      v40 = __OFSUB__(v6, v11);
      v6 -= v11;
      if (v40)
      {
        __break(1u);
        goto LABEL_56;
      }
    }

LABEL_64:
    if (v6 <= 0)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  if (v29 >= result)
  {
    if (v12 >= 1)
    {
      v44 = *(*(a4 - 8) + 72);
      sub_1A9977080();
      Deque._UnsafeHandle.slot(_:offsetBy:)(0, v12);
      result = Deque._UnsafeHandle.slot(_:offsetBy:)(v10, v12).position;
      v20 = *a3;
    }

    v6 = v20 - v16;
    if (__OFSUB__(v20, v16))
    {
      goto LABEL_90;
    }

    goto LABEL_64;
  }

  if (v12 >= 1)
  {
    v30 = *(*(a4 - 8) + 72);
    sub_1A9977080();
    Deque._UnsafeHandle.slot(_:offsetBy:)(0, v12);
    result = Deque._UnsafeHandle.slot(_:offsetBy:)(v10, v12).position;
  }

  if (__OFSUB__(0, v10))
  {
    goto LABEL_86;
  }

  if (v10 >= 1)
  {
    v31.position = *a3 - v10;
    v32 = *(*(a4 - 8) + 72);
    sub_1A9977080();
    Deque._UnsafeHandle.slot(_:offsetBy:)(v31, v10);
    result = Deque._UnsafeHandle.slot(_:offsetBy:)(0, v10).position;
  }

  v33 = v6 - v10;
  if (__OFSUB__(v6, v10))
  {
    goto LABEL_91;
  }

  v6 = v33 - v12;
  if (!__OFSUB__(v33, v12))
  {
    if (v6 < 1)
    {
LABEL_66:
      v46 = a3[1];
      v40 = __OFADD__(v46, v10);
      v47 = v46 + v10;
      if (!v40)
      {
        a3[1] = v47;
        if (v13.position <= 0)
        {
          v48 = *a3;
        }

        else
        {
          v48 = v13.position;
        }

        v49 = v16;
        goto LABEL_79;
      }

      goto LABEL_84;
    }

LABEL_65:
    v45 = *(*(a4 - 8) + 72);
    sub_1A9977080();
    Deque._UnsafeHandle.slot(_:offsetBy:)(v16, v6);
    result = Deque._UnsafeHandle.slot(_:offsetBy:)(v13, v6).position;
    goto LABEL_66;
  }

LABEL_92:
  __break(1u);
  return result;
}

uint64_t Deque._UnsafeHandle.uncheckedRemoveFirst()(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + *(*(a3 - 8) + 72) * a1[2];
  result = sub_1A9977090();
  v6 = a1[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    v9 = a1[1];
    if (v8 >= *a1)
    {
      v8 = 0;
    }

    a1[2] = v8;
    if (!__OFSUB__(v9, 1))
    {
      a1[1] = v9 - 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

void *Deque._UnsafeHandle.uncheckedRemoveLast()(void *result, uint64_t a2, uint64_t a3)
{
  if (__OFSUB__(result[1], 1))
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    result[2];
    *result;
    v4 = *(*(a3 - 8) + 72);
    result = sub_1A9977090();
    v5 = v3[1];
    v6 = __OFSUB__(v5, 1);
    v7 = v5 - 1;
    if (!v6)
    {
      v3[1] = v7;
      return result;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall Deque._UnsafeHandle.uncheckedRemoveFirst(_:)(Swift::Int a1)
{
  if (a1 >= 1)
  {
    v4 = v3;
    v5 = v1;
    Deque._UnsafeHandle.segments(forOffsets:)(0, a1, v1, v2, v3, &v22);
    v7 = sub_1A99770E0();
    v9 = v8;
    v25 = v23;
    LOBYTE(v26) = v24;
    MEMORY[0x1EEE9AC00](v7);
    v18[2] = v4;
    sub_1A99767C0();
    sub_1A99770A0();
    v10 = sub_1A9977100();
    sub_1A97A4AD0(sub_1A981772C, v18, MEMORY[0x1E69E73E0], v10, v11, &v19);
    v12 = v19;
    if (v20)
    {
      v13 = v19;
    }

    else
    {
      v13 = 0;
    }

    if (v20)
    {
      v14 = v21;
    }

    else
    {
      v14 = 1;
    }

    if (!v21)
    {
      v12 = v13;
    }

    *&v25 = v7;
    *(&v25 + 1) = v9;
    v26 = v12;
    v27 = v20;
    v28 = v14;
    type metadata accessor for _UnsafeMutableWrappedBuffer();
    _UnsafeMutableWrappedBuffer.deinitialize()();
    v5[2].position = Deque._UnsafeHandle.slot(_:offsetBy:)(v5[2], a1).position;
    position = v5[1].position;
    v16 = __OFSUB__(position, a1);
    v17 = position - a1;
    if (v16)
    {
      __break(1u);
    }

    else
    {
      v5[1].position = v17;
    }
  }
}

Swift::Void __swiftcall Deque._UnsafeHandle.uncheckedRemoveLast(_:)(Swift::Int a1)
{
  if (a1 >= 1)
  {
    v4 = v1;
    v6 = v1[1];
    v7 = __OFSUB__(v6, a1);
    v8 = v6 - a1;
    if (v7)
    {
      __break(1u);
    }

    else if (v6 >= v8)
    {
      v9 = v3;
      Deque._UnsafeHandle.segments(forOffsets:)(v8, v6, v4, v2, v3, &v24);
      v10 = sub_1A99770E0();
      v12 = v11;
      v27 = v25;
      LOBYTE(v28) = v26;
      MEMORY[0x1EEE9AC00](v10);
      v20[2] = v9;
      sub_1A99767C0();
      sub_1A99770A0();
      v13 = sub_1A9977100();
      sub_1A97A4AD0(sub_1A981772C, v20, MEMORY[0x1E69E73E0], v13, v14, &v21);
      v15 = v21;
      if (v22)
      {
        v16 = v21;
      }

      else
      {
        v16 = 0;
      }

      if (v22)
      {
        v17 = v23;
      }

      else
      {
        v17 = 1;
      }

      if (!v23)
      {
        v15 = v16;
      }

      *&v27 = v10;
      *(&v27 + 1) = v12;
      v28 = v15;
      v29 = v22;
      v30 = v17;
      type metadata accessor for _UnsafeMutableWrappedBuffer();
      _UnsafeMutableWrappedBuffer.deinitialize()();
      v18 = v4[1];
      v7 = __OFSUB__(v18, a1);
      v19 = v18 - a1;
      if (!v7)
      {
        v4[1] = v19;
        return;
      }

LABEL_17:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_17;
  }
}

Swift::Void __swiftcall Deque._UnsafeHandle.uncheckedRemoveAll()()
{
  v3 = v0 + 1;
  if (v0[1] >= 1)
  {
    v4 = v2;
    Deque._UnsafeHandle.segments()(v0, v1, v2, &v17);
    v5 = sub_1A99770E0();
    v7 = v6;
    v20 = v18;
    LOBYTE(v21) = v19;
    MEMORY[0x1EEE9AC00](v5);
    v13[2] = v4;
    sub_1A99767C0();
    sub_1A99770A0();
    v8 = sub_1A9977100();
    sub_1A97A4AD0(sub_1A981772C, v13, MEMORY[0x1E69E73E0], v8, v9, &v14);
    v10 = v14;
    if (v15)
    {
      v11 = v14;
    }

    else
    {
      v11 = 0;
    }

    if (v15)
    {
      v12 = v16;
    }

    else
    {
      v12 = 1;
    }

    if (!v16)
    {
      v10 = v11;
    }

    *&v20 = v5;
    *(&v20 + 1) = v7;
    v21 = v10;
    v22 = v15;
    v23 = v12;
    type metadata accessor for _UnsafeMutableWrappedBuffer();
    _UnsafeMutableWrappedBuffer.deinitialize()();
    *v3 = 0;
    v3[1] = 0;
  }
}

Swift::Int Deque._UnsafeHandle.uncheckedRemove(offsets:)(uint64_t a1, uint64_t a2, Sharing::_DequeSlot *a3, uint64_t a4, uint64_t a5)
{
  Deque._UnsafeHandle.segments(forOffsets:)(a1, a2, &a3->position, a4, a5, &v23);
  v10 = sub_1A99770E0();
  v12 = v11;
  v26 = v24;
  LOBYTE(v27) = v25;
  v19[2] = a5;
  sub_1A99767C0();
  sub_1A99770A0();
  v13 = sub_1A9977100();
  sub_1A97A4AD0(sub_1A981772C, v19, MEMORY[0x1E69E73E0], v13, v14, &v20);
  v15 = v20;
  if (v21)
  {
    v16 = v20;
  }

  else
  {
    v16 = 0;
  }

  if (v21)
  {
    v17 = v22;
  }

  else
  {
    v17 = 1;
  }

  if (!v22)
  {
    v15 = v16;
  }

  *&v26 = v10;
  *(&v26 + 1) = v12;
  v27 = v15;
  v28 = v21;
  v29 = v17;
  type metadata accessor for _UnsafeMutableWrappedBuffer();
  _UnsafeMutableWrappedBuffer.deinitialize()();
  return Deque._UnsafeHandle.closeGap(offsets:)(a1, a2, a3, a4, a5);
}

Swift::Int Deque._UnsafeHandle.closeGap(offsets:)(Swift::Int result, uint64_t a2, Sharing::_DequeSlot *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (v5 < 1)
  {
    return result;
  }

  v7 = result;
  position = a3[1].position;
  v8.position = a3[2].position;
  v10 = a3->position;
  if (v8.position + result >= a3->position)
  {
    v11 = a3->position;
  }

  else
  {
    v11 = 0;
  }

  if (v8.position + a2 < v10)
  {
    v10 = 0;
  }

  v12 = position - a2;
  if (__OFSUB__(position, a2))
  {
    goto LABEL_83;
  }

  v14 = v8.position + result - v11;
  v15 = v8.position + a2 - v10;
  if (v12 > result)
  {
    result = Deque._UnsafeHandle.slot(_:offsetBy:)(a3[2], v5).position;
    v12 = result;
    if (!v7)
    {
      goto LABEL_68;
    }

    v16 = a3->position;
    if (v15 <= 0)
    {
      v17 = a3->position;
    }

    else
    {
      v17 = v15;
    }

    if (v14 <= 0)
    {
      v18 = a3->position;
    }

    else
    {
      v18 = v14;
    }

    if (v8.position >= v18)
    {
      if (v17 < result)
      {
        v32 = *(a5 - 8);
        if (v14 >= 1)
        {
          v33 = *(a5 - 8);
          v34 = *(v32 + 72);
          sub_1A9977080();
          Deque._UnsafeHandle.slot(_:offsetBy:)(0, v14);
          Deque._UnsafeHandle.slot(_:offsetBy:)(v5, v14);
          v16 = a3->position;
        }

        v35.position = v16 - v5;
        v36 = *(v32 + 72);
        sub_1A9977080();
        Deque._UnsafeHandle.slot(_:offsetBy:)(v35, v5);
        result = Deque._UnsafeHandle.slot(_:offsetBy:)(0, v5).position;
        v14 = v7 - v15;
        if (__OFSUB__(v7, v15))
        {
          goto LABEL_86;
        }

        if (v14 < 1)
        {
          goto LABEL_68;
        }

        v15 = a3[2].position;
        goto LABEL_66;
      }

      if (__OFSUB__(0, v14))
      {
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      if (v14 >= 1)
      {
        v15 -= v14;
        v47 = *(*(a5 - 8) + 72);
        sub_1A9977080();
        Deque._UnsafeHandle.slot(_:offsetBy:)(0, v14);
        result = Deque._UnsafeHandle.slot(_:offsetBy:)(v15, v14).position;
      }

      v48 = __OFSUB__(v7, v14);
      v14 = v7 - v14;
      if (v48)
      {
        goto LABEL_90;
      }

      goto LABEL_64;
    }

    if (v17 >= result)
    {
      if (v7 >= 1)
      {
        v44 = *(*(a5 - 8) + 72);
        sub_1A9977080();
        Deque._UnsafeHandle.slot(_:offsetBy:)(v8, v7);
        v45.position = v12;
        v46 = v7;
LABEL_67:
        result = Deque._UnsafeHandle.slot(_:offsetBy:)(v45, v46).position;
        goto LABEL_68;
      }

      goto LABEL_68;
    }

    if (v15 >= 1)
    {
      v19.position = v16 - v5;
      v20 = *(*(a5 - 8) + 72);
      sub_1A9977080();
      Deque._UnsafeHandle.slot(_:offsetBy:)(v19, v15);
      result = Deque._UnsafeHandle.slot(_:offsetBy:)(0, v15).position;
    }

    v14 = v7 - v15;
    if (!__OFSUB__(v7, v15))
    {
LABEL_64:
      if (v14 >= 1)
      {
        v15 = a3[2].position;
        v49 = *(*(a5 - 8) + 72);
LABEL_66:
        sub_1A9977080();
        Deque._UnsafeHandle.slot(_:offsetBy:)(v15, v14);
        v45.position = v12;
        v46 = v14;
        goto LABEL_67;
      }

LABEL_68:
      a3[2].position = v12;
      v50 = a3[1].position;
      v48 = __OFSUB__(v50, v5);
      v51 = v50 - v5;
      if (!v48)
      {
        goto LABEL_80;
      }

      __break(1u);
      goto LABEL_71;
    }

    __break(1u);
  }

  result = Deque._UnsafeHandle.slot(_:offsetBy:)(v8, position).position;
  if (__OFSUB__(position, v5))
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v21 = a3[2].position + position - v5;
  v22 = a3->position;
  if (v21 >= a3->position)
  {
    v23 = a3->position;
  }

  else
  {
    v23 = 0;
  }

  if (v12)
  {
    v24 = v21 - v23;
    if (v21 - v23 <= 0)
    {
      v25 = a3->position;
    }

    else
    {
      v25 = v21 - v23;
    }

    if (result <= 0)
    {
      v26 = a3->position;
    }

    else
    {
      v26 = result;
    }

    if (v15 >= v26)
    {
      v37 = v22 - v15;
      v38 = __OFSUB__(v22, v15);
      if (v25 >= v14)
      {
        if (v38)
        {
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
          return result;
        }

        if (v37 >= 1)
        {
          v53 = *(*(a5 - 8) + 72);
          v54 = result;
          sub_1A9977080();
          Deque._UnsafeHandle.slot(_:offsetBy:)(v15, v37);
          v14 = Deque._UnsafeHandle.slot(_:offsetBy:)(v14, v37).position;
          result = v54;
        }

        if (result >= 1)
        {
          v55 = *(*(a5 - 8) + 72);
          v56 = result;
          sub_1A9977080();
          Deque._UnsafeHandle.slot(_:offsetBy:)(0, v56);
          v30.position = v14;
          v31 = v56;
          goto LABEL_78;
        }
      }

      else
      {
        if (v38)
        {
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
          goto LABEL_91;
        }

        v39 = *(a5 - 8);
        if (v37 >= 1)
        {
          v40 = *(a5 - 8);
          v41 = *(v39 + 72);
          sub_1A9977080();
          Deque._UnsafeHandle.slot(_:offsetBy:)(v15, v37);
          v14 = Deque._UnsafeHandle.slot(_:offsetBy:)(v14, v37).position;
        }

        v42 = *(v39 + 72);
        sub_1A9977080();
        v43.position = Deque._UnsafeHandle.slot(_:offsetBy:)(0, v5).position;
        result = Deque._UnsafeHandle.slot(_:offsetBy:)(v14, v5).position;
        if (v24 >= 1)
        {
          sub_1A9977080();
          Deque._UnsafeHandle.slot(_:offsetBy:)(v43, v24);
          v30.position = 0;
          v31 = v24;
          goto LABEL_78;
        }
      }
    }

    else
    {
      if (v25 >= v14)
      {
LABEL_71:
        if (v12 < 1)
        {
          goto LABEL_79;
        }

        v52 = *(*(a5 - 8) + 72);
        sub_1A9977080();
        Deque._UnsafeHandle.slot(_:offsetBy:)(v15, v12);
        v30.position = v14;
        v31 = v12;
        goto LABEL_78;
      }

      v27 = v22 - v14;
      if (__OFSUB__(v22, v14))
      {
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      if (v27 >= 1)
      {
        v28 = *(*(a5 - 8) + 72);
        sub_1A9977080();
        v15 = Deque._UnsafeHandle.slot(_:offsetBy:)(v15, v27).position;
        result = Deque._UnsafeHandle.slot(_:offsetBy:)(v14, v27).position;
      }

      if (__OFSUB__(v12, v27))
      {
        goto LABEL_92;
      }

      if (v12 - v27 >= 1)
      {
        v29 = *(*(a5 - 8) + 72);
        sub_1A9977080();
        Deque._UnsafeHandle.slot(_:offsetBy:)(v15, v12 - v27);
        v30.position = 0;
        v31 = v12 - v27;
LABEL_78:
        result = Deque._UnsafeHandle.slot(_:offsetBy:)(v30, v31).position;
      }
    }
  }

LABEL_79:
  v57 = a3[1].position;
  v48 = __OFSUB__(v57, v5);
  v51 = v57 - v5;
  if (v48)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

LABEL_80:
  a3[1].position = v51;
  return result;
}

__n128 sub_1A981750C@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = v2[1].n128_u64[0];
  result = *v2;
  *a1 = *v2;
  a1[1].n128_u64[0] = v3;
  return result;
}

uint64_t sub_1A9817574@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_1A9977320();
  v5 = *(v3 + 8);
  *a1 = result;
  a1[1] = v5;
  a1[2] = 0;
  return result;
}

uint64_t sub_1A98175DC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_1A9977320();
  *a1 = result;
  a1[1] = v3;
  a1[2] = 0;
  return result;
}

uint64_t sub_1A9817640()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A981767C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1A98176C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t Deque.description.getter(uint64_t a1)
{
  v4 = a1;
  v1 = type metadata accessor for Deque();
  WitnessTable = swift_getWitnessTable();
  return _arrayDescription<A>(for:)(&v4, v1, WitnessTable);
}

uint64_t sub_1A98177CC(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_1A9976360();
  v4 = sub_1A982B3C8(&qword_1EB3AC888, MEMORY[0x1E6966BD8]);
  v5 = *(MEMORY[0x1E69E85A8] + 4);
  v6 = swift_task_alloc();
  v2[6] = v6;
  *v6 = v2;
  v6[1] = sub_1A98178BC;

  return MEMORY[0x1EEE6D8C8](v2 + 2, v3, v4);
}

uint64_t sub_1A98178BC()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  v15 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    if (v4)
    {
      v5 = *(v2 + 32);
      v6 = *(v2 + 40);
      swift_getObjectType();
      v7 = sub_1A9976B80();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_1A9817A4C;
  }

  else
  {
    if (v4)
    {
      v11 = *(v2 + 32);
      v12 = *(v2 + 40);
      swift_getObjectType();
      v7 = sub_1A9976B80();
      v9 = v13;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_1A9807718;
  }

  return MEMORY[0x1EEE6DFA0](v10, v7, v9);
}

uint64_t sub_1A9817A4C()
{
  v0[3] = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

uint64_t sub_1A9817AF4()
{
  v0 = sub_1A99764A0();
  __swift_allocate_value_buffer(v0, qword_1EB3ABCE0);
  v1 = __swift_project_value_buffer(v0, qword_1EB3ABCE0);
  if (qword_1EB3AC860 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EB3AC868);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1A9817BBC()
{
  result = [objc_allocWithZone(SFApplicationExtensionsCache) init];
  qword_1EB3AB638 = result;
  return result;
}

id static SFApplicationExtensionsCache.shared()()
{
  if (qword_1EB3AB630 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB3AB638;

  return v1;
}

uint64_t SFApplicationExtensionsCache.CacheError.hashValue.getter()
{
  sub_1A9977980();
  MEMORY[0x1AC58A630](0);
  return sub_1A99779B0();
}

uint64_t sub_1A9817D1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2A70, &qword_1A99983F0);
  v118 = swift_allocObject();
  *(v118 + 16) = xmmword_1A9998160;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2A78, &qword_1A99983F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A9998170;
  *(inited + 32) = 0xD000000000000019;
  *(inited + 40) = 0x80000001A99E4E60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2A80, &qword_1A9998400);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_1A9996D60;
  strcpy((v1 + 32), "extensionItems");
  *(v1 + 47) = -18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2A88, &qword_1A9998408);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A9996D60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A90, &qword_1A9998410);
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_1A9996D60;
  *(v3 + 32) = 0x656D686361747461;
  *(v3 + 40) = 0xEB0000000073746ELL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B4F60, &qword_1A9998418);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A9996D60;
  v5 = sub_1A97BF200(&unk_1F1D273A8);
  sub_1A97B06FC(&unk_1F1D273C8, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v4 + 32) = v5;
  *(v3 + 48) = v4;
  v6 = sub_1A97BF214(v3);
  swift_setDeallocating();
  sub_1A97B06FC(v3 + 32, &qword_1EB3B2AA8, &qword_1A9998428);
  *(v2 + 32) = v6;
  *(v1 + 48) = v2;
  v7 = sub_1A97BF228(v1);
  swift_setDeallocating();
  sub_1A97B06FC(v1 + 32, &qword_1EB3B2AB0, &qword_1A9998430);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2AB8, &qword_1A9998438);
  *(inited + 48) = v7;
  v117 = v8;
  *(inited + 72) = v8;
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x80000001A99E4E80;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
  *(inited + 120) = v116;
  *(inited + 96) = &unk_1F1D26C18;
  v9 = sub_1A97BF23C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B16C8, &unk_1A999CE90);
  swift_arrayDestroy();
  *(v118 + 32) = v9;
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_1A9998170;
  *(v10 + 32) = 0xD000000000000019;
  *(v10 + 40) = 0x80000001A99E4E60;
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_1A9996D60;
  strcpy((v11 + 32), "extensionItems");
  *(v11 + 47) = -18;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A9996D60;
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_1A9996D60;
  *(v13 + 32) = 0x656D686361747461;
  *(v13 + 40) = 0xEB0000000073746ELL;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1A9996D60;
  v15 = sub_1A97BF200(&unk_1F1D273E0);
  sub_1A97B06FC(&unk_1F1D27400, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v14 + 32) = v15;
  *(v13 + 48) = v14;
  v16 = sub_1A97BF214(v13);
  swift_setDeallocating();
  sub_1A97B06FC(v13 + 32, &qword_1EB3B2AA8, &qword_1A9998428);
  *(v12 + 32) = v16;
  *(v11 + 48) = v12;
  v17 = sub_1A97BF228(v11);
  swift_setDeallocating();
  sub_1A97B06FC(v11 + 32, &qword_1EB3B2AB0, &qword_1A9998430);
  *(v10 + 48) = v17;
  *(v10 + 72) = v117;
  *(v10 + 80) = 0xD000000000000014;
  *(v10 + 120) = v116;
  *(v10 + 88) = 0x80000001A99E4E80;
  *(v10 + 96) = &unk_1F1D26CA8;
  v18 = sub_1A97BF23C(v10);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v118 + 40) = v18;
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1A9998170;
  *(v19 + 32) = 0xD000000000000019;
  *(v19 + 40) = 0x80000001A99E4E60;
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1A9996D60;
  strcpy((v20 + 32), "extensionItems");
  *(v20 + 47) = -18;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1A9996D60;
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1A9996D60;
  *(v22 + 32) = 0x656D686361747461;
  *(v22 + 40) = 0xEB0000000073746ELL;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1A9996D60;
  v24 = sub_1A97BF200(&unk_1F1D27418);
  sub_1A97B06FC(&unk_1F1D27438, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v23 + 32) = v24;
  *(v22 + 48) = v23;
  v25 = sub_1A97BF214(v22);
  swift_setDeallocating();
  sub_1A97B06FC(v22 + 32, &qword_1EB3B2AA8, &qword_1A9998428);
  *(v21 + 32) = v25;
  *(v20 + 48) = v21;
  v26 = sub_1A97BF228(v20);
  swift_setDeallocating();
  sub_1A97B06FC(v20 + 32, &qword_1EB3B2AB0, &qword_1A9998430);
  *(v19 + 48) = v26;
  *(v19 + 72) = v117;
  *(v19 + 80) = 0xD000000000000014;
  *(v19 + 120) = v116;
  *(v19 + 88) = 0x80000001A99E4E80;
  *(v19 + 96) = &unk_1F1D26D58;
  v27 = sub_1A97BF23C(v19);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v118 + 48) = v27;
  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_1A9998170;
  *(v28 + 32) = 0xD000000000000019;
  *(v28 + 40) = 0x80000001A99E4E60;
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_1A9996D60;
  strcpy((v29 + 32), "extensionItems");
  *(v29 + 47) = -18;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1A9996D60;
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_1A9996D60;
  *(v31 + 32) = 0x656D686361747461;
  *(v31 + 40) = 0xEB0000000073746ELL;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1A9996D60;
  v33 = sub_1A97BF200(&unk_1F1D27450);
  sub_1A97B06FC(&unk_1F1D27470, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v32 + 32) = v33;
  *(v31 + 48) = v32;
  v34 = sub_1A97BF214(v31);
  swift_setDeallocating();
  sub_1A97B06FC(v31 + 32, &qword_1EB3B2AA8, &qword_1A9998428);
  *(v30 + 32) = v34;
  *(v29 + 48) = v30;
  v35 = sub_1A97BF228(v29);
  swift_setDeallocating();
  sub_1A97B06FC(v29 + 32, &qword_1EB3B2AB0, &qword_1A9998430);
  *(v28 + 48) = v35;
  *(v28 + 72) = v117;
  *(v28 + 80) = 0xD000000000000014;
  *(v28 + 120) = v116;
  *(v28 + 88) = 0x80000001A99E4E80;
  *(v28 + 96) = &unk_1F1D26DF8;
  v36 = sub_1A97BF23C(v28);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v118 + 56) = v36;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1A9998170;
  *(v37 + 32) = 0xD000000000000019;
  *(v37 + 40) = 0x80000001A99E4E60;
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_1A9996D60;
  strcpy((v38 + 32), "extensionItems");
  *(v38 + 47) = -18;
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1A9996D60;
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1A9996D60;
  *(v40 + 32) = 0x656D686361747461;
  *(v40 + 40) = 0xEB0000000073746ELL;
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1A9996D60;
  v42 = sub_1A97BF200(&unk_1F1D27488);
  sub_1A97B06FC(&unk_1F1D274A8, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v41 + 32) = v42;
  *(v40 + 48) = v41;
  v43 = sub_1A97BF214(v40);
  swift_setDeallocating();
  sub_1A97B06FC(v40 + 32, &qword_1EB3B2AA8, &qword_1A9998428);
  swift_deallocClassInstance();
  *(v39 + 32) = v43;
  *(v38 + 48) = v39;
  v44 = sub_1A97BF228(v38);
  swift_setDeallocating();
  sub_1A97B06FC(v38 + 32, &qword_1EB3B2AB0, &qword_1A9998430);
  *(v37 + 48) = v44;
  *(v37 + 72) = v117;
  *(v37 + 80) = 0xD000000000000014;
  *(v37 + 120) = v116;
  *(v37 + 88) = 0x80000001A99E4E80;
  *(v37 + 96) = &unk_1F1D26E98;
  v45 = sub_1A97BF23C(v37);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v118 + 64) = v45;
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1A9998170;
  *(v46 + 32) = 0xD000000000000019;
  *(v46 + 40) = 0x80000001A99E4E60;
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1A9996D60;
  strcpy((v47 + 32), "extensionItems");
  *(v47 + 47) = -18;
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1A9996D60;
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1A9996D60;
  *(v49 + 32) = 0x656D686361747461;
  *(v49 + 40) = 0xEB0000000073746ELL;
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1A9996D60;
  v51 = sub_1A97BF200(&unk_1F1D274C0);
  sub_1A97B06FC(&unk_1F1D274E0, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v50 + 32) = v51;
  *(v49 + 48) = v50;
  v52 = sub_1A97BF214(v49);
  swift_setDeallocating();
  sub_1A97B06FC(v49 + 32, &qword_1EB3B2AA8, &qword_1A9998428);
  swift_deallocClassInstance();
  *(v48 + 32) = v52;
  *(v47 + 48) = v48;
  v53 = sub_1A97BF228(v47);
  swift_setDeallocating();
  sub_1A97B06FC(v47 + 32, &qword_1EB3B2AB0, &qword_1A9998430);
  swift_deallocClassInstance();
  *(v46 + 48) = v53;
  *(v46 + 72) = v117;
  *(v46 + 80) = 0xD000000000000014;
  *(v46 + 120) = v116;
  *(v46 + 88) = 0x80000001A99E4E80;
  *(v46 + 96) = &unk_1F1D26F18;
  v54 = sub_1A97BF23C(v46);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v118 + 72) = v54;
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1A9998170;
  *(v55 + 32) = 0xD000000000000019;
  *(v55 + 40) = 0x80000001A99E4E60;
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1A9996D60;
  strcpy((v56 + 32), "extensionItems");
  *(v56 + 47) = -18;
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1A9996D60;
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1A9996D60;
  *(v58 + 32) = 0x656D686361747461;
  *(v58 + 40) = 0xEB0000000073746ELL;
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1A9996D60;
  v60 = sub_1A97BF200(&unk_1F1D274F8);
  sub_1A97B06FC(&unk_1F1D27518, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v59 + 32) = v60;
  *(v58 + 48) = v59;
  v61 = sub_1A97BF214(v58);
  swift_setDeallocating();
  sub_1A97B06FC(v58 + 32, &qword_1EB3B2AA8, &qword_1A9998428);
  swift_deallocClassInstance();
  *(v57 + 32) = v61;
  *(v56 + 48) = v57;
  v62 = sub_1A97BF228(v56);
  swift_setDeallocating();
  sub_1A97B06FC(v56 + 32, &qword_1EB3B2AB0, &qword_1A9998430);
  swift_deallocClassInstance();
  *(v55 + 48) = v62;
  *(v55 + 72) = v117;
  *(v55 + 80) = 0xD000000000000014;
  *(v55 + 120) = v116;
  *(v55 + 88) = 0x80000001A99E4E80;
  *(v55 + 96) = &unk_1F1D26FA8;
  v63 = sub_1A97BF23C(v55);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v118 + 80) = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_1A9998170;
  *(v64 + 32) = 0xD000000000000019;
  *(v64 + 40) = 0x80000001A99E4E60;
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1A9996D60;
  strcpy((v65 + 32), "extensionItems");
  *(v65 + 47) = -18;
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1A9996D60;
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_1A9996D60;
  *(v67 + 32) = 0x656D686361747461;
  *(v67 + 40) = 0xEB0000000073746ELL;
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1A9996D60;
  v69 = sub_1A97BF200(&unk_1F1D27530);
  sub_1A97B06FC(&unk_1F1D27550, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v68 + 32) = v69;
  *(v67 + 48) = v68;
  v70 = sub_1A97BF214(v67);
  swift_setDeallocating();
  sub_1A97B06FC(v67 + 32, &qword_1EB3B2AA8, &qword_1A9998428);
  swift_deallocClassInstance();
  *(v66 + 32) = v70;
  *(v65 + 48) = v66;
  v71 = sub_1A97BF228(v65);
  swift_setDeallocating();
  sub_1A97B06FC(v65 + 32, &qword_1EB3B2AB0, &qword_1A9998430);
  swift_deallocClassInstance();
  *(v64 + 48) = v71;
  *(v64 + 72) = v117;
  *(v64 + 80) = 0xD000000000000014;
  *(v64 + 120) = v116;
  *(v64 + 88) = 0x80000001A99E4E80;
  *(v64 + 96) = &unk_1F1D27028;
  v72 = sub_1A97BF23C(v64);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v118 + 88) = v72;
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_1A9998170;
  *(v73 + 32) = 0xD000000000000019;
  *(v73 + 40) = 0x80000001A99E4E60;
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1A9996D60;
  strcpy((v74 + 32), "extensionItems");
  *(v74 + 47) = -18;
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_1A9996D60;
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_1A9996D60;
  *(v76 + 32) = 0x656D686361747461;
  *(v76 + 40) = 0xEB0000000073746ELL;
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1A9996D60;
  v78 = sub_1A97BF200(&unk_1F1D27568);
  sub_1A97B06FC(&unk_1F1D27588, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v77 + 32) = v78;
  *(v76 + 48) = v77;
  v79 = sub_1A97BF214(v76);
  swift_setDeallocating();
  sub_1A97B06FC(v76 + 32, &qword_1EB3B2AA8, &qword_1A9998428);
  swift_deallocClassInstance();
  *(v75 + 32) = v79;
  *(v74 + 48) = v75;
  v80 = sub_1A97BF228(v74);
  swift_setDeallocating();
  sub_1A97B06FC(v74 + 32, &qword_1EB3B2AB0, &qword_1A9998430);
  swift_deallocClassInstance();
  *(v73 + 48) = v80;
  *(v73 + 72) = v117;
  *(v73 + 80) = 0xD000000000000014;
  *(v73 + 120) = v116;
  *(v73 + 88) = 0x80000001A99E4E80;
  *(v73 + 96) = &unk_1F1D270A8;
  v81 = sub_1A97BF23C(v73);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v118 + 96) = v81;
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_1A9998170;
  *(v82 + 32) = 0xD000000000000019;
  *(v82 + 40) = 0x80000001A99E4E60;
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_1A9996D60;
  strcpy((v83 + 32), "extensionItems");
  *(v83 + 47) = -18;
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_1A9996D60;
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_1A9996D60;
  *(v85 + 32) = 0x656D686361747461;
  *(v85 + 40) = 0xEB0000000073746ELL;
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_1A9998180;
  v87 = sub_1A97BF200(&unk_1F1D275A0);
  sub_1A97B06FC(&unk_1F1D275C0, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v86 + 32) = v87;
  v88 = sub_1A97BF200(&unk_1F1D275D8);
  sub_1A97B06FC(&unk_1F1D275F8, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v86 + 40) = v88;
  v89 = sub_1A97BF200(&unk_1F1D27610);
  sub_1A97B06FC(&unk_1F1D27630, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v86 + 48) = v89;
  *(v85 + 48) = v86;
  v90 = sub_1A97BF214(v85);
  swift_setDeallocating();
  sub_1A97B06FC(v85 + 32, &qword_1EB3B2AA8, &qword_1A9998428);
  swift_deallocClassInstance();
  *(v84 + 32) = v90;
  *(v83 + 48) = v84;
  v91 = sub_1A97BF228(v83);
  swift_setDeallocating();
  sub_1A97B06FC(v83 + 32, &qword_1EB3B2AB0, &qword_1A9998430);
  swift_deallocClassInstance();
  *(v82 + 48) = v91;
  *(v82 + 72) = v117;
  *(v82 + 80) = 0xD000000000000014;
  *(v82 + 120) = v116;
  *(v82 + 88) = 0x80000001A99E4E80;
  *(v82 + 96) = &unk_1F1D27198;
  v92 = sub_1A97BF23C(v82);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v118 + 104) = v92;
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_1A9998170;
  *(v93 + 32) = 0xD000000000000019;
  *(v93 + 40) = 0x80000001A99E4E60;
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_1A9996D60;
  strcpy((v94 + 32), "extensionItems");
  *(v94 + 47) = -18;
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_1A9996D60;
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_1A9996D60;
  *(v96 + 32) = 0x656D686361747461;
  *(v96 + 40) = 0xEB0000000073746ELL;
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_1A9998180;
  v98 = sub_1A97BF200(&unk_1F1D27648);
  sub_1A97B06FC(&unk_1F1D27668, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v97 + 32) = v98;
  v99 = sub_1A97BF200(&unk_1F1D27680);
  sub_1A97B06FC(&unk_1F1D276A0, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v97 + 40) = v99;
  v100 = sub_1A97BF200(&unk_1F1D276B8);
  sub_1A97B06FC(&unk_1F1D276D8, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v97 + 48) = v100;
  *(v96 + 48) = v97;
  v101 = sub_1A97BF214(v96);
  swift_setDeallocating();
  sub_1A97B06FC(v96 + 32, &qword_1EB3B2AA8, &qword_1A9998428);
  swift_deallocClassInstance();
  *(v95 + 32) = v101;
  *(v94 + 48) = v95;
  v102 = sub_1A97BF228(v94);
  swift_setDeallocating();
  sub_1A97B06FC(v94 + 32, &qword_1EB3B2AB0, &qword_1A9998430);
  swift_deallocClassInstance();
  *(v93 + 48) = v102;
  *(v93 + 72) = v117;
  *(v93 + 80) = 0xD000000000000014;
  *(v93 + 120) = v116;
  *(v93 + 88) = 0x80000001A99E4E80;
  *(v93 + 96) = &unk_1F1D27278;
  v103 = sub_1A97BF23C(v93);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v118 + 112) = v103;
  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_1A9998170;
  *(v104 + 32) = 0xD000000000000019;
  *(v104 + 40) = 0x80000001A99E4E60;
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_1A9996D60;
  strcpy((v105 + 32), "extensionItems");
  *(v105 + 47) = -18;
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_1A9996D60;
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_1A9996D60;
  *(v107 + 32) = 0x656D686361747461;
  *(v107 + 40) = 0xEB0000000073746ELL;
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_1A9998180;
  v109 = sub_1A97BF200(&unk_1F1D276F0);
  sub_1A97B06FC(&unk_1F1D27710, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v108 + 32) = v109;
  v110 = sub_1A97BF200(&unk_1F1D27728);
  sub_1A97B06FC(&unk_1F1D27748, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v108 + 40) = v110;
  v111 = sub_1A97BF200(&unk_1F1D27760);
  sub_1A97B06FC(&unk_1F1D27780, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v108 + 48) = v111;
  *(v107 + 48) = v108;
  v112 = sub_1A97BF214(v107);
  swift_setDeallocating();
  sub_1A97B06FC(v107 + 32, &qword_1EB3B2AA8, &qword_1A9998428);
  swift_deallocClassInstance();
  *(v106 + 32) = v112;
  *(v105 + 48) = v106;
  v113 = sub_1A97BF228(v105);
  swift_setDeallocating();
  sub_1A97B06FC(v105 + 32, &qword_1EB3B2AB0, &qword_1A9998430);
  swift_deallocClassInstance();
  *(v104 + 48) = v113;
  *(v104 + 72) = v117;
  *(v104 + 80) = 0xD000000000000014;
  *(v104 + 120) = v116;
  *(v104 + 88) = 0x80000001A99E4E80;
  *(v104 + 96) = &unk_1F1D27358;
  v114 = sub_1A97BF23C(v104);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  *(v118 + 120) = v114;
  off_1EB3AB650 = v118;
  return result;
}

char *sub_1A98196C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v28 = v25 - v3;
  v27 = sub_1A9976FB0();
  v4 = *(v27 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A9976FA0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1A9976680();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = OBJC_IVAR___SFApplicationExtensionsCache_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1180, &qword_1A99919C8);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *&v0[v12] = v13;
  v26 = OBJC_IVAR___SFApplicationExtensionsCache_queue;
  v14 = sub_1A9812DE0(0, &qword_1EB3AC8D0, 0x1E69E9610);
  v25[0] = "v24@?0@<PKPlugIn>8Q16";
  v25[1] = v14;
  sub_1A9976660();
  v30 = MEMORY[0x1E69E7CC0];
  sub_1A982B3C8(&qword_1EB3AC8E0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B26D8, &unk_1A9997EB0);
  sub_1A97AF974(&qword_1EB3AC910, &unk_1EB3B26D8, &unk_1A9997EB0);
  sub_1A99771F0();
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8098], v27);
  *&v0[v26] = sub_1A9976FE0();
  *&v0[OBJC_IVAR___SFApplicationExtensionsCache_discoveryTask] = 0;
  v0[OBJC_IVAR___SFApplicationExtensionsCache_primed] = 0;
  *&v0[OBJC_IVAR___SFApplicationExtensionsCache_cacheMisses] = 0;
  *&v0[OBJC_IVAR___SFApplicationExtensionsCache_cacheHits] = 0;
  v15 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR___SFApplicationExtensionsCache_cachedExtensionIdentitiesByIdentifier] = sub_1A97BF36C(MEMORY[0x1E69E7CC0]);
  *&v0[OBJC_IVAR___SFApplicationExtensionsCache_cachedSupersedingPluginsByIdentifier] = sub_1A97BF558(v15);
  *&v0[OBJC_IVAR___SFApplicationExtensionsCache_cachedResults] = sub_1A97BF65C(v15);
  *&v0[OBJC_IVAR___SFApplicationExtensionsCache_keysBeingDiscovered] = v15;
  v29.receiver = v0;
  v29.super_class = SFApplicationExtensionsCache;
  v16 = objc_msgSendSuper2(&v29, sel_init);
  v17 = sub_1A9976C00();
  v18 = v28;
  (*(*(v17 - 8) + 56))(v28, 1, 1, v17);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v19;
  v21 = v16;
  v22 = sub_1A97B4F40(0, 0, v18, &unk_1A99983C0, v20);
  v23 = *&v21[OBJC_IVAR___SFApplicationExtensionsCache_discoveryTask];
  *&v21[OBJC_IVAR___SFApplicationExtensionsCache_discoveryTask] = v22;

  return v21;
}

uint64_t sub_1A9819B60()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_1A9819C48;

    return sub_1A9819D54();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1A9819C48()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1A9819D54()
{
  v1[25] = v0;
  v2 = sub_1A9976630();
  v1[26] = v2;
  v3 = *(v2 - 8);
  v1[27] = v3;
  v4 = *(v3 + 64) + 15;
  v1[28] = swift_task_alloc();
  v5 = sub_1A9976680();
  v1[29] = v5;
  v6 = *(v5 - 8);
  v1[30] = v6;
  v7 = *(v6 + 64) + 15;
  v1[31] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1660, &qword_1A9992810);
  v1[32] = v8;
  v9 = *(v8 - 8);
  v1[33] = v9;
  v10 = *(v9 + 64) + 15;
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v11 = sub_1A99763B0();
  v1[36] = v11;
  v12 = *(v11 - 8);
  v1[37] = v12;
  v13 = *(v12 + 64) + 15;
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v14 = sub_1A9976360();
  v1[41] = v14;
  v15 = *(v14 - 8);
  v1[42] = v15;
  v16 = *(v15 + 64) + 15;
  v1[43] = swift_task_alloc();
  v17 = sub_1A9976380();
  v1[44] = v17;
  v18 = *(v17 - 8);
  v1[45] = v18;
  v19 = *(v18 + 64) + 15;
  v1[46] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A981A010, 0, 0);
}

uint64_t sub_1A981A010()
{
  SFPerformDataMigrationIfNeeded();
  if (qword_1EB3ABCD8 != -1)
  {
    swift_once();
  }

  v1 = sub_1A99764A0();
  v0[47] = __swift_project_value_buffer(v1, qword_1EB3ABCE0);
  v2 = sub_1A9976480();
  v3 = sub_1A9976F90();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1A9662000, v2, v3, "ExtensionsCache: start continuous extensions discovery", v4, 2u);
    MEMORY[0x1AC58D2C0](v4, -1, -1);
  }

  v5 = v0[46];

  sub_1A99763A0();
  v0[48] = 0;
  v6 = v0[46];
  v7 = v0[43];
  sub_1A9976370();
  v8 = OBJC_IVAR___SFApplicationExtensionsCache_queue;
  v0[49] = OBJC_IVAR___SFApplicationExtensionsCache_lock;
  v0[50] = v8;
  v9 = swift_task_alloc();
  v0[51] = v9;
  *v9 = v0;
  v9[1] = sub_1A981A30C;
  v10 = v0[43];

  return sub_1A98177CC(0, 0);
}

uint64_t sub_1A981A30C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 408);
  v6 = *v2;
  *(v3 + 416) = a1;
  *(v3 + 424) = v1;

  if (!v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A981A420, 0, 0);
  }

  return result;
}

void sub_1A981A420()
{
  v1 = *(v0 + 416);
  if (!v1)
  {
    v30 = *(v0 + 360);
    v29 = *(v0 + 368);
    v31 = *(v0 + 352);
    (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
    (*(v30 + 8))(v29, v31);
    v32 = *(v0 + 368);
    v33 = *(v0 + 344);
    v35 = *(v0 + 312);
    v34 = *(v0 + 320);
    v36 = *(v0 + 304);
    v38 = *(v0 + 272);
    v37 = *(v0 + 280);
    v39 = *(v0 + 248);
    v40 = *(v0 + 224);

    v41 = *(v0 + 8);

    v41();
    return;
  }

  v2 = *(v1 + 16);
  v124 = *(v0 + 416);
  if (v2)
  {
    v3 = 0;
    v128 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_64;
      }

      v4 = *(v0 + 296);
      v5 = *(v4 + 16);
      v4 += 16;
      v6 = (*(v4 + 64) + 32) & ~*(v4 + 64);
      v7 = *(v4 + 56);
      v5(*(v0 + 320), v1 + v6 + v7 * v3, *(v0 + 288));
      v8 = sub_1A9976350();
      if (!v8)
      {
        break;
      }

      v9 = v8;
      v10 = [v8 attributes];
      if (!v10)
      {
        v26 = *(v0 + 320);
        v28 = *(v0 + 288);
        v27 = *(v0 + 296);

        (*(v27 + 8))(v26, v28);
        goto LABEL_19;
      }

      v11 = v10;
      v12 = sub_1A9976700();

      *(v0 + 136) = 0xD000000000000019;
      *(v0 + 144) = 0x80000001A99E4E60;
      sub_1A9977250();
      if (*(v12 + 16) && (v13 = sub_1A97BCF30(v0 + 64), (v14 & 1) != 0))
      {
        sub_1A97AF7EC(*(v12 + 56) + 32 * v13, v0 + 104);

        sub_1A97C108C(v0 + 64);

        if (*(v0 + 128))
        {
          v16 = *(v0 + 312);
          v15 = *(v0 + 320);
          v17 = *(v0 + 288);
          v18 = *(v0 + 296);
          sub_1A97B06FC(v0 + 104, &qword_1EB3B0BA0, &unk_1A99923D0);
          v19 = *(v18 + 32);
          v19(v16, v15, v17);
          v20 = v128;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 152) = v128;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1A97BDC64(0, *(v128 + 16) + 1, 1);
            v20 = *(v0 + 152);
          }

          v23 = *(v20 + 16);
          v22 = *(v20 + 24);
          if (v23 >= v22 >> 1)
          {
            sub_1A97BDC64(v22 > 1, v23 + 1, 1);
            v20 = *(v0 + 152);
          }

          v24 = *(v0 + 312);
          v25 = *(v0 + 288);
          *(v20 + 16) = v23 + 1;
          v128 = v20;
          v19(v20 + v6 + v23 * v7, v24, v25);
          v1 = v124;
          goto LABEL_21;
        }
      }

      else
      {

        sub_1A97C108C(v0 + 64);
        *(v0 + 104) = 0u;
        *(v0 + 120) = 0u;
      }

      (*(*(v0 + 296) + 8))(*(v0 + 320), *(v0 + 288));
LABEL_20:
      sub_1A97B06FC(v0 + 104, &qword_1EB3B0BA0, &unk_1A99923D0);
LABEL_21:
      if (v2 == ++v3)
      {
        goto LABEL_27;
      }
    }

    (*(*(v0 + 296) + 8))(*(v0 + 320), *(v0 + 288));
LABEL_19:
    *(v0 + 120) = 0u;
    *(v0 + 104) = 0u;
    goto LABEL_20;
  }

  v128 = MEMORY[0x1E69E7CC0];
LABEL_27:
  v42 = sub_1A98DA210(v128);
  v116 = v43;

  v44 = *(v42 + 16);
  v45 = MEMORY[0x1E69E7CC0];
  if (v44)
  {
    v46 = *(v0 + 296);
    *(v0 + 160) = MEMORY[0x1E69E7CC0];
    sub_1A97BDC44(0, v44, 0);
    v45 = *(v0 + 160);
    v47 = v42 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
    v48 = *(v46 + 72);
    v49 = *(v46 + 16);
    do
    {
      v50 = *(v0 + 280);
      v51 = *(v0 + 296) + 16;
      v49(v50 + *(*(v0 + 256) + 48), v47, *(v0 + 288));
      *v50 = sub_1A9976390();
      v50[1] = v52;
      *(v0 + 160) = v45;
      v54 = *(v45 + 16);
      v53 = *(v45 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_1A97BDC44(v53 > 1, v54 + 1, 1);
        v45 = *(v0 + 160);
      }

      v55 = *(v0 + 280);
      v56 = *(v0 + 264);
      *(v45 + 16) = v54 + 1;
      sub_1A97D8380(v55, v45 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v54, &qword_1EB3B1660, &qword_1A9992810);
      v47 += v48;
      --v44;
    }

    while (v44);
  }

  if (!*(v45 + 16))
  {
    v57 = MEMORY[0x1E69E7CC8];
    *(v0 + 168) = MEMORY[0x1E69E7CC8];
LABEL_45:

    v86 = (v0 + 176);

    v87 = *(v0 + 376);

    v88 = sub_1A9976480();
    v89 = sub_1A9976F90();
    v90 = os_log_type_enabled(v88, v89);
    v91 = MEMORY[0x1E69E7CC0];
    if (v90)
    {
      v92 = swift_slowAlloc();
      *v92 = 134217984;
      *(v92 + 4) = *(v57 + 16);

      _os_log_impl(&dword_1A9662000, v88, v89, "ExtensionsCache: received extensions update with %ld extensions", v92, 0xCu);
      MEMORY[0x1AC58D2C0](v92, -1, -1);
    }

    else
    {
    }

    v93 = *(v0 + 424);
    v94 = *(v0 + 392);
    v95 = *(v0 + 200);
    *(v0 + 176) = v91;
    v96 = *(v95 + v94);
    v97 = swift_task_alloc();
    v97[2] = v57;
    v97[3] = v95;
    v97[4] = v86;
    v97[5] = v116;
    v98 = swift_task_alloc();
    *(v98 + 16) = sub_1A982B278;
    *(v98 + 24) = v97;
    os_unfair_lock_lock(v96 + 4);
    sub_1A982B4AC();
    os_unfair_lock_unlock(v96 + 4);
    if (v93)
    {
    }

    else
    {

      v99 = *v86;
      v100 = *(*v86 + 16);
      v101 = MEMORY[0x1E69E7CC0];
      if (v100)
      {
        *(v0 + 184) = MEMORY[0x1E69E7CC0];
        sub_1A97BDC24(0, v100, 0);
        v101 = *(v0 + 184);
        v102 = (v99 + 40);
        do
        {
          v104 = *(v102 - 1);
          v103 = *v102;

          v105 = sub_1A98297C4(v104, v103);

          *(v0 + 184) = v101;
          v107 = *(v101 + 16);
          v106 = *(v101 + 24);
          if (v107 >= v106 >> 1)
          {
            sub_1A97BDC24((v106 > 1), v107 + 1, 1);
            v101 = *(v0 + 184);
          }

          *(v101 + 16) = v107 + 1;
          *(v101 + 8 * v107 + 32) = v105;
          v102 += 2;
          --v100;
        }

        while (v100);
      }

      v108 = *(v0 + 248);
      v125 = *(v0 + 240);
      v127 = *(v0 + 232);
      v119 = *(v0 + 224);
      v109 = *(v0 + 208);
      v121 = *(*(v0 + 200) + *(v0 + 400));
      v123 = *(v0 + 216);
      v110 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v111 = swift_allocObject();
      *(v111 + 16) = v110;
      *(v111 + 24) = v101;
      *(v0 + 48) = sub_1A982B298;
      *(v0 + 56) = v111;
      *(v0 + 16) = MEMORY[0x1E69E9820];
      *(v0 + 24) = 1107296256;
      *(v0 + 32) = sub_1A981D3F8;
      *(v0 + 40) = &block_descriptor_220;
      v112 = _Block_copy((v0 + 16));

      sub_1A9976640();
      *(v0 + 192) = MEMORY[0x1E69E7CC0];
      sub_1A982B3C8(&qword_1EB3AC930, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B28A8, &unk_1A9998190);
      sub_1A97AF974(&qword_1EB3AC920, &qword_1EB3B28A8, &unk_1A9998190);
      sub_1A99771F0();
      MEMORY[0x1AC589C70](0, v108, v119, v112);
      _Block_release(v112);
      (*(v123 + 8))(v119, v109);
      (*(v125 + 8))(v108, v127);
      v113 = *(v0 + 56);

      v114 = swift_task_alloc();
      *(v0 + 408) = v114;
      *v114 = v0;
      v114[1] = sub_1A981A30C;
      v115 = *(v0 + 344);

      sub_1A98177CC(0, 0);
    }

    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B16A0, &qword_1A9992858);
  v57 = sub_1A99774B0();
  v58 = *(v45 + 16);
  *(v0 + 168) = v57;
  v122 = v58;
  if (!v58)
  {
    goto LABEL_45;
  }

  v59 = 0;
  v60 = *(v0 + 264);
  v120 = *(v0 + 272);
  v61 = v45 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
  v117 = *(v60 + 72);
  v118 = *(*(v0 + 256) + 48);
  while (1)
  {
    sub_1A97C13A4(v61, *(v0 + 272), &qword_1EB3B1660, &qword_1A9992810);
    if (__OFADD__(v59, 1))
    {
      break;
    }

    v129 = v59 + 1;
    v65 = *(v0 + 272);
    v66 = *(*(v0 + 296) + 32);
    v67 = *v65;
    v68 = v65[1];
    v66(*(v0 + 304), v120 + v118, *(v0 + 288));
    v69 = sub_1A97BCEB8(v67, v68);
    v71 = v57;
    v72 = *(v57 + 16);
    v73 = (v70 & 1) == 0;
    v74 = __OFADD__(v72, v73);
    v75 = v72 + v73;
    if (v74)
    {
      goto LABEL_65;
    }

    v76 = v70;
    v126 = v59;
    if (*(v71 + 24) < v75)
    {
      sub_1A982663C(v75, 1, MEMORY[0x1E6966C00], &unk_1EB3B16A0, &qword_1A9992858);
      v77 = *(v0 + 168);
      v69 = sub_1A97BCEB8(v67, v68);
      if ((v76 & 1) != (v78 & 1))
      {

        sub_1A9977880();
        return;
      }
    }

    v79 = *(v0 + 168);
    v81 = *(v0 + 296);
    v80 = *(v0 + 304);
    v82 = *(v0 + 288);
    if (v76)
    {
      v62 = v69;
      v63 = *(v0 + 304);
      v64 = *(v0 + 288);

      (*(v81 + 40))(v79[7] + *(v81 + 72) * v62, v63, v64);
      v57 = v79;
    }

    else
    {
      v79[(v69 >> 6) + 8] |= 1 << v69;
      v83 = (v79[6] + 16 * v69);
      *v83 = v67;
      v83[1] = v68;
      v66(v79[7] + *(v81 + 72) * v69, v80, v82);
      v84 = v79[2];
      v74 = __OFADD__(v84, 1);
      v85 = v84 + 1;
      if (v74)
      {
        goto LABEL_66;
      }

      v57 = v79;
      v79[2] = v85;
    }

    v59 = v126 + 1;
    v61 += v117;
    if (v129 == v122)
    {
      goto LABEL_45;
    }
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
}

uint64_t sub_1A981B00C()
{
  v1 = *(*v0 + 432);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A981B108, 0, 0);
}

uint64_t sub_1A981B108()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 344);
  v4 = *(v0 + 312);
  v3 = *(v0 + 320);
  v5 = *(v0 + 304);
  v7 = *(v0 + 272);
  v6 = *(v0 + 280);
  v8 = *(v0 + 248);
  v9 = *(v0 + 224);

  v10 = *(v0 + 8);

  return v10();
}

Swift::Void __swiftcall SFApplicationExtensionsCache.primeExtensionsResult(with:)(Swift::OpaquePointer with)
{
  v3 = sub_1A9976630();
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1A9976680();
  v25 = *(v26 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A9829EB0(with._rawValue);
  v12 = v11;
  aBlock[0] = 0;
  v13 = *(v1 + OBJC_IVAR___SFApplicationExtensionsCache_lock);
  v32 = aBlock;
  v33 = v1;
  v34 = v10;
  v35 = v11;
  v29 = sub_1A982A570;
  v30 = &v31;
  os_unfair_lock_lock(v13 + 4);
  sub_1A982A590();
  os_unfair_lock_unlock(v13 + 4);
  if (aBlock[0])
  {

    if (qword_1EB3ABCD8 != -1)
    {
      swift_once();
    }

    v14 = sub_1A99764A0();
    __swift_project_value_buffer(v14, qword_1EB3ABCE0);

    v15 = sub_1A9976480();
    v16 = sub_1A9976F90();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v17 = 136315138;
      v19 = sub_1A97AF148(v10, v12, aBlock);

      *(v17 + 4) = v19;
      _os_log_impl(&dword_1A9662000, v15, v16, "ExtensionsCache: found cached result. no priming needed for cache key = [%s]", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x1AC58D2C0](v18, -1, -1);
      MEMORY[0x1AC58D2C0](v17, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    *(v1 + OBJC_IVAR___SFApplicationExtensionsCache_primed) = 1;
    v24[1] = *(v1 + OBJC_IVAR___SFApplicationExtensionsCache_queue);
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    v21[2]._rawValue = v20;
    v21[3]._rawValue = v10;
    v21[4]._rawValue = v12;
    v21[5]._rawValue = with._rawValue;
    aBlock[4] = sub_1A982A5B8;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A981D3F8;
    aBlock[3] = &block_descriptor_4;
    v22 = _Block_copy(aBlock);

    sub_1A9976640();
    v36 = MEMORY[0x1E69E7CC0];
    sub_1A982B3C8(&qword_1EB3AC930, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B28A8, &unk_1A9998190);
    sub_1A97AF974(&qword_1EB3AC920, &qword_1EB3B28A8, &unk_1A9998190);
    v23 = v28;
    sub_1A99771F0();
    MEMORY[0x1AC589C70](0, v9, v6, v22);
    _Block_release(v22);
    (*(v27 + 8))(v6, v23);
    (*(v25 + 8))(v9, v26);
  }
}

void sub_1A981B6DC(uint64_t a1, os_unfair_lock_s *a2, unint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v16 = 0;
    v9 = *(Strong + OBJC_IVAR___SFApplicationExtensionsCache_lock);
    v15 = MEMORY[0x1EEE9AC00](Strong);
    MEMORY[0x1EEE9AC00](v15);
    os_unfair_lock_lock(v9 + 4);
    sub_1A982B4AC();
    os_unfair_lock_unlock(v9 + 4);
    sub_1A981B92C(a4, a2, a3, 1, 1, 0, 0);

    if (qword_1EB3ABCD8 != -1)
    {
      swift_once();
    }

    v10 = sub_1A99764A0();
    __swift_project_value_buffer(v10, qword_1EB3ABCE0);

    v11 = sub_1A9976480();
    v12 = sub_1A9976F90();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1A97AF148(a2, a3, &v16);
      _os_log_impl(&dword_1A9662000, v11, v12, "ExtensionsCache: priming done for cache key = [%s]", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x1AC58D2C0](v14, -1, -1);
      MEMORY[0x1AC58D2C0](v13, -1, -1);
    }
  }
}

uint64_t sub_1A981B92C(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, int a4, int a5, int a6, void *a7)
{
  v8 = v7;
  v200 = a7;
  LODWORD(v224) = a6;
  v198 = a5;
  v199 = a4;
  v218 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v196 = &v195 - v13;
  v14 = sub_1A9976230();
  v222 = *(v14 - 8);
  v223 = v14;
  v15 = v222[8];
  v16 = MEMORY[0x1EEE9AC00](v14);
  v217 = &v195 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v225 = &v195 - v18;
  v202 = sub_1A9976460();
  v201 = *(v202 - 8);
  v19 = *(v201 + 64);
  v20 = MEMORY[0x1EEE9AC00](v202);
  v212 = &v195 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v221 = &v195 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AD0, &qword_1A9998440);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v197 = &v195 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v195 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v195 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v195 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v206 = &v195 - v36;
  v37 = sub_1A9976690();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v41 = (&v195 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = *(v8 + OBJC_IVAR___SFApplicationExtensionsCache_queue);
  *v41 = v42;
  (*(v38 + 104))(v41, *MEMORY[0x1E69E8020], v37);
  v43 = v42;
  LOBYTE(v42) = sub_1A99766A0();
  v45 = *(v38 + 8);
  v44 = (v38 + 8);
  v45(v41, v37);
  if ((v42 & 1) == 0)
  {
    goto LABEL_119;
  }

  v219 = v32;
  v46 = OBJC_IVAR___SFApplicationExtensionsCache_keysBeingDiscovered;
  v47 = swift_beginAccess();
  v211 = v8;
  v205 = v46;
  v48 = *(v8 + v46);
  v232[0] = a2;
  v232[1] = a3;
  v208 = a3;
  MEMORY[0x1EEE9AC00](v47);
  v193 = v232;

  v49 = sub_1A9824824(sub_1A982B2A0, &v191, v48);
  v32 = 0;

  v41 = &OBJC_IVAR___SFSystemSession__sfSession;
  v207 = a2;
  if (v49)
  {
    if (qword_1EB3ABCD8 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_123;
  }

  while (1)
  {
    v56 = v211;
    v44 = v205;
    swift_beginAccess();
    v37 = *&v44[v56];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v44[v56] = v37;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_120;
    }

    while (1)
    {
      v59 = *(v37 + 16);
      v58 = *(v37 + 24);
      if (v59 >= v58 >> 1)
      {
        v37 = sub_1A97AE618((v58 > 1), v59 + 1, 1, v37);
      }

      *(v37 + 16) = v59 + 1;
      v60 = v37 + 16 * v59;
      v61 = v208;
      *(v60 + 32) = a2;
      *(v60 + 40) = v61;
      *&v205[v211] = v37;
      swift_endAccess();
      if (*(v41 + 411) != -1)
      {
        swift_once();
      }

      v62 = sub_1A99764A0();
      v63 = __swift_project_value_buffer(v62, qword_1EB3ABCE0);

      v220 = v63;
      v64 = sub_1A9976480();
      v65 = sub_1A9976F90();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v232[0] = v67;
        *v66 = 136315138;
        *(v66 + 4) = sub_1A97AF148(a2, v61, v232);
        _os_log_impl(&dword_1A9662000, v64, v65, "ExtensionsCache: start evaluation for cache key = [%s]", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v67);
        MEMORY[0x1AC58D2C0](v67, -1, -1);
        MEMORY[0x1AC58D2C0](v66, -1, -1);
      }

      v41 = (v201 + 56);
      v44 = *(v201 + 56);
      (v44)(v206, 1, 1, v202);
      v68 = MEMORY[0x1E69E7CC0];
      v69 = v211;
      if (v199)
      {
        v70 = MEMORY[0x1E69E7CC0];
        v71 = share_sheet_log();
        if (v198)
        {
          if (!v71)
          {
            goto LABEL_131;
          }

          swift_unknownObjectRetain();
          sub_1A9976440();
        }

        else
        {
          if (!v71)
          {
            goto LABEL_132;
          }

          v35 = v219;
          sub_1A9976450();
        }

        v73 = v206;
        sub_1A97B06FC(v206, &unk_1EB3B2AD0, &qword_1A9998440);
        v74 = v202;
        (v44)(v35, 0, 1, v202);
        sub_1A97D8380(v35, v73, &unk_1EB3B2AD0, &qword_1A9998440);
        sub_1A97C13A4(v73, v29, &unk_1EB3B2AD0, &qword_1A9998440);
        v75 = v201;
        if ((*(v201 + 48))(v29, 1, v74) == 1)
        {
          sub_1A97B06FC(v29, &unk_1EB3B2AD0, &qword_1A9998440);
          v69 = v211;
          v68 = v70;
        }

        else
        {
          v44 = v221;
          (*(v75 + 32))(v221, v29, v74);
          sub_1A9977000();
          v76 = share_sheet_log();
          if (!v76)
          {
            goto LABEL_133;
          }

          v77 = v76;
          v193 = v70;
          LOBYTE(v192) = 2;
          v191 = 19;
          sub_1A9976430();

          (*(v75 + 8))(v44, v74);
          v68 = v70;
          v69 = v211;
        }
      }

      v230 = v68;
      v231 = v68;
      a2 = v68;
      v78 = sub_1A97BFB78(v68);
      v224 = v78;
      if (!v200)
      {
        a2 = *(v69 + OBJC_IVAR___SFApplicationExtensionsCache_lock);
        v83 = MEMORY[0x1EEE9AC00](v78);
        MEMORY[0x1EEE9AC00](v83);
        v193 = sub_1A982B2BC;
        v194 = v84;
        os_unfair_lock_lock(a2 + 4);
        v41 = v32;
        sub_1A982B4AC();
        os_unfair_lock_unlock(a2 + 4);
        v37 = v230;
        goto LABEL_39;
      }

      v79 = v200;
      v80 = [v79 installedExtensions];
      v29 = v212;
      if (!v80)
      {
        v41 = v32;

        v37 = MEMORY[0x1E69E7CC0];
        v230 = MEMORY[0x1E69E7CC0];
        goto LABEL_40;
      }

      v81 = v80;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1650, &qword_1A9992800);
      v35 = sub_1A9976AC0();

      v232[0] = a2;
      v44 = *(v35 + 16);
      if (!v44)
      {
        break;
      }

      v82 = 0;
      v29 = (v35 + 32);
      v37 = MEMORY[0x1E69E7CC0];
      while (v82 < *(v35 + 16))
      {
        v227 = *&v29[8 * v82];
        v41 = v32;
        sub_1A981EE8C(&v227, &v226);
        if (v226)
        {
          MEMORY[0x1AC589740]();
          if (*((v232[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v232[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v41 = *((v232[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1A9976AF0();
          }

          sub_1A9976B30();
          v37 = v232[0];
        }

        if (v44 == ++v82)
        {
          goto LABEL_38;
        }
      }

LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      v37 = sub_1A97AE618(0, *(v37 + 16) + 1, 1, v37);
      *&v44[v211] = v37;
    }

    v37 = a2;
LABEL_38:

    v230 = v37;
    v41 = v32;
LABEL_39:
    v29 = v212;
LABEL_40:
    if (v37 >> 62)
    {
      v86 = sub_1A9977480();
    }

    else
    {
      v86 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v219 = v37;
    if (v86)
    {
      v35 = 0;
      v203 = OBJC_IVAR___SFApplicationExtensionsCache_cachedSupersedingPluginsByIdentifier;
      v216 = v37 & 0xC000000000000001;
      v215 = v37 & 0xFFFFFFFFFFFFFF8;
      ++v222;
      v209 = MEMORY[0x1E69E7CC0];
      *&v85 = 136315138;
      v204 = v85;
      *&v85 = 136315394;
      v210 = v85;
      v214 = v86;
      while (1)
      {
        if (v216)
        {
          v88 = MEMORY[0x1AC589F80](v35, v37);
        }

        else
        {
          if (v35 >= *(v215 + 16))
          {
            goto LABEL_115;
          }

          v88 = *(v37 + 8 * v35 + 32);
        }

        v32 = v88;
        if (__OFADD__(v35, 1))
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
          goto LABEL_118;
        }

        v221 = (v35 + 1);
        sub_1A9976220();
        v89 = [v32 _plugIn];
        if (!v89)
        {
          goto LABEL_126;
        }

        v90 = sub_1A98DE160(v89, v218);
        if (v41)
        {
          swift_unknownObjectRelease();
          v86 = v32;
          v91 = v41;
          v92 = sub_1A9976480();
          v93 = sub_1A9976F70();
          if (os_log_type_enabled(v92, v93))
          {
            v213 = v32;
            v94 = swift_slowAlloc();
            v95 = swift_slowAlloc();
            v96 = swift_slowAlloc();
            v232[0] = v96;
            *v94 = v210;
            v97 = [v86 identifier];
            if (!v97)
            {
              goto LABEL_127;
            }

            v98 = v97;
            v99 = v41;

            v100 = sub_1A9976820();
            v86 = v101;

            v102 = sub_1A97AF148(v100, v86, v232);

            *(v94 + 4) = v102;
            *(v94 + 12) = 2112;
            v103 = v99;
            v104 = _swift_stdlib_bridgeErrorToNSError();
            *(v94 + 14) = v104;
            *v95 = v104;
            _os_log_impl(&dword_1A9662000, v92, v93, "ExtensionsCache: Evaluation of extension %s failed: %@", v94, 0x16u);
            sub_1A97B06FC(v95, &unk_1EB3B2A50, &unk_1A9999420);
            MEMORY[0x1AC58D2C0](v95, -1, -1);
            __swift_destroy_boxed_opaque_existential_0Tm(v96);
            MEMORY[0x1AC58D2C0](v96, -1, -1);
            MEMORY[0x1AC58D2C0](v94, -1, -1);

            v41 = 0;
            v29 = v212;
            v32 = v213;
          }

          else
          {

            v41 = 0;
          }
        }

        else
        {
          v86 = v90;
          swift_unknownObjectRelease();
          v105 = v32;
          v106 = sub_1A9976480();
          v107 = sub_1A9976F60();
          v108 = os_log_type_enabled(v106, v107);
          if (v86)
          {
            v213 = v32;
            if (v108)
            {
              v109 = swift_slowAlloc();
              v110 = swift_slowAlloc();
              v232[0] = v110;
              *v109 = v204;
              v111 = [v105 identifier];
              v112 = v105;

              if (!v111)
              {
                goto LABEL_129;
              }

              v113 = sub_1A9976820();
              v115 = v114;

              v116 = sub_1A97AF148(v113, v115, v232);

              *(v109 + 4) = v116;
              _os_log_impl(&dword_1A9662000, v106, v107, "ExtensionsCache: Extension %s passed activation rule", v109, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v110);
              MEMORY[0x1AC58D2C0](v110, -1, -1);
              MEMORY[0x1AC58D2C0](v109, -1, -1);

              v29 = v212;
              v105 = v112;
            }

            else
            {
            }

            v125 = [v105 identifier];
            if (!v125)
            {
              goto LABEL_128;
            }

            v126 = v125;
            v127 = sub_1A9976820();
            v129 = v128;

            v130 = v211;
            v131 = v203;
            swift_beginAccess();
            v132 = *(v130 + v131);
            if (*(v132 + 16))
            {
              v133 = sub_1A97BCEB8(v127, v129);
              v135 = v134;

              if (v135)
              {
                v136 = *(*(v132 + 56) + 8 * v133);
                swift_endAccess();
                swift_unknownObjectRetain();
                if ([v105 _plugIn])
                {
                  v229 = &unk_1F1DA42A0;
                  v137 = swift_dynamicCastObjCProtocolConditional();
                  if (v137)
                  {
                    v138 = v137;
                    v139 = type metadata accessor for SFSupersededPlugin();
                    v140 = objc_allocWithZone(v139);
                    swift_unknownObjectWeakInit();
                    *&v140[OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin] = v138;
                    v29 = v212;
                    swift_unknownObjectWeakAssign();
                    v228.receiver = v140;
                    v228.super_class = v139;
                    swift_unknownObjectRetain();
                    v141 = objc_msgSendSuper2(&v228, sel_init);
                    [v105 _setPlugIn_];
                    swift_unknownObjectRelease();
                    swift_unknownObjectRelease();

LABEL_76:
                    v86 = v105;
                    MEMORY[0x1AC589740]();
                    v32 = v213;
                    if (*((v231 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v231 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      v161 = *((v231 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      sub_1A9976AF0();
                    }

                    sub_1A9976B30();
                    v209 = v231;
                    goto LABEL_79;
                  }

                  swift_unknownObjectRelease();
                }

                swift_unknownObjectRelease();
                goto LABEL_76;
              }
            }

            else
            {
            }

            swift_endAccess();
            goto LABEL_76;
          }

          if (v108)
          {
            v117 = v105;
            v118 = v32;
            v86 = swift_slowAlloc();
            v119 = swift_slowAlloc();
            v232[0] = v119;
            *v86 = v204;
            v120 = [v117 identifier];

            if (!v120)
            {
              goto LABEL_130;
            }

            v121 = sub_1A9976820();
            v123 = v122;

            v124 = sub_1A97AF148(v121, v123, v232);

            *(v86 + 4) = v124;
            _os_log_impl(&dword_1A9662000, v106, v107, "ExtensionsCache: Extension %s did not pass activation rule", v86, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v119);
            MEMORY[0x1AC58D2C0](v119, -1, -1);
            MEMORY[0x1AC58D2C0](v86, -1, -1);

            v41 = 0;
            v29 = v212;
            v32 = v118;
          }

          else
          {
          }
        }

LABEL_79:
        a2 = v32;
        v142 = [v32 identifier];
        if (!v142)
        {
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
          sub_1A9977880();
          __break(1u);
          goto LABEL_136;
        }

        v143 = v142;
        v144 = sub_1A9976820();
        v146 = v145;

        v147 = v217;
        sub_1A9976220();
        sub_1A99760D0();
        v149 = v148;
        v44 = *v222;
        (*v222)(v147, v223);
        v37 = v224;
        v32 = swift_isUniquelyReferenced_nonNull_native();
        v232[0] = v37;
        v150 = sub_1A97BCEB8(v144, v146);
        v152 = *(v37 + 16);
        v153 = (v151 & 1) == 0;
        v154 = __OFADD__(v152, v153);
        v155 = v152 + v153;
        if (v154)
        {
          goto LABEL_116;
        }

        v156 = v151;
        if (*(v37 + 24) < v155)
        {
          sub_1A98269C0(v155, v32);
          v150 = sub_1A97BCEB8(v144, v146);
          if ((v156 & 1) != (v157 & 1))
          {
            goto LABEL_135;
          }

LABEL_85:
          if (v156)
          {
            goto LABEL_44;
          }

          goto LABEL_86;
        }

        if (v32)
        {
          goto LABEL_85;
        }

        v32 = v150;
        sub_1A9828650();
        v150 = v32;
        if (v156)
        {
LABEL_44:
          v87 = v150;

          v224 = v232[0];
          *(*(v232[0] + 56) + 8 * v87) = v149;

          (v44)(v225, v223);
          goto LABEL_45;
        }

LABEL_86:
        v37 = v232[0];
        *(v232[0] + 8 * (v150 >> 6) + 64) |= 1 << v150;
        v158 = (*(v37 + 48) + 16 * v150);
        *v158 = v144;
        v158[1] = v146;
        *(*(v37 + 56) + 8 * v150) = v149;

        (v44)(v225, v223);
        v159 = *(v37 + 16);
        v154 = __OFADD__(v159, 1);
        v160 = v159 + 1;
        if (v154)
        {
          goto LABEL_117;
        }

        v224 = v37;
        *(v37 + 16) = v160;
LABEL_45:
        ++v35;
        v86 = v214;
        v37 = v219;
        if (v221 == v214)
        {
          goto LABEL_92;
        }
      }
    }

    v209 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v162 = v197;
    sub_1A97C13A4(v206, v197, &unk_1EB3B2AD0, &qword_1A9998440);
    v163 = v201;
    v164 = v202;
    if ((*(v201 + 48))(v162, 1, v202) == 1)
    {
      sub_1A97B06FC(v162, &unk_1EB3B2AD0, &qword_1A9998440);
      v35 = v208;
    }

    else
    {
      (*(v163 + 32))(v29, v162, v164);
      v35 = v208;
      if (v199)
      {
        sub_1A9976FF0();
        v165 = share_sheet_log();
        if (!v165)
        {
          goto LABEL_134;
        }

        v166 = v165;
        v193 = MEMORY[0x1E69E7CC0];
        LOBYTE(v192) = 2;
        v191 = 19;
        sub_1A9976430();

        (*(v201 + 8))(v29, v202);
      }

      else
      {
        (*(v163 + 8))(v29, v164);
      }
    }

    v167 = v224;
    v72 = v209;
    if (*(v224 + 16))
    {
      v168 = sub_1A9976C00();
      v169 = v196;
      (*(*(v168 - 8) + 56))(v196, 1, 1, v168);
      v170 = swift_allocObject();
      v170[2] = 0;
      v170[3] = 0;
      v171 = v207;
      v170[4] = v167;
      v170[5] = v171;
      v170[6] = v35;

      sub_1A97B4F40(0, 0, v169, &unk_1A9998450, v170);
    }

    v172 = sub_1A9976480();
    v173 = sub_1A9976F90();

    if (os_log_type_enabled(v172, v173))
    {
      v174 = swift_slowAlloc();
      v175 = swift_slowAlloc();
      v232[0] = v175;
      *v174 = 134218242;
      if (v72 >> 62)
      {
        v176 = sub_1A9977480();
      }

      else
      {
        v176 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v174 + 4) = v176;

      *(v174 + 12) = 2080;
      *(v174 + 14) = sub_1A97AF148(v207, v35, v232);
      _os_log_impl(&dword_1A9662000, v172, v173, "ExtensionsCache: %ld new extensions from NSExtension for cache key = [%s]", v174, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v175);
      MEMORY[0x1AC58D2C0](v175, -1, -1);
      MEMORY[0x1AC58D2C0](v174, -1, -1);
    }

    else
    {
    }

    v178 = v211;
    if (v200)
    {
      v179 = v207;
    }

    else
    {
      v180 = *(v211 + OBJC_IVAR___SFApplicationExtensionsCache_lock);
      v181 = MEMORY[0x1EEE9AC00](v177);
      v179 = v207;
      v191 = v178;
      v192 = v207;
      MEMORY[0x1EEE9AC00](v181);
      v193 = sub_1A982B3A0;
      v194 = v182;
      os_unfair_lock_lock(v180 + 4);
      sub_1A982B4AC();
      v178 = v211;
      os_unfair_lock_unlock(v180 + 4);
    }

    v32 = v205;
    swift_beginAccess();

    v183 = sub_1A982ADC0((v178 + v32), v179, v35);
    if (v41)
    {
LABEL_136:
      result = swift_endAccess();
      __break(1u);
      return result;
    }

    v184 = v183;

    v185 = *(*(v178 + v32) + 16);
    if (v185 >= v184)
    {
      break;
    }

    __break(1u);
LABEL_123:
    swift_once();
LABEL_4:
    v50 = sub_1A99764A0();
    __swift_project_value_buffer(v50, qword_1EB3ABCE0);
    v51 = v208;

    v52 = sub_1A9976480();
    v53 = sub_1A9976F90();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v232[0] = v55;
      *v54 = 136315138;
      *(v54 + 4) = sub_1A97AF148(v207, v51, v232);
      _os_log_impl(&dword_1A9662000, v52, v53, "ExtensionsCache: evaluation is already running for cache key = [%s]", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v55);
      MEMORY[0x1AC58D2C0](v55, -1, -1);
      MEMORY[0x1AC58D2C0](v54, -1, -1);
    }

    a2 = v207;
    if ((v224 & 1) == 0)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  sub_1A982AFF8(v184, v185);
  swift_endAccess();

  v186 = sub_1A9976480();
  v187 = sub_1A9976F90();

  if (os_log_type_enabled(v186, v187))
  {
    v188 = swift_slowAlloc();
    v189 = swift_slowAlloc();
    v232[0] = v189;
    *v188 = 136315138;
    *(v188 + 4) = sub_1A97AF148(v207, v35, v232);
    _os_log_impl(&dword_1A9662000, v186, v187, "ExtensionsCache: registered for cache key = [%s]", v188, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v189);
    MEMORY[0x1AC58D2C0](v189, -1, -1);
    MEMORY[0x1AC58D2C0](v188, -1, -1);
  }

  sub_1A97B06FC(v206, &unk_1EB3B2AD0, &qword_1A9998440);

  return v72;
}

uint64_t sub_1A981D3F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id SFApplicationExtensionsCache.extensionsResult(with:testingReferenceSnapshot:)(unint64_t a1, void *a2)
{
  v3 = v2;
  v109 = sub_1A99763B0();
  v105 = *(v109 - 8);
  v6 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v109 - 8);
  v107 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4F90, &qword_1A99A44A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v112 = &v95 - v10;
  v11 = sub_1A9829EB0(a1);
  v12 = v11;
  v14 = v13;
  v15 = &qword_1EB3B2000;
  if (a2)
  {
    v108 = 0;
    v111 = 0;
    v122 = 0;
    goto LABEL_3;
  }

  v29 = v11;
  aBlock = 0;
  v30 = *(v2 + OBJC_IVAR___SFApplicationExtensionsCache_lock);
  v31 = MEMORY[0x1EEE9AC00](v11);
  *(&v95 - 4) = &aBlock;
  *(&v95 - 3) = v2;
  *(&v95 - 2) = v29;
  *(&v95 - 1) = v14;
  MEMORY[0x1EEE9AC00](v31);
  *(&v95 - 2) = sub_1A982B44C;
  *(&v95 - 1) = v32;
  os_unfair_lock_lock(v30 + 4);
  sub_1A982B4AC();
  os_unfair_lock_unlock(v30 + 4);
  v33 = aBlock;
  v122 = aBlock;
  if (!aBlock)
  {
    v36 = *(v2 + OBJC_IVAR___SFApplicationExtensionsCache_queue);
    v12 = swift_allocObject();
    v12[2] = &v122;
    v12[3] = v3;
    v12[4] = v29;
    v12[5] = v14;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_1A982A5DC;
    *(v39 + 24) = v12;
    v108 = v12;
    v120 = sub_1A982A5E8;
    v121 = v39;
    aBlock = MEMORY[0x1E69E9820];
    v117 = 1107296256;
    v118 = sub_1A981E5CC;
    v119 = &block_descriptor_14;
    v40 = _Block_copy(&aBlock);
    v37 = v121;

    v41 = v3;

    dispatch_sync(v36, v40);
    _Block_release(v40);
    LOBYTE(v40) = swift_isEscapingClosureAtFileLocation();

    if ((v40 & 1) == 0)
    {
      v12 = v29;
      v42 = v122;
      v43 = sub_1A982A5DC;
      v15 = &qword_1EB3B2000;
      if (v122)
      {
        v44 = qword_1EB3ABCD8;

        if (v44 != -1)
        {
          swift_once();
        }

        v45 = sub_1A99764A0();
        __swift_project_value_buffer(v45, qword_1EB3ABCE0);

        v46 = sub_1A9976480();
        v47 = sub_1A9976F90();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = v3;
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          aBlock = v50;
          *v49 = 134218242;
          if (v42 >> 62)
          {
            v51 = sub_1A9977480();
          }

          else
          {
            v51 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v49 + 4) = v51;

          *(v49 + 12) = 2080;
          *(v49 + 14) = sub_1A97AF148(v12, v14, &aBlock);
          _os_log_impl(&dword_1A9662000, v46, v47, "ExtensionsCache: no cache found but primed %ld extensions ready for cache key = [%s]", v49, 0x16u);
          __swift_destroy_boxed_opaque_existential_0Tm(v50);
          MEMORY[0x1AC58D2C0](v50, -1, -1);
          MEMORY[0x1AC58D2C0](v49, -1, -1);

          v36 = 0;
          v110 = 0;
          v111 = sub_1A982A5DC;
          v3 = v48;
          v15 = &qword_1EB3B2000;
        }

        else
        {

          swift_bridgeObjectRelease_n();
          v36 = 0;
          v110 = 0;
          v111 = sub_1A982A5DC;
          v15 = &qword_1EB3B2000;
        }

        goto LABEL_27;
      }

LABEL_75:
      v111 = v43;
LABEL_3:
      v16 = *(v3 + OBJC_IVAR___SFApplicationExtensionsCache_queue);
      v17 = swift_allocObject();
      v17[2] = &v122;
      v17[3] = v3;
      v17[4] = a1;
      v17[5] = v12;
      v17[6] = v14;
      v17[7] = a2;
      v18 = swift_allocObject();
      *(v18 + 16) = sub_1A982A610;
      *(v18 + 24) = v17;
      v110 = v17;
      v120 = sub_1A982B46C;
      v121 = v18;
      aBlock = MEMORY[0x1E69E9820];
      v117 = 1107296256;
      v118 = sub_1A981E5CC;
      v119 = &block_descriptor_24;
      v19 = _Block_copy(&aBlock);
      v20 = a2;

      v21 = v3;

      dispatch_sync(v16, v19);
      _Block_release(v19);
      LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

      if (v19)
      {
LABEL_93:
        __break(1u);
      }

      else if (qword_1EB3ABCD8 == -1)
      {
        goto LABEL_5;
      }

      swift_once();
LABEL_5:
      v22 = sub_1A99764A0();
      __swift_project_value_buffer(v22, qword_1EB3ABCE0);

      v23 = sub_1A9976480();
      v24 = sub_1A9976F90();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = v3;
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        aBlock = v27;
        *v26 = 134218242;
        swift_beginAccess();
        if (v122)
        {
          if (v122 >> 62)
          {
            v28 = sub_1A9977480();
          }

          else
          {
            v28 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }
        }

        else
        {
          v28 = 0;
        }

        *(v26 + 4) = v28;
        *(v26 + 12) = 2080;
        *(v26 + 14) = sub_1A97AF148(v12, v14, &aBlock);
        _os_log_impl(&dword_1A9662000, v23, v24, "ExtensionsCache: no cache found. got %ld new extensions for cache key = [%s]", v26, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v27);
        MEMORY[0x1AC58D2C0](v27, -1, -1);
        MEMORY[0x1AC58D2C0](v26, -1, -1);

        v36 = sub_1A982A610;
        v3 = v25;
      }

      else
      {

        v36 = sub_1A982A610;
      }

LABEL_27:
      v52 = (v3 + OBJC_IVAR___SFApplicationExtensionsCache_cacheMisses);
      v53 = *(v3 + OBJC_IVAR___SFApplicationExtensionsCache_cacheMisses);
      v54 = __OFADD__(v53, 1);
      v55 = v53 + 1;
      v56 = v108;
      if (!v54)
      {
        goto LABEL_37;
      }

      __break(1u);
      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_97;
  }

  v12 = v29;
  v34 = qword_1EB3ABCD8;

  if (v34 != -1)
  {
    swift_once();
  }

  v35 = sub_1A99764A0();
  __swift_project_value_buffer(v35, qword_1EB3ABCE0);

  v36 = sub_1A9976480();
  LOBYTE(v29) = sub_1A9976F90();

  if (os_log_type_enabled(v36, v29))
  {
    v37 = v3;
    v3 = swift_slowAlloc();
    a2 = swift_slowAlloc();
    aBlock = a2;
    *v3 = 134218242;
    if (!(v33 >> 62))
    {
      v38 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_15:

      *(v3 + 4) = v38;

      *(v3 + 12) = 2080;
      *(v3 + 14) = sub_1A97AF148(v12, v14, &aBlock);
      _os_log_impl(&dword_1A9662000, v36, v29, "ExtensionsCache: found %ld cached extensions for cache key = [%s]", v3, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(a2);
      MEMORY[0x1AC58D2C0](a2, -1, -1);
      MEMORY[0x1AC58D2C0](v3, -1, -1);

      v3 = v37;
      goto LABEL_31;
    }

LABEL_97:
    v38 = sub_1A9977480();
    goto LABEL_15;
  }

LABEL_30:

  swift_bridgeObjectRelease_n();
LABEL_31:
  v15 = &qword_1EB3B2000;
  if (*(v3 + OBJC_IVAR___SFApplicationExtensionsCache_primed) != 1)
  {
    goto LABEL_35;
  }

  v52 = (v3 + OBJC_IVAR___SFApplicationExtensionsCache_cacheMisses);
  v57 = *(v3 + OBJC_IVAR___SFApplicationExtensionsCache_cacheMisses);
  v54 = __OFADD__(v57, 1);
  v55 = v57 + 1;
  if (v54)
  {
    __break(1u);
LABEL_35:
    v52 = (v3 + OBJC_IVAR___SFApplicationExtensionsCache_cacheHits);
    v58 = *(v3 + OBJC_IVAR___SFApplicationExtensionsCache_cacheHits);
    v54 = __OFADD__(v58, 1);
    v55 = v58 + 1;
    if (v54)
    {
      __break(1u);
LABEL_99:
      swift_once();
LABEL_83:
      v87 = sub_1A99764A0();
      __swift_project_value_buffer(v87, qword_1EB3ABCE0);

      v88 = sub_1A9976480();
      v89 = sub_1A9976F90();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = v12;
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        aBlock = v92;
        *v91 = 134218242;
        if (v122)
        {
          if (v122 >> 62)
          {
            v93 = sub_1A9977480();
          }

          else
          {
            v93 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }
        }

        else
        {
          v93 = 0;
        }

        *(v91 + 4) = v93;
        *(v91 + 12) = 2080;
        v94 = sub_1A97AF148(v90, v14, &aBlock);

        *(v91 + 14) = v94;
        _os_log_impl(&dword_1A9662000, v88, v89, "ExtensionsCache: filtered on enablement. Returning %ld extensions for cache key = [%s]", v91, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v92);
        MEMORY[0x1AC58D2C0](v92, -1, -1);
        MEMORY[0x1AC58D2C0](v91, -1, -1);
      }

      else
      {
      }

      goto LABEL_91;
    }
  }

  v110 = 0;
  v111 = 0;
  v56 = 0;
  v36 = 0;
LABEL_37:
  *v52 = v55;
  *(v3 + v15[274]) = 0;
  v59 = *MEMORY[0x1E69C4B18];
  v113 = sub_1A9976820();
  v114 = v60;
  sub_1A9977250();
  if (!*(a1 + 16) || (v99 = v36, v61 = sub_1A97BCF30(&aBlock), v36 = v99, (v62 & 1) == 0))
  {
    sub_1A97C108C(&aBlock);
    goto LABEL_44;
  }

  sub_1A97AF7EC(*(a1 + 56) + 32 * v61, v115);
  sub_1A97C108C(&aBlock);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_44:

    goto LABEL_45;
  }

  v108 = v56;
  v63 = v113;
  v64 = v114;
  aBlock = 1;
  if (v63 == sub_1A9977730() && v64 == v65)
  {

    goto LABEL_49;
  }

  v68 = sub_1A99777E0();

  if (v68)
  {
LABEL_49:
    swift_beginAccess();
    v69 = v122;
    if (v122)
    {
      v113 = MEMORY[0x1E69E7CC0];
      v70 = v122 & 0xFFFFFFFFFFFFFF8;
      v96 = v14;
      if (v122 >> 62)
      {
        v14 = sub_1A9977480();
      }

      else
      {
        v14 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      a2 = v109;
      v106 = OBJC_IVAR___SFApplicationExtensionsCache_cachedExtensionIdentitiesByIdentifier;

      if (v14)
      {
        v103 = v3;
        v95 = v12;
        a1 = 0;
        v104 = v69 & 0xC000000000000001;
        v102 = (v105 + 56);
        v98 = (v105 + 16);
        v101 = (v105 + 48);
        v97 = (v105 + 8);
        v100 = v70;
        while (1)
        {
          if (v104)
          {
            v71 = MEMORY[0x1AC589F80](a1, v69);
            v15 = (a1 + 1);
            if (__OFADD__(a1, 1))
            {
LABEL_74:
              __break(1u);
              goto LABEL_75;
            }
          }

          else
          {
            if (a1 >= *(v70 + 16))
            {
              __break(1u);
              goto LABEL_93;
            }

            v71 = *(v69 + 8 * a1 + 32);
            v15 = (a1 + 1);
            if (__OFADD__(a1, 1))
            {
              goto LABEL_74;
            }
          }

          v12 = v71;
          result = [v71 identifier];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v72 = result;
          v3 = sub_1A9976820();
          v74 = v73;

          v75 = v103;
          v76 = v106;
          swift_beginAccess();
          v77 = *(v75 + v76);
          if (*(v77 + 16))
          {
            v3 = sub_1A97BCEB8(v3, v74);
            v79 = v78;

            if (v79)
            {
              v80 = v112;
              a2 = v109;
              (*(v105 + 16))(v112, *(v77 + 56) + *(v105 + 72) * v3, v109);
              v81 = 0;
              goto LABEL_66;
            }

            v81 = 1;
            a2 = v109;
          }

          else
          {

            v81 = 1;
          }

          v80 = v112;
LABEL_66:
          (*v102)(v80, v81, 1, a2);
          if ((*v101)(v80, 1, a2))
          {
            sub_1A97B06FC(v80, &qword_1EB3B4F90, &qword_1A99A44A0);
            swift_endAccess();
          }

          else
          {
            v83 = v107;
            (*v98)(v107, v80, a2);
            sub_1A97B06FC(v80, &qword_1EB3B4F90, &qword_1A99A44A0);
            swift_endAccess();
            v82 = sub_1A9976350();
            (*v97)(v83, a2);
            if (v82)
            {
              goto LABEL_70;
            }
          }

          v82 = v12;
LABEL_70:
          v84 = [v82 optedIn];

          if (v84)
          {
            sub_1A9977350();
            v85 = *(v113 + 16);
            sub_1A9977380();
            sub_1A9977390();
            sub_1A9977360();
          }

          else
          {
          }

          v70 = v100;
          ++a1;
          if (v15 == v14)
          {
            v86 = v113;
            v12 = v95;
            goto LABEL_81;
          }
        }
      }

      v86 = MEMORY[0x1E69E7CC0];
LABEL_81:

      v14 = v96;
    }

    else
    {
      v86 = 0;
    }

    v122 = v86;

    if (qword_1EB3ABCD8 == -1)
    {
      goto LABEL_83;
    }

    goto LABEL_99;
  }

LABEL_91:
  v36 = v99;
LABEL_45:
  swift_beginAccess();
  v66 = v122;
  sub_1A967C46C(v111);
  sub_1A967C46C(v36);
  if (v66)
  {
    return v66;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1A981E514(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR___SFApplicationExtensionsCache_lock);
  os_unfair_lock_lock(v3 + 4);
  sub_1A982B4AC();
  os_unfair_lock_unlock(v3 + 4);
  v4 = *a1;
  *a1 = 0;
}

unint64_t SFApplicationExtensionsCache.reportResult()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B28C8, &qword_1A99981A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A9998170;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x80000001A99E4740;
  sub_1A9812DE0(0, &qword_1EB3AB620, 0x1E696AD98);
  v3 = OBJC_IVAR___SFApplicationExtensionsCache_cacheMisses;
  v4 = *(v0 + OBJC_IVAR___SFApplicationExtensionsCache_cacheMisses);
  *(inited + 48) = sub_1A9977030();
  *(inited + 56) = 0xD000000000000013;
  *(inited + 64) = 0x80000001A99E4760;
  v5 = OBJC_IVAR___SFApplicationExtensionsCache_cacheHits;
  v6 = *(v0 + OBJC_IVAR___SFApplicationExtensionsCache_cacheHits);
  *(inited + 72) = sub_1A9977030();
  v7 = sub_1A97BFC7C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B28D8, &qword_1A99981A8);
  swift_arrayDestroy();
  *(v1 + v3) = 0;
  *(v1 + v5) = 0;
  return v7;
}

uint64_t sub_1A981E86C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = OBJC_IVAR___SFApplicationExtensionsCache_cachedExtensionIdentitiesByIdentifier;
  swift_beginAccess();
  v9 = *(a2 + v8);

  v10 = sub_1A98CA644(a1, v9);

  if ((v10 & 1) == 0)
  {
    v22 = a3;
    v12 = OBJC_IVAR___SFApplicationExtensionsCache_cachedResults;
    swift_beginAccess();
    v13 = *(a2 + v12);
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = sub_1A986BE88(v14, 0);
      v20 = sub_1A986C3D4(&v21, v15 + 4, v14, v13);

      result = sub_1A982B3C0();
      if (v20 != v14)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    v16 = *v22;
    *v22 = v15;

    v17 = *(a2 + v8);
    *(a2 + v8) = a1;

    v18 = OBJC_IVAR___SFApplicationExtensionsCache_cachedSupersedingPluginsByIdentifier;
    swift_beginAccess();
    v19 = *(a2 + v18);
    *(a2 + v18) = a4;
  }

  return result;
}

void sub_1A981EA08(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1A981EA64(a2);
  }
}

uint64_t sub_1A981EA64(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A9976690();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR___SFApplicationExtensionsCache_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v10 = v9;
  LOBYTE(v9) = sub_1A99766A0();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (qword_1EB3ABCD8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = sub_1A99764A0();
  __swift_project_value_buffer(v11, qword_1EB3ABCE0);
  v12 = sub_1A9976480();
  v13 = sub_1A9976F90();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    if (qword_1EB3AB648 != -1)
    {
      v24 = v14;
      swift_once();
      v14 = v24;
    }

    *(v14 + 4) = *(off_1EB3AB650 + 2);
    v15 = v13;
    v16 = v14;
    _os_log_impl(&dword_1A9662000, v12, v15, "ExtensionsCache: processing %ld registrations for evaluation precaching", v14, 0xCu);
    MEMORY[0x1AC58D2C0](v16, -1, -1);
  }

  v17 = *(a1 + 16);
  if (v17)
  {

LABEL_12:
    v18 = 32;
    do
    {
      v19 = *(a1 + v18);

      v21 = sub_1A9829EB0(v20);
      sub_1A981B92C(v19, v21, v22, 0, 0, 0, 0);

      v18 += 8;
      --v17;
    }

    while (v17);
  }

  if (qword_1EB3AB648 != -1)
  {
    swift_once();
  }

  a1 = sub_1A981ED5C(off_1EB3AB650);
  v17 = *(a1 + 16);
  if (v17)
  {
    goto LABEL_12;
  }
}

uint64_t sub_1A981ED5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1A97BDC24(0, v1, 0);
    v4 = (a1 + 32);
    v2 = v10;
    do
    {
      v8 = *v4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A60, &unk_1A99983E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1650, &qword_1A9992800);
      swift_dynamicCast();
      v6 = *(v10 + 16);
      v5 = *(v10 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1A97BDC24((v5 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      *(v10 + 8 * v6 + 32) = v9;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1A981EE8C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  sub_1A9977250();
  if (!*(v3 + 16) || (v4 = sub_1A97BCF30(v47), (v5 & 1) == 0))
  {
    sub_1A97C108C(v47);
    goto LABEL_7;
  }

  sub_1A97AF7EC(*(v3 + 56) + 32 * v4, v48);
  sub_1A97C108C(v47);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v6 = sub_1A99767E0();
  v7 = objc_opt_self();
  v47[0] = 0;
  v8 = [v7 extensionWithIdentifier:v6 error:v47];

  v9 = v47[0];
  if (!v8)
  {
    v11 = v9;
    v12 = sub_1A9975F20();

    swift_willThrow();
    v13 = objc_allocWithZone(MEMORY[0x1E69635D0]);

    log = sub_1A98248D0(0xD000000000000010, 0x80000001A99E4F10, 0);
    v46 = v12;
    v24 = [log effectiveBundleIdentifier];
    v25 = sub_1A9976820();
    v27 = v26;

    if (v25 == 0xD000000000000010 && v27 == 0x80000001A99E4F10)
    {

LABEL_19:
      if (qword_1EB3ABCD8 != -1)
      {
        swift_once();
      }

      v30 = sub_1A99764A0();
      __swift_project_value_buffer(v30, qword_1EB3ABCE0);

      v31 = v46;
      v32 = sub_1A9976480();
      v33 = sub_1A9976F70();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v47[0] = v36;
        *v34 = 136315394;
        v37 = sub_1A97AF148(0xD000000000000010, 0x80000001A99E4F10, v47);

        *(v34 + 4) = v37;
        *(v34 + 12) = 2112;
        v38 = v46;
        v39 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 14) = v39;
        *v35 = v39;
        _os_log_impl(&dword_1A9662000, v32, v33, "ExtensionsCache: Could not find extension with identifier %s: %@", v34, 0x16u);
        sub_1A97B06FC(v35, &unk_1EB3B2A50, &unk_1A9999420);
        MEMORY[0x1AC58D2C0](v35, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v36);
        MEMORY[0x1AC58D2C0](v36, -1, -1);
        MEMORY[0x1AC58D2C0](v34, -1, -1);

        goto LABEL_7;
      }

      v28 = v46;
LABEL_24:

      goto LABEL_7;
    }

    v29 = sub_1A99777E0();

    if (v29)
    {
      goto LABEL_19;
    }

    v40 = [log effectiveBundleIdentifier];
    if (!v40)
    {
      sub_1A9976820();
      v40 = sub_1A99767E0();
    }

    v47[0] = 0;
    v8 = [v7 extensionWithIdentifier:v40 error:v47];

    v41 = v47[0];
    if (v8)
    {

      goto LABEL_5;
    }

    v42 = v41;
    v43 = sub_1A9975F20();

    swift_willThrow();
    if (qword_1EB3ABCD8 != -1)
    {
      swift_once();
    }

    v14 = sub_1A99764A0();
    __swift_project_value_buffer(v14, qword_1EB3ABCE0);

    v15 = v43;
    v16 = sub_1A9976480();
    v17 = sub_1A9976F70();

    loga = v16;
    if (!os_log_type_enabled(v16, v17))
    {

      v28 = v43;
      goto LABEL_24;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v47[0] = v20;
    *v18 = 136315394;
    v21 = sub_1A97AF148(0xD000000000000010, 0x80000001A99E4F10, v47);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2112;
    v22 = v43;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v23;
    *v19 = v23;
    _os_log_impl(&dword_1A9662000, loga, v17, "ExtensionsCache: Could not find extension with identifier %s: %@", v18, 0x16u);
    sub_1A97B06FC(v19, &unk_1EB3B2A50, &unk_1A9999420);
    MEMORY[0x1AC58D2C0](v19, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x1AC58D2C0](v20, -1, -1);
    MEMORY[0x1AC58D2C0](v18, -1, -1);

    goto LABEL_7;
  }

LABEL_5:

LABEL_8:
  *a2 = v8;
  v10 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1A981F4F8(uint64_t *a1, uint64_t a2)
{
  v21 = a1;
  v25 = sub_1A99763B0();
  v3 = *(v25 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___SFApplicationExtensionsCache_cachedExtensionIdentitiesByIdentifier;
  swift_beginAccess();
  v8 = *(a2 + v7);
  v22 = MEMORY[0x1E69E7CC0];
  v27 = MEMORY[0x1E69E7CC0];
  v9 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 64);
  v13 = (v10 + 63) >> 6;
  v23 = v3 + 8;
  v24 = v3 + 16;
  v26 = v8;
  result = swift_bridgeObjectRetain_n();
  v15 = 0;
  if (!v12)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v17 = v25;
      (*(v3 + 16))(v6, *(v26 + 56) + *(v3 + 72) * (v16 | (v15 << 6)), v25);
      v18 = sub_1A9976350();
      result = (*(v3 + 8))(v6, v17);
      if (v18)
      {
        break;
      }

      if (!v12)
      {
        goto LABEL_6;
      }
    }

    MEMORY[0x1AC589740](result);
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v22 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1A9976AF0();
    }

    result = sub_1A9976B30();
    v22 = v27;
  }

  while (v12);
LABEL_6:
  while (1)
  {
    v19 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v19 >= v13)
    {

      v20 = *v21;
      *v21 = v22;
    }

    v12 = *(v9 + 8 * v19);
    ++v15;
    if (v12)
    {
      v15 = v19;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A981F758(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OBJC_IVAR___SFApplicationExtensionsCache_cachedResults;
  swift_beginAccess();
  v9 = *(a2 + v8);
  if (*(v9 + 16) && (v10 = sub_1A97BCEB8(a3, a4), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
  }

  else
  {
    v12 = 0;
  }

  swift_endAccess();
  v13 = *a1;
  *a1 = v12;
}

uint64_t sub_1A981F808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OBJC_IVAR___SFApplicationExtensionsCache_cachedResults;
  swift_beginAccess();

  v9 = *(a1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a1 + v8);
  *(a1 + v8) = 0x8000000000000000;
  sub_1A97E39B0(a4, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a1 + v8) = v12;
  return swift_endAccess();
}

uint64_t sub_1A981F8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1A981F8F4, 0, 0);
}

void sub_1A981F8F4()
{
  v1 = *(v0 + 16);
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;

  v6 = 0;
  while (v4)
  {
LABEL_9:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v9 = v8 | (v6 << 6);
    v10 = *(*(v1 + 56) + 8 * v9);
    if (v10 > 0.1)
    {
      v12 = v23[3];
      v11 = v23[4];
      v13 = (*(v1 + 48) + 16 * v9);
      v15 = *v13;
      v14 = v13[1];
      v16 = objc_allocWithZone(SFShareSheetExtensionEvaluationEvent);

      v17 = [v16 init];
      v18 = sub_1A99767E0();

      [v17 setActivityType_];

      v19 = sub_1A99767E0();
      [v17 setCacheKey_];

      v20 = v10 * 1000.0;
      if (COERCE_UNSIGNED_INT64(v10 * 1000.0) >> 52 > 0x7FE)
      {
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      if (v20 <= -9.22337204e18)
      {
        goto LABEL_19;
      }

      if (v20 >= 9.22337204e18)
      {
        goto LABEL_20;
      }

      [v17 setEvaluationMs_];
      [v17 submitEvent];
    }
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v7 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_9;
    }
  }

  v21 = v23[2];

  v22 = v23[1];

  v22();
}

id sub_1A981FC30(char *a1, uint64_t a2, SEL *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A40, &qword_1A99983B0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v12 = *&a1[OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin];
  v13 = a1;
  v14 = [v12 *a3];
  if (v14)
  {
    v15 = v14;
    sub_1A9975FE0();

    v16 = sub_1A9976020();
    (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
  }

  else
  {
    v16 = sub_1A9976020();
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  }

  sub_1A97D8380(v9, v11, &unk_1EB3B2A40, &qword_1A99983B0);

  sub_1A9976020();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v11, 1, v16);
  v19 = 0;
  if (v18 != 1)
  {
    v20 = sub_1A9975FC0();
    (*(v17 + 8))(v11, v16);
    v19 = v20;
  }

  return v19;
}

id sub_1A98201C4(char *a1, uint64_t a2, SEL *a3)
{
  v4 = *&a1[OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin];
  v5 = a1;
  if ([v4 *a3])
  {
    sub_1A99771B0();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16 = v14;
  v17 = v15;

  v6 = *(&v15 + 1);
  if (*(&v15 + 1))
  {
    v7 = __swift_project_boxed_opaque_existential_1(&v16, *(&v17 + 1));
    v8 = *(*(&v15 + 1) - 8);
    v9 = *(v8 + 64);
    MEMORY[0x1EEE9AC00](v7);
    v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11);
    v12 = sub_1A99777C0();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(&v16);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t sub_1A9820470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);

  v6 = swift_unknownObjectRetain();
  v5(v6, a3);

  return swift_unknownObjectRelease();
}

id sub_1A9820A50(char *a1, uint64_t a2, SEL *a3)
{
  v4 = *&a1[OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin];
  v5 = a1;
  v6 = [v4 *a3];
  if (v6)
  {
    v7 = v6;
    sub_1A9976700();

    v8 = sub_1A99766E0();
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

void sub_1A9820B24(char *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v10 = a1;
  if (a3)
  {
    v5 = sub_1A9976700();
    a1 = v10;
    v6 = *&v10[OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin];
    if (v5)
    {
      v7 = v10;
      swift_unknownObjectRetain();
      v8 = sub_1A99766E0();

      goto LABEL_6;
    }
  }

  else
  {
    v6 = *&a1[OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin];
  }

  v9 = a1;
  swift_unknownObjectRetain();
  v8 = 0;
LABEL_6:
  [v6 *a4];
  swift_unknownObjectRelease();
}

id sub_1A9820E70(char *a1, uint64_t a2, SEL *a3)
{
  v4 = *&a1[OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin];
  v5 = a1;
  v6 = [v4 *a3];
  if (v6)
  {
    v7 = v6;
    sub_1A9976820();

    v8 = sub_1A99767E0();
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

void sub_1A9821010(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id sub_1A9821134()
{
  v2 = *MEMORY[0x1E69E9840];
  result = sub_1A9821FC0(&selRef_beginUsingWithError_);
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A98211A0(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A98211C0, 0, 0);
}

uint64_t sub_1A98211C0()
{
  v1 = v0[18];
  v2 = *(v0[19] + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin);
  v0[20] = v2;
  swift_unknownObjectRetain();
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29A0, &qword_1A99982D0);
    v1 = sub_1A99766E0();
  }

  v0[21] = v1;
  v0[2] = v0;
  v0[3] = sub_1A9821338;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2930, qword_1A9995E18);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1A982152C;
  v0[13] = &block_descriptor_107;
  v0[14] = v3;
  [v2 beginUsingWithSubsystemOptions:v1 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A9821338()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_1A98214B0;
  }

  else
  {
    v3 = sub_1A9821448;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A9821448()
{
  v1 = v0[20];
  v2 = v0[21];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A98214B0()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  swift_willThrow();
  swift_unknownObjectRelease();

  v4 = v0[1];
  v5 = v0[22];

  return v4();
}

uint64_t sub_1A982152C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    swift_allocError();
    *v5 = a2;
    v6 = a2;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    v8 = *v3;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1A9821760(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29A0, &qword_1A99982D0);
    v6 = sub_1A9976700();
  }

  else
  {
    v6 = 0;
  }

  v3[4] = v6;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1A9821860;

  return sub_1A98211A0(v6);
}

uint64_t sub_1A9821860()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v0)
  {
    if (v5)
    {
      v8 = *(v2 + 24);
      v9 = sub_1A9975F10();

      (v8)[2](v8, v9);
      _Block_release(v8);
    }

    else
    {
    }
  }

  else if (v5)
  {
    v10 = *(v2 + 24);
    v10[2](v10, 0);
    _Block_release(v10);
  }

  v11 = *(v7 + 8);

  return v11();
}

id sub_1A9821A20(void *a1)
{
  v2 = a1;
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = *(v1 + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin);
  if (a1)
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29A0, &qword_1A99982D0);
    v2 = sub_1A99766E0();
  }

  else
  {
    swift_unknownObjectRetain();
  }

  v8[0] = 0;
  v4 = [v3 beginUsingWithSubsystemOptions:v2 error:v8];
  swift_unknownObjectRelease();

  if (v4)
  {
    result = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_1A9975F20();

    result = swift_willThrow();
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1A9821C08(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = *(v2 + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin);
  if (a2)
  {
    swift_unknownObjectRetain();
    v4 = sub_1A99767E0();
  }

  else
  {
    swift_unknownObjectRetain();
    v4 = 0;
  }

  v9[0] = 0;
  v5 = [v3 useBundle:v4 error:v9];
  swift_unknownObjectRelease();

  if (v5)
  {
    result = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_1A9975F20();

    result = swift_willThrow();
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A9821DC8(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = *(v4 + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin);
  if (a1)
  {
    v11[4] = a1;
    v11[5] = a2;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1A9821010;
    v11[3] = a3;
    v8 = _Block_copy(v11);
    swift_unknownObjectRetain();
    sub_1A967C510(a1);
  }

  else
  {
    v9 = *(v4 + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin);
    swift_unknownObjectRetain();
    v8 = 0;
  }

  [v6 *a4];
  _Block_release(v8);
  return swift_unknownObjectRelease();
}

id sub_1A9821F6C()
{
  v2 = *MEMORY[0x1E69E9840];
  result = sub_1A9821FC0(&selRef_endUsingWithError_);
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1A9821FC0(SEL *a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = *(v1 + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin);
  v6[0] = 0;
  if ([v2 *a1])
  {
    result = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_1A9975F20();

    result = swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A9822088(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = a1;
  a4();

  return 1;
}

uint64_t sub_1A982210C(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin);
  sub_1A97C13A4(a1, v13, &qword_1EB3B0BA0, &unk_1A99923D0);
  v5 = v14;
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = *(v5 - 8);
    v8 = *(v7 + 64);
    MEMORY[0x1EEE9AC00](v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10);
    swift_unknownObjectRetain();
    v11 = sub_1A99777C0();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
  }

  else
  {
    swift_unknownObjectRetain();
    v11 = 0;
  }

  [v4 setHostPrincipal:v11 withProtocol:a2];
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

id sub_1A9822324(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B29B0, &qword_1A9990640);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin);
  sub_1A97C13A4(a1, &v14 - v5, &unk_1EB3B29B0, &qword_1A9990640);
  v8 = sub_1A99762C0();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  swift_unknownObjectRetain();
  v11 = 0;
  if (v10 != 1)
  {
    v11 = sub_1A9976270();
    (*(v9 + 8))(v6, v8);
  }

  v12 = [v7 createInstanceWithUUID_];
  swift_unknownObjectRelease();

  return v12;
}

uint64_t sub_1A982262C(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A982264C, 0, 0);
}

uint64_t sub_1A982264C()
{
  v1 = v0[19];
  v2 = *(v0[20] + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin);
  v0[21] = v2;
  swift_unknownObjectRetain();
  if (v1)
  {
    v1 = sub_1A9976AB0();
  }

  v0[22] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1A98227AC;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29A8, &unk_1A99982D8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1A98229A8;
  v0[13] = &block_descriptor_100;
  v0[14] = v3;
  [v2 localizedInfoDictionaryForKeys:v1 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A98227AC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_1A982292C;
  }

  else
  {
    v3 = sub_1A98228BC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A98228BC()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[18];
  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1A982292C()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  swift_willThrow();
  swift_unknownObjectRelease();

  v4 = v0[1];
  v5 = v0[23];

  return v4();
}

uint64_t sub_1A98229A8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    if (a2)
    {
      v9 = sub_1A9976700();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1A9822C2C(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    v6 = sub_1A9976AC0();
  }

  else
  {
    v6 = 0;
  }

  v3[4] = v6;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1A9822D0C;

  return sub_1A982262C(v6);
}

uint64_t sub_1A9822D0C(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 24);
  v9 = *(*v2 + 16);
  v10 = *v2;

  if (v3)
  {
    if (v8)
    {
      v11 = *(v5 + 24);
      v12 = sub_1A9975F10();

      (v11)[2](v11, 0, v12);
      _Block_release(v11);
    }

    else
    {
    }
  }

  else if (v8)
  {
    if (a1)
    {
      v13 = sub_1A99766E0();
    }

    else
    {
      v13 = 0;
    }

    v14 = *(v5 + 24);
    (v14)[2](v14, v13, 0);
    _Block_release(v14);
  }

  else
  {
  }

  v15 = *(v10 + 8);

  return v15();
}

id sub_1A9822F28(uint64_t a1, void *a2)
{
  v3 = a2;
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = *(v2 + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin);
  if (a2)
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29A0, &qword_1A99982D0);
    v3 = sub_1A99766E0();
  }

  else
  {
    swift_unknownObjectRetain();
  }

  v10[0] = 0;
  v6 = [v5 beginUsingRequest:a1 withSubsystemOptions:v3 error:v10];
  swift_unknownObjectRelease();

  if (v6)
  {
    result = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1A9975F20();

    result = swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A9823134(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A9823158, 0, 0);
}

uint64_t sub_1A9823158()
{
  v1 = v0[19];
  v2 = *(v0[20] + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin);
  v0[21] = v2;
  swift_unknownObjectRetain();
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29A0, &qword_1A99982D0);
    v1 = sub_1A99766E0();
  }

  v0[22] = v1;
  v3 = v0[18];
  v0[2] = v0;
  v0[3] = sub_1A98232D8;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2930, qword_1A9995E18);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1A982152C;
  v0[13] = &block_descriptor_96;
  v0[14] = v4;
  [v2 beginUsingRequest:v3 withSubsystemOptions:v1 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A98232D8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_1A982292C;
  }

  else
  {
    v3 = sub_1A98233E8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A98233E8()
{
  v1 = v0[21];
  v2 = v0[22];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A98235E4(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29A0, &qword_1A99982D0);
    a2 = sub_1A9976700();
  }

  v4[5] = a2;
  swift_unknownObjectRetain();
  a4;
  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = sub_1A98236F0;

  return sub_1A9823134(a1, a2);
}

uint64_t sub_1A98236F0()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  swift_unknownObjectRelease();

  if (v0)
  {
    if (v5)
    {
      v9 = *(v2 + 32);
      v10 = sub_1A9975F10();

      (v9)[2](v9, v10);
      _Block_release(v9);
    }

    else
    {
    }
  }

  else if (v5)
  {
    v11 = *(v2 + 32);
    v11[2](v11, 0);
    _Block_release(v11);
  }

  v12 = *(v8 + 8);

  return v12();
}

id sub_1A98238CC(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  result = sub_1A9824594(a1, &selRef_beginUsingRequest_error_);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A9823938(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A9823958, 0, 0);
}

uint64_t sub_1A9823958()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v5 = v0 + 18;
  v4 = v0[18];
  v1[20] = *(v5[1] + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin);
  v1[2] = v2;
  v1[3] = sub_1A9823A90;
  v6 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2930, qword_1A9995E18);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1A982152C;
  v1[13] = &block_descriptor_92;
  v1[14] = v6;
  [swift_unknownObjectRetain() beginUsingRequest:v4 completion:v1 + 10];

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1A9823A90()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_1A982B464;
  }

  else
  {
    v3 = sub_1A982B4C8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A9823D2C(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1A982B468;

  return sub_1A9823938(a1);
}

uint64_t sub_1A9823DF0(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A9823E10, 0, 0);
}

uint64_t sub_1A9823E10()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v5 = v0 + 18;
  v4 = v0[18];
  v1[20] = *(v5[1] + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin);
  v1[2] = v2;
  v1[3] = sub_1A9823F48;
  v6 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2930, qword_1A9995E18);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1A982152C;
  v1[13] = &block_descriptor_88;
  v1[14] = v6;
  [swift_unknownObjectRetain() endUsingRequest:v4 completion:v1 + 10];

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1A9823F48()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_1A98240BC;
  }

  else
  {
    v3 = sub_1A9824058;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A9824058()
{
  v1 = *(v0 + 160);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A98240BC()
{
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();
  swift_unknownObjectRelease();
  v3 = v0[1];
  v4 = v0[21];

  return v3();
}

uint64_t sub_1A98242BC(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1A9824380;

  return sub_1A9823DF0(a1);
}

uint64_t sub_1A9824380()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  swift_unknownObjectRelease();

  if (v0)
  {
    if (v4)
    {
      v8 = *(v2 + 32);
      v9 = sub_1A9975F10();

      (v8)[2](v8, v9);
      _Block_release(v8);
    }

    else
    {
    }
  }

  else if (v4)
  {
    v10 = *(v2 + 32);
    v10[2](v10, 0);
    _Block_release(v10);
  }

  v11 = *(v7 + 8);

  return v11();
}

id sub_1A9824540(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  result = sub_1A9824594(a1, &selRef_endUsingRequest_error_);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1A9824594(uint64_t a1, SEL *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = *(v2 + OBJC_IVAR____TtC7SharingP33_92E8A60AEC1CE4A2A2DCBDADFB6E580C18SFSupersededPlugin__innerPlugin);
  v8[0] = 0;
  if ([v4 *a2])
  {
    result = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_1A9975F20();

    result = swift_willThrow();
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A982465C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  swift_unknownObjectRetain();
  v8 = a1;
  a5(a3);

  swift_unknownObjectRelease();
  return 1;
}

id sub_1A98247A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFSupersededPlugin();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A9824824(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

id sub_1A98248D0(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1A99767E0();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 requireValid:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_1A9975F20();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_1A98249D4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1A9824A04(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1A9977460();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB3B2B30, qword_1A9998490);
  v43 = a2;
  result = sub_1A99774A0();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v47 = v6;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    v42 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v45 = *(v7 + 72);
      v28 = v27 + v45 * v26;
      if (v43)
      {
        (*v44)(v46, v28, v47);
        sub_1A967C4DC((*(v11 + 56) + 32 * v26), v48);
      }

      else
      {
        (*v40)(v46, v28, v47);
        sub_1A97AF7EC(*(v11 + 56) + 32 * v26, v48);
      }

      v29 = *(v14 + 40);
      result = sub_1A9976730();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v41;
        v11 = v42;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v41;
      v11 = v42;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v44)((*(v14 + 48) + v45 * v22), v46, v47);
      result = sub_1A967C4DC(v48, (*(v14 + 56) + 32 * v22));
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_1A9824DCC(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = sub_1A99762C0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v46 = a2;
  result = sub_1A99774A0();
  v18 = result;
  if (*(v15 + 16))
  {
    v50 = v14;
    v51 = v10;
    v42 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v43 = (v11 + 16);
    v44 = v11;
    v47 = (v11 + 32);
    v25 = result + 64;
    v45 = v15;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v49 = *(v11 + 72);
      v32 = v31 + v49 * v30;
      if (v46)
      {
        (*v47)(v50, v32, v51);
        v48 = *(*(v15 + 56) + 16 * v30);
      }

      else
      {
        (*v43)(v50, v32, v51);
        v48 = *(*(v15 + 56) + 16 * v30);
      }

      v33 = *(v18 + 40);
      sub_1A982B3C8(&unk_1EB3ACFB0, MEMORY[0x1E69695A8]);
      result = sub_1A9976730();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v11 = v44;
        v15 = v45;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v11 = v44;
      v15 = v45;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v47)(*(v18 + 48) + v49 * v26, v50, v51);
      *(*(v18 + 56) + 16 * v26) = v48;
      ++*(v18 + 16);
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v7 = v42;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v42;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

uint64_t sub_1A98251A4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1A99762C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1750, &qword_1A9992928);
  v43 = a2;
  result = sub_1A99774A0();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_1A982B3C8(&unk_1EB3ACFB0, MEMORY[0x1E69695A8]);
      result = sub_1A9976730();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_1A9825580(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2B18, &qword_1A9998478);
  v39 = a2;
  result = sub_1A99774A0();
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
      sub_1A9977980();
      sub_1A99768D0();
      result = sub_1A99779B0();
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

uint64_t sub_1A9825824(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1A99762C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2B20, &unk_1A9998480);
  v48 = a2;
  result = sub_1A99774A0();
  v14 = result;
  if (*(v11 + 16))
  {
    v53 = v10;
    v44 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v45 = (v7 + 16);
    v46 = v11;
    v47 = v7;
    v49 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v28 = v25 | (v15 << 6);
      v29 = *(v11 + 48);
      v52 = *(v47 + 72);
      v30 = v29 + v52 * v28;
      if (v48)
      {
        (*v49)(v53, v30, v6);
        v31 = (*(v11 + 56) + 16 * v28);
        v32 = *v31;
        v50 = v31[1];
        v51 = v32;
      }

      else
      {
        (*v45)(v53, v30, v6);
        v33 = (*(v11 + 56) + 16 * v28);
        v34 = *v33;
        v50 = v33[1];
        v51 = v34;
      }

      v35 = *(v14 + 40);
      sub_1A982B3C8(&unk_1EB3ACFB0, MEMORY[0x1E69695A8]);
      result = sub_1A9976730();
      v36 = -1 << *(v14 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v21 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v21 + 8 * v38);
          if (v42 != -1)
          {
            v22 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v37) & ~*(v21 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v49)(*(v14 + 48) + v52 * v22, v53, v6);
      v23 = (*(v14 + 56) + 16 * v22);
      v24 = v50;
      *v23 = v51;
      v23[1] = v24;
      ++*(v14 + 16);
      v11 = v46;
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v27 = v16[v15];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v19 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v43 = 1 << *(v11 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v16, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v43;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_1A9825C0C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1618, &qword_1A99927C8);
  result = sub_1A99774A0();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_1A967C4DC((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_1A97C1030(v24, &v38);
        sub_1A97AF7EC(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_1A9977230();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_1A967C4DC(v37, (*(v8 + 56) + 32 * v16));
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
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1A9825EC4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AF0, &qword_1A9992850);
  v38 = a2;
  result = sub_1A99774A0();
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

        swift_unknownObjectRetain();
      }

      v27 = *(v8 + 40);
      sub_1A9977980();
      sub_1A99768D0();
      result = sub_1A99779B0();
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

uint64_t sub_1A9826194(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = sub_1A99763B0();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A99762C0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1680, &unk_1A9992830);
  v52 = a2;
  result = sub_1A99774A0();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_1A982B3C8(&unk_1EB3ACFB0, MEMORY[0x1E69695A8]);
      result = sub_1A9976730();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_1A982663C(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v54 = a3(0);
  v11 = *(v54 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v46 - v13;
  v14 = *v8;
  if (*(*v8 + 24) > a1)
  {
    v15 = *(*v8 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v51 = a2;
  result = sub_1A99774A0();
  v17 = result;
  if (*(v14 + 16))
  {
    v18 = 0;
    v19 = (v14 + 64);
    v20 = 1 << *(v14 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v14 + 64);
    v23 = (v20 + 63) >> 6;
    v47 = v8;
    v48 = (v11 + 16);
    v49 = v14;
    v50 = v11;
    v52 = (v11 + 32);
    v24 = result + 64;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v18 << 6);
      v31 = *(v14 + 56);
      v32 = (*(v14 + 48) + 16 * v30);
      v34 = *v32;
      v33 = v32[1];
      v35 = *(v50 + 72);
      v36 = v31 + v35 * v30;
      if (v51)
      {
        (*v52)(v53, v36, v54);
      }

      else
      {
        (*v48)(v53, v36, v54);
      }

      v37 = *(v17 + 40);
      sub_1A9977980();
      sub_1A99768D0();
      result = sub_1A99779B0();
      v38 = -1 << *(v17 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v24 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v24 + 8 * v40);
          if (v44 != -1)
          {
            v25 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v25 = __clz(__rbit64((-1 << v39) & ~*(v24 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v26 = (*(v17 + 48) + 16 * v25);
      *v26 = v34;
      v26[1] = v33;
      result = (*v52)(*(v17 + 56) + v35 * v25, v53, v54);
      ++*(v17 + 16);
      v14 = v49;
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v18 >= v23)
      {
        break;
      }

      v29 = v19[v18];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v51 & 1) == 0)
    {

      v8 = v47;
      goto LABEL_36;
    }

    v45 = 1 << *(v14 + 32);
    v8 = v47;
    if (v45 >= 64)
    {
      bzero(v19, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v45;
    }

    *(v14 + 16) = 0;
  }

LABEL_36:
  *v8 = v17;
  return result;
}

uint64_t sub_1A98269C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1640, &qword_1A99927F0);
  v37 = a2;
  result = sub_1A99774A0();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      if ((v37 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1A9977980();
      sub_1A99768D0();
      result = sub_1A99779B0();
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

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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