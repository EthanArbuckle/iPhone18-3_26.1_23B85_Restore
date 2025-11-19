uint64_t sub_264A5D4BC(uint64_t a1)
{
  v2 = sub_264A5E0D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A5D4F8(uint64_t a1)
{
  v2 = sub_264A5E0D4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_264A5D534()
{
  if (*v0)
  {
    result = 0xD000000000000018;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t sub_264A5D570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000264B5CBC0 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000264B5CBE0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_264B41AA4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_264A5D654(uint64_t a1)
{
  v2 = sub_264A5E080();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A5D690(uint64_t a1)
{
  v2 = sub_264A5E080();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AccessibilityMessage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A0D8, &qword_264B49B90);
  v24 = *(v3 - 8);
  v25 = v3;
  v4 = *(v24 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A0E0, &qword_264B49B98);
  v22 = *(v7 - 8);
  v23 = v7;
  v8 = *(v22 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A0E8, &qword_264B49BA0);
  v11 = *(v27 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v27);
  v14 = &v22 - v13;
  v15 = v1[1];
  v26 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A5E080();
  sub_264B41BD4();
  if ((v15 & 0x2000000000000000) != 0)
  {
    LOBYTE(v28) = 1;
    sub_264A5E0D4();
    v20 = v27;
    sub_264B419B4();
    v21 = v25;
    sub_264B419F4();
    (*(v24 + 8))(v6, v21);
    return (*(v11 + 8))(v14, v20);
  }

  else
  {
    LOBYTE(v28) = 0;
    sub_264A5E128();
    v17 = v27;
    sub_264B419B4();
    v28 = v26;
    v29 = v15;
    sub_264A2E90C();
    v18 = v23;
    sub_264B41A24();
    (*(v22 + 8))(v10, v18);
    return (*(v11 + 8))(v14, v17);
  }
}

uint64_t AccessibilityMessage.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A108, &qword_264B49BA8);
  v39 = *(v3 - 8);
  v40 = v3;
  v4 = *(v39 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A110, &qword_264B49BB0);
  v38 = *(v7 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A118, &unk_264B49BB8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_264A5E080();
  v18 = v42;
  sub_264B41BC4();
  if (!v18)
  {
    v37 = v7;
    v42 = v12;
    v20 = v40;
    v19 = v41;
    v21 = sub_264B419A4();
    v22 = (2 * *(v21 + 16)) | 1;
    v45 = v21;
    v46 = v21 + 32;
    v47 = 0;
    v48 = v22;
    v23 = sub_2649E0ED8();
    v24 = v11;
    if (v23 == 2 || v47 != v48 >> 1)
    {
      v28 = sub_264B417A4();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88900, &qword_264B445C0) + 48);
      *v30 = &type metadata for AccessibilityMessage;
      sub_264B41904();
      sub_264B41794();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v42 + 8))(v15, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v23)
      {
        LOBYTE(v43) = 1;
        sub_264A5E0D4();
        sub_264B418F4();
        v25 = v42;
        v26 = v19;
        v27 = sub_264B41954();
        (*(v39 + 8))(v6, v20);
        (*(v25 + 8))(v15, v24);
        swift_unknownObjectRelease();
        v35 = v27 & 1;
        v36 = 0x2000000000000000;
      }

      else
      {
        LOBYTE(v43) = 0;
        sub_264A5E128();
        sub_264B418F4();
        v33 = v42;
        v26 = v19;
        sub_264A2E960();
        v34 = v37;
        sub_264B41984();
        (*(v38 + 8))(v10, v34);
        (*(v33 + 8))(v15, v24);
        swift_unknownObjectRelease();
        v35 = v43;
        v36 = v44;
      }

      *v26 = v35;
      v26[1] = v36;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v49);
}

uint64_t sub_264A5DF34@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  *a1 = v3;
  a1[1] = v2;
  type metadata accessor for ControlMessage();
  swift_storeEnumTagMultiPayload();

  return sub_264A5448C(v3, v2);
}

uint64_t _s16ScreenSharingKit20AccessibilityMessageO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if ((v3 & 0x2000000000000000) == 0)
  {
    if ((v5 & 0x2000000000000000) == 0)
    {
      sub_264A5448C(*a2, *(a2 + 8));
      sub_264A5448C(v2, v3);
      v6 = sub_264A2E750(v2, v3, v4, v5);
      sub_2649E7004(v2, v3);
      sub_2649E7004(v4, v5);
      return v6 & 1;
    }

    sub_2649DEF18(*a1, v3);
    goto LABEL_7;
  }

  if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_7:
    sub_264A5448C(v4, v5);
    sub_2649E7004(v2, v3);
    sub_2649E7004(v4, v5);
    v8 = 0;
    return v8 & 1;
  }

  sub_2649E7004(*a1, v3);
  sub_2649E7004(v4, v5);
  v8 = v4 ^ v2 ^ 1;
  return v8 & 1;
}

unint64_t sub_264A5E080()
{
  result = qword_27FF8A0F0;
  if (!qword_27FF8A0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A0F0);
  }

  return result;
}

unint64_t sub_264A5E0D4()
{
  result = qword_27FF8A0F8;
  if (!qword_27FF8A0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A0F8);
  }

  return result;
}

unint64_t sub_264A5E128()
{
  result = qword_27FF8A100;
  if (!qword_27FF8A100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A100);
  }

  return result;
}

uint64_t sub_264A5E188(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 16))
  {
    return (*a1 + 3);
  }

  v3 = ((2 * ((*(a1 + 8) & 0x1000000000000000) != 0)) | ((*(a1 + 8) >> 60) >> 1) & 1) ^ 3;
  if (v3 >= 2)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_264A5E1DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    if (a3 >= 3)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((2 * a2) & 2 | 1u) << 60;
    }
  }

  return result;
}

unint64_t sub_264A5E290()
{
  result = qword_27FF8A120;
  if (!qword_27FF8A120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A120);
  }

  return result;
}

unint64_t sub_264A5E2E8()
{
  result = qword_27FF8A128;
  if (!qword_27FF8A128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A128);
  }

  return result;
}

unint64_t sub_264A5E340()
{
  result = qword_27FF8A130;
  if (!qword_27FF8A130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A130);
  }

  return result;
}

unint64_t sub_264A5E398()
{
  result = qword_27FF8A138;
  if (!qword_27FF8A138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A138);
  }

  return result;
}

unint64_t sub_264A5E3F0()
{
  result = qword_27FF8A140;
  if (!qword_27FF8A140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A140);
  }

  return result;
}

unint64_t sub_264A5E448()
{
  result = qword_27FF8A148;
  if (!qword_27FF8A148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A148);
  }

  return result;
}

unint64_t sub_264A5E4A0()
{
  result = qword_27FF8A150;
  if (!qword_27FF8A150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A150);
  }

  return result;
}

unint64_t sub_264A5E4F8()
{
  result = qword_27FF8A158;
  if (!qword_27FF8A158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A158);
  }

  return result;
}

unint64_t sub_264A5E550()
{
  result = qword_27FF8A160;
  if (!qword_27FF8A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A160);
  }

  return result;
}

uint64_t dispatch thunk of HIDEventObserverPrimitives.coordinateTransform.setter(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 40);
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  v6[2] = a1[2];
  return v3(v6);
}

id sub_264A5E6C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_264A5EC94();
    v5 = sub_264B40F54();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_264A5E784(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (qword_27FF883F8 != -1)
    {
      swift_once();
    }

    v6 = sub_264B40964();
    __swift_project_value_buffer(v6, qword_27FF8AE40);

    v7 = sub_264B40944();
    v8 = sub_264B41484();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      aBlock[0] = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_2649CC004(a1, a2, aBlock);
      _os_log_impl(&dword_2649C6000, v7, v8, "Sending report to CA event:%{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x266749940](v10, -1, -1);
      MEMORY[0x266749940](v9, -1, -1);
    }

    v11 = sub_264B40944();
    v12 = sub_264B41484();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      aBlock[0] = v14;
      *v13 = 136315138;
      sub_264A5EC94();
      v15 = sub_264B40F74();
      v17 = sub_2649CC004(v15, v16, aBlock);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_2649C6000, v11, v12, "Report = %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x266749940](v14, -1, -1);
      MEMORY[0x266749940](v13, -1, -1);
    }

    v18 = sub_264B41014();
    v19 = swift_allocObject();
    *(v19 + 16) = a3;
    aBlock[4] = sub_264A5EC74;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_264A5E6C0;
    aBlock[3] = &block_descriptor_10;
    v20 = _Block_copy(aBlock);

    v21 = AnalyticsSendEventLazy();
    _Block_release(v20);

    if ((v21 & 1) == 0)
    {

      v22 = sub_264B40944();
      v23 = sub_264B41494();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        aBlock[0] = v25;
        *v24 = 136315138;
        *(v24 + 4) = sub_2649CC004(a1, a2, aBlock);
        _os_log_impl(&dword_2649C6000, v22, v23, "Analytics for %s is not enabled in the current config", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v25);
        MEMORY[0x266749940](v25, -1, -1);
        MEMORY[0x266749940](v24, -1, -1);
      }
    }
  }

  else
  {
    if (qword_27FF883F8 != -1)
    {
      swift_once();
    }

    v26 = sub_264B40964();
    __swift_project_value_buffer(v26, qword_27FF8AE40);
    oslog = sub_264B40944();
    v27 = sub_264B41494();
    if (os_log_type_enabled(oslog, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2649C6000, oslog, v27, "missing event name", v28, 2u);
      MEMORY[0x266749940](v28, -1, -1);
    }
  }
}

uint64_t sub_264A5EC3C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_264A5EC94()
{
  result = qword_27FF8A8C0;
  if (!qword_27FF8A8C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF8A8C0);
  }

  return result;
}

id ManagedConfigurationBackedDeviceRestrictionPrimitives.isDeviceRestricted.getter()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result isOnenessAllowed];

    return (v2 ^ 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_264A5ED44()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result isOnenessAllowed];

    return (v2 ^ 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t dispatch thunk of MediaTransportClientSessionProviding.createMediaStream(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2649E0EE4;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MediaTransportClientSessionProviding.captureVideoScreenshot()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264A33224;

  return v9(a1, a2);
}

uint64_t dispatch thunk of MediaTransportClientSessionProviding.setScreenSharingVideoLayer(layer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2649CD850;

  return v11(a1, a2, a3);
}

id FBSDisplayConfiguration.isContinuityDisplay.getter()
{
  v1 = [v0 identity];
  v2 = [v1 isContinuityDisplay];

  return v2;
}

uint64_t FBSDisplayConfiguration.identifier.getter()
{
  v1 = [v0 hardwareIdentifier];
  if (v1)
  {
    v2 = v1;
    v3 = sub_264B41044();

    return v3;
  }

  else
  {
    result = sub_264B41874();
    __break(1u);
  }

  return result;
}

id sub_264A5F250()
{
  v1 = [*v0 identity];
  v2 = [v1 isContinuityDisplay];

  return v2;
}

uint64_t sub_264A5F2A0()
{
  v1 = [*v0 hardwareIdentifier];
  if (v1)
  {
    v2 = v1;
    v3 = sub_264B41044();

    return v3;
  }

  else
  {
    result = sub_264B41874();
    __break(1u);
  }

  return result;
}

uint64_t sub_264A5F37C(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v1 + 128) = 0;
  v3 = OBJC_IVAR____TtC16ScreenSharingKit36AccessibilityBackedDrawEventConsumer_activeStrokeUUID;
  v4 = sub_264B40104();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC16ScreenSharingKit36AccessibilityBackedDrawEventConsumer_strokeRedComponent) = 0x3FE7F7F7F7F7F7F8;
  *(v1 + OBJC_IVAR____TtC16ScreenSharingKit36AccessibilityBackedDrawEventConsumer_strokeGreenComponent) = 0x3FD6969696969697;
  *(v1 + OBJC_IVAR____TtC16ScreenSharingKit36AccessibilityBackedDrawEventConsumer_strokeBlueComponent) = 0x3FEE5E5E5E5E5E5ELL;
  *(v1 + OBJC_IVAR____TtC16ScreenSharingKit36AccessibilityBackedDrawEventConsumer_isInterrupted) = 0;
  v5 = (v1 + OBJC_IVAR____TtC16ScreenSharingKit36AccessibilityBackedDrawEventConsumer_interruptionHandler);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + 120) = a1;
  return v1;
}

uint64_t sub_264A5F470()
{
  sub_2649D04D4(v0 + OBJC_IVAR____TtC16ScreenSharingKit36AccessibilityBackedDrawEventConsumer_activeStrokeUUID, &unk_27FF8BFC0, &qword_264B47140);
  v1 = *(v0 + OBJC_IVAR____TtC16ScreenSharingKit36AccessibilityBackedDrawEventConsumer_interruptionHandler + 8);
  sub_2649CB67C(*(v0 + OBJC_IVAR____TtC16ScreenSharingKit36AccessibilityBackedDrawEventConsumer_interruptionHandler));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for AccessibilityBackedDrawEventConsumer()
{
  result = qword_27FF8A198;
  if (!qword_27FF8A198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264A5F538()
{
  sub_264A0DF00();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_264A5F604(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  return MEMORY[0x2822009F8](sub_264A5F628, v2, 0);
}

uint64_t sub_264A5F628()
{
  v1 = *(v0 + 128);
  v2 = (*(v0 + 136) + OBJC_IVAR____TtC16ScreenSharingKit36AccessibilityBackedDrawEventConsumer_interruptionHandler);
  v3 = *v2;
  v4 = v2[1];
  *v2 = *(v0 + 120);
  v2[1] = v1;

  sub_2649CB67C(v3);
  v5 = swift_allocObject();
  swift_weakInit();
  *(v0 + 40) = &type metadata for ConcreteAXUIClientProvider;
  *(v0 + 48) = &off_287657A80;
  v6 = type metadata accessor for AnnotationServicesClient();
  v7 = objc_allocWithZone(v6);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, &type metadata for ConcreteAXUIClientProvider);
  *(v0 + 80) = &type metadata for ConcreteAXUIClientProvider;
  *(v0 + 88) = &off_287657A80;
  v8 = &v7[OBJC_IVAR____TtC16ScreenSharingKit24AnnotationServicesClient_serviceName];
  *v8 = 0xD000000000000020;
  *(v8 + 1) = 0x8000000264B5CE30;
  v9 = &v7[OBJC_IVAR____TtC16ScreenSharingKit24AnnotationServicesClient_screenSharingClient];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = &v7[OBJC_IVAR____TtC16ScreenSharingKit24AnnotationServicesClient_interruptionHandler];
  *v10 = sub_264A61AA4;
  v10[1] = v5;
  sub_2649CB5C0(v0 + 56, &v7[OBJC_IVAR____TtC16ScreenSharingKit24AnnotationServicesClient_screenSharingClientProvider]);
  *(v0 + 96) = v7;
  *(v0 + 104) = v6;

  *(v0 + 144) = objc_msgSendSuper2((v0 + 96), sel_init);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v11 = swift_task_alloc();
  *(v0 + 152) = v11;
  *v11 = v0;
  v11[1] = sub_264A5F814;

  return AnnotationServicesClient.startAnnotationService()();
}

uint64_t sub_264A5F814()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 136);
  if (v0)
  {
    v6 = sub_264A5F9AC;
  }

  else
  {
    v6 = sub_264A5F940;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_264A5F940()
{
  v1 = v0[17];
  v2 = *(v1 + 112);
  *(v1 + 112) = v0[18];

  v3 = v0[1];

  return v3();
}

uint64_t sub_264A5F9AC()
{
  v22 = v0;

  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 160);
  v2 = *(v0 + 136);
  v3 = sub_264B40964();
  __swift_project_value_buffer(v3, qword_27FFA71B8);

  v4 = v1;
  v5 = sub_264B40944();
  v6 = sub_264B41494();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 160);
    v8 = *(v0 + 136);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v9 = 136446466;
    *(v0 + 112) = v8;
    type metadata accessor for AccessibilityBackedDrawEventConsumer();

    v12 = sub_264B41064();
    v14 = sub_2649CC004(v12, v13, &v21);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2114;
    v15 = v7;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_2649C6000, v5, v6, "%{public}s error starting accessibility %{public}@", v9, 0x16u);
    sub_2649D04D4(v10, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v9, -1, -1);
  }

  v17 = *(v0 + 160);
  sub_2649E24BC();
  swift_allocError();
  *v18 = 0;
  swift_willThrow();

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_264A5FC18(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = sub_264B41274();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v7;
    v9[5] = a1;
    v10 = a1;
    sub_264A10C20(0, 0, v5, &unk_264B4A350, v9);
  }

  return result;
}

uint64_t sub_264A5FD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_264A5FD70, a4, 0);
}

uint64_t sub_264A5FD70()
{
  v1 = v0[2];
  *(v1 + OBJC_IVAR____TtC16ScreenSharingKit36AccessibilityBackedDrawEventConsumer_isInterrupted) = 1;
  v2 = v1 + OBJC_IVAR____TtC16ScreenSharingKit36AccessibilityBackedDrawEventConsumer_interruptionHandler;
  v3 = *v2;
  if (*v2)
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = *(v2 + 8);
    v7 = sub_264A61BB4(&qword_27FF8A1B8);

    v3(v5, v7, v4);
    sub_2649CB67C(v3);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_264A5FE78()
{
  v1 = *(v0[3] + 112);
  v0[4] = v1;
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_264A5FF5C;

    return AnnotationServicesClient.stopAnnotationService()();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_264A5FF5C()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {
    v4 = *(v3 + 24);

    return MEMORY[0x2822009F8](sub_264A60098, v4, 0);
  }

  else
  {

    v5 = *(v3 + 8);

    return v5();
  }
}

uint64_t sub_264A60098()
{
  v22 = v0;

  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = sub_264B40964();
  __swift_project_value_buffer(v3, qword_27FFA71B8);

  v4 = v1;
  v5 = sub_264B40944();
  v6 = sub_264B41494();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 48);
    v8 = *(v0 + 24);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v9 = 136446466;
    *(v0 + 16) = v8;
    type metadata accessor for AccessibilityBackedDrawEventConsumer();

    v12 = sub_264B41064();
    v14 = sub_2649CC004(v12, v13, &v21);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2114;
    v15 = v7;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_2649C6000, v5, v6, "%{public}s error stopping accessibility %{public}@", v9, 0x16u);
    sub_2649D04D4(v10, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v9, -1, -1);
  }

  v17 = *(v0 + 48);
  sub_2649E24BC();
  swift_allocError();
  *v18 = 2;
  swift_willThrow();

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_264A60308(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  v3 = sub_264B40104();
  v2[30] = v3;
  v4 = *(v3 - 8);
  v2[31] = v4;
  v5 = *(v4 + 64) + 15;
  v2[32] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140) - 8) + 64) + 15;
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v7 = type metadata accessor for ControlMessage();
  v2[37] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A60454, v1, 0);
}

uint64_t sub_264A60454()
{
  v112 = v0;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = sub_264B40964();
  *(v0 + 312) = __swift_project_value_buffer(v3, qword_27FFA71B8);
  sub_2649CB5C0(v2, v0 + 16);

  v4 = sub_264B40944();
  v5 = sub_264B41474();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 232);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v111[0] = v8;
    *v7 = 136315394;
    *(v0 + 216) = v6;
    type metadata accessor for AccessibilityBackedDrawEventConsumer();

    v9 = sub_264B41064();
    v11 = sub_2649CC004(v9, v10, v111);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = *(v0 + 40);
    v13 = __swift_project_boxed_opaque_existential_1((v0 + 16), v12);
    *(v0 + 80) = v12;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v13, v12);
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    v15 = sub_264B41C44();
    v17 = v16;
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v18 = sub_2649CC004(v15, v17, v111);

    *(v7 + 14) = v18;
    _os_log_impl(&dword_2649C6000, v4, v5, "%s did receive message: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  v19 = *(v0 + 232);
  v20 = *(v19 + 112);
  *(v0 + 320) = v20;
  if (!v20)
  {
    sub_2649E24BC();
    swift_allocError();
    *v21 = 4;
    goto LABEL_10;
  }

  if (*(v19 + OBJC_IVAR____TtC16ScreenSharingKit36AccessibilityBackedDrawEventConsumer_isInterrupted))
  {
    sub_264A61A18();
    swift_allocError();
LABEL_10:
    swift_willThrow();
    v22 = *(v0 + 304);
    v24 = *(v0 + 280);
    v23 = *(v0 + 288);
    v26 = *(v0 + 264);
    v25 = *(v0 + 272);
    v27 = *(v0 + 256);

    v28 = *(v0 + 8);
    v29 = 0;
LABEL_15:

    return v28(v29);
  }

  v31 = *(v0 + 296);
  v30 = *(v0 + 304);
  v32 = *(v0 + 224);
  v33 = v32[3];
  v34 = v32[4];
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v35 = *(v34 + 8);
  v36 = v20;
  v35(v33, v34);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  *(v0 + 368) = EnumCaseMultiPayload;
  v38 = *(v0 + 304);
  if (EnumCaseMultiPayload)
  {
    v39 = *(v0 + 232);
    sub_2649DEEBC(v38);

    v40 = sub_264B40944();
    v41 = sub_264B41494();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = *(v0 + 232);
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v111[0] = v44;
      *v43 = 136315138;
      *(v0 + 184) = v42;
      type metadata accessor for AccessibilityBackedDrawEventConsumer();

      v45 = sub_264B41064();
      v47 = sub_2649CC004(v45, v46, v111);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_2649C6000, v40, v41, "%s error decoding draw event", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x266749940](v44, -1, -1);
      MEMORY[0x266749940](v43, -1, -1);
    }

    v48 = *(v0 + 304);
    v49 = *(v0 + 280);
    v50 = *(v0 + 288);
    v52 = *(v0 + 264);
    v51 = *(v0 + 272);
    v53 = *(v0 + 256);

    v28 = *(v0 + 8);
    v29 = *(v0 + 368) == 0;
    goto LABEL_15;
  }

  v55 = *(v38 + 8);
  v110 = *v38;
  v56 = *(v38 + 16);
  if (*(v38 + 32))
  {
    v57 = *(v0 + 288);
    v58 = *(v0 + 240);
    v59 = *(v0 + 248);
    v60 = *(v0 + 232);
    v61 = *(v38 + 24);
    v62 = OBJC_IVAR____TtC16ScreenSharingKit36AccessibilityBackedDrawEventConsumer_activeStrokeUUID;
    swift_beginAccess();
    v108 = v62;
    v109 = v60;
    sub_264A61938(v60 + v62, v57);
    v105 = *(v59 + 48);
    v63 = v105(v57, 1, v58);
    v64 = *(v0 + 288);
    if (v63)
    {
      sub_2649D04D4(*(v0 + 288), &unk_27FF8BFC0, &qword_264B47140);
      v65 = 0;
      v66 = 0;
      v67 = LOBYTE(v55);
      if (LOBYTE(v55))
      {
        goto LABEL_21;
      }
    }

    else
    {
      v86 = *(v0 + 248);
      v85 = *(v0 + 256);
      v107 = v56;
      v87 = *(v0 + 240);
      (*(v86 + 16))(v85, v64, v87);
      sub_2649D04D4(v64, &unk_27FF8BFC0, &qword_264B47140);
      v65 = sub_264B400A4();
      v66 = v88;
      v89 = v87;
      v56 = v107;
      (*(v86 + 8))(v85, v89);
      v67 = LOBYTE(v55);
      if (LOBYTE(v55))
      {
LABEL_21:
        if (v67 == 1)
        {
          v68 = *(v0 + 232);
          if ((*(v68 + 128) & 1) == 0)
          {

            v69 = sub_264B40944();
            v70 = sub_264B41494();

            v106 = v56;
            if (os_log_type_enabled(v69, v70))
            {
              v71 = *(v0 + 232);
              v72 = swift_slowAlloc();
              v73 = swift_slowAlloc();
              v111[0] = v73;
              *v72 = 136315138;
              *(v0 + 200) = v71;
              type metadata accessor for AccessibilityBackedDrawEventConsumer();

              v74 = sub_264B41064();
              v76 = sub_2649CC004(v74, v75, v111);

              *(v72 + 4) = v76;
              _os_log_impl(&dword_2649C6000, v69, v70, "%s Playback received inner stroke before a start stroke.", v72, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v73);
              MEMORY[0x266749940](v73, -1, -1);
              MEMORY[0x266749940](v72, -1, -1);
            }

            v77 = *(v0 + 280);
            v78 = (v0 + 264);
            v79 = *(v0 + 264);
            v81 = *(v0 + 240);
            v80 = *(v0 + 248);
            *(v68 + 128) = 1;
            sub_264B400F4();
            (*(v80 + 56))(v77, 0, 1, v81);
            swift_beginAccess();
            sub_264A619A8(v77, v109 + v108);
            swift_endAccess();
            sub_264A61938(v109 + v108, v79);
            v82 = v79;
            v83 = v81;
            goto LABEL_33;
          }
        }

        else
        {
          v95 = *(v0 + 280);
          v96 = *(v0 + 240);
          v97 = *(v0 + 248);
          v98 = *(v0 + 232);
          *(v98 + 128) = 0;
          (*(v97 + 56))(v95, 1, 1, v96);
          swift_beginAccess();
          sub_264A619A8(v95, v109 + v108);
          swift_endAccess();
          if (*(v98 + 120))
          {
            LOBYTE(v111[0]) = 12;
            sub_264A9113C(v111, 0);
          }
        }

        if (v66)
        {
LABEL_40:
          *(v0 + 344) = v66;
          v104 = swift_task_alloc();
          *(v0 + 352) = v104;
          *v104 = v0;
          v104[1] = sub_264A61120;

          return AnnotationServicesClient.sendDragEvent(_:point:telemetryEventID:)(v65, v66, v110, v56, v61);
        }

LABEL_38:

        v65 = 0;
        v66 = 0xE000000000000000;
        goto LABEL_40;
      }
    }

    v106 = v56;
    v78 = (v0 + 272);
    v91 = *(v0 + 272);
    v90 = *(v0 + 280);
    v93 = *(v0 + 240);
    v92 = *(v0 + 248);
    v94 = *(v0 + 232);

    *(v94 + 128) = 1;
    sub_264B400F4();
    (*(v92 + 56))(v90, 0, 1, v93);
    swift_beginAccess();
    sub_264A619A8(v90, v109 + v108);
    swift_endAccess();
    sub_264A61938(v109 + v108, v91);
    v82 = v91;
    v83 = v93;
LABEL_33:
    if (!v105(v82, 1, v83))
    {
      v99 = *v78;
      v100 = *(v0 + 248);
      v101 = *(v0 + 256);
      v102 = *(v0 + 240);
      (*(v100 + 16))(v101, *v78, v102);
      sub_2649D04D4(v99, &unk_27FF8BFC0, &qword_264B47140);
      v65 = sub_264B400A4();
      v66 = v103;
      (*(v100 + 8))(v101, v102);
      v56 = v106;
      goto LABEL_40;
    }

    sub_2649D04D4(*v78, &unk_27FF8BFC0, &qword_264B47140);
    v56 = v106;
    goto LABEL_38;
  }

  if (*(*(v0 + 232) + 120))
  {
    LOBYTE(v111[0]) = 11;
    sub_264A9113C(v111, 0);
  }

  v84 = swift_task_alloc();
  *(v0 + 328) = v84;
  *v84 = v0;
  v84[1] = sub_264A60F38;

  return AnnotationServicesClient.sendTapEvent(_:_:)(v110, v55, v56);
}

uint64_t sub_264A60F38()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;
  *(*v1 + 336) = v0;

  v5 = *(v2 + 232);
  if (v0)
  {
    v6 = sub_264A61248;
  }

  else
  {
    v6 = sub_264A61064;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_264A61064()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v6 = *(v0 + 256);

  v7 = *(v0 + 8);
  v8 = *(v0 + 368) == 0;

  return v7(v8);
}

uint64_t sub_264A61120()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v9 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v4 = *(v2 + 232);
    v5 = sub_264A614B8;
  }

  else
  {
    v6 = *(v2 + 344);
    v7 = *(v2 + 232);

    v5 = sub_264A61C60;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_264A61248()
{
  v29 = v0;
  v1 = v0[42];
  v2 = v0[39];
  v3 = v0[29];

  v4 = v1;
  v5 = sub_264B40944();
  v6 = sub_264B41494();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[42];
    v8 = v0[29];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28 = v11;
    *v9 = 136446466;
    v0[26] = v8;
    type metadata accessor for AccessibilityBackedDrawEventConsumer();

    v12 = sub_264B41064();
    v14 = sub_2649CC004(v12, v13, &v28);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2114;
    v15 = v7;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_2649C6000, v5, v6, "%{public}s error sending tap event %{public}@", v9, 0x16u);
    sub_2649D04D4(v10, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v9, -1, -1);
  }

  v17 = v0[42];
  v18 = v0[40];
  sub_2649E24BC();
  swift_allocError();
  *v19 = 5;
  swift_willThrow();

  v20 = v0[38];
  v22 = v0[35];
  v21 = v0[36];
  v24 = v0[33];
  v23 = v0[34];
  v25 = v0[32];

  v26 = v0[1];

  return v26(0);
}

uint64_t sub_264A614B8()
{
  v30 = v0;
  v1 = v0[45];
  v2 = v0[43];
  v3 = v0[39];
  v4 = v0[29];

  v5 = v1;
  v6 = sub_264B40944();
  v7 = sub_264B41494();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[45];
    v9 = v0[29];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v12;
    *v10 = 136446466;
    v0[24] = v9;
    type metadata accessor for AccessibilityBackedDrawEventConsumer();

    v13 = sub_264B41064();
    v15 = sub_2649CC004(v13, v14, &v29);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2114;
    v16 = v8;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&dword_2649C6000, v6, v7, "%{public}s error sending drag event %{public}@", v10, 0x16u);
    sub_2649D04D4(v11, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x266749940](v12, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  v18 = v0[45];
  v19 = v0[40];
  sub_2649E24BC();
  swift_allocError();
  *v20 = 6;
  swift_willThrow();

  v21 = v0[38];
  v23 = v0[35];
  v22 = v0[36];
  v25 = v0[33];
  v24 = v0[34];
  v26 = v0[32];

  v27 = v0[1];

  return v27(0);
}

uint64_t sub_264A61730(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2649E0EE4;

  return sub_264A5F604(a1, a2);
}

uint64_t sub_264A617D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649CD850;

  return sub_264A5FE58();
}

uint64_t sub_264A61860(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2649CBEFC;

  return sub_264A60308(a1);
}

uint64_t sub_264A618F4(uint64_t a1)
{
  result = sub_264A61BB4(&qword_27FF8A1A8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_264A61938(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264A619A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_264A61A18()
{
  result = qword_27FF8A1B0;
  if (!qword_27FF8A1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A1B0);
  }

  return result;
}

uint64_t sub_264A61A6C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264A61AAC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264A61AF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2649CD850;

  return sub_264A5FD50(a1, v4, v5, v7, v6);
}

uint64_t sub_264A61BB4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AccessibilityBackedDrawEventConsumer();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_264A61C0C()
{
  result = qword_27FF8A1C0;
  if (!qword_27FF8A1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A1C0);
  }

  return result;
}

uint64_t sub_264A61C64()
{
  v1 = v0;
  v2 = sub_264B40964();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 16);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v9;
    if (qword_27FF88410 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v10 = __swift_project_value_buffer(v2, qword_27FF8AE88);

  v11 = sub_264B40944();
  v12 = sub_264B41484();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = *(v1 + 16);

    _os_log_impl(&dword_2649C6000, v11, v12, "UHIDBackedSystemEventConsumerVendor sessionID: %ld", v13, 0xCu);
    MEMORY[0x266749940](v13, -1, -1);
  }

  else
  {
  }

  v14 = *(v1 + 16);
  v15 = type metadata accessor for UHIDBackedSystemEventConsumer();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_264B400F4();
  *(v18 + OBJC_IVAR____TtC16ScreenSharingKit29UHIDBackedSystemEventConsumer_sessionID) = v14;
  v19 = sub_264B402C4();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_264B402B4();
  if (v22)
  {
    *(v18 + 112) = v22;
    (*(v3 + 16))(v6, v10, v2);
    type metadata accessor for KeyboardEventService();
    swift_allocObject();
    sub_264A62038(&qword_27FF8A1C8, type metadata accessor for KeyboardEventService);
    v23 = sub_264B40234();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();

    v26 = sub_264B40224();
    sub_264B401D4();
    sub_264B401F4();
    sub_264B401F4();
    sub_264B40214();

    *(v18 + 120) = v26;
    sub_264A62038(&qword_27FF8A1D0, type metadata accessor for UHIDBackedSystemEventConsumer);
    return v18;
  }

  else
  {
    result = sub_264B41874();
    __break(1u);
  }

  return result;
}

uint64_t sub_264A6200C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_264A61C64();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_264A62038(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ScreenSharingAnnotationView.init(viewModel:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for ScreenSharingAnnotationViewModel();
  result = sub_264B40E24();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t ScreenSharingAnnotationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A1D8, &qword_264B4A460);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (v26 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A1E0, &qword_264B4A468);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A1E8, &qword_264B4A470);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v26 - v15;
  v18 = *v1;
  v17 = v1[1];
  *v6 = sub_264B40E64();
  v6[1] = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A1F0, &qword_264B4A478);
  sub_264A62350(v18, v17, (v6 + *(v20 + 44)));
  sub_264A62618();
  sub_264B40DF4();
  sub_264A6267C(v6);
  sub_264B40E64();
  sub_264B40C64();
  (*(v8 + 32))(v16, v11, v7);
  v21 = &v16[*(v13 + 44)];
  v22 = v26[5];
  *(v21 + 4) = v26[4];
  *(v21 + 5) = v22;
  *(v21 + 6) = v26[6];
  v23 = v26[1];
  *v21 = v26[0];
  *(v21 + 1) = v23;
  v24 = v26[3];
  *(v21 + 2) = v26[2];
  *(v21 + 3) = v24;
  LOBYTE(v17) = sub_264B40D94();
  sub_264A626E4(v16, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A200, &qword_264B4A480);
  *(a1 + *(result + 36)) = v17;
  return result;
}

uint64_t sub_264A62350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v25 = a3;
  v5 = type metadata accessor for RipplesView();
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v24 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = (&v23 - v10);
  v29 = a1;
  v30 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A218, &qword_264B4A530);
  sub_264B40E34();
  v12 = v26;
  swift_getKeyPath();
  v29 = v12;
  sub_264A62970();
  sub_264B40174();

  swift_beginAccess();
  v13 = *(v12 + 16);

  v26 = a1;
  v27 = a2;
  sub_264B40E34();
  v14 = v28;
  swift_getKeyPath();
  v26 = v14;
  sub_264B40174();

  v23 = *(v14 + 32);

  v26 = a1;
  v27 = a2;
  sub_264B40E34();
  v15 = v28;
  swift_getKeyPath();
  v26 = v15;
  sub_264B40174();

  swift_beginAccess();
  v16 = *(v15 + 24);

  *(v11 + *(v6 + 28)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A220, &qword_264B4A5E0);
  swift_storeEnumTagMultiPayload();
  *v11 = v16;
  v17 = v24;
  sub_264A62AC8(v11, v24);
  v18 = v25;
  v19 = v23;
  *v25 = v13;
  v18[1] = v19;
  v20 = v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A228, &qword_264B4A5E8);
  sub_264A62AC8(v17, v20 + *(v21 + 48));

  sub_264A62B2C(v11);
  sub_264A62B2C(v17);
}

unint64_t sub_264A62618()
{
  result = qword_27FF8A1F8;
  if (!qword_27FF8A1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8A1D8, &qword_264B4A460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A1F8);
  }

  return result;
}

uint64_t sub_264A6267C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A1D8, &qword_264B4A460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264A626E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A1E8, &qword_264B4A470);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264A6277C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_264A627C4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_264A62814()
{
  result = qword_27FF8A208;
  if (!qword_27FF8A208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8A200, &qword_264B4A480);
    sub_264A628A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A208);
  }

  return result;
}

unint64_t sub_264A628A0()
{
  result = qword_27FF8A210;
  if (!qword_27FF8A210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8A1E8, &qword_264B4A470);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8A1D8, &qword_264B4A460);
    sub_264A62618();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A210);
  }

  return result;
}

unint64_t sub_264A62970()
{
  result = qword_27FF88A68;
  if (!qword_27FF88A68)
  {
    type metadata accessor for ScreenSharingAnnotationViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF88A68);
  }

  return result;
}

uint64_t sub_264A629FC(uint64_t a1)
{
  v2 = sub_264B40C44();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_264B40C84();
}

uint64_t sub_264A62AC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RipplesView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264A62B2C(uint64_t a1)
{
  v2 = type metadata accessor for RipplesView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264A62B88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_264B40104();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = type metadata accessor for RTIMessageConsumer.SessionInfo(0);
  v22 = *(v12 - 8);
  v13 = *(v22 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 uuid];
  if (v16)
  {
    v17 = v16;
    sub_264B400D4();

    v18 = *(v5 + 32);
    v18(v11, v9, v4);
    v18(v15, v11, v4);
    *&v15[*(v12 + 20)] = a1;
    sub_264A69288(v15, a2, type metadata accessor for RTIMessageConsumer.SessionInfo);
    return (*(v22 + 56))(a2, 0, 1, v12);
  }

  else
  {

    v20 = *(v22 + 56);

    return v20(a2, 1, 1, v12);
  }
}

uint64_t sub_264A62DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_264B400C4() & 1) == 0)
  {
    return 0;
  }

  sub_2649D8B90(0, &qword_27FF8A8C0, 0x277D82BB8);
  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  return sub_264B415E4() & 1;
}

uint64_t sub_264A62E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = *(*(type metadata accessor for RTIMessage() - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v7 = *(*(type metadata accessor for RTIMessageConsumer.SessionInfo(0) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v8 = type metadata accessor for RTIMessageConsumer.RTISessionAction(0);
  v5[9] = v8;
  v9 = *(v8 - 8);
  v5[10] = v9;
  v10 = *(v9 + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A338, &qword_264B4A7D0) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8A340, &qword_264B4A7D8);
  v5[14] = v12;
  v13 = *(v12 - 8);
  v5[15] = v13;
  v14 = *(v13 + 64) + 15;
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A6301C, 0, 0);
}

uint64_t sub_264A6301C()
{
  v1 = v0[16];
  v2 = v0[5];
  v3 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A320, &qword_264B4A788);
  sub_264B412C4();
  swift_beginAccess();
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_264A63100;
  v6 = v0[16];
  v7 = v0[13];
  v8 = v0[14];

  return MEMORY[0x2822003E8](v7, 0, 0, v8);
}

uint64_t sub_264A63100()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264A631FC, 0, 0);
}

uint64_t sub_264A631FC()
{
  v1 = v0[13];
  if ((*(v0[10] + 48))(v1, 1, v0[9]) != 1)
  {
    v2 = v0[6];
    sub_264A69288(v1, v0[12], type metadata accessor for RTIMessageConsumer.RTISessionAction);
    Strong = swift_weakLoadStrong();
    v0[18] = Strong;
    v4 = v0[12];
    if (Strong)
    {
      v5 = v0[9];
      sub_264A692F0(v4, v0[11], type metadata accessor for RTIMessageConsumer.RTISessionAction);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v7 = v0[11];
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          sub_264A69288(v7, v0[7], type metadata accessor for RTIMessage);
          v17 = swift_task_alloc();
          v0[21] = v17;
          *v17 = v0;
          v17[1] = sub_264A638A4;
          v18 = v0[7];

          return sub_264A65AA8(v18);
        }

        else
        {
          sub_264A69288(v7, v0[7], type metadata accessor for RTIMessage);
          v21 = swift_task_alloc();
          v0[22] = v21;
          *v21 = v0;
          v21[1] = sub_264A639A0;
          v22 = v0[7];

          return sub_264A66810(v22);
        }
      }

      else if (EnumCaseMultiPayload)
      {
        sub_264A69288(v7, v0[8], type metadata accessor for RTIMessageConsumer.SessionInfo);
        v19 = swift_task_alloc();
        v0[20] = v19;
        *v19 = v0;
        v19[1] = sub_264A637A8;
        v20 = v0[8];

        return sub_264A64CE8(v20);
      }

      else
      {
        sub_264A69288(v7, v0[8], type metadata accessor for RTIMessageConsumer.SessionInfo);
        v8 = swift_task_alloc();
        v0[19] = v8;
        *v8 = v0;
        v8[1] = sub_264A635C4;
        v9 = v0[8];

        return sub_264A63B84(v9);
      }
    }

    sub_264A691B8(v4, type metadata accessor for RTIMessageConsumer.RTISessionAction);
    v11 = v0[13];
  }

  v13 = v0[11];
  v12 = v0[12];
  v15 = v0[7];
  v14 = v0[8];
  (*(v0[15] + 8))(v0[16], v0[14]);

  v16 = v0[1];

  return v16();
}

uint64_t sub_264A635C4()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264A636C0, 0, 0);
}

uint64_t sub_264A636C0()
{
  v1 = v0[18];
  v2 = v0[8];

  sub_264A691B8(v2, type metadata accessor for RTIMessageConsumer.SessionInfo);
  sub_264A691B8(v0[12], type metadata accessor for RTIMessageConsumer.RTISessionAction);
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_264A63100;
  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[14];

  return MEMORY[0x2822003E8](v6, 0, 0, v7);
}

uint64_t sub_264A637A8()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264A6B50C, 0, 0);
}

uint64_t sub_264A638A4()
{
  v1 = *(*v0 + 168);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264A6B510, 0, 0);
}

uint64_t sub_264A639A0()
{
  v1 = *(*v0 + 176);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264A63A9C, 0, 0);
}

uint64_t sub_264A63A9C()
{
  v1 = v0[18];
  v2 = v0[7];

  sub_264A691B8(v2, type metadata accessor for RTIMessage);
  sub_264A691B8(v0[12], type metadata accessor for RTIMessageConsumer.RTISessionAction);
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_264A63100;
  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[14];

  return MEMORY[0x2822003E8](v6, 0, 0, v7);
}

uint64_t sub_264A63B84(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for RTIMessage();
  v2[10] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v5 = sub_264B40104();
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = *(v6 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A328, &qword_264B4A798) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v9 = type metadata accessor for RTIMessageConsumer.SessionInfo(0);
  v2[18] = v9;
  v10 = *(v9 - 8);
  v2[19] = v10;
  v11 = *(v10 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A63D2C, v1, 0);
}

uint64_t sub_264A63D2C()
{
  v61 = v0;
  if (qword_27FF88420 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[8];
  v3 = sub_264B40964();
  __swift_project_value_buffer(v3, qword_27FF8AEB8);
  sub_264A692F0(v2, v1, type metadata accessor for RTIMessageConsumer.SessionInfo);
  v4 = sub_264B40944();
  v5 = sub_264B414B4();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[21];
  if (v6)
  {
    v8 = v0[12];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v60 = v10;
    *v9 = 136315138;
    sub_264A69358(&qword_27FF88A70, MEMORY[0x277CC95F0]);
    v11 = sub_264B41A64();
    v13 = v12;
    sub_264A691B8(v7, type metadata accessor for RTIMessageConsumer.SessionInfo);
    v14 = sub_2649CC004(v11, v13, &v60);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_2649C6000, v4, v5, "inputSessionDidBegin: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x266749940](v10, -1, -1);
    MEMORY[0x266749940](v9, -1, -1);
  }

  else
  {

    sub_264A691B8(v7, type metadata accessor for RTIMessageConsumer.SessionInfo);
  }

  v15 = v0[18];
  v16 = v0[19];
  v17 = v0[17];
  v18 = v0[9];
  v19 = OBJC_IVAR____TtC16ScreenSharingKit18RTIMessageConsumer_currentSessionInfo;
  v0[22] = OBJC_IVAR____TtC16ScreenSharingKit18RTIMessageConsumer_currentSessionInfo;
  swift_beginAccess();
  sub_264A69218(v18 + v19, v17);
  if ((*(v16 + 48))(v17, 1, v15) == 1)
  {
    sub_2649D04D4(v0[17], &qword_27FF8A328, &qword_264B4A798);
LABEL_10:
    v22 = v0[22];
    v23 = v0[18];
    v24 = v0[19];
    v25 = v0[16];
    v26 = v0[9];
    sub_264A692F0(v0[8], v25, type metadata accessor for RTIMessageConsumer.SessionInfo);
    (*(v24 + 56))(v25, 0, 1, v23);
    swift_beginAccess();
    sub_264A6B49C(v25, v26 + v22);
    swift_endAccess();
    v27 = swift_task_alloc();
    v0[26] = v27;
    *v27 = v0;
    v27[1] = sub_264A6460C;
    v28 = v0[8];
    v29 = v0[9];

    return sub_264A647DC(v28);
  }

  v20 = v0[12];
  v21 = v0[8];
  sub_264A69288(v0[17], v0[20], type metadata accessor for RTIMessageConsumer.SessionInfo);
  sub_264A69358(&unk_27FF89390, MEMORY[0x277CC95F0]);
  if (sub_264B40F94())
  {
    sub_264A691B8(v0[20], type metadata accessor for RTIMessageConsumer.SessionInfo);
    goto LABEL_10;
  }

  v32 = v0[14];
  v31 = v0[15];
  v33 = v0[12];
  v34 = *(v0[13] + 16);
  v34(v31, v0[20], v33);
  v34(v32, v31, v33);
  v35 = sub_264B40944();
  v36 = sub_264B41494();
  v37 = os_log_type_enabled(v35, v36);
  v39 = v0[13];
  v38 = v0[14];
  v40 = v0[12];
  if (v37)
  {
    buf = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v60 = v59;
    *buf = 136315138;
    sub_264A69358(&qword_27FF88A70, MEMORY[0x277CC95F0]);
    v41 = v34;
    v42 = sub_264B41A64();
    v44 = v43;
    v57 = v36;
    v47 = *(v39 + 8);
    v46 = v39 + 8;
    v45 = v47;
    v47(v38, v40);
    v48 = v42;
    v34 = v41;
    v49 = sub_2649CC004(v48, v44, &v60);

    *(buf + 4) = v49;
    _os_log_impl(&dword_2649C6000, v35, v57, "Received inputSessionDidBegin with a new sessionID while one already exists with ID: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x266749940](v59, -1, -1);
    MEMORY[0x266749940](buf, -1, -1);
  }

  else
  {

    v50 = *(v39 + 8);
    v46 = v39 + 8;
    v45 = v50;
    v50(v38, v40);
  }

  v0[23] = v46;
  v0[24] = v45;
  v51 = v0[11];
  v52 = v0[10];
  v34(v51, v0[15], v0[12]);
  v53 = v51 + *(v52 + 20);
  *v53 = xmmword_264B4A5F0;
  *(v53 + 16) = 0x1000000000000000;
  *(v53 + 24) = 1;
  v54 = swift_task_alloc();
  v0[25] = v54;
  *v54 = v0;
  v54[1] = sub_264A6438C;
  v55 = v0[11];
  v56 = v0[9];

  return sub_264A65AA8(v55);
}

uint64_t sub_264A6438C()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264A6449C, v2, 0);
}

uint64_t sub_264A6449C()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[20];
  v4 = v0[15];
  v5 = v0[12];
  sub_264A691B8(v0[11], type metadata accessor for RTIMessage);
  v1(v4, v5);
  sub_264A691B8(v3, type metadata accessor for RTIMessageConsumer.SessionInfo);
  v6 = v0[22];
  v7 = v0[18];
  v8 = v0[19];
  v9 = v0[16];
  v10 = v0[9];
  sub_264A692F0(v0[8], v9, type metadata accessor for RTIMessageConsumer.SessionInfo);
  (*(v8 + 56))(v9, 0, 1, v7);
  swift_beginAccess();
  sub_264A6B49C(v9, v10 + v6);
  swift_endAccess();
  v11 = swift_task_alloc();
  v0[26] = v11;
  *v11 = v0;
  v11[1] = sub_264A6460C;
  v12 = v0[8];
  v13 = v0[9];

  return sub_264A647DC(v12);
}

uint64_t sub_264A6460C()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 136);
  v5 = *(*v0 + 128);
  v6 = *(*v0 + 120);
  v7 = *(*v0 + 112);
  v8 = *(*v0 + 88);
  v11 = *v0;

  v9 = *(v11 + 8);

  return v9();
}

uint64_t sub_264A647DC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for RTIMessage();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A64870, v1, 0);
}

id sub_264A64870()
{
  v25 = v0;
  v1 = [*(v0[2] + *(type metadata accessor for RTIMessageConsumer.SessionInfo(0) + 20)) currentDataPayload];
  v0[6] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [v2 version];
    result = [v2 data];
    if (result)
    {
      v5 = result;
      v7 = v0[4];
      v6 = v0[5];
      v8 = v0[2];
      v9 = sub_264B40024();
      v11 = v10;

      v12 = sub_264B40104();
      (*(*(v12 - 8) + 16))(v6, v8, v12);
      v13 = v6 + *(v7 + 20);
      *v13 = v3;
      *(v13 + 8) = v9;
      *(v13 + 16) = v11;
      *(v13 + 24) = 0;
      v14 = swift_task_alloc();
      v0[7] = v14;
      *v14 = v0;
      v14[1] = sub_264A64B54;
      v15 = v0[5];
      v16 = v0[3];

      return sub_264A65AA8(v15);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_27FF88420 != -1)
    {
      swift_once();
    }

    v17 = sub_264B40964();
    __swift_project_value_buffer(v17, qword_27FF8AEB8);
    v18 = sub_264B40944();
    v19 = sub_264B41494();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v24 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_2649CC004(0xD00000000000001BLL, 0x8000000264B5D0F0, &v24);
      _os_log_impl(&dword_2649C6000, v18, v19, "%s session.currentDataPayload did not return any data payload", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x266749940](v21, -1, -1);
      MEMORY[0x266749940](v20, -1, -1);
    }

    v22 = v0[5];

    v23 = v0[1];

    return v23();
  }

  return result;
}

uint64_t sub_264A64B54()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264A64C64, v2, 0);
}

uint64_t sub_264A64C64()
{
  v1 = *(v0 + 40);

  sub_264A691B8(v1, type metadata accessor for RTIMessage);
  v2 = *(v0 + 40);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_264A64CE8(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A328, &qword_264B4A798) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for RTIMessageConsumer.SessionInfo(0);
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v6 = *(v5 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A64DF8, v1, 0);
}

uint64_t sub_264A64DF8()
{
  v54 = v0;
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = OBJC_IVAR____TtC16ScreenSharingKit18RTIMessageConsumer_currentSessionInfo;
  swift_beginAccess();
  sub_264A69218(v4 + v5, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2649D04D4(v0[7], &qword_27FF8A328, &qword_264B4A798);
    if (qword_27FF88420 != -1)
    {
      swift_once();
    }

    v6 = sub_264B40964();
    __swift_project_value_buffer(v6, qword_27FF8AEB8);
    v7 = sub_264B40944();
    v8 = sub_264B41494();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2649C6000, v7, v8, "Received documentStateDidChange while we don't have a session", v9, 2u);
      MEMORY[0x266749940](v9, -1, -1);
    }

LABEL_19:
    v45 = v0[11];
    v44 = v0[12];
    v46 = v0[10];
    v47 = v0[7];

    v48 = v0[1];

    return v48();
  }

  v10 = v0[5];
  sub_264A69288(v0[7], v0[12], type metadata accessor for RTIMessageConsumer.SessionInfo);
  if ((sub_264B400C4() & 1) == 0 || (v11 = v0[12], v12 = v0[8], v13 = v0[5], sub_2649D8B90(0, &qword_27FF8A8C0, 0x277D82BB8), v14 = *(v12 + 20), v15 = *(v13 + v14), v16 = *(v11 + v14), (sub_264B415E4() & 1) == 0))
  {
    if (qword_27FF88420 != -1)
    {
      swift_once();
    }

    v30 = v0[12];
    v31 = v0[10];
    v32 = sub_264B40964();
    __swift_project_value_buffer(v32, qword_27FF8AEB8);
    sub_264A692F0(v30, v31, type metadata accessor for RTIMessageConsumer.SessionInfo);
    v33 = sub_264B40944();
    v34 = sub_264B41494();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v0[12];
    v37 = v0[10];
    if (v35)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v53 = v39;
      *v38 = 136315138;
      sub_264B40104();
      sub_264A69358(&qword_27FF88A70, MEMORY[0x277CC95F0]);
      v40 = sub_264B41A64();
      v42 = v41;
      sub_264A691B8(v37, type metadata accessor for RTIMessageConsumer.SessionInfo);
      v43 = sub_2649CC004(v40, v42, &v53);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_2649C6000, v33, v34, "Received documentStateDidChange with a new sessionID while one already exists with ID: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x266749940](v39, -1, -1);
      MEMORY[0x266749940](v38, -1, -1);
    }

    else
    {

      sub_264A691B8(v37, type metadata accessor for RTIMessageConsumer.SessionInfo);
    }

    sub_264A691B8(v36, type metadata accessor for RTIMessageConsumer.SessionInfo);
    goto LABEL_19;
  }

  if (qword_27FF88420 != -1)
  {
    swift_once();
  }

  v17 = v0[11];
  v18 = v0[5];
  v19 = sub_264B40964();
  __swift_project_value_buffer(v19, qword_27FF8AEB8);
  sub_264A692F0(v18, v17, type metadata accessor for RTIMessageConsumer.SessionInfo);
  v20 = sub_264B40944();
  v21 = sub_264B414B4();
  v22 = os_log_type_enabled(v20, v21);
  v23 = v0[11];
  if (v22)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v53 = v25;
    *v24 = 136315138;
    sub_264B40104();
    sub_264A69358(&qword_27FF88A70, MEMORY[0x277CC95F0]);
    v26 = sub_264B41A64();
    v28 = v27;
    sub_264A691B8(v23, type metadata accessor for RTIMessageConsumer.SessionInfo);
    v29 = sub_2649CC004(v26, v28, &v53);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_2649C6000, v20, v21, "documentStateDidChange: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x266749940](v25, -1, -1);
    MEMORY[0x266749940](v24, -1, -1);
  }

  else
  {

    sub_264A691B8(v23, type metadata accessor for RTIMessageConsumer.SessionInfo);
  }

  v50 = swift_task_alloc();
  v0[13] = v50;
  *v50 = v0;
  v50[1] = sub_264A65468;
  v51 = v0[12];
  v52 = v0[6];

  return sub_264A6561C(v51);
}

uint64_t sub_264A65468()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264A65578, v2, 0);
}

uint64_t sub_264A65578()
{
  sub_264A691B8(v0[12], type metadata accessor for RTIMessageConsumer.SessionInfo);
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_264A6561C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for RTIMessage();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A656B0, v1, 0);
}

id sub_264A656B0()
{
  v25 = v0;
  v1 = [*(v0[2] + *(type metadata accessor for RTIMessageConsumer.SessionInfo(0) + 20)) currentDataPayload];
  v0[6] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [v2 version];
    result = [v2 data];
    if (result)
    {
      v5 = result;
      v7 = v0[4];
      v6 = v0[5];
      v8 = v0[2];
      v9 = sub_264B40024();
      v11 = v10;

      v12 = sub_264B40104();
      (*(*(v12 - 8) + 16))(v6, v8, v12);
      v13 = v6 + *(v7 + 20);
      *v13 = v3;
      *(v13 + 8) = v9;
      *(v13 + 16) = v11 | 0x2000000000000000;
      *(v13 + 24) = 0;
      v14 = swift_task_alloc();
      v0[7] = v14;
      *v14 = v0;
      v14[1] = sub_264A65998;
      v15 = v0[5];
      v16 = v0[3];

      return sub_264A65AA8(v15);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_27FF88420 != -1)
    {
      swift_once();
    }

    v17 = sub_264B40964();
    __swift_project_value_buffer(v17, qword_27FF8AEB8);
    v18 = sub_264B40944();
    v19 = sub_264B41494();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v24 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_2649CC004(0xD000000000000020, 0x8000000264B5D0C0, &v24);
      _os_log_impl(&dword_2649C6000, v18, v19, "%s session.currentDataPayload did not return any data payload", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x266749940](v21, -1, -1);
      MEMORY[0x266749940](v20, -1, -1);
    }

    v22 = v0[5];

    v23 = v0[1];

    return v23();
  }

  return result;
}

uint64_t sub_264A65998()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264A6B514, v2, 0);
}

uint64_t sub_264A65AA8(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = type metadata accessor for RTIMessage();
  v2[20] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A328, &qword_264B4A798) - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v6 = type metadata accessor for RTIMessageConsumer.SessionInfo(0);
  v2[26] = v6;
  v7 = *(v6 - 8);
  v2[27] = v7;
  v8 = *(v7 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A65C00, v1, 0);
}

uint64_t sub_264A65C00()
{
  v73 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = *(v0 + 152);
  v5 = OBJC_IVAR____TtC16ScreenSharingKit18RTIMessageConsumer_currentSessionInfo;
  swift_beginAccess();
  sub_264A69218(v4 + v5, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2649D04D4(*(v0 + 200), &qword_27FF8A328, &qword_264B4A798);
    if (qword_27FF88420 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 184);
    v7 = *(v0 + 144);
    v8 = sub_264B40964();
    __swift_project_value_buffer(v8, qword_27FF8AEB8);
    sub_264A692F0(v7, v6, type metadata accessor for RTIMessage);
    v9 = sub_264B40944();
    v10 = sub_264B41494();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 184);
    if (v11)
    {
      v13 = *(v0 + 160);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v72 = v15;
      *v14 = 136446210;
      v16 = v12 + *(v13 + 20);
      v17 = *v16;
      v18 = *(v16 + 8);
      v19 = *(v16 + 16);
      v20 = *(v16 + 24);
      *(v0 + 56) = *v16;
      *(v0 + 64) = v18;
      *(v0 + 72) = v19;
      *(v0 + 80) = v20;
      sub_264A6B440(v17, v18, v19, v20);
      v21 = sub_264B41064();
      v23 = v22;
      sub_264A691B8(v12, type metadata accessor for RTIMessage);
      v24 = sub_2649CC004(v21, v23, &v72);

      *(v14 + 4) = v24;
      _os_log_impl(&dword_2649C6000, v9, v10, "Received %{public}s while we don't have a session", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x266749940](v15, -1, -1);
      MEMORY[0x266749940](v14, -1, -1);

LABEL_18:
      v64 = *(v0 + 224);
      v63 = *(v0 + 232);
      v66 = *(v0 + 192);
      v65 = *(v0 + 200);
      v68 = *(v0 + 176);
      v67 = *(v0 + 184);
      v69 = *(v0 + 168);

      v70 = *(v0 + 8);

      return v70();
    }

    v34 = type metadata accessor for RTIMessage;
    v35 = v12;
LABEL_17:
    sub_264A691B8(v35, v34);
    goto LABEL_18;
  }

  v25 = *(v0 + 144);
  sub_264A69288(*(v0 + 200), *(v0 + 232), type metadata accessor for RTIMessageConsumer.SessionInfo);
  if ((sub_264B400C4() & 1) == 0)
  {
    if (qword_27FF88420 != -1)
    {
      swift_once();
    }

    v36 = *(v0 + 224);
    v37 = *(v0 + 232);
    v38 = *(v0 + 192);
    v39 = *(v0 + 144);
    v40 = sub_264B40964();
    __swift_project_value_buffer(v40, qword_27FF8AEB8);
    sub_264A692F0(v39, v38, type metadata accessor for RTIMessage);
    sub_264A692F0(v37, v36, type metadata accessor for RTIMessageConsumer.SessionInfo);
    v41 = sub_264B40944();
    v42 = sub_264B41494();
    v43 = os_log_type_enabled(v41, v42);
    v45 = *(v0 + 224);
    v44 = *(v0 + 232);
    v46 = *(v0 + 192);
    if (v43)
    {
      v47 = *(v0 + 160);
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v72 = v49;
      *v48 = 136446466;
      v50 = v46 + *(v47 + 20);
      v51 = *v50;
      v52 = *(v50 + 8);
      v53 = *(v50 + 16);
      v54 = *(v50 + 24);
      *(v0 + 88) = *v50;
      *(v0 + 96) = v52;
      *(v0 + 104) = v53;
      *(v0 + 112) = v54;
      sub_264A6B440(v51, v52, v53, v54);
      v55 = sub_264B41064();
      v57 = v56;
      sub_264A691B8(v46, type metadata accessor for RTIMessage);
      v58 = sub_2649CC004(v55, v57, &v72);

      *(v48 + 4) = v58;
      *(v48 + 12) = 2080;
      sub_264B40104();
      sub_264A69358(&qword_27FF88A70, MEMORY[0x277CC95F0]);
      v59 = sub_264B41A64();
      v61 = v60;
      sub_264A691B8(v45, type metadata accessor for RTIMessageConsumer.SessionInfo);
      v62 = sub_2649CC004(v59, v61, &v72);

      *(v48 + 14) = v62;
      _os_log_impl(&dword_2649C6000, v41, v42, "Received %{public}s with a new sessionID while one already exists with ID: %s", v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266749940](v49, -1, -1);
      MEMORY[0x266749940](v48, -1, -1);
    }

    else
    {

      sub_264A691B8(v45, type metadata accessor for RTIMessageConsumer.SessionInfo);
      sub_264A691B8(v46, type metadata accessor for RTIMessage);
    }

    v35 = v44;
    v34 = type metadata accessor for RTIMessageConsumer.SessionInfo;
    goto LABEL_17;
  }

  v26 = *(v0 + 152);
  v27 = *(v0 + 144);
  v28 = *(v26 + 128);
  v29 = *(v26 + 136);
  *(v0 + 40) = *(v0 + 160);
  *(v0 + 48) = &off_28765CD50;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  sub_264A692F0(v27, boxed_opaque_existential_1, type metadata accessor for RTIMessage);
  v71 = (v28 + *v28);
  v31 = v28[1];
  v32 = swift_task_alloc();
  *(v0 + 240) = v32;
  *v32 = v0;
  v32[1] = sub_264A662F0;

  return v71(v0 + 16);
}

uint64_t sub_264A662F0()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v8 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v4 = *(v2 + 152);
    v5 = sub_264A664E0;
  }

  else
  {
    v6 = *(v2 + 152);
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
    v5 = sub_264A66418;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_264A66418()
{
  sub_264A691B8(v0[29], type metadata accessor for RTIMessageConsumer.SessionInfo);
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[24];
  v3 = v0[25];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[21];

  v8 = v0[1];

  return v8();
}

uint64_t sub_264A664E0()
{
  v35 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_27FF88420 != -1)
  {
    swift_once();
  }

  v1 = v0[31];
  v2 = v0[22];
  v3 = v0[18];
  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FF8AEB8);
  sub_264A692F0(v3, v2, type metadata accessor for RTIMessage);
  v5 = v1;
  v6 = sub_264B40944();
  v7 = sub_264B41494();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[31];
  v10 = v0[29];
  v11 = v0[22];
  if (v8)
  {
    v33 = v0[29];
    v12 = v0[20];
    v13 = v0[21];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v34 = v16;
    *v14 = 136315394;
    sub_264A692F0(v11, v13, type metadata accessor for RTIMessage);
    v17 = sub_264B41064();
    v19 = v18;
    sub_264A691B8(v11, type metadata accessor for RTIMessage);
    v20 = sub_2649CC004(v17, v19, &v34);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2112;
    v21 = v9;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v22;
    *v15 = v22;
    _os_log_impl(&dword_2649C6000, v6, v7, "Failed to send rti message: %s with error: %@", v14, 0x16u);
    sub_2649D04D4(v15, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x266749940](v16, -1, -1);
    MEMORY[0x266749940](v14, -1, -1);

    v23 = v33;
  }

  else
  {

    sub_264A691B8(v11, type metadata accessor for RTIMessage);
    v23 = v10;
  }

  sub_264A691B8(v23, type metadata accessor for RTIMessageConsumer.SessionInfo);
  v25 = v0[28];
  v24 = v0[29];
  v27 = v0[24];
  v26 = v0[25];
  v29 = v0[22];
  v28 = v0[23];
  v30 = v0[21];

  v31 = v0[1];

  return v31();
}

uint64_t sub_264A66810(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = type metadata accessor for RTIMessage();
  v2[18] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A328, &qword_264B4A798) - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v6 = type metadata accessor for RTIMessageConsumer.SessionInfo(0);
  v2[23] = v6;
  v7 = *(v6 - 8);
  v2[24] = v7;
  v8 = *(v7 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A6695C, v1, 0);
}

uint64_t sub_264A6695C()
{
  v67 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  v4 = *(v0 + 136);
  v5 = OBJC_IVAR____TtC16ScreenSharingKit18RTIMessageConsumer_currentSessionInfo;
  *(v0 + 216) = OBJC_IVAR____TtC16ScreenSharingKit18RTIMessageConsumer_currentSessionInfo;
  swift_beginAccess();
  sub_264A69218(v4 + v5, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2649D04D4(*(v0 + 176), &qword_27FF8A328, &qword_264B4A798);
    if (qword_27FF88420 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 152);
    v7 = *(v0 + 128);
    v8 = sub_264B40964();
    __swift_project_value_buffer(v8, qword_27FF8AEB8);
    sub_264A692F0(v7, v6, type metadata accessor for RTIMessage);
    v9 = sub_264B40944();
    v10 = sub_264B41494();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 152);
    if (v11)
    {
      v13 = *(v0 + 144);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v66 = v15;
      *v14 = 136446210;
      v16 = v12 + *(v13 + 20);
      v17 = *v16;
      v18 = *(v16 + 8);
      v19 = *(v16 + 16);
      v20 = *(v16 + 24);
      *(v0 + 16) = *v16;
      *(v0 + 24) = v18;
      *(v0 + 32) = v19;
      *(v0 + 40) = v20;
      sub_264A6B440(v17, v18, v19, v20);
      v21 = sub_264B41064();
      v23 = v22;
      sub_264A691B8(v12, type metadata accessor for RTIMessage);
      v24 = sub_2649CC004(v21, v23, &v66);

      *(v14 + 4) = v24;
      _os_log_impl(&dword_2649C6000, v9, v10, "Received %{public}s while we don't have a session", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x266749940](v15, -1, -1);
      MEMORY[0x266749940](v14, -1, -1);

LABEL_18:
      v60 = *(v0 + 200);
      v59 = *(v0 + 208);
      v62 = *(v0 + 168);
      v61 = *(v0 + 176);
      v64 = *(v0 + 152);
      v63 = *(v0 + 160);

      v65 = *(v0 + 8);

      return v65();
    }

    v30 = type metadata accessor for RTIMessage;
    v31 = v12;
LABEL_17:
    sub_264A691B8(v31, v30);
    goto LABEL_18;
  }

  v25 = *(v0 + 128);
  sub_264A69288(*(v0 + 176), *(v0 + 208), type metadata accessor for RTIMessageConsumer.SessionInfo);
  if ((sub_264B400C4() & 1) == 0)
  {
    if (qword_27FF88420 != -1)
    {
      swift_once();
    }

    v32 = *(v0 + 200);
    v33 = *(v0 + 208);
    v34 = *(v0 + 160);
    v35 = *(v0 + 128);
    v36 = sub_264B40964();
    __swift_project_value_buffer(v36, qword_27FF8AEB8);
    sub_264A692F0(v35, v34, type metadata accessor for RTIMessage);
    sub_264A692F0(v33, v32, type metadata accessor for RTIMessageConsumer.SessionInfo);
    v37 = sub_264B40944();
    v38 = sub_264B41494();
    v39 = os_log_type_enabled(v37, v38);
    v41 = *(v0 + 200);
    v40 = *(v0 + 208);
    v42 = *(v0 + 160);
    if (v39)
    {
      v43 = *(v0 + 144);
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v66 = v45;
      *v44 = 136446466;
      v46 = v42 + *(v43 + 20);
      v47 = *v46;
      v48 = *(v46 + 8);
      v49 = *(v46 + 16);
      v50 = *(v46 + 24);
      *(v0 + 48) = *v46;
      *(v0 + 56) = v48;
      *(v0 + 64) = v49;
      *(v0 + 72) = v50;
      sub_264A6B440(v47, v48, v49, v50);
      v51 = sub_264B41064();
      v53 = v52;
      sub_264A691B8(v42, type metadata accessor for RTIMessage);
      v54 = sub_2649CC004(v51, v53, &v66);

      *(v44 + 4) = v54;
      *(v44 + 12) = 2080;
      sub_264B40104();
      sub_264A69358(&qword_27FF88A70, MEMORY[0x277CC95F0]);
      v55 = sub_264B41A64();
      v57 = v56;
      sub_264A691B8(v41, type metadata accessor for RTIMessageConsumer.SessionInfo);
      v58 = sub_2649CC004(v55, v57, &v66);

      *(v44 + 14) = v58;
      _os_log_impl(&dword_2649C6000, v37, v38, "Received %{public}s with a new sessionID while one already exists with ID: %s", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266749940](v45, -1, -1);
      MEMORY[0x266749940](v44, -1, -1);
    }

    else
    {

      sub_264A691B8(v41, type metadata accessor for RTIMessageConsumer.SessionInfo);
      sub_264A691B8(v42, type metadata accessor for RTIMessage);
    }

    v31 = v40;
    v30 = type metadata accessor for RTIMessageConsumer.SessionInfo;
    goto LABEL_17;
  }

  v26 = swift_task_alloc();
  *(v0 + 224) = v26;
  *v26 = v0;
  v26[1] = sub_264A66FAC;
  v27 = *(v0 + 128);
  v28 = *(v0 + 136);

  return sub_264A65AA8(v27);
}

uint64_t sub_264A66FAC()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264A670BC, v2, 0);
}

uint64_t sub_264A670BC()
{
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[21];
  v5 = v0[17];
  sub_264A691B8(v0[26], type metadata accessor for RTIMessageConsumer.SessionInfo);
  (*(v3 + 56))(v4, 1, 1, v2);
  swift_beginAccess();
  sub_264A6B49C(v4, v5 + v1);
  swift_endAccess();
  v7 = v0[25];
  v6 = v0[26];
  v9 = v0[21];
  v8 = v0[22];
  v11 = v0[19];
  v10 = v0[20];

  v12 = v0[1];

  return v12();
}

uint64_t sub_264A67200()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 136);

  sub_2649D04D4(v0 + OBJC_IVAR____TtC16ScreenSharingKit18RTIMessageConsumer_currentSessionInfo, &qword_27FF8A328, &qword_264B4A798);
  v3 = OBJC_IVAR____TtC16ScreenSharingKit18RTIMessageConsumer_sessionActionStream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A320, &qword_264B4A788);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC16ScreenSharingKit18RTIMessageConsumer_sessionActionContinuation;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A318, &qword_264B4A780);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_264A67330()
{
  sub_264A67510(319, &qword_27FF8A260, type metadata accessor for RTIMessageConsumer.SessionInfo, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_264A67510(319, &qword_27FF8A268, type metadata accessor for RTIMessageConsumer.RTISessionAction, MEMORY[0x277D857B8]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_264A67510(319, &qword_27FF8A270, type metadata accessor for RTIMessageConsumer.RTISessionAction, MEMORY[0x277D85788]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_264A67510(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_264A67710(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, char a7, const char *a8)
{
  if (a5)
  {
    v13 = sub_264B41044();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = a3;
  v17 = a4;

  sub_264A6A094(a4, v13, v15, a6, a7 & 1, a8);
}

uint64_t sub_264A6780C(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(void *))
{
  v7 = a3;
  v8 = a4;

  a5(a4);
}

uint64_t sub_264A678D8()
{
  result = type metadata accessor for RTIMessageConsumer.SessionInfo(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for RTIMessage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_264A67960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264B40104();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_264A67A30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_264B40104();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_264A67AE8()
{
  result = sub_264B40104();
  if (v1 <= 0x3F)
  {
    result = sub_2649D8B90(319, &unk_27FF8A2F8, 0x277D46170);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_264A67B7C()
{
  v1[2] = v0;
  v2 = sub_264B3FFD4();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A67C3C, v0, 0);
}

uint64_t sub_264A67C3C()
{
  v20 = v0;
  if (qword_27FF88420 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FF8AEB8);
  v5 = sub_264B41484();
  sub_264B3FF94();
  v6 = sub_264B3FFA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);

  v9 = sub_264B40944();

  if (os_log_type_enabled(v9, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, &v19);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 279;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0x6164696C61766E69, 0xEC00000029286574, &v19);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A318, &qword_264B4A780);
  sub_264B412B4();
  v14 = *(v13 + 144);
  if (v14)
  {
    [v14 setDelegate_];
    v15 = *(v13 + 144);
  }

  else
  {
    v15 = 0;
  }

  v16 = v0[5];
  *(v13 + 144) = 0;

  v17 = v0[1];

  return v17();
}

uint64_t sub_264A67ED8(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A328, &qword_264B4A798) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v4 = type metadata accessor for RTIMessageConsumer.SessionInfo(0);
  v2[17] = v4;
  v5 = *(v4 - 8);
  v2[18] = v5;
  v6 = *(v5 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v7 = type metadata accessor for ControlMessage();
  v2[21] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A330, &qword_264B4A7A0) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v10 = type metadata accessor for RTIMessage();
  v2[24] = v10;
  v11 = *(v10 - 8);
  v2[25] = v11;
  v12 = *(v11 + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A680D0, v1, 0);
}

uint64_t sub_264A680D0()
{
  v118 = v0;
  v1 = v0[25];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[14];
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v6 + 8))(v5, v6);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_264A69288(v0[22], v0[23], type metadata accessor for RTIMessage);
    v7 = 0;
  }

  else
  {
    sub_264A691B8(v0[22], type metadata accessor for ControlMessage);
    v7 = 1;
  }

  v8 = v0[24];
  v9 = v0[25];
  v10 = v0[23];
  (*(v1 + 56))(v10, v7, 1, v8);
  v11 = (*(v9 + 48))(v10, 1, v8);
  if (v11 != 1)
  {
    sub_264A69288(v0[23], v0[30], type metadata accessor for RTIMessage);
    if (qword_27FF88420 != -1)
    {
      swift_once();
    }

    v13 = v0[29];
    v12 = v0[30];
    v14 = sub_264B40964();
    __swift_project_value_buffer(v14, qword_27FF8AEB8);
    sub_264A692F0(v12, v13, type metadata accessor for RTIMessage);
    v15 = sub_264B40944();
    v16 = sub_264B41484();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[29];
    if (v17)
    {
      v19 = v0[28];
      v20 = v0[24];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v117 = v22;
      *v21 = 136446210;
      sub_264A692F0(v18, v19, type metadata accessor for RTIMessage);
      v23 = sub_264B41064();
      v25 = v24;
      sub_264A691B8(v18, type metadata accessor for RTIMessage);
      v26 = sub_2649CC004(v23, v25, &v117);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_2649C6000, v15, v16, "Received RTIMessage: %{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x266749940](v22, -1, -1);
      MEMORY[0x266749940](v21, -1, -1);
    }

    else
    {

      sub_264A691B8(v18, type metadata accessor for RTIMessage);
    }

    v47 = v0[17];
    v48 = v0[18];
    v50 = v0[15];
    v49 = v0[16];
    v51 = OBJC_IVAR____TtC16ScreenSharingKit18RTIMessageConsumer_currentSessionInfo;
    swift_beginAccess();
    sub_264A69218(v50 + v51, v49);
    if ((*(v48 + 48))(v49, 1, v47) == 1)
    {
      sub_2649D04D4(v0[16], &qword_27FF8A328, &qword_264B4A798);
      v52 = sub_264B40944();
      v53 = sub_264B41494();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_2649C6000, v52, v53, "Received textAction payload when there is no rti session", v54, 2u);
        MEMORY[0x266749940](v54, -1, -1);
      }

      v55 = v0[30];

      v56 = v55;
      goto LABEL_33;
    }

    v57 = v0[30];
    sub_264A69288(v0[16], v0[20], type metadata accessor for RTIMessageConsumer.SessionInfo);
    v58 = sub_264B400C4();
    v59 = v0[30];
    if (v58)
    {
      v60 = v59 + *(v0[24] + 20);
      v61 = *(v60 + 16);
      v62 = *(v60 + 24);
      if (v62)
      {
        v63 = 4;
      }

      else
      {
        v63 = 0;
      }

      if (((v61 >> 60) & 3 | v63) == 1)
      {
        v64 = v0[20];
        v65 = v0[17];
        v67 = *v60;
        v66 = *(v60 + 8);
        sub_2649DEF18(v66, v61 & 0xCFFFFFFFFFFFFFFFLL);
        v68 = sub_264B40014();
        sub_264A693A0(v67, v66, v61, v62);
        v69 = [objc_opt_self() payloadWithData:v68 version:v67];

        [*(v64 + *(v65 + 20)) handleTextActionPayload_];
LABEL_32:
        v99 = v0[30];
        sub_264A691B8(v0[20], type metadata accessor for RTIMessageConsumer.SessionInfo);
        v56 = v99;
LABEL_33:
        sub_264A691B8(v56, type metadata accessor for RTIMessage);
        goto LABEL_34;
      }

      sub_264A692F0(v0[30], v0[27], type metadata accessor for RTIMessage);
      v85 = sub_264B40944();
      v86 = sub_264B41494();
      if (os_log_type_enabled(v85, v86))
      {
        v88 = v0[27];
        v87 = v0[28];
        v89 = v0[24];
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v117 = v91;
        *v90 = 136446210;
        sub_264A692F0(v88, v87, type metadata accessor for RTIMessage);
        v92 = sub_264B41064();
        v94 = v93;
        sub_264A691B8(v88, type metadata accessor for RTIMessage);
        v95 = sub_2649CC004(v92, v94, &v117);

        *(v90 + 4) = v95;
        _os_log_impl(&dword_2649C6000, v85, v86, "unexpected RTI message from client: %{public}s", v90, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v91);
        MEMORY[0x266749940](v91, -1, -1);
        MEMORY[0x266749940](v90, -1, -1);

        goto LABEL_32;
      }

      v98 = v0[27];

      v96 = type metadata accessor for RTIMessage;
      v97 = v98;
    }

    else
    {
      v70 = v0[26];
      sub_264A692F0(v0[20], v0[19], type metadata accessor for RTIMessageConsumer.SessionInfo);
      sub_264A692F0(v59, v70, type metadata accessor for RTIMessage);
      v71 = sub_264B40944();
      v72 = sub_264B41494();
      v73 = os_log_type_enabled(v71, v72);
      v74 = v0[26];
      v75 = v0[19];
      if (v73)
      {
        v114 = v72;
        v76 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v117 = v115;
        *v76 = 136315394;
        sub_264B40104();
        sub_264A69358(&qword_27FF88A70, MEMORY[0x277CC95F0]);
        v77 = sub_264B41A64();
        v79 = v78;
        sub_264A691B8(v75, type metadata accessor for RTIMessageConsumer.SessionInfo);
        v80 = sub_2649CC004(v77, v79, &v117);

        *(v76 + 4) = v80;
        *(v76 + 12) = 2080;
        v81 = sub_264B41A64();
        v83 = v82;
        sub_264A691B8(v74, type metadata accessor for RTIMessage);
        v84 = sub_2649CC004(v81, v83, &v117);

        *(v76 + 14) = v84;
        _os_log_impl(&dword_2649C6000, v71, v114, "currentSessionID: %s and incoming message's sessionID: %s does not match ignoring message", v76, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266749940](v115, -1, -1);
        MEMORY[0x266749940](v76, -1, -1);

        goto LABEL_32;
      }

      sub_264A691B8(v74, type metadata accessor for RTIMessage);
      v96 = type metadata accessor for RTIMessageConsumer.SessionInfo;
      v97 = v75;
    }

    sub_264A691B8(v97, v96);
    goto LABEL_32;
  }

  sub_2649D04D4(v0[23], &qword_27FF8A330, &qword_264B4A7A0);
  if (qword_27FF88420 != -1)
  {
    swift_once();
  }

  v27 = v0[14];
  v28 = v0[15];
  v29 = sub_264B40964();
  __swift_project_value_buffer(v29, qword_27FF8AEB8);
  sub_2649CB5C0(v27, (v0 + 2));

  v30 = sub_264B40944();
  v31 = sub_264B41494();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = v0[15];
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v117 = v34;
    *v33 = 136446466;
    v35 = [ description];
    v36 = sub_264B41044();
    v38 = v37;

    v39 = sub_2649CC004(v36, v38, &v117);

    *(v33 + 4) = v39;
    *(v33 + 12) = 2082;
    v40 = v0[5];
    v41 = __swift_project_boxed_opaque_existential_1(v0 + 2, v40);
    v0[10] = v40;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
    (*(*(v40 - 8) + 16))(boxed_opaque_existential_1, v41, v40);
    __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
    v43 = sub_264B41C44();
    v45 = v44;
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v46 = sub_2649CC004(v43, v45, &v117);

    *(v33 + 14) = v46;
    _os_log_impl(&dword_2649C6000, v30, v31, "%{public}s unexpected message type: %{public}s", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v34, -1, -1);
    MEMORY[0x266749940](v33, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

LABEL_34:
  v100 = v11 == 1;
  v102 = v0[29];
  v101 = v0[30];
  v103 = !v100;
  v116 = v103;
  v105 = v0[27];
  v104 = v0[28];
  v106 = v0[26];
  v108 = v0[22];
  v107 = v0[23];
  v110 = v0[19];
  v109 = v0[20];
  v111 = v0[16];

  v112 = v0[1];

  return v112(v116);
}

uint64_t sub_264A68C8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649E0EE4;

  return sub_264A6AC98();
}

uint64_t sub_264A68D2C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649CD850;

  return sub_264A67B7C();
}

uint64_t sub_264A68DB8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2649CBEFC;

  return sub_264A67ED8(a1);
}

uint64_t sub_264A68E4C(uint64_t a1)
{
  result = sub_264A69358(&qword_27FF8A308, type metadata accessor for RTIMessageConsumer);
  *(a1 + 8) = result;
  return result;
}

id sub_264A68EA4(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A310, &qword_264B4A778);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A318, &qword_264B4A780);
  v9 = *(v24 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v24);
  v12 = &v21 - v11;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A320, &qword_264B4A788);
  v13 = *(v22 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v22);
  v16 = &v21 - v15;
  swift_defaultActor_initialize();
  *(v2 + 14) = 0xD00000000000001ELL;
  *(v2 + 15) = 0x8000000264B5D000;
  *(v2 + 18) = 0;
  v17 = OBJC_IVAR____TtC16ScreenSharingKit18RTIMessageConsumer_currentSessionInfo;
  v18 = type metadata accessor for RTIMessageConsumer.SessionInfo(0);
  (*(*(v18 - 8) + 56))(&v2[v17], 1, 1, v18);
  *(v2 + 16) = v23;
  *(v2 + 17) = a2;
  type metadata accessor for RTIMessageConsumer.RTISessionAction(0);
  (*(v5 + 104))(v8, *MEMORY[0x277D85778], v4);

  sub_264B41284();
  (*(v5 + 8))(v8, v4);
  (*(v13 + 32))(&v2[OBJC_IVAR____TtC16ScreenSharingKit18RTIMessageConsumer_sessionActionStream], v16, v22);
  (*(v9 + 32))(&v2[OBJC_IVAR____TtC16ScreenSharingKit18RTIMessageConsumer_sessionActionContinuation], v12, v24);
  v19 = type metadata accessor for RTIMessageConsumer(0);
  v25.receiver = v2;
  v25.super_class = v19;
  return objc_msgSendSuper2(&v25, sel_init);
}

uint64_t sub_264A691B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_264A69218(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A328, &qword_264B4A798);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264A69288(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_264A692F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264A69358(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264A693A0(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  result = a2;
  if (a4)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  v6 = (a3 >> 60) & 3 | v5;
  if (v6 <= 1)
  {
    if (!v6)
    {
      v7 = a3;
      return sub_2649DEF6C(result, v7);
    }

    if (v6 != 1)
    {
      return result;
    }

LABEL_11:
    v7 = a3 & 0xCFFFFFFFFFFFFFFFLL;
    return sub_2649DEF6C(result, v7);
  }

  if (v6 == 2)
  {
    goto LABEL_11;
  }

  if (v6 == 3 || v6 == 4)
  {
  }

  return result;
}

void sub_264A693FC(void *a1)
{
  if (qword_27FF88420 != -1)
  {
    swift_once();
  }

  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FF8AEB8);
  v3 = a1;
  oslog = sub_264B40944();
  v4 = sub_264B414B4();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    if (!a1)
    {
      __break(1u);
      return;
    }

    v7 = v6;

    v8 = [v3 description];
    v9 = sub_264B41044();
    v11 = v10;

    v12 = sub_2649CC004(v9, v11, &v14);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_2649C6000, oslog, v4, "didCreateInputSession: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v5, -1, -1);
  }

  else
  {
  }
}

void sub_264A69594(void *a1)
{
  v2 = v1;
  v40 = type metadata accessor for RTIMessageConsumer.RTISessionAction(0);
  v4 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A350, &qword_264B4A7E0);
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A328, &qword_264B4A798);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v37 - v13;
  v15 = type metadata accessor for RTIMessageConsumer.SessionInfo(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v37 - v21;
  sub_264A62B88(a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_2649D04D4(v14, &qword_27FF8A328, &qword_264B4A798);
    if (qword_27FF88420 != -1)
    {
      swift_once();
    }

    v23 = sub_264B40964();
    __swift_project_value_buffer(v23, qword_27FF8AEB8);
    v24 = sub_264B40944();
    v25 = sub_264B41494();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2649C6000, v24, v25, "inputSessionDidBegin without a sessionID, ignoring", v26, 2u);
      MEMORY[0x266749940](v26, -1, -1);
    }
  }

  else
  {
    v38 = v7;
    sub_264A69288(v14, v22, type metadata accessor for RTIMessageConsumer.SessionInfo);
    if (qword_27FF88420 != -1)
    {
      swift_once();
    }

    v27 = sub_264B40964();
    __swift_project_value_buffer(v27, qword_27FF8AEB8);
    sub_264A692F0(v22, v20, type metadata accessor for RTIMessageConsumer.SessionInfo);
    v28 = sub_264B40944();
    v29 = sub_264B414B4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v37[1] = v2;
      v31 = v30;
      v32 = swift_slowAlloc();
      v41 = v32;
      *v31 = 136315138;
      sub_264B40104();
      sub_264A69358(&qword_27FF88A70, MEMORY[0x277CC95F0]);
      v33 = sub_264B41A64();
      v35 = v34;
      sub_264A691B8(v20, type metadata accessor for RTIMessageConsumer.SessionInfo);
      v36 = sub_2649CC004(v33, v35, &v41);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_2649C6000, v28, v29, "inputSessionDidBegin: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x266749940](v32, -1, -1);
      MEMORY[0x266749940](v31, -1, -1);
    }

    else
    {

      sub_264A691B8(v20, type metadata accessor for RTIMessageConsumer.SessionInfo);
    }

    sub_264A692F0(v22, v6, type metadata accessor for RTIMessageConsumer.SessionInfo);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A318, &qword_264B4A780);
    sub_264B412A4();
    (*(v39 + 8))(v10, v38);
    sub_264A691B8(v22, type metadata accessor for RTIMessageConsumer.SessionInfo);
  }
}

void sub_264A69B10(void *a1)
{
  v2 = v1;
  v40 = type metadata accessor for RTIMessageConsumer.RTISessionAction(0);
  v4 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A350, &qword_264B4A7E0);
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A328, &qword_264B4A798);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v37 - v13;
  v15 = type metadata accessor for RTIMessageConsumer.SessionInfo(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v37 - v21;
  if (a1)
  {
    sub_264A62B88(a1, v14);
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      sub_2649D04D4(v14, &qword_27FF8A328, &qword_264B4A798);
      if (qword_27FF88420 != -1)
      {
        swift_once();
      }

      v23 = sub_264B40964();
      __swift_project_value_buffer(v23, qword_27FF8AEB8);
      v24 = sub_264B40944();
      v25 = sub_264B41494();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_2649C6000, v24, v25, "documentStateDidChange without a sessionID", v26, 2u);
        MEMORY[0x266749940](v26, -1, -1);
      }
    }

    else
    {
      v38 = v7;
      sub_264A69288(v14, v22, type metadata accessor for RTIMessageConsumer.SessionInfo);
      if (qword_27FF88420 != -1)
      {
        swift_once();
      }

      v27 = sub_264B40964();
      __swift_project_value_buffer(v27, qword_27FF8AEB8);
      sub_264A692F0(v22, v20, type metadata accessor for RTIMessageConsumer.SessionInfo);
      v28 = sub_264B40944();
      v29 = sub_264B414B4();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v37[1] = v2;
        v31 = v30;
        v32 = swift_slowAlloc();
        v41 = v32;
        *v31 = 136315138;
        sub_264B40104();
        sub_264A69358(&qword_27FF88A70, MEMORY[0x277CC95F0]);
        v33 = sub_264B41A64();
        v35 = v34;
        sub_264A691B8(v20, type metadata accessor for RTIMessageConsumer.SessionInfo);
        v36 = sub_2649CC004(v33, v35, &v41);

        *(v31 + 4) = v36;
        _os_log_impl(&dword_2649C6000, v28, v29, "documentStateDidChange: %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x266749940](v32, -1, -1);
        MEMORY[0x266749940](v31, -1, -1);
      }

      else
      {

        sub_264A691B8(v20, type metadata accessor for RTIMessageConsumer.SessionInfo);
      }

      sub_264A692F0(v22, v6, type metadata accessor for RTIMessageConsumer.SessionInfo);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A318, &qword_264B4A780);
      sub_264B412A4();
      (*(v39 + 8))(v10, v38);
      sub_264A691B8(v22, type metadata accessor for RTIMessageConsumer.SessionInfo);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_264A6A094(void *a1, uint64_t a2, NSObject *a3, uint64_t a4, int a5, const char *a6)
{
  v35 = a6;
  v36 = a2;
  v38 = a5;
  v37 = a4;
  v41 = a3;
  v39 = type metadata accessor for RTIMessageConsumer.RTISessionAction(0);
  v7 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A350, &qword_264B4A7E0);
  v10 = *(v40 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v40);
  v13 = &v35 - v12;
  v14 = type metadata accessor for RTIMessage();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_264B40104();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v35 - v24;
  if (!a1)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v26 = [a1 uuid];
  if (v26)
  {
    v27 = v26;
    sub_264B400D4();

    (*(v19 + 16))(v23, v25, v18);
    v28 = v41;
    if (v41)
    {
      (*(v19 + 32))(v17, v23, v18);
      v29 = &v17[*(v14 + 20)];
      v30 = v37;
      *v29 = v36;
      *(v29 + 1) = v28;
      *(v29 + 2) = v30;
      v29[24] = v38 & 1;
      sub_264A692F0(v17, v9, type metadata accessor for RTIMessage);
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A318, &qword_264B4A780);
      sub_264B412A4();
      (*(v10 + 8))(v13, v40);
      sub_264A691B8(v17, type metadata accessor for RTIMessage);
      (*(v19 + 8))(v25, v18);
      return;
    }

    goto LABEL_13;
  }

  if (qword_27FF88420 != -1)
  {
    swift_once();
  }

  v31 = sub_264B40964();
  __swift_project_value_buffer(v31, qword_27FF8AEB8);
  v41 = sub_264B40944();
  v32 = sub_264B41494();
  if (os_log_type_enabled(v41, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_2649C6000, v41, v32, v35, v33, 2u);
    MEMORY[0x266749940](v33, -1, -1);
  }

  v34 = v41;
}

void sub_264A6A4D8(uint64_t a1)
{
  v28 = type metadata accessor for RTIMessageConsumer.RTISessionAction(0);
  v2 = *(v28[-1].isa + 8);
  MEMORY[0x28223BE20](v28);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A350, &qword_264B4A7E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = type metadata accessor for RTIMessage();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_264B40104();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](a1);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v17)
  {
    v20 = [v17 uuid];
    if (v20)
    {
      v27 = v5;
      v21 = v20;
      sub_264B400D4();

      (*(v15 + 16))(v13, v19, v14);
      v22 = &v13[*(v10 + 20)];
      *v22 = 0;
      *(v22 + 1) = 0;
      *(v22 + 2) = 0x1000000000000000;
      v22[24] = 1;
      sub_264A692F0(v13, v4, type metadata accessor for RTIMessage);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A318, &qword_264B4A780);
      sub_264B412A4();
      (*(v6 + 8))(v9, v27);
      sub_264A691B8(v13, type metadata accessor for RTIMessage);
      (*(v15 + 8))(v19, v14);
    }

    else
    {
      if (qword_27FF88420 != -1)
      {
        swift_once();
      }

      v23 = sub_264B40964();
      __swift_project_value_buffer(v23, qword_27FF8AEB8);
      v28 = sub_264B40944();
      v24 = sub_264B41494();
      if (os_log_type_enabled(v28, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_2649C6000, v28, v24, "inputSessionDidEnd without a sessionID", v25, 2u);
        MEMORY[0x266749940](v25, -1, -1);
      }

      v26 = v28;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_264A6A8B4(uint64_t a1)
{
  v28 = type metadata accessor for RTIMessageConsumer.RTISessionAction(0);
  v2 = *(v28[-1].isa + 8);
  MEMORY[0x28223BE20](v28);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A350, &qword_264B4A7E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = type metadata accessor for RTIMessage();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_264B40104();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](a1);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v17)
  {
    v20 = [v17 uuid];
    if (v20)
    {
      v27 = v5;
      v21 = v20;
      sub_264B400D4();

      (*(v15 + 16))(v13, v19, v14);
      v22 = &v13[*(v10 + 20)];
      *v22 = xmmword_264B4A5F0;
      *(v22 + 2) = 0x1000000000000000;
      v22[24] = 1;
      sub_264A692F0(v13, v4, type metadata accessor for RTIMessage);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A318, &qword_264B4A780);
      sub_264B412A4();
      (*(v6 + 8))(v9, v27);
      sub_264A691B8(v13, type metadata accessor for RTIMessage);
      (*(v15 + 8))(v19, v14);
    }

    else
    {
      if (qword_27FF88420 != -1)
      {
        swift_once();
      }

      v23 = sub_264B40964();
      __swift_project_value_buffer(v23, qword_27FF8AEB8);
      v28 = sub_264B40944();
      v24 = sub_264B41494();
      if (os_log_type_enabled(v28, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_2649C6000, v28, v24, "inputSessionDidDie without a sessionID", v25, 2u);
        MEMORY[0x266749940](v25, -1, -1);
      }

      v26 = v28;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_264A6AC98()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A320, &qword_264B4A788);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v1[5] = *(v3 + 64);
  v1[6] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = sub_264B3FFD4();
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v7 = *(v6 + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A6AE00, v0, 0);
}

uint64_t sub_264A6AE00()
{
  v36 = v0;
  if (qword_27FF88420 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FF8AEB8);
  v5 = sub_264B41484();
  sub_264B3FF94();
  v6 = sub_264B3FFA4();
  v8 = v7;
  (*(v2 + 8))(v1, v3);

  v9 = sub_264B40944();

  if (os_log_type_enabled(v9, v5))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v35 = v11;
    *v10 = 136446722;
    v12 = sub_2649CC004(v6, v8, &v35);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    *(v10 + 14) = 269;
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_2649CC004(0xD00000000000001ELL, 0x8000000264B5D0A0, &v35);
    _os_log_impl(&dword_2649C6000, v9, v5, "%{public}s:%{public}ld %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {
  }

  v13 = v0[2];
  v15 = *(v13 + 112);
  v14 = *(v13 + 120);
  v16 = objc_allocWithZone(MEMORY[0x277D46168]);
  v17 = sub_264B41014();
  v18 = [v16 initWithMachName_];

  if (v18)
  {
    [v18 setDelegate_];
  }

  v34 = v0[10];
  v20 = v0[6];
  v19 = v0[7];
  v21 = v0[4];
  v22 = v0[5];
  v24 = v0[2];
  v23 = v0[3];
  v25 = *(v24 + 144);
  *(v24 + 144) = v18;
  v26 = v18;

  v27 = OBJC_IVAR____TtC16ScreenSharingKit18RTIMessageConsumer_sessionActionStream;
  v28 = sub_264B41274();
  (*(*(v28 - 8) + 56))(v19, 1, 1, v28);
  v29 = swift_allocObject();
  swift_weakInit();
  (*(v21 + 16))(v20, v24 + v27, v23);
  v30 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  (*(v21 + 32))(v31 + v30, v20, v23);
  *(v31 + ((v22 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)) = v29;
  sub_264A10C20(0, 0, v19, &unk_264B4A7C8, v31);

  v32 = v0[1];

  return v32();
}

uint64_t sub_264A6B1F8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264A6B230()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A320, &qword_264B4A788);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_264A6B314(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A320, &qword_264B4A788) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649CD850;

  return sub_264A62E58(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_264A6B440(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  result = a2;
  if (a4)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  v6 = (a3 >> 60) & 3 | v5;
  if (v6 <= 1)
  {
    if (!v6)
    {
      v7 = a3;
      return sub_2649DEF18(result, v7);
    }

    if (v6 != 1)
    {
      return result;
    }

LABEL_11:
    v7 = a3 & 0xCFFFFFFFFFFFFFFFLL;
    return sub_2649DEF18(result, v7);
  }

  if (v6 == 2)
  {
    goto LABEL_11;
  }

  if (v6 == 3 || v6 == 4)
  {
  }

  return result;
}

uint64_t sub_264A6B49C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A328, &qword_264B4A798);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_264A6B518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26[-1] - v11;
  v27[0] = a4;
  v27[1] = a5;
  sub_264A16208(a3, &v26[-1] - v11);
  v13 = sub_264B41274();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_264A6E820(v12);
  }

  else
  {
    sub_264B41264();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_264B411C4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_264B41074();
      v22 = *(v21 + 16);
      sub_264A6EA68(v21 + 32, v27, v26);

      v23 = v26[0];
      sub_264A6E820(a3);

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

  sub_264A6E820(a3);
  if (v20 | v18)
  {
    v26[1] = 0;
    v26[2] = 0;
    v26[3] = v18;
    v26[4] = v20;
  }

  return swift_task_create();
}

uint64_t sub_264A6B75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_2649E0EE4;

  return sub_264A6EB24(a1, a2, a4, a5);
}

uint64_t sub_264A6B850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = a1;
  v8[4] = a2;
  v9 = sub_264B3FFD4();
  v8[11] = v9;
  v10 = *(v9 - 8);
  v8[12] = v10;
  v11 = *(v10 + 64) + 15;
  v8[13] = swift_task_alloc();
  v12 = *(*(sub_264B41614() - 8) + 64) + 15;
  v8[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89380, &qword_264B44180);
  v13 = sub_264B413C4();
  v8[15] = v13;
  v14 = *(v13 - 8);
  v8[16] = v14;
  v15 = *(v14 + 64) + 15;
  v8[17] = swift_task_alloc();
  v16 = *(*(sub_264B41364() - 8) + 64) + 15;
  v8[18] = swift_task_alloc();
  v17 = sub_264B413D4();
  v8[19] = v17;
  v18 = *(v17 - 8);
  v8[20] = v18;
  v19 = *(v18 + 64) + 15;
  v8[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A6BA80, 0, 0);
}

uint64_t sub_264A6BA80()
{
  if (os_variant_allows_internal_security_policies() && (v1 = [objc_opt_self() standardUserDefaults], v2 = sub_264B41014(), v3 = objc_msgSend(v1, sel_BOOLForKey_, v2), v2, v1, v3))
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v4 = sub_264B40964();
    __swift_project_value_buffer(v4, qword_27FFA71B8);
    v5 = sub_264B40944();
    v6 = sub_264B41494();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2649C6000, v5, v6, "------- Timeouts disabled via defaults on internal builds only -------", v7, 2u);
      MEMORY[0x266749940](v7, -1, -1);
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v0 + 168);
  v11 = *(v0 + 144);
  v10 = *(v0 + 152);
  v12 = *(v0 + 136);
  v13 = *(v0 + 80);
  v14 = swift_task_alloc();
  v15 = *(v0 + 48);
  v16 = *(v0 + 32);
  *(v14 + 16) = *(v0 + 64);
  *(v14 + 32) = v13;
  *(v14 + 40) = v15;
  *(v14 + 56) = v8;
  *(v14 + 64) = v16;
  sub_264A6DFD0(v11);
  sub_264B413E4();

  sub_264B412C4();
  v17 = *(MEMORY[0x277D858B8] + 4);
  v18 = swift_task_alloc();
  *(v0 + 176) = v18;
  *v18 = v0;
  v18[1] = sub_264A6BD00;
  v19 = *(v0 + 136);
  v20 = *(v0 + 112);
  v21 = *(v0 + 120);

  return MEMORY[0x2822005A8](v20, 0, 0, v21, v0 + 16);
}

uint64_t sub_264A6BD00()
{
  v2 = *(*v1 + 176);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_264A6C1D0;
  }

  else
  {
    v3 = sub_264A6BE10;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264A6BE10()
{
  v34 = v0;
  v1 = v0[14];
  v2 = v0[8];
  (*(v0[16] + 8))(v0[17], v0[15]);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v5 = v0[12];
    v4 = v0[13];
    v6 = v0[11];
    v7 = sub_264B40964();
    __swift_project_value_buffer(v7, qword_27FFA71B8);
    v8 = sub_264B41484();
    sub_264B3FF94();
    v9 = sub_264B3FFA4();
    v11 = v10;
    (*(v5 + 8))(v4, v6);
    v12 = sub_264B40944();
    if (os_log_type_enabled(v12, v8))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v33[0] = v14;
      *v13 = 136446978;
      v15 = sub_2649CC004(v9, v11, v33);

      *(v13 + 4) = v15;
      *(v13 + 12) = 2050;
      *(v13 + 14) = 79;
      *(v13 + 22) = 2082;
      *(v13 + 24) = sub_2649CC004(0xD000000000000029, 0x8000000264B5D210, v33);
      *(v13 + 32) = 2082;
      *(v13 + 34) = sub_2649CC004(0xD00000000000001ALL, 0x8000000264B5D180, v33);
      _os_log_impl(&dword_2649C6000, v12, v8, "%{public}s:%{public}ld %{public}s %{public}s", v13, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x266749940](v14, -1, -1);
      MEMORY[0x266749940](v13, -1, -1);
    }

    else
    {
    }

    v24 = v0[20];
    v23 = v0[21];
    v25 = v0[19];
    sub_264A6EA14();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();
    (*(v24 + 8))(v23, v25);
    v27 = v0[21];
    v28 = v0[17];
    v29 = v0[18];
    v31 = v0[13];
    v30 = v0[14];

    v22 = v0[1];
  }

  else
  {
    v16 = v0[18];
    v17 = v0[17];
    v19 = v0[13];
    v18 = v0[14];
    v20 = v0[8];
    v21 = v0[3];
    (*(v0[20] + 8))(v0[21], v0[19]);
    (*(v3 + 32))(v21, v18, v20);

    v22 = v0[1];
  }

  return v22();
}

uint64_t sub_264A6C1D0()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[2];
  v5 = v0[21];
  v7 = v0[17];
  v6 = v0[18];
  v9 = v0[13];
  v8 = v0[14];

  v10 = v0[1];

  return v10();
}

uint64_t sub_264A6C2A4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = a7;
  v42 = a8;
  v44 = a5;
  v45 = a6;
  v50 = a4;
  v48 = a2;
  v49 = a3;
  v43 = a1;
  v9 = *(a8 - 8);
  v10 = *(v9 + 64);
  v46 = a9;
  v47 = v10;
  MEMORY[0x28223BE20](a1);
  v51 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v36 - v15;
  v39 = &v36 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89380, &qword_264B44180);
  v17 = sub_264B41394();
  v37 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v36 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v36 - v24;
  v40 = &v36 - v24;
  v26 = sub_264B41274();
  (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
  (*(v18 + 16))(v21, v43, v17);
  (*(v13 + 16))(v16, v44, AssociatedTypeWitness);
  v36 = v9;
  v27 = v42;
  (*(v9 + 16))(v51, v45, v42);
  v28 = (*(v18 + 80) + 72) & ~*(v18 + 80);
  v29 = v28 + v19;
  v30 = (*(v13 + 80) + v29 + 1) & ~*(v13 + 80);
  v31 = (v14 + *(v9 + 80) + v30) & ~*(v9 + 80);
  v32 = swift_allocObject();
  *(v32 + 2) = 0;
  *(v32 + 3) = 0;
  *(v32 + 4) = v41;
  *(v32 + 5) = v27;
  v33 = v48;
  v34 = v49;
  *(v32 + 6) = v46;
  *(v32 + 7) = v33;
  *(v32 + 8) = v34;
  (*(v18 + 32))(&v32[v28], v21, v37);
  v32[v29] = v50;
  (*(v13 + 32))(&v32[v30], v39, v38);
  (*(v36 + 32))(&v32[v31], v51, v27);

  sub_264A10C20(0, 0, v40, &unk_264B4A8F0, v32);
}

uint64_t sub_264A6C6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 72) = v11;
  *(v8 + 80) = v12;
  *(v8 + 56) = v10;
  *(v8 + 40) = a6;
  *(v8 + 48) = a8;
  *(v8 + 104) = a7;
  *(v8 + 24) = a4;
  *(v8 + 32) = a5;
  *(v8 + 16) = a1;
  return MEMORY[0x2822009F8](sub_264A6C6E4, 0, 0);
}

uint64_t sub_264A6C6E4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 104);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  v5 = *(v0 + 24);
  v6 = *(v0 + 48);
  *(v4 + 16) = *(v0 + 64);
  *(v4 + 32) = v1;
  *(v4 + 40) = v5;
  *(v4 + 56) = v3;
  *(v4 + 64) = v2;
  *(v4 + 72) = v6;
  v7 = *(MEMORY[0x277D858E8] + 4);
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  *v8 = v0;
  v8[1] = sub_264A6C7FC;
  v9 = *(v0 + 16);
  v10 = MEMORY[0x277D84F78] + 8;
  v11 = MEMORY[0x277D84F78] + 8;
  v12 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600](v9, v10, v11, 0, 0, &unk_264B4A900, v4, v12);
}

uint64_t sub_264A6C7FC()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_264A6C90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v18;
  *(v8 + 80) = v19;
  *(v8 + 56) = a8;
  *(v8 + 64) = v17;
  *(v8 + 40) = a5;
  *(v8 + 48) = a7;
  *(v8 + 193) = a6;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 16) = a2;
  v9 = *(v18 - 8);
  *(v8 + 88) = v9;
  *(v8 + 96) = *(v9 + 64);
  *(v8 + 104) = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v8 + 112) = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  *(v8 + 120) = v11;
  *(v8 + 128) = *(v11 + 64);
  *(v8 + 136) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89380, &qword_264B44180);
  v12 = sub_264B41394();
  *(v8 + 144) = v12;
  v13 = *(v12 - 8);
  *(v8 + 152) = v13;
  *(v8 + 160) = *(v13 + 64);
  *(v8 + 168) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190) - 8) + 64) + 15;
  *(v8 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A6CB2C, 0, 0);
}

uint64_t sub_264A6CB2C()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 152);
  v36 = *(v0 + 160);
  v4 = *(v0 + 144);
  v44 = *(v0 + 193);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v38 = *(v0 + 24);
  v40 = *(v0 + 80);
  v42 = *(v0 + 16);
  v7 = *(sub_264B41274() - 8);
  v34 = *(v0 + 64);
  v32 = *(v7 + 56);
  (v32)(v1, 1, 1);
  v33 = *(v3 + 16);
  v33(v2, v5, v4);
  v8 = *(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v34;
  *(v9 + 48) = v40;
  *(v9 + 56) = v38;
  *(v9 + 64) = v6;
  v41 = *(v3 + 32);
  v41(v9 + ((v8 + 72) & ~v8), v2, v4);

  sub_264B01A0C(v1, &unk_264B4A910, v9);
  sub_264A6E820(v1);
  if ((v44 & 1) == 0)
  {
    v35 = *(v0 + 176);
    v45 = *(v0 + 168);
    v31 = *(v0 + 160);
    v10 = *(v0 + 136);
    v43 = *(v0 + 144);
    v11 = *(v0 + 120);
    v13 = *(v0 + 104);
    v12 = *(v0 + 112);
    v27 = *(v0 + 128);
    v28 = v12;
    v29 = v13;
    v14 = *(v0 + 88);
    v30 = *(v0 + 64);
    v15 = *(v0 + 48);
    v24 = *(v0 + 56);
    v25 = *(v0 + 40);
    v37 = *(v0 + 16);
    v26 = *(v0 + 96) + v8;
    v39 = *(v0 + 72);
    v32();
    (*(v11 + 16))(v10, v15, v12);
    (*(v14 + 16))(v13, v24, v39);
    v33(v45, v25, v43);
    v16 = (*(v11 + 80) + 56) & ~*(v11 + 80);
    v17 = (v27 + *(v14 + 80) + v16) & ~*(v14 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = v30;
    *(v18 + 40) = v39;
    (*(v11 + 32))(v18 + v16, v10, v28);
    (*(v14 + 32))(v18 + v17, v29, v39);
    v41(v18 + ((v26 + v17) & ~v8), v45, v43);
    sub_264B01A0C(v35, &unk_264B4A920, v18);
    sub_264A6E820(v35);
  }

  v19 = *(MEMORY[0x277D856A0] + 4);
  v20 = swift_task_alloc();
  *(v0 + 184) = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A368, &qword_264B4A928);
  *v20 = v0;
  v20[1] = sub_264A6CF0C;
  v22 = *(v0 + 16);

  return MEMORY[0x2822002D0](v0 + 192, 0, 0, v21);
}

uint64_t sub_264A6CF0C()
{
  v1 = *(*v0 + 184);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_264A6D008, 0, 0);
}

uint64_t sub_264A6D008()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 136);
  v4 = *(v0 + 104);
  v5 = **(v0 + 16);
  sub_264B41204();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_264A6D0AC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[6] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89380, &qword_264B44180);
  v10 = sub_264B41354();
  v7[7] = v10;
  v11 = *(v10 - 8);
  v7[8] = v11;
  v12 = *(v11 + 64) + 15;
  v7[9] = swift_task_alloc();
  v13 = *(a7 - 8);
  v7[10] = v13;
  v14 = *(v13 + 64) + 15;
  v7[11] = swift_task_alloc();
  v15 = swift_task_alloc();
  v7[12] = v15;
  v19 = (a4 + *a4);
  v16 = a4[1];
  v17 = swift_task_alloc();
  v7[13] = v17;
  *v17 = v7;
  v17[1] = sub_264A6D298;

  return v19(v15);
}

uint64_t sub_264A6D298()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_264A6D4E0;
  }

  else
  {
    v3 = sub_264A6D3AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264A6D3AC()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[5];
  v7 = v0[4];
  (*(v3 + 16))(v0[11], v1, v6);
  sub_264B41394();
  sub_264B41374();
  (*(v5 + 8))(v2, v4);
  v0[3] = 0;
  sub_264B41384();
  (*(v3 + 8))(v1, v6);
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t sub_264A6D4E0()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v0[2] = v0[14];
  sub_264B41394();
  sub_264B41384();
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_264A6D584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v17;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[10] = AssociatedTypeWitness;
  v10 = sub_264B41614();
  v8[11] = v10;
  v11 = *(v10 - 8);
  v8[12] = v11;
  v12 = *(v11 + 64) + 15;
  v8[13] = swift_task_alloc();
  v13 = *(AssociatedTypeWitness - 8);
  v8[14] = v13;
  v14 = *(v13 + 64) + 15;
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A6D6F0, 0, 0);
}

uint64_t sub_264A6D6F0()
{
  v31 = v0;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[4];
  v5 = sub_264B40964();
  v0[19] = __swift_project_value_buffer(v5, qword_27FFA71B8);
  v6 = *(v2 + 16);
  v0[20] = v6;
  v0[21] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v3);
  v7 = sub_264B40944();
  v8 = sub_264B41484();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[18];
  if (v9)
  {
    v11 = v0[17];
    v12 = v0[14];
    v13 = v0[10];
    v14 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v14 = 136446210;
    v6(v11, v10, v13);
    v15 = sub_264B41064();
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v10, v13);
    v19 = sub_2649CC004(v15, v17, &v30);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_2649C6000, v7, v8, "Starting timeout for %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x266749940](v29, -1, -1);
    MEMORY[0x266749940](v14, -1, -1);
  }

  else
  {
    v20 = v0[14];
    v21 = v0[10];

    v18 = *(v20 + 8);
    v18(v10, v21);
  }

  v0[22] = v18;
  (*(v0[14] + 56))(v0[13], 1, 1, v0[10]);
  v22 = swift_task_alloc();
  v0[23] = v22;
  *v22 = v0;
  v22[1] = sub_264A6D9A8;
  v23 = v0[13];
  v24 = v0[8];
  v25 = v0[9];
  v27 = v0[4];
  v26 = v0[5];

  return sub_264A6B75C(v27, v23, v26, v24, v25);
}

uint64_t sub_264A6D9A8()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v8 = *v1;
  *(*v1 + 192) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_264A6DD84;
  }

  else
  {
    v6 = sub_264A6DB18;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_264A6DB18()
{
  v34 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  (*(v0 + 160))(*(v0 + 128), *(v0 + 32), *(v0 + 80));
  v3 = sub_264B40944();
  v4 = sub_264B41484();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 176);
  if (v5)
  {
    v7 = *(v0 + 160);
    v9 = *(v0 + 128);
    v8 = *(v0 + 136);
    v31 = *(v0 + 168);
    v32 = *(v0 + 112);
    v10 = *(v0 + 80);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33 = v12;
    *v11 = 136446210;
    v7(v8, v9, v10);
    v13 = sub_264B41064();
    v15 = v14;
    v6(v9, v10);
    v16 = sub_2649CC004(v13, v15, &v33);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_2649C6000, v3, v4, "Timeout occurred after %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x266749940](v12, -1, -1);
    MEMORY[0x266749940](v11, -1, -1);
  }

  else
  {
    v17 = *(v0 + 128);
    v18 = *(v0 + 112);
    v19 = *(v0 + 80);

    v6(v17, v19);
  }

  v21 = *(v0 + 48);
  v20 = *(v0 + 56);
  sub_264A6EA14();
  v22 = swift_allocError();
  *v23 = 0;
  *(v0 + 24) = v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89380, &qword_264B44180);
  sub_264B41394();
  sub_264B41384();
  v25 = *(v0 + 136);
  v24 = *(v0 + 144);
  v27 = *(v0 + 120);
  v26 = *(v0 + 128);
  v28 = *(v0 + 104);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_264A6DD84()
{
  v32 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  (*(v0 + 160))(*(v0 + 120), *(v0 + 32), *(v0 + 80));
  v3 = sub_264B40944();
  v4 = sub_264B41484();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 176);
  if (v5)
  {
    v7 = *(v0 + 160);
    v8 = *(v0 + 136);
    v9 = *(v0 + 120);
    v29 = *(v0 + 168);
    v30 = *(v0 + 112);
    v10 = *(v0 + 80);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v31 = v12;
    *v11 = 136446210;
    v7(v8, v9, v10);
    v13 = sub_264B41064();
    v15 = v14;
    v6(v9, v10);
    v16 = sub_2649CC004(v13, v15, &v31);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_2649C6000, v3, v4, "Timeout of %{public}s cancelled", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x266749940](v12, -1, -1);
    MEMORY[0x266749940](v11, -1, -1);
  }

  else
  {
    v18 = *(v0 + 112);
    v17 = *(v0 + 120);
    v19 = *(v0 + 80);

    v6(v17, v19);
  }

  v21 = *(v0 + 48);
  v20 = *(v0 + 56);
  *(v0 + 16) = *(v0 + 192);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89380, &qword_264B44180);
  sub_264B41394();
  sub_264B41384();
  v23 = *(v0 + 136);
  v22 = *(v0 + 144);
  v25 = *(v0 + 120);
  v24 = *(v0 + 128);
  v26 = *(v0 + 104);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_264A6DFD0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D858A0];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89380, &qword_264B44180);
  v3 = sub_264B41364();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t TaskTimeoutError.hashValue.getter()
{
  v1 = *v0;
  sub_264B41B84();
  MEMORY[0x266748E90](v1);
  return sub_264B41BB4();
}

uint64_t Task<>.init<A>(priority:duration:clock:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a8;
  v34 = a1;
  v35 = a6;
  v36 = a4;
  v37 = a5;
  v38 = a2;
  v39 = a3;
  v10 = *(a7 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v32 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v30 - v19;
  sub_264A16208(a1, &v30 - v19);
  (*(v13 + 16))(v16, v38, AssociatedTypeWitness);
  (*(v10 + 16))(&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v39, a7);
  v21 = (*(v13 + 80) + 56) & ~*(v13 + 80);
  v22 = (v14 + *(v10 + 80) + v21) & ~*(v10 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 4) = v35;
  *(v23 + 5) = a7;
  *(v23 + 6) = v33;
  v24 = v16;
  v25 = v31;
  (*(v13 + 32))(&v23[v21], v24, v31);
  (*(v10 + 32))(&v23[v22], v32, a7);
  v26 = &v23[(v11 + v22 + 7) & 0xFFFFFFFFFFFFFFF8];
  v27 = v37;
  *v26 = v36;
  *(v26 + 1) = v27;
  v28 = sub_264A6B518(0, 0, v20, &unk_264B4A7F0, v23);
  (*(v10 + 8))(v39, a7);
  (*(v13 + 8))(v38, v25);
  sub_264A6E820(v34);
  return v28;
}

uint64_t sub_264A6E40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_task_alloc();
  *(v8 + 16) = v15;
  *v15 = v8;
  v15[1] = sub_2649E0EE4;

  return sub_264A6B850(a1, a4, a5, a6, a7, a8, v18, v19);
}

uint64_t sub_264A6E4F4()
{
  v2 = *(v0 + 5);
  v1 = *(v0 + 6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 56) & ~v5;
  v7 = *(v2 - 8);
  v8 = *(v7 + 80);
  v9 = (v6 + *(v4 + 64) + v8) & ~v8;
  v10 = v5 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 2);
  swift_unknownObjectRelease();
  (*(v4 + 8))(&v0[v6], AssociatedTypeWitness);
  (*(v7 + 8))(&v0[v9], v2);
  v13 = *&v0[v11 + 8];

  return MEMORY[0x2821FE8E8](v0, v11 + 16, v10 | 7);
}

uint64_t sub_264A6E668(uint64_t a1)
{
  v3 = v2;
  v4 = v1[5];
  v17 = v1[4];
  v5 = v1[6];
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = (v7 + *(v6 + 64) + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = (v1 + ((*(*(v4 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_2649CD850;

  return sub_264A6E40C(a1, v9, v10, v1 + v7, v1 + v8, v12, v13, v17);
}

uint64_t sub_264A6E820(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static Task<>.withTimeout<A>(priority:duration:clock:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_2649CD850;

  return sub_264A6B850(a1, a3, a4, a5, a6, a7, a8, v19);
}

unint64_t sub_264A6E978()
{
  result = qword_27FF8A358;
  if (!qword_27FF8A358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A358);
  }

  return result;
}

unint64_t sub_264A6EA14()
{
  result = qword_27FF8A360;
  if (!qword_27FF8A360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A360);
  }

  return result;
}

uint64_t sub_264A6EA68@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t *a3@<X8>)
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

uint64_t sub_264A6EB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[7] = AssociatedTypeWitness;
  v7 = *(AssociatedTypeWitness - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A6EC10, 0, 0);
}

uint64_t sub_264A6EC10()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  v8 = v0[2];
  sub_264B41AF4();
  swift_getAssociatedConformanceWitness();
  sub_264B41854();
  v9 = *(v4 + 8);
  v0[11] = v9;
  v0[12] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v2, v3);
  v10 = *(MEMORY[0x277D85A58] + 4);
  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_264A6ED48;
  v12 = v0[10];
  v13 = v0[5];
  v14 = v0[6];
  v15 = v0[3];
  v16 = v0[4];

  return MEMORY[0x2822008C8](v12, v15, v16, v13);
}

uint64_t sub_264A6ED48()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 56);
  v7 = *v1;
  v7[14] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_264A6EF04, 0, 0);
  }

  else
  {
    v9 = v7[9];
    v8 = v7[10];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_264A6EF04()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t sub_264A6EF70()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v3 = *(v0 + 6);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89380, &qword_264B44180);
  v22 = sub_264B41394();
  v4 = *(v22 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 72) & ~v5;
  v7 = *(v4 + 64);
  v21 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v10 + v6 + 1) & ~v10;
  v12 = *(v1 - 8);
  v13 = v12;
  v14 = *(v12 + 80);
  v15 = (v11 + *(v9 + 64) + v14) & ~v14;
  v16 = *(v12 + 64);
  v17 = v5 | v10 | v14;
  v18 = *(v0 + 2);
  swift_unknownObjectRelease();
  v19 = *(v0 + 8);

  (*(v4 + 8))(&v0[v6], v22);
  (*(v9 + 8))(&v0[v11], AssociatedTypeWitness);
  (*(v13 + 8))(&v0[v15], v21);

  return MEMORY[0x2821FE8E8](v0, v15 + v16, v17 | 7);
}

uint64_t sub_264A6F18C(uint64_t a1)
{
  v2 = v1[5];
  v18 = v1[4];
  v16 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89380, &qword_264B44180);
  v3 = *(sub_264B41394() - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = (v5 + *(v6 + 80) + 1) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[7];
  v11 = v1[8];
  v12 = *(v1 + v5);
  v13 = v1 + ((v7 + *(v6 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80));
  v14 = swift_task_alloc();
  *(v17 + 16) = v14;
  *v14 = v17;
  v14[1] = sub_2649CD850;

  return sub_264A6C6A4(a1, v8, v9, v10, v11, v1 + v4, v12, v1 + v7);
}

uint64_t sub_264A6F3B4(uint64_t a1, uint64_t a2)
{
  v15 = *(v2 + 16);
  v7 = *(v2 + 32);
  v6 = *(v2 + 40);
  v8 = *(v2 + 48);
  v9 = *(v2 + 56);
  v10 = *(v2 + 64);
  v12 = *(v2 + 72);
  v11 = *(v2 + 80);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2649E0EE4;

  return sub_264A6C90C(a1, a2, v6, v8, v9, v10, v12, v11);
}

uint64_t sub_264A6F4B4()
{
  v1 = *(v0 + 4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89380, &qword_264B44180);
  v2 = sub_264B41394();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 72) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = *(v0 + 8);

  (*(v3 + 8))(&v0[v5], v2);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_264A6F5A8(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v16 = v1[5];
  v6 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89380, &qword_264B44180);
  v7 = *(sub_264B41394() - 8);
  v8 = (*(v7 + 80) + 72) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[7];
  v12 = v1[8];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2649E0EE4;

  return sub_264A6D0AC(a1, v9, v10, v11, v12, v1 + v8, v5);
}

uint64_t sub_264A6F6F8()
{
  v1 = *(v0 + 6);
  v2 = *(v0 + 5);
  v18 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 80);
  v17 = (v4 + 56) & ~v4;
  v5 = *(v2 - 8);
  v6 = *(v5 + 80);
  v7 = (v17 + *(v3 + 64) + v6) & ~v6;
  v8 = *(v5 + 64);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89380, &qword_264B44180);
  v9 = sub_264B41394();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v13 = *(v10 + 64);
  v14 = v4 | v6 | v11;
  v15 = *(v0 + 2);
  swift_unknownObjectRelease();
  (*(v3 + 8))(&v0[v17], AssociatedTypeWitness);
  (*(v5 + 8))(&v0[v7], v18);
  (*(v10 + 8))(&v0[v12], v9);

  return MEMORY[0x2821FE8E8](v0, v12 + v13, v14 | 7);
}

uint64_t sub_264A6F90C(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[6];
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v9 = (v8 + *(v7 + 64) + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v10 = *(*(v4 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89380, &qword_264B44180);
  v11 = *(sub_264B41394() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_2649E0EE4;

  return sub_264A6D584(a1, v13, v14, v1 + v8, v1 + v9, v1 + v12, v5, v4);
}

BOOL static SceneInteractorStep.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (v5 != 1 && (v5 != 2 || (v4 - 1) >= 5))
    {
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  if (v3 == 1)
  {
    goto LABEL_28;
  }

  if (v2 > 2)
  {
    if (v2 == 3)
    {
      if (v5 != 1)
      {
        if (v5 == 2)
        {
          v6 = (v4 & 0xFFFFFFFFFFFFFFFELL) == 4;
          goto LABEL_31;
        }

        goto LABEL_28;
      }
    }

    else if (v2 == 4)
    {
      if (v5 != 1 && (v5 != 2 || v4 != 5))
      {
        goto LABEL_28;
      }
    }

    else if (v5 != 1)
    {
      goto LABEL_28;
    }

LABEL_30:
    v6 = 1;
    goto LABEL_31;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      if (v5 != 1)
      {
        if (v5 == 2)
        {
          v6 = (v4 - 2) < 4;
          goto LABEL_31;
        }

LABEL_28:
        v6 = 0;
        goto LABEL_31;
      }
    }

    else if (v5 != 1 && (v5 != 2 || (v4 - 3) >= 3))
    {
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  v6 = 1;
  if (v5 >= 2 && !v4)
  {
    goto LABEL_28;
  }

LABEL_31:
  sub_2649E127C(*a1, v3);
  sub_2649E127C(v4, v5);
  sub_2649E12C0(v2, v3);
  sub_2649E12C0(v4, v5);
  return v6;
}

ScreenSharingKit::SceneInteractorBlockedReasons_optional __swiftcall SceneInteractorBlockedReasons.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_264B418D4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SceneInteractorBlockedReasons.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0xD000000000000011;
  v4 = 0x6F68706F7263696DLL;
  if (v1 != 3)
  {
    v4 = 0x6E496172656D6163;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E49656369766564;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_264A6FDC8()
{
  v1 = *v0;
  sub_264B41B84();
  sub_264B41084();

  return sub_264B41BB4();
}

uint64_t sub_264A6FECC()
{
  *v0;
  *v0;
  *v0;
  sub_264B41084();
}

uint64_t sub_264A6FFBC()
{
  v1 = *v0;
  sub_264B41B84();
  sub_264B41084();

  return sub_264B41BB4();
}

void sub_264A700C8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0x8000000264B58BE0;
  v6 = 0xD000000000000011;
  v7 = 0xEF6573556E49656ELL;
  v8 = 0x6F68706F7263696DLL;
  if (v2 != 3)
  {
    v8 = 0x6E496172656D6163;
    v7 = 0xEB00000000657355;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6E49656369766564;
    v3 = 0xEB00000000657355;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_264A70238(uint64_t a1)
{
  v2 = sub_264A72B8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A70274(uint64_t a1)
{
  v2 = sub_264A72B8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A702CC(uint64_t a1)
{
  v2 = sub_264A72D30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A70308(uint64_t a1)
{
  v2 = sub_264A72D30();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_264A70344()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x657669746361;
    if (v1 != 6)
    {
      v5 = 0x6164696C61766E69;
    }

    v6 = 0xD000000000000019;
    if (v1 != 4)
    {
      v6 = 0xD000000000000010;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x6E776F6E6B6E75;
    v3 = 0x556F547964616572;
    if (v1 != 2)
    {
      v3 = 0xD00000000000001CLL;
    }

    if (*v0)
    {
      v2 = 0x64656B636F6C62;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_264A70460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_264A73E98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_264A70494(uint64_t a1)
{
  v2 = sub_264A72A90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A704D0(uint64_t a1)
{
  v2 = sub_264A72A90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A7050C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736E6F73616572 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_264B41AA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_264A70594(uint64_t a1)
{
  v2 = sub_264A72AE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A705D0(uint64_t a1)
{
  v2 = sub_264A72AE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A7060C(uint64_t a1)
{
  v2 = sub_264A72C88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A70648(uint64_t a1)
{
  v2 = sub_264A72C88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A70684(uint64_t a1)
{
  v2 = sub_264A72C34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A706C0(uint64_t a1)
{
  v2 = sub_264A72C34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A706FC(uint64_t a1)
{
  v2 = sub_264A72CDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A70738(uint64_t a1)
{
  v2 = sub_264A72CDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A70774(uint64_t a1)
{
  v2 = sub_264A72D84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A707B0(uint64_t a1)
{
  v2 = sub_264A72D84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264A707EC(uint64_t a1)
{
  v2 = sub_264A72BE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A70828(uint64_t a1)
{
  v2 = sub_264A72BE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SceneInteractorStep.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A370, &qword_264B4A940);
  v76 = *(v4 - 8);
  v77 = v4;
  v5 = *(v76 + 64);
  MEMORY[0x28223BE20](v4);
  v75 = &v57 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A378, &qword_264B4A948);
  v72 = *(v7 - 8);
  v73 = v7;
  v8 = *(v72 + 64);
  MEMORY[0x28223BE20](v7);
  v71 = &v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A380, &qword_264B4A950);
  v69 = *(v10 - 8);
  v70 = v10;
  v11 = *(v69 + 64);
  MEMORY[0x28223BE20](v10);
  v68 = &v57 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A388, &qword_264B4A958);
  v66 = *(v13 - 8);
  v67 = v13;
  v14 = *(v66 + 64);
  MEMORY[0x28223BE20](v13);
  v65 = &v57 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A390, &qword_264B4A960);
  v63 = *(v16 - 8);
  v64 = v16;
  v17 = *(v63 + 64);
  MEMORY[0x28223BE20](v16);
  v62 = &v57 - v18;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A398, &qword_264B4A968);
  v60 = *(v61 - 8);
  v19 = *(v60 + 64);
  MEMORY[0x28223BE20](v61);
  v59 = &v57 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A3A0, &qword_264B4A970);
  v74 = *(v21 - 8);
  v22 = *(v74 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v57 - v23;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A3A8, &qword_264B4A978);
  v57 = *(v58 - 8);
  v25 = *(v57 + 64);
  MEMORY[0x28223BE20](v58);
  v27 = &v57 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A3B0, &unk_264B4A980);
  v29 = *(v28 - 8);
  v79 = v28;
  v80 = v29;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v57 - v31;
  v33 = *v2;
  v34 = *(v2 + 8);
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A72A90();
  v78 = v32;
  sub_264B41BD4();
  if (!v34)
  {
    LOBYTE(v81) = 1;
    sub_264A72D30();
    v43 = v78;
    v42 = v79;
    sub_264B419B4();
    v81 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A3C8, &qword_264B57090);
    sub_264A72DD8(&qword_27FF8A3D0, sub_264A72B38);
    sub_264B41A24();
    (*(v74 + 8))(v24, v21);
    return (*(v80 + 8))(v43, v42);
  }

  if (v34 == 1)
  {
    LOBYTE(v81) = 7;
    sub_264A72AE4();
    v36 = v75;
    v38 = v78;
    v37 = v79;
    sub_264B419B4();
    v81 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A3C8, &qword_264B57090);
    sub_264A72DD8(&qword_27FF8A3D0, sub_264A72B38);
    v39 = v77;
    sub_264B41A24();
    (*(v76 + 8))(v36, v39);
    v40 = *(v80 + 8);
    v41 = v38;
    return v40(v41, v37);
  }

  if (v33 > 2)
  {
    if (v33 != 3)
    {
      if (v33 == 4)
      {
        LOBYTE(v81) = 5;
        sub_264A72BE0();
        v48 = v68;
        v49 = v78;
        v37 = v79;
        sub_264B419B4();
        v51 = v69;
        v50 = v70;
      }

      else
      {
        LOBYTE(v81) = 6;
        sub_264A72B8C();
        v48 = v71;
        v49 = v78;
        v37 = v79;
        sub_264B419B4();
        v51 = v72;
        v50 = v73;
      }

      (*(v51 + 8))(v48, v50);
      v40 = *(v80 + 8);
      v41 = v49;
      return v40(v41, v37);
    }

    LOBYTE(v81) = 4;
    sub_264A72C34();
    v54 = v65;
    v47 = v78;
    v46 = v79;
    sub_264B419B4();
    v56 = v66;
    v55 = v67;
    goto LABEL_15;
  }

  if (!v33)
  {
    LOBYTE(v81) = 0;
    sub_264A72D84();
    v52 = v78;
    v53 = v79;
    sub_264B419B4();
    (*(v57 + 8))(v27, v58);
    return (*(v80 + 8))(v52, v53);
  }

  if (v33 != 1)
  {
    LOBYTE(v81) = 3;
    sub_264A72C88();
    v54 = v62;
    v47 = v78;
    v46 = v79;
    sub_264B419B4();
    v56 = v63;
    v55 = v64;
LABEL_15:
    (*(v56 + 8))(v54, v55);
    return (*(v80 + 8))(v47, v46);
  }

  LOBYTE(v81) = 2;
  sub_264A72CDC();
  v45 = v59;
  v47 = v78;
  v46 = v79;
  sub_264B419B4();
  (*(v60 + 8))(v45, v61);
  return (*(v80 + 8))(v47, v46);
}

uint64_t SceneInteractorStep.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A418, &qword_264B4A990);
  v4 = *(v3 - 8);
  v79 = v3;
  v80 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v82 = &v63 - v6;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A420, &qword_264B4A998);
  v75 = *(v78 - 8);
  v7 = *(v75 + 64);
  MEMORY[0x28223BE20](v78);
  v86 = &v63 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A428, &qword_264B4A9A0);
  v76 = *(v9 - 8);
  v77 = v9;
  v10 = *(v76 + 64);
  MEMORY[0x28223BE20](v9);
  v85 = &v63 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A430, &qword_264B4A9A8);
  v13 = *(v12 - 8);
  v73 = v12;
  v74 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v84 = &v63 - v15;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A438, &qword_264B4A9B0);
  v71 = *(v72 - 8);
  v16 = *(v71 + 64);
  MEMORY[0x28223BE20](v72);
  v81 = &v63 - v17;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A440, &qword_264B4A9B8);
  v68 = *(v69 - 8);
  v18 = *(v68 + 64);
  MEMORY[0x28223BE20](v69);
  v83 = &v63 - v19;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A448, &qword_264B4A9C0);
  v70 = *(v67 - 8);
  v20 = *(v70 + 64);
  MEMORY[0x28223BE20](v67);
  v22 = &v63 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A450, &qword_264B4A9C8);
  v66 = *(v23 - 8);
  v24 = *(v66 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v63 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A458, &unk_264B4A9D0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v63 - v30;
  v33 = a1[3];
  v32 = a1[4];
  v89 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_264A72A90();
  v34 = v88;
  sub_264B41BC4();
  if (!v34)
  {
    v64 = v26;
    v63 = v23;
    v35 = v83;
    v65 = v22;
    v37 = v84;
    v36 = v85;
    v88 = v28;
    v39 = v86;
    v38 = v87;
    v40 = sub_264B419A4();
    v41 = (2 * *(v40 + 16)) | 1;
    v90 = v40;
    v91 = v40 + 32;
    v92 = 0;
    v93 = v41;
    v42 = sub_2649E0390();
    v43 = v31;
    if (v42 == 8 || v92 != v93 >> 1)
    {
      v48 = sub_264B417A4();
      swift_allocError();
      v50 = v49;
      v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88900, &qword_264B445C0) + 48);
      *v50 = &type metadata for SceneInteractorStep;
      sub_264B41904();
      sub_264B41794();
      (*(*(v48 - 8) + 104))(v50, *MEMORY[0x277D84160], v48);
      swift_willThrow();
      (*(v88 + 8))(v43, v27);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v42 > 3u)
      {
        if (v42 > 5u)
        {
          v47 = v38;
          v56 = v88;
          if (v42 == 6)
          {
            LOBYTE(v94) = 6;
            sub_264A72B8C();
            sub_264B418F4();
            (*(v75 + 8))(v39, v78);
            (*(v56 + 8))(v43, v27);
            swift_unknownObjectRelease();
            v46 = 2;
            v45 = 5;
          }

          else
          {
            LOBYTE(v94) = 7;
            sub_264A72AE4();
            sub_264B418F4();
            v60 = v43;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A3C8, &qword_264B57090);
            sub_264A72DD8(&qword_27FF8A460, sub_264A72E50);
            v61 = v79;
            v62 = v82;
            sub_264B41984();
            (*(v80 + 8))(v62, v61);
            (*(v56 + 8))(v60, v27);
            swift_unknownObjectRelease();
            v45 = v94;
            v46 = 1;
          }
        }

        else
        {
          v53 = v38;
          v54 = v88;
          if (v42 == 4)
          {
            LOBYTE(v94) = 4;
            sub_264A72C34();
            sub_264B418F4();
            (*(v74 + 8))(v37, v73);
            (*(v54 + 8))(v43, v27);
            swift_unknownObjectRelease();
            v46 = 2;
            v45 = 3;
          }

          else
          {
            LOBYTE(v94) = 5;
            sub_264A72BE0();
            sub_264B418F4();
            (*(v76 + 8))(v36, v77);
            (*(v54 + 8))(v43, v27);
            swift_unknownObjectRelease();
            v46 = 2;
            v45 = 4;
          }

          v47 = v53;
        }
      }

      else if (v42 > 1u)
      {
        v47 = v38;
        v55 = v88;
        if (v42 == 2)
        {
          LOBYTE(v94) = 2;
          sub_264A72CDC();
          sub_264B418F4();
          (*(v68 + 8))(v35, v69);
          (*(v55 + 8))(v43, v27);
          swift_unknownObjectRelease();
          v46 = 2;
          v45 = 1;
        }

        else
        {
          LOBYTE(v94) = 3;
          sub_264A72C88();
          v59 = v81;
          sub_264B418F4();
          (*(v71 + 8))(v59, v72);
          (*(v55 + 8))(v43, v27);
          swift_unknownObjectRelease();
          v45 = 2;
          v46 = 2;
        }
      }

      else
      {
        if (v42)
        {
          LOBYTE(v94) = 1;
          sub_264A72D30();
          v57 = v65;
          sub_264B418F4();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A3C8, &qword_264B57090);
          sub_264A72DD8(&qword_27FF8A460, sub_264A72E50);
          v58 = v67;
          sub_264B41984();
          (*(v70 + 8))(v57, v58);
          (*(v88 + 8))(v31, v27);
          swift_unknownObjectRelease();
          v46 = 0;
          v45 = v94;
        }

        else
        {
          LOBYTE(v94) = 0;
          sub_264A72D84();
          v44 = v64;
          sub_264B418F4();
          (*(v66 + 8))(v44, v63);
          (*(v88 + 8))(v31, v27);
          swift_unknownObjectRelease();
          v45 = 0;
          v46 = 2;
        }

        v47 = v38;
      }

      *v47 = v45;
      *(v47 + 8) = v46;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v89);
}

BOOL sub_264A71E20(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (v5 != 1 && (v5 != 2 || (v4 - 1) >= 5))
    {
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  if (v3 == 1)
  {
    goto LABEL_28;
  }

  if (v2 > 2)
  {
    if (v2 == 3)
    {
      if (v5 != 1)
      {
        if (v5 == 2)
        {
          v6 = (v4 & 0xFFFFFFFFFFFFFFFELL) == 4;
          goto LABEL_31;
        }

        goto LABEL_28;
      }
    }

    else if (v2 == 4)
    {
      if (v5 != 1 && (v5 != 2 || v4 != 5))
      {
        goto LABEL_28;
      }
    }

    else if (v5 != 1)
    {
      goto LABEL_28;
    }

LABEL_30:
    v6 = 1;
    goto LABEL_31;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      if (v5 != 1)
      {
        if (v5 == 2)
        {
          v6 = (v4 - 2) < 4;
          goto LABEL_31;
        }

LABEL_28:
        v6 = 0;
        goto LABEL_31;
      }
    }

    else if (v5 != 1 && (v5 != 2 || (v4 - 3) >= 3))
    {
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  v6 = 1;
  if (v5 >= 2 && !v4)
  {
    goto LABEL_28;
  }

LABEL_31:
  sub_2649E127C(*a1, v3);
  sub_2649E127C(v4, v5);
  sub_2649E12C0(v2, v3);
  sub_2649E12C0(v4, v5);
  return v6;
}

BOOL sub_264A71F80(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*(a2 + 8))
  {
    if (v3 != 1 && (v3 != 2 || (v2 - 1) >= 5))
    {
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  if (v5 == 1)
  {
    goto LABEL_28;
  }

  if (v4 > 2)
  {
    if (v4 == 3)
    {
      if (v3 != 1)
      {
        if (v3 == 2)
        {
          v6 = (v2 & 0xFFFFFFFFFFFFFFFELL) == 4;
          goto LABEL_31;
        }

        goto LABEL_28;
      }
    }

    else if (v4 == 4)
    {
      if (v3 != 1 && (v3 != 2 || v2 != 5))
      {
        goto LABEL_28;
      }
    }

    else if (v3 != 1)
    {
      goto LABEL_28;
    }

LABEL_30:
    v6 = 1;
    goto LABEL_31;
  }

  if (v4)
  {
    if (v4 == 1)
    {
      if (v3 != 1)
      {
        if (v3 == 2)
        {
          v6 = (v2 - 2) < 4;
          goto LABEL_31;
        }

LABEL_28:
        v6 = 0;
        goto LABEL_31;
      }
    }

    else if (v3 != 1 && (v3 != 2 || (v2 - 3) >= 3))
    {
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  v6 = 1;
  if (v3 >= 2 && !v2)
  {
    goto LABEL_28;
  }

LABEL_31:
  sub_2649E127C(*a2, *(a2 + 8));
  sub_2649E127C(v2, v3);
  sub_2649E12C0(v4, v5);
  sub_2649E12C0(v2, v3);
  return !v6;
}

BOOL sub_264A720E0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (v5 != 1 && (v5 != 2 || (v4 - 1) >= 5))
    {
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  if (v3 == 1)
  {
    goto LABEL_28;
  }

  if (v2 > 2)
  {
    if (v2 == 3)
    {
      if (v5 != 1)
      {
        if (v5 == 2)
        {
          v6 = (v4 & 0xFFFFFFFFFFFFFFFELL) == 4;
          goto LABEL_31;
        }

        goto LABEL_28;
      }
    }

    else if (v2 == 4)
    {
      if (v5 != 1 && (v5 != 2 || v4 != 5))
      {
        goto LABEL_28;
      }
    }

    else if (v5 != 1)
    {
      goto LABEL_28;
    }

LABEL_30:
    v6 = 1;
    goto LABEL_31;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      if (v5 != 1)
      {
        if (v5 == 2)
        {
          v6 = (v4 - 2) < 4;
          goto LABEL_31;
        }

LABEL_28:
        v6 = 0;
        goto LABEL_31;
      }
    }

    else if (v5 != 1 && (v5 != 2 || (v4 - 3) >= 3))
    {
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  v6 = 1;
  if (v5 >= 2 && !v4)
  {
    goto LABEL_28;
  }

LABEL_31:
  sub_2649E127C(*a1, v3);
  sub_2649E127C(v4, v5);
  sub_2649E12C0(v2, v3);
  sub_2649E12C0(v4, v5);
  return !v6;
}

BOOL sub_264A72240(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*(a2 + 8))
  {
    if (v3 != 1 && (v3 != 2 || (v2 - 1) >= 5))
    {
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  if (v5 == 1)
  {
    goto LABEL_28;
  }

  if (v4 > 2)
  {
    if (v4 == 3)
    {
      if (v3 != 1)
      {
        if (v3 == 2)
        {
          v6 = (v2 & 0xFFFFFFFFFFFFFFFELL) == 4;
          goto LABEL_31;
        }

        goto LABEL_28;
      }
    }

    else if (v4 == 4)
    {
      if (v3 != 1 && (v3 != 2 || v2 != 5))
      {
        goto LABEL_28;
      }
    }

    else if (v3 != 1)
    {
      goto LABEL_28;
    }

LABEL_30:
    v6 = 1;
    goto LABEL_31;
  }

  if (v4)
  {
    if (v4 == 1)
    {
      if (v3 != 1)
      {
        if (v3 == 2)
        {
          v6 = (v2 - 2) < 4;
          goto LABEL_31;
        }

LABEL_28:
        v6 = 0;
        goto LABEL_31;
      }
    }

    else if (v3 != 1 && (v3 != 2 || (v2 - 3) >= 3))
    {
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  v6 = 1;
  if (v3 >= 2 && !v2)
  {
    goto LABEL_28;
  }

LABEL_31:
  sub_2649E127C(*a2, *(a2 + 8));
  sub_2649E127C(v2, v3);
  sub_2649E12C0(v4, v5);
  sub_2649E12C0(v2, v3);
  return v6;
}

ScreenSharingKit::SceneInteractorInterfaceOrientation_optional __swiftcall SceneInteractorInterfaceOrientation.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_264A72550()
{
  if (*v0)
  {
    result = 0xD000000000000015;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_264A7258C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000264B5D2A0 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000264B5D2C0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_264B41AA4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_264A72670(uint64_t a1)
{
  v2 = sub_264A72EA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A726AC(uint64_t a1)
{
  v2 = sub_264A72EA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SceneInteractorOrientationStatus.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A470, &qword_264B4A9E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[0] = *(v1 + 1);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A72EA4();
  sub_264B41BD4();
  v15 = v9;
  v14 = 0;
  sub_264A72EF8();
  sub_264B41A24();
  if (!v2)
  {
    v12[1] = v12[0];
    v13 = 1;
    sub_264A72F4C();
    sub_264B41A24();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t SceneInteractorOrientationStatus.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A490, &qword_264B4A9E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A72EA4();
  sub_264B41BC4();
  if (!v2)
  {
    v16 = 0;
    sub_264A72FA0();
    sub_264B41984();
    v11 = v17;
    v15 = 1;
    sub_264A72FF4();
    sub_264B41984();
    (*(v6 + 8))(v9, v5);
    v12 = v14[1];
    *a2 = v11;
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_264A72A90()
{
  result = qword_27FF8A3B8;
  if (!qword_27FF8A3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A3B8);
  }

  return result;
}

unint64_t sub_264A72AE4()
{
  result = qword_27FF8A3C0;
  if (!qword_27FF8A3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A3C0);
  }

  return result;
}

unint64_t sub_264A72B38()
{
  result = qword_27FF8A3D8;
  if (!qword_27FF8A3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A3D8);
  }

  return result;
}

unint64_t sub_264A72B8C()
{
  result = qword_27FF8A3E0;
  if (!qword_27FF8A3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A3E0);
  }

  return result;
}

unint64_t sub_264A72BE0()
{
  result = qword_27FF8A3E8;
  if (!qword_27FF8A3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A3E8);
  }

  return result;
}

unint64_t sub_264A72C34()
{
  result = qword_27FF8A3F0;
  if (!qword_27FF8A3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A3F0);
  }

  return result;
}

unint64_t sub_264A72C88()
{
  result = qword_27FF8A3F8;
  if (!qword_27FF8A3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A3F8);
  }

  return result;
}

unint64_t sub_264A72CDC()
{
  result = qword_27FF8A400;
  if (!qword_27FF8A400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A400);
  }

  return result;
}

unint64_t sub_264A72D30()
{
  result = qword_27FF8A408;
  if (!qword_27FF8A408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A408);
  }

  return result;
}

unint64_t sub_264A72D84()
{
  result = qword_27FF8A410;
  if (!qword_27FF8A410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A410);
  }

  return result;
}

uint64_t sub_264A72DD8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF8A3C8, &qword_264B57090);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_264A72E50()
{
  result = qword_27FF8A468;
  if (!qword_27FF8A468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A468);
  }

  return result;
}

unint64_t sub_264A72EA4()
{
  result = qword_27FF8A478;
  if (!qword_27FF8A478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A478);
  }

  return result;
}

unint64_t sub_264A72EF8()
{
  result = qword_27FF8A480;
  if (!qword_27FF8A480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A480);
  }

  return result;
}

unint64_t sub_264A72F4C()
{
  result = qword_27FF8A488;
  if (!qword_27FF8A488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A488);
  }

  return result;
}

unint64_t sub_264A72FA0()
{
  result = qword_27FF8A498;
  if (!qword_27FF8A498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A498);
  }

  return result;
}

unint64_t sub_264A72FF4()
{
  result = qword_27FF8A4A0;
  if (!qword_27FF8A4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A4A0);
  }

  return result;
}

unint64_t sub_264A7304C()
{
  result = qword_27FF8A4A8;
  if (!qword_27FF8A4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A4A8);
  }

  return result;
}

unint64_t sub_264A730A4()
{
  result = qword_27FF8A4B0;
  if (!qword_27FF8A4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A4B0);
  }

  return result;
}

unint64_t sub_264A730FC()
{
  result = qword_27FF8A4B8;
  if (!qword_27FF8A4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A4B8);
  }

  return result;
}

unint64_t sub_264A73154()
{
  result = qword_27FF8A4C0;
  if (!qword_27FF8A4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A4C0);
  }

  return result;
}

unint64_t sub_264A731AC()
{
  result = qword_27FF8A4C8;
  if (!qword_27FF8A4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A4C8);
  }

  return result;
}

unint64_t sub_264A73204()
{
  result = qword_27FF8A4D0;
  if (!qword_27FF8A4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A4D0);
  }

  return result;
}

unint64_t sub_264A7325C()
{
  result = qword_27FF8A4D8;
  if (!qword_27FF8A4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A4D8);
  }

  return result;
}

uint64_t sub_264A732C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_264A73310(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_264A73354(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for Capabilities(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Capabilities(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for SceneInteractorOrientationStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && a1[16])
  {
    return (*a1 + 252);
  }

  v3 = *a1;
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SceneInteractorOrientationStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SceneInteractorStep.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SceneInteractorStep.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_264A7365C()
{
  result = qword_27FF8A4E0;
  if (!qword_27FF8A4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A4E0);
  }

  return result;
}

unint64_t sub_264A736B4()
{
  result = qword_27FF8A4E8;
  if (!qword_27FF8A4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A4E8);
  }

  return result;
}

unint64_t sub_264A7370C()
{
  result = qword_27FF8A4F0;
  if (!qword_27FF8A4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A4F0);
  }

  return result;
}

unint64_t sub_264A73764()
{
  result = qword_27FF8A4F8;
  if (!qword_27FF8A4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A4F8);
  }

  return result;
}

unint64_t sub_264A737BC()
{
  result = qword_27FF8A500;
  if (!qword_27FF8A500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A500);
  }

  return result;
}

unint64_t sub_264A73814()
{
  result = qword_27FF8A508;
  if (!qword_27FF8A508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A508);
  }

  return result;
}

unint64_t sub_264A7386C()
{
  result = qword_27FF8A510;
  if (!qword_27FF8A510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A510);
  }

  return result;
}

unint64_t sub_264A738C4()
{
  result = qword_27FF8A518;
  if (!qword_27FF8A518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A518);
  }

  return result;
}

unint64_t sub_264A7391C()
{
  result = qword_27FF8A520;
  if (!qword_27FF8A520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A520);
  }

  return result;
}

unint64_t sub_264A73974()
{
  result = qword_27FF8A528;
  if (!qword_27FF8A528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A528);
  }

  return result;
}

unint64_t sub_264A739CC()
{
  result = qword_27FF8A530;
  if (!qword_27FF8A530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A530);
  }

  return result;
}

unint64_t sub_264A73A24()
{
  result = qword_27FF8A538;
  if (!qword_27FF8A538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A538);
  }

  return result;
}

unint64_t sub_264A73A7C()
{
  result = qword_27FF8A540;
  if (!qword_27FF8A540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A540);
  }

  return result;
}

unint64_t sub_264A73AD4()
{
  result = qword_27FF8A548;
  if (!qword_27FF8A548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A548);
  }

  return result;
}

unint64_t sub_264A73B2C()
{
  result = qword_27FF8A550;
  if (!qword_27FF8A550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A550);
  }

  return result;
}

unint64_t sub_264A73B84()
{
  result = qword_27FF8A558;
  if (!qword_27FF8A558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A558);
  }

  return result;
}

unint64_t sub_264A73BDC()
{
  result = qword_27FF8A560;
  if (!qword_27FF8A560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A560);
  }

  return result;
}

unint64_t sub_264A73C34()
{
  result = qword_27FF8A568;
  if (!qword_27FF8A568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A568);
  }

  return result;
}

unint64_t sub_264A73C8C()
{
  result = qword_27FF8A570;
  if (!qword_27FF8A570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A570);
  }

  return result;
}

unint64_t sub_264A73CE4()
{
  result = qword_27FF8A578;
  if (!qword_27FF8A578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A578);
  }

  return result;
}

unint64_t sub_264A73D3C()
{
  result = qword_27FF8A580;
  if (!qword_27FF8A580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A580);
  }

  return result;
}

unint64_t sub_264A73D94()
{
  result = qword_27FF8A588;
  if (!qword_27FF8A588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A588);
  }

  return result;
}

unint64_t sub_264A73DEC()
{
  result = qword_27FF8A590;
  if (!qword_27FF8A590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A590);
  }

  return result;
}

unint64_t sub_264A73E44()
{
  result = qword_27FF8A598;
  if (!qword_27FF8A598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A598);
  }

  return result;
}

uint64_t sub_264A73E98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_264B41AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656B636F6C62 && a2 == 0xE700000000000000 || (sub_264B41AA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x556F547964616572 && a2 == 0xED00006B636F6C6ELL || (sub_264B41AA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000264B5D240 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000264B5D260 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000264B5D280 == a2 || (sub_264B41AA4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x657669746361 && a2 == 0xE600000000000000 || (sub_264B41AA4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6164696C61766E69 && a2 == 0xEB00000000646574)
  {

    return 7;
  }

  else
  {
    v6 = sub_264B41AA4();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_264A74140()
{
  result = qword_27FF8A5A0;
  if (!qword_27FF8A5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A5A0);
  }

  return result;
}

unint64_t sub_264A74194()
{
  result = qword_27FF8A5A8;
  if (!qword_27FF8A5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF8A5A8);
  }

  return result;
}

uint64_t dispatch thunk of LiveActivityDelegate.tearDownFromLiveActivity()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649CD850;

  return v9(a1, a2);
}

uint64_t ControlMessageSession.__allocating_init(transport:role:)(uint64_t a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();

  return sub_264A78D00(a1, a3, v3, ObjectType, a2);
}

uint64_t sub_264A74384()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A5E8, &qword_264B4BB58);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - v4;
  if (v0[20])
  {
    v6 = v0[20];
  }

  else
  {
    v7 = v0[18];
    v11[1] = v0[19];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8B470, qword_264B4BB60);
    type metadata accessor for ControlMessage();
    sub_2649CB4C8(&qword_27FF8A5F0, &unk_27FF8B470, qword_264B4BB60);
    v8 = v0;
    sub_264B40AC4();

    sub_2649CB4C8(&qword_27FF8A5F8, &qword_27FF8A5E8, &qword_264B4BB58);
    v6 = sub_264B40AB4();
    (*(v2 + 8))(v5, v1);
    v9 = v8[20];
    v8[20] = v6;
  }

  return v6;
}

uint64_t sub_264A74588@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ControlMessage();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = a1[1];
  sub_264A794D8(&qword_27FF8A600, type metadata accessor for ControlMessage);
  sub_264B3FF14();
  sub_264A79520(v8, a2);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

void sub_264A7480C(void **a1)
{
  v2 = v1;
  v3 = *a1;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v4 = sub_264B40964();
  __swift_project_value_buffer(v4, qword_27FFA71B8);
  sub_264A1EE08(v3);

  oslog = sub_264B40944();
  v5 = sub_264B41474();
  sub_264A1F208(v3);

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446466;
    sub_264A1EE08(v3);
    v8 = sub_264B41064();
    v10 = sub_2649CC004(v8, v9, &v15);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    sub_264A1EE08(*(v2 + 168));
    v11 = sub_264B41064();
    v13 = sub_2649CC004(v11, v12, &v15);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_2649C6000, oslog, v5, "Session state changed from %{public}s to %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  else
  {
  }
}

uint64_t ControlMessageSession.init(transport:role:)(uint64_t a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();

  return sub_264A78D6C(a1, a3, v3, ObjectType, a2);
}

uint64_t sub_264A74A68@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FB8, &unk_264B46970);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v34 - v7;
  v9 = sub_264B40964();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v9, qword_27FFA71B8);
  (*(v10 + 16))(v13, v14, v9);
  if (*(v2 + 113))
  {

    v15 = sub_264B40944();
    v16 = sub_264B41494();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v36 = v18;
      *v17 = 136446210;
      v35 = v2;
      type metadata accessor for ControlMessageSession();

      v19 = sub_264B41064();
      v21 = sub_2649CC004(v19, v20, &v36);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_2649C6000, v15, v16, "%{public}s is already activated, this represents a client bug", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x266749940](v18, -1, -1);
      MEMORY[0x266749940](v17, -1, -1);
    }

    v22 = 1;
  }

  else
  {
    v34[2] = a1;
    v23 = *(v2 + 168);
    sub_264A1EE08(v23);
    sub_264A1F208(v23);
    sub_264A1F208(1);
    if (!v23)
    {
      swift_unownedRetainStrong();
      swift_unownedRetain();
      swift_unownedRetain();

      v34[1] = v34;
      MEMORY[0x28223BE20](v33);
      v34[-2] = v2;
      v34[-1] = v13;
      (*(v5 + 104))(v8, *MEMORY[0x277D85778], v4);
      sub_264B412E4();
      swift_unownedRelease();
      swift_unownedRelease();
      return (*(v10 + 8))(v13, v9);
    }

    v24 = sub_264B40944();
    v25 = sub_264B41494();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v36 = v27;
      *v26 = 136446210;
      v35 = v2;
      type metadata accessor for ControlMessageSession();

      v28 = sub_264B41064();
      v30 = sub_2649CC004(v28, v29, &v36);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_2649C6000, v24, v25, "%{public}s cannot be activated because we've already become invalid", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x266749940](v27, -1, -1);
      MEMORY[0x266749940](v26, -1, -1);
    }

    v22 = 0;
  }

  sub_264A78FFC();
  swift_allocError();
  *v31 = v22;
  swift_willThrow();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_264A74F1C(uint64_t a1, uint64_t a2)
{
  swift_unownedRetainStrong();
  v4 = *(a2 + 168);
  sub_264A1EE08(v4);

  sub_264A1F208(v4);
  sub_264A1F208(2);
  v5 = sub_264B40944();
  if (v4 > 1)
  {
    v9 = sub_264B41484();
    if (os_log_type_enabled(v5, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2649C6000, v5, v9, "Session terminated before activation could complete, bailing out", v10, 2u);
      MEMORY[0x266749940](v10, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
    return sub_264B412B4();
  }

  else
  {
    v6 = sub_264B41474();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2649C6000, v5, v6, "Activating ControlMessageSession", v7, 2u);
      MEMORY[0x266749940](v7, -1, -1);
    }

    swift_unownedRetainStrong();
    sub_264A75BDC(a1);
  }
}

uint64_t sub_264A750BC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v46 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89618, &qword_264B4B9F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v46 - v9;
  v11 = sub_264B40964();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v11, qword_27FFA71B8);
  v17 = *(v12 + 16);
  v50 = v16;
  v17(v15);
  if (*(v1 + 168) > 1uLL)
  {

    v28 = sub_264B40944();
    v29 = sub_264B41484();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = v11;
      v32 = swift_slowAlloc();
      v51[0] = v32;
      *v30 = 136446210;
      v51[4] = v1;
      type metadata accessor for ControlMessageSession();

      v33 = sub_264B41064();
      v35 = sub_2649CC004(v33, v34, v51);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_2649C6000, v28, v29, "%{public}s is already in a terminal state.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      v36 = v32;
      v11 = v31;
      MEMORY[0x266749940](v36, -1, -1);
      MEMORY[0x266749940](v30, -1, -1);
    }

    sub_264A78FFC();
    swift_allocError();
    *v37 = 0;
    swift_willThrow();
  }

  else
  {
    v48 = v6;
    v49 = v3;
    v18 = sub_264B40944();
    v19 = sub_264B41474();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v47 = v15;
      v21 = v11;
      v22 = v20;
      *v20 = 0;
      _os_log_impl(&dword_2649C6000, v18, v19, "Session invalidating", v20, 2u);
      v23 = v22;
      v11 = v21;
      v15 = v47;
      MEMORY[0x266749940](v23, -1, -1);
    }

    v24 = *(v1 + 152);
    LOBYTE(v51[0]) = 1;
    sub_264B409B4();
    if ((*(v1 + 113) & 1) == 0)
    {
      v25 = *(v1 + 168);
      *(v1 + 168) = 2;
      sub_264A1EE08(v25);
      sub_264A1F208(v25);
      v51[0] = v25;
      sub_264A7480C(v51);
      sub_264A1F208(v25);
      v26 = OBJC_IVAR____TtC16ScreenSharingKit21ControlMessageSession_sessionStateContinuation;
      swift_beginAccess();
      sub_2649D046C(v1 + v26, v10, &qword_27FF89618, &qword_264B4B9F0);
      v27 = v49;
      if ((*(v49 + 48))(v10, 1, v2))
      {
        sub_2649D04D4(v10, &qword_27FF89618, &qword_264B4B9F0);
      }

      else
      {
        v38 = v48;
        (*(v27 + 16))(v48, v10, v2);
        sub_2649D04D4(v10, &qword_27FF89618, &qword_264B4B9F0);
        sub_264B412B4();
        (*(v27 + 8))(v38, v2);
      }
    }

    v39 = *(v1 + 120);
    v40 = *(v1 + 128);
    ObjectType = swift_getObjectType();
    if ((*(v40 + 8))(ObjectType, v40))
    {
      v42 = sub_264B40944();
      v43 = sub_264B41484();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_2649C6000, v42, v43, "Transport for ControlMessageSession is already invalid, bailing out.", v44, 2u);
        MEMORY[0x266749940](v44, -1, -1);
      }
    }

    else
    {
      (*(v40 + 24))(ObjectType, v40);
    }
  }

  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_264A75684(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = type metadata accessor for ControlMessage();
  *(v3 + 32) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 81) = *a2;

  return MEMORY[0x2822009F8](sub_264A75724, v2, 0);
}

uint64_t sub_264A75724()
{
  v1 = *(v0 + 81);
  v2 = *(v0 + 24);
  v4 = *(v2 + 120);
  v3 = *(v2 + 128);
  ObjectType = swift_getObjectType();
  v6 = (*(v3 + 32))(ObjectType, v3);
  v7 = sub_264AABDA8(v1, v6);

  if (v7)
  {
    v26 = ObjectType;
    v9 = *(v0 + 32);
    v8 = *(v0 + 40);
    v10 = *(v0 + 16);
    v11 = *(*(v0 + 24) + 136);
    v13 = v10[3];
    v12 = v10[4];
    __swift_project_boxed_opaque_existential_1(v10, v13);
    (*(v12 + 8))(v13, v12);
    sub_264A794D8(&qword_27FF8A5E0, type metadata accessor for ControlMessage);
    v14 = sub_264B3FF44();
    *(v0 + 48) = v14;
    *(v0 + 56) = v15;
    v20 = v14;
    v21 = v15;
    sub_2649DEEBC(*(v0 + 40));
    *(v0 + 80) = v1;
    v22 = *(v3 + 40);
    v25 = (v22 + *v22);
    v23 = v22[1];
    v24 = swift_task_alloc();
    *(v0 + 64) = v24;
    *v24 = v0;
    v24[1] = sub_264A759E8;

    return v25(v20, v21, v0 + 80, v26, v3);
  }

  else
  {
    sub_264A78FFC();
    swift_allocError();
    *v16 = 3;
    swift_willThrow();
    v17 = *(v0 + 40);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_264A759E8()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  v4 = *(v2 + 24);
  if (v0)
  {
    v5 = sub_264A75B70;
  }

  else
  {
    v5 = sub_264A75B00;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_264A75B00()
{
  v1 = v0[5];
  sub_2649DEF6C(v0[6], v0[7]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_264A75B70()
{
  sub_2649DEF6C(v0[6], v0[7]);
  v1 = v0[9];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_264A75BDC(uint64_t a1)
{
  v30 = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
  v1 = *(v33 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v33);
  v32 = &v30 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v31 = &v30 - v6;
  v7 = sub_264B3FFD4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v12 = sub_264B40964();
  __swift_project_value_buffer(v12, qword_27FFA71B8);
  v13 = sub_264B41484();
  sub_264B3FF94();
  v14 = sub_264B3FFA4();
  v16 = v15;
  (*(v8 + 8))(v11, v7);

  v17 = sub_264B40944();

  if (os_log_type_enabled(v17, v13))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v35 = v19;
    *v18 = 136446722;
    v20 = sub_2649CC004(v14, v16, &v35);

    *(v18 + 4) = v20;
    *(v18 + 12) = 2050;
    *(v18 + 14) = 188;
    *(v18 + 22) = 2082;
    *(v18 + 24) = sub_2649CC004(0xD000000000000022, 0x8000000264B5D470, &v35);
    _os_log_impl(&dword_2649C6000, v17, v13, "%{public}s:%{public}ld %{public}s", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v19, -1, -1);
    MEMORY[0x266749940](v18, -1, -1);
  }

  else
  {
  }

  v21 = sub_264B41274();
  v22 = v31;
  (*(*(v21 - 8) + 56))(v31, 1, 1, v21);
  v24 = v32;
  v23 = v33;
  (*(v1 + 16))(v32, v30, v33);
  v25 = sub_264A794D8(&qword_27FF8A5D0, type metadata accessor for ControlMessageSession);
  v26 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v27 = swift_allocObject();
  v28 = v34;
  *(v27 + 2) = v34;
  *(v27 + 3) = v25;
  *(v27 + 4) = v28;
  (*(v1 + 32))(&v27[v26], v24, v23);
  swift_retain_n();
  sub_2649CD944(0, 0, v22, &unk_264B4BB48, v27);
}

uint64_t sub_264A7605C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89618, &qword_264B4B9F0) - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89668, &unk_264B48230);
  v5[13] = v8;
  v9 = *(v8 - 8);
  v5[14] = v9;
  v10 = *(v9 + 64) + 15;
  v5[15] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF8A5D8, &qword_264B4BB50);
  v5[16] = v11;
  v12 = *(v11 - 8);
  v5[17] = v12;
  v13 = *(v12 + 64) + 15;
  v5[18] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88F98, &unk_264B468F0);
  v5[19] = v14;
  v15 = *(v14 - 8);
  v5[20] = v15;
  v16 = *(v15 + 64) + 15;
  v5[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A76234, a4, 0);
}

uint64_t sub_264A76234()
{
  v1 = v0[21];
  v2 = v0[10];
  v3 = *(v2 + 120);
  v4 = *(v2 + 128);
  ObjectType = swift_getObjectType();
  (*(v4 + 16))(ObjectType, v4);
  v6 = v0[21];
  v8 = v0[18];
  v7 = v0[19];
  sub_264B412C4();
  v9 = sub_264A794D8(&qword_27FF8A5D0, type metadata accessor for ControlMessageSession);
  v10 = OBJC_IVAR____TtC16ScreenSharingKit21ControlMessageSession_sessionStateContinuation;
  v0[22] = v9;
  v0[23] = v10;
  v11 = v0[10];
  v12 = *(MEMORY[0x277D85798] + 4);
  v13 = swift_task_alloc();
  v0[24] = v13;
  *v13 = v0;
  v13[1] = sub_264A763E4;
  v14 = v0[18];
  v15 = v0[16];

  return MEMORY[0x2822003E8](v0 + 5, v11, v9, v15);
}

uint64_t sub_264A763E4()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264A764F4, v2, 0);
}

uint64_t sub_264A764F4()
{
  v63 = v0;
  v1 = *(v0 + 40);
  *(v0 + 200) = v1;
  if (v1 == 3)
  {
    goto LABEL_13;
  }

  v2 = *(v0 + 80);
  v3 = *(v2 + 168);
  if (v1 == 1)
  {
    if (v3 > 1)
    {
LABEL_12:
      v6 = *(v0 + 112);
      v5 = *(v0 + 120);
      v7 = *(v0 + 104);
      v8 = *(v0 + 88);
      sub_264A78FFC();
      v9 = swift_allocError();
      *v10 = 2;
      v11 = *(v2 + 168);
      *(v2 + 168) = v9;
      sub_264A1EE08(v11);
      sub_264A1F208(v11);
      v62 = v11;
      sub_264A7480C(&v62);
      sub_264A1F208(v11);
      v12 = *(v2 + 168);
      *(v0 + 72) = v12;
      sub_264A1EE08(v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
      sub_264B412A4();
      (*(v6 + 8))(v5, v7);
      sub_264B412B4();
      sub_264A794B4(v1);
LABEL_13:
      v14 = *(v0 + 160);
      v13 = *(v0 + 168);
      v15 = *(v0 + 152);
      v16 = *(v0 + 120);
      v17 = *(v0 + 96);
      (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
      (*(v14 + 8))(v13, v15);

      v18 = *(v0 + 8);

      return v18();
    }
  }

  else if (!v1)
  {
    if (!v3)
    {
      sub_264A1EE08(0);
      sub_264A1F208(0);
      v4 = 0;
LABEL_32:
      sub_264A1F208(v4);
      goto LABEL_33;
    }

    goto LABEL_12;
  }

  if (v3)
  {
    if (v3 == 2)
    {
      if (v1 == 2)
      {
        sub_264A1EE08(2);
        sub_264A1F208(2);
        v4 = 2;
        goto LABEL_32;
      }
    }

    else if (v3 == 1)
    {
      if (v1 == 1)
      {
        sub_264A1EE08(1);
        sub_264A1F208(1);
        v4 = 1;
        goto LABEL_32;
      }
    }

    else if (v1 >= 3)
    {
      sub_264A794A4(v1);
      sub_264A1EE08(v3);
      sub_264A1F208(v3);
      v4 = v1;
      goto LABEL_32;
    }
  }

  sub_264A794A4(v1);
  sub_264A1EE08(v3);
  sub_264A1F208(v3);
  sub_264A1F208(v1);
  v20 = *(v2 + 168);
  *(v2 + 168) = v1;
  sub_264A794A4(v1);
  sub_264A1EE08(v20);
  sub_264A1F208(v20);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v21 = *(v0 + 80);
  v22 = sub_264B40964();
  *(v0 + 208) = __swift_project_value_buffer(v22, qword_27FFA71B8);
  sub_264A1EE08(v20);

  v23 = sub_264B40944();
  v24 = sub_264B41474();
  sub_264A1F208(v20);

  if (os_log_type_enabled(v23, v24))
  {
    v61 = *(v0 + 80);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v62 = v26;
    *v25 = 136446466;
    *(v0 + 56) = v20;
    sub_264A1EE08(v20);
    v27 = sub_264B41064();
    v29 = sub_2649CC004(v27, v28, &v62);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    v30 = *(v61 + 168);
    *(v0 + 64) = v30;
    sub_264A1EE08(v30);
    v31 = sub_264B41064();
    v33 = sub_2649CC004(v31, v32, &v62);

    *(v25 + 14) = v33;
    _os_log_impl(&dword_2649C6000, v23, v24, "Session state changed from %{public}s to %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v26, -1, -1);
    MEMORY[0x266749940](v25, -1, -1);
  }

  sub_264A1F208(v20);
  v34 = *(v0 + 80);
  v35 = *(v34 + 168);
  if (!v35)
  {
LABEL_27:
    sub_264A1F208(v35);
    sub_264A1F208(1);
    v39 = *(v0 + 112);
    v38 = *(v0 + 120);
    v40 = *(v0 + 104);
    v41 = *(v0 + 88);
    v42 = *(*(v0 + 80) + 168);
    *(v0 + 48) = v42;
    sub_264A1EE08(v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
    sub_264B412A4();
    (*(v39 + 8))(v38, v40);
LABEL_33:
    v47 = *(v0 + 80);
    v48 = *(v0 + 200);
    if (*(v47 + 168) >= 2uLL)
    {
      v54 = *(v0 + 88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
      sub_264B412B4();
      sub_264A794B4(v48);
    }

    else
    {
      v49 = *(v0 + 184);
      v51 = *(v0 + 88);
      v50 = *(v0 + 96);
      sub_264A794B4(*(v0 + 200));
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
      v53 = *(v52 - 8);
      (*(v53 + 16))(v50, v51, v52);
      (*(v53 + 56))(v50, 0, 1, v52);
      swift_beginAccess();
      sub_264A1E600(v50, v47 + v49);
      swift_endAccess();
    }

    v55 = *(v0 + 176);
    v56 = *(v0 + 80);
    v57 = *(MEMORY[0x277D85798] + 4);
    v58 = swift_task_alloc();
    *(v0 + 192) = v58;
    *v58 = v0;
    v58[1] = sub_264A763E4;
    v59 = *(v0 + 144);
    v60 = *(v0 + 128);

    return MEMORY[0x2822003E8](v0 + 40, v56, v55, v60);
  }

  if (v35 != 1)
  {
    if (v35 != 2)
    {
      v36 = *(v34 + 168);
      v37 = v35;
      v35 = v36;
    }

    goto LABEL_27;
  }

  v43 = *(v0 + 176);
  sub_264A1F208(1);
  sub_264A1F208(1);
  *(v34 + 113) = 1;
  v44 = *(MEMORY[0x277D859E0] + 4);
  v45 = swift_task_alloc();
  *(v0 + 216) = v45;
  *v45 = v0;
  v45[1] = sub_264A76C30;
  v46 = *(v0 + 80);

  return MEMORY[0x2822007B8]();
}

uint64_t sub_264A76C30()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264A76D40, v2, 0);
}

uint64_t sub_264A76D40()
{
  v1 = *(v0 + 208);
  v2 = sub_264B40944();
  v3 = sub_264B41474();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Session activated", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v7 = *(v0 + 104);
  v8 = *(v0 + 88);
  v9 = *(*(v0 + 80) + 168);
  *(v0 + 48) = v9;
  sub_264A1EE08(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
  sub_264B412A4();
  (*(v6 + 8))(v5, v7);
  v10 = *(v0 + 80);
  v11 = *(v0 + 200);
  if (*(v10 + 168) >= 2uLL)
  {
    v17 = *(v0 + 88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
    sub_264B412B4();
    sub_264A794B4(v11);
  }

  else
  {
    v12 = *(v0 + 184);
    v14 = *(v0 + 88);
    v13 = *(v0 + 96);
    sub_264A794B4(*(v0 + 200));
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88FA8, &qword_264B46960);
    v16 = *(v15 - 8);
    (*(v16 + 16))(v13, v14, v15);
    (*(v16 + 56))(v13, 0, 1, v15);
    swift_beginAccess();
    sub_264A1E600(v13, v10 + v12);
    swift_endAccess();
  }

  v18 = *(v0 + 176);
  v19 = *(v0 + 80);
  v20 = *(MEMORY[0x277D85798] + 4);
  v21 = swift_task_alloc();
  *(v0 + 192) = v21;
  *v21 = v0;
  v21[1] = sub_264A763E4;
  v22 = *(v0 + 144);
  v23 = *(v0 + 128);

  return MEMORY[0x2822003E8](v0 + 40, v19, v18, v23);
}

uint64_t sub_264A76FB8(uint64_t a1)
{
  v2 = v1;
  v35 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v3 = *(v37 - 8);
  v34 = *(v3 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v34 - v7;
  v9 = sub_264B3FFD4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v14 = sub_264B40964();
  __swift_project_value_buffer(v14, qword_27FFA71B8);
  v15 = sub_264B41484();
  sub_264B3FF94();
  v16 = sub_264B3FFA4();
  v18 = v17;
  (*(v10 + 8))(v13, v9);

  v19 = sub_264B40944();

  if (os_log_type_enabled(v19, v15))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v39[0] = v21;
    *v20 = 136446722;
    v22 = sub_2649CC004(v16, v18, v39);

    *(v20 + 4) = v22;
    *(v20 + 12) = 2050;
    *(v20 + 14) = 234;
    *(v20 + 22) = 2082;
    *(v20 + 24) = sub_2649CC004(0xD00000000000001ALL, 0x8000000264B5D420, v39);
    _os_log_impl(&dword_2649C6000, v19, v15, "%{public}s:%{public}ld %{public}s", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v21, -1, -1);
    MEMORY[0x266749940](v20, -1, -1);
  }

  else
  {
  }

  v24 = *(v2 + 120);
  v23 = *(v2 + 128);
  ObjectType = swift_getObjectType();
  (*(v23 + 48))(v39, ObjectType, v23);
  v26 = sub_264B41274();
  (*(*(v26 - 8) + 56))(v8, 1, 1, v26);
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = v36;
  v29 = v37;
  (*(v3 + 16))(v36, v35, v37);
  sub_2649CB5C0(v39, v38);
  v30 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v31 = (v34 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  (*(v3 + 32))(v32 + v30, v28, v29);
  sub_2649D2AAC(v38, v32 + v31);
  *(v32 + ((v31 + 47) & 0xFFFFFFFFFFFFFFF8)) = v27;
  sub_264A783F8(0, 0, v8, &unk_264B4BB38, v32);

  sub_2649D04D4(v8, &qword_27FF898C0, &unk_264B44190);
  return __swift_destroy_boxed_opaque_existential_0(v39);
}

uint64_t sub_264A77480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[27] = a5;
  v6[28] = a6;
  v6[26] = a4;
  v7 = sub_264B3FFD4();
  v6[29] = v7;
  v8 = *(v7 - 8);
  v6[30] = v8;
  v9 = *(v8 + 64) + 15;
  v6[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264A77544, 0, 0);
}

uint64_t sub_264A77544()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  sub_264B411E4();
  v4 = v1[3];
  v5 = __swift_project_boxed_opaque_existential_1(v1, v4);
  v6 = *(v4 - 8);
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  (*(v6 + 16))(v8, v5, v4);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_264B41334();

  swift_beginAccess();
  v9 = v0[5];
  v10 = v0[6];
  v0[32] = v9;
  v0[33] = v10;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v9);
  v0[34] = swift_getAssociatedTypeWitness();
  v11 = sub_264B41614();
  v0[35] = v11;
  v12 = *(v11 - 8);
  v0[36] = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v0[37] = v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[38] = AssociatedTypeWitness;
  v16 = *(AssociatedTypeWitness - 8);
  v0[39] = v16;
  v0[40] = *(v16 + 64);
  v17 = swift_task_alloc();
  v0[41] = v17;
  v18 = *(MEMORY[0x277D856D8] + 4);
  v19 = swift_task_alloc();
  v0[42] = v19;
  *v19 = v0;
  v19[1] = sub_264A77844;

  return MEMORY[0x282200310](v14, 0, 0, v17, v9, v10);
}

uint64_t sub_264A77844()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v7 = *v1;

  if (v0)
  {
    v4 = sub_264A78290;
  }

  else
  {
    v5 = *(v2 + 328);

    v4 = sub_264A7795C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_264A7795C()
{
  v40 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 272);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 288) + 8))(v1, *(v0 + 280));

LABEL_3:
    v4 = *(v0 + 248);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v5 = *(v0 + 8);

    return v5();
  }

  *(v0 + 80) = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  (*(v3 + 32))(boxed_opaque_existential_1, v1, v2);

  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 240);
  v8 = *(v0 + 248);
  v10 = *(v0 + 232);
  v11 = sub_264B40964();
  __swift_project_value_buffer(v11, qword_27FFA71B8);
  v12 = sub_264B41484();
  sub_264B3FF94();
  v13 = sub_264B3FFA4();
  v15 = v14;
  (*(v9 + 8))(v8, v10);

  v16 = sub_264B40944();

  if (os_log_type_enabled(v16, v12))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v39 = v18;
    *v17 = 136446978;
    v19 = sub_2649CC004(v13, v15, &v39);

    *(v17 + 4) = v19;
    *(v17 + 12) = 2050;
    *(v17 + 14) = 251;
    *(v17 + 22) = 2082;
    *(v17 + 24) = sub_2649CC004(0xD00000000000001ALL, 0x8000000264B5D420, &v39);
    *(v17 + 32) = 2082;
    *(v17 + 34) = sub_2649CC004(0xD000000000000026, 0x8000000264B5D440, &v39);
    _os_log_impl(&dword_2649C6000, v16, v12, "%{public}s:%{public}ld %{public}s %{public}s", v17, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266749940](v18, -1, -1);
    MEMORY[0x266749940](v17, -1, -1);
  }

  else
  {
  }

  sub_264A23FD8((v0 + 56), (v0 + 88));
  v20 = swift_dynamicCast();
  v21 = *(v0 + 224);
  if ((v20 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v0 + 344) = Strong;
    if (!Strong)
    {
      goto LABEL_3;
    }

    v25 = Strong;
    *(v0 + 200) = 4;
    v26 = sub_264A781AC;
    goto LABEL_16;
  }

  v23 = *(v0 + 168);
  v22 = *(v0 + 176);
  *(v0 + 352) = v23;
  *(v0 + 360) = v22;
  v24 = swift_weakLoadStrong();
  *(v0 + 368) = v24;
  if (v24)
  {
    v25 = v24;
    v26 = sub_264A77F2C;
LABEL_16:

    return MEMORY[0x2822009F8](v26, v25, 0);
  }

  sub_2649DEF6C(v23, v22);
  v28 = *(v0 + 40);
  v29 = *(v0 + 48);
  *(v0 + 256) = v28;
  *(v0 + 264) = v29;
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v28);
  *(v0 + 272) = swift_getAssociatedTypeWitness();
  v30 = sub_264B41614();
  *(v0 + 280) = v30;
  v31 = *(v30 - 8);
  *(v0 + 288) = v31;
  v32 = *(v31 + 64) + 15;
  v33 = swift_task_alloc();
  *(v0 + 296) = v33;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v0 + 304) = AssociatedTypeWitness;
  v35 = *(AssociatedTypeWitness - 8);
  *(v0 + 312) = v35;
  *(v0 + 320) = *(v35 + 64);
  v36 = swift_task_alloc();
  *(v0 + 328) = v36;
  v37 = *(MEMORY[0x277D856D8] + 4);
  v38 = swift_task_alloc();
  *(v0 + 336) = v38;
  *v38 = v0;
  v38[1] = sub_264A77844;

  return MEMORY[0x282200310](v33, 0, 0, v36, v28, v29);
}

uint64_t sub_264A77F2C()
{
  *(v0 + 376) = *(*(v0 + 368) + 152);

  return MEMORY[0x2822009F8](sub_264A77FA4, 0, 0);
}

uint64_t sub_264A77FA4()
{
  v1 = v0[47];
  v3 = v0[44];
  v2 = v0[45];
  v0[23] = v3;
  v0[24] = v2;
  sub_264B409C4();

  sub_2649DEF6C(v3, v2);
  v4 = v0[5];
  v5 = v0[6];
  v0[32] = v4;
  v0[33] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v4);
  v0[34] = swift_getAssociatedTypeWitness();
  v6 = sub_264B41614();
  v0[35] = v6;
  v7 = *(v6 - 8);
  v0[36] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v0[37] = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[38] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v0[39] = v11;
  v0[40] = *(v11 + 64);
  v12 = swift_task_alloc();
  v0[41] = v12;
  v13 = *(MEMORY[0x277D856D8] + 4);
  v14 = swift_task_alloc();
  v0[42] = v14;
  *v14 = v0;
  v14[1] = sub_264A77844;

  return MEMORY[0x282200310](v9, 0, 0, v12, v4, v5);
}