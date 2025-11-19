void *sub_269340FD4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_269340FF0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_269341030()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_269341080()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2693410B8()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_269341168()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2693411A0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2693411E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CFB8, &qword_2693B58F8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2693412F4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26934132C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2693413CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D158, &unk_2693B5F78);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2693414A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D158, &unk_2693B5F78);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_269341538()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2693415DC()
{
  v1 = sub_2693B33D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D218, &qword_2693B61B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  v12 = *(v0 + v5);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_269341758()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_269341790()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D228, &qword_2693B61C8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_269341898()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2693418D4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_269341964()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26934199C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_269341ABC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_269341AF4()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_269341B60()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_269341B98()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_269341BEC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_269341C24()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_269341D08@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 skipConfirmation];
  *a2 = result;
  return result;
}

uint64_t sub_269341D98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___DismissTimerIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_269341DF0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___DismissTimerIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_269341EAC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 associatedDeviceTarget];
  *a2 = result;
  return result;
}

id sub_269341F04@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 duration];
  *a2 = result;
  return result;
}

id sub_269341F54@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 state];
  *a2 = result;
  return result;
}

id sub_269341F9C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 type];
  *a2 = result;
  return result;
}

id sub_269341FE4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 targetingInfo];
  *a2 = result;
  return result;
}

id sub_269342034@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 includeRemoteTimers];
  *a2 = result;
  return result;
}

uint64_t sub_2693421BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___SearchTimerIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_269342214(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___SearchTimerIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_269342270@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 associatedDeviceTarget];
  *a2 = result;
  return result;
}

id sub_2693422C0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 label];
  *a2 = result;
  return result;
}

id sub_269342310@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 durationNumber];
  *a2 = result;
  return result;
}

id sub_269342360@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 type];
  *a2 = result;
  return result;
}

id sub_2693423A8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 targetingInfo];
  *a2 = result;
  return result;
}

id sub_2693423F8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 createdTimer];
  *a2 = result;
  return result;
}

uint64_t sub_269342448@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CreateTimerIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_2693424A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CreateTimerIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_26934255C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 associatedDeviceTarget];
  *a2 = result;
  return result;
}

id sub_2693425AC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 targetTimer];
  *a2 = result;
  return result;
}

id sub_2693425FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 targetingInfo];
  *a2 = result;
  return result;
}

uint64_t sub_2693426B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___DeleteTimerIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_26934270C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___DeleteTimerIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_269342768@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 associatedDeviceTarget];
  *a2 = result;
  return result;
}

id sub_2693427B8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 targetTimer];
  *a2 = result;
  return result;
}

id sub_269342808@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 toDuration];
  *a2 = result;
  return result;
}

id sub_269342858@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 toLabel];
  *a2 = result;
  return result;
}

id sub_2693428A8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 targetingInfo];
  *a2 = result;
  return result;
}

id sub_2693428F8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 updatedTimer];
  *a2 = result;
  return result;
}

uint64_t sub_269342948@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___SetTimerAttributeIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_2693429A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___SetTimerAttributeIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_269342A5C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 associatedDeviceTarget];
  *a2 = result;
  return result;
}

id sub_269342AAC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 targetTimer];
  *a2 = result;
  return result;
}

id sub_269342AFC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 toTimer];
  *a2 = result;
  return result;
}

id sub_269342B4C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 targetingInfo];
  *a2 = result;
  return result;
}

uint64_t sub_269342C04@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___ResetTimerIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_269342C5C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___ResetTimerIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_269342D18@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 associatedDeviceTarget];
  *a2 = result;
  return result;
}

id sub_269342D68@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 targetTimer];
  *a2 = result;
  return result;
}

id sub_269342DB8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 targetingInfo];
  *a2 = result;
  return result;
}

uint64_t sub_269342E70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___PauseTimerIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_269342EC8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___PauseTimerIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_269342F84@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 associatedDeviceTarget];
  *a2 = result;
  return result;
}

id sub_269342FD4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 targetTimer];
  *a2 = result;
  return result;
}

id sub_269343024@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 targetingInfo];
  *a2 = result;
  return result;
}

uint64_t sub_2693430DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___ResumeTimerIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_269343134(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___ResumeTimerIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_269343188@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 duration];
  *a2 = result;
  return result;
}

id sub_2693431D8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 state];
  *a2 = result;
  return result;
}

id sub_269343220@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 type];
  *a2 = result;
  return result;
}

id sub_269343268@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 remainingTime];
  *a2 = result;
  return result;
}

id sub_2693432C0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 device];
  *a2 = result;
  return result;
}

id sub_269343310@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 shouldMatchAny];
  *a2 = result;
  return result;
}

id sub_269343360@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 shouldMatchRemote];
  *a2 = result;
  return result;
}

id sub_269343540@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isRespondingDevice];
  *a2 = result;
  return result;
}

id sub_269343590@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 targetMatchType];
  *a2 = result;
  return result;
}

id sub_269343618@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isInRespondingRoom];
  *a2 = result;
  return result;
}

uint64_t sub_2693436F0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_269343708()
{
  v0 = sub_2693B3620();
  __swift_allocate_value_buffer(v0, qword_28030CDA8);
  v1 = __swift_project_value_buffer(v0, qword_28030CDA8);
  if (qword_28030CDF8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_28030D160);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_269343AC4(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);

  return MEMORY[0x2822009F8](sub_269343B30, 0, 0);
}

uint64_t sub_269343B30()
{
  v1 = *(v0 + 16);
  type metadata accessor for SiriDeviceResolutionResult();
  v2 = [swift_getObjCClassFromMetadata() notRequired];
  (v1)[2](v1, v2);
  _Block_release(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_269343D58(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);

  return MEMORY[0x2822009F8](sub_269343DC4, 0, 0);
}

uint64_t sub_269343DC4()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE70, "W");
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2693B54B0;
  type metadata accessor for SiriDeviceResolutionResult();
  *(v2 + 32) = [swift_getObjCClassFromMetadata() notRequired];
  v3 = sub_2693B3800();

  (v1)[2](v1, v3);

  _Block_release(v1);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_269343EB8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_28030CDA0 != -1)
  {
    swift_once();
  }

  v8 = sub_2693B3620();
  __swift_project_value_buffer(v8, qword_28030CDA8);
  v9 = sub_2693B3610();
  v10 = sub_2693B39B0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_26933F000, v9, v10, "Handling SearchForTimersIntent.", v11, 2u);
    MEMORY[0x26D63A640](v11, -1, -1);
  }

  sub_26934489C(v4 + OBJC_IVAR____TtC21SiriTimeTimerInternal34SearchForTimersIntentHandlerSingle_siriTimerManager, v18);
  v12 = v19;
  v13 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a1;
  v15 = *(v13 + 56);

  v16 = a1;
  v15(sub_269344944, v14, v12, v13);

  return __swift_destroy_boxed_opaque_existential_1(v18);
}

void sub_269344050(uint64_t a1, void (*a2)(char *), uint64_t a3, void *a4)
{
  if (*(a1 + 8))
  {
    if (qword_28030CDA0 != -1)
    {
      swift_once();
    }

    v5 = sub_2693B3620();
    __swift_project_value_buffer(v5, qword_28030CDA8);
    v6 = sub_2693B3610();
    v7 = sub_2693B39A0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_26933F000, v6, v7, "search failed", v8, 2u);
      MEMORY[0x26D63A640](v8, -1, -1);
    }

    v9 = [objc_allocWithZone(type metadata accessor for SearchTimerIntentResponse()) init];
    v10 = OBJC_IVAR___SearchTimerIntentResponse_code;
    swift_beginAccess();
    *&v9[v10] = 5;
    [v9 setUserActivity_];
LABEL_7:
    a2(v9);
    goto LABEL_19;
  }

  v12 = *a1;
  if ([*a1 state] != 2 && objc_msgSend(v12, sel_state) != 1)
  {
    if (qword_28030CDA0 != -1)
    {
      swift_once();
    }

    v30 = sub_2693B3620();
    __swift_project_value_buffer(v30, qword_28030CDA8);
    v31 = sub_2693B3610();
    v32 = sub_2693B39A0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_26933F000, v31, v32, "No timer found", v33, 2u);
      MEMORY[0x26D63A640](v33, -1, -1);
    }

    v9 = [objc_allocWithZone(type metadata accessor for SearchTimerIntentResponse()) init];
    v34 = OBJC_IVAR___SearchTimerIntentResponse_code;
    swift_beginAccess();
    *&v9[v34] = 5;
    [v9 setUserActivity_];
    type metadata accessor for SiriTimer();
    v35 = sub_2693B3800();
    [v9 setMatchedTimers_];

    v36 = sub_2693B3800();
    [v9 setUnmatchedTimers_];

    goto LABEL_7;
  }

  type metadata accessor for SiriTimer();
  v13 = [a4 identifier];
  if (v13)
  {
    v14 = v13;
    sub_2693B3750();

    v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v16 = sub_2693B3740();
  }

  else
  {
    v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v16 = 0;
  }

  v17 = sub_2693B3740();

  v18 = [v15 initWithIdentifier:v16 displayString:v17];

  [v18 setType_];
  v19 = [a4 duration];
  if (v19)
  {
    v20 = v19;
    [v18 setDuration_];
  }

  [objc_opt_self() defaultDuration];
  v22 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  [v18 setRemainingTime_];

  [v18 setState_];
  v23 = [a4 label];
  [v18 setLabel_];

  v24 = v18;
  v25 = SiriTimer.matches(targetTimer:ignoreRemainingTime:)(v18, 1);

  v9 = [objc_allocWithZone(type metadata accessor for SearchTimerIntentResponse()) init];
  v26 = OBJC_IVAR___SearchTimerIntentResponse_code;
  swift_beginAccess();
  *&v9[v26] = 4;
  [v9 setUserActivity_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE70, "W");
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_2693B54B0;
  *(v27 + 32) = v12;
  v28 = v12;
  v29 = sub_2693B3800();

  if (v25)
  {
    [v9 setMatchedTimers_];
  }

  else
  {
    [v9 setUnmatchedTimers_];
  }

  a2(v9);
LABEL_19:
}

id sub_269344744()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchForTimersIntentHandlerSingle();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2693447AC()
{
  v1 = *v0;
  sub_2693B3DB0();
  MEMORY[0x26D63A0A0](v1);
  return sub_2693B3DD0();
}

uint64_t sub_269344820()
{
  v1 = *v0;
  sub_2693B3DB0();
  MEMORY[0x26D63A0A0](v1);
  return sub_2693B3DD0();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26934489C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
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

uint64_t sub_269344A5C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344B10;

  return sub_269343D58(v2, v3);
}

uint64_t sub_269344B10()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_269344C04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_269344F9C;

  return sub_2693A6ADC(a1, v4, v5, v7);
}

uint64_t objectdestroy_35Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_269344D18()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_269343AC4(v2, v3);
}

uint64_t sub_269344DCC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_269344F9C;

  return sub_2693A69F4(v2, v3, v5);
}

uint64_t objectdestroy_39Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_269344EF4(uint64_t a1, unint64_t *a2)
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

unint64_t sub_269344F44()
{
  result = qword_280E261E8;
  if (!qword_280E261E8)
  {
    type metadata accessor for MTTimerState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E261E8);
  }

  return result;
}

uint64_t dispatch thunk of SiriTimerManagerIOS.currentTimer()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 88);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26934518C;

  return v9(a1, a2);
}

uint64_t sub_26934518C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_2693452B0()
{
  v0 = sub_2693B3620();
  __swift_allocate_value_buffer(v0, qword_28030CEE8);
  v1 = __swift_project_value_buffer(v0, qword_28030CEE8);
  if (qword_28030CDF8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_28030D160);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_26934558C(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);

  return MEMORY[0x2822009F8](sub_269343B30, 0, 0);
}

uint64_t sub_269345780(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);

  return MEMORY[0x2822009F8](sub_269343DC4, 0, 0);
}

uint64_t sub_269345974(int a1, void *aBlock)
{
  *(v2 + 40) = _Block_copy(aBlock);

  return MEMORY[0x2822009F8](sub_2693459E0, 0, 0);
}

uint64_t sub_2693459E0()
{
  v1 = *(v0 + 40);
  v2 = [objc_allocWithZone(type metadata accessor for DeleteTimerIntentResponse()) init];
  v3 = OBJC_IVAR___DeleteTimerIntentResponse_code;
  swift_beginAccess();
  *&v2[v3] = 4;
  [v2 setUserActivity_];
  (v1)[2](v1, v2);
  _Block_release(v1);

  v4 = *(v0 + 8);

  return v4();
}

void sub_269345ABC(uint64_t a1, void *a2, void (*a3)(char *))
{
  if (*(a1 + 1))
  {
    if (qword_28030CDC0 != -1)
    {
      swift_once();
    }

    v4 = sub_2693B3620();
    __swift_project_value_buffer(v4, qword_28030CEE8);
    v5 = sub_2693B3610();
    v6 = sub_2693B39A0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_26933F000, v5, v6, "delete failed", v7, 2u);
      MEMORY[0x26D63A640](v7, -1, -1);
    }

    v8 = [objc_allocWithZone(type metadata accessor for DeleteTimerIntentResponse()) init];
    v9 = OBJC_IVAR___DeleteTimerIntentResponse_code;
    swift_beginAccess();
    *&v8[v9] = 5;
    [v8 setUserActivity_];
  }

  else
  {
    v8 = [objc_allocWithZone(type metadata accessor for DeleteTimerIntentResponse()) init];
    v11 = OBJC_IVAR___DeleteTimerIntentResponse_code;
    swift_beginAccess();
    *&v8[v11] = 4;
    [v8 setUserActivity_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE70, "W");
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2693B54B0;
    *(v12 + 32) = a2;
    type metadata accessor for SiriTimer();
    v13 = a2;
    v14 = sub_2693B3800();

    [v8 setDeletedTimers_];

    if (qword_28030CDC0 != -1)
    {
      swift_once();
    }

    v15 = sub_2693B3620();
    __swift_project_value_buffer(v15, qword_28030CEE8);
    v16 = sub_2693B3610();
    v17 = sub_2693B39B0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_26933F000, v16, v17, "timer stopped completion", v18, 2u);
      MEMORY[0x26D63A640](v18, -1, -1);
    }
  }

  a3(v8);
}

id sub_269345E5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeleteTimerIntentHandlerSingle();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_269345EC4(void *a1, uint64_t a2, uint64_t a3)
{
  sub_26934489C(a2 + OBJC_IVAR____TtC21SiriTimeTimerInternal30DeleteTimerIntentHandlerSingle_siriTimerManager, v22);
  v5 = v23;
  v6 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v7 = (*(v6 + 64))(v5, v6);
  if (v7)
  {
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_1(v22);
    if ([v8 state])
    {
      v9 = [a1 targetTimer];
      v10 = SiriTimer.matches(targetTimer:ignoreRemainingTime:)(v9, 1);

      if (v10)
      {
        type metadata accessor for SiriTimerResolutionResult();
        v11 = sub_2693B1178(v8);
        (*(a3 + 16))(a3, v11);
      }

      else
      {
        if (qword_28030CDC0 != -1)
        {
          swift_once();
        }

        v17 = sub_2693B3620();
        __swift_project_value_buffer(v17, qword_28030CEE8);
        v18 = sub_2693B3610();
        v19 = sub_2693B39B0();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_26933F000, v18, v19, "Timer on the device doesn't match the timer in user request: returning needsConfirmation", v20, 2u);
          MEMORY[0x26D63A640](v20, -1, -1);
        }

        type metadata accessor for SiriTimerResolutionResult();
        v21 = v8;
        v11 = sub_2693B13DC(v8);

        (*(a3 + 16))(a3, v11);
      }

      goto LABEL_17;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  if (qword_28030CDC0 != -1)
  {
    swift_once();
  }

  v12 = sub_2693B3620();
  __swift_project_value_buffer(v12, qword_28030CEE8);
  v13 = sub_2693B3610();
  v14 = sub_2693B39A0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_26933F000, v13, v14, "Timer is not found on device. Skipping Confirm step and will fail the request in Handle step.", v15, 2u);
    MEMORY[0x26D63A640](v15, -1, -1);
  }

  type metadata accessor for SiriTimerResolutionResult();
  v16 = _s21SiriTimeTimerInternal0aC0C07invalidC0ACvgZ_0();
  v11 = sub_2693B1178(v16);

  (*(a3 + 16))(a3, v11);
LABEL_17:
}

void sub_2693461C0(uint64_t a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  if (qword_28030CDC0 != -1)
  {
    swift_once();
  }

  v5 = sub_2693B3620();
  __swift_project_value_buffer(v5, qword_28030CEE8);
  v6 = sub_2693B3610();
  v7 = sub_2693B39B0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26933F000, v6, v7, "Handling delete timer intent.", v8, 2u);
    MEMORY[0x26D63A640](v8, -1, -1);
  }

  v9 = OBJC_IVAR____TtC21SiriTimeTimerInternal30DeleteTimerIntentHandlerSingle_siriTimerManager;
  sub_26934489C(a1 + OBJC_IVAR____TtC21SiriTimeTimerInternal30DeleteTimerIntentHandlerSingle_siriTimerManager, v28);
  v10 = v29;
  v11 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v12 = (*(v11 + 64))(v10, v11);
  if (v12)
  {
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_1(v28);
    if ([v13 state])
    {
      sub_26934489C(a1 + v9, v28);
      v14 = v29;
      v15 = v30;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      v16 = swift_allocObject();
      v16[2] = v13;
      v16[3] = sub_269344A48;
      v16[4] = v4;
      v17 = *(v15 + 16);
      v18 = v13;

      v17(sub_2693465D8, v16, v14, v15);

      __swift_destroy_boxed_opaque_existential_1(v28);

      return;
    }

    v24 = sub_2693B3610();
    v25 = sub_2693B39B0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_26933F000, v24, v25, "Timer has an unknown state (meaning there's no timer set on phone): returning with .failureNoTimers.", v26, 2u);
      MEMORY[0x26D63A640](v26, -1, -1);
    }

    v22 = [objc_allocWithZone(type metadata accessor for DeleteTimerIntentResponse()) init];
    v27 = OBJC_IVAR___DeleteTimerIntentResponse_code;
    swift_beginAccess();
    *&v22[v27] = 101;
    [v22 setUserActivity_];
    (a2)[2](a2, v22);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v28);
    v19 = sub_2693B3610();
    v20 = sub_2693B39A0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_26933F000, v19, v20, "siriTimerManager.currentTimerSync get nil result: returning with .failureNoTimers", v21, 2u);
      MEMORY[0x26D63A640](v21, -1, -1);
    }

    v22 = [objc_allocWithZone(type metadata accessor for DeleteTimerIntentResponse()) init];
    v23 = OBJC_IVAR___DeleteTimerIntentResponse_code;
    swift_beginAccess();
    *&v22[v23] = 101;
    [v22 setUserActivity_];
    (a2)[2](a2, v22);
  }
}

uint64_t sub_2693465E4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_269345974(v2, v3);
}

uint64_t sub_269346698()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344B10;

  return sub_269345780(v2, v3);
}

uint64_t sub_26934674C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_26934558C(v2, v3);
}

uint64_t sub_269346800()
{
  v0 = sub_2693B3620();
  __swift_allocate_value_buffer(v0, qword_28030CF08);
  v1 = __swift_project_value_buffer(v0, qword_28030CF08);
  if (qword_280E26360 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280E26A30);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2693468C8(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v18 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = sub_2693B3920();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2693B5890;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B5898;
  v14[5] = v13;
  v15 = a3;
  v16 = a1;
  sub_2693A6BC4(0, 0, v9, &unk_2693B58A0, v14);
}

uint64_t sub_269346A50(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_26934B604;

  return sub_269349310(v6);
}

uint64_t sub_269346B24(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_269346B44, 0, 0);
}

uint64_t sub_269346B44()
{
  v33 = v0;
  if (qword_28030CDC8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_2693B3620();
  v0[10] = __swift_project_value_buffer(v2, qword_28030CF08);
  v3 = v1;
  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v32 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_2693B3750();
    v13 = v12;

    v14 = sub_26934CA40(v11, v13, &v32);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_26933F000, v4, v5, "DeleteTimerIntentHandler.resolveTargetTimer(for:) %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D63A640](v8, -1, -1);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  v15 = v0[8];
  v16 = [v15 targetTimer];
  v17 = [v15 targetTimer];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 state];
  }

  else
  {
    v19 = 0;
  }

  v20 = v18 == 0;
  v21 = v0[8];
  v22 = sub_2693667D8(v16, v19, v20);
  v0[11] = v22;

  v0[5] = type metadata accessor for DeleteTimerIntent();
  v0[6] = &protocol witness table for DeleteTimerIntent;
  v0[2] = v21;
  v23 = v21;
  v24 = [v22 shouldMatchAny];
  if (v24)
  {
    v31 = 2;
    v25 = v24;
    MEMORY[0x26D639BA0](v24, &v31);

    v26 = v31;
  }

  else
  {
    v26 = 0;
  }

  v27 = sub_26939ECE0(&unk_2879EC598);
  v0[12] = v27;
  v28 = swift_task_alloc();
  v0[13] = v28;
  *v28 = v0;
  v28[1] = sub_269346E5C;
  v29 = v0[9];

  return sub_26938E9DC(v22, (v0 + 2), v26 & 1, v27);
}

uint64_t sub_269346E5C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *(*v2 + 96);
  v7 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v8 = sub_269347028;
  }

  else
  {
    *(v4 + 120) = a1;
    sub_26934B4F0(v4 + 16, &qword_28030CF78, &qword_2693B5880);
    v8 = sub_269346FC0;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_269346FC0()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_269347028()
{
  v19 = v0;
  v1 = v0[14];
  v2 = v0[10];
  sub_26934B4F0((v0 + 2), &qword_28030CF78, &qword_2693B5880);
  v3 = v1;
  v4 = sub_2693B3610();
  v5 = sub_2693B39A0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[14];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    v0[7] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF30, &qword_2693B5A10);
    v10 = sub_2693B3760();
    v12 = sub_26934CA40(v10, v11, &v18);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_26933F000, v4, v5, "DeleteTimerIntentHandler error resolving target timer: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D63A640](v8, -1, -1);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  v13 = v0[14];
  v14 = v0[11];
  type metadata accessor for SiriTimerResolutionResult();
  v15 = sub_2693B1178(v14);

  v16 = v0[1];

  return v16(v15);
}

uint64_t sub_2693471F0(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v18 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = sub_2693B3920();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2693B5860;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B5868;
  v14[5] = v13;
  v15 = a3;
  v16 = a1;
  sub_2693A6BC4(0, 0, v9, &unk_2693B5870, v14);
}

uint64_t sub_269347378(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26934743C;

  return sub_269346B24(v6);
}

uint64_t sub_26934743C(void *a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v9 = *v1;

  (v4)[2](v4, a1);
  _Block_release(v4);

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_2693475A0(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v18 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = sub_2693B3920();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2693B5830;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B6A20;
  v14[5] = v13;
  v15 = a3;
  v16 = a1;
  sub_2693A6BC4(0, 0, v9, &unk_2693B5840, v14);
}

uint64_t sub_269347728(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_2693477B4, 0, 0);
}

uint64_t sub_2693477B4()
{
  v1 = [*(v0 + 16) targetTimer];
  v2 = [v1 shouldMatchAny];

  [v2 BOOLValue];
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_2693478B0;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);

  return sub_269349554(v5, v4);
}

uint64_t sub_2693478B0(void *a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v9 = *v1;

  (v4)[2](v4, a1);
  _Block_release(v4);

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_269347A18(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v18 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = sub_2693B3920();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2693B5808;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B5810;
  v14[5] = v13;
  v15 = a3;
  v16 = a1;
  sub_2693A6BC4(0, 0, v9, &unk_2693B5818, v14);
}

uint64_t sub_269347BA0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_269347C2C, 0, 0);
}

uint64_t sub_269347C2C()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_269347CE0;
  v3 = *(v0 + 24);

  return sub_269348D84(v3);
}

uint64_t sub_269347CE0()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v8 = *v0;

  type metadata accessor for SiriDeviceResolutionResult();
  v5 = sub_2693B3800();

  (v2)[2](v2, v5);

  _Block_release(v2);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_269347E74(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = v1;
  return MEMORY[0x2822009F8](sub_269347E94, 0, 0);
}

uint64_t sub_269347E94()
{
  v15 = v0;
  v1 = v0[14];
  v2 = [v1 targetTimer];
  v3 = [v1 targetTimer];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 state];
  }

  else
  {
    v5 = 0;
  }

  v6 = v0[14];
  v7 = sub_2693667D8(v2, v5, 0);
  v0[16] = v7;

  v8 = [v6 targetTimer];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 shouldMatchAny];

    if (v10)
    {
      v14 = 2;
      MEMORY[0x26D639BA0](v10, &v14);

      LOBYTE(v10) = v14;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = sub_269348014;
  v12 = v0[15];

  return sub_26934A160(v7, v10 & 1);
}

uint64_t sub_269348014(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v7 = sub_2693481C0;
  }

  else
  {
    *(v4 + 152) = a1;
    v7 = sub_26934813C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26934813C()
{
  v1 = v0[16];
  v2 = sub_26934ADBC(v0[19]);

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_2693481C0()
{
  v38 = v0;
  v1 = *(v0 + 144);
  *(v0 + 80) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF30, &qword_2693B5A10);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 88);
    if (qword_28030CDC8 != -1)
    {
      swift_once();
    }

    v4 = sub_2693B3620();
    __swift_project_value_buffer(v4, qword_28030CF08);
    sub_26934AD9C(v3);
    v5 = sub_2693B3610();
    v6 = sub_2693B39A0();
    sub_26934ADAC(v3);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v37 = v8;
      *v7 = 136315138;
      *(v0 + 104) = v3;
      sub_26934AD9C(v3);
      v9 = sub_2693B3760();
      v11 = sub_26934CA40(v9, v10, &v37);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_26933F000, v5, v6, "DeleteTimerIntentHandler.handle(intent:) error deleting timer: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x26D63A640](v8, -1, -1);
      MEMORY[0x26D63A640](v7, -1, -1);
    }

    v12 = *(v0 + 128);
    v37 = v3;
    v13 = sub_26934AEC8(&v37);

    sub_26934ADAC(v3);
  }

  else
  {
    v14 = (v0 + 16);

    if (qword_28030CDC8 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 144);
    v16 = sub_2693B3620();
    __swift_project_value_buffer(v16, qword_28030CF08);
    v17 = v15;
    v18 = sub_2693B3610();
    v19 = sub_2693B39A0();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = *(v0 + 144);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v37 = v22;
      *v21 = 136315138;
      *(v0 + 96) = v20;
      v23 = v20;
      v24 = sub_2693B3760();
      v26 = sub_26934CA40(v24, v25, &v37);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_26933F000, v18, v19, "DeleteTimerIntentHandler.handle(intent:) unknown error deleting timer: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x26D63A640](v22, -1, -1);
      MEMORY[0x26D63A640](v21, -1, -1);
    }

    v27 = *(v0 + 144);
    v28 = *(v0 + 128);
    v29 = sub_2693B35D0();
    v30 = MEMORY[0x277D61908];
    *(v0 + 40) = v29;
    *(v0 + 48) = v30;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
    *boxed_opaque_existential_1 = sub_2693B30D0();
    v32 = *MEMORY[0x277D61840];
    v33 = sub_2693B34B0();
    (*(*(v33 - 8) + 104))(boxed_opaque_existential_1, v32, v33);
    (*(*(v29 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618F8], v29);
    sub_2693B34C0();
    __swift_destroy_boxed_opaque_existential_1(v14);
    v13 = [objc_allocWithZone(type metadata accessor for DeleteTimerIntentResponse()) init];
    v34 = OBJC_IVAR___DeleteTimerIntentResponse_code;
    swift_beginAccess();
    *&v13[v34] = 5;
    [v13 setUserActivity_];
  }

  v35 = *(v0 + 8);

  return v35(v13);
}

uint64_t sub_269348660(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v18 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = sub_2693B3920();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2693B57B0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B5700;
  v14[5] = v13;
  v15 = a3;
  v16 = a1;
  sub_2693A6BC4(0, 0, v9, &unk_2693B5530, v14);
}

uint64_t sub_2693487E8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26934B604;

  return sub_269347E74(v6);
}

uint64_t sub_2693488AC(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v36 = v5;
  v37 = result;
  v34 = v1;
  while (v4)
  {
LABEL_10:
    v10 = *(*(result + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v4)))));
    v11 = v10 >> 62;
    v12 = v10;
    if (v10 >> 62)
    {
      v13 = sub_2693B3C70();
    }

    else
    {
      v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v8 >> 62;
    if (v8 >> 62)
    {
      result = sub_2693B3C70();
    }

    else
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v40 = v13;
    v15 = __OFADD__(result, v13);
    v16 = result + v13;
    if (v15)
    {
      goto LABEL_41;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v14)
      {
LABEL_22:
        sub_2693B3C70();
      }

      else
      {
        v18 = v8 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
        v19 = *(v18 + 16);
      }

      result = sub_2693B3BE0();
      v17 = result;
      v18 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_24;
    }

    if (v14)
    {
      goto LABEL_22;
    }

    v17 = v8;
    v18 = v8 & 0xFFFFFFFFFFFFFF8;
    if (v16 > *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_21;
    }

LABEL_24:
    v20 = *(v18 + 16);
    v21 = *(v18 + 24);
    v22 = v12;
    v39 = v17;
    if (v11)
    {
      v24 = v18;
      result = sub_2693B3C70();
      v18 = v24;
      v22 = v12;
      v23 = result;
    }

    else
    {
      v23 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 &= v4 - 1;
    if (v23)
    {
      if (((v21 >> 1) - v20) < v40)
      {
        goto LABEL_43;
      }

      v25 = v18 + 8 * v20 + 32;
      v38 = v4;
      v35 = v18;
      v42 = v22;
      if (v11)
      {
        if (v23 < 1)
        {
          goto LABEL_45;
        }

        sub_26934B1D8();
        v26 = 0;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF60, &qword_2693B61C0);
          v27 = v23;
          v28 = v25;
          v29 = sub_26936F610(v41, v26, v42);
          v31 = *v30;
          (v29)(v41, 0);
          v25 = v28;
          v23 = v27;
          *(v25 + 8 * v26++) = v31;
        }

        while (v27 != v26);
      }

      else
      {
        sub_26934B18C();
        swift_arrayInitWithCopy();
      }

      v8 = v39;
      v5 = v36;
      result = v37;
      v1 = v34;
      v4 = v38;
      if (v40 >= 1)
      {
        v32 = *(v35 + 16);
        v15 = __OFADD__(v32, v40);
        v33 = v32 + v40;
        if (v15)
        {
          goto LABEL_44;
        }

        *(v35 + 16) = v33;
      }
    }

    else
    {

      v8 = v39;
      v5 = v36;
      result = v37;
      if (v40 > 0)
      {
        goto LABEL_42;
      }
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return v8;
    }

    v4 = *(v1 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

id sub_269348C0C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DeleteTimerIntentHandler()
{
  result = qword_28030CF20;
  if (!qword_28030CF20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269348CD0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_2693487E8(v2, v3, v4);
}

uint64_t sub_269348D84(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_2693B3420();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269348E44, 0, 0);
}

uint64_t sub_269348E44()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_2693B3410();
  v4 = sub_2693B3400();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (qword_280E262E8 != -1)
    {
      swift_once();
    }

    v5 = sub_2693B3620();
    __swift_project_value_buffer(v5, qword_280E262F0);
    v6 = sub_2693B3610();
    v7 = sub_2693B39B0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_26933F000, v6, v7, "resolveAllTargetableDevices() Resolving all targetable devices", v8, 2u);
      MEMORY[0x26D63A640](v8, -1, -1);
    }

    v9 = swift_task_alloc();
    v0[6] = v9;
    *v9 = v0;
    v9[1] = sub_269349074;
    v10 = v0[2];

    return sub_269394214();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE70, "W");
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2693B54B0;
    type metadata accessor for SiriDeviceResolutionResult();
    *(v12 + 32) = [swift_getObjCClassFromMetadata() notRequired];
    v13 = v0[5];

    v14 = v0[1];

    return v14(v12);
  }
}

uint64_t sub_269349074(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_269349174, 0, 0);
}

uint64_t sub_269349174()
{
  v1 = v0[7];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v14 = v0[7];
    }

    v2 = sub_2693B3C70();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:
    v15 = v0[7];

    v13 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  v18 = MEMORY[0x277D84F90];
  result = sub_2693B3C20();
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = v0[7];
  type metadata accessor for SiriDeviceResolutionResult();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = 0;
  v7 = v4 + 32;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x26D639EB0](v6, v0[7]);
    }

    else
    {
      v8 = *(v7 + 8 * v6);
    }

    v9 = v8;
    ++v6;
    v10 = [ObjCClassFromMetadata resolutionResultSuccessWithResolvedValue_];

    sub_2693B3C00();
    v11 = *(v18 + 16);
    sub_2693B3C30();
    sub_2693B3C40();
    sub_2693B3C10();
  }

  while (v2 != v6);
  v12 = v0[7];

  v13 = v18;
LABEL_14:
  v16 = v0[5];

  v17 = v0[1];

  return v17(v13);
}

uint64_t sub_269349330()
{
  v20 = v0;
  if (qword_28030CDC8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_2693B3620();
  __swift_project_value_buffer(v2, qword_28030CF08);
  v3 = v1;
  v4 = sub_2693B3610();
  v5 = sub_2693B39B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 40);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_2693B3750();
    v13 = v12;

    v14 = sub_26934CA40(v11, v13, &v19);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_26933F000, v4, v5, "DeleteTimerIntentHandler.confirm(intent:) %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D63A640](v8, -1, -1);
    MEMORY[0x26D63A640](v7, -1, -1);
  }

  v15 = [objc_allocWithZone(type metadata accessor for DeleteTimerIntentResponse()) init];
  v16 = OBJC_IVAR___DeleteTimerIntentResponse_code;
  swift_beginAccess();
  *&v15[v16] = 4;
  [v15 setUserActivity_];
  v17 = *(v0 + 8);

  return v17(v15);
}

uint64_t sub_269349554(void *a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  v4 = sub_2693B3420();
  v2[22] = v4;
  v5 = *(v4 - 8);
  v2[23] = v5;
  v6 = *(v5 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[5] = type metadata accessor for DeleteTimerIntent();
  v2[6] = &protocol witness table for DeleteTimerIntent;
  v2[2] = a1;
  v7 = a1;

  return MEMORY[0x2822009F8](sub_269349638, 0, 0);
}

uint64_t sub_269349638()
{
  v21 = v0;
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  sub_2693B3410();
  v4 = sub_2693B3400();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (qword_280E262E8 != -1)
    {
      swift_once();
    }

    v5 = sub_2693B3620();
    v0[25] = __swift_project_value_buffer(v5, qword_280E262F0);
    sub_26934489C((v0 + 2), (v0 + 7));
    v6 = sub_2693B3610();
    v7 = sub_2693B39B0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v20 = v9;
      *v8 = 136315138;
      sub_26934489C((v0 + 7), (v0 + 12));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF70, &qword_2693B5850);
      v10 = sub_2693B3760();
      v12 = v11;
      __swift_destroy_boxed_opaque_existential_1(v0 + 7);
      v13 = sub_26934CA40(v10, v12, &v20);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_26933F000, v6, v7, "resolveAssociatedDeviceTarget(for:) %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x26D63A640](v9, -1, -1);
      MEMORY[0x26D63A640](v8, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    }

    v18 = swift_task_alloc();
    v0[26] = v18;
    *v18 = v0;
    v18[1] = sub_269349914;
    v19 = v0[21];

    return sub_269394214();
  }

  else
  {
    *(v0[21] + qword_280E266A8) = 0;
    type metadata accessor for SiriDeviceResolutionResult();
    v14 = [swift_getObjCClassFromMetadata() notRequired];
    v15 = v0[24];
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v16 = v0[1];

    return v16(v14);
  }
}

uint64_t sub_269349914(uint64_t a1)
{
  v2 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = a1;

  return MEMORY[0x2822009F8](sub_269349A14, 0, 0);
}

uint64_t sub_269349A14()
{
  v54 = v0;
  v1 = *(v0 + 216);
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_22:
    v47 = *(v0 + 216);
    goto LABEL_23;
  }

  if (v1 < 0)
  {
    v46 = *(v0 + 216);
  }

  if (!sub_2693B3C70())
  {
    goto LABEL_22;
  }

LABEL_3:
  v2 = [*(v0 + 160) targetingInfo];
  v3 = *(v0 + 216);
  if (!v2)
  {
LABEL_23:

LABEL_24:
    *(*(v0 + 168) + qword_280E266A8) = 0;
    type metadata accessor for SiriDeviceResolutionResult();
    v41 = [swift_getObjCClassFromMetadata() notRequired];
    goto LABEL_25;
  }

  v4 = *(v0 + 200);

  v5 = v2;
  v6 = sub_2693B3610();
  v7 = sub_2693B39B0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v53 = v9;
    *v8 = 134218242;
    if (v1 >> 62)
    {
      v12 = *(v0 + 216);
      if (v1 < 0)
      {
        v13 = *(v0 + 216);
      }

      v10 = sub_2693B3C70();
    }

    else
    {
      v10 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = *(v0 + 216);
    *(v8 + 4) = v10;

    *(v8 + 12) = 2080;
    v15 = v5;
    v16 = [v15 description];
    v17 = v5;
    v18 = sub_2693B3750();
    v20 = v19;

    v21 = v18;
    v5 = v17;
    v22 = sub_26934CA40(v21, v20, &v53);

    *(v8 + 14) = v22;
    _os_log_impl(&dword_26933F000, v6, v7, "Filtering %ld targets using targeting info: %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x26D63A640](v9, -1, -1);
    MEMORY[0x26D63A640](v8, -1, -1);
  }

  else
  {
    v11 = *(v0 + 216);
  }

  v23 = sub_26939E0E0(v5, *(v0 + 160), *(v0 + 216));

  v24 = *(v0 + 200);
  if (!v23)
  {
    v42 = sub_2693B3610();
    v43 = sub_2693B39B0();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_26933F000, v42, v43, "No valid device target found for target criteria", v44, 2u);
      MEMORY[0x26D63A640](v44, -1, -1);
    }

    v45 = *(v0 + 168);

    *(v45 + qword_280E266B8) = 1;
    goto LABEL_24;
  }

  v25 = v23;
  v26 = sub_2693B3610();
  v27 = sub_2693B39B0();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v53 = v51;
    *v28 = 136315138;
    v52 = v5;
    v29 = v25;
    v30 = v25;
    v31 = [v29 description];
    v32 = sub_2693B3750();
    v34 = v33;

    v25 = v30;
    v5 = v52;
    v35 = sub_26934CA40(v32, v34, &v53);

    *(v28 + 4) = v35;
    _os_log_impl(&dword_26933F000, v26, v27, "Found valid device target: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v51);
    MEMORY[0x26D63A640](v51, -1, -1);
    MEMORY[0x26D63A640](v28, -1, -1);
  }

  v36 = *(v0 + 168) + qword_28030D540;
  swift_beginAccess();
  v37 = *(v36 + 24);
  v38 = *(v36 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
  v39 = *(v38 + 40);
  v40 = v25;
  v39(v23, v37, v38);
  swift_endAccess();
  type metadata accessor for SiriDeviceResolutionResult();
  v41 = sub_2693B1D2C(v40);

LABEL_25:
  v48 = *(v0 + 192);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v49 = *(v0 + 8);

  return v49(v41);
}

uint64_t sub_269349ED8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, id *), uint64_t a3, int a4, void *a5)
{
  v7 = a1 + 64;
  v8 = -1 << *(a1 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v37 = -1 << *(a1 + 32);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  v38 = a5;
  v39 = v7;
  while (v10)
  {
    v44 = a4;
    v15 = v12;
LABEL_14:
    v17 = (v15 << 9) | (8 * __clz(__rbit64(v10)));
    v18 = *(*(a1 + 56) + v17);
    v43[0] = *(*(a1 + 48) + v17);
    v43[1] = v18;
    v19 = v43[0];

    a2(v42, v43);

    v21 = v42[0];
    v20 = v42[1];
    v22 = *a5;
    v24 = sub_26939C188(v42[0]);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((v44 & 1) == 0)
      {
        sub_26939CD44();
      }
    }

    else
    {
      sub_26939C550(v27, v44 & 1);
      v29 = *a5;
      v30 = sub_26939C188(v21);
      if ((v28 & 1) != (v31 & 1))
      {
        goto LABEL_27;
      }

      v24 = v30;
    }

    v10 &= v10 - 1;
    v32 = *a5;
    if (v28)
    {
      v43[0] = *(v32[7] + 8 * v24);

      sub_26939C244(v20);

      v13 = v32[7];
      v14 = *(v13 + 8 * v24);
      *(v13 + 8 * v24) = v43[0];
    }

    else
    {
      v32[(v24 >> 6) + 8] |= 1 << v24;
      *(v32[6] + 8 * v24) = v21;
      *(v32[7] + 8 * v24) = v20;
      v33 = v32[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_26;
      }

      v32[2] = v35;
    }

    a4 = 1;
    v12 = v15;
    a5 = v38;
    v7 = v39;
  }

  v16 = v12;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v11)
    {
      sub_26934B184();
    }

    v10 = *(v7 + 8 * v15);
    ++v16;
    if (v10)
    {
      v44 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  type metadata accessor for SiriDevice();
  result = sub_2693B3D40();
  __break(1u);
  return result;
}

uint64_t sub_26934A160(uint64_t a1, char a2)
{
  *(v3 + 392) = a2;
  *(v3 + 312) = a1;
  *(v3 + 320) = v2;
  v5 = swift_task_alloc();
  *(v3 + 328) = v5;
  *v5 = v3;
  v5[1] = sub_26934A220;

  return (sub_26938BD44)(v3 + 64, a1, 1);
}

uint64_t sub_26934A220()
{
  v2 = *(*v1 + 328);
  v3 = *v1;
  *(v3 + 336) = v0;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_26934A354, 0, 0);
  }
}

uint64_t sub_26934A354()
{
  v45 = v0;
  v1 = *(v0 + 72);
  *(v0 + 168) = v1;
  v2 = *(v0 + 392);

  if (v2 & 1) != 0 && (v3 = [*(v0 + 312) shouldMatchAny]) != 0 && (v4 = v3, v5 = objc_msgSend(v3, sel_BOOLValue), v4, (v5))
  {
    v6 = *(v0 + 88);
    v7 = qword_28030CDC8;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = sub_2693B3620();
    __swift_project_value_buffer(v8, qword_28030CF08);

    v9 = sub_2693B3610();
    v10 = sub_2693B39B0();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v44 = v12;
      *v11 = 136315138;
      *(v0 + 304) = sub_2693995BC(v6);
      v13 = sub_2693B3CB0();
      v15 = sub_26934CA40(v13, v14, v44);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_26933F000, v9, v10, "Appending matched remote timers to list of timers to update: %s timer(s)", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x26D63A640](v12, -1, -1);
      MEMORY[0x26D63A640](v11, -1, -1);
    }

    v16 = *(v0 + 336);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v44 = v1;
    sub_269349ED8(v6, sub_26937E1E4, 0, isUniquelyReferenced_nonNull_native, v44);

    v1 = *v44;
  }

  else
  {
    v18 = *(v0 + 336);
  }

  v19 = *(v0 + 392);
  v20 = sub_2693A0900(v1, *(v0 + 312));
  v22 = v21;
  *(v0 + 344) = v20;
  *(v0 + 352) = v21;
  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF50, &unk_2693B57E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2693B5770;
    *(inited + 32) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE70, "W");
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_2693B54B0;
    *(v24 + 32) = v22;
    *(inited + 40) = v24;
    v25 = v20;
    v26 = v22;
    v27 = sub_2693A83E8(inited);
    swift_setDeallocating();
    sub_26934B4F0(inited + 32, &qword_28030CF58, &unk_2693B57F0);

    v1 = v27;
  }

  *(v0 + 360) = v1;
  if (sub_2693995BC(v1) == 1 || *(v0 + 392) == 1 && sub_2693995BC(v1) >= 2)
  {
    v28 = *(v0 + 320);
    v29 = qword_28030D540;
    swift_beginAccess();
    sub_26934489C(v28 + v29, v0 + 104);
    __swift_project_boxed_opaque_existential_1((v0 + 104), *(v0 + 128));
    v30 = sub_2693488AC(v1);
    *(v0 + 368) = v30;
    v31 = off_2879EDE10;
    v32 = type metadata accessor for TimerManager();
    v43 = (v31 + *v31);
    v33 = v31[1];
    v34 = swift_task_alloc();
    *(v0 + 376) = v34;
    *v34 = v0;
    v34[1] = sub_26934A9D4;

    return (v43)(v30, v32, &off_2879EDD98);
  }

  else if (sub_2693995BC(v1))
  {
    sub_26934B0F0();
    swift_allocError();
    *v36 = 1;
    swift_willThrow();
    *(v0 + 176) = *(v0 + 64);
    sub_26934B4F0(v0 + 176, &qword_28030CF40, &unk_2693B57D0);
    sub_26934B4F0(v0 + 168, &qword_28030CF48, &qword_2693B6A70);
    *(v0 + 184) = *(v0 + 80);
    sub_26934B4F0(v0 + 184, &qword_28030CF48, &qword_2693B6A70);
    *(v0 + 192) = *(v0 + 88);
    sub_26934B4F0(v0 + 192, &qword_28030CF48, &qword_2693B6A70);
    *(v0 + 200) = *(v0 + 96);
    sub_26934B4F0(v0 + 200, &qword_28030CF48, &qword_2693B6A70);
    sub_26934B144(v20, v22);

    v37 = *(v0 + 8);

    return v37();
  }

  else
  {
    *(v0 + 208) = *(v0 + 64);
    sub_26934B4F0(v0 + 208, &qword_28030CF40, &unk_2693B57D0);
    sub_26934B4F0(v0 + 168, &qword_28030CF48, &qword_2693B6A70);
    *(v0 + 216) = *(v0 + 80);
    sub_26934B4F0(v0 + 216, &qword_28030CF48, &qword_2693B6A70);
    *(v0 + 224) = *(v0 + 88);
    sub_26934B4F0(v0 + 224, &qword_28030CF48, &qword_2693B6A70);
    *(v0 + 232) = *(v0 + 96);
    v39 = *(v0 + 352);
    v38 = *(v0 + 360);
    v40 = *(v0 + 344);
    sub_26934B4F0(v0 + 232, &qword_28030CF48, &qword_2693B6A70);
    sub_26934B144(v40, v39);

    v41 = *(v0 + 8);
    v42 = MEMORY[0x277D84F90];

    return v41(v42);
  }
}

uint64_t sub_26934A9D4()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v7 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v4 = sub_26934AC28;
  }

  else
  {
    v5 = *(v2 + 368);

    v4 = sub_26934AAF0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26934AAF0()
{
  v1 = v0[48];
  v2 = v0[45];
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  v3 = sub_26938B998(v2);
  v0[34] = v0[8];
  sub_26934B4F0((v0 + 34), &qword_28030CF40, &unk_2693B57D0);
  sub_26934B4F0((v0 + 21), &qword_28030CF48, &qword_2693B6A70);
  v0[35] = v0[10];
  sub_26934B4F0((v0 + 35), &qword_28030CF48, &qword_2693B6A70);
  v0[36] = v0[11];
  sub_26934B4F0((v0 + 36), &qword_28030CF48, &qword_2693B6A70);
  v0[37] = v0[12];
  v5 = v0[44];
  v4 = v0[45];
  v6 = v0[43];
  sub_26934B4F0((v0 + 37), &qword_28030CF48, &qword_2693B6A70);
  sub_26934B144(v6, v5);

  v7 = v0[1];

  return v7(v3);
}

uint64_t sub_26934AC28()
{
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  sub_26934B144(*(v0 + 344), *(v0 + 352));
  *(v0 + 240) = *(v0 + 64);
  sub_26934B4F0(v0 + 240, &qword_28030CF40, &unk_2693B57D0);
  sub_26934B4F0(v0 + 168, &qword_28030CF48, &qword_2693B6A70);
  *(v0 + 248) = *(v0 + 80);
  sub_26934B4F0(v0 + 248, &qword_28030CF48, &qword_2693B6A70);
  *(v0 + 256) = *(v0 + 88);
  sub_26934B4F0(v0 + 256, &qword_28030CF48, &qword_2693B6A70);
  *(v0 + 264) = *(v0 + 96);
  sub_26934B4F0(v0 + 264, &qword_28030CF48, &qword_2693B6A70);

  __swift_destroy_boxed_opaque_existential_1((v0 + 104));

  v3 = *(v0 + 384);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_26934AD9C(unint64_t result)
{
  if (result >= 0xA)
  {
  }

  return result;
}

unint64_t sub_26934ADAC(unint64_t result)
{
  if (result >= 0xA)
  {
  }

  return result;
}

char *sub_26934ADBC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v1 = sub_2693B3C70();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = [objc_allocWithZone(type metadata accessor for DeleteTimerIntentResponse()) init];
  v3 = OBJC_IVAR___DeleteTimerIntentResponse_code;
  swift_beginAccess();
  if (v1)
  {
    *&v2[v3] = 4;
    [v2 setUserActivity_];
    type metadata accessor for SiriTimer();
    v4 = sub_2693B3800();
    [v2 setDeletedTimers_];
  }

  else
  {
    *&v2[v3] = 100;
    [v2 setUserActivity_];
  }

  return v2;
}

char *sub_26934AEC8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 5 && v1 - 7 >= 3)
  {
    if (v1 == 6)
    {
      v8 = [objc_allocWithZone(type metadata accessor for DeleteTimerIntentResponse()) init];
      v9 = OBJC_IVAR___DeleteTimerIntentResponse_code;
      swift_beginAccess();
      v10 = 101;
    }

    else
    {
      v8 = [objc_allocWithZone(type metadata accessor for DeleteTimerIntentResponse()) init];
      v9 = OBJC_IVAR___DeleteTimerIntentResponse_code;
      swift_beginAccess();
      v10 = 100;
    }
  }

  else
  {
    v2 = sub_2693B35D0();
    v12[3] = v2;
    v12[4] = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
    sub_26934B0F0();
    v4 = swift_allocError();
    *v5 = v1;
    sub_26934AD9C(v1);
    *boxed_opaque_existential_1 = sub_2693B30D0();
    v6 = *MEMORY[0x277D61840];
    v7 = sub_2693B34B0();
    (*(*(v7 - 8) + 104))(boxed_opaque_existential_1, v6, v7);
    (*(*(v2 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618F8], v2);
    sub_2693B34C0();
    __swift_destroy_boxed_opaque_existential_1(v12);

    v8 = [objc_allocWithZone(type metadata accessor for DeleteTimerIntentResponse()) init];
    v9 = OBJC_IVAR___DeleteTimerIntentResponse_code;
    swift_beginAccess();
    v10 = 5;
  }

  *&v8[v9] = v10;
  [v8 setUserActivity_];
  return v8;
}

unint64_t sub_26934B0F0()
{
  result = qword_28030CF38;
  if (!qword_28030CF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030CF38);
  }

  return result;
}

void sub_26934B144(void *a1, void *a2)
{
  if (a1)
  {
  }
}

unint64_t sub_26934B18C()
{
  result = qword_280E261C0;
  if (!qword_280E261C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E261C0);
  }

  return result;
}

unint64_t sub_26934B1D8()
{
  result = qword_28030CF68;
  if (!qword_28030CF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28030CF60, &qword_2693B61C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030CF68);
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

uint64_t sub_26934B284()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_269347BA0(v2, v3, v4);
}

uint64_t sub_26934B338()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_269347728(v2, v3, v4);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_26934B43C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344B10;

  return sub_269347378(v2, v3, v4);
}

uint64_t sub_26934B4F0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26934B550()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_269346A50(v2, v3, v4);
}

uint64_t SiriTimer.matches(targetTimer:ignoreRemainingTime:)(void *a1, char a2)
{
  if (!a1)
  {
    goto LABEL_81;
  }

  v4 = a1;
  v5 = [v4 duration];
  if (v5)
  {
    v6 = v5;
    [v5 doubleValue];
    v8 = v7;
  }

  else
  {
    [objc_opt_self() defaultDuration];
    v8 = v9;
  }

  v10 = objc_opt_self();
  [v10 defaultDuration];
  if (v8 != v11)
  {
    v16 = [v2 duration];
    if (!v16 || (v17 = v16, [v16 doubleValue], v19 = v18, v17, v8 != v19))
    {
      if (qword_28030CDD0 != -1)
      {
        swift_once();
      }

      v20 = sub_2693B3620();
      __swift_project_value_buffer(v20, qword_28030CF80);
      v21 = v2;
      v22 = sub_2693B3610();
      v23 = sub_2693B3990();

      if (!os_log_type_enabled(v22, v23))
      {
        goto LABEL_49;
      }

      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v111[0] = v25;
      *v24 = 136315394;
      [v21 duration];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF98, &qword_2693B58B8);
      v26 = sub_2693B3760();
      v28 = sub_26934CA40(v26, v27, v111);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      v29 = sub_2693B3950();
      v31 = sub_26934CA40(v29, v30, v111);

      *(v24 + 14) = v31;
      v32 = "Duration time doesn't match: input – %s, target - %s";
      goto LABEL_47;
    }
  }

  if ((a2 & 1) == 0)
  {
    v12 = [v4 remainingTime];
    if (v12)
    {
      v13 = v12;
      [v12 doubleValue];
      v15 = v14;
    }

    else
    {
      [v10 defaultDuration];
      v15 = v33;
    }

    [v10 defaultDuration];
    if (v15 != v34)
    {
      v73 = [v2 remainingTime];
      if (!v73 || (v74 = v73, [v73 doubleValue], v76 = v75, v74, v15 != v76))
      {
        if (qword_28030CDD0 != -1)
        {
          swift_once();
        }

        v77 = sub_2693B3620();
        __swift_project_value_buffer(v77, qword_28030CF80);
        v78 = v2;
        v22 = sub_2693B3610();
        v23 = sub_2693B3990();

        if (!os_log_type_enabled(v22, v23))
        {
          goto LABEL_49;
        }

        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v111[0] = v25;
        *v24 = 136315394;
        [v78 remainingTime];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF98, &qword_2693B58B8);
        v79 = sub_2693B3760();
        v81 = sub_26934CA40(v79, v80, v111);

        *(v24 + 4) = v81;
        *(v24 + 12) = 2080;
        v82 = sub_2693B3950();
        v84 = sub_26934CA40(v82, v83, v111);

        *(v24 + 14) = v84;
        v32 = "Remaining time doesn't match: input – %s, target - %s";
LABEL_47:
        _os_log_impl(&dword_26933F000, v22, v23, v32, v24, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D63A640](v25, -1, -1);
        v72 = v24;
        goto LABEL_48;
      }
    }
  }

  v35 = [v4 state];
  if (v35 && v35 != [v2 state])
  {
    if (qword_28030CDD0 != -1)
    {
      swift_once();
    }

    v50 = sub_2693B3620();
    __swift_project_value_buffer(v50, qword_28030CF80);
    v51 = v2;
    v22 = sub_2693B3610();
    v52 = sub_2693B3990();

    if (!os_log_type_enabled(v22, v52))
    {
      goto LABEL_49;
    }

    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v111[0] = v54;
    *v53 = 136315394;
    [v51 state];
    v55 = sub_2693B3760();
    v57 = sub_26934CA40(v55, v56, v111);

    *(v53 + 4) = v57;
    *(v53 + 12) = 2080;
    v58 = sub_2693B3760();
    v60 = sub_26934CA40(v58, v59, v111);

    *(v53 + 14) = v60;
    _os_log_impl(&dword_26933F000, v22, v52, "State doesn't match: input – %s, target - %s", v53, 0x16u);
    swift_arrayDestroy();
    v61 = v54;
    goto LABEL_40;
  }

  if ([v4 type])
  {
    v36 = [v4 type];
    if (v36 != [v2 type])
    {
      if (qword_28030CDD0 != -1)
      {
        swift_once();
      }

      v62 = sub_2693B3620();
      __swift_project_value_buffer(v62, qword_28030CF80);
      v4 = v4;
      v63 = v2;
      v22 = sub_2693B3610();
      v64 = sub_2693B3990();

      if (!os_log_type_enabled(v22, v64))
      {

        goto LABEL_50;
      }

      v53 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v111[0] = v65;
      *v53 = 136315394;
      v110 = [v63 type];
      v66 = sub_2693B3760();
      v68 = sub_26934CA40(v66, v67, v111);

      *(v53 + 4) = v68;
      *(v53 + 12) = 2080;
      [v4 type];
      v69 = sub_2693B3760();
      v71 = sub_26934CA40(v69, v70, v111);

      *(v53 + 14) = v71;
      _os_log_impl(&dword_26933F000, v22, v64, "Type doesn't match: input – %s, target - %s", v53, 0x16u);
      swift_arrayDestroy();
      v61 = v65;
LABEL_40:
      MEMORY[0x26D63A640](v61, -1, -1);
      v72 = v53;
LABEL_48:
      MEMORY[0x26D63A640](v72, -1, -1);
LABEL_49:

LABEL_50:
      v49 = 0;
      return v49 & 1;
    }
  }

  v37 = [v2 identifier];
  if (!v37)
  {
    goto LABEL_53;
  }

  v38 = v37;
  v39 = sub_2693B3750();
  v41 = v40;

  v42 = [v4 identifier];
  if (!v42)
  {
LABEL_52:

LABEL_53:
    v85 = [v4 label];
    if (v85)
    {
      v86 = v85;
      v87 = sub_2693B3750();
      v89 = v88;
    }

    else
    {
      v87 = 0;
      v89 = 0;
    }

    v90 = [v2 label];
    if (v90)
    {
      v91 = v90;
      v92 = sub_2693B3750();
      v94 = v93;

      if (!v89)
      {
        goto LABEL_79;
      }

      if (v94)
      {
        v95 = HIBYTE(v89) & 0xF;
        if ((v89 & 0x2000000000000000) == 0)
        {
          v95 = v87 & 0xFFFFFFFFFFFFLL;
        }

        if (v95)
        {
          v111[0] = v92;
          v111[1] = v94;
          sub_26934CFE8();

          if (sub_2693B3AA0())
          {
            if (qword_28030CDD0 != -1)
            {
              swift_once();
            }

            v96 = sub_2693B3620();
            __swift_project_value_buffer(v96, qword_28030CF80);

            v22 = sub_2693B3610();
            v97 = sub_2693B3990();

            if (os_log_type_enabled(v22, v97))
            {
              v98 = swift_slowAlloc();
              v99 = swift_slowAlloc();
              v111[0] = v99;
              *v98 = 136315394;
              v100 = sub_26934CA40(v92, v94, v111);

              *(v98 + 4) = v100;
              *(v98 + 12) = 2080;
              v101 = sub_26934CA40(v87, v89, v111);

              *(v98 + 14) = v101;
              _os_log_impl(&dword_26933F000, v22, v97, "Titles don't match: input – %s, target - %s", v98, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x26D63A640](v99, -1, -1);
              MEMORY[0x26D63A640](v98, -1, -1);

LABEL_75:

              goto LABEL_49;
            }

            swift_bridgeObjectRelease_n();
            goto LABEL_87;
          }

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          goto LABEL_80;
        }

LABEL_79:

LABEL_80:

LABEL_81:
        v49 = 1;
        return v49 & 1;
      }
    }

    else if (!v89)
    {
      goto LABEL_79;
    }

    v102 = HIBYTE(v89) & 0xF;
    if ((v89 & 0x2000000000000000) == 0)
    {
      v102 = v87 & 0xFFFFFFFFFFFFLL;
    }

    if (v102)
    {
      v103 = qword_28030CDD0;

      if (v103 != -1)
      {
        swift_once();
      }

      v104 = sub_2693B3620();
      __swift_project_value_buffer(v104, qword_28030CF80);

      v22 = sub_2693B3610();
      v105 = sub_2693B3990();

      if (os_log_type_enabled(v22, v105))
      {
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v111[0] = v107;
        *v106 = 136315138;
        v108 = sub_26934CA40(v87, v89, v111);

        *(v106 + 4) = v108;
        _os_log_impl(&dword_26933F000, v22, v105, "Title doesn't match: input – nil, target - %s", v106, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v107);
        MEMORY[0x26D63A640](v107, -1, -1);
        MEMORY[0x26D63A640](v106, -1, -1);
        goto LABEL_75;
      }

LABEL_87:
      swift_bridgeObjectRelease_n();
      goto LABEL_49;
    }

    goto LABEL_79;
  }

  v43 = v42;
  v44 = sub_2693B3750();
  v46 = v45;

  v47 = HIBYTE(v46) & 0xF;
  if ((v46 & 0x2000000000000000) == 0)
  {
    v47 = v44 & 0xFFFFFFFFFFFFLL;
  }

  if (!v47)
  {
    goto LABEL_51;
  }

  v48 = HIBYTE(v41) & 0xF;
  if ((v41 & 0x2000000000000000) == 0)
  {
    v48 = v39 & 0xFFFFFFFFFFFFLL;
  }

  if (!v48)
  {
LABEL_51:

    goto LABEL_52;
  }

  if (v44 == v39 && v46 == v41)
  {
    v49 = 1;
  }

  else
  {
    v49 = sub_2693B3CE0();
  }

  return v49 & 1;
}

uint64_t sub_26934C284()
{
  v0 = sub_2693B3620();
  __swift_allocate_value_buffer(v0, qword_28030CF80);
  v1 = __swift_project_value_buffer(v0, qword_28030CF80);
  if (qword_280E26360 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280E26A30);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t SiriTimerState.toSpeakableString()(uint64_t a1)
{
  if (a1 == 2)
  {
    v2 = 0x75615072656D6974;
    v3 = 0xEB00000000646573;
  }

  else if (a1 == 1)
  {
    v2 = 0x6E755272656D6974;
    v3 = 0xEC000000676E696ELL;
  }

  else if (a1)
  {
    v2 = sub_2693B3D10();
    __break(1u);
  }

  else
  {
    v2 = 0x6E776F6E6B6E75;
    v3 = 0xE700000000000000;
  }

  return MEMORY[0x2821B8090](v2, v3);
}

unint64_t SiriTimerType.toINTimerType()(unint64_t result)
{
  if (result >= 3)
  {
    result = sub_2693B3D10();
    __break(1u);
  }

  return result;
}

uint64_t SiriTimerType.toSpeakableString()(uint64_t a1)
{
  if (a1 == 2)
  {
    v2 = 0x6D69547065656C73;
    v3 = 0xEA00000000007265;
  }

  else if (a1 == 1)
  {
    v2 = 0x54746C7561666564;
    v3 = 0xEB00000000657079;
  }

  else if (a1)
  {
    v2 = sub_2693B3D10();
    __break(1u);
  }

  else
  {
    v2 = 0x6E776F6E6B6E75;
    v3 = 0xE700000000000000;
  }

  return MEMORY[0x2821B8090](v2, v3);
}

void SiriTimer.merge(with:)(void *a1)
{
  v3 = [a1 duration];
  if (v3)
  {
    v4 = v3;
    [v3 doubleValue];
    v6 = v5;
    [objc_opt_self() defaultDuration];
    if (v6 != v7)
    {
      [v1 setDuration_];
    }
  }

  if ([a1 state])
  {
    [v1 setState_];
  }

  if ([a1 type] || objc_msgSend(a1, sel_type) != 1)
  {
    [v1 setType_];
  }

  v8 = [a1 label];
  if (v8)
  {
    v9 = v8;
    v10 = sub_2693B3750();
    v12 = v11;

    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      [v1 setLabel_];
    }
  }

  v14 = [a1 device];
  if (v14)
  {
    v15 = v14;
    [v1 setDevice_];
  }
}

BOOL INTimerType.toTimerType()(_BOOL8 result)
{
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

void CreateTimerIntent.duration.getter()
{
  v1 = [v0 durationNumber];
  if (v1)
  {
    v2 = v1;
    [v1 doubleValue];
  }

  else
  {
    v3 = objc_opt_self();

    [v3 minimumDuration];
  }
}

void sub_26934C798(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 durationNumber];
  if (v3)
  {
    v4 = v3;
    [v3 doubleValue];
    v6 = v5;
  }

  else
  {
    [objc_opt_self() minimumDuration];
    v6 = v7;
  }

  *a2 = v6;
}

void sub_26934C818(double *a1, void **a2)
{
  v2 = *a2;
  v3 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  [v2 setDurationNumber_];
}

void CreateTimerIntent.duration.setter(double a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  [v1 setDurationNumber_];
}

void (*CreateTimerIntent.duration.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  v3 = [v1 durationNumber];
  if (v3)
  {
    v4 = v3;
    [v3 doubleValue];
    v6 = v5;
  }

  else
  {
    [objc_opt_self() minimumDuration];
    v6 = v7;
  }

  *a1 = v6;
  return sub_26934C9A4;
}

void sub_26934C9A4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  [v1 setDurationNumber_];
}

uint64_t sub_26934CA40(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26934CB0C(v11, 0, 0, 1, a1, a2);
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
    sub_26934D188(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_26934CB0C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_26934CC18(a5, a6);
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
    result = sub_2693B3BF0();
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

uint64_t sub_26934CC18(uint64_t a1, unint64_t a2)
{
  v4 = sub_26934CC64(a1, a2);
  sub_26934CD94(&unk_2879EC508);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26934CC64(uint64_t a1, unint64_t a2)
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

  v6 = sub_26934CE80(v5, 0);
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

  result = sub_2693B3BF0();
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
        v10 = sub_2693B37D0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26934CE80(v10, 0);
        result = sub_2693B3B90();
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

uint64_t sub_26934CD94(uint64_t result)
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

  result = sub_26934CEF4(result, v12, 1, v3);
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

void *sub_26934CE80(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CFA8, &qword_2693B58C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26934CEF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CFA8, &qword_2693B58C8);
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

unint64_t sub_26934CFE8()
{
  result = qword_28030CFA0;
  if (!qword_28030CFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030CFA0);
  }

  return result;
}

id _s21SiriTimeTimerInternal0aC0C07invalidC0ACvgZ_0()
{
  v0 = objc_opt_self();
  [v0 defaultDuration];
  v2 = v1;
  [v0 defaultDuration];
  v4 = v3;
  v5 = objc_allocWithZone(type metadata accessor for SiriTimer());
  v6 = sub_2693B3740();
  v7 = [v5 initWithIdentifier:0 displayString:v6];

  v8 = v7;
  [v8 setLabel_];
  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  [v8 setDuration_];

  v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  [v8 setRemainingTime_];

  [v8 setState_];
  [v8 setType_];

  return v8;
}

uint64_t sub_26934D188(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26934D1E8()
{
  v0 = sub_2693B3620();
  __swift_allocate_value_buffer(v0, qword_280E26230);
  v1 = __swift_project_value_buffer(v0, qword_280E26230);
  if (qword_280E26360 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280E26A30);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_26934D2B0()
{
  v0 = type metadata accessor for TimerSessionManager();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_26934D7C4();
  qword_280E265F8 = v0;
  unk_280E26600 = &protocol witness table for TimerSessionManager;
  qword_280E265E0 = result;
  return result;
}

uint64_t static TimerSessionManager.shared.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280E265D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_26934489C(&qword_280E265E0, a1);
}

uint64_t static TimerSessionManager.shared.setter(uint64_t *a1)
{
  if (qword_280E265D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(&qword_280E265E0, a1);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;
        v16 = result;

        *v16 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v17);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v17, v2);
      }
    }
  }

  return result;
}

uint64_t (*static TimerSessionManager.shared.modify())()
{
  if (qword_280E265D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_26934D6BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_280E265D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_26934489C(&qword_280E265E0, a1);
}

uint64_t sub_26934D73C(uint64_t *a1)
{
  if (qword_280E265D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(&qword_280E265E0, a1);
  return swift_endAccess();
}

void *sub_26934D7C4()
{
  v1 = v0;
  v20 = sub_2693B39E0();
  v2 = *(v20 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v20);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2693B39C0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_2693B36D0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = MEMORY[0x277D84F98];
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v10;
  v11 = OBJC_IVAR____TtC21SiriTimeTimerInternal19TimerSessionManager_deferredContinuation;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CFB8, &qword_2693B58F8);
  (*(*(v12 - 8) + 56))(v0 + v11, 1, 1, v12);
  v13 = (v0 + OBJC_IVAR____TtC21SiriTimeTimerInternal19TimerSessionManager_deferredTimerIDForSearch);
  *v13 = 0;
  v13[1] = 0;
  v19 = OBJC_IVAR____TtC21SiriTimeTimerInternal19TimerSessionManager_workQueue;
  v14 = sub_269353A90();
  v18[1] = "(timerIdentifier:)";
  v18[2] = v14;
  sub_2693B36C0();
  v21 = MEMORY[0x277D84F90];
  sub_269353ADC(&qword_280E261D8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D060, &unk_2693B5A20);
  sub_269353B24(&qword_280E261F8, &qword_28030D060, &unk_2693B5A20);
  sub_2693B3AC0();
  (*(v2 + 104))(v5, *MEMORY[0x277D85260], v20);
  *(v0 + v19) = sub_2693B3A00();
  v15 = OBJC_IVAR____TtC21SiriTimeTimerInternal19TimerSessionManager_measurement;
  v16 = sub_2693B33D0();
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  sub_26934DE84();
  return v1;
}

uint64_t sub_26934DB00(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return MEMORY[0x2822009F8](sub_26934DB24, 0, 0);
}

uint64_t sub_26934DB24()
{
  sub_2693B3510();
  sub_2693B3500();
  sub_2693B34F0();

  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = sub_2693B3350();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v2)
  {
    sub_2693B3500();
    sub_2693B34F0();

    v3 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    v4 = sub_2693B3370();
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    if ((v4 & 1) == 0)
    {
      v5 = v0[13];
      if (v5)
      {
        v6 = v0[12] & 0xFFFFFFFFFFFFLL;
        if ((v5 & 0x2000000000000000) != 0)
        {
          v6 = HIBYTE(v5) & 0xF;
        }

        if (v6)
        {
          v7 = swift_task_alloc();
          v0[15] = v7;
          *v7 = v0;
          v7[1] = sub_26934DD80;
          v8 = v0[14];
          v9 = v0[12];

          return sub_26934F780(v9, v5);
        }
      }

      if (qword_280E26228 != -1)
      {
        swift_once();
      }

      v11 = sub_2693B3620();
      __swift_project_value_buffer(v11, qword_280E26230);
      v12 = sub_2693B3610();
      v13 = sub_2693B39B0();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_26933F000, v12, v13, "TimerSessionManager: No input timer identifier specified. Returning nil for session.", v14, 2u);
        MEMORY[0x26D63A640](v14, -1, -1);
      }
    }
  }

  v15 = v0[1];

  return v15(0, 0);
}

uint64_t sub_26934DD80(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 120);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_26934DE84()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CFF0, &qword_2693B59C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v40 = v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CFF8, &qword_2693B59C8);
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D000, &qword_2693B59D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D008, &qword_2693B59D8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v36 - v16;
  v18 = sub_2693B3300();
  v41 = *(v18 - 8);
  v42 = v18;
  v19 = *(v41 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2693B3510();
  sub_2693B3500();
  sub_2693B34F0();

  __swift_project_boxed_opaque_existential_1(v43, v43[3]);
  v22 = sub_2693B3350();
  result = __swift_destroy_boxed_opaque_existential_1(v43);
  if (v22)
  {
    v24 = sub_2693B3250();
    (*(*(v24 - 8) + 56))(v17, 1, 1, v24);
    sub_2693B3310();
    v25 = sub_2693B3320();
    (*(*(v25 - 8) + 56))(v13, 0, 1, v25);
    sub_2693B32F0();
    sub_2693B32D0();
    sub_2693B32C0();
    v26 = sub_2693B32B0();

    v43[0] = v26;
    swift_allocObject();
    v38 = v2;
    swift_weakInit();
    v37 = v3;
    v36[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D020, &qword_2693B59F0);
    v36[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D028, &qword_2693B59F8);
    sub_269353B24(&qword_28030D030, &qword_28030D020, &qword_2693B59F0);
    sub_269353B24(&qword_28030D038, &qword_28030D028, &qword_2693B59F8);
    v27 = v37;
    sub_2693B3660();

    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();
    sub_269353B24(&qword_28030D040, &qword_28030CFF8, &qword_2693B59C8);
    v28 = sub_2693B3650();

    v29 = v38;

    (*(v39 + 8))(v9, v6);
    v30 = *(v1 + 32);
    *(v1 + 32) = v28;

    sub_2693B32C0();
    v31 = sub_2693B32A0();

    v43[0] = v31;
    swift_allocObject();
    v38 = v29;
    swift_weakInit();
    v37 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D010, &qword_2693B59E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D018, &qword_2693B59E8);
    sub_269353B24(&qword_280E26218, &qword_28030D010, &qword_2693B59E0);
    sub_269353B24(&qword_280E26210, &qword_28030D018, &qword_2693B59E8);
    v32 = v40;
    sub_2693B3660();

    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();
    sub_269353B24(&qword_280E26220, &qword_28030CFF0, &qword_2693B59C0);
    v33 = v38;
    v34 = sub_2693B3650();

    (*(v37 + 8))(v32, v33);
    (*(v41 + 8))(v21, v42);
    v35 = *(v1 + 24);
    *(v1 + 24) = v34;
  }

  return result;
}

uint64_t sub_26934E68C(void **a1)
{
  v1 = *a1;
  if (qword_280E26228 != -1)
  {
    swift_once();
  }

  v2 = sub_2693B3620();
  __swift_project_value_buffer(v2, qword_280E26230);
  v3 = v1;
  v4 = sub_2693B3610();
  v5 = sub_2693B39A0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF30, &qword_2693B5A10);
    v9 = sub_2693B3760();
    v11 = sub_26934CA40(v9, v10, &v17);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_26933F000, v4, v5, "TimerSessionManager: catch error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D63A640](v7, -1, -1);
    MEMORY[0x26D63A640](v6, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = *(Strong + 32);

    if (v13)
    {
      sub_2693B3630();
    }
  }

  swift_beginAccess();
  v14 = swift_weakLoadStrong();
  if (v14)
  {
    v15 = *(v14 + 32);
    *(v14 + 32) = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D050, &qword_2693B5A08);
  return sub_2693B3640();
}

uint64_t sub_26934E8C0()
{
  if (qword_280E26228 != -1)
  {
    swift_once();
  }

  v0 = sub_2693B3620();
  __swift_project_value_buffer(v0, qword_280E26230);
  v1 = sub_2693B3610();
  v2 = sub_2693B39B0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_26933F000, v1, v2, "TimerSessionManager: activity state listener torn down", v3, 2u);
    MEMORY[0x26D63A640](v3, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 32);

    if (v5)
    {
      sub_2693B3630();
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = *(result + 32);
    *(result + 32) = 0;
  }

  return result;
}

void sub_26934EA20(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2693B36A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v34 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2693B36D0();
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  MEMORY[0x28223BE20](v8);
  v32 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (qword_280E26228 != -1)
  {
    swift_once();
  }

  v12 = sub_2693B3620();
  __swift_project_value_buffer(v12, qword_280E26230);

  v13 = sub_2693B3610();
  v14 = sub_2693B39B0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v31 = v8;
    v17 = v5;
    v18 = v4;
    v19 = v16;
    aBlock[0] = v16;
    *v15 = 136315138;
    v20 = sub_2693B3280();
    v21 = MEMORY[0x26D639B10](v11, v20);
    v23 = sub_26934CA40(v21, v22, aBlock);

    *(v15 + 4) = v23;
    _os_log_impl(&dword_26933F000, v13, v14, "TimerSessionManager: received updated activity states - %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    v24 = v19;
    v4 = v18;
    v5 = v17;
    v8 = v31;
    MEMORY[0x26D63A640](v24, -1, -1);
    MEMORY[0x26D63A640](v15, -1, -1);
  }

  if (*(v11 + 16))
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v26 = *(Strong + OBJC_IVAR____TtC21SiriTimeTimerInternal19TimerSessionManager_workQueue);

      v27 = swift_allocObject();
      *(v27 + 16) = a2;
      *(v27 + 24) = v11;
      aBlock[4] = sub_269353978;
      aBlock[5] = v27;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_26934EEF8;
      aBlock[3] = &block_descriptor;
      v28 = _Block_copy(aBlock);

      v29 = v32;
      sub_2693B36B0();
      v35 = MEMORY[0x277D84F90];
      sub_269353ADC(&qword_280E26208, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D048, &qword_2693B5A00);
      sub_269353B24(&qword_280E26200, &qword_28030D048, &qword_2693B5A00);
      v30 = v34;
      sub_2693B3AC0();
      MEMORY[0x26D639CD0](0, v29, v30, v28);
      _Block_release(v28);

      (*(v5 + 8))(v30, v4);
      (*(v33 + 8))(v29, v8);
    }
  }
}

uint64_t sub_26934EE98(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_26935145C(a2);
  }

  return result;
}

uint64_t sub_26934EEF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_26934EF3C(void **a1)
{
  v1 = *a1;
  if (qword_280E26228 != -1)
  {
    swift_once();
  }

  v2 = sub_2693B3620();
  __swift_project_value_buffer(v2, qword_280E26230);
  v3 = v1;
  v4 = sub_2693B3610();
  v5 = sub_2693B39A0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF30, &qword_2693B5A10);
    v9 = sub_2693B3760();
    v11 = sub_26934CA40(v9, v10, &v17);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_26933F000, v4, v5, "TimerSessionManager: catch error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D63A640](v7, -1, -1);
    MEMORY[0x26D63A640](v6, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = *(Strong + 24);

    if (v13)
    {
      sub_2693B3630();
    }
  }

  swift_beginAccess();
  v14 = swift_weakLoadStrong();
  if (v14)
  {
    v15 = *(v14 + 24);
    *(v14 + 24) = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D058, &qword_2693B5A18);
  return sub_2693B3640();
}

uint64_t sub_26934F170()
{
  if (qword_280E26228 != -1)
  {
    swift_once();
  }

  v0 = sub_2693B3620();
  __swift_project_value_buffer(v0, qword_280E26230);
  v1 = sub_2693B3610();
  v2 = sub_2693B39B0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_26933F000, v1, v2, "TimerSessionManager: activity listener torn down", v3, 2u);
    MEMORY[0x26D63A640](v3, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 24);

    if (v5)
    {
      sub_2693B3630();
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = *(result + 24);
    *(result + 24) = 0;
  }

  return result;
}

void sub_26934F2D0(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2693B36A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2693B36D0();
  v34 = *(v9 - 8);
  v10 = *(v34 + 64);
  MEMORY[0x28223BE20](v9);
  v33 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  if (qword_280E26228 != -1)
  {
    swift_once();
  }

  v13 = sub_2693B3620();
  __swift_project_value_buffer(v13, qword_280E26230);

  v14 = sub_2693B3610();
  v15 = sub_2693B39B0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = v5;
    v32 = v9;
    v17 = v4;
    v18 = v16;
    v19 = v8;
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v18 = 136315138;
    v21 = sub_2693B3240();
    v22 = MEMORY[0x26D639B10](v12, v21);
    v24 = sub_26934CA40(v22, v23, aBlock);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_26933F000, v14, v15, "TimerSessionManager: received updated activities - %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    v25 = v20;
    v8 = v19;
    MEMORY[0x26D63A640](v25, -1, -1);
    v26 = v18;
    v4 = v17;
    v5 = v31;
    v9 = v32;
    MEMORY[0x26D63A640](v26, -1, -1);
  }

  if (*(v12 + 16))
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v32 = *(Strong + OBJC_IVAR____TtC21SiriTimeTimerInternal19TimerSessionManager_workQueue);

      aBlock[4] = sub_269353998;
      aBlock[5] = a2;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_26934EEF8;
      aBlock[3] = &block_descriptor_33;
      v28 = _Block_copy(aBlock);

      v29 = v33;
      sub_2693B36B0();
      v35 = MEMORY[0x277D84F90];
      sub_269353ADC(&qword_280E26208, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D048, &qword_2693B5A00);
      sub_269353B24(&qword_280E26200, &qword_28030D048, &qword_2693B5A00);
      sub_2693B3AC0();
      v30 = v32;
      MEMORY[0x26D639CD0](0, v29, v8, v28);
      _Block_release(v28);

      (*(v5 + 8))(v8, v4);
      (*(v34 + 8))(v29, v9);
    }
  }
}

uint64_t sub_26934F728()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_269350F68();
  }

  return result;
}

uint64_t sub_26934F780(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return MEMORY[0x2822009F8](sub_26934F7A4, 0, 0);
}

uint64_t sub_26934F7A4()
{
  sub_2693B3510();
  sub_2693B3500();
  sub_2693B34F0();

  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = sub_2693B3350();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v2)
  {
    if (qword_280E26228 != -1)
    {
      swift_once();
    }

    v3 = sub_2693B3620();
    __swift_project_value_buffer(v3, qword_280E26230);
    v4 = sub_2693B3610();
    v5 = sub_2693B39B0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_26933F000, v4, v5, "TimerSessionManager: Fetching currentSessionID(timerIdentifier:)", v6, 2u);
      MEMORY[0x26D63A640](v6, -1, -1);
    }

    v8 = v0[10];
    v7 = v0[11];
    v9 = v0[9];

    v10 = swift_task_alloc();
    v0[12] = v10;
    v10[2] = v7;
    v10[3] = v9;
    v10[4] = v8;
    v11 = *(MEMORY[0x277D859E0] + 4);
    v12 = swift_task_alloc();
    v0[13] = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CFC8, &qword_2693B59A0);
    *v12 = v0;
    v12[1] = sub_26934FAB0;

    return MEMORY[0x2822007B8](v0 + 7, 0, 0, 0xD000000000000022, 0x80000002693B8310, sub_2693539A0, v10, v13);
  }

  else
  {
    if (qword_280E26228 != -1)
    {
      swift_once();
    }

    v14 = sub_2693B3620();
    __swift_project_value_buffer(v14, qword_280E26230);
    v15 = sub_2693B3610();
    v16 = sub_2693B3990();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_26933F000, v15, v16, "TimerSessionManager: No sessions enabled", v17, 2u);
      MEMORY[0x26D63A640](v17, -1, -1);
    }

    v18 = v0[1];

    return v18(0, 0);
  }
}

uint64_t sub_26934FAB0()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26934FBC8, 0, 0);
}

uint64_t sub_26934FBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v68 = a3;
  v69 = a4;
  v70 = a2;
  v67 = a1;
  v4 = sub_2693B36A0();
  v75 = *(v4 - 8);
  v76 = v4;
  v5 = *(v75 + 64);
  MEMORY[0x28223BE20](v4);
  v73 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_2693B36D0();
  v72 = *(v74 - 8);
  v7 = *(v72 + 64);
  MEMORY[0x28223BE20](v74);
  v71 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CFB8, &qword_2693B58F8);
  v64 = *(v66 - 8);
  v61 = *(v64 + 64);
  MEMORY[0x28223BE20](v66);
  v63 = &v56 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CFC0, &qword_2693B5900);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v60 = &v56 - v12;
  v13 = sub_2693B3520();
  v59 = *(v13 - 8);
  v14 = *(v59 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2693B3620();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_2693B33A0();
  v22 = *(v58 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v58);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_2693B33D0();
  v65 = *(v77 - 8);
  v26 = *(v65 + 64);
  MEMORY[0x28223BE20](v77);
  v62 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E26228 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v17, qword_280E26230);
  v29 = sub_2693B3610();
  v30 = sub_2693B39B0();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v57 = v16;
    v32 = v21;
    v33 = v18;
    v34 = v17;
    v35 = v13;
    v36 = v31;
    *v31 = 0;
    _os_log_impl(&dword_26933F000, v29, v30, "TimerSessionManager: In continuation for currentSessionID(timerIdentifier:)", v31, 2u);
    v37 = v36;
    v13 = v35;
    v17 = v34;
    v18 = v33;
    v21 = v32;
    v16 = v57;
    MEMORY[0x26D63A640](v37, -1, -1);
  }

  (*(v22 + 104))(v25, *MEMORY[0x277D617E8], v58);
  (*(v18 + 16))(v21, v28, v17);
  mach_absolute_time();
  v38 = v62;
  sub_2693B33E0();
  v39 = v59;
  (*(v59 + 104))(v16, *MEMORY[0x277D61850], v13);
  sub_2693B33B0();
  (*(v39 + 8))(v16, v13);
  v40 = v65;
  v41 = v60;
  v42 = v77;
  (*(v65 + 16))(v60, v38, v77);
  (*(v40 + 56))(v41, 0, 1, v42);
  v43 = OBJC_IVAR____TtC21SiriTimeTimerInternal19TimerSessionManager_measurement;
  v44 = v70;
  swift_beginAccess();
  sub_2693539AC(v41, v44 + v43, &qword_28030CFC0, &qword_2693B5900);
  swift_endAccess();
  v60 = *(v44 + OBJC_IVAR____TtC21SiriTimeTimerInternal19TimerSessionManager_workQueue);
  v45 = v64;
  v46 = v63;
  v47 = v66;
  (*(v64 + 16))(v63, v67, v66);
  v48 = (*(v45 + 80) + 40) & ~*(v45 + 80);
  v49 = swift_allocObject();
  v50 = v69;
  *(v49 + 2) = v68;
  *(v49 + 3) = v50;
  *(v49 + 4) = v44;
  (*(v45 + 32))(&v49[v48], v46, v47);
  aBlock[4] = sub_269353A14;
  aBlock[5] = v49;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26934EEF8;
  aBlock[3] = &block_descriptor_41;
  v51 = _Block_copy(aBlock);

  v52 = v71;
  sub_2693B36B0();
  v78 = MEMORY[0x277D84F90];
  sub_269353ADC(&qword_280E26208, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D048, &qword_2693B5A00);
  sub_269353B24(&qword_280E26200, &qword_28030D048, &qword_2693B5A00);
  v53 = v73;
  v54 = v76;
  sub_2693B3AC0();
  MEMORY[0x26D639CD0](0, v52, v53, v51);
  _Block_release(v51);
  (*(v75 + 8))(v53, v54);
  (*(v72 + 8))(v52, v74);
  (*(v40 + 8))(v38, v77);
}

uint64_t sub_269350478(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v93 = a4;
  v7 = sub_2693B36A0();
  v86 = *(v7 - 8);
  v87 = v7;
  v8 = *(v86 + 64);
  MEMORY[0x28223BE20](v7);
  v84 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_2693B36D0();
  v82 = *(v85 - 8);
  v10 = *(v82 + 64);
  MEMORY[0x28223BE20](v85);
  v81 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2693B3690();
  v83 = *(v12 - 8);
  v13 = *(v83 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2693B3700();
  v80 = *(v16 - 8);
  v17 = *(v80 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v76 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CFB0, &qword_2693B58F0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v76 - v25;
  v27 = sub_2693B33D0();
  v88 = *(v27 - 8);
  v89 = v27;
  v28 = *(v88 + 8);
  MEMORY[0x28223BE20](v27);
  v79 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CFC0, &qword_2693B5900);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = &v76 - v32;
  swift_beginAccess();
  v91 = a3;
  v34 = *(a3 + 16);

  v90 = a1;
  v92 = a2;
  v35 = sub_2693532E4(a1, a2, v34);
  v37 = v36;

  if (v37)
  {
    if (qword_280E26228 != -1)
    {
      swift_once();
    }

    v38 = sub_2693B3620();
    __swift_project_value_buffer(v38, qword_280E26230);
    v39 = v92;

    v40 = sub_2693B3610();
    v41 = sub_2693B39B0();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      aBlock[0] = v43;
      *v42 = 136315394;
      *(v42 + 4) = sub_26934CA40(v90, v39, aBlock);
      *(v42 + 12) = 2080;

      v44 = v35;
      v45 = sub_26934CA40(v35, v37, aBlock);

      *(v42 + 14) = v45;
      _os_log_impl(&dword_26933F000, v40, v41, "TimerSessionManager: Returning session for timer %s: %s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D63A640](v43, -1, -1);
      MEMORY[0x26D63A640](v42, -1, -1);
    }

    else
    {
      v44 = v35;
    }

    v71 = OBJC_IVAR____TtC21SiriTimeTimerInternal19TimerSessionManager_measurement;
    v72 = v91;
    swift_beginAccess();
    sub_26935388C(v72 + v71, v33, &qword_28030CFC0, &qword_2693B5900);
    v74 = v88;
    v73 = v89;
    if ((*(v88 + 6))(v33, 1, v89))
    {
      sub_26934B4F0(v33, &qword_28030CFC0, &qword_2693B5900);
    }

    else
    {
      v75 = v79;
      v74[2](v79, v33, v73);
      sub_26934B4F0(v33, &qword_28030CFC0, &qword_2693B5900);
      sub_2693B33C0();
      (v74[1])(v75, v73);
    }

    v94 = v44;
    v95 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CFB8, &qword_2693B58F8);
    return sub_2693B3900();
  }

  else
  {
    v78 = v26;
    v79 = v20;
    v88 = v15;
    v89 = v12;
    v46 = v80;
    v47 = v81;
    if (qword_280E26228 != -1)
    {
      swift_once();
    }

    v48 = sub_2693B3620();
    __swift_project_value_buffer(v48, qword_280E26230);
    v49 = sub_2693B3610();
    v50 = sub_2693B39B0();
    v51 = os_log_type_enabled(v49, v50);
    v52 = v22;
    v53 = v78;
    if (v51)
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_26933F000, v49, v50, "[TimerSessionManager] Did not find a live session for timer. Will try again in deferred continuation.", v54, 2u);
      MEMORY[0x26D63A640](v54, -1, -1);
    }

    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CFB8, &qword_2693B58F8);
    v56 = *(v55 - 8);
    (*(v56 + 16))(v53, v93, v55);
    (*(v56 + 56))(v53, 0, 1, v55);
    v57 = OBJC_IVAR____TtC21SiriTimeTimerInternal19TimerSessionManager_deferredContinuation;
    v58 = v91;
    swift_beginAccess();
    sub_2693539AC(v53, v58 + v57, &qword_28030CFB0, &qword_2693B58F0);
    swift_endAccess();
    v59 = (v58 + OBJC_IVAR____TtC21SiriTimeTimerInternal19TimerSessionManager_deferredTimerIDForSearch);
    v60 = *(v58 + OBJC_IVAR____TtC21SiriTimeTimerInternal19TimerSessionManager_deferredTimerIDForSearch + 8);
    v61 = v92;
    *v59 = v90;
    v59[1] = v61;

    v93 = *(v58 + OBJC_IVAR____TtC21SiriTimeTimerInternal19TimerSessionManager_workQueue);

    v62 = v79;
    sub_2693B36E0();
    v64 = v88;
    v63 = v89;
    *v88 = 300;
    v65 = v83;
    (*(v83 + 104))(v64, *MEMORY[0x277D85178], v63);
    sub_2693B36F0();
    (*(v65 + 8))(v64, v63);
    v92 = *(v46 + 8);
    v77 = v16;
    v92(v62, v16);
    v66 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_269353A88;
    aBlock[5] = v66;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26934EEF8;
    aBlock[3] = &block_descriptor_45;
    v67 = _Block_copy(aBlock);

    sub_2693B36B0();
    v94 = MEMORY[0x277D84F90];
    sub_269353ADC(&qword_280E26208, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D048, &qword_2693B5A00);
    sub_269353B24(&qword_280E26200, &qword_28030D048, &qword_2693B5A00);
    v68 = v84;
    v69 = v87;
    sub_2693B3AC0();
    MEMORY[0x26D639CB0](v52, v47, v68, v67);
    _Block_release(v67);
    (*(v86 + 8))(v68, v69);
    (*(v82 + 8))(v47, v85);
    v92(v52, v77);
  }
}

uint64_t sub_269350F0C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_269352060(1);
  }

  return result;
}

void sub_269350F68()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CFE0, &qword_2693B59B0);
  v2 = sub_2693B3210();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2693B3C70())
  {
    v5 = 0;
    while ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x26D639EB0](v5, v3);
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      v8 = v6;
      sub_269351098(&v8, v1);

      ++v5;
      if (v7 == i)
      {
        goto LABEL_14;
      }
    }

    if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v6 = *(v3 + 8 * v5 + 32);

    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  sub_269352060(0);
}

uint64_t sub_269351098(uint64_t *a1, uint64_t a2)
{
  v35 = a2;
  v33 = sub_2693B31C0();
  v3 = *(v33 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v33);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2693B3680();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CFE8, &qword_2693B59B8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  v34 = *a1;
  sub_2693B3230();
  sub_2693B32E0();
  (*(v13 + 8))(v16, v12);
  sub_2693B3670();
  (*(v8 + 8))(v11, v7);
  v17 = sub_2693B3180();
  v19 = v18;
  (*(v3 + 8))(v6, v33);
  if (qword_280E26228 != -1)
  {
    swift_once();
  }

  v20 = sub_2693B3620();
  __swift_project_value_buffer(v20, qword_280E26230);

  v21 = sub_2693B3610();
  v22 = sub_2693B39B0();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v36 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_26934CA40(v17, v19, &v36);
    _os_log_impl(&dword_26933F000, v21, v22, "[TimerSessionManager] [updateForActivityDescriptor] Add tracking activity for timer %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x26D63A640](v24, -1, -1);
    MEMORY[0x26D63A640](v23, -1, -1);
  }

  v25 = sub_2693B3220();
  v27 = v26;
  v28 = v35;
  swift_beginAccess();
  v29 = *(v28 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *(v28 + 16);
  *(v28 + 16) = 0x8000000000000000;
  sub_26939D334(v25, v27, v17, v19, isUniquelyReferenced_nonNull_native);

  *(v28 + 16) = v37;
  return swift_endAccess();
}

void sub_26935145C(uint64_t a1)
{
  v98 = sub_2693B3290();
  v110 = *(v98 - 8);
  v2 = *(v110 + 64);
  MEMORY[0x28223BE20](v98);
  v97 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_2693B31C0();
  v4 = *(v95 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v95);
  v94 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_2693B3200();
  v7 = *(v108 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v108);
  v107 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CFD0, &qword_2693B59A8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v106 = &v81 - v12;
  v109 = sub_2693B3680();
  v13 = *(v109 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v109);
  v99 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2693B3280();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v21 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = *(v19 + 16);
    v24 = a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v103 = (v7 + 8);
    v104 = v23;
    v101 = (v13 + 56);
    v102 = (v19 + 8);
    v92 = (v13 + 32);
    v91 = (v4 + 8);
    v90 = (v110 + 88);
    v105 = v19 + 16;
    v100 = *(v19 + 72);
    v89 = (v13 + 8);
    v88 = *MEMORY[0x277CB9608];
    v87 = *MEMORY[0x277CB9600];
    v85 = *MEMORY[0x277CB95F0];
    v83 = *MEMORY[0x277CB9610];
    v82 = *MEMORY[0x277CB95F8];
    v81 = (v110 + 8);
    *&v20 = 136315138;
    v84 = v20;
    v86 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v93 = v16;
    do
    {
      v110 = v22;
      v104(v21, v24, v16);
      v25 = sub_2693B3080();
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      swift_allocObject();
      sub_2693B3070();
      v28 = v107;
      sub_2693B3270();
      v29 = sub_2693B31F0();
      v31 = v30;
      (*v103)(v28, v108);
      sub_269353ADC(&qword_28030CFD8, MEMORY[0x277CB9A20]);
      v32 = v106;
      v33 = v109;
      sub_2693B3060();

      sub_2693538F4(v29, v31);
      (*v101)(v32, 0, 1, v33);
      (*v92)(v99, v32, v33);
      v34 = v94;
      sub_2693B3670();
      v35 = sub_2693B3180();
      v37 = v36;
      (*v91)(v34, v95);
      v38 = v97;
      sub_2693B3260();
      v39 = (*v90)(v38, v98);
      if (v39 == v88 || v39 == v87)
      {
        if (qword_280E26228 != -1)
        {
          swift_once();
        }

        v57 = sub_2693B3620();
        __swift_project_value_buffer(v57, qword_280E26230);

        v58 = sub_2693B3610();
        v59 = sub_2693B39B0();

        if (!os_log_type_enabled(v58, v59))
        {
          goto LABEL_30;
        }

        v60 = v33;
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v112 = v62;
        *v61 = v84;
        v63 = sub_26934CA40(v35, v37, &v112);

        *(v61 + 4) = v63;
        v64 = v59;
        v65 = v58;
        v66 = "[TimerSessionManager] [ObserveDescriptorStates] No change on activity for timer %s";
      }

      else
      {
        if (v39 != v85 && v39 != v83 && v39 != v82)
        {
          v40 = v96;
          swift_beginAccess();
          v41 = *(v40 + 16);
          v42 = sub_26939C1CC(v35, v37);
          if (v43)
          {
            v44 = v42;
            v45 = v96;
            v46 = *(v96 + 16);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v48 = *(v45 + 16);
            v111 = v48;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_26939CEA8();
              v48 = v111;
            }

            v49 = *(*(v48 + 48) + 16 * v44 + 8);

            v50 = *(*(v48 + 56) + 16 * v44 + 8);
            sub_269353134(v44, v48);
            *(v96 + 16) = v48;

            v33 = v109;
          }

          swift_endAccess();
          if (qword_280E26228 != -1)
          {
            swift_once();
          }

          v51 = sub_2693B3620();
          __swift_project_value_buffer(v51, qword_280E26230);

          v52 = sub_2693B3610();
          v53 = sub_2693B39B0();

          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            v112 = v55;
            *v54 = v84;
            v56 = sub_26934CA40(v35, v37, &v112);

            *(v54 + 4) = v56;
            _os_log_impl(&dword_26933F000, v52, v53, "[TimerSessionManager] [ObserveDescriptorStates] Cleaned up unknown activity for timer %s", v54, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v55);
            v21 = v86;
            MEMORY[0x26D63A640](v55, -1, -1);
            MEMORY[0x26D63A640](v54, -1, -1);

            (*v89)(v99, v109);
          }

          else
          {

            (*v89)(v99, v33);
          }

          v16 = v93;
          (*v102)(v21, v93);
          (*v81)(v97, v98);
          goto LABEL_3;
        }

        v67 = v96;
        swift_beginAccess();
        v68 = *(v67 + 16);
        v69 = sub_26939C1CC(v35, v37);
        if (v70)
        {
          v71 = v69;
          v72 = v96;
          v73 = *(v96 + 16);
          v74 = swift_isUniquelyReferenced_nonNull_native();
          v75 = *(v72 + 16);
          v111 = v75;
          if (!v74)
          {
            sub_26939CEA8();
            v75 = v111;
          }

          v76 = *(*(v75 + 48) + 16 * v71 + 8);

          v77 = *(*(v75 + 56) + 16 * v71 + 8);
          sub_269353134(v71, v75);
          *(v96 + 16) = v75;

          v33 = v109;
        }

        swift_endAccess();
        if (qword_280E26228 != -1)
        {
          swift_once();
        }

        v78 = sub_2693B3620();
        __swift_project_value_buffer(v78, qword_280E26230);

        v58 = sub_2693B3610();
        v79 = sub_2693B39B0();

        if (!os_log_type_enabled(v58, v79))
        {
LABEL_30:

          (*v89)(v99, v33);
          goto LABEL_31;
        }

        v60 = v33;
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v112 = v62;
        *v61 = v84;
        v80 = sub_26934CA40(v35, v37, &v112);

        *(v61 + 4) = v80;
        v64 = v79;
        v65 = v58;
        v66 = "[TimerSessionManager] [ObserveDescriptorStates] Cleaned up dismissed activity for timer %s";
      }

      _os_log_impl(&dword_26933F000, v65, v64, v66, v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v62);
      v21 = v86;
      MEMORY[0x26D63A640](v62, -1, -1);
      MEMORY[0x26D63A640](v61, -1, -1);

      (*v89)(v99, v60);
LABEL_31:
      v16 = v93;
      (*v102)(v21, v93);
LABEL_3:
      v24 += v100;
      v22 = v110 - 1;
    }

    while (v110 != 1);
  }

  sub_269352060(0);
}

void sub_269352060(int a1)
{
  v2 = v1;
  LODWORD(v76) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CFB8, &qword_2693B58F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v75 = &v70 - v6;
  v7 = sub_2693B33D0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v74 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CFC0, &qword_2693B5900);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v77 = &v70 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CFB0, &qword_2693B58F0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v73 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v80 = &v70 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v78 = &v70 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v70 - v25;
  v27 = OBJC_IVAR____TtC21SiriTimeTimerInternal19TimerSessionManager_deferredContinuation;
  swift_beginAccess();
  v79 = v27;
  sub_26935388C(v1 + v27, v26, &qword_28030CFB0, &qword_2693B58F0);
  v81 = v4;
  v82 = v3;
  v28 = *(v4 + 48);
  LODWORD(v3) = v28(v26, 1, v3);
  sub_26934B4F0(v26, &qword_28030CFB0, &qword_2693B58F0);
  if (v3 != 1)
  {
    if (qword_280E26228 != -1)
    {
      swift_once();
    }

    v72 = v28;
    v29 = sub_2693B3620();
    __swift_project_value_buffer(v29, qword_280E26230);
    v30 = sub_2693B3610();
    v31 = sub_2693B39B0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_26933F000, v30, v31, "TimerSessionManager: found deferred continuation", v32, 2u);
      MEMORY[0x26D63A640](v32, -1, -1);
    }

    v33 = (v1 + OBJC_IVAR____TtC21SiriTimeTimerInternal19TimerSessionManager_deferredTimerIDForSearch);
    v34 = *(v1 + OBJC_IVAR____TtC21SiriTimeTimerInternal19TimerSessionManager_deferredTimerIDForSearch);
    v35 = *(v1 + OBJC_IVAR____TtC21SiriTimeTimerInternal19TimerSessionManager_deferredTimerIDForSearch + 8);
    swift_beginAccess();
    v36 = *(v1 + 16);

    v71 = sub_2693532E4(v34, v35, v36);
    v38 = v37;

    if (v38)
    {

      v39 = sub_2693B3610();
      v40 = sub_2693B39B0();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v85 = v76;
        *v41 = 136315138;

        v42 = v2;
        v43 = v8;
        v44 = v7;
        v45 = v33;
        v46 = sub_26934CA40(v71, v38, &v85);

        *(v41 + 4) = v46;
        v33 = v45;
        v7 = v44;
        v8 = v43;
        v2 = v42;
        _os_log_impl(&dword_26933F000, v39, v40, "TimerSessionManager: Returning activity info for request: %s", v41, 0xCu);
        v47 = v76;
        __swift_destroy_boxed_opaque_existential_1(v76);
        MEMORY[0x26D63A640](v47, -1, -1);
        MEMORY[0x26D63A640](v41, -1, -1);
      }

      v48 = v82;
      v49 = v77;
      v50 = v78;
      v51 = OBJC_IVAR____TtC21SiriTimeTimerInternal19TimerSessionManager_measurement;
      swift_beginAccess();
      sub_26935388C(v2 + v51, v49, &qword_28030CFC0, &qword_2693B5900);
      if ((*(v8 + 48))(v49, 1, v7))
      {
        sub_26934B4F0(v49, &qword_28030CFC0, &qword_2693B5900);
      }

      else
      {
        v58 = v74;
        (*(v8 + 16))(v74, v49, v7);
        sub_26934B4F0(v49, &qword_28030CFC0, &qword_2693B5900);
        sub_2693B33C0();
        (*(v8 + 8))(v58, v7);
      }

      v57 = v79;
      sub_26935388C(v2 + v79, v50, &qword_28030CFB0, &qword_2693B58F0);
      if (v72(v50, 1, v48))
      {

        sub_26934B4F0(v50, &qword_28030CFB0, &qword_2693B58F0);
        v59 = v81;
      }

      else
      {
        v59 = v81;
        v60 = v75;
        (*(v81 + 16))(v75, v50, v48);
        sub_26934B4F0(v50, &qword_28030CFB0, &qword_2693B58F0);
        v83 = v71;
        v84 = v38;
        sub_2693B3900();
        (*(v59 + 8))(v60, v48);
      }

      v61 = v80;
      (*(v59 + 56))(v80, 1, 1, v48);
LABEL_29:
      swift_beginAccess();
      sub_2693539AC(v61, v2 + v57, &qword_28030CFB0, &qword_2693B58F0);
      swift_endAccess();
      v69 = v33[1];
      *v33 = 0;
      v33[1] = 0;

      return;
    }

    v52 = sub_2693B3610();
    if (v76)
    {
      v53 = sub_2693B39A0();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_26933F000, v52, v53, "TimerSessionManager: Timeout expecting session update, taking one last pass at in-memory data for updated session info before returning and cleanup.", v54, 2u);
        MEMORY[0x26D63A640](v54, -1, -1);
      }

      v55 = OBJC_IVAR____TtC21SiriTimeTimerInternal19TimerSessionManager_measurement;
      swift_beginAccess();
      sub_26935388C(v2 + v55, v15, &qword_28030CFC0, &qword_2693B5900);
      v56 = (*(v8 + 48))(v15, 1, v7);
      v57 = v79;
      if (v56)
      {
        sub_26934B4F0(v15, &qword_28030CFC0, &qword_2693B5900);
      }

      else
      {
        v64 = v74;
        (*(v8 + 16))(v74, v15, v7);
        sub_26934B4F0(v15, &qword_28030CFC0, &qword_2693B5900);
        sub_2693B33C0();
        (*(v8 + 8))(v64, v7);
      }

      v65 = v73;
      sub_26935388C(v2 + v57, v73, &qword_28030CFB0, &qword_2693B58F0);
      v66 = v82;
      if (v72(v65, 1, v82))
      {
        sub_26934B4F0(v65, &qword_28030CFB0, &qword_2693B58F0);
        v67 = v81;
      }

      else
      {
        v67 = v81;
        v68 = v75;
        (*(v81 + 16))(v75, v65, v66);
        sub_26934B4F0(v65, &qword_28030CFB0, &qword_2693B58F0);
        v83 = 0;
        v84 = 0;
        sub_2693B3900();
        (*(v67 + 8))(v68, v66);
      }

      v61 = v80;
      (*(v67 + 56))(v80, 1, 1, v66);
      goto LABEL_29;
    }

    v62 = sub_2693B39B0();
    if (os_log_type_enabled(v52, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_26933F000, v52, v62, "TimerSessionManager: Deferred execution still didn't find target session for timer ID; skipping this update", v63, 2u);
      MEMORY[0x26D63A640](v63, -1, -1);
    }
  }
}

void *TimerSessionManager.deinit()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CFB0, &qword_2693B58F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v14 - v3;
  v5 = v0[3];
  v0[3] = 0;

  v6 = v0[4];
  v0[4] = 0;

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CFB8, &qword_2693B58F8);
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = OBJC_IVAR____TtC21SiriTimeTimerInternal19TimerSessionManager_deferredContinuation;
  swift_beginAccess();
  sub_2693539AC(v4, v0 + v8, &qword_28030CFB0, &qword_2693B58F0);
  swift_endAccess();
  v9 = v0[2];

  v10 = v0[3];

  v11 = v0[4];

  sub_26934B4F0(v0 + v8, &qword_28030CFB0, &qword_2693B58F0);
  v12 = *(v0 + OBJC_IVAR____TtC21SiriTimeTimerInternal19TimerSessionManager_deferredTimerIDForSearch + 8);

  sub_26934B4F0(v0 + OBJC_IVAR____TtC21SiriTimeTimerInternal19TimerSessionManager_measurement, &qword_28030CFC0, &qword_2693B5900);
  return v0;
}

uint64_t TimerSessionManager.__deallocating_deinit()
{
  TimerSessionManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_269352C34(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_269352CDC;

  return sub_26934DB00(a1, a2);
}

uint64_t sub_269352CDC(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t type metadata accessor for TimerSessionManager()
{
  result = qword_280E265C0;
  if (!qword_280E265C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269352E34()
{
  sub_269353078();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2693530DC();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of TimerSessionManager.sessionIDString(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 288);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_269352CDC;

  return v10(a1, a2);
}

void sub_269353078()
{
  if (!qword_280E261F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28030CFB8, &qword_2693B58F8);
    v0 = sub_2693B3A70();
    if (!v1)
    {
      atomic_store(v0, &qword_280E261F0);
    }
  }
}

void sub_2693530DC()
{
  if (!qword_280E26860)
  {
    sub_2693B33D0();
    v0 = sub_2693B3A70();
    if (!v1)
    {
      atomic_store(v0, &qword_280E26860);
    }
  }
}

uint64_t sub_269353134(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2693B3AE0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_2693B3DB0();

      sub_2693B37B0();
      v13 = sub_2693B3DD0();

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
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
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

uint64_t sub_2693532E4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (qword_280E26228 != -1)
  {
LABEL_38:
    swift_once();
  }

  v6 = sub_2693B3620();
  __swift_project_value_buffer(v6, qword_280E26230);

  v7 = sub_2693B3610();
  v8 = sub_2693B39B0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v50[1] = a2;
    v51 = v10;
    *v9 = 136315394;
    v50[0] = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CFC8, &qword_2693B59A0);
    v11 = sub_2693B3760();
    v13 = sub_26934CA40(v11, v12, &v51);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v14 = sub_2693B3730();
    v16 = sub_26934CA40(v14, v15, &v51);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_26933F000, v7, v8, "TimerSessionManager: Looking for session for timer %s in active sessions: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D63A640](v10, -1, -1);
    MEMORY[0x26D63A640](v9, -1, -1);
  }

  if (a2)
  {
    v17 = 0;
    v18 = 1 << *(a3 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(a3 + 64);
    v21 = (v18 + 63) >> 6;
    while (v20)
    {
LABEL_13:
      v23 = (v17 << 10) | (16 * __clz(__rbit64(v20)));
      v24 = (*(a3 + 48) + v23);
      v25 = (*(a3 + 56) + v23);
      v26 = *v25;
      v27 = v25[1];
      if (*v24 != a1 || v24[1] != a2)
      {
        v20 &= v20 - 1;
        if ((sub_2693B3CE0() & 1) == 0)
        {
          continue;
        }
      }

      swift_bridgeObjectRetain_n();
      v29 = sub_2693B3610();
      v30 = sub_2693B39B0();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v50[0] = v32;
        *v31 = 136315394;
        *(v31 + 4) = sub_26934CA40(a1, a2, v50);
        *(v31 + 12) = 2080;
        v33 = sub_26934CA40(v26, v27, v50);

        *(v31 + 14) = v33;
        _os_log_impl(&dword_26933F000, v29, v30, "[TimerSessionManager] Found activity for timer %s: %s", v31, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D63A640](v32, -1, -1);
        MEMORY[0x26D63A640](v31, -1, -1);
      }

      else
      {
      }

      return v26;
    }

    while (1)
    {
      v22 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v22 >= v21)
      {
        break;
      }

      v20 = *(a3 + 64 + 8 * v22);
      ++v17;
      if (v20)
      {
        v17 = v22;
        goto LABEL_13;
      }
    }

    v34 = sub_2693B3610();
    v35 = sub_2693B39B0();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v50[0] = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_26934CA40(a1, a2, v50);
      _os_log_impl(&dword_26933F000, v34, v35, "TimerSessionManager: No activity found for timer ID %s.", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x26D63A640](v37, -1, -1);
      MEMORY[0x26D63A640](v36, -1, -1);
    }

    return 0;
  }

  else
  {
    sub_269378B08(a3);
    if (v40)
    {
      v26 = v38;
      v41 = v39;
    }

    else
    {
      v26 = 0;
      v41 = 0;
    }

    v42 = sub_2693B3610();
    v43 = sub_2693B39B0();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v50[0] = v45;
      *v44 = 136315138;
      if (v41)
      {
        v46 = v26;
      }

      else
      {
        v46 = 7104878;
      }

      if (v41)
      {
        v47 = v41;
      }

      else
      {
        v47 = 0xE300000000000000;
      }

      v48 = sub_26934CA40(v46, v47, v50);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_26933F000, v42, v43, "[TimerSessionManager] Using first activity for unspecified timer ID in deferred continuation: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x26D63A640](v45, -1, -1);
      MEMORY[0x26D63A640](v44, -1, -1);
    }
  }

  return v26;
}

uint64_t sub_26935388C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2693538F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2693539AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_269353A14()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CFB8, &qword_2693B58F8) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_269350478(v2, v3, v4, v5);
}

unint64_t sub_269353A90()
{
  result = qword_280E261D0;
  if (!qword_280E261D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E261D0);
  }

  return result;
}

uint64_t sub_269353ADC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_269353B24(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_269353B84()
{
  v0 = sub_2693B3620();
  __swift_allocate_value_buffer(v0, qword_28030D068);
  v1 = __swift_project_value_buffer(v0, qword_28030D068);
  if (qword_280E26360 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280E26A30);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_269353C4C(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_2693B3920();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B5B00;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2693B5DF0;
  v15[5] = v14;
  v16 = a3;
  v17 = a1;
  sub_2693A6BC4(0, 0, v10, &unk_2693B5B10, v15);
}

uint64_t sub_269353DD4(int a1, void *aBlock)
{
  *(v2 + 40) = _Block_copy(aBlock);

  return MEMORY[0x2822009F8](sub_269353E40, 0, 0);
}

uint64_t sub_269353E40()
{
  v1 = *(v0 + 40);
  v2 = [objc_allocWithZone(type metadata accessor for ResumeTimerIntentResponse()) init];
  v3 = OBJC_IVAR___ResumeTimerIntentResponse_code;
  swift_beginAccess();
  *&v2[v3] = 4;
  [v2 setUserActivity_];
  (v1)[2](v1, v2);
  _Block_release(v1);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_269353F1C(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = v1;
  return MEMORY[0x2822009F8](sub_269353F3C, 0, 0);
}

uint64_t sub_269353F3C()
{
  v1 = *(v0 + 112);
  v2 = [v1 targetTimer];
  v3 = [v1 targetTimer];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 state];
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v0 + 112);
  v7 = sub_2693667D8(v2, v5, v4 == 0);
  *(v0 + 128) = v7;

  v8 = [v6 targetTimer];
  if (v8 && (v9 = v8, v10 = [v8 shouldMatchAny], v9, v10))
  {
    v11 = [v10 BOOLValue];
  }

  else
  {
    v11 = 0;
  }

  *(v0 + 168) = v11;
  v12 = sub_26939F390(&unk_2879EC7C8);
  *(v0 + 136) = v12;
  v13 = swift_task_alloc();
  *(v0 + 144) = v13;
  *v13 = v0;
  v13[1] = sub_2693540F4;
  v14 = *(v0 + 120);

  return sub_26937E220(v7, v11, 1, v12, v14);
}

uint64_t sub_2693540F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  v5 = *(*v2 + 136);
  v8 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v6 = sub_2693544AC;
  }

  else
  {
    v6 = sub_269354228;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_269354228()
{
  v1 = *(v0 + 152);
  v2 = [objc_allocWithZone(type metadata accessor for ResumeTimerIntentResponse()) init];
  v3 = OBJC_IVAR___ResumeTimerIntentResponse_code;
  swift_beginAccess();
  *&v2[v3] = 4;
  [v2 setUserActivity_];
  if (v1 >> 62)
  {
    if (*(v0 + 152) < 0)
    {
      v15 = *(v0 + 152);
    }

    v4 = sub_2693B3C70();
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  v20 = MEMORY[0x277D84F90];
  result = sub_2693B3C20();
  if (v4 < 0)
  {
    __break(1u);
    return result;
  }

  v6 = *(v0 + 152);
  type metadata accessor for SiriTimer();
  v7 = 0;
  v8 = v6 + 32;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x26D639EB0](v7, *(v0 + 152));
    }

    else
    {
      v10 = *(v8 + 8 * v7);
    }

    v11 = v10;
    v12 = [*(v0 + 128) device];
    if (!v12)
    {
      v13 = (*(v0 + 120) + qword_28030D540);
      swift_beginAccess();
      v12 = *(*__swift_project_boxed_opaque_existential_1(v13, v13[3]) + 24);
      v14 = v12;
    }

    ++v7;
    sub_26935CB88(v11, v12);
    sub_2693B3C00();
    v9 = *(v20 + 16);
    sub_2693B3C30();
    sub_2693B3C40();
    sub_2693B3C10();
  }

  while (v4 != v7);
LABEL_15:
  v16 = *(v0 + 152);

  v17 = *(v0 + 128);
  type metadata accessor for SiriTimer();
  v18 = sub_2693B3800();

  [v2 setResumedTimers_];

  v19 = *(v0 + 8);

  return v19(v2);
}

uint64_t sub_2693544AC()
{
  v25 = v0;
  v1 = *(v0 + 160);
  *(v0 + 88) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF30, &qword_2693B5A10);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 168);
    v4 = *(v0 + 128);

    v24 = *(v0 + 96);
    v5 = v24;
    v6 = sub_269355CA0(&v24, v3);

    sub_26934ADAC(v5);
  }

  else
  {

    if (qword_28030CDD8 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 160);
    v8 = sub_2693B3620();
    __swift_project_value_buffer(v8, qword_28030D068);
    v9 = v7;
    v10 = sub_2693B3610();
    v11 = sub_2693B39A0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 160);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24 = v14;
      *v13 = 136315138;
      *(v0 + 104) = v12;
      v15 = v12;
      v16 = sub_2693B3760();
      v18 = sub_26934CA40(v16, v17, &v24);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_26933F000, v10, v11, "Unknown error handling ResumeTimerIntent: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x26D63A640](v14, -1, -1);
      MEMORY[0x26D63A640](v13, -1, -1);
    }

    v19 = *(v0 + 160);
    v20 = *(v0 + 128);
    v6 = [objc_allocWithZone(type metadata accessor for ResumeTimerIntentResponse()) init];
    v21 = OBJC_IVAR___ResumeTimerIntentResponse_code;
    swift_beginAccess();
    *&v6[v21] = 5;
    [v6 setUserActivity_];
  }

  v22 = *(v0 + 8);

  return v22(v6);
}

uint64_t sub_26935475C(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_2693B3920();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B5AD8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2693B5AE0;
  v15[5] = v14;
  v16 = a3;
  v17 = a1;
  sub_2693A6BC4(0, 0, v10, &unk_2693B5DD0, v15);
}

uint64_t sub_2693548E4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26934B604;

  return sub_269353F1C(v6);
}

uint64_t sub_2693549A8(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x2822009F8](sub_2693549C8, 0, 0);
}

uint64_t sub_2693549C8()
{
  v1 = v0[10];
  v2 = [v1 targetTimer];
  v3 = sub_2693667D8(v2, 0, 0);
  v0[12] = v3;

  v4 = type metadata accessor for ResumeTimerIntent();
  v0[2] = v1;
  v0[5] = v4;
  v0[6] = &protocol witness table for ResumeTimerIntent;
  v5 = [v1 targetTimer];
  if (v5 && (v6 = v5, v7 = [v5 shouldMatchAny], v6, v7))
  {
    v8 = [v7 BOOLValue];
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_26939ECE0(&unk_2879EC7F0);
  v0[13] = v9;
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_269354B50;
  v11 = v0[11];

  return sub_269390C34(v3, (v0 + 2), v8, v9);
}

uint64_t sub_269354B50(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *(*v2 + 104);
  v7 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v8 = sub_269354D08;
  }

  else
  {
    *(v4 + 128) = a1;
    sub_269356A08(v4 + 16);
    v8 = sub_269354CA4;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_269354CA4()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_269354D08()
{
  v26 = v0;
  v1 = *(v0 + 120);
  sub_269356A08(v0 + 16);
  *(v0 + 56) = v1;
  v2 = (v0 + 56);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF30, &qword_2693B5A10);
  if (swift_dynamicCast())
  {

    v4 = *(v0 + 64);
    v5 = *(v0 + 96);
    if (v4 >= 0xA)
    {
      type metadata accessor for SiriTimerResolutionResult();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v22 = v5;
      v6 = [ObjCClassFromMetadata resolutionResultSuccessWithResolvedValue_];
      sub_26934ADAC(v4);
    }

    else
    {
      v6 = sub_2693A08FC(*(v0 + 64), *(v0 + 96));

      sub_26934ADAC(v4);
    }
  }

  else
  {

    if (qword_28030CDD8 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 120);
    v8 = sub_2693B3620();
    __swift_project_value_buffer(v8, qword_28030D068);
    v9 = v7;
    v10 = sub_2693B3610();
    v11 = sub_2693B39A0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 120);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = v14;
      *v13 = 136315138;
      *(v0 + 72) = v12;
      v15 = v12;
      v16 = sub_2693B3760();
      v18 = sub_26934CA40(v16, v17, &v25);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_26933F000, v10, v11, "Unknown error resolving targetTimer for ResumeTimerIntent: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x26D63A640](v14, -1, -1);
      MEMORY[0x26D63A640](v13, -1, -1);
    }

    v19 = *(v0 + 120);
    v20 = *(v0 + 96);
    type metadata accessor for SiriTimerResolutionResult();
    v6 = [swift_getObjCClassFromMetadata() unsupported];
  }

  v23 = *(v0 + 8);

  return v23(v6);
}

uint64_t sub_269354FD0(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_2693B3920();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B5AB0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2693B5DA0;
  v15[5] = v14;
  v16 = a3;
  v17 = a1;
  sub_2693A6BC4(0, 0, v10, &unk_2693B5AC0, v15);
}

uint64_t sub_269355158(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26934743C;

  return sub_2693549A8(v6);
}

uint64_t sub_26935521C(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_2693B3920();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B5A80;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2693B5D70;
  v15[5] = v14;
  v16 = a3;
  v17 = a1;
  sub_2693A6BC4(0, 0, v10, &unk_2693B5A90, v15);
}

uint64_t sub_2693553A4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_269355430, 0, 0);
}

uint64_t sub_269355430()
{
  v1 = [*(v0 + 16) targetTimer];
  v2 = [v1 shouldMatchAny];

  [v2 BOOLValue];
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_2693478B0;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);

  return (sub_269355FD0)(v5, v4);
}

uint64_t sub_26935552C(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_2693B3920();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B5A60;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2693B5700;
  v15[5] = v14;
  v16 = a3;
  v17 = a1;
  sub_2693A6BC4(0, 0, v10, &unk_2693B5530, v15);
}

uint64_t sub_2693556B4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_269355740, 0, 0);
}

uint64_t sub_269355740()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_269347CE0;
  v3 = *(v0 + 24);

  return sub_2693558FC(v3);
}

uint64_t type metadata accessor for ResumeTimerIntentHandler()
{
  result = qword_28030D080;
  if (!qword_28030D080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269355848()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_2693556B4(v2, v3, v4);
}

uint64_t sub_2693558FC(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_2693B3420();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2693559BC, 0, 0);
}

uint64_t sub_2693559BC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_2693B3410();
  v4 = sub_2693B3400();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (qword_280E262E8 != -1)
    {
      swift_once();
    }

    v5 = sub_2693B3620();
    __swift_project_value_buffer(v5, qword_280E262F0);
    v6 = sub_2693B3610();
    v7 = sub_2693B39B0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_26933F000, v6, v7, "resolveAllTargetableDevices() Resolving all targetable devices", v8, 2u);
      MEMORY[0x26D63A640](v8, -1, -1);
    }

    v9 = swift_task_alloc();
    v0[6] = v9;
    *v9 = v0;
    v9[1] = sub_269349074;
    v10 = v0[2];

    return sub_269394540();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE70, "W");
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2693B54B0;
    type metadata accessor for SiriDeviceResolutionResult();
    *(v12 + 32) = [swift_getObjCClassFromMetadata() notRequired];
    v13 = v0[5];

    v14 = v0[1];

    return v14(v12);
  }
}

uint64_t sub_269355BEC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_2693553A4(v2, v3, v4);
}

char *sub_269355CA0(unint64_t *a1, char a2)
{
  v2 = *a1;
  if (*a1 <= 4)
  {
    if (v2 >= 5)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (v2 - 7 < 3)
  {
    if (qword_28030CDD8 != -1)
    {
      swift_once();
    }

    v3 = sub_2693B3620();
    __swift_project_value_buffer(v3, qword_28030D068);
    sub_26934AD9C(v2);
    v4 = sub_2693B3610();
    v5 = sub_2693B39A0();
    sub_26934ADAC(v2);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v19 = v7;
      *v6 = 136315138;
      sub_26934AD9C(v2);
      v8 = sub_2693B3760();
      v10 = sub_26934CA40(v8, v9, &v19);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_26933F000, v4, v5, "Failed in ResumeTimerIntent handling with an invalid, unhandled error: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x26D63A640](v7, -1, -1);
      MEMORY[0x26D63A640](v6, -1, -1);
    }

LABEL_10:
    v11 = [objc_allocWithZone(type metadata accessor for ResumeTimerIntentResponse()) init];
    v12 = OBJC_IVAR___ResumeTimerIntentResponse_code;
    swift_beginAccess();
    v13 = 5;
LABEL_11:
    *&v11[v12] = v13;
    [v11 setUserActivity_];
    return v11;
  }

  if (v2 == 5)
  {
    v11 = [objc_allocWithZone(type metadata accessor for ResumeTimerIntentResponse()) init];
    v12 = OBJC_IVAR___ResumeTimerIntentResponse_code;
    swift_beginAccess();
    v13 = 100;
    goto LABEL_11;
  }

  if (v2 == 6)
  {
    v11 = [objc_allocWithZone(type metadata accessor for ResumeTimerIntentResponse()) init];
    v12 = OBJC_IVAR___ResumeTimerIntentResponse_code;
    swift_beginAccess();
    v13 = 101;
    goto LABEL_11;
  }

LABEL_16:
  v11 = [objc_allocWithZone(type metadata accessor for ResumeTimerIntentResponse()) init];
  v16 = OBJC_IVAR___ResumeTimerIntentResponse_code;
  swift_beginAccess();
  if (a2)
  {
    v17 = 103;
  }

  else
  {
    v17 = 102;
  }

  *&v11[v16] = v17;
  [v11 setUserActivity_];
  sub_26938B998(v2);
  type metadata accessor for SiriTimer();
  v18 = sub_2693B3800();

  [v11 setResumedTimers_];

  return v11;
}

uint64_t sub_269355FD0(void *a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  v4 = sub_2693B3420();
  v2[22] = v4;
  v5 = *(v4 - 8);
  v2[23] = v5;
  v6 = *(v5 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[5] = type metadata accessor for ResumeTimerIntent();
  v2[6] = &protocol witness table for ResumeTimerIntent;
  v2[2] = a1;
  v7 = a1;

  return MEMORY[0x2822009F8](sub_2693560B4, 0, 0);
}

uint64_t sub_2693560B4()
{
  v21 = v0;
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  sub_2693B3410();
  v4 = sub_2693B3400();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (qword_280E262E8 != -1)
    {
      swift_once();
    }

    v5 = sub_2693B3620();
    v0[25] = __swift_project_value_buffer(v5, qword_280E262F0);
    sub_26934489C((v0 + 2), (v0 + 7));
    v6 = sub_2693B3610();
    v7 = sub_2693B39B0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v20 = v9;
      *v8 = 136315138;
      sub_26934489C((v0 + 7), (v0 + 12));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF70, &qword_2693B5850);
      v10 = sub_2693B3760();
      v12 = v11;
      __swift_destroy_boxed_opaque_existential_1(v0 + 7);
      v13 = sub_26934CA40(v10, v12, &v20);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_26933F000, v6, v7, "resolveAssociatedDeviceTarget(for:) %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x26D63A640](v9, -1, -1);
      MEMORY[0x26D63A640](v8, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    }

    v18 = swift_task_alloc();
    v0[26] = v18;
    *v18 = v0;
    v18[1] = sub_269356390;
    v19 = v0[21];

    return sub_269394540();
  }

  else
  {
    *(v0[21] + qword_280E266A8) = 0;
    type metadata accessor for SiriDeviceResolutionResult();
    v14 = [swift_getObjCClassFromMetadata() notRequired];
    v15 = v0[24];
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v16 = v0[1];

    return v16(v14);
  }
}

uint64_t sub_269356390(uint64_t a1)
{
  v2 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = a1;

  return MEMORY[0x2822009F8](sub_269356490, 0, 0);
}

uint64_t sub_269356490()
{
  v54 = v0;
  v1 = *(v0 + 216);
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_22:
    v47 = *(v0 + 216);
    goto LABEL_23;
  }

  if (v1 < 0)
  {
    v46 = *(v0 + 216);
  }

  if (!sub_2693B3C70())
  {
    goto LABEL_22;
  }

LABEL_3:
  v2 = [*(v0 + 160) targetingInfo];
  v3 = *(v0 + 216);
  if (!v2)
  {
LABEL_23:

LABEL_24:
    *(*(v0 + 168) + qword_280E266A8) = 0;
    type metadata accessor for SiriDeviceResolutionResult();
    v41 = [swift_getObjCClassFromMetadata() notRequired];
    goto LABEL_25;
  }

  v4 = *(v0 + 200);

  v5 = v2;
  v6 = sub_2693B3610();
  v7 = sub_2693B39B0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v53 = v9;
    *v8 = 134218242;
    if (v1 >> 62)
    {
      v12 = *(v0 + 216);
      if (v1 < 0)
      {
        v13 = *(v0 + 216);
      }

      v10 = sub_2693B3C70();
    }

    else
    {
      v10 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = *(v0 + 216);
    *(v8 + 4) = v10;

    *(v8 + 12) = 2080;
    v15 = v5;
    v16 = [v15 description];
    v17 = v5;
    v18 = sub_2693B3750();
    v20 = v19;

    v21 = v18;
    v5 = v17;
    v22 = sub_26934CA40(v21, v20, &v53);

    *(v8 + 14) = v22;
    _os_log_impl(&dword_26933F000, v6, v7, "Filtering %ld targets using targeting info: %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x26D63A640](v9, -1, -1);
    MEMORY[0x26D63A640](v8, -1, -1);
  }

  else
  {
    v11 = *(v0 + 216);
  }

  v23 = sub_26939E114(v5, *(v0 + 160), *(v0 + 216));

  v24 = *(v0 + 200);
  if (!v23)
  {
    v42 = sub_2693B3610();
    v43 = sub_2693B39B0();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_26933F000, v42, v43, "No valid device target found for target criteria", v44, 2u);
      MEMORY[0x26D63A640](v44, -1, -1);
    }

    v45 = *(v0 + 168);

    *(v45 + qword_280E266B8) = 1;
    goto LABEL_24;
  }

  v25 = v23;
  v26 = sub_2693B3610();
  v27 = sub_2693B39B0();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v53 = v51;
    *v28 = 136315138;
    v52 = v5;
    v29 = v25;
    v30 = v25;
    v31 = [v29 description];
    v32 = sub_2693B3750();
    v34 = v33;

    v25 = v30;
    v5 = v52;
    v35 = sub_26934CA40(v32, v34, &v53);

    *(v28 + 4) = v35;
    _os_log_impl(&dword_26933F000, v26, v27, "Found valid device target: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v51);
    MEMORY[0x26D63A640](v51, -1, -1);
    MEMORY[0x26D63A640](v28, -1, -1);
  }

  v36 = *(v0 + 168) + qword_28030D540;
  swift_beginAccess();
  v37 = *(v36 + 24);
  v38 = *(v36 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
  v39 = *(v38 + 40);
  v40 = v25;
  v39(v23, v37, v38);
  swift_endAccess();
  type metadata accessor for SiriDeviceResolutionResult();
  v41 = sub_2693B1D2C(v40);

LABEL_25:
  v48 = *(v0 + 192);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v49 = *(v0 + 8);

  return v49(v41);
}

uint64_t sub_269356954()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344B10;

  return sub_269355158(v2, v3, v4);
}

uint64_t sub_269356A08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CF78, &qword_2693B5880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269356A70()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_2693548E4(v2, v3, v4);
}

uint64_t sub_269356B24()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_269353DD4(v2, v3);
}

uint64_t sub_269356BD8()
{
  v0 = sub_2693B3620();
  __swift_allocate_value_buffer(v0, qword_28030D090);
  v1 = __swift_project_value_buffer(v0, qword_28030D090);
  if (qword_28030CDF8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_28030D160);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_269356EE4(int a1, void *aBlock)
{
  *(v2 + 40) = _Block_copy(aBlock);

  return MEMORY[0x2822009F8](sub_269356F50, 0, 0);
}

uint64_t sub_269356F50()
{
  v1 = *(v0 + 40);
  v2 = [objc_allocWithZone(type metadata accessor for PauseTimerIntentResponse()) init];
  v3 = OBJC_IVAR___PauseTimerIntentResponse_code;
  swift_beginAccess();
  *&v2[v3] = 4;
  [v2 setUserActivity_];
  (v1)[2](v1, v2);
  _Block_release(v1);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2693571CC(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);

  return MEMORY[0x2822009F8](sub_269343B30, 0, 0);
}

uint64_t sub_2693573C0(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);

  return MEMORY[0x2822009F8](sub_269343DC4, 0, 0);
}

void sub_26935742C(uint64_t a1, void *a2, void (*a3)(char *))
{
  if (*(a1 + 1))
  {
    if (qword_28030CDE0 != -1)
    {
      swift_once();
    }

    v4 = sub_2693B3620();
    __swift_project_value_buffer(v4, qword_28030D090);
    v5 = sub_2693B3610();
    v6 = sub_2693B39A0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_26933F000, v5, v6, "pause failed", v7, 2u);
      MEMORY[0x26D63A640](v7, -1, -1);
    }

    v8 = [objc_allocWithZone(type metadata accessor for PauseTimerIntentResponse()) init];
    v9 = OBJC_IVAR___PauseTimerIntentResponse_code;
    swift_beginAccess();
    *&v8[v9] = 5;
    [v8 setUserActivity_];
  }

  else
  {
    v8 = [objc_allocWithZone(type metadata accessor for PauseTimerIntentResponse()) init];
    v11 = OBJC_IVAR___PauseTimerIntentResponse_code;
    swift_beginAccess();
    *&v8[v11] = 4;
    [v8 setUserActivity_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE70, "W");
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2693B54B0;
    *(v12 + 32) = a2;
    type metadata accessor for SiriTimer();
    v13 = a2;
    v14 = sub_2693B3800();

    [v8 setPausedTimers_];

    if (qword_28030CDE0 != -1)
    {
      swift_once();
    }

    v15 = sub_2693B3620();
    __swift_project_value_buffer(v15, qword_28030D090);
    v16 = sub_2693B3610();
    v17 = sub_2693B39B0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_26933F000, v16, v17, "timer pause completion", v18, 2u);
      MEMORY[0x26D63A640](v18, -1, -1);
    }
  }

  a3(v8);
}

void sub_269357730(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

id sub_2693577C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PauseTimerIntentHandlerSingle();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_26935782C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_26934489C(a2 + OBJC_IVAR____TtC21SiriTimeTimerInternal29PauseTimerIntentHandlerSingle_siriTimerManager, v22);
  v5 = v23;
  v6 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v7 = (*(v6 + 64))(v5, v6);
  if (v7)
  {
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_1(v22);
    if ([v8 state])
    {
      v9 = [a1 targetTimer];
      v10 = SiriTimer.matches(targetTimer:ignoreRemainingTime:)(v9, 1);

      if (v10)
      {
        type metadata accessor for SiriTimerResolutionResult();
        v11 = sub_2693B1178(v8);
        (*(a3 + 16))(a3, v11);
      }

      else
      {
        if (qword_28030CDE0 != -1)
        {
          swift_once();
        }

        v17 = sub_2693B3620();
        __swift_project_value_buffer(v17, qword_28030D090);
        v18 = sub_2693B3610();
        v19 = sub_2693B39B0();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_26933F000, v18, v19, "Timer on the device doesn't match the timer in user request: returning needsConfirmation", v20, 2u);
          MEMORY[0x26D63A640](v20, -1, -1);
        }

        type metadata accessor for SiriTimerResolutionResult();
        v21 = v8;
        v11 = sub_2693B13DC(v8);

        (*(a3 + 16))(a3, v11);
      }

      goto LABEL_17;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  if (qword_28030CDE0 != -1)
  {
    swift_once();
  }

  v12 = sub_2693B3620();
  __swift_project_value_buffer(v12, qword_28030D090);
  v13 = sub_2693B3610();
  v14 = sub_2693B39A0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_26933F000, v13, v14, "Timer is not found on device. Skipping Confirm step and will fail the request in Handle step.", v15, 2u);
    MEMORY[0x26D63A640](v15, -1, -1);
  }

  type metadata accessor for SiriTimerResolutionResult();
  v16 = _s21SiriTimeTimerInternal0aC0C07invalidC0ACvgZ_0();
  v11 = sub_2693B1178(v16);

  (*(a3 + 16))(a3, v11);
LABEL_17:
}

void sub_269357B28(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  if (qword_28030CDE0 != -1)
  {
    swift_once();
  }

  v7 = sub_2693B3620();
  __swift_project_value_buffer(v7, qword_28030D090);
  v8 = sub_2693B3610();
  v9 = sub_2693B39B0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_26933F000, v8, v9, "Handling pause timer intent.", v10, 2u);
    MEMORY[0x26D63A640](v10, -1, -1);
  }

  v11 = OBJC_IVAR____TtC21SiriTimeTimerInternal29PauseTimerIntentHandlerSingle_siriTimerManager;
  sub_26934489C(a2 + OBJC_IVAR____TtC21SiriTimeTimerInternal29PauseTimerIntentHandlerSingle_siriTimerManager, v33);
  v12 = v34;
  v13 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  v14 = (*(v13 + 64))(v12, v13);
  if (!v14)
  {
    __swift_destroy_boxed_opaque_existential_1(v33);
    v20 = sub_2693B3610();
    v21 = sub_2693B39A0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_26933F000, v20, v21, "siriTimerManager.currentTimerSync get nil result: returning with .failureNoTimers", v22, 2u);
      MEMORY[0x26D63A640](v22, -1, -1);
    }

    v16 = [objc_allocWithZone(type metadata accessor for PauseTimerIntentResponse()) init];
    v23 = OBJC_IVAR___PauseTimerIntentResponse_code;
    swift_beginAccess();
    *&v16[v23] = 101;
    [v16 setUserActivity_];
    (a3)[2](a3, v16);

    goto LABEL_16;
  }

  v15 = v14;
  __swift_destroy_boxed_opaque_existential_1(v33);
  if (![v15 state])
  {
    v24 = sub_2693B3610();
    v25 = sub_2693B39B0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_26933F000, v24, v25, "Timer has an unknown state (meaning there's no timer set on phone): returning with .failureNoTimers.", v26, 2u);
      MEMORY[0x26D63A640](v26, -1, -1);
    }

    v16 = [objc_allocWithZone(type metadata accessor for PauseTimerIntentResponse()) init];
    v27 = OBJC_IVAR___PauseTimerIntentResponse_code;
    swift_beginAccess();
    *&v16[v27] = 101;
    [v16 setUserActivity_];
    goto LABEL_15;
  }

  if ([v15 state] == 2)
  {
    v16 = [objc_allocWithZone(type metadata accessor for PauseTimerIntentResponse()) init];
    v17 = OBJC_IVAR___PauseTimerIntentResponse_code;
    swift_beginAccess();
    *&v16[v17] = 102;
    [v16 setUserActivity_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE70, "W");
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_2693B54B0;
    *(v18 + 32) = v15;
    type metadata accessor for SiriTimer();
    v15 = v15;
    v19 = sub_2693B3800();

    [v16 setPausedTimers_];

LABEL_15:
    (a3)[2](a3, v16);

LABEL_16:
    return;
  }

  sub_26934489C(a2 + v11, v33);
  v28 = v34;
  v29 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  v30 = swift_allocObject();
  v30[2] = v15;
  v30[3] = sub_269344A48;
  v30[4] = v6;
  v31 = *(v29 + 24);
  v32 = v15;

  v31(a1, sub_269358038, v30, v28, v29);

  __swift_destroy_boxed_opaque_existential_1(v33);
}

uint64_t sub_269358044()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344B10;

  return sub_2693573C0(v2, v3);
}

uint64_t sub_2693580F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_2693571CC(v2, v3);
}

uint64_t sub_2693581AC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_269344F9C;

  return sub_269356EE4(v2, v3);
}

uint64_t TimerGrouping.GroupingError.hashValue.getter()
{
  v1 = *v0;
  sub_2693B3DB0();
  MEMORY[0x26D63A0A0](v1);
  return sub_2693B3DD0();
}

uint64_t sub_269358304()
{
  v1 = *v0;
  sub_2693B3DB0();
  MEMORY[0x26D63A0A0](v1);
  return sub_2693B3DD0();
}

uint64_t sub_269358378()
{
  v1 = *v0;
  sub_2693B3DB0();
  MEMORY[0x26D63A0A0](v1);
  return sub_2693B3DD0();
}

uint64_t TimerGrouping.hashValue.getter()
{
  v1 = *v0;
  sub_2693B3DB0();
  MEMORY[0x26D63A0A0](v1);
  return sub_2693B3DD0();
}

id Array<A>.analyzeGrouping()(uint64_t a1)
{
  v82[0] = a1;
  sub_2693B38A0();
  swift_getWitnessTable();
  sub_2693B3980();
  if (!v81)
  {
    sub_269358D58();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();
    return v1;
  }

  if (sub_2693B3880() < 2)
  {
    sub_269358D58();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();

    return v1;
  }

  v1 = sub_269359858(&unk_2879EC848);
  v83 = v1;
  if (!sub_2693B3880())
  {
LABEL_108:

    return v1;
  }

  v3 = 0;
  while (1)
  {
    v6 = sub_2693B3860();
    sub_2693B3840();
    result = (v6 & 1) != 0 ? *(a1 + 32 + 8 * v3) : sub_2693B3BC0();
    v8 = result;
    if (__OFADD__(v3++, 1))
    {
      break;
    }

    v1 = v83;
    if (!*(v83 + 16))
    {

      goto LABEL_108;
    }

    v10 = *(v83 + 40);
    sub_2693B3DB0();
    MEMORY[0x26D63A0A0](0);
    v11 = sub_2693B3DD0();
    v12 = -1 << *(v1 + 32);
    v13 = v11 & ~v12;
    if ((*(v1 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      v14 = ~v12;
      while (*(*(v1 + 48) + v13))
      {
        v13 = (v13 + 1) & v14;
        if (((*(v1 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      v15 = [v8 label];
      if (v15)
      {
        v16 = v15;
        v17 = sub_2693B3750();
        v19 = v18;
      }

      else
      {
        v17 = 0;
        v19 = 0;
      }

      v20 = [v81 label];
      if (!v20)
      {
        if (v19)
        {
LABEL_29:
        }

LABEL_30:
        sub_269358EA4(0, v82);
        goto LABEL_31;
      }

      v21 = v20;
      sub_2693B3750();
      v23 = v22;

      if (!v19)
      {
        if (v23)
        {
          goto LABEL_29;
        }

        goto LABEL_30;
      }

      if (!v23)
      {
        goto LABEL_29;
      }

      v82[0] = v17;
      v82[1] = v19;
      sub_26934CFE8();
      v24 = sub_2693B3A90();

      if (v24)
      {
        goto LABEL_30;
      }
    }

LABEL_31:
    v25 = v83;
    if (!*(v83 + 16))
    {
      goto LABEL_68;
    }

    v26 = *(v83 + 40);
    sub_2693B3DB0();
    MEMORY[0x26D63A0A0](1);
    v27 = sub_2693B3DD0();
    v28 = v25 + 56;
    v29 = -1 << *(v25 + 32);
    v30 = v27 & ~v29;
    if ((*(v25 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
    {
      v31 = ~v29;
      while (*(*(v25 + 48) + v30) != 1)
      {
        v30 = (v30 + 1) & v31;
        if (((*(v28 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
LABEL_36:
      if (!*(v25 + 16))
      {
        goto LABEL_68;
      }

      v32 = *(v25 + 40);
      sub_2693B3DB0();
      MEMORY[0x26D63A0A0](2);
      v33 = sub_2693B3DD0();
      v34 = -1 << *(v25 + 32);
      v35 = v33 & ~v34;
      if (((*(v28 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
      {
        goto LABEL_68;
      }

      v36 = ~v34;
      while (*(*(v25 + 48) + v35) != 2)
      {
        v35 = (v35 + 1) & v36;
        if (((*(v28 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
        {
          goto LABEL_68;
        }
      }
    }

    v37 = [v8 device];
    v38 = [v81 device];
    v39 = v38;
    if (!v37)
    {
      if (v38)
      {
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    if (!v38)
    {
      v39 = v37;
LABEL_51:

LABEL_52:
      sub_269358EA4(1u, v82);
      sub_269358EA4(2u, v82);
      goto LABEL_68;
    }

    v40 = [v37 roomID];
    if (!v40)
    {
      goto LABEL_64;
    }

    v41 = [v39 roomID];
    if (!v41)
    {
      goto LABEL_64;
    }

    v42 = [v37 roomID];
    if (v42)
    {
      v43 = v42;
      v44 = sub_2693B3750();
      v46 = v45;
    }

    else
    {
      v44 = 0;
      v46 = 0;
    }

    v47 = [v39 roomID];
    if (v47)
    {
      v80 = v44;
      v48 = v47;
      v79 = sub_2693B3750();
      v50 = v49;

      if (v46)
      {
        if (!v50)
        {
          goto LABEL_63;
        }

        if (v80 != v79 || v46 != v50)
        {
          v78 = sub_2693B3CE0();

          if (v78)
          {
            goto LABEL_65;
          }

          goto LABEL_64;
        }
      }

      else if (v50)
      {
LABEL_63:

LABEL_64:
        sub_269358EA4(1u, v82);
      }
    }

    else if (v46)
    {
      goto LABEL_63;
    }

LABEL_65:
    type metadata accessor for SiriDevice();
    if ((sub_2693B3A50() & 1) == 0)
    {
      sub_269358EA4(2u, v82);
    }

LABEL_68:
    v51 = v83;
    if (*(v83 + 16))
    {
      v52 = *(v83 + 40);
      sub_2693B3DB0();
      MEMORY[0x26D63A0A0](3);
      v53 = sub_2693B3DD0();
      v54 = v51 + 56;
      v55 = -1 << *(v51 + 32);
      v56 = v53 & ~v55;
      if ((*(v51 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56))
      {
        v57 = ~v55;
        while (*(*(v51 + 48) + v56) != 3)
        {
          v56 = (v56 + 1) & v57;
          if (((*(v54 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
          {
            goto LABEL_73;
          }
        }

        v64 = &property descriptor for SearchTimerIntent.targetingInfo;
LABEL_80:
        v65 = v8;
        v66 = [v65 v64[190]];
        if (v66 == [v81 v64[190]])
        {
          if ([v65 v64[190]] == 2)
          {

            goto LABEL_84;
          }

          v77 = [v65 v64[190]];

          if (v77 != 1)
          {
            goto LABEL_86;
          }

          v67 = 4;
        }

        else
        {

          sub_269358EA4(4u, v82);
LABEL_84:
          v67 = 3;
        }

        sub_269358EA4(v67, v82);
        goto LABEL_86;
      }

LABEL_73:
      if (*(v51 + 16))
      {
        v58 = *(v51 + 40);
        sub_2693B3DB0();
        MEMORY[0x26D63A0A0](4);
        v59 = sub_2693B3DD0();
        v60 = -1 << *(v51 + 32);
        v61 = v59 & ~v60;
        if ((*(v54 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61))
        {
          v62 = ~v60;
          v63 = *(v51 + 48);
          v64 = &property descriptor for SearchTimerIntent.targetingInfo;
          while (*(v63 + v61) != 4)
          {
            v61 = (v61 + 1) & v62;
            if (((*(v54 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) == 0)
            {
              goto LABEL_86;
            }
          }

          goto LABEL_80;
        }
      }
    }

LABEL_86:
    v68 = v83;
    if (!*(v83 + 16))
    {
      goto LABEL_8;
    }

    v69 = *(v83 + 40);
    sub_2693B3DB0();
    MEMORY[0x26D63A0A0](5);
    v70 = sub_2693B3DD0();
    v71 = -1 << *(v68 + 32);
    v72 = v70 & ~v71;
    if (((*(v68 + 56 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72) & 1) == 0)
    {
      goto LABEL_8;
    }

    v73 = ~v71;
    while (*(*(v68 + 48) + v72) != 5)
    {
      v72 = (v72 + 1) & v73;
      if (((*(v68 + 56 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v74 = [v8 duration];
    v75 = [v81 duration];
    v76 = v75;
    if (v74)
    {
      if (v75)
      {
        if (([v74 isEqual_] & 1) == 0)
        {
          sub_269358EA4(5u, v82);
        }

        goto LABEL_8;
      }

      v76 = v74;
    }

    else if (!v75)
    {
      goto LABEL_102;
    }

LABEL_102:
    sub_269358EA4(5u, v82);
LABEL_8:

    if (v3 == sub_2693B3880())
    {
      v1 = v83;
      goto LABEL_108;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_269358D58()
{
  result = qword_28030D0B0;
  if (!qword_28030D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030D0B0);
  }

  return result;
}

uint64_t sub_269358DAC(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_2693B3DB0();
  MEMORY[0x26D63A0A0](a2);
  v7 = sub_2693B3DD0();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_26935970C(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

unint64_t sub_269358EA4@<X0>(unsigned __int8 a1@<W0>, _BYTE *a2@<X8>)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_2693B3DB0();
  MEMORY[0x26D63A0A0](a1);
  result = sub_2693B3DD0();
  v8 = -1 << *(v5 + 32);
  v9 = result & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != a1)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    v14 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_269358FB4();
      v13 = v14;
    }

    *a2 = *(*(v13 + 48) + v9);
    result = sub_269359564(v9);
    *v2 = v14;
  }

  else
  {
LABEL_5:
    *a2 = 6;
  }

  return result;
}

void *sub_269358FB4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D0D8, &qword_2693B5D18);
  v2 = *v0;
  v3 = sub_2693B3B60();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_2693590F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D0D8, &qword_2693B5D18);
  result = sub_2693B3B70();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_2693B3DB0();
      MEMORY[0x26D63A0A0](v17);
      result = sub_2693B3DD0();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t sub_269359314(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030D0D8, &qword_2693B5D18);
  result = sub_2693B3B70();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_2693B3DB0();
      MEMORY[0x26D63A0A0](v18);
      result = sub_2693B3DD0();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
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

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_269359564(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_2693B3AE0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + v6);
        sub_2693B3DB0();
        MEMORY[0x26D63A0A0](v12);
        v13 = sub_2693B3DD0() & v7;
        if (v2 >= v10)
        {
          if (v13 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + v2);
          v16 = (v14 + v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_26935970C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_269359314(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_269358FB4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2693590F4(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_2693B3DB0();
  MEMORY[0x26D63A0A0](v4);
  result = sub_2693B3DD0();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2693B3D30();
  __break(1u);
  return result;
}

uint64_t sub_269359858(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_269359CB4();
  result = MEMORY[0x26D639C50](v2, &type metadata for TimerGrouping, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_269358DAC(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_2693598D0()
{
  result = qword_28030D0B8;
  if (!qword_28030D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030D0B8);
  }

  return result;
}

unint64_t sub_269359928()
{
  result = qword_28030D0C0;
  if (!qword_28030D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030D0C0);
  }

  return result;
}

unint64_t sub_269359980()
{
  result = qword_28030D0C8;
  if (!qword_28030D0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28030D0D0, &qword_2693B5C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030D0C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TimerGrouping(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TimerGrouping(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TimerGrouping.GroupingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TimerGrouping.GroupingError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_269359CB4()
{
  result = qword_28030D0E0;
  if (!qword_28030D0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030D0E0);
  }

  return result;
}

uint64_t sub_269359D08()
{
  v0 = sub_2693B3620();
  __swift_allocate_value_buffer(v0, qword_28030D0E8);
  v1 = __swift_project_value_buffer(v0, qword_28030D0E8);
  if (qword_280E26360 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280E26A30);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_269359DD0(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030CE78, "\nY");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_2693B3920();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2693B5DE8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2693B5DF0;
  v15[5] = v14;
  v16 = a3;
  v17 = a1;
  sub_2693A6BC4(0, 0, v10, &unk_2693B5B10, v15);
}