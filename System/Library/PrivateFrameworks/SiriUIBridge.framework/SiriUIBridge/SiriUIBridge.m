id SUIBUIBridgeClient.init(delegate:delegateQueue:)(uint64_t a1, void *a2)
{
  v3 = v2;
  *&v3[OBJC_IVAR___SUIBUIBridgeClient_connection] = 0;
  v5 = OBJC_IVAR___SUIBUIBridgeClient_delegateWrapper;
  *&v3[OBJC_IVAR___SUIBUIBridgeClient_delegateWrapper] = 0;
  objc_allocWithZone(type metadata accessor for UIBridgeServiceDelegateWrapper());
  v6 = a2;
  swift_unknownObjectRetain();
  v7 = sub_222DEFB8C();
  v8 = *&v3[v5];
  *&v3[v5] = v7;
  swift_unknownObjectRelease();
  v11.receiver = v3;
  v11.super_class = SUIBUIBridgeClient;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  swift_unknownObjectRelease();

  return v9;
}

{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDelegate:a1 delegateQueue:a2];
  swift_unknownObjectRelease();

  return v3;
}

id sub_222DEFB8C()
{
  OUTLINED_FUNCTION_6_0();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *&v1[OBJC_IVAR____TtC12SiriUIBridge30UIBridgeServiceDelegateWrapper_delegateQueue] = v0;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for UIBridgeServiceDelegateWrapper();
  v2 = objc_msgSendSuper2(&v4, sel_init);
  swift_unknownObjectRelease();
  return v2;
}

void *sub_222DEFC58()
{
  v1 = v0;
  v2 = OBJC_IVAR___SUIBUIBridgeClient_connection;
  if (!*(v0 + OBJC_IVAR___SUIBUIBridgeClient_connection))
  {
    sub_222DF0678(0, &unk_280F92B40, 0x277CCAE80);
    v3 = sub_222DF06B8(0xD000000000000024, 0x8000000222E0BCD0, 0);
    v4 = *(v0 + v2);
    *(v0 + v2) = v3;

    v5 = objc_opt_self();
    v6 = [v5 interfaceWithProtocol_];
    sub_222DF0678(0, &unk_280F92AF8, 0x277CBEB98);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04CD40, &qword_222E0B318);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_222E0B2F0;
    v8 = sub_222DF0678(0, &unk_280F92AE8, 0x277CBEA60);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04CD50, &qword_222E0B320);
    *(v7 + 56) = v9;
    *(v7 + 32) = v8;
    v10 = sub_222DF0678(0, &unk_280F92B08, off_2784BFAA0);
    *(v7 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04CD60, &qword_222E0B328);
    *(v7 + 64) = v10;
    v11 = sub_222DF0734();
    aBlock = 0;
    sub_222E09950();

    v12 = *(v0 + v2);
    if (v12)
    {
      [v12 setRemoteObjectInterface_];
    }

    v13 = [v5 interfaceWithProtocol_];
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_222E0B2F0;
    *(v14 + 56) = v9;
    *(v14 + 32) = v8;
    v15 = sub_222DF0678(0, &qword_280F92DC8, off_2784BFA58);
    *(v14 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04CD70, &qword_222E0B330);
    *(v14 + 64) = v15;
    v16 = sub_222DF0734();
    sub_222E09950();

    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_222E0B2F0;
    *(v17 + 56) = v9;
    *(v17 + 32) = v8;
    v18 = sub_222DF0678(0, &qword_280F92B38, off_2784BFA90);
    *(v17 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04CD80, &qword_222E0B338);
    *(v17 + 64) = v18;
    v19 = sub_222DF0734();
    sub_222E09950();

    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_222E0B2F0;
    *(v20 + 56) = v9;
    *(v20 + 32) = v8;
    v21 = sub_222DF0678(0, &unk_280F92B18, off_2784BFA70);
    *(v20 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04CD90, &qword_222E0B340);
    *(v20 + 64) = v21;
    v22 = sub_222DF0734();
    aBlock = 0;
    sub_222E09950();

    v23 = *(v1 + v2);
    if (v23)
    {
      [v23 setExportedInterface_];
      v24 = *(v1 + v2);
      if (v24)
      {
        [v24 setExportedObject_];
        v25 = *(v1 + v2);
        if (v25)
        {
          v26 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v43 = sub_222DFA4AC;
          v44 = v26;
          aBlock = MEMORY[0x277D85DD0];
          v40 = 1107296256;
          v41 = sub_222DF198C;
          v42 = &block_descriptor;
          v27 = _Block_copy(&aBlock);
          v28 = v25;

          [v28 setInvalidationHandler_];
          _Block_release(v27);

          v29 = *(v1 + v2);
          if (v29)
          {
            v30 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v43 = sub_222DFA4B4;
            v44 = v30;
            aBlock = MEMORY[0x277D85DD0];
            v40 = 1107296256;
            v41 = sub_222DF198C;
            v42 = &block_descriptor_6;
            v31 = _Block_copy(&aBlock);
            v32 = v29;

            [v32 setInterruptionHandler_];
            _Block_release(v31);

            v33 = *(v1 + v2);
            if (v33)
            {
              v34 = v33;
              [v34 resume];
            }
          }
        }
      }
    }
  }

  v35 = *(v1 + v2);
  v36 = v35;
  return v35;
}

uint64_t sub_222DF0334()
{
  MEMORY[0x223DCFEF0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222DF036C()
{
  v1 = sub_222DEFC58();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 remoteObjectProxy];

    sub_222E09A20();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04CD38, &qword_222E0B310);
    if (swift_dynamicCast())
    {
      return v14;
    }
  }

  if (qword_280F92DF0 != -1)
  {
    swift_once();
  }

  v5 = sub_222E09830();
  __swift_project_value_buffer(v5, qword_280F92E48);
  v6 = v0;
  v7 = sub_222E09820();
  v8 = sub_222E09980();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    v11 = sub_222DEFC58();
    if (v11)
    {
      v12 = v11;
      v13 = [v11 remoteObjectProxy];

      sub_222E09A20();
      swift_unknownObjectRelease();
    }

    else
    {
      memset(v15, 0, sizeof(v15));
    }

    sub_222DFA44C(v15, &qword_27D04CD30, &unk_222E0B390);
    *(v9 + 4) = sub_222DF164C(0x6C616E6F6974704FLL, 0xED00003E796E413CLL, &v14);
    _os_log_impl(&dword_222DEE000, v7, v8, "Unexpected remoteObjectProxy type for UIBridge connection %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x223DCFE70](v10, -1, -1);
    MEMORY[0x223DCFE70](v9, -1, -1);
  }

  return 0;
}

uint64_t OUTLINED_FUNCTION_1()
{

  return swift_once();
}

id OUTLINED_FUNCTION_4(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void *sub_222DF0618(SEL *a1)
{
  result = sub_222DF036C();
  if (result)
  {
    [result *a1];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_222DF0678(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

id sub_222DF06B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_222E098B0();

  v6 = [v4 initWithMachServiceName:v5 options:a3];

  return v6;
}

id sub_222DF0734()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_222E09910();

  v2 = [v0 initWithArray_];

  return v2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

void OUTLINED_FUNCTION_3()
{

  JUMPOUT(0x223DCFE70);
}

uint64_t OUTLINED_FUNCTION_3_0()
{

  return swift_beginAccess();
}

uint64_t sub_222DF09A4(int a1, id a2)
{
  v3 = a2;
  v4 = [a2 processIdentifier];
  if (qword_280F92DF0 != -1)
  {
    OUTLINED_FUNCTION_1();
  }

  v5 = sub_222E09830();
  __swift_project_value_buffer(v5, qword_280F92E48);
  v6 = v2;
  v7 = sub_222E09820();
  v8 = sub_222E09970();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v39 = v10;
    *v9 = 67109378;
    *(v9 + 4) = v4;
    *(v9 + 8) = 2080;
    v11 = &v6[OBJC_IVAR____TtC12SiriUIBridge26UIBridgeConnectionListener_machServiceName];
    v12 = v6;
    v13 = v3;
    v14 = v4;
    v15 = *v11;
    v16 = v11[1];

    v17 = sub_222DF164C(v15, v16, &v39);

    *(v9 + 10) = v17;
    v4 = v14;
    v3 = v13;
    v6 = v12;
    _os_log_impl(&dword_222DEE000, v7, v8, "Incoming connection request from %d for %s", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_3();
  }

  v18 = *&v6[OBJC_IVAR____TtC12SiriUIBridge26UIBridgeConnectionListener_machServiceName];
  v19 = *&v6[OBJC_IVAR____TtC12SiriUIBridge26UIBridgeConnectionListener_machServiceName + 8];

  v20 = sub_222E098B0();

  v21 = [v3 valueForEntitlement_];

  if (v21)
  {
    sub_222E09A20();
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
  }

  v39 = v44;
  v40 = v45;
  if (*(&v45 + 1))
  {
    if (swift_dynamicCast() && (v43 & 1) != 0)
    {
      [v3 _setQueue_];
      v22 = objc_opt_self();
      v23 = [v22 interfaceWithProtocol_];
      OUTLINED_FUNCTION_4(v23, sel_setExportedInterface_);

      Strong = swift_unknownObjectWeakLoadStrong();
      OUTLINED_FUNCTION_4(Strong, sel_setExportedObject_);

      v25 = [v22 interfaceWithProtocol_];
      OUTLINED_FUNCTION_4(v25, sel_setRemoteObjectInterface_);

      OUTLINED_FUNCTION_2();
      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v27 = swift_allocObject();
      *(v27 + 16) = v4;
      *(v27 + 24) = v26;
      v41 = sub_222DFAC9C;
      v42 = v27;
      *&v39 = MEMORY[0x277D85DD0];
      *(&v39 + 1) = 1107296256;
      *&v40 = sub_222DF198C;
      *(&v40 + 1) = &block_descriptor_0;
      v28 = _Block_copy(&v39);

      [v3 setInvalidationHandler_];
      _Block_release(v28);
      OUTLINED_FUNCTION_2();
      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = swift_allocObject();
      *(v30 + 16) = v4;
      *(v30 + 24) = v29;
      v41 = sub_222DFACA8;
      v42 = v30;
      *&v39 = MEMORY[0x277D85DD0];
      *(&v39 + 1) = 1107296256;
      *&v40 = sub_222DF198C;
      *(&v40 + 1) = &block_descriptor_27;
      v31 = _Block_copy(&v39);

      OUTLINED_FUNCTION_4(v32, sel_setInterruptionHandler_);
      _Block_release(v31);
      v33 = *&v6[OBJC_IVAR____TtC12SiriUIBridge26UIBridgeConnectionListener_connection];
      *&v6[OBJC_IVAR____TtC12SiriUIBridge26UIBridgeConnectionListener_connection] = v3;
      v34 = v3;

      [v34 resume];
      return 1;
    }
  }

  else
  {
    sub_222DFAC34(&v39);
  }

  v36 = sub_222E09820();
  v37 = sub_222E09980();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_222DEE000, v36, v37, "Entitlement missing on incoming connection request", v38, 2u);
    OUTLINED_FUNCTION_3();
  }

  return 0;
}

uint64_t sub_222DF0EB4()
{
  MEMORY[0x223DCFEF0](v0 + 16);
  v1 = OUTLINED_FUNCTION_2();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_222DF0EE4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_222DF0F6C(const char *a1)
{
  if (qword_280F92DF0 != -1)
  {
    OUTLINED_FUNCTION_1();
  }

  v2 = sub_222E09830();
  OUTLINED_FUNCTION_29(v2, qword_280F92E48);
  oslog = sub_222E09820();
  v3 = sub_222E09970();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = OUTLINED_FUNCTION_33();
    *v4 = 0;
    _os_log_impl(&dword_222DEE000, oslog, v3, a1, v4, 2u);
    OUTLINED_FUNCTION_3();
  }
}

uint64_t sub_222DF10C4()
{
  v1 = OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_19_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t sub_222DF1154(void *a1, const char *a2, uint64_t (*a3)(id))
{
  v28 = a2;
  v29 = a3;
  v4 = v3;
  v6 = sub_222E09190();
  v7 = OUTLINED_FUNCTION_1_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F92DF0 != -1)
  {
    OUTLINED_FUNCTION_1();
  }

  v14 = sub_222E09830();
  __swift_project_value_buffer(v14, qword_280F92E48);
  v15 = a1;
  v16 = sub_222E09820();
  v17 = sub_222E09970();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = v6;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30 = v20;
    *v19 = 136315138;
    sub_222E09690();
    sub_222DF13B0();
    v21 = sub_222E09AC0();
    v27 = v4;
    v23 = v22;
    (*(v9 + 8))(v13, v18);
    v24 = sub_222DF164C(v21, v23, &v30);
    v4 = v27;

    *(v19 + 4) = v24;
    _os_log_impl(&dword_222DEE000, v16, v17, v28, v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x223DCFE70](v20, -1, -1);
    MEMORY[0x223DCFE70](v19, -1, -1);
  }

  v25 = *(v4 + qword_280F92DA8);
  return v29(v15);
}

unint64_t sub_222DF13B0()
{
  result = qword_280F92DB0;
  if (!qword_280F92DB0)
  {
    sub_222E09190();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F92DB0);
  }

  return result;
}

void sub_222DF1408()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_222E09850();
  v8 = OUTLINED_FUNCTION_1_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_26();
  v27 = sub_222E09880();
  v11 = OUTLINED_FUNCTION_1_1(v27);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_25();
  v26 = *&v0[OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_queue];
  OUTLINED_FUNCTION_31();
  v14 = swift_allocObject();
  *(v14 + 16) = v0;
  *(v14 + 24) = v6;
  v28[4] = v4;
  v28[5] = v14;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_0(COERCE_DOUBLE(1107296256));
  v28[2] = v15;
  v28[3] = v2;
  v16 = _Block_copy(v28);
  v17 = v0;
  v18 = v6;
  sub_222E09860();
  OUTLINED_FUNCTION_6();
  sub_222DF1890(v19, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04CEB0, &unk_222E0B540);
  sub_222DF1920(&qword_280F92DD8, &unk_27D04CEB0, &unk_222E0B540);
  OUTLINED_FUNCTION_9();
  sub_222E09A30();
  v21 = OUTLINED_FUNCTION_17();
  MEMORY[0x223DCF860](v21);
  _Block_release(v16);
  v22 = OUTLINED_FUNCTION_13();
  v23(v22);
  v24 = OUTLINED_FUNCTION_30();
  v25(v24);

  OUTLINED_FUNCTION_20();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_222DF164C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_222DF1710(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_222DF1810(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_222DF1710(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_222DFA018(a5, a6);
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
    result = sub_222E09A50();
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

uint64_t sub_222DF1810(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_222DF1890(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_222DF18D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_222DF1920(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t OUTLINED_FUNCTION_33()
{

  return swift_slowAlloc();
}

uint64_t sub_222DF198C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_222DF19D0()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v35 = v2;
  v33 = v3;
  v34 = v4;
  v31 = v5;
  v32 = v6;
  v30 = v7;
  v29 = sub_222E099A0();
  v8 = OUTLINED_FUNCTION_1_1(v29);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v15 = v14 - v13;
  v16 = sub_222E09990();
  v17 = OUTLINED_FUNCTION_10(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v20 = sub_222E09880();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_25();
  v22 = (v0 + OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_promptRequestId);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v0 + OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_requestId);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v0 + OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_rootRequestId);
  sub_222DF1FCC();
  *v24 = 0;
  v24[1] = 0;
  sub_222E09870();
  sub_222DF18D8(&qword_280F92B30, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04CE98, &unk_222E0B560);
  sub_222DF1920(&qword_280F92B60, &qword_27D04CE98, &unk_222E0B560);
  sub_222E09A30();
  (*(v10 + 104))(v15, *MEMORY[0x277D85260], v29);
  *(v0 + 16) = sub_222E099C0();
  v25 = OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_sessionId;
  v26 = sub_222E09190();
  OUTLINED_FUNCTION_10(v26);
  (*(v27 + 32))(v1 + v25, v30);
  v28 = (v1 + OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_assistantId);
  *v28 = v31;
  v28[1] = v32;
  sub_222DF1D34(v33, v1 + OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_messagePublisher);
  swift_unknownObjectUnownedInit();

  *(v1 + OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_isSystemAssistantExperienceEnabled) = v35;
  OUTLINED_FUNCTION_20();
}

uint64_t type metadata accessor for UISessionProcessor()
{
  result = qword_280F92D60;
  if (!qword_280F92D60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void OUTLINED_FUNCTION_11_0(void *a1)
{

  _os_log_impl(a1, v2, v3, v1, v4, 2u);
}

uint64_t sub_222DF1D34(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t OUTLINED_FUNCTION_5_0()
{

  return swift_unknownObjectWeakInit();
}

uint64_t sub_222DF1E60(void *a1)
{
  v2 = sub_222E09190();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_222E09690();
  sub_222E096B0();
  sub_222DF1F68(a1 + OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_messagePublisher, v11);
  AFDeviceSupportsSAE();
  v4 = type metadata accessor for UISessionProcessor();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = a1;
  sub_222DF19D0();
  v8 = *&v7[OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_uiSessionProcessor];
  *&v7[OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_uiSessionProcessor] = v9;
}

uint64_t sub_222DF1F68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_222DF1FCC()
{
  result = qword_280F92B28;
  if (!qword_280F92B28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F92B28);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_0()
{

  return sub_222E09880();
}

void sub_222DF2148(uint64_t a1, void *a2, void (*a3)(void *))
{
  v6 = sub_222E09190();
  v7 = OUTLINED_FUNCTION_1_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  if (*(a1 + OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_uiSessionProcessor))
  {

    a3(a2);
  }

  else
  {
    if (qword_280F92DF0 != -1)
    {
      OUTLINED_FUNCTION_1();
    }

    v12 = sub_222E09830();
    __swift_project_value_buffer(v12, qword_280F92E48);
    v13 = a2;
    v26 = sub_222E09820();
    v14 = sub_222E09970();

    if (os_log_type_enabled(v26, v14))
    {
      v15 = OUTLINED_FUNCTION_28();
      v16 = OUTLINED_FUNCTION_37();
      v27 = v16;
      *v15 = 136315138;
      sub_222E09690();
      OUTLINED_FUNCTION_12();
      sub_222DF1890(v17, v18);
      v19 = sub_222E09AC0();
      v21 = v20;
      v22 = *(v9 + 8);
      v23 = OUTLINED_FUNCTION_39();
      v24(v23);
      v25 = sub_222DF164C(v19, v21, &v27);

      *(v15 + 4) = v25;
      _os_log_impl(&dword_222DEE000, v26, v14, "SessionHandler not found for session:%s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_3();
    }

    else
    {
    }
  }
}

void sub_222DF23F4()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v5 = v4;
  v6 = v0;
  v8 = v7;
  v9 = sub_222E09850();
  v10 = OUTLINED_FUNCTION_1_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v31 = OUTLINED_FUNCTION_9_0();
  v15 = OUTLINED_FUNCTION_1_1(v31);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_25();
  v30 = *(v6 + 16);
  v20 = swift_allocObject();
  *(v20 + 16) = v6;
  *(v20 + 24) = v8;
  v32[4] = v5;
  v32[5] = v20;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_0(COERCE_DOUBLE(1107296256));
  v32[2] = v21;
  v32[3] = v3;
  v22 = _Block_copy(v32);

  v23 = v8;
  sub_222E09860();
  OUTLINED_FUNCTION_3_1();
  sub_222DF18D8(v24, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04CEB0, &unk_222E0B540);
  sub_222DF1920(&qword_280F92DD8, &unk_27D04CEB0, &unk_222E0B540);
  OUTLINED_FUNCTION_9();
  sub_222E09A30();
  v26 = OUTLINED_FUNCTION_17();
  MEMORY[0x223DCF860](v26);
  _Block_release(v22);
  v27 = *(v12 + 8);
  v28 = OUTLINED_FUNCTION_16_0();
  v29(v28);
  (*(v17 + 8))(v1, v31);

  OUTLINED_FUNCTION_20();
}

void sub_222DF2618()
{
  v2 = OUTLINED_FUNCTION_13_0();
  v3 = OUTLINED_FUNCTION_1_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  sub_222E09690();
  v11 = sub_222E09160();
  (*(v5 + 8))(v10, v2);
  if (v11)
  {
    v12 = sub_222E09650();
    v13 = (v1 + *v0);
    v14 = v13[1];
    *v13 = v12;
    v13[1] = v15;
  }

  else
  {
    if (qword_280F92DF0 != -1)
    {
      OUTLINED_FUNCTION_1();
    }

    v16 = sub_222E09830();
    __swift_project_value_buffer(v16, qword_280F92E48);
    v17 = sub_222E09820();
    v18 = sub_222E09970();
    if (os_log_type_enabled(v17, v18))
    {
      *OUTLINED_FUNCTION_33() = 0;
      OUTLINED_FUNCTION_11_0(&dword_222DEE000);
      OUTLINED_FUNCTION_3();
    }
  }
}

void sub_222DF2788()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_222DF2618();
}

uint64_t OUTLINED_FUNCTION_13_0()
{

  return sub_222E09190();
}

void sub_222DF2814()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v4 = sub_222E09850();
  v5 = OUTLINED_FUNCTION_1_1(v4);
  v33 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v9 = OUTLINED_FUNCTION_9_0();
  v10 = OUTLINED_FUNCTION_1_1(v9);
  v31 = v11;
  v32 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_25();
  v14 = sub_222E09750();
  v15 = OUTLINED_FUNCTION_1_1(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v30[1] = *(v0 + 16);
  (*(v17 + 16))(v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v14);
  v20 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v0;
  (*(v17 + 32))(v21 + v20, v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  v35[4] = sub_222DF327C;
  v35[5] = v21;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_0(COERCE_DOUBLE(1107296256));
  v35[2] = v22;
  v35[3] = &block_descriptor_126_0;
  v23 = _Block_copy(v35);

  sub_222E09860();
  v34 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_3_1();
  sub_222DF18D8(v24, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04CEB0, &unk_222E0B540);
  sub_222DF1920(&qword_280F92DD8, &unk_27D04CEB0, &unk_222E0B540);
  OUTLINED_FUNCTION_9();
  sub_222E09A30();
  v26 = OUTLINED_FUNCTION_17();
  MEMORY[0x223DCF860](v26);
  _Block_release(v23);
  v27 = *(v33 + 8);
  v28 = OUTLINED_FUNCTION_16_0();
  v29(v28);
  (*(v31 + 8))(v1, v32);

  OUTLINED_FUNCTION_20();
}

uint64_t sub_222DF2AE8()
{
  v1 = sub_222E09750();
  OUTLINED_FUNCTION_1_1(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

void sub_222DF2BCC(uint64_t a1, void *a2)
{
  v4 = sub_222E09190();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_222E09750();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222DF2F48();
  v14 = OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_uiSessionProcessor;
  if (*(a1 + OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_uiSessionProcessor))
  {
    (*(v10 + 104))(v13, *MEMORY[0x277D5D128], v9);

    sub_222DF2814();

    (*(v10 + 8))(v13, v9);
    v15 = *(a1 + v14);
    *(a1 + v14) = 0;
  }

  else
  {
    if (qword_280F92DF0 != -1)
    {
      swift_once();
    }

    v16 = sub_222E09830();
    __swift_project_value_buffer(v16, qword_280F92E48);
    v17 = a2;
    v26 = sub_222E09820();
    v18 = sub_222E09970();

    if (os_log_type_enabled(v26, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = v20;
      *v19 = 136315138;
      sub_222E09690();
      sub_222DF1890(&qword_280F92DB0, MEMORY[0x277CC95F0]);
      v21 = sub_222E09AC0();
      v23 = v22;
      (*(v5 + 8))(v8, v4);
      v24 = sub_222DF164C(v21, v23, &v27);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_222DEE000, v26, v18, "SessionHandler not found for session:%s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x223DCFE70](v20, -1, -1);
      MEMORY[0x223DCFE70](v19, -1, -1);
    }

    else
    {
      v25 = v26;
    }
  }
}

void sub_222DF2F48()
{
  v1 = *(v0 + OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_uiBridgeListener);
  v9[4] = sub_222DF3514;
  v9[5] = 0;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_3();
  v9[2] = v2;
  v9[3] = &block_descriptor_114;
  v3 = _Block_copy(v9);
  OUTLINED_FUNCTION_50(v3, sel_notifyClientWithBlock_);
  _Block_release(v3);
  v4 = *(v0 + OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_uiBridgeConnectionListener);
  if (v4)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_52();

    if (v6)
    {
      if ([v6 respondsToSelector_])
      {
        v7 = OUTLINED_FUNCTION_34();
        [v7 v8];
      }

      swift_unknownObjectRelease();
    }
  }
}

uint64_t OUTLINED_FUNCTION_45()
{

  return sub_222E09850();
}

uint64_t OUTLINED_FUNCTION_43(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t sub_222DF3068()
{
  v1 = OBJC_IVAR____TtC12SiriUIBridge26UIBridgeConnectionListener_connection;
  v2 = *&v0[OBJC_IVAR____TtC12SiriUIBridge26UIBridgeConnectionListener_connection];
  if (v2)
  {
    v3 = v0;
    v4 = v2;
    v5 = [v4 remoteObjectProxy];
    sub_222E09A20();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04CE90, &qword_222E0B388);
    if (swift_dynamicCast())
    {

      return v15;
    }

    if (qword_280F92DF0 != -1)
    {
      OUTLINED_FUNCTION_1();
    }

    v7 = sub_222E09830();
    __swift_project_value_buffer(v7, qword_280F92E48);
    v8 = v0;
    v9 = sub_222E09820();
    v10 = sub_222E09980();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136315138;
      v13 = *&v3[v1];
      if (v13)
      {
        v14 = [v13 remoteObjectProxy];
        sub_222E09A20();
        swift_unknownObjectRelease();
      }

      else
      {
        memset(v16, 0, sizeof(v16));
      }

      sub_222DFAC34(v16);
      *(v11 + 4) = sub_222DF164C(0x6C616E6F6974704FLL, 0xED00003E796E413CLL, &v15);
      _os_log_impl(&dword_222DEE000, v9, v10, "Unexpected remoteObjectProxy type for UIBridgeServiceDelegateWrapperProtocol %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_3();
    }
  }

  return 0;
}

void sub_222DF327C()
{
  v1 = *(*(sub_222E09750() - 8) + 80);
  v2 = *(v0 + 16);

  sub_222DF35C0(v2);
}

uint64_t sub_222DF32E0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v6 = a2;
    sub_222E018EC(&v6, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  swift_unknownObjectRetain();
  v4(v8);

  return sub_222DF351C(v8, &qword_27D04CD30, &unk_222E0B390);
}

void sub_222DF337C(uint64_t a1)
{
  sub_222DF34C4(a1, v7, &qword_27D04CD30, &unk_222E0B390);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D070, &unk_222E0B440);
    if (OUTLINED_FUNCTION_47())
    {
      if ([v6 respondsToSelector_])
      {
        [v6 uiBridgeServiceDidStopAttendingUnexpectedlyWithReason_];
      }

      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    sub_222DF351C(v7, &qword_27D04CD30, &unk_222E0B390);
  }

  if (qword_280F92DF0 != -1)
  {
    OUTLINED_FUNCTION_1();
  }

  v1 = sub_222E09830();
  OUTLINED_FUNCTION_29(v1, qword_280F92E48);
  v2 = sub_222E09820();
  v3 = sub_222E09960();
  if (os_log_type_enabled(v2, v3))
  {
    *OUTLINED_FUNCTION_33() = 0;
    OUTLINED_FUNCTION_48(&dword_222DEE000, v4, v5, "Registered delegate is not of expected type, it should implement AFUIBridgeServiceDelegate");
    OUTLINED_FUNCTION_3();
  }
}

uint64_t sub_222DF34C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_43(a1, a2, a3, a4);
  OUTLINED_FUNCTION_10(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_222DF351C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_10(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_30()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 144);
  return result;
}

void sub_222DF35C0(uint64_t a1)
{
  v2 = objc_allocWithZone(sub_222E093D0());
  v3 = sub_222E09380();
  if (v3)
  {
    v4 = v3;
    if (qword_280F92DF0 != -1)
    {
      swift_once();
    }

    v5 = sub_222E09830();
    __swift_project_value_buffer(v5, qword_280F92E48);
    v6 = sub_222E09820();
    v7 = sub_222E09970();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_222DEE000, v6, v7, "Going to post StopAttendingRequestedMessage", v8, 2u);
      MEMORY[0x223DCFE70](v8, -1, -1);
    }

    v9 = *(a1 + OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_messagePublisher + 32);
    __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_messagePublisher), *(a1 + OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_messagePublisher + 24));
    sub_222E096A0();
  }

  else
  {
    if (qword_280F92DF0 != -1)
    {
      swift_once();
    }

    v10 = sub_222E09830();
    __swift_project_value_buffer(v10, qword_280F92E48);
    v4 = sub_222E09820();
    v11 = sub_222E09980();
    if (os_log_type_enabled(v4, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_222DEE000, v4, v11, "Could not create StopAttendingMessage", v12, 2u);
      MEMORY[0x223DCFE70](v12, -1, -1);
    }
  }
}

uint64_t sub_222DF37C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D0A0, &qword_222E0B558);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04CD10, &unk_222E0B480);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D090, &qword_222E0B538);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v25 - v15;
  v17 = *MEMORY[0x277D5CDD0];
  v18 = sub_222E096D0();
  (*(*(v18 - 8) + 104))(v16, v17, v18);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v18);
  sub_222E093B0();
  v19 = *(a2 + OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_assistantId);
  v20 = *(a2 + OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_assistantId + 8);

  sub_222E093A0();
  v21 = OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_sessionId;
  v22 = sub_222E09190();
  (*(*(v22 - 8) + 16))(v12, a2 + v21, v22);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v22);
  sub_222E093C0();
  v23 = sub_222E09750();
  (*(*(v23 - 8) + 16))(v8, a3, v23);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v23);
  return sub_222E09390();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_222DF3AB8()
{
  sub_222DF3B10();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222DF3B10()
{
  v1 = OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_sessionId;
  v2 = sub_222E09190();
  OUTLINED_FUNCTION_10(v2);
  (*(v3 + 8))(v0 + v1);
  OUTLINED_FUNCTION_19_0(OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_assistantId);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_messagePublisher));
  swift_unknownObjectUnownedDestroy();
  OUTLINED_FUNCTION_19_0(OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_promptRequestId);
  OUTLINED_FUNCTION_19_0(OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_requestId);
  OUTLINED_FUNCTION_19_0(OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_rootRequestId);
  return v0;
}

void sub_222DF3D74(uint64_t a1, void *a2, void (*a3)(void *))
{
  v5 = sub_222E09190();
  v6 = OUTLINED_FUNCTION_1_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  sub_222E09690();
  sub_222E09160();
  v9 = OUTLINED_FUNCTION_17_0();
  v10(v9);
  if (a2)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    a3(a2);
  }

  else
  {
    if (qword_280F92DF0 != -1)
    {
      OUTLINED_FUNCTION_1();
    }

    v12 = sub_222E09830();
    __swift_project_value_buffer(v12, qword_280F92E48);
    v13 = a2;
    Strong = sub_222E09820();
    v14 = sub_222E09970();

    if (os_log_type_enabled(Strong, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v13;
      *v16 = v13;
      v17 = v13;
      _os_log_impl(&dword_222DEE000, Strong, v14, "%@ does not belong to current session", v15, 0xCu);
      sub_222DF351C(v16, &qword_27D04D030, &qword_222E0B410);
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_3();
    }
  }
}

void sub_222DF3F64()
{
  OUTLINED_FUNCTION_21();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D028, &qword_222E0B408);
  v4 = OUTLINED_FUNCTION_41(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_25();
  v7 = sub_222E091E0();
  v8 = OUTLINED_FUNCTION_1_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v15 = v14 - v13;
  sub_222E091F0();
  if (__swift_getEnumTagSinglePayload(v1, 1, v7) != 1)
  {
    v16 = OUTLINED_FUNCTION_35();
    v18 = v17(v16);
    MEMORY[0x28223BE20](v18);
    OUTLINED_FUNCTION_8();
    *(v19 - 16) = v15;
    v20 = objc_allocWithZone(SUIBSiriInAppResponse);
    v21 = OUTLINED_FUNCTION_11();
    sub_222E00EB0(v21, v22);
    OUTLINED_FUNCTION_38();
    MEMORY[0x28223BE20](v23);
    OUTLINED_FUNCTION_8();
    *(v25 - 16) = v24;
    v26 = objc_allocWithZone(SUIBSiriResponse);
    v27 = OUTLINED_FUNCTION_11();
    v29 = sub_222E00FCC(v27, v28);
    if (qword_280F92DF0 != -1)
    {
      OUTLINED_FUNCTION_1();
    }

    v30 = sub_222E09830();
    __swift_project_value_buffer(v30, qword_280F92E48);
    v31 = v29;
    v32 = sub_222E09820();
    v33 = sub_222E09970();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = OUTLINED_FUNCTION_28();
      v35 = OUTLINED_FUNCTION_51();
      *v34 = 138412290;
      *(v34 + 4) = v31;
      *v35 = v31;
      v36 = v31;
      OUTLINED_FUNCTION_44(&dword_222DEE000, v37, v38, "Calling delegate's receivedSiriResponse with %@");
      sub_222DF351C(v35, &qword_27D04D030, &qword_222E0B410);
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_3();
    }

    v39 = *&v2[OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_uiBridgeConnectionListener];
    if (v39 && (v40 = v39, v41 = OUTLINED_FUNCTION_49(), v2, v41))
    {
      if (([v41 respondsToSelector_] & 1) == 0)
      {

        swift_unknownObjectRelease();
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_42(v31);
      swift_unknownObjectRelease();
    }

    else
    {
    }

LABEL_13:
    v42 = *(v10 + 8);
    v43 = OUTLINED_FUNCTION_39();
    v44(v43);
    goto LABEL_14;
  }

  sub_222DF351C(v1, &qword_27D04D028, &qword_222E0B408);
LABEL_14:
  OUTLINED_FUNCTION_20();
}

void sub_222DF4310(uint64_t a1, void *a2)
{
  v4 = sub_222E09190();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222E09690();
  v9 = sub_222E09160();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (*(a1 + OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_isSystemAssistantExperienceEnabled) == 1)
    {
      v10 = OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_rootRequestId;
    }

    else
    {
      v10 = OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_requestId;
    }

    v18 = (a1 + v10);
    v19 = v18[1];
    *v18 = 0;
    v18[1] = 0;
  }

  else
  {
    if (qword_280F92DF0 != -1)
    {
      swift_once();
    }

    v11 = sub_222E09830();
    __swift_project_value_buffer(v11, qword_280F92E48);
    v12 = a2;
    v13 = sub_222E09820();
    v14 = sub_222E09970();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v12;
      *v16 = v12;
      v17 = v12;
      _os_log_impl(&dword_222DEE000, v13, v14, "%@ does not belong to current session", v15, 0xCu);
      sub_222DF351C(v16, &qword_27D04D030, &qword_222E0B410);
      MEMORY[0x223DCFE70](v16, -1, -1);
      MEMORY[0x223DCFE70](v15, -1, -1);
    }
  }
}

void sub_222DF454C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_222DF2618();
}

uint64_t sub_222DF46AC()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_40();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_5_0();

  v0(v1, v3, v2);
}

uint64_t sub_222DF471C()
{
  MEMORY[0x223DCFEF0](v0 + 16);
  OUTLINED_FUNCTION_40();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_37()
{

  return swift_slowAlloc();
}

uint64_t sub_222DF47B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_222E09850();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_222E09880();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = *(a1 + OBJC_IVAR____TtC12SiriUIBridge30UIBridgeServiceDelegateWrapper_delegateQueue);
  if (v17)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = sub_222DF4CE8;
    *(v18 + 24) = v16;
    aBlock[4] = sub_222DF4D34;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_222DF198C;
    aBlock[3] = &block_descriptor_127;
    v19 = _Block_copy(aBlock);
    v27 = v11;
    v20 = v19;

    v21 = v17;

    sub_222E09860();
    v28 = MEMORY[0x277D84F90];
    sub_222DF4B98();
    v26[1] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04CEB0, &unk_222E0B540);
    sub_222DF4BF0();
    sub_222E09A30();
    MEMORY[0x223DCF860](0, v15, v10, v20);
    _Block_release(v20);

    (*(v7 + 8))(v10, v6);
    (*(v12 + 8))(v15, v27);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  v23 = Strong;
  v24 = swift_unknownObjectWeakLoadStrong();

  if (!v24)
  {
  }

  if ([v24 respondsToSelector_])
  {
    [v24 uiBridgeServiceDidStopAttendingUnexpectedlyWithReason_];
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_222DF4B30()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_222DF4B60()
{
  v1 = *(v0 + 16);

  v2 = OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

unint64_t sub_222DF4B98()
{
  result = qword_280F92DE8;
  if (!qword_280F92DE8)
  {
    sub_222E09850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F92DE8);
  }

  return result;
}

unint64_t sub_222DF4BF0()
{
  result = qword_280F92DD8;
  if (!qword_280F92DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D04CEB0, &unk_222E0B540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F92DD8);
  }

  return result;
}

void sub_222DF4C54(uint64_t a1, uint64_t a2, SEL *a3)
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_unknownObjectWeakLoadStrong();

    if (v7)
    {
      if ([v7 respondsToSelector_])
      {
        [v7 *a3];
      }

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_222DF4D0C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

id sub_222DF4D4C(void *a1)
{
  [a1 setProgressType_];
  v1 = OUTLINED_FUNCTION_34();

  return [v1 v2];
}

void sub_222DF4D9C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

uint64_t sub_222DF4DE8()
{
  OUTLINED_FUNCTION_40();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_222DF4E1C()
{
  v1 = OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_222DF4E4C()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_222DF4E98()
{
  MEMORY[0x223DCFEF0](v0 + 16);
  OUTLINED_FUNCTION_40();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_222DF4ECC()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_222DF4F08()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_222DF4FA0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_222DF4FD8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_222DF5058()
{
  v1 = sub_222E09760();
  OUTLINED_FUNCTION_1_1(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);
  v9 = *(v0 + v7 + 8);

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v4 | 7);
}

void sub_222DF71AC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t static IntelligenceFlowActionSummaryParameterMatcher.matches(in:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04CC70, &qword_222E0B1E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04CC78, &qword_222E0B1E8);
  v9 = OUTLINED_FUNCTION_1_1(v8);
  v45 = v10;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v9);
  v44 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v40 = v39 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04CC80, &qword_222E0B1F0);
  v17 = OUTLINED_FUNCTION_1_1(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  v23 = v39 - v22;
  v46 = a1;
  v47 = a2;
  sub_222E091B0();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04CC88, &qword_222E0B1F8);
  sub_222DF75E0();
  sub_222DF7A28(&qword_27D04CC98, &qword_27D04CC80, &qword_222E0B1F0);
  v24 = sub_222E098A0();
  (*(v19 + 8))(v23, v16);
  v25 = *(v24 + 16);
  if (v25)
  {
    v46 = MEMORY[0x277D84F90];
    sub_222E09A80();
    v26 = *(v45 + 16);
    v27 = *(v45 + 80);
    v39[1] = v24;
    v28 = v24 + ((v27 + 32) & ~v27);
    v42 = *(v45 + 72);
    v43 = v26;
    v45 += 16;
    v41 = (v45 - 8);
    v29 = v40;
    do
    {
      v30 = v43;
      v43(v29, v28, v8);
      v31 = v44;
      v30(v44, v29, v8);

      sub_222E091C0();
      v32 = objc_allocWithZone(type metadata accessor for BridgedMatch());
      sub_222DF7758(v31, a1, a2, v7);
      (*v41)(v29, v8);
      sub_222E09A60();
      v33 = v8;
      v34 = v7;
      v35 = a1;
      v36 = a2;
      v37 = *(v46 + 16);
      sub_222E09A90();
      a2 = v36;
      a1 = v35;
      v7 = v34;
      v8 = v33;
      sub_222E09AA0();
      sub_222E09A70();
      v28 += v42;
      --v25;
    }

    while (v25);

    return v46;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
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

unint64_t sub_222DF75E0()
{
  result = qword_27D04CC90;
  if (!qword_27D04CC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D04CC90);
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

id IntelligenceFlowActionSummaryParameterMatcher.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntelligenceFlowActionSummaryParameterMatcher();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_222DF7758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR___SUIBBridgedMatch_match;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04CC78, &qword_222E0B1E8);
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v4[v9], a1, v10);
  v12 = &v4[OBJC_IVAR___SUIBBridgedMatch_originalString];
  *v12 = a2;
  *(v12 + 1) = a3;
  v13 = OBJC_IVAR___SUIBBridgedMatch_captureReference;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04CC70, &qword_222E0B1E0);
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v4[v13], a4, v14);
  v18.receiver = v4;
  v18.super_class = type metadata accessor for BridgedMatch();
  v16 = objc_msgSendSuper2(&v18, sel_init);
  (*(v15 + 8))(a4, v14);
  (*(v11 + 8))(a1, v10);
  return v16;
}

uint64_t type metadata accessor for BridgedMatch()
{
  result = qword_27D04CCD0;
  if (!qword_27D04CCD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222DF7948()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04CC78, &qword_222E0B1E8);
  sub_222E09780();
  v2 = *(v0 + OBJC_IVAR___SUIBBridgedMatch_originalString);
  v3 = *(v0 + OBJC_IVAR___SUIBBridgedMatch_originalString + 8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04CCB0, &qword_222E0B200);
  sub_222DF7A28(&qword_27D04CCB8, &qword_27D04CCB0, &qword_222E0B200);
  sub_222DF7A70();
  return sub_222E09A00();
}

uint64_t sub_222DF7A28(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_222DF7A70()
{
  result = qword_27D04CCC0;
  if (!qword_27D04CCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D04CCC0);
  }

  return result;
}

uint64_t sub_222DF7B08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04CC78, &qword_222E0B1E8);
  sub_222E09770();
  return v1;
}

id BridgedMatch.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_222DF7C70(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_222DF7D70()
{
  sub_222DF7EC4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_222DF7F28();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_222DF7EC4()
{
  if (!qword_27D04CCE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D04CC88, &qword_222E0B1F8);
    v0 = sub_222E09790();
    if (!v1)
    {
      atomic_store(v0, &qword_27D04CCE0);
    }
  }
}

void sub_222DF7F28()
{
  if (!qword_27D04CCE8)
  {
    v0 = sub_222E091A0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D04CCE8);
    }
  }
}

uint64_t sub_222DF7F7C()
{
  v0 = sub_222E09830();
  __swift_allocate_value_buffer(v0, qword_280F92E48);
  __swift_project_value_buffer(v0, qword_280F92E48);
  sub_222DF86A4();
  sub_222E09A10();
  return sub_222E09840();
}

void static SignpostLogger.begin(_:enableTelemetry:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    sub_222DF847C(a1, a2, a3, a5, a6);
  }

  else
  {
    (*(a6 + 24))(a1, a2, a3, 0, 0, 256, 0, 0, a5, a6);
  }
}

void static SignpostLogger.begin(name:parameterOverrideOptions:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a10 + 8);
  v12(a9, a10);
  sub_222E097F0();
  if ((a6 & 0x100) != 0 || !a8)
  {
    sub_222E099E0();
    v16 = (v12)(a9, a10);
    OUTLINED_FUNCTION_1_2();
    sub_222E097E0();
  }

  else
  {

    sub_222E099E0();
    v13 = (v12)(a9, a10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04CCF0, qword_222E0B2B0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_222E0B2A0;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_222DF8578();
    *(v14 + 32) = a7;
    *(v14 + 40) = a8;
    OUTLINED_FUNCTION_1_2();
    sub_222E097D0();
  }
}

void static SignpostLogger.end(_:_:)()
{
  sub_222E099D0();
  v0 = OUTLINED_FUNCTION_0_0();
  v2 = v1(v0);
  OUTLINED_FUNCTION_1_2();
  sub_222E097E0();
}

uint64_t static SignpostLogger.event(_:)()
{
  v0 = sub_222E09810();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222E099F0();
  v5 = OUTLINED_FUNCTION_0_0();
  v7 = v6(v5);
  sub_222E09800();
  OUTLINED_FUNCTION_1_2();
  sub_222E097E0();

  return (*(v1 + 8))(v4, v0);
}

void sub_222DF847C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 8);
  v7(a4, a5);
  sub_222E097F0();
  sub_222E099E0();
  v8 = (v7)(a4, a5);
  sub_222E097D0();
}

unint64_t sub_222DF8578()
{
  result = qword_27D04CCF8;
  if (!qword_27D04CCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D04CCF8);
  }

  return result;
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

unint64_t sub_222DF86A4()
{
  result = qword_280F92DB8;
  if (!qword_280F92DB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F92DB8);
  }

  return result;
}

uint64_t UIBridge.__allocating_init(_:_:_:_:_:_:)(void *a1, void *a2, uint64_t *a3, uint64_t a4, void *a5, uint64_t *a6, void *a7)
{
  v15 = *(v7 + 48);
  v16 = *(v7 + 52);
  swift_allocObject();
  return UIBridge.init(_:_:_:_:_:_:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t UIBridge.init(_:_:_:_:_:_:)(void *a1, void *a2, uint64_t *a3, uint64_t a4, void *a5, uint64_t *a6, void *a7)
{
  v8 = v7;
  v29[0] = a5;
  v29[1] = a1;
  v29[2] = a2;
  v12 = sub_222E09830();
  v13 = OUTLINED_FUNCTION_1_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222DF1F68(a3, v32);
  v20 = objc_allocWithZone(type metadata accessor for UIBridgeService());
  v21 = a7;
  swift_unknownObjectRetain();
  sub_222DFAD74();
  *(v8 + qword_280F92DA8) = v22;
  sub_222DF1F68(a3, v32);
  v30 = a6;
  sub_222DF1F68(a6, v31);
  v23 = qword_280F92DF0;
  v24 = v21;
  swift_unknownObjectRetain();
  v25 = v29[0];
  if (v23 != -1)
  {
    OUTLINED_FUNCTION_1();
  }

  v26 = __swift_project_value_buffer(v12, qword_280F92E48);
  (*(v15 + 16))(v19, v26, v12);
  v27 = sub_222E097C0();

  sub_222DF8964();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v27;
}

uint64_t sub_222DF8964()
{
  sub_222E09290();
  OUTLINED_FUNCTION_0_1();
  sub_222E097A0();
  sub_222E09210();
  OUTLINED_FUNCTION_0_1();
  sub_222E097A0();
  sub_222E09330();
  OUTLINED_FUNCTION_0_1();
  sub_222E097A0();
  sub_222E09220();
  OUTLINED_FUNCTION_0_1();
  sub_222E097A0();
  sub_222E091D0();
  OUTLINED_FUNCTION_0_1();
  sub_222E097A0();
  sub_222E09460();
  OUTLINED_FUNCTION_0_1();
  sub_222E097A0();
  sub_222E09480();
  OUTLINED_FUNCTION_0_1();
  sub_222E097A0();
  sub_222E096E0();
  OUTLINED_FUNCTION_0_1();
  sub_222E097A0();
  sub_222E09370();
  OUTLINED_FUNCTION_0_1();
  sub_222E097A0();
  sub_222E094A0();
  OUTLINED_FUNCTION_0_1();
  sub_222E097A0();
  sub_222E094D0();
  OUTLINED_FUNCTION_0_1();
  sub_222E097A0();
  sub_222E09310();
  OUTLINED_FUNCTION_0_1();
  sub_222E097A0();
  sub_222E092B0();
  OUTLINED_FUNCTION_0_1();
  sub_222E097A0();
  sub_222E09600();
  OUTLINED_FUNCTION_0_1();
  sub_222E097A0();
  sub_222E094C0();
  OUTLINED_FUNCTION_0_1();
  sub_222E097A0();
  sub_222E095F0();
  OUTLINED_FUNCTION_0_1();
  sub_222E097A0();
  sub_222E095B0();
  OUTLINED_FUNCTION_0_1();
  sub_222E097A0();
  sub_222E09360();
  OUTLINED_FUNCTION_0_1();
  sub_222E097A0();
  sub_222E09200();
  OUTLINED_FUNCTION_0_1();
  sub_222E097A0();
  sub_222E092F0();
  OUTLINED_FUNCTION_0_1();

  return sub_222E097A0();
}

uint64_t UIBridge.deinit()
{
  v0 = sub_222E097B0();

  return v0;
}

uint64_t UIBridge.__deallocating_deinit()
{
  v0 = sub_222E097B0();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t type metadata accessor for UIBridge()
{
  result = qword_280F92D98;
  if (!qword_280F92D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id SUIBUIBridgeClient.init(delegate:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDelegate_];
  swift_unknownObjectRelease();
  return v1;
}

{
  v2 = [v1 initWithDelegate:a1 delegateQueue:0];
  swift_unknownObjectRelease();
  return v2;
}

id sub_222DF95A0()
{
  sub_222DF95DC();
  v2.receiver = v0;
  v2.super_class = SUIBUIBridgeClient;
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_222DF95DC()
{
  v1 = OBJC_IVAR___SUIBUIBridgeClient_connection;
  v2 = *(v0 + OBJC_IVAR___SUIBUIBridgeClient_connection);
  if (v2)
  {
    [v2 setInvalidationHandler_];
    v2 = *(v0 + v1);
    if (v2)
    {
      [v2 invalidate];
      v2 = *(v0 + v1);
    }
  }

  *(v0 + v1) = 0;
}

void *SUIBUIBridgeClient.stopAttending(for:)(uint64_t a1)
{
  result = sub_222DF036C();
  if (result)
  {
    [result stopAttendingForReason_];

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall SUIBUIBridgeClient.notifyTypingStarted(with:)(SUIBTypingSessionStarted with)
{
  isa = with.super.isa;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04CD10, &unk_222E0B480);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  if (qword_280F92DF0 != -1)
  {
    swift_once();
  }

  v9 = sub_222E09830();
  __swift_project_value_buffer(v9, qword_280F92E48);
  v10 = isa;
  v11 = sub_222E09820();
  v12 = sub_222E09970();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v14;
    *v13 = 136315138;
    v15 = [(objc_class *)v10 typingSessionId];
    if (v15)
    {
      v16 = v15;
      sub_222E09170();

      v17 = sub_222E09190();
      v18 = 0;
    }

    else
    {
      v17 = sub_222E09190();
      v18 = 1;
    }

    __swift_storeEnumTagSinglePayload(v6, v18, 1, v17);
    sub_222DFA3C4(v6, v8);
    sub_222E09190();
    if (__swift_getEnumTagSinglePayload(v8, 1, v17) == 1)
    {
      sub_222DFA44C(v8, &unk_27D04CD10, &unk_222E0B480);
      v19 = 0xE300000000000000;
      v20 = 7104878;
    }

    else
    {
      v20 = sub_222E09140();
      v19 = v21;
      (*(*(v17 - 8) + 8))(v8, v17);
    }

    v22 = sub_222DF164C(v20, v19, &v25);

    *(v13 + 4) = v22;
    _os_log_impl(&dword_222DEE000, v11, v12, "Received typing started for typingSessionId: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x223DCFE70](v14, -1, -1);
    MEMORY[0x223DCFE70](v13, -1, -1);
  }

  v23 = sub_222DF036C();
  if (v23)
  {
    [v23 notifyTypingStartedWith_];
    swift_unknownObjectRelease();
  }
}

void SUIBUIBridgeClient.startAttending(with:deviceId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_222DF036C();
  if (v5)
  {
    v6 = v5;
    if (a3)
    {
      v7 = sub_222E098B0();
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    [v6 startAttendingWithReason:a1 deviceId:?];
    swift_unknownObjectRelease();
  }
}

void sub_222DF9D48()
{
  if (qword_280F92DF0 != -1)
  {
    swift_once();
  }

  v0 = sub_222E09830();
  __swift_project_value_buffer(v0, qword_280F92E48);
  v1 = sub_222E09820();
  v2 = sub_222E09970();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_222DEE000, v1, v2, "UIBridge Connection Invalidated", v3, 2u);
    MEMORY[0x223DCFE70](v3, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *&Strong[OBJC_IVAR___SUIBUIBridgeClient_connection];
    *&Strong[OBJC_IVAR___SUIBUIBridgeClient_connection] = 0;
  }
}

void sub_222DF9E64()
{
  if (qword_280F92DF0 != -1)
  {
    swift_once();
  }

  v0 = sub_222E09830();
  __swift_project_value_buffer(v0, qword_280F92E48);
  v1 = sub_222E09820();
  v2 = sub_222E09970();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_222DEE000, v1, v2, "UIBridge Connection Interrupted", v3, 2u);
    MEMORY[0x223DCFE70](v3, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = OBJC_IVAR___SUIBUIBridgeClient_connection;
    v7 = *(Strong + OBJC_IVAR___SUIBUIBridgeClient_connection);
    if (v7)
    {
      [v7 invalidate];
      v8 = *&v5[v6];
    }

    else
    {
      v8 = 0;
    }

    *&v5[v6] = 0;
  }
}

void __swiftcall SUIBUIBridgeClient.init()(SUIBUIBridgeClient *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_222DFA018(uint64_t a1, unint64_t a2)
{
  v4 = sub_222DFA064(a1, a2);
  sub_222DFA17C(&unk_2836305E0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_222DFA064(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_222E098F0())
  {
    result = sub_222DFA260(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_222E09A40();
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
          result = sub_222E09A50();
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

uint64_t sub_222DFA17C(uint64_t result)
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

    result = sub_222DFA2D0(result, v8, 1, v3);
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

void *sub_222DFA260(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04CD28, &unk_222E0B300);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_222DFA2D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04CD28, &unk_222E0B300);
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

uint64_t sub_222DFA3C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04CD10, &unk_222E0B480);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222DFA44C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

char *sub_222DFA4C0(void *a1)
{
  v18 = sub_222E099A0();
  v2 = *(v18 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v6 = v5 - v4;
  v7 = sub_222E09990();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v9 = sub_222E09880();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_1_0();
  *&v1[OBJC_IVAR____TtC12SiriUIBridge26UIBridgeConnectionListener_connection] = 0;
  swift_unknownObjectWeakInit();
  v11 = &v1[OBJC_IVAR____TtC12SiriUIBridge26UIBridgeConnectionListener_machServiceName];
  *v11 = 0xD000000000000024;
  *(v11 + 1) = 0x8000000222E0BCD0;
  sub_222DF0678(0, &unk_280F92B50, 0x277CCAE98);
  *&v1[OBJC_IVAR____TtC12SiriUIBridge26UIBridgeConnectionListener_listener] = sub_222DFA7CC();
  swift_unknownObjectWeakAssign();
  sub_222DF0678(0, &qword_280F92B28, 0x277D85C78);
  sub_222E09870();
  v20 = MEMORY[0x277D84F90];
  sub_222DFACB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04CE98, &unk_222E0B560);
  sub_222DFAD0C();
  sub_222E09A30();
  (*(v2 + 104))(v6, *MEMORY[0x277D85260], v18);
  *&v1[OBJC_IVAR____TtC12SiriUIBridge26UIBridgeConnectionListener_connectionQueue] = sub_222E099C0();
  v19.receiver = v1;
  v19.super_class = type metadata accessor for UIBridgeConnectionListener();
  v12 = objc_msgSendSuper2(&v19, sel_init);
  v13 = OBJC_IVAR____TtC12SiriUIBridge26UIBridgeConnectionListener_listener;
  v14 = *&v12[OBJC_IVAR____TtC12SiriUIBridge26UIBridgeConnectionListener_listener];
  v15 = v12;
  [v14 setDelegate_];
  [*&v12[v13] resume];

  return v15;
}

id sub_222DFA7CC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_222E098B0();

  v2 = [v0 initWithMachServiceName_];

  return v2;
}

id sub_222DFA840()
{
  [*&v0[OBJC_IVAR____TtC12SiriUIBridge26UIBridgeConnectionListener_listener] invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIBridgeConnectionListener();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_222DFA934(int a1)
{
  if (qword_280F92DF0 != -1)
  {
    swift_once();
  }

  v2 = sub_222E09830();
  __swift_project_value_buffer(v2, qword_280F92E48);
  v3 = sub_222E09820();
  v4 = sub_222E09960();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1;
    _os_log_impl(&dword_222DEE000, v3, v4, "UIBridgeConnectionListener connection invalidated, client pid = %d", v5, 8u);
    MEMORY[0x223DCFE70](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      sub_222E00538();
    }

    v10 = *&v7[OBJC_IVAR____TtC12SiriUIBridge26UIBridgeConnectionListener_connection];
    *&v7[OBJC_IVAR____TtC12SiriUIBridge26UIBridgeConnectionListener_connection] = 0;
  }
}

void sub_222DFAA8C(int a1)
{
  if (qword_280F92DF0 != -1)
  {
    swift_once();
  }

  v2 = sub_222E09830();
  __swift_project_value_buffer(v2, qword_280F92E48);
  v3 = sub_222E09820();
  v4 = sub_222E09960();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1;
    _os_log_impl(&dword_222DEE000, v3, v4, "UIBridgeConnectionListener connection interrupted, client pid = %d", v5, 8u);
    MEMORY[0x223DCFE70](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      sub_222E004E4();
    }
  }
}

uint64_t sub_222DFAC34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04CD30, &unk_222E0B390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_222DFACB4()
{
  result = qword_280F92B30;
  if (!qword_280F92B30)
  {
    sub_222E09990();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F92B30);
  }

  return result;
}

unint64_t sub_222DFAD0C()
{
  result = qword_280F92B60;
  if (!qword_280F92B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D04CE98, &unk_222E0B560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F92B60);
  }

  return result;
}

void sub_222DFAD74()
{
  OUTLINED_FUNCTION_21();
  v28 = v1;
  v29 = v2;
  v27 = v3;
  v26 = sub_222E099A0();
  v4 = OUTLINED_FUNCTION_1_1(v26);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  v12 = sub_222E09990();
  v13 = OUTLINED_FUNCTION_10(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v16 = sub_222E09880();
  v17 = OUTLINED_FUNCTION_41(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  *&v0[OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_uiSessionProcessor] = 0;
  *&v0[OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_uiBridgeConnectionListener] = 0;
  v20 = &v0[OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService____lazy_storage___timeoutExtension];
  *v20 = 0;
  v20[8] = 1;
  sub_222DF0678(0, &qword_280F92B28, 0x277D85C78);
  sub_222E09870();
  v31 = MEMORY[0x277D84F90];
  sub_222DF1890(&qword_280F92B30, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04CE98, &unk_222E0B560);
  sub_222DF1920(&qword_280F92B60, &qword_27D04CE98, &unk_222E0B560);
  sub_222E09A30();
  (*(v6 + 104))(v11, *MEMORY[0x277D85260], v26);
  *&v0[OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_queue] = sub_222E099C0();
  *&v0[OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_uiBridgeListener] = v27;
  sub_222DF1F68(v28, &v0[OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_messagePublisher]);
  *&v0[OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_serviceHelper] = v29;
  v30.receiver = v0;
  v30.super_class = type metadata accessor for UIBridgeService();
  v21 = v27;
  swift_unknownObjectRetain();
  v22 = objc_msgSendSuper2(&v30, sel_init);
  objc_allocWithZone(type metadata accessor for UIBridgeConnectionListener());
  v23 = v22;
  v24 = sub_222DFA4C0(v22);
  v25 = *&v23[OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_uiBridgeConnectionListener];
  *&v23[OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_uiBridgeConnectionListener] = v24;

  [v21 setDelegate_];
  [v21 resumeConnectionWithBridgeProxy_];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  OUTLINED_FUNCTION_20();
}

void sub_222DFB320(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_uiSessionProcessor))
  {
    v1 = *(a1 + OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_uiSessionProcessor);

    sub_222E06590();
  }

  else
  {
    if (qword_280F92DF0 != -1)
    {
      swift_once();
    }

    v2 = sub_222E09830();
    __swift_project_value_buffer(v2, qword_280F92E48);
    oslog = sub_222E09820();
    v3 = sub_222E09970();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_222DEE000, oslog, v3, "SessionHandler not found in UIBridgeService", v4, 2u);
      MEMORY[0x223DCFE70](v4, -1, -1);
    }
  }
}

void sub_222DFB4B8()
{
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_45();
  v4 = OUTLINED_FUNCTION_1_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_26();
  v22 = sub_222E09880();
  v7 = OUTLINED_FUNCTION_1_1(v22);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_25();
  v21 = *&v0[OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_queue];
  OUTLINED_FUNCTION_40();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  v25 = v2;
  v26 = v10;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_0(COERCE_DOUBLE(1107296256));
  v23[2] = v11;
  v24 = v1;
  v12 = _Block_copy(v23);
  v13 = v0;
  sub_222E09860();
  OUTLINED_FUNCTION_6();
  sub_222DF1890(v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04CEB0, &unk_222E0B540);
  sub_222DF1920(&qword_280F92DD8, &unk_27D04CEB0, &unk_222E0B540);
  OUTLINED_FUNCTION_9();
  sub_222E09A30();
  v16 = OUTLINED_FUNCTION_17();
  MEMORY[0x223DCF860](v16);
  _Block_release(v12);
  v17 = OUTLINED_FUNCTION_13();
  v18(v17);
  v19 = OUTLINED_FUNCTION_30();
  v20(v19);

  OUTLINED_FUNCTION_20();
}

void sub_222DFB6AC(uint64_t a1)
{
  if (qword_280F92DF0 != -1)
  {
    swift_once();
  }

  v2 = sub_222E09830();
  __swift_project_value_buffer(v2, qword_280F92E48);
  v3 = sub_222E09820();
  v4 = sub_222E09970();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_222DEE000, v3, v4, "Received siriPrompted", v5, 2u);
    MEMORY[0x223DCFE70](v5, -1, -1);
  }

  if (*(a1 + OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_uiSessionProcessor))
  {

    sub_222E0697C();
  }

  else
  {
    oslog = sub_222E09820();
    v6 = sub_222E09970();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_222DEE000, oslog, v6, "SessionHandler not found in UIBridgeService", v7, 2u);
      MEMORY[0x223DCFE70](v7, -1, -1);
    }
  }
}

void sub_222DFB94C()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_222E09850();
  v8 = OUTLINED_FUNCTION_1_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_26();
  v26 = sub_222E09880();
  v11 = OUTLINED_FUNCTION_1_1(v26);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_25();
  v25 = *&v0[OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_queue];
  OUTLINED_FUNCTION_31();
  v14 = swift_allocObject();
  *(v14 + 16) = v0;
  *(v14 + 24) = v6;
  v27[4] = v4;
  v27[5] = v14;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_0(COERCE_DOUBLE(1107296256));
  v27[2] = v15;
  v27[3] = v2;
  v16 = _Block_copy(v27);
  v17 = v0;
  sub_222E09860();
  OUTLINED_FUNCTION_6();
  sub_222DF1890(v18, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04CEB0, &unk_222E0B540);
  sub_222DF1920(&qword_280F92DD8, &unk_27D04CEB0, &unk_222E0B540);
  OUTLINED_FUNCTION_9();
  sub_222E09A30();
  v20 = OUTLINED_FUNCTION_17();
  MEMORY[0x223DCF860](v20);
  _Block_release(v16);
  v21 = OUTLINED_FUNCTION_13();
  v22(v21);
  v23 = OUTLINED_FUNCTION_30();
  v24(v23);

  OUTLINED_FUNCTION_20();
}

void sub_222DFBB54(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v6 = sub_222E09750();
  v7 = OUTLINED_FUNCTION_1_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_26();
  if (*(a1 + OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_uiSessionProcessor))
  {
    type metadata accessor for UIBridgeService();

    a3(a2);
    sub_222DF2814();

    v10 = OUTLINED_FUNCTION_13();
    v11(v10);
  }

  else
  {
    if (qword_280F92DF0 != -1)
    {
      OUTLINED_FUNCTION_1();
    }

    v12 = sub_222E09830();
    OUTLINED_FUNCTION_29(v12, qword_280F92E48);
    v15 = sub_222E09820();
    v13 = sub_222E09970();
    if (os_log_type_enabled(v15, v13))
    {
      v14 = OUTLINED_FUNCTION_33();
      *v14 = 0;
      _os_log_impl(&dword_222DEE000, v15, v13, "SessionHandler not found in UIBridgeService", v14, 2u);
      OUTLINED_FUNCTION_3();
    }
  }
}

uint64_t sub_222DFBCFC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 >= 6)
  {
    if (qword_280F92DF0 != -1)
    {
      OUTLINED_FUNCTION_1();
    }

    v4 = sub_222E09830();
    OUTLINED_FUNCTION_29(v4, qword_280F92E48);
    v5 = sub_222E09820();
    v6 = sub_222E09980();
    if (OUTLINED_FUNCTION_24(v6))
    {
      v7 = OUTLINED_FUNCTION_33();
      *v7 = 0;
      OUTLINED_FUNCTION_23();
      _os_log_impl(v8, v9, v10, v11, v7, 2u);
      OUTLINED_FUNCTION_3();
    }

    v3 = MEMORY[0x277D5D130];
  }

  else
  {
    v3 = qword_2784C0000[a1];
  }

  v12 = *v3;
  v13 = sub_222E09750();
  v14 = OUTLINED_FUNCTION_10(v13);
  v16 = *(v15 + 104);

  return v16(a2, v12, v14);
}

void sub_222DFBEFC()
{
  OUTLINED_FUNCTION_21();
  v6 = v0;
  v7 = OUTLINED_FUNCTION_45();
  v8 = OUTLINED_FUNCTION_1_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_26();
  v13 = sub_222E09880();
  v14 = OUTLINED_FUNCTION_1_1(v13);
  v46 = v15;
  v47 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_25();
  if (qword_280F92DF0 != -1)
  {
    OUTLINED_FUNCTION_1();
  }

  v18 = sub_222E09830();
  OUTLINED_FUNCTION_29(v18, qword_280F92E48);

  v19 = sub_222E09820();
  v20 = sub_222E09970();

  if (os_log_type_enabled(v19, v20))
  {
    v45 = v10;
    v21 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v49[0] = v5;
    *v21 = 136315394;
    type metadata accessor for SUIBAttendingStartReason(0);
    v22 = sub_222E098D0();
    v43 = v5;
    v44 = v2;
    v24 = v1;
    v25 = v7;
    v26 = v6;
    v27 = sub_222DF164C(v22, v23, &v48);

    *(v21 + 4) = v27;
    *(v21 + 12) = 2080;
    v49[0] = v4;
    v49[1] = v3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04CEC0, &qword_222E0B3D0);
    v28 = sub_222E098D0();
    v30 = sub_222DF164C(v28, v29, &v48);
    v6 = v26;
    v7 = v25;
    v1 = v24;
    v2 = v44;

    *(v21 + 14) = v30;
    v5 = v43;
    OUTLINED_FUNCTION_23();
    _os_log_impl(v31, v32, v33, v34, v21, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3();
    v10 = v45;
    OUTLINED_FUNCTION_3();
  }

  v35 = *&v6[OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_queue];
  v36 = swift_allocObject();
  v36[2] = v6;
  v36[3] = v5;
  v36[4] = v4;
  v36[5] = v3;
  v49[4] = sub_222E01158;
  v49[5] = v36;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_0(COERCE_DOUBLE(1107296256));
  v49[2] = v37;
  v49[3] = &block_descriptor_24;
  v38 = _Block_copy(v49);

  v39 = v6;
  sub_222E09860();
  v48 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_6();
  sub_222DF1890(v40, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04CEB0, &unk_222E0B540);
  sub_222DF1920(&qword_280F92DD8, &unk_27D04CEB0, &unk_222E0B540);
  sub_222E09A30();
  v42 = OUTLINED_FUNCTION_17();
  MEMORY[0x223DCF860](v42);
  _Block_release(v38);
  (*(v10 + 8))(v1, v7);
  (*(v46 + 8))(v2, v47);

  OUTLINED_FUNCTION_20();
}

void sub_222DFC2D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_222E09760();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_uiSessionProcessor))
  {
    type metadata accessor for UIBridgeService();

    sub_222DFC4D8(a2, v8);
    sub_222E070AC();

    (*(v5 + 8))(v8, v4);
  }

  else
  {
    if (qword_280F92DF0 != -1)
    {
      swift_once();
    }

    v9 = sub_222E09830();
    __swift_project_value_buffer(v9, qword_280F92E48);
    v14 = sub_222E09820();
    v10 = sub_222E09970();
    if (os_log_type_enabled(v14, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_222DEE000, v14, v10, "SessionHandler not found in UIBridgeService", v11, 2u);
      MEMORY[0x223DCFE70](v11, -1, -1);
    }

    v12 = v14;
  }
}

uint64_t sub_222DFC4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = MEMORY[0x277D5D158];
      goto LABEL_10;
    }

    if (qword_280F92DF0 != -1)
    {
      OUTLINED_FUNCTION_1();
    }

    v4 = sub_222E09830();
    OUTLINED_FUNCTION_29(v4, qword_280F92E48);
    v5 = sub_222E09820();
    v6 = sub_222E09980();
    if (OUTLINED_FUNCTION_24(v6))
    {
      v7 = OUTLINED_FUNCTION_33();
      *v7 = 0;
      OUTLINED_FUNCTION_23();
      _os_log_impl(v8, v9, v10, v11, v7, 2u);
      OUTLINED_FUNCTION_3();
    }
  }

  v3 = MEMORY[0x277D5D160];
LABEL_10:
  v12 = *v3;
  v13 = sub_222E09760();
  v14 = OUTLINED_FUNCTION_10(v13);
  v16 = *(v15 + 104);

  return v16(a2, v12, v14);
}

void sub_222DFC688(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04CD10, &unk_222E0B480);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  if (qword_280F92DF0 != -1)
  {
    swift_once();
  }

  v8 = sub_222E09830();
  __swift_project_value_buffer(v8, qword_280F92E48);
  v9 = sub_222E09820();
  v10 = sub_222E09970();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_222DEE000, v9, v10, "Received notifyTypingStarted from the UI", v11, 2u);
    MEMORY[0x223DCFE70](v11, -1, -1);
  }

  if (*(a1 + OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_uiSessionProcessor))
  {

    v12 = [a2 typingSessionId];
    if (v12)
    {
      v13 = v12;
      sub_222E09170();

      v14 = sub_222E09190();
      v15 = 0;
    }

    else
    {
      v14 = sub_222E09190();
      v15 = 1;
    }

    __swift_storeEnumTagSinglePayload(v7, v15, 1, v14);
    sub_222E088AC();

    sub_222DF351C(v7, &unk_27D04CD10, &unk_222E0B480);
  }

  else
  {
    v20 = sub_222E09820();
    v16 = sub_222E09970();
    if (os_log_type_enabled(v20, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_222DEE000, v20, v16, "SessionHandler not found in UIBridgeService", v17, 2u);
      MEMORY[0x223DCFE70](v17, -1, -1);
    }

    v18 = v20;
  }
}

void sub_222DFC968(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *&v2[OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_uiBridgeListener];
  OUTLINED_FUNCTION_31();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v20[4] = sub_222E01910;
  v20[5] = v7;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_3();
  v20[2] = v8;
  v20[3] = &block_descriptor_126;
  v9 = _Block_copy(v20);

  [v6 notifyClientWithBlock_];
  _Block_release(v9);
  v10 = OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_uiBridgeConnectionListener;
  v11 = *&v3[OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_uiBridgeConnectionListener];
  if (v11)
  {
    v12 = v11;
    v13 = sub_222DF3068();

    if (v13)
    {
      if ([v13 respondsToSelector_])
      {
        [v13 uiBridgeServiceDidStartAttending];
      }

      swift_unknownObjectRelease();
    }

    v14 = *&v3[v10];
    if (v14)
    {
      v15 = v14;
      v16 = OUTLINED_FUNCTION_49();

      if (v16)
      {
        if ([v16 respondsToSelector_])
        {
          OUTLINED_FUNCTION_39();
          v17 = sub_222E098B0();
          v18 = OUTLINED_FUNCTION_34();
          [v18 v19];
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

void sub_222DFCAFC(uint64_t a1)
{
  sub_222DF34C4(a1, v6, &qword_27D04CD30, &unk_222E0B390);
  if (!v7)
  {
    sub_222DF351C(v6, &qword_27D04CD30, &unk_222E0B390);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D070, &unk_222E0B440);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    if (qword_280F92DF0 != -1)
    {
      swift_once();
    }

    v2 = sub_222E09830();
    __swift_project_value_buffer(v2, qword_280F92E48);
    v1 = sub_222E09820();
    v3 = sub_222E09960();
    if (os_log_type_enabled(v1, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_222DEE000, v1, v3, "Registered delegate is not of expected type, it should implement AFUIBridgeServiceDelegate", v4, 2u);
      MEMORY[0x223DCFE70](v4, -1, -1);
    }

    goto LABEL_12;
  }

  if ([v5 respondsToSelector_])
  {
    [v5 uiBridgeServiceDidStartAttending];
  }

  if ([v5 respondsToSelector_])
  {
    swift_unknownObjectRetain();
    v1 = sub_222E098B0();
    [v5 uiBridgeServiceDidStartAttendingWithRootRequestId_];
    swift_unknownObjectRelease_n();
LABEL_12:

    return;
  }

  swift_unknownObjectRelease();
}

void sub_222DFCD18()
{
  v1 = *(v0 + OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_uiBridgeListener);
  v7[4] = sub_222DF3514;
  v7[5] = 0;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_3();
  v7[2] = v2;
  v7[3] = &block_descriptor_117;
  v3 = _Block_copy(v7);
  [v1 notifyClientWithBlock_];
  _Block_release(v3);
  v4 = *(v0 + OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_uiBridgeConnectionListener);
  if (v4)
  {
    v5 = v4;
    v6 = sub_222DF3068();

    if (v6)
    {
      if ([v6 respondsToSelector_])
      {
        [v6 uiBridgeServiceDidStopAttendingUnexpectedlyWithReason_];
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_222DFCE04(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_uiBridgeListener);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v11[4] = sub_222E01908;
  v11[5] = v4;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_3();
  v11[2] = v5;
  v11[3] = &block_descriptor_111;
  v6 = _Block_copy(v11);

  OUTLINED_FUNCTION_50(v7, sel_notifyClientWithBlock_);
  _Block_release(v6);
  v8 = *(v1 + OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_uiBridgeConnectionListener);
  if (v8)
  {
    v9 = v8;
    v10 = OUTLINED_FUNCTION_52();

    if (v10)
    {
      if ([v10 respondsToSelector_])
      {
        [v10 uiBridgeServiceDetectedSpeechStart_];
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_222DFCF08(uint64_t a1, char a2)
{
  sub_222DF34C4(a1, v8, &qword_27D04CD30, &unk_222E0B390);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D070, &unk_222E0B440);
    if (swift_dynamicCast())
    {
      if ([v7 respondsToSelector_])
      {
        [v7 uiBridgeServiceDetectedSpeechStart_];
      }

      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    sub_222DF351C(v8, &qword_27D04CD30, &unk_222E0B390);
  }

  if (qword_280F92DF0 != -1)
  {
    swift_once();
  }

  v3 = sub_222E09830();
  __swift_project_value_buffer(v3, qword_280F92E48);
  v4 = sub_222E09820();
  v5 = sub_222E09960();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_222DEE000, v4, v5, "Registered delegate is not of expected type, it should implement AFUIBridgeServiceDelegate", v6, 2u);
    MEMORY[0x223DCFE70](v6, -1, -1);
  }
}

void sub_222DFD0CC(uint64_t a1, SEL *a2)
{
  sub_222DF34C4(a1, v9, &qword_27D04CD30, &unk_222E0B390);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D070, &unk_222E0B440);
    if (OUTLINED_FUNCTION_47())
    {
      if ([v8 respondsToSelector_])
      {
        [v8 *a2];
      }

      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    sub_222DF351C(v9, &qword_27D04CD30, &unk_222E0B390);
  }

  if (qword_280F92DF0 != -1)
  {
    OUTLINED_FUNCTION_1();
  }

  v3 = sub_222E09830();
  OUTLINED_FUNCTION_29(v3, qword_280F92E48);
  v4 = sub_222E09820();
  v5 = sub_222E09960();
  if (os_log_type_enabled(v4, v5))
  {
    *OUTLINED_FUNCTION_33() = 0;
    OUTLINED_FUNCTION_48(&dword_222DEE000, v6, v7, "Registered delegate is not of expected type, it should implement AFUIBridgeServiceDelegate");
    OUTLINED_FUNCTION_3();
  }
}

void sub_222DFD210(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_uiBridgeListener);
  OUTLINED_FUNCTION_40();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_31();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  v16[4] = sub_222E018FC;
  v16[5] = v5;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_3();
  v16[2] = v6;
  v16[3] = &block_descriptor_102;
  v7 = _Block_copy(v16);

  OUTLINED_FUNCTION_50(v8, sel_notifyClientWithBlock_);
  _Block_release(v7);
  if (a1)
  {
    v9 = *(v1 + OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_serviceHelper);
    if ([v9 respondsToSelector_])
    {
      [v9 notifySpeechDetectedIsUndirected];
    }

    v10 = *(v1 + OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_uiBridgeConnectionListener);
    if (v10)
    {
      v11 = v10;
      v12 = sub_222DF3068();

      if (v12)
      {
        if ([v12 respondsToSelector_])
        {
          [v12 uiBridgeServiceReceivedSpeechMitigationResult_];
        }

LABEL_12:
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    v13 = *(v1 + OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_uiBridgeConnectionListener);
    if (v13)
    {
      v14 = v13;
      v15 = sub_222DF3068();

      if (v15)
      {
        if ([v15 respondsToSelector_])
        {
          [v15 uiBridgeServiceReceivedSpeechMitigationResult_];
        }

        goto LABEL_12;
      }
    }
  }
}

void sub_222DFD3C0(uint64_t a1, char a2)
{
  sub_222DF34C4(a1, v14, &qword_27D04CD30, &unk_222E0B390);
  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D070, &unk_222E0B440);
    if (swift_dynamicCast())
    {
      if (a2)
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v4 = Strong;
          v5 = *(Strong + OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_serviceHelper);
          if ([v5 respondsToSelector_])
          {
            [v5 notifySpeechDetectedIsUndirected];
          }

          if ([v13 respondsToSelector_])
          {
            [v13 uiBridgeServiceReceivedSpeechMitigationResult_];
          }
        }

        else
        {
          if (qword_280F92DF0 != -1)
          {
            swift_once();
          }

          v10 = sub_222E09830();
          __swift_project_value_buffer(v10, qword_280F92E48);
          v4 = sub_222E09820();
          v11 = sub_222E09980();
          if (os_log_type_enabled(v4, v11))
          {
            v12 = swift_slowAlloc();
            *v12 = 0;
            _os_log_impl(&dword_222DEE000, v4, v11, "UIBridgeService expired", v12, 2u);
            MEMORY[0x223DCFE70](v12, -1, -1);
          }
        }
      }

      else if ([v13 respondsToSelector_])
      {
        [v13 uiBridgeServiceReceivedSpeechMitigationResult_];
      }

      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    sub_222DF351C(v14, &qword_27D04CD30, &unk_222E0B390);
  }

  if (qword_280F92DF0 != -1)
  {
    swift_once();
  }

  v6 = sub_222E09830();
  __swift_project_value_buffer(v6, qword_280F92E48);
  v7 = sub_222E09820();
  v8 = sub_222E09960();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_222DEE000, v7, v8, "Registered delegate is not of expected type, it should implement AFUIBridgeServiceDelegate", v9, 2u);
    MEMORY[0x223DCFE70](v9, -1, -1);
  }
}

void sub_222DFD6C4(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = *(v3 + OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_uiBridgeListener);
  v12[4] = a1;
  v12[5] = 0;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_3();
  v12[2] = v7;
  v12[3] = v6;
  v8 = _Block_copy(v12);
  OUTLINED_FUNCTION_50(v8, sel_notifyClientWithBlock_);
  _Block_release(v8);
  v9 = *(v3 + OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_uiBridgeConnectionListener);
  if (v9)
  {
    v10 = v9;
    v11 = OUTLINED_FUNCTION_52();

    if (v11)
    {
      if ([v11 respondsToSelector_])
      {
        [v11 *a3];
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_222DFD794(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_uiBridgeConnectionListener);
  if (v3)
  {
    v5 = v3;
    v6 = sub_222DF3068();

    if (v6)
    {
      if ([v6 respondsToSelector_])
      {
        if (a2)
        {
          OUTLINED_FUNCTION_36();
          v7 = sub_222E098B0();
        }

        else
        {
          v7 = 0;
        }

        v8 = v7;
        [v6 uiBridgeServiceDidDetectLanguageMismatch_];
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_222DFD88C()
{
  OUTLINED_FUNCTION_21();
  v2 = v0;
  v3 = sub_222E09740();
  v4 = OUTLINED_FUNCTION_1_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_26();
  v9 = sub_222E09450();
  v10 = *(v9 + 16);
  if (v10)
  {
    v39 = MEMORY[0x277D84F90];
    sub_222E09A80();
    v11 = v6 + 16;
    v38 = *(v6 + 16);
    v12 = v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v13 = *(v6 + 72);
    v14 = (v11 - 8);
    do
    {
      v15 = v38(v1, v12, v3);
      MEMORY[0x28223BE20](v15);
      OUTLINED_FUNCTION_8();
      *(v16 - 16) = v1;
      v17 = objc_allocWithZone(SUIBOrchestrationTask);
      v18 = OUTLINED_FUNCTION_11();
      sub_222E007A4(v18, v19);
      v20 = *v14;
      v21 = OUTLINED_FUNCTION_36();
      v22(v21);
      sub_222E09A60();
      v23 = v39[2];
      sub_222E09A90();
      sub_222E09AA0();
      sub_222E09A70();
      v12 += v13;
      --v10;
    }

    while (v10);

    v24 = v39;
    v2 = v0;
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  if (qword_280F92DF0 != -1)
  {
    OUTLINED_FUNCTION_1();
  }

  v25 = sub_222E09830();
  OUTLINED_FUNCTION_29(v25, qword_280F92E48);

  v26 = sub_222E09820();
  v27 = sub_222E09970();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = OUTLINED_FUNCTION_28();
    v29 = OUTLINED_FUNCTION_37();
    v39 = v29;
    *v28 = 136315138;
    v30 = sub_222DF0678(0, &qword_280F92DC8, off_2784BFA58);
    v31 = MEMORY[0x223DCF7E0](v24, v30);
    v33 = sub_222DF164C(v31, v32, &v39);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_222DEE000, v26, v27, "Calling delegate's didReceive with %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_3();
  }

  v34 = *(v2 + OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_uiBridgeConnectionListener);
  if (v34 && (v35 = v34, v36 = sub_222DF3068(), v35, v36))
  {
    if ([v36 respondsToSelector_])
    {
      sub_222DF0678(0, &qword_280F92DC8, off_2784BFA58);
      v37 = sub_222E09910();
      [v36 uiBridgeServiceDidReceiveTasks_];

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_20();
}

void sub_222DFDC0C(void *a1)
{
  v2 = sub_222E09190();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222E09730();
  v7 = sub_222E09150();
  (*(v3 + 8))(v6, v2);
  [a1 setTaskId_];
}

void sub_222DFDD00()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04CD10, &unk_222E0B480);
  v5 = OUTLINED_FUNCTION_41(v4);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v39 - v11;
  v13 = sub_222E09190();
  v14 = OUTLINED_FUNCTION_1_1(v13);
  v41 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v20 = v19 - v18;
  if (qword_280F92DF0 != -1)
  {
    OUTLINED_FUNCTION_1();
  }

  v21 = sub_222E09830();
  __swift_project_value_buffer(v21, qword_280F92E48);
  v22 = v3;
  v23 = sub_222E09820();
  v24 = sub_222E09970();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_28();
    v39 = v10;
    v40 = v12;
    v26 = v25;
    v27 = OUTLINED_FUNCTION_37();
    v42 = v27;
    *v26 = 136315138;
    sub_222E09470();
    OUTLINED_FUNCTION_12();
    sub_222DF1890(v28, v29);
    v30 = sub_222E09AC0();
    v31 = v1;
    v33 = v32;
    (*(v41 + 8))(v20, v13);
    v34 = sub_222DF164C(v30, v33, &v42);
    v1 = v31;

    *(v26 + 4) = v34;
    _os_log_impl(&dword_222DEE000, v23, v24, "Calling delegate's taskDidEnd with %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    OUTLINED_FUNCTION_3();
    v10 = v39;
    v12 = v40;
    OUTLINED_FUNCTION_3();
  }

  v35 = *(v1 + OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_uiBridgeConnectionListener);
  if (v35)
  {
    v36 = v35;
    v37 = sub_222DF3068();

    if (v37)
    {
      if ([v37 respondsToSelector_])
      {
        sub_222E09470();
        __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
        sub_222DF34C4(v12, v10, &unk_27D04CD10, &unk_222E0B480);
        if (__swift_getEnumTagSinglePayload(v10, 1, v13) == 1)
        {
          v38 = 0;
        }

        else
        {
          v38 = sub_222E09150();
          (*(v41 + 8))(v10, v13);
        }

        [v37 uiBridgeServiceTaskDidEnd_];

        swift_unknownObjectRelease();
        sub_222DF351C(v12, &unk_27D04CD10, &unk_222E0B480);
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  OUTLINED_FUNCTION_20();
}

void sub_222DFE070(uint64_t a1)
{
  v2 = v1;
  v23 = a1;
  v3 = objc_allocWithZone(SUIBIntelligenceFlowActionSummary);
  v4 = sub_222E009DC(sub_222E0188C, v22);
  v21[2] = v4;
  v5 = objc_allocWithZone(SUIBRequestProgress);
  v6 = sub_222E00AF8(sub_222E01CF8, v21);
  if (qword_280F92DF0 != -1)
  {
    OUTLINED_FUNCTION_1();
  }

  v7 = sub_222E09830();
  OUTLINED_FUNCTION_29(v7, qword_280F92E48);
  v8 = v4;
  v9 = sub_222E09820();
  v10 = sub_222E09970();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_28();
    v12 = OUTLINED_FUNCTION_51();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    OUTLINED_FUNCTION_46(&dword_222DEE000, v14, v15, "Calling delegate's receivedRequestProgress with %@");
    sub_222DF351C(v12, &qword_27D04D030, &qword_222E0B410);
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_3();
  }

  v16 = *&v2[OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_uiBridgeConnectionListener];
  if (!v16)
  {
    goto LABEL_9;
  }

  v17 = v16;
  v18 = OUTLINED_FUNCTION_49();

  if (!v18)
  {
    goto LABEL_9;
  }

  if ([v18 respondsToSelector_])
  {
    v6 = v6;
    v19 = OUTLINED_FUNCTION_34();
    [v19 v20];
    swift_unknownObjectRelease();

LABEL_9:
    return;
  }

  swift_unknownObjectRelease();
}

void sub_222DFE25C(void *a1)
{
  sub_222E095D0();
  v2 = sub_222E098B0();

  [a1 setFormatString_];

  v3 = sub_222E095E0();
  sub_222DFE344(v3);

  sub_222DF0678(0, &qword_27D04D040, off_2784BFA18);
  v4 = sub_222E09890();

  [a1 setParameterSummaries_];
}

uint64_t sub_222DFE344(uint64_t a1)
{
  v76 = sub_222E095C0();
  v2 = *(v76 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v76);
  v75 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D060, &unk_222E0B430);
  v5 = *(*(v71 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v71);
  v59 = (&v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v74 = &v58 - v9;
  MEMORY[0x28223BE20](v8);
  v69 = &v58 - v10;
  v61 = MEMORY[0x277D84F98];
  v77 = MEMORY[0x277D84F98];
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
  v67 = v2 + 88;
  v68 = v2 + 16;
  v66 = *MEMORY[0x277D5CD00];
  v62 = *MEMORY[0x277D5CD08];
  v60 = (v2 + 8);
  v70 = v2;
  v63 = (v2 + 96);
  v72 = a1;

  v17 = 0;
  v65 = a1 + 64;
  for (i = v15; v14; v15 = i)
  {
LABEL_9:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = v19 | (v17 << 6);
    v21 = v71;
    v22 = *(v72 + 56);
    v23 = (*(v72 + 48) + 16 * v20);
    v24 = v23[1];
    v73 = *v23;
    v26 = v69;
    v25 = v70;
    v27 = *(v70 + 16);
    v28 = v76;
    v27(&v69[*(v71 + 48)], v22 + *(v70 + 72) * v20, v76);
    *v26 = v73;
    v26[1] = v24;
    v73 = v24;
    v29 = v74;
    sub_222E01894(v26, v74, &unk_27D04D060, &unk_222E0B430);
    v30 = v29 + *(v21 + 48);
    v31 = v75;
    v27(v75, v30, v28);
    v32 = (*(v25 + 88))(v31, v28);
    if (v32 == v66)
    {
      v33 = 0;
    }

    else
    {
      if (v32 != v62)
      {
        v50 = *v60;

        v50(v75, v76);
LABEL_19:
        result = sub_222DF351C(v74, &unk_27D04D060, &unk_222E0B430);
        goto LABEL_20;
      }

      v33 = 1;
    }

    v34 = v75;
    v35 = (*v63)(v75, v76);
    v36 = *v34;
    v37 = v34[1];
    MEMORY[0x28223BE20](v35);
    *(&v58 - 4) = v33;
    *(&v58 - 3) = v38;
    *(&v58 - 2) = v37;
    objc_allocWithZone(SUIBIntelligenceFlowParameterSummary);

    v39 = sub_222E008C0(sub_222E01C54, (&v58 - 6));

    if (!v39)
    {
      goto LABEL_19;
    }

    sub_222E01894(v74, v59, &unk_27D04D060, &unk_222E0B430);
    v40 = v61[2];
    if (v61[3] <= v40)
    {
      sub_222E01524(v40 + 1, 1);
    }

    v41 = v77;
    v42 = *v59;
    v43 = v59[1];
    v44 = *(v77 + 40);
    sub_222E09AE0();
    sub_222E098E0();
    result = sub_222E09AF0();
    v45 = v41 + 64;
    v61 = v41;
    v46 = -1 << *(v41 + 32);
    v47 = result & ~v46;
    v48 = v47 >> 6;
    if (((-1 << v47) & ~*(v41 + 64 + 8 * (v47 >> 6))) == 0)
    {
      v51 = 0;
      v52 = (63 - v46) >> 6;
      while (++v48 != v52 || (v51 & 1) == 0)
      {
        v53 = v48 == v52;
        if (v48 == v52)
        {
          v48 = 0;
        }

        v51 |= v53;
        v54 = *(v45 + 8 * v48);
        if (v54 != -1)
        {
          v49 = __clz(__rbit64(~v54)) + (v48 << 6);
          goto LABEL_29;
        }
      }

      goto LABEL_32;
    }

    v49 = __clz(__rbit64((-1 << v47) & ~*(v41 + 64 + 8 * (v47 >> 6)))) | v47 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
    v55 = *(v71 + 48);
    *(v45 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
    v56 = v61;
    v57 = (v61[6] + 16 * v49);
    *v57 = v42;
    v57[1] = v43;
    *(v56[7] + 8 * v49) = v39;
    ++v56[2];
    result = (*v60)(v59 + v55, v76);
LABEL_20:
    v11 = v65;
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

      return v61;
    }

    v14 = *(v11 + 8 * v18);
    ++v17;
    if (v14)
    {
      v17 = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_222DFE900(uint64_t a1)
{
  v76 = sub_222E09560();
  v2 = *(v76 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v76);
  v75 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D048, &qword_222E0B420);
  v5 = *(*(v71 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v71);
  v59 = (&v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v74 = &v58 - v9;
  MEMORY[0x28223BE20](v8);
  v69 = &v58 - v10;
  v61 = MEMORY[0x277D84F98];
  v77 = MEMORY[0x277D84F98];
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
  v67 = v2 + 88;
  v68 = v2 + 16;
  v66 = *MEMORY[0x277D5CCF0];
  v62 = *MEMORY[0x277D5CCF8];
  v60 = (v2 + 8);
  v70 = v2;
  v63 = (v2 + 96);
  v72 = a1;

  v17 = 0;
  v65 = a1 + 64;
  for (i = v15; v14; v15 = i)
  {
LABEL_9:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = v19 | (v17 << 6);
    v21 = v71;
    v22 = *(v72 + 56);
    v23 = (*(v72 + 48) + 16 * v20);
    v24 = v23[1];
    v73 = *v23;
    v26 = v69;
    v25 = v70;
    v27 = *(v70 + 16);
    v28 = v76;
    v27(&v69[*(v71 + 48)], v22 + *(v70 + 72) * v20, v76);
    *v26 = v73;
    v26[1] = v24;
    v73 = v24;
    v29 = v74;
    sub_222E01894(v26, v74, &qword_27D04D048, &qword_222E0B420);
    v30 = v29 + *(v21 + 48);
    v31 = v75;
    v27(v75, v30, v28);
    v32 = (*(v25 + 88))(v31, v28);
    if (v32 == v66)
    {
      v33 = 0;
    }

    else
    {
      if (v32 != v62)
      {
        v50 = *v60;

        v50(v75, v76);
LABEL_19:
        result = sub_222DF351C(v74, &qword_27D04D048, &qword_222E0B420);
        goto LABEL_20;
      }

      v33 = 1;
    }

    v34 = v75;
    v35 = (*v63)(v75, v76);
    v36 = *v34;
    v37 = v34[1];
    MEMORY[0x28223BE20](v35);
    *(&v58 - 4) = v33;
    *(&v58 - 3) = v38;
    *(&v58 - 2) = v37;
    objc_allocWithZone(SUIBIntelligenceFlowParameterSummary);

    v39 = sub_222E008C0(sub_222E01504, (&v58 - 6));

    if (!v39)
    {
      goto LABEL_19;
    }

    sub_222E01894(v74, v59, &qword_27D04D048, &qword_222E0B420);
    v40 = v61[2];
    if (v61[3] <= v40)
    {
      sub_222E01524(v40 + 1, 1);
    }

    v41 = v77;
    v42 = *v59;
    v43 = v59[1];
    v44 = *(v77 + 40);
    sub_222E09AE0();
    sub_222E098E0();
    result = sub_222E09AF0();
    v45 = v41 + 64;
    v61 = v41;
    v46 = -1 << *(v41 + 32);
    v47 = result & ~v46;
    v48 = v47 >> 6;
    if (((-1 << v47) & ~*(v41 + 64 + 8 * (v47 >> 6))) == 0)
    {
      v51 = 0;
      v52 = (63 - v46) >> 6;
      while (++v48 != v52 || (v51 & 1) == 0)
      {
        v53 = v48 == v52;
        if (v48 == v52)
        {
          v48 = 0;
        }

        v51 |= v53;
        v54 = *(v45 + 8 * v48);
        if (v54 != -1)
        {
          v49 = __clz(__rbit64(~v54)) + (v48 << 6);
          goto LABEL_29;
        }
      }

      goto LABEL_32;
    }

    v49 = __clz(__rbit64((-1 << v47) & ~*(v41 + 64 + 8 * (v47 >> 6)))) | v47 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
    v55 = *(v71 + 48);
    *(v45 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
    v56 = v61;
    v57 = (v61[6] + 16 * v49);
    *v57 = v42;
    v57[1] = v43;
    *(v56[7] + 8 * v49) = v39;
    ++v56[2];
    result = (*v60)(v59 + v55, v76);
LABEL_20:
    v11 = v65;
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

      return v61;
    }

    v14 = *(v11 + 8 * v18);
    ++v17;
    if (v14)
    {
      v17 = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

double sub_222DFEEBC()
{
  v1 = (v0 + OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService____lazy_storage___timeoutExtension);
  if ((*(v0 + OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService____lazy_storage___timeoutExtension + 8) & 1) == 0)
  {
    return *v1;
  }

  result = sub_222DFEF00();
  *v1 = result;
  v1[8] = 0;
  return result;
}

double sub_222DFEF00()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_222E00C14(0xD000000000000013, 0x8000000222E0C080);
  v2 = 20.0;
  if (v1)
  {
    v3 = v1;
    v4 = sub_222E098B0();
    v5 = [v3 objectForKey_];

    if (v5)
    {
      sub_222E09A20();
      swift_unknownObjectRelease();
      sub_222DF351C(v14, &qword_27D04CD30, &unk_222E0B390);
      v6 = sub_222E098B0();
      [v3 floatForKey_];
      v8 = v7;

      if (qword_280F92DF0 != -1)
      {
        swift_once();
      }

      v9 = sub_222E09830();
      __swift_project_value_buffer(v9, qword_280F92E48);
      v10 = sub_222E09820();
      v11 = sub_222E09970();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 134217984;
        v2 = v8;
        *(v12 + 4) = v2;
        _os_log_impl(&dword_222DEE000, v10, v11, "Using timeout extension from user defaults: %f", v12, 0xCu);
        MEMORY[0x223DCFE70](v12, -1, -1);
      }

      else
      {

        return v8;
      }
    }

    else
    {

      memset(v14, 0, sizeof(v14));
      sub_222DF351C(v14, &qword_27D04CD30, &unk_222E0B390);
    }
  }

  return v2;
}

void sub_222DFF118(void *a1)
{
  v3 = v1;
  v5 = sub_222E09540();
  v6 = OUTLINED_FUNCTION_1_1(v5);
  v119 = v7;
  v120 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v118 = v11 - v10;
  v12 = sub_222E09520();
  v13 = OUTLINED_FUNCTION_1_1(v12);
  v122 = v14;
  v123 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v121 = v18 - v17;
  v19 = sub_222E09590();
  v20 = OUTLINED_FUNCTION_1_1(v19);
  v125 = v21;
  v126 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_0();
  v124 = v25 - v24;
  v26 = sub_222E09550();
  v27 = OUTLINED_FUNCTION_1_1(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v32);
  v127 = &v117 - v33;
  if (qword_280F92DF0 != -1)
  {
    OUTLINED_FUNCTION_1();
  }

  v34 = sub_222E09830();
  v35 = __swift_project_value_buffer(v34, qword_280F92E48);
  v36 = a1;
  v129 = v35;
  v37 = sub_222E09820();
  v38 = sub_222E09970();

  v39 = os_log_type_enabled(v37, v38);
  v128 = v3;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    *v40 = 136315394;
    sub_222E094E0();
    v41 = sub_222E098D0();
    v43 = sub_222DF164C(v41, v42, &v130);

    *(v40 + 4) = v43;
    *(v40 + 12) = 2080;
    v44 = sub_222E095A0();
    v46 = sub_222DF164C(v44, v45, &v130);

    *(v40 + 14) = v46;
    _os_log_impl(&dword_222DEE000, v37, v38, "Received status update message with status: %s for rootRequestId: %s", v40, 0x16u);
    swift_arrayDestroy();
    v3 = v128;
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_3();
  }

  v47 = *(v3 + OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_serviceHelper);
  if (([v47 respondsToSelector_] & 1) == 0)
  {
    v56 = sub_222E09820();
    v57 = sub_222E09980();
    if (OUTLINED_FUNCTION_24(v57))
    {
      v3 = OUTLINED_FUNCTION_33();
      *v3 = 0;
      OUTLINED_FUNCTION_23();
      _os_log_impl(v58, v59, v60, v61, v3, 2u);
      OUTLINED_FUNCTION_3();
    }

    goto LABEL_12;
  }

  v48 = sub_222DFEEBC();
  v49 = sub_222E09820();
  v50 = sub_222E09970();
  if (OUTLINED_FUNCTION_24(v50))
  {
    v3 = OUTLINED_FUNCTION_28();
    *v3 = 134217984;
    *(v3 + 4) = v48;
    OUTLINED_FUNCTION_23();
    _os_log_impl(v51, v52, v53, v54, v3, 0xCu);
    OUTLINED_FUNCTION_3();
  }

  if ([v47 respondsToSelector_])
  {
    sub_222E095A0();
    v3 = v55;
    v56 = sub_222E098B0();
    [v47 extendRequestTimeoutBy:v56 forRequestID:v48];

LABEL_12:
  }

  sub_222E094E0();
  v62 = (*(v29 + 88))(v2, v26);
  if (v62 == *MEMORY[0x277D5CCD8])
  {
    v63 = OUTLINED_FUNCTION_32();
    v64(v63);
    v66 = v124;
    v65 = v125;
    v67 = OUTLINED_FUNCTION_15();
    v68 = v126;
    v70 = v69(v67);
    MEMORY[0x28223BE20](v70);
    OUTLINED_FUNCTION_14();
    v71 = objc_allocWithZone(SUIBIntelligenceFlowActionSummary);
    sub_222E009DC(sub_222E014F4, v3);
    OUTLINED_FUNCTION_16();
    MEMORY[0x28223BE20](v72);
    OUTLINED_FUNCTION_8();
    *(v74 - 16) = v73;
    objc_allocWithZone(SUIBRequestProgress);
    v75 = sub_222E014FC;
LABEL_19:
    v92 = sub_222E00AF8(v75, v71);

    v93 = *(v65 + 8);
    v94 = v92;
    v93(v66, v68);
    v95 = v94;
    v96 = sub_222E09820();
    v97 = sub_222E09970();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = OUTLINED_FUNCTION_28();
      v99 = OUTLINED_FUNCTION_51();
      *v98 = 138412290;
      *(v98 + 4) = v95;
      *v99 = v95;
      OUTLINED_FUNCTION_23();
      _os_log_impl(v100, v101, v102, v103, v98, 0xCu);
      sub_222DF351C(v99, &qword_27D04D030, &qword_222E0B410);
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_3();
    }

    else
    {
    }

    v104 = *(v128 + OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_uiBridgeConnectionListener);
    if (v104 && (v105 = v104, v106 = OUTLINED_FUNCTION_52(), v97, v106))
    {
      if ([v106 respondsToSelector_])
      {
        v107 = OUTLINED_FUNCTION_34();
        [v107 v108];
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return;
  }

  if (v62 == *MEMORY[0x277D5CCD0])
  {
    v76 = OUTLINED_FUNCTION_32();
    v77(v76);
    v66 = v121;
    v65 = v122;
    v78 = OUTLINED_FUNCTION_15();
    v68 = v123;
    v80 = v79(v78);
    MEMORY[0x28223BE20](v80);
    OUTLINED_FUNCTION_14();
    v71 = objc_allocWithZone(SUIBIntelligenceFlowProgressUpdate);
    sub_222E00C78(sub_222E014E4, v3);
    OUTLINED_FUNCTION_16();
    MEMORY[0x28223BE20](v81);
    OUTLINED_FUNCTION_8();
    *(v83 - 16) = v82;
    objc_allocWithZone(SUIBRequestProgress);
    v75 = sub_222E014EC;
    goto LABEL_19;
  }

  if (v62 == *MEMORY[0x277D5CCE0])
  {
    v84 = OUTLINED_FUNCTION_32();
    v85(v84);
    v66 = v118;
    v65 = v119;
    v86 = OUTLINED_FUNCTION_15();
    v68 = v120;
    v88 = v87(v86);
    MEMORY[0x28223BE20](v88);
    OUTLINED_FUNCTION_14();
    v71 = objc_allocWithZone(SUIBIntelligenceFlowStatusNotification);
    sub_222E00D94(sub_222E014D4, v3);
    OUTLINED_FUNCTION_16();
    MEMORY[0x28223BE20](v89);
    OUTLINED_FUNCTION_8();
    *(v91 - 16) = v90;
    objc_allocWithZone(SUIBRequestProgress);
    v75 = sub_222E014DC;
    goto LABEL_19;
  }

  if (v62 != *MEMORY[0x277D5CCE8])
  {
    v109 = v36;
    v110 = sub_222E09820();
    v111 = sub_222E09980();

    if (os_log_type_enabled(v110, v111))
    {
      v112 = OUTLINED_FUNCTION_28();
      v113 = OUTLINED_FUNCTION_37();
      v130 = v113;
      *v112 = 136315138;
      sub_222E094E0();
      v114 = sub_222E098D0();
      v116 = sub_222DF164C(v114, v115, &v130);

      *(v112 + 4) = v116;
      _os_log_impl(&dword_222DEE000, v110, v111, "Unknown statusUpdate: %s", v112, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v113);
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_3();
    }
  }

  (*(v29 + 8))(v2, v26);
}

void sub_222DFFA4C(void *a1)
{
  sub_222E09570();
  v2 = sub_222E098B0();

  [a1 setFormatString_];

  v3 = MEMORY[0x223DCF430]();
  sub_222DFE900(v3);

  sub_222DF0678(0, &qword_27D04D040, off_2784BFA18);
  v4 = sub_222E09890();

  [a1 setParameterSummaries_];
}

void sub_222DFFB34(void *a1, uint64_t a2)
{
  [a1 setValueType_];
  v3 = sub_222E098B0();
  [a1 setValue_];
}

void sub_222DFFBB4(void *a1)
{
  sub_222E09510();
  [a1 setProgress_];
  sub_222E09500();
  if (v2)
  {
    v3 = sub_222E098B0();
  }

  else
  {
    v3 = 0;
  }

  [a1 setProgressDescription_];

  sub_222E094F0();
  if (v4)
  {
    v5 = sub_222E098B0();
  }

  else
  {
    v5 = 0;
  }

  [a1 setAdditionalProgressDescription_];
}

id sub_222DFFC84(void *a1, uint64_t a2)
{
  [a1 setProgressType_];

  return [a1 setIntelligenceFlowProgressUpdate_];
}

void sub_222DFFCD8(void *a1)
{
  v2 = sub_222E09530();

  sub_222E01828(v2, v3, a1);
}

id sub_222DFFD14(void *a1, uint64_t a2)
{
  [a1 setProgressType_];

  return [a1 setIntelligenceFlowStatusNotification_];
}

void sub_222DFFD68()
{
  OUTLINED_FUNCTION_21();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D038, &qword_222E0B418);
  v4 = OUTLINED_FUNCTION_41(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_25();
  v7 = sub_222E09340();
  v8 = OUTLINED_FUNCTION_1_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v15 = v14 - v13;
  sub_222E09350();
  if (__swift_getEnumTagSinglePayload(v1, 1, v7) != 1)
  {
    v16 = OUTLINED_FUNCTION_35();
    v18 = v17(v16);
    MEMORY[0x28223BE20](v18);
    OUTLINED_FUNCTION_8();
    *(v19 - 16) = v15;
    v20 = objc_allocWithZone(SUIBSiriInAppResponse);
    v21 = OUTLINED_FUNCTION_11();
    sub_222E00EB0(v21, v22);
    OUTLINED_FUNCTION_38();
    MEMORY[0x28223BE20](v23);
    OUTLINED_FUNCTION_8();
    *(v25 - 16) = v24;
    v26 = objc_allocWithZone(SUIBSiriResponse);
    v27 = OUTLINED_FUNCTION_11();
    v29 = sub_222E00FCC(v27, v28);
    if (qword_280F92DF0 != -1)
    {
      OUTLINED_FUNCTION_1();
    }

    v30 = sub_222E09830();
    __swift_project_value_buffer(v30, qword_280F92E48);
    v31 = v29;
    v32 = sub_222E09820();
    v33 = sub_222E09970();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = OUTLINED_FUNCTION_28();
      v35 = OUTLINED_FUNCTION_51();
      *v34 = 138412290;
      *(v34 + 4) = v31;
      *v35 = v31;
      v36 = v31;
      OUTLINED_FUNCTION_44(&dword_222DEE000, v37, v38, "Calling delegate's receivedSiriResponse with %@");
      sub_222DF351C(v35, &qword_27D04D030, &qword_222E0B410);
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_3();
    }

    v39 = *&v2[OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_uiBridgeConnectionListener];
    if (v39 && (v40 = v39, v41 = OUTLINED_FUNCTION_49(), v2, v41))
    {
      if (([v41 respondsToSelector_] & 1) == 0)
      {

        swift_unknownObjectRelease();
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_42(v31);
      swift_unknownObjectRelease();
    }

    else
    {
    }

LABEL_13:
    v42 = *(v10 + 8);
    v43 = OUTLINED_FUNCTION_39();
    v44(v43);
    goto LABEL_14;
  }

  sub_222DF351C(v1, &qword_27D04D038, &qword_222E0B418);
LABEL_14:
  OUTLINED_FUNCTION_20();
}

void sub_222E00084(void *a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v4 = sub_222E098B0();

  [a1 setBundleIdentifier_];
}

void sub_222E000F4()
{
  OUTLINED_FUNCTION_21();
  v37[0] = v0;
  v2 = sub_222E092D0();
  v3 = OUTLINED_FUNCTION_1_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  v11 = sub_222E096D0();
  v12 = OUTLINED_FUNCTION_1_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v17);
  v19 = v37 - v18;
  sub_222E096C0();
  (*(v14 + 104))(v1, *MEMORY[0x277D5CE00], v11);
  v20 = sub_222E00404();
  v21 = *(v14 + 8);
  v22 = OUTLINED_FUNCTION_36();
  v21(v22);
  (v21)(v19, v11);
  if (v20)
  {
    sub_222E092E0();
    sub_222E092C0();
    (*(v5 + 8))(v10, v2);
    if (qword_280F92DF0 != -1)
    {
      OUTLINED_FUNCTION_1();
    }

    v23 = sub_222E09830();
    OUTLINED_FUNCTION_29(v23, qword_280F92E48);

    v24 = sub_222E09820();
    v25 = sub_222E09970();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = OUTLINED_FUNCTION_28();
      v27 = OUTLINED_FUNCTION_37();
      v37[1] = v27;
      *v26 = 136315138;
      v28 = OUTLINED_FUNCTION_36();
      *(v26 + 4) = sub_222DF164C(v28, v29, v30);
      OUTLINED_FUNCTION_46(&dword_222DEE000, v31, v32, "Calling delegate's uiBridgeServiceReceivedNLRoutingDecision with %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_3();
    }

    v33 = *(v37[0] + OBJC_IVAR____TtC12SiriUIBridge15UIBridgeService_uiBridgeConnectionListener);
    if (v33 && (v34 = v33, v35 = sub_222DF3068(), v34, v35))
    {
      if ([v35 respondsToSelector_])
      {
        OUTLINED_FUNCTION_36();
        v36 = sub_222E098B0();
        [v35 uiBridgeServiceReceivedNLRoutingDecision_];

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_20();
}

uint64_t sub_222E00404()
{
  sub_222E096D0();
  sub_222DF1890(qword_280F92B70, MEMORY[0x277D5CE08]);
  sub_222E09900();
  sub_222E09900();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_222E09AD0();
  }

  return v1 & 1;
}

void sub_222E00544(const char *a1)
{
  if (qword_280F92DF0 != -1)
  {
    OUTLINED_FUNCTION_1();
  }

  v2 = sub_222E09830();
  OUTLINED_FUNCTION_29(v2, qword_280F92E48);
  v3 = sub_222E09820();
  v4 = sub_222E09960();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_33();
    *v5 = 0;
    _os_log_impl(&dword_222DEE000, v3, v4, a1, v5, 2u);
    OUTLINED_FUNCTION_3();
  }

  sub_222DFB8A8();
  sub_222DFB924();

  sub_222DFB2F8();
}

id UIBridgeService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UIBridgeService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIBridgeService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_222E007A4(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v9[4] = sub_222E01CF4;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_222E01C58;
  v9[3] = &block_descriptor_90;
  v6 = _Block_copy(v9);

  v7 = [v2 initWithBuilder_];
  _Block_release(v6);

  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_222E008C0(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v9[4] = sub_222E01CF4;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_222E01C58;
  v9[3] = &block_descriptor_66;
  v6 = _Block_copy(v9);

  v7 = [v2 initWithBuilder_];
  _Block_release(v6);

  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_222E009DC(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v9[4] = sub_222E01CF4;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_222E01C58;
  v9[3] = &block_descriptor_60;
  v6 = _Block_copy(v9);

  v7 = [v2 initWithBuilder_];
  _Block_release(v6);

  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_222E00AF8(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v9[4] = sub_222E01CF4;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_222E01C58;
  v9[3] = &block_descriptor_78;
  v6 = _Block_copy(v9);

  v7 = [v2 initWithBuilder_];
  _Block_release(v6);

  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

id sub_222E00C14(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_222E098B0();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t sub_222E00C78(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v9[4] = sub_222E01CF4;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_222E01C58;
  v9[3] = &block_descriptor_72;
  v6 = _Block_copy(v9);

  v7 = [v2 initWithBuilder_];
  _Block_release(v6);

  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_222E00D94(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v9[4] = sub_222E01CF4;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_222E01C58;
  v9[3] = &block_descriptor_84;
  v6 = _Block_copy(v9);

  v7 = [v2 initWithBuilder_];
  _Block_release(v6);

  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_222E00EB0(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v9[4] = sub_222E01CF4;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_222E01C58;
  v9[3] = &block_descriptor_54;
  v6 = _Block_copy(v9);

  v7 = [v2 initWithBuilder_];
  _Block_release(v6);

  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_222E00FCC(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v9[4] = sub_222E0147C;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_222E01C58;
  v9[3] = &block_descriptor_48;
  v6 = _Block_copy(v9);

  v7 = [v2 initWithBuilder_];
  _Block_release(v6);

  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

void sub_222E01158()
{
  v1 = v0[4];
  v2 = v0[5];
  sub_222DFC2D8(v0[2], v0[3]);
}

uint64_t sub_222E0147C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_222E01504(void *a1)
{
  v2 = v1[3];
  v3 = v1[4];
  sub_222DFFB34(a1, v1[2]);
}

uint64_t sub_222E01524(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04D050, &qword_222E0B428);
  v39 = a2;
  result = sub_222E09AB0();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      sub_222E017C4(0, (v36 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(v5 + 56) + 8 * v19);
    if ((v39 & 1) == 0)
    {
      v24 = v20[1];

      v25 = v23;
    }

    v26 = *(v8 + 40);
    sub_222E09AE0();
    sub_222E098E0();
    result = sub_222E09AF0();
    v27 = -1 << *(v8 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
    {
      break;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v8 + 48) + 16 * v30);
    *v35 = v21;
    v35[1] = v22;
    *(*(v8 + 56) + 8 * v30) = v23;
    ++*(v8 + 16);
    v5 = v38;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v31 = 0;
  v32 = (63 - v27) >> 6;
  while (++v29 != v32 || (v31 & 1) == 0)
  {
    v33 = v29 == v32;
    if (v29 == v32)
    {
      v29 = 0;
    }

    v31 |= v33;
    v34 = *(v15 + 8 * v29);
    if (v34 != -1)
    {
      v30 = __clz(__rbit64(~v34)) + (v29 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_222E017C4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_222E0B3C0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_222E01828(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_222E098B0();

  [a3 setStatusString_];
}

uint64_t sub_222E01894(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_43(a1, a2, a3, a4);
  OUTLINED_FUNCTION_10(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

_OWORD *sub_222E018EC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_222E01910(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_222DFCAFC(a1);
}

BOOL OUTLINED_FUNCTION_24(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_28()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_42(uint64_t a1)
{
  v4 = *(v2 + 624);

  return [v1 v4];
}

void OUTLINED_FUNCTION_44(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_46(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_47()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_48(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_49()
{

  return sub_222DF3068();
}

id OUTLINED_FUNCTION_50(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_51()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_52()
{

  return sub_222DF3068();
}

uint64_t sub_222E01F38(void (*a1)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_40();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_5_0();

  a1(v1, v3);
}

uint64_t sub_222E01FEC()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_40();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_5_0();

  sub_222E035A0(v1, v3, v2, v0);
}

void sub_222E02064(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      if ([v6 respondsToSelector_])
      {
        if (a3)
        {
          a3 = sub_222E098B0();
        }

        [v6 uiBridgeServiceDidStartAttendingWithRootRequestId_];
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_222E02208(char a1)
{
  OUTLINED_FUNCTION_40();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_5_0();

  sub_222E03CDC(v1, v3, a1);
}

void sub_222E02274(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();

    if (v5)
    {
      if ([v5 respondsToSelector_])
      {
        [v5 uiBridgeServiceDetectedSpeechStart_];
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_222E02454(uint64_t a1, SEL *a2)
{
  OUTLINED_FUNCTION_3_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();

    if (v5)
    {
      if ([v5 respondsToSelector_])
      {
        [v5 *a2];
      }

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_222E025DC(uint64_t a1)
{
  OUTLINED_FUNCTION_40();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_5_0();

  sub_222E05204(v1, v3, a1);
}

void sub_222E02650()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      if ([v2 respondsToSelector_])
      {
        sub_222E06308();
        v3 = sub_222E09910();
        [v2 uiBridgeServiceDidReceiveTasks_];
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_222E027DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = sub_222E09190();
  v6 = OUTLINED_FUNCTION_1_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_40();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_5_0();
  (*(v8 + 16))(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v12 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  (*(v8 + 32))(v13 + v12, &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_222E05D70(a3, v13);
}

void sub_222E02930(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04CD10, &unk_222E0B480);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = swift_unknownObjectWeakLoadStrong();

    if (v14)
    {
      if ([v14 respondsToSelector_])
      {
        v15 = sub_222E09190();
        OUTLINED_FUNCTION_1_1(v15);
        v17 = v16;
        (*(v18 + 16))(v11, a2, v15);
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v15);
        sub_222E060FC(v11, v9);
        v19 = 0;
        if (__swift_getEnumTagSinglePayload(v9, 1, v15) != 1)
        {
          v19 = sub_222E09150();
          (*(v17 + 8))(v9, v15);
        }

        [v14 *a3];
        swift_unknownObjectRelease();

        sub_222E0616C(v11);
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_222E02B44(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = sub_222E09190();
  v7 = OUTLINED_FUNCTION_1_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v14 = v13 - v12;
  sub_222E09170();
  v15 = a1;
  a4(v14);

  return (*(v9 + 8))(v14, v6);
}

uint64_t sub_222E02C38()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_40();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_5_0();

  v0(v1, v3, v2);
}

uint64_t sub_222E02D2C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_40();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_5_0();

  a3(v3, v7, a1, a2);
}

void sub_222E02DB8(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  OUTLINED_FUNCTION_3_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_unknownObjectWeakLoadStrong();

    if (v7)
    {
      if ([v7 respondsToSelector_])
      {
        v8 = sub_222E098B0();
        [v7 *a4];
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_222E02E94(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_222E098C0();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_222E02F00(uint64_t a1, uint64_t a2)
{
  v4 = sub_222E09850();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_222E09880();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + OBJC_IVAR____TtC12SiriUIBridge30UIBridgeServiceDelegateWrapper_delegateQueue);
  if (v15)
  {
    v23[0] = v12;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_222E064DC;
    *(v16 + 24) = a2;
    aBlock[4] = sub_222DF4D34;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_222DF198C;
    aBlock[3] = &block_descriptor_154;
    v17 = _Block_copy(aBlock);
    swift_retain_n();
    v18 = v15;
    sub_222E09860();
    v23[1] = MEMORY[0x277D84F90];
    sub_222DF4B98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04CEB0, &unk_222E0B540);
    sub_222DF4BF0();
    sub_222E09A30();
    MEMORY[0x223DCF860](0, v14, v8, v17);
    _Block_release(v17);

    (*(v5 + 8))(v8, v4);
    (*(v10 + 8))(v14, v23[0]);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  v21 = Strong;
  v22 = swift_unknownObjectWeakLoadStrong();

  if (!v22)
  {
  }

  if ([v22 respondsToSelector_])
  {
    [v22 uiBridgeServiceWillStartAttending];
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_222E03250(uint64_t a1, uint64_t a2)
{
  v4 = sub_222E09850();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_222E09880();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + OBJC_IVAR____TtC12SiriUIBridge30UIBridgeServiceDelegateWrapper_delegateQueue);
  if (v15)
  {
    v23[0] = v12;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_222E064B8;
    *(v16 + 24) = a2;
    aBlock[4] = sub_222DF4D34;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_222DF198C;
    aBlock[3] = &block_descriptor_146;
    v17 = _Block_copy(aBlock);
    swift_retain_n();
    v18 = v15;
    sub_222E09860();
    v23[1] = MEMORY[0x277D84F90];
    sub_222DF4B98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04CEB0, &unk_222E0B540);
    sub_222DF4BF0();
    sub_222E09A30();
    MEMORY[0x223DCF860](0, v14, v8, v17);
    _Block_release(v17);

    (*(v5 + 8))(v8, v4);
    (*(v10 + 8))(v14, v23[0]);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  v21 = Strong;
  v22 = swift_unknownObjectWeakLoadStrong();

  if (!v22)
  {
  }

  if ([v22 respondsToSelector_])
  {
    [v22 uiBridgeServiceDidStartAttending];
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_222E035A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_222E09850();
  v29 = *(v8 - 8);
  v9 = *(v29 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_222E09880();
  v12 = *(v28 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v28);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v17 = *(a1 + OBJC_IVAR____TtC12SiriUIBridge30UIBridgeServiceDelegateWrapper_delegateQueue);
  if (v17)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = sub_222E064AC;
    *(v18 + 24) = v16;
    aBlock[4] = sub_222DF4D34;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_222DF198C;
    aBlock[3] = &block_descriptor_138_0;
    v19 = _Block_copy(aBlock);

    v20 = v17;
    v27 = a4;
    v21 = v20;

    sub_222E09860();
    v30 = MEMORY[0x277D84F90];
    sub_222DF4B98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04CEB0, &unk_222E0B540);
    sub_222DF4BF0();
    sub_222E09A30();
    MEMORY[0x223DCF860](0, v15, v11, v19);
    _Block_release(v19);

    (*(v29 + 8))(v11, v8);
    (*(v12 + 8))(v15, v28);

LABEL_10:
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    goto LABEL_10;
  }

  v23 = Strong;
  v24 = swift_unknownObjectWeakLoadStrong();

  if (!v24)
  {

    goto LABEL_10;
  }

  if ([v24 respondsToSelector_])
  {
    if (a4)
    {
      v25 = sub_222E098B0();
    }

    else
    {
      v25 = 0;
    }

    [v24 uiBridgeServiceDidStartAttendingWithRootRequestId_];

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

uint64_t sub_222E0398C(uint64_t a1, uint64_t a2)
{
  v4 = sub_222E09850();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_222E09880();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + OBJC_IVAR____TtC12SiriUIBridge30UIBridgeServiceDelegateWrapper_delegateQueue);
  if (v15)
  {
    v23[0] = v12;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_222E06448;
    *(v16 + 24) = a2;
    aBlock[4] = sub_222DF4D34;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_222DF198C;
    aBlock[3] = &block_descriptor_116;
    v17 = _Block_copy(aBlock);
    swift_retain_n();
    v18 = v15;
    sub_222E09860();
    v23[1] = MEMORY[0x277D84F90];
    sub_222DF4B98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04CEB0, &unk_222E0B540);
    sub_222DF4BF0();
    sub_222E09A30();
    MEMORY[0x223DCF860](0, v14, v8, v17);
    _Block_release(v17);

    (*(v5 + 8))(v8, v4);
    (*(v10 + 8))(v14, v23[0]);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  v21 = Strong;
  v22 = swift_unknownObjectWeakLoadStrong();

  if (!v22)
  {
  }

  if ([v22 respondsToSelector_])
  {
    [v22 uiBridgeServiceDetectedSpeechStart];
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_222E03CDC(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_222E09850();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_222E09880();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = *(a1 + OBJC_IVAR____TtC12SiriUIBridge30UIBridgeServiceDelegateWrapper_delegateQueue);
  if (v17)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = sub_222E0643C;
    *(v18 + 24) = v16;
    aBlock[4] = sub_222DF4D34;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_222DF198C;
    aBlock[3] = &block_descriptor_108;
    v19 = _Block_copy(aBlock);
    v27 = v11;
    v20 = v19;

    v21 = v17;

    sub_222E09860();
    v28 = MEMORY[0x277D84F90];
    sub_222DF4B98();
    v26[1] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04CEB0, &unk_222E0B540);
    sub_222DF4BF0();
    sub_222E09A30();
    MEMORY[0x223DCF860](0, v15, v10, v20);
    _Block_release(v20);

    (*(v7 + 8))(v10, v6);
    (*(v12 + 8))(v15, v27);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  v23 = Strong;
  v24 = swift_unknownObjectWeakLoadStrong();

  if (!v24)
  {
  }

  if ([v24 respondsToSelector_])
  {
    [v24 uiBridgeServiceDetectedSpeechStart_];
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_222E04060(uint64_t a1, uint64_t a2)
{
  v4 = sub_222E09850();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_222E09880();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + OBJC_IVAR____TtC12SiriUIBridge30UIBridgeServiceDelegateWrapper_delegateQueue);
  if (v15)
  {
    v23[0] = v12;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_222E06418;
    *(v16 + 24) = a2;
    aBlock[4] = sub_222DF4D34;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_222DF198C;
    aBlock[3] = &block_descriptor_97;
    v17 = _Block_copy(aBlock);
    swift_retain_n();
    v18 = v15;
    sub_222E09860();
    v23[1] = MEMORY[0x277D84F90];
    sub_222DF4B98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04CEB0, &unk_222E0B540);
    sub_222DF4BF0();
    sub_222E09A30();
    MEMORY[0x223DCF860](0, v14, v8, v17);
    _Block_release(v17);

    (*(v5 + 8))(v8, v4);
    (*(v10 + 8))(v14, v23[0]);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  v21 = Strong;
  v22 = swift_unknownObjectWeakLoadStrong();

  if (!v22)
  {
  }

  if ([v22 respondsToSelector_])
  {
    [v22 uiBridgeServiceDetectedSiriDirectedSpeech];
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_222E043B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_222E09850();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_222E09880();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = *(a1 + OBJC_IVAR____TtC12SiriUIBridge30UIBridgeServiceDelegateWrapper_delegateQueue);
  if (v17)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = sub_222E063F4;
    *(v18 + 24) = v16;
    aBlock[4] = sub_222DF4D34;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_222DF198C;
    aBlock[3] = &block_descriptor_89;
    v19 = _Block_copy(aBlock);
    v27 = v11;
    v20 = v19;

    v21 = v17;

    sub_222E09860();
    v28 = MEMORY[0x277D84F90];
    sub_222DF4B98();
    v26[1] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04CEB0, &unk_222E0B540);
    sub_222DF4BF0();
    sub_222E09A30();
    MEMORY[0x223DCF860](0, v15, v10, v20);
    _Block_release(v20);

    (*(v7 + 8))(v10, v6);
    (*(v12 + 8))(v15, v27);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  v23 = Strong;
  v24 = swift_unknownObjectWeakLoadStrong();

  if (!v24)
  {
  }

  if ([v24 respondsToSelector_])
  {
    [v24 uiBridgeServiceReceivedSpeechMitigationResult_];
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_222E04730(uint64_t a1, uint64_t a2)
{
  v4 = sub_222E09850();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_222E09880();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + OBJC_IVAR____TtC12SiriUIBridge30UIBridgeServiceDelegateWrapper_delegateQueue);
  if (v15)
  {
    v23[0] = v12;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_222E063D0;
    *(v16 + 24) = a2;
    aBlock[4] = sub_222DF4D34;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_222DF198C;
    aBlock[3] = &block_descriptor_78_0;
    v17 = _Block_copy(aBlock);
    swift_retain_n();
    v18 = v15;
    sub_222E09860();
    v23[1] = MEMORY[0x277D84F90];
    sub_222DF4B98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04CEB0, &unk_222E0B540);
    sub_222DF4BF0();
    sub_222E09A30();
    MEMORY[0x223DCF860](0, v14, v8, v17);
    _Block_release(v17);

    (*(v5 + 8))(v8, v4);
    (*(v10 + 8))(v14, v23[0]);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  v21 = Strong;
  v22 = swift_unknownObjectWeakLoadStrong();

  if (!v22)
  {
  }

  if ([v22 respondsToSelector_])
  {
    [v22 uiBridgeServiceReceivedShowAssetsDownloadPrompt];
  }

  return swift_unknownObjectRelease();
}

void sub_222E04A80(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_222E09850();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_222E09880();
  v31 = *(v11 - 8);
  v12 = *(v31 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v16 = *(a1 + OBJC_IVAR____TtC12SiriUIBridge30UIBridgeServiceDelegateWrapper_delegateQueue);
  if (v16)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = sub_222E063AC;
    *(v17 + 24) = v15;
    aBlock[4] = sub_222DF4D34;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_222DF198C;
    aBlock[3] = &block_descriptor_70;
    v18 = _Block_copy(aBlock);
    v30 = v11;
    v19 = v18;

    v20 = a3;
    v21 = v16;
    v29 = a2;
    v22 = a3;
    v23 = v21;

    sub_222E09860();
    v32 = MEMORY[0x277D84F90];
    sub_222DF4B98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04CEB0, &unk_222E0B540);
    sub_222DF4BF0();
    sub_222E09A30();
    MEMORY[0x223DCF860](0, v14, v10, v19);
    _Block_release(v19);

    a3 = v22;
    (*(v7 + 8))(v10, v6);
    (*(v31 + 8))(v14, v30);

LABEL_10:

    goto LABEL_11;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    v28 = a3;
    goto LABEL_9;
  }

  v25 = Strong;
  v26 = swift_unknownObjectWeakLoadStrong();

  v27 = a3;

  if (!v26)
  {
LABEL_9:

    goto LABEL_10;
  }

  if ([v26 respondsToSelector_])
  {
    [v26 uiBridgeServiceReceivedRequestProgress_];
  }

  swift_unknownObjectRelease();
LABEL_11:
}

uint64_t sub_222E04E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_222E09850();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_222E09880();
  v29 = *(v13 - 8);
  v30 = v13;
  v14 = *(v29 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v18 = *(a1 + OBJC_IVAR____TtC12SiriUIBridge30UIBridgeServiceDelegateWrapper_delegateQueue);
  if (v18)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = sub_222E0634C;
    *(v19 + 24) = v17;
    aBlock[4] = sub_222DF4D34;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_222DF198C;
    aBlock[3] = &block_descriptor_59;
    v20 = _Block_copy(aBlock);

    v21 = v18;
    v28 = a2;
    v22 = v21;

    sub_222E09860();
    v31 = MEMORY[0x277D84F90];
    sub_222DF4B98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04CEB0, &unk_222E0B540);
    sub_222DF4BF0();
    sub_222E09A30();
    MEMORY[0x223DCF860](0, v16, v12, v20);
    _Block_release(v20);

    (*(v9 + 8))(v12, v8);
    (*(v29 + 8))(v16, v30);

LABEL_9:
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    goto LABEL_8;
  }

  v24 = Strong;
  v25 = swift_unknownObjectWeakLoadStrong();

  if (!v25)
  {
LABEL_8:

    goto LABEL_9;
  }

  if ([v25 respondsToSelector_])
  {
    v26 = sub_222E098B0();
    [v25 uiBridgeServiceReceivedNLRoutingDecision_];

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

uint64_t sub_222E05204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_222E09850();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_222E09880();
  v29 = *(v11 - 8);
  v12 = *(v29 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v16 = *(a1 + OBJC_IVAR____TtC12SiriUIBridge30UIBridgeServiceDelegateWrapper_delegateQueue);
  if (v16)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = sub_222E06300;
    *(v17 + 24) = v15;
    aBlock[4] = sub_222DF4D34;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_222DF198C;
    aBlock[3] = &block_descriptor_48_0;
    v18 = _Block_copy(aBlock);
    v28 = v11;
    v19 = v18;

    v20 = v16;
    v27 = a2;
    v21 = v20;

    sub_222E09860();
    v30 = MEMORY[0x277D84F90];
    sub_222DF4B98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04CEB0, &unk_222E0B540);
    sub_222DF4BF0();
    sub_222E09A30();
    MEMORY[0x223DCF860](0, v14, v10, v19);
    _Block_release(v19);

    (*(v7 + 8))(v10, v6);
    (*(v29 + 8))(v14, v28);

LABEL_9:
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    goto LABEL_8;
  }

  v23 = Strong;
  v24 = swift_unknownObjectWeakLoadStrong();

  if (!v24)
  {
LABEL_8:

    goto LABEL_9;
  }

  if ([v24 respondsToSelector_])
  {
    sub_222E06308();
    v25 = sub_222E09910();
    [v24 uiBridgeServiceDidReceiveTasks_];

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void sub_222E055EC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_222E09850();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_222E09880();
  v31 = *(v11 - 8);
  v12 = *(v31 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v16 = *(a1 + OBJC_IVAR____TtC12SiriUIBridge30UIBridgeServiceDelegateWrapper_delegateQueue);
  if (v16)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = sub_222E060CC;
    *(v17 + 24) = v15;
    aBlock[4] = sub_222DF4D34;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_222DF198C;
    aBlock[3] = &block_descriptor_29;
    v18 = _Block_copy(aBlock);
    v30 = v11;
    v19 = v18;

    v20 = a3;
    v21 = v16;
    v29 = a2;
    v22 = a3;
    v23 = v21;

    sub_222E09860();
    v32 = MEMORY[0x277D84F90];
    sub_222DF4B98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04CEB0, &unk_222E0B540);
    sub_222DF4BF0();
    sub_222E09A30();
    MEMORY[0x223DCF860](0, v14, v10, v19);
    _Block_release(v19);

    a3 = v22;
    (*(v7 + 8))(v10, v6);
    (*(v31 + 8))(v14, v30);

LABEL_10:

    goto LABEL_11;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    v28 = a3;
    goto LABEL_9;
  }

  v25 = Strong;
  v26 = swift_unknownObjectWeakLoadStrong();

  v27 = a3;

  if (!v26)
  {
LABEL_9:

    goto LABEL_10;
  }

  if ([v26 respondsToSelector_])
  {
    [v26 uiBridgeServiceReceivedSiriResponse_];
  }

  swift_unknownObjectRelease();
LABEL_11:
}

uint64_t sub_222E05990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_222E09850();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_222E09880();
  v29 = *(v13 - 8);
  v30 = v13;
  v14 = *(v29 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v18 = *(a1 + OBJC_IVAR____TtC12SiriUIBridge30UIBridgeServiceDelegateWrapper_delegateQueue);
  if (v18)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = sub_222E060A4;
    *(v19 + 24) = v17;
    aBlock[4] = sub_222DF4D34;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_222DF198C;
    aBlock[3] = &block_descriptor_18_0;
    v20 = _Block_copy(aBlock);

    v21 = v18;
    v28 = a2;
    v22 = v21;

    sub_222E09860();
    v31 = MEMORY[0x277D84F90];
    sub_222DF4B98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04CEB0, &unk_222E0B540);
    sub_222DF4BF0();
    sub_222E09A30();
    MEMORY[0x223DCF860](0, v16, v12, v20);
    _Block_release(v20);

    (*(v9 + 8))(v12, v8);
    (*(v29 + 8))(v16, v30);

LABEL_9:
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    goto LABEL_8;
  }

  v24 = Strong;
  v25 = swift_unknownObjectWeakLoadStrong();

  if (!v25)
  {
LABEL_8:

    goto LABEL_9;
  }

  if ([v25 respondsToSelector_])
  {
    v26 = sub_222E098B0();
    [v25 uiBridgeServiceDidDetectLanguageMismatch_];

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

uint64_t sub_222E05D70(uint64_t (*a1)(void), uint64_t a2)
{
  v5 = sub_222E09850();
  v6 = OUTLINED_FUNCTION_1_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v13 = v12 - v11;
  v14 = sub_222E09880();
  v15 = OUTLINED_FUNCTION_1_1(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  v22 = v21 - v20;
  v23 = *(v2 + OBJC_IVAR____TtC12SiriUIBridge30UIBridgeServiceDelegateWrapper_delegateQueue);
  if (!v23)
  {
    return a1();
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  aBlock[4] = sub_222DF4D0C;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222DF198C;
  aBlock[3] = &block_descriptor_2;
  v25 = _Block_copy(aBlock);
  v26 = v23;

  sub_222E09860();
  sub_222DF4B98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04CEB0, &unk_222E0B540);
  sub_222DF4BF0();
  sub_222E09A30();
  MEMORY[0x223DCF860](0, v22, v13, v25);
  _Block_release(v25);

  (*(v8 + 8))(v13, v5);
  (*(v17 + 8))(v22, v14);
}

id sub_222E06024()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIBridgeServiceDelegateWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_222E060FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04CD10, &unk_222E0B480);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222E0616C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04CD10, &unk_222E0B480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_32Tm()
{
  v1 = sub_222E09190();
  OUTLINED_FUNCTION_1_1(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

void sub_222E06300()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_222E02650();
}

unint64_t sub_222E06308()
{
  result = qword_280F92DC8;
  if (!qword_280F92DC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F92DC8);
  }

  return result;
}

uint64_t objectdestroy_21Tm()
{
  v1 = *(v0 + 16);

  v2 = OUTLINED_FUNCTION_22();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t objectdestroy_10Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_222E065B0(uint64_t a1)
{
  v2 = objc_allocWithZone(sub_222E09720());
  v3 = sub_222E09710();
  if (v3)
  {
    oslog = v3;
    if (qword_280F92DF0 != -1)
    {
      swift_once();
    }

    v4 = sub_222E09830();
    __swift_project_value_buffer(v4, qword_280F92E48);
    v5 = sub_222E09820();
    v6 = sub_222E09970();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_222DEE000, v5, v6, "Going to post SiriDismissedMessage", v7, 2u);
      MEMORY[0x223DCFE70](v7, -1, -1);
    }

    v8 = *(a1 + OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_messagePublisher + 32);
    __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_messagePublisher), *(a1 + OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_messagePublisher + 24));
    sub_222E096A0();
  }

  else
  {
    if (qword_280F92DF0 != -1)
    {
      swift_once();
    }

    v9 = sub_222E09830();
    __swift_project_value_buffer(v9, qword_280F92E48);
    oslog = sub_222E09820();
    v10 = sub_222E09980();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_222DEE000, oslog, v10, "Could not create SiriDismissedMessage", v11, 2u);
      MEMORY[0x223DCFE70](v11, -1, -1);
    }
  }
}

uint64_t sub_222E067BC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04CD10, &unk_222E0B480);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D090, &qword_222E0B538);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = *MEMORY[0x277D5CDD0];
  v12 = sub_222E096D0();
  (*(*(v12 - 8) + 104))(v10, v11, v12);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v12);
  sub_222E09670();
  v13 = *(a2 + OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_assistantId);
  v14 = *(a2 + OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_assistantId + 8);

  sub_222E09660();
  v15 = OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_sessionId;
  v16 = sub_222E09190();
  (*(*(v16 - 8) + 16))(v6, a2 + v15, v16);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v16);
  return sub_222E09680();
}

void sub_222E0699C()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v5 = v4;
  v6 = sub_222E09850();
  v7 = OUTLINED_FUNCTION_1_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v26 = OUTLINED_FUNCTION_9_0();
  v12 = OUTLINED_FUNCTION_1_1(v26);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_25();
  v25 = *(v0 + 16);
  v27[4] = v5;
  v28 = v0;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_0(COERCE_DOUBLE(1107296256));
  v27[2] = v17;
  v27[3] = v3;
  v18 = _Block_copy(v27);

  sub_222E09860();
  OUTLINED_FUNCTION_3_1();
  sub_222DF18D8(v19, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04CEB0, &unk_222E0B540);
  sub_222DF1920(&qword_280F92DD8, &unk_27D04CEB0, &unk_222E0B540);
  OUTLINED_FUNCTION_9();
  sub_222E09A30();
  v21 = OUTLINED_FUNCTION_17();
  MEMORY[0x223DCF860](v21);
  _Block_release(v18);
  v22 = *(v9 + 8);
  v23 = OUTLINED_FUNCTION_16_0();
  v24(v23);
  (*(v14 + 8))(v1, v26);

  OUTLINED_FUNCTION_20();
}

void sub_222E06B8C(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_promptRequestId + 8))
  {
    v2 = *(a1 + OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_promptRequestId);
    MEMORY[0x28223BE20](a1);
    v3 = objc_allocWithZone(sub_222E09700());

    v4 = sub_222E096F0();

    if (v4)
    {
      if (qword_280F92DF0 != -1)
      {
        swift_once();
      }

      v5 = sub_222E09830();
      __swift_project_value_buffer(v5, qword_280F92E48);
      v6 = sub_222E09820();
      v7 = sub_222E09970();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_222DEE000, v6, v7, "Going to post SiriPromptedMessage", v8, 2u);
        MEMORY[0x223DCFE70](v8, -1, -1);
      }

      v9 = *(a1 + OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_messagePublisher + 32);
      __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_messagePublisher), *(a1 + OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_messagePublisher + 24));
      sub_222E096A0();
    }

    else
    {
      if (qword_280F92DF0 != -1)
      {
        swift_once();
      }

      v13 = sub_222E09830();
      __swift_project_value_buffer(v13, qword_280F92E48);
      v14 = sub_222E09820();
      v15 = sub_222E09980();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_222DEE000, v14, v15, "Could not create SiriPromptedMessage", v16, 2u);
        MEMORY[0x223DCFE70](v16, -1, -1);
      }
    }
  }

  else
  {
    if (qword_280F92DF0 != -1)
    {
      swift_once();
    }

    v10 = sub_222E09830();
    __swift_project_value_buffer(v10, qword_280F92E48);
    v17 = sub_222E09820();
    v11 = sub_222E09980();
    if (os_log_type_enabled(v17, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_222DEE000, v17, v11, "RootRequestId not found in UISessionProcessor. Cannot attribute the SiriPromptedMessage to a request in the current session, dropping.", v12, 2u);
      MEMORY[0x223DCFE70](v12, -1, -1);
    }
  }
}

uint64_t sub_222E06EC8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04CD10, &unk_222E0B480);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D090, &qword_222E0B538);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = *MEMORY[0x277D5CDD0];
  v12 = sub_222E096D0();
  (*(*(v12 - 8) + 104))(v10, v11, v12);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v12);
  sub_222E09620();
  v13 = *(a2 + OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_assistantId);
  v14 = *(a2 + OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_assistantId + 8);

  sub_222E09610();
  v15 = OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_sessionId;
  v16 = sub_222E09190();
  (*(*(v16 - 8) + 16))(v6, a2 + v15, v16);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v16);
  sub_222E09640();

  return sub_222E09630();
}

void sub_222E070AC()
{
  OUTLINED_FUNCTION_21();
  v37 = v2;
  v38 = v3;
  v5 = v4;
  v6 = sub_222E09850();
  v7 = OUTLINED_FUNCTION_1_1(v6);
  v42 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v11 = OUTLINED_FUNCTION_9_0();
  v12 = OUTLINED_FUNCTION_1_1(v11);
  v40 = v13;
  v41 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_25();
  v16 = sub_222E09760();
  v17 = OUTLINED_FUNCTION_1_1(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(v0 + 16);
  (*(v19 + 16))(v22, v5, v16);
  v23 = (*(v19 + 80) + 24) & ~*(v19 + 80);
  v24 = (v21 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = v0;
  (*(v19 + 32))(v25 + v23, v22, v16);
  v26 = (v25 + v24);
  v27 = v38;
  *v26 = v37;
  v26[1] = v27;
  v44[4] = sub_222E08FF4;
  v44[5] = v25;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_0(COERCE_DOUBLE(1107296256));
  v44[2] = v28;
  v44[3] = &block_descriptor_120_0;
  v29 = _Block_copy(v44);

  sub_222E09860();
  v43 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_3_1();
  sub_222DF18D8(v30, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04CEB0, &unk_222E0B540);
  sub_222DF1920(&qword_280F92DD8, &unk_27D04CEB0, &unk_222E0B540);
  sub_222E09A30();
  v32 = OUTLINED_FUNCTION_17();
  MEMORY[0x223DCF860](v32);
  _Block_release(v29);
  v33 = *(v42 + 8);
  v34 = OUTLINED_FUNCTION_16_0();
  v35(v34);
  (*(v40 + 8))(v1, v41);

  OUTLINED_FUNCTION_20();
}

void sub_222E073B8(uint64_t a1)
{
  v2 = objc_allocWithZone(sub_222E09440());
  v3 = sub_222E093E0();
  if (v3)
  {
    v4 = v3;
    if (qword_280F92DF0 != -1)
    {
      swift_once();
    }

    v5 = sub_222E09830();
    __swift_project_value_buffer(v5, qword_280F92E48);
    v6 = sub_222E09820();
    v7 = sub_222E09970();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_222DEE000, v6, v7, "Going to post StartAttendingRequestedMessage", v8, 2u);
      MEMORY[0x223DCFE70](v8, -1, -1);
    }

    v9 = *(a1 + OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_messagePublisher + 32);
    __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_messagePublisher), *(a1 + OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_messagePublisher + 24));
    sub_222E096A0();
  }

  else
  {
    if (qword_280F92DF0 != -1)
    {
      swift_once();
    }

    v10 = sub_222E09830();
    __swift_project_value_buffer(v10, qword_280F92E48);
    v4 = sub_222E09820();
    v11 = sub_222E09980();
    if (os_log_type_enabled(v4, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_222DEE000, v4, v11, "Could not create StartAttendingRequestedMessage", v12, 2u);
      MEMORY[0x223DCFE70](v12, -1, -1);
    }
  }
}

uint64_t sub_222E075C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D098, &qword_222E0B550);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04CD10, &unk_222E0B480);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D090, &qword_222E0B538);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v25 - v15;
  v17 = *MEMORY[0x277D5CDD0];
  v18 = sub_222E096D0();
  (*(*(v18 - 8) + 104))(v16, v17, v18);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v18);
  sub_222E09410();
  v19 = *(a2 + OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_assistantId);
  v20 = *(a2 + OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_assistantId + 8);

  sub_222E09400();
  v21 = OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_sessionId;
  v22 = sub_222E09190();
  (*(*(v22 - 8) + 16))(v12, a2 + v21, v22);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v22);
  sub_222E09430();
  v23 = sub_222E09760();
  (*(*(v23 - 8) + 16))(v8, a3, v23);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v23);
  sub_222E093F0();

  return sub_222E09420();
}

void sub_222E07884()
{
  v0 = sub_222E09190();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222E09690();
  v5 = sub_222E09160();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v7 = sub_222E09320();
    sub_222DFCE04(v7 & 1);
  }

  else
  {
    if (qword_280F92DF0 != -1)
    {
      swift_once();
    }

    v8 = sub_222E09830();
    __swift_project_value_buffer(v8, qword_280F92E48);
    Strong = sub_222E09820();
    v9 = sub_222E09970();
    if (os_log_type_enabled(Strong, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_222DEE000, Strong, v9, "SpeechStartDetectedMessage does not belong to current session", v10, 2u);
      MEMORY[0x223DCFE70](v10, -1, -1);
    }
  }
}

void sub_222E07A74(uint64_t a1)
{
  v2 = sub_222E09190();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222E09690();
  v7 = sub_222E09160();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v8 = sub_222E09650();
    v9 = (a1 + OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_rootRequestId);
    v10 = *(a1 + OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_rootRequestId + 8);
    *v9 = v8;
    v9[1] = v11;

    if (*(a1 + OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_isSystemAssistantExperienceEnabled) == 1)
    {
      v12 = v9[1];
      v13 = (a1 + OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_promptRequestId);
      v14 = *(a1 + OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_promptRequestId + 8);
      *v13 = *v9;
      v13[1] = v12;
    }
  }

  else
  {
    if (qword_280F92DF0 != -1)
    {
      swift_once();
    }

    v15 = sub_222E09830();
    __swift_project_value_buffer(v15, qword_280F92E48);
    v16 = sub_222E09820();
    v17 = sub_222E09970();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_222DEE000, v16, v17, "StartRootSpeechRequestMessage does not belong to current session", v18, 2u);
      MEMORY[0x223DCFE70](v18, -1, -1);
    }
  }
}

void sub_222E07C98()
{
  v0 = sub_222E09190();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222E09690();
  v5 = sub_222E09160();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    if ((sub_222E09490() & 1) == 0)
    {
      Strong = swift_unknownObjectUnownedLoadStrong();
      sub_222DFD098();
    }

    v7 = swift_unknownObjectUnownedLoadStrong();
    v8 = sub_222E09490();
    sub_222DFD210(v8 & 1);
  }

  else
  {
    if (qword_280F92DF0 != -1)
    {
      swift_once();
    }

    v9 = sub_222E09830();
    __swift_project_value_buffer(v9, qword_280F92E48);
    v7 = sub_222E09820();
    v10 = sub_222E09970();
    if (os_log_type_enabled(v7, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_222DEE000, v7, v10, "MitigationDecisionFinalizedMessage does not belong to current session", v11, 2u);
      MEMORY[0x223DCFE70](v11, -1, -1);
    }
  }
}

void sub_222E07EE4()
{
  v0 = sub_222E09190();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222E09690();
  v5 = sub_222E09160();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    sub_222E09300();
    if (v6)
    {

      Strong = swift_unknownObjectUnownedLoadStrong();
      sub_222DFCCE4();
      goto LABEL_13;
    }

    if (qword_280F92DF0 != -1)
    {
      swift_once();
    }

    v12 = sub_222E09830();
    __swift_project_value_buffer(v12, qword_280F92E48);
    Strong = sub_222E09820();
    v9 = sub_222E09980();
    if (os_log_type_enabled(Strong, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "RequestId not found in UISessionProcessor";
      goto LABEL_12;
    }
  }

  else
  {
    if (qword_280F92DF0 != -1)
    {
      swift_once();
    }

    v8 = sub_222E09830();
    __swift_project_value_buffer(v8, qword_280F92E48);
    Strong = sub_222E09820();
    v9 = sub_222E09970();
    if (os_log_type_enabled(Strong, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "AttendingWillStartMessage does not belong to current session";
LABEL_12:
      _os_log_impl(&dword_222DEE000, Strong, v9, v11, v10, 2u);
      MEMORY[0x223DCFE70](v10, -1, -1);
    }
  }

LABEL_13:
}

void sub_222E08168()
{
  v0 = sub_222E09190();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222E09690();
  v5 = sub_222E09160();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = sub_222E092A0();
    if (v7)
    {
      v8 = v6;
      v9 = v7;
      Strong = swift_unknownObjectUnownedLoadStrong();
      sub_222DFC968(v8, v9);

      goto LABEL_13;
    }

    if (qword_280F92DF0 != -1)
    {
      swift_once();
    }

    v15 = sub_222E09830();
    __swift_project_value_buffer(v15, qword_280F92E48);
    Strong = sub_222E09820();
    v12 = sub_222E09980();
    if (os_log_type_enabled(Strong, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "RequestId not found in UISessionProcessor";
      goto LABEL_12;
    }
  }

  else
  {
    if (qword_280F92DF0 != -1)
    {
      swift_once();
    }

    v11 = sub_222E09830();
    __swift_project_value_buffer(v11, qword_280F92E48);
    Strong = sub_222E09820();
    v12 = sub_222E09970();
    if (os_log_type_enabled(Strong, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "AttendingStartedMessage does not belong to current session";
LABEL_12:
      _os_log_impl(&dword_222DEE000, Strong, v12, v14, v13, 2u);
      MEMORY[0x223DCFE70](v13, -1, -1);
    }
  }

LABEL_13:
}

void sub_222E083FC()
{
  v2 = OUTLINED_FUNCTION_13_0();
  v3 = OUTLINED_FUNCTION_1_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  sub_222E09690();
  sub_222E09160();
  v6 = OUTLINED_FUNCTION_17_0();
  v7(v6);
  if (v0)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v1();
  }

  else
  {
    if (qword_280F92DF0 != -1)
    {
      OUTLINED_FUNCTION_1();
    }

    v9 = sub_222E09830();
    __swift_project_value_buffer(v9, qword_280F92E48);
    Strong = sub_222E09820();
    v10 = sub_222E09970();
    if (os_log_type_enabled(Strong, v10))
    {
      *OUTLINED_FUNCTION_33() = 0;
      OUTLINED_FUNCTION_11_0(&dword_222DEE000);
      OUTLINED_FUNCTION_3();
    }
  }
}

void sub_222E08588()
{
  v0 = sub_222E09190();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222E09690();
  v5 = sub_222E09160();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v7 = sub_222E094B0();
    sub_222DFD794(v7, v8);
  }

  else
  {
    if (qword_280F92DF0 != -1)
    {
      swift_once();
    }

    v9 = sub_222E09830();
    __swift_project_value_buffer(v9, qword_280F92E48);
    v10 = sub_222E09820();
    v11 = sub_222E09970();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_222DEE000, v10, v11, "UnsupportedLanguageDetectedMessage does not belong to current session", v12, 2u);
      MEMORY[0x223DCFE70](v12, -1, -1);
    }
  }
}

void sub_222E087D4(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_222DFE070(a2);
}

void sub_222E088AC()
{
  v1 = v0;
  v2 = objc_allocWithZone(sub_222E09280());
  v3 = sub_222E09230();
  if (v3)
  {
    v4 = v3;
    if (qword_280F92DF0 != -1)
    {
      OUTLINED_FUNCTION_1();
    }

    v5 = sub_222E09830();
    __swift_project_value_buffer(v5, qword_280F92E48);
    v6 = sub_222E09820();
    v7 = sub_222E09970();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_33();
      *v8 = 0;
      _os_log_impl(&dword_222DEE000, v6, v7, "Going to post TypingStartedMessage", v8, 2u);
      OUTLINED_FUNCTION_3();
    }

    v9 = *(v1 + OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_messagePublisher + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_messagePublisher), *(v1 + OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_messagePublisher + 24));
    sub_222E096A0();
  }

  else
  {
    if (qword_280F92DF0 != -1)
    {
      OUTLINED_FUNCTION_1();
    }

    v10 = sub_222E09830();
    __swift_project_value_buffer(v10, qword_280F92E48);
    v4 = sub_222E09820();
    v11 = sub_222E09980();
    if (os_log_type_enabled(v4, v11))
    {
      v12 = OUTLINED_FUNCTION_33();
      *v12 = 0;
      _os_log_impl(&dword_222DEE000, v4, v11, "Failed to build TypingStartedMessage", v12, 2u);
      OUTLINED_FUNCTION_3();
    }
  }
}

uint64_t sub_222E08A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D04CD10, &unk_222E0B480);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v27 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D04D090, &qword_222E0B538);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v27 - v17;
  v19 = *MEMORY[0x277D5CDD0];
  v20 = sub_222E096D0();
  (*(*(v20 - 8) + 104))(v18, v19, v20);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v20);
  sub_222E09260();
  v21 = *(a2 + OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_assistantId);
  v22 = *(a2 + OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_assistantId + 8);

  sub_222E09240();
  v23 = OBJC_IVAR____TtC12SiriUIBridge18UISessionProcessor_sessionId;
  v24 = sub_222E09190();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v14, a2 + v23, v24);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v24);
  sub_222E09270();
  sub_222E060FC(a3, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v24) == 1)
  {
    sub_222E09180();
    if (__swift_getEnumTagSinglePayload(v9, 1, v24) != 1)
    {
      sub_222DF351C(v9, &unk_27D04CD10, &unk_222E0B480);
    }
  }

  else
  {
    (*(v25 + 32))(v12, v9, v24);
  }

  __swift_storeEnumTagSinglePayload(v12, 0, 1, v24);
  return sub_222E09250();
}

uint64_t sub_222E08D40()
{
  result = sub_222E09190();
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

void sub_222E08F14()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_222E08588();
}

void sub_222E08F1C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_222E083FC();
}

void sub_222E08F54()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_222E08168();
}

void sub_222E08F5C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_222E07EE4();
}

void sub_222E08F64()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_222E083FC();
}

void sub_222E08F9C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_222E07C98();
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_222E08FEC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_222E07884();
}

void sub_222E08FF4()
{
  v1 = *(sub_222E09760() - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 64) + ((*(v1 + 80) + 24) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  sub_222E073B8(v2);
}

uint64_t sub_222E09088(uint64_t a1)
{
  v2 = v1[4];
  v3 = v1[5];
  return sub_222E075C4(a1, v1[2], v1[3]);
}

uint64_t sub_222E0909C(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_222E06EC8(a1, v1[2]);
}