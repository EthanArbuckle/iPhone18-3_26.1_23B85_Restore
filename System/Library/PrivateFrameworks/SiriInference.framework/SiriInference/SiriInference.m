uint64_t sub_1DD390584(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1DD63F308();
  v7 = OUTLINED_FUNCTION_1_5(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[6];
    goto LABEL_3;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCC98, &unk_1DD64AF10);
    v14 = OUTLINED_FUNCTION_1_5(v13);
    if (*(v15 + 84) == a2)
    {
      v9 = v14;
      v10 = a3[14];
    }

    else
    {
      v16 = type metadata accessor for StringTokenizer();
      v17 = OUTLINED_FUNCTION_1_5(v16);
      if (*(v18 + 84) == a2)
      {
        v9 = v17;
        v10 = a3[15];
      }

      else
      {
        v9 = sub_1DD63D168();
        v10 = a3[18];
      }
    }

LABEL_3:

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }

  v12 = *(a1 + a3[8] + 24);
  if (v12 >= 0xFFFFFFFF)
  {
    LODWORD(v12) = -1;
  }

  return (v12 + 1);
}

uint64_t ContactResolver.__deallocating_deinit()
{
  sub_1DD390754(v0 + OBJC_IVAR____TtC13SiriInference15ContactResolver_cacheOverride, &qword_1ECCDC700, &qword_1DD64AE00);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DD390754(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_7(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_0_1()
{

  JUMPOUT(0x1E12B3DA0);
}

void OUTLINED_FUNCTION_18(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_8_2()
{

  JUMPOUT(0x1E12B3DA0);
}

uint64_t OUTLINED_FUNCTION_11(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_1DD63F9D8();
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_8_7()
{

  return sub_1DD640098();
}

uint64_t OUTLINED_FUNCTION_8_14()
{

  return sub_1DD458CB4(v0, type metadata accessor for ContactResolverDESRecord);
}

void OUTLINED_FUNCTION_3_1()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x1E12B3DA0);
}

void OUTLINED_FUNCTION_8_22()
{

  JUMPOUT(0x1E12B2260);
}

uint64_t OUTLINED_FUNCTION_8_23()
{
  *(v1 - 96) = v0;

  return sub_1DD63FCE8();
}

void OUTLINED_FUNCTION_3_2()
{

  sub_1DD3BE2A4();
}

void OUTLINED_FUNCTION_8_26()
{

  JUMPOUT(0x1E12B3DA0);
}

uint64_t OUTLINED_FUNCTION_8_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
  v6 = *(v4 - 112);
  v7 = *(v6 + 24);
  v8 = *(v6 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_32()
{
  *(v1 - 129) = v0;

  return type metadata accessor for DateTimeConstraint();
}

uint64_t OUTLINED_FUNCTION_8_36()
{
  v2 = *(v0 - 776);

  return sub_1DD4C816C(v2, type metadata accessor for HolidayResolutionContext);
}

uint64_t OUTLINED_FUNCTION_8_38()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_40@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

void OUTLINED_FUNCTION_8_43()
{
  v0[41] = 0;
  v0[37] = 0;
  v0[38] = 0;
  v0[35] = 0;
  v0[49] = 0;
  v0[46] = 0;
  v0[47] = 0;
}

uint64_t OUTLINED_FUNCTION_8_45()
{
}

void OUTLINED_FUNCTION_8_48(void *a1)
{

  _os_log_impl(a1, v1, v3, v2, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_8_49()
{
  v1 = *(v0 - 128);
  v2 = *(*(v0 - 120) + 104);
  return *(v0 - 136);
}

BOOL OUTLINED_FUNCTION_37(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_8_51()
{

  return sub_1DD640678();
}

void OUTLINED_FUNCTION_8_52(char a1@<W8>)
{
  *(v4 - 136) = v1;
  *(v4 - 128) = v3;
  *(v4 - 120) = v2;
  *(v4 - 119) = a1;
}

void OUTLINED_FUNCTION_8_53(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_8_55()
{
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
  v3 = *(*(v2 - 144) + 8);
  return *(v2 - 104);
}

uint64_t OUTLINED_FUNCTION_8_57(__n128 a1, uint64_t a2, __n128 *a3)
{
  *a3 = a1;
  a3[1].n128_u64[0] = 0;
  a3[1].n128_u8[8] = 4;

  return swift_willThrow();
}

BOOL OUTLINED_FUNCTION_8_60(os_log_type_t a1)
{
  v4 = *(v1 - 88);

  return os_log_type_enabled(v4, a1);
}

uint64_t OUTLINED_FUNCTION_8_64(uint64_t a1)
{
  *(a1 + 16) = *(v2 - 176);
  result = a1 + v1;
  v4 = *(v2 - 296);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_65()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_8_66()
{
  v2 = v0[16];
  *(v1 - 136) = v0[13];
  *(v1 - 128) = v2;
  v3 = v0[15];
  *(v1 - 120) = v0[14];
  *(v1 - 112) = v3;
}

uint64_t OUTLINED_FUNCTION_8_67()
{

  return sub_1DD640B18();
}

uint64_t OUTLINED_FUNCTION_8_69()
{
  v4 = (*(v0 + 48) + ((v3 << 10) | (16 * __clz(__rbit64(v2)))));
  result = v4[1];
  *v1 = *v4;
  v1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_71()
{
}

uint64_t OUTLINED_FUNCTION_8_77()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_1_3()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_0_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_4()
{

  return swift_once();
}

void OUTLINED_FUNCTION_1_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

size_t OUTLINED_FUNCTION_1_7(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_9()
{

  return sub_1DD63FD48();
}

uint64_t OUTLINED_FUNCTION_1_10()
{
  v3 = *(v0 + 24);
  v4 = *(v2 - 168);
  return v1;
}

uint64_t OUTLINED_FUNCTION_1_11()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_0_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_15()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_1_21()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_79()
{

  return sub_1DD640E28();
}

uint64_t OUTLINED_FUNCTION_1_27(float a1)
{
  *v1 = a1;
  v5 = *(v3 - 160);

  return sub_1DD39565C(v5, v2, (v3 - 96));
}

void OUTLINED_FUNCTION_23()
{
  v2 = *(v0 + 16) + 1;

  sub_1DD3BE2A4();
}

uint64_t OUTLINED_FUNCTION_1_31(unint64_t *a1)
{

  return sub_1DD42A458(a1);
}

void OUTLINED_FUNCTION_1_33()
{
  *(v0 - 224) = 0;
  *(v0 - 216) = 0;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
}

double OUTLINED_FUNCTION_1_35(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  return result;
}

void OUTLINED_FUNCTION_1_37()
{
  v2 = *(v0 + 16) + 1;

  sub_1DD3BF4FC();
}

uint64_t OUTLINED_FUNCTION_1_40()
{

  return sub_1DD472F1C(v0, type metadata accessor for ContactSlotResolutionTask);
}

void OUTLINED_FUNCTION_1_44()
{
  v3 = *(v1 + 56) + 16 * v0;
  *v3 = *(v2 - 120);
  *(v3 + 8) = *(v2 - 108) & 1;
}

uint64_t OUTLINED_FUNCTION_1_45(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{

  return sub_1DD48DFB4(a1, a2, v5, 0, a5, 1, 1, 0);
}

uint64_t OUTLINED_FUNCTION_6()
{

  return swift_allocObject();
}

_WORD *OUTLINED_FUNCTION_1_46(_WORD *result)
{
  *(v2 - 96) = v1;
  *result = 0;
  return result;
}

BOOL OUTLINED_FUNCTION_4_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_1_52(uint64_t a1)
{
  *(v1 + 32) = a1;
  *(v3 - 120) = 0;
  *(v3 - 112) = 0;
  *(v3 - 128) = 0xBFF0000000000000;
  *(v3 - 104) = 0;
  *(v3 - 129) = v2;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_1_53@<X0>(char a1@<W8>)
{
  *(v1 - 88) = a1;

  return sub_1DD640B38();
}

uint64_t OUTLINED_FUNCTION_1_57()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_1_61()
{

  return sub_1DD63FD48();
}

uint64_t OUTLINED_FUNCTION_1_65(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8)
{

  return DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(a1, 0, 0, a4, 12, 0, 0, a8);
}

uint64_t OUTLINED_FUNCTION_1_66()
{

  return sub_1DD640CB8();
}

uint64_t OUTLINED_FUNCTION_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_73()
{

  return sub_1DD640C08();
}

uint64_t OUTLINED_FUNCTION_0_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_74()
{

  return sub_1DD640A78();
}

void OUTLINED_FUNCTION_1_75()
{
  *(v0 + 416) = 0;
  *(v0 + 424) = 0;
  *(v0 + 400) = 0;
  *(v0 + 408) = 0;
  *(v0 + 384) = 0;
  *(v0 + 352) = 0;
  *(v0 + 360) = 0;
  *(v0 + 344) = 0;
  *(v0 + 312) = 0;
  *(v0 + 320) = 0;
  *(v0 + 288) = 0;
  *(v0 + 340) = 0;
  *(v0 + 264) = 0;
  *(v0 + 272) = 0;
  *(v0 + 248) = 0;
  *(v0 + 256) = 0;
  *(v0 + 232) = 0;
  *(v0 + 240) = 0;
}

uint64_t OUTLINED_FUNCTION_1_77(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_1DD39565C(0x73757361676570, 0xE700000000000000, va);
}

void OUTLINED_FUNCTION_1_78(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_1_83()
{

  return sub_1DD640C28();
}

uint64_t OUTLINED_FUNCTION_1_85()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_1_88(__n128 *a1)
{
  result = *(v1 - 208);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_89()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_1_90()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_1_91()
{

  return sub_1DD53CE90();
}

uint64_t OUTLINED_FUNCTION_1_94()
{

  return sub_1DD640B18();
}

__n128 OUTLINED_FUNCTION_1_95@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  result = *v2;
  v5 = *(v2 + 16);
  *v3 = *v2;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(v2 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_97()
{
  v2 = *(v0 - 96);

  return sub_1DD551BFC(v2, type metadata accessor for ContactResolverRunTimeData);
}

uint64_t OUTLINED_FUNCTION_1_102()
{

  return sub_1DD5663DC(v0, type metadata accessor for CancellableStitcher);
}

uint64_t OUTLINED_FUNCTION_11_2()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_1_104()
{
  v4 = *(v2 + 16);
  v5 = *(*(v3 - 120) + 48) + *(v2 + 72) * v1;
  result = v0;
  v7 = *(v3 - 104);
  return result;
}

void OUTLINED_FUNCTION_1_106()
{
  *(v0 - 224) = 0;
  *(v0 - 216) = 0;
  *(v0 - 236) = 0;
  *(v0 - 228) = 0;
  *(v0 - 72) = 0;
}

uint64_t OUTLINED_FUNCTION_1_107()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_113()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_1_116()
{
  v2 = *(*(v1 - 88) + 8);
  result = v0;
  v4 = *(v1 - 72);
  return result;
}

void OUTLINED_FUNCTION_1_118()
{
  v1 = *(v0 - 264);
  v2 = *(v0 - 272);
  v3 = *(v0 - 280);
}

uint64_t OUTLINED_FUNCTION_1_119()
{

  return swift_once();
}

void OUTLINED_FUNCTION_1_120()
{
  v0[14] = 0;
  v0[15] = 0;
  v0[16] = 0;
  v0[13] = 0;
  v0[9] = 0;
  v0[10] = 0;
}

void *OUTLINED_FUNCTION_1_121(void *a1)
{

  return memcpy(a1, v1, 0x80uLL);
}

uint64_t OUTLINED_FUNCTION_1_123()
{
  *v0 = v1;
  v0[1] = v4;
  v6 = *(v3 + 88);
  v8 = *(v2 + v6);
  v7 = *(v2 + v6 + 8);
  v9 = *(v0 + v6 + 8);
}

uint64_t OUTLINED_FUNCTION_1_128()
{
  v2 = **(v1 - 160);
  v3 = *(v1 - 88) + *(v1 - 136);
  return v0;
}

uint64_t OUTLINED_FUNCTION_1_130()
{

  return sub_1DD5FE24C();
}

uint64_t OUTLINED_FUNCTION_1_131()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_1_135()
{

  return DateTime.DateTimeRange.init(at:start:end:duration:interval:definedValue:qualifier:)(0, 0, 0, 0, 0, (v0 - 96), (v0 - 104));
}

uint64_t OUTLINED_FUNCTION_1_136@<X0>(uint64_t a1@<X8>, uint64_t a2, char a3)
{

  return sub_1DD4DE96C(66, 0, 0xE000000000000000, 0xD000000000000077, v3 | 0x8000000000000000, 0x697274536E6F736ALL, 0xEC0000002928676ELL, 14, a1, a3);
}

uint64_t OUTLINED_FUNCTION_1_137()
{
}

uint64_t SiriKitContactResolver.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for ContactResolver();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = ContactResolver.init()();
  *(a1 + 32) = v2;
  *(a1 + 40) = &off_1F58B3CC8;
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for ContactResolver()
{
  result = qword_1EE166618;
  if (!qword_1EE166618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD39229C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void, void))
{
  OUTLINED_FUNCTION_57();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_1_41();
  OUTLINED_FUNCTION_4_98();
  sub_1DD63FE68();

  v8 = os_transaction_create();

  *(v7 + 16) = v8;
  if (qword_1EE166510 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v9 = sub_1DD63F9F8();
  __swift_project_value_buffer(v9, qword_1EE16F0C8);
  v10 = sub_1DD63F9D8();
  v11 = sub_1DD640368();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v20[0] = v18;
    *v12 = 136315138;
    v20[3] = v8;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE00E8, qword_1DD665828);
    v13 = sub_1DD63FE38();
    v15 = a5;
    v16 = sub_1DD39565C(v13, v14, v20);

    *(v12 + 4) = v16;
    a5 = v15;
    _os_log_impl(&dword_1DD38D000, v10, v11, "opening transaction %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  a5(a3, a4);
  sub_1DD39A63C(v7);
}

uint64_t sub_1DD3924B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_57();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t type metadata accessor for BiomeSiriUIProcessor()
{
  result = qword_1EE163770;
  if (!qword_1EE163770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id BiomeSiriUIProcessor.init(siriUIEvent:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1DD63F4C8();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC13SiriInference20BiomeSiriUIProcessor_siriUIEvent] = a1;
  v12 = &v1[OBJC_IVAR____TtC13SiriInference20BiomeSiriUIProcessor_siriTasksEvaluator];
  *(v12 + 3) = &type metadata for SiriTasksEvaluator;
  *(v12 + 4) = &off_1F58C0570;
  v13 = a1;
  sub_1DD63F4B8();
  (*(v7 + 32))(&v1[OBJC_IVAR____TtC13SiriInference20BiomeSiriUIProcessor_intentEventStore], v11, v4);
  v16.receiver = v1;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_init);

  return v14;
}

Swift::Void __swiftcall BiomeSiriUIProcessor.main()()
{
  ObjectType = swift_getObjectType();
  if (([v0 isCancelled] & 1) == 0)
  {
    v2 = sub_1DD6408F8();
    sub_1DD392754(v2, v3, v0, ObjectType);
  }
}

uint64_t ContactResolver.init()()
{
  v1 = OBJC_IVAR____TtC13SiriInference15ContactResolver_cacheOverride;
  v2 = type metadata accessor for ContactResolverCache();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC13SiriInference15ContactResolver____lazy_storage___forcePromptingStrategy) = 2;
  return v0;
}

uint64_t type metadata accessor for ContactResolverCache()
{
  result = qword_1EE166578;
  if (!qword_1EE166578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD392834(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1DD63F308();
  result = OUTLINED_FUNCTION_1_5(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = a4[6];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[8] + 24) = (a2 - 1);
      return result;
    }

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCC98, &unk_1DD64AF10);
    v14 = OUTLINED_FUNCTION_1_5(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v12 = a4[14];
    }

    else
    {
      v16 = type metadata accessor for StringTokenizer();
      v17 = OUTLINED_FUNCTION_1_5(v16);
      if (*(v18 + 84) == a3)
      {
        v11 = v17;
        v12 = a4[15];
      }

      else
      {
        v11 = sub_1DD63D168();
        v12 = a4[18];
      }
    }
  }

  return __swift_storeEnumTagSinglePayload(a1 + v12, a2, a2, v11);
}

uint64_t sub_1DD39298C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[2] = a1;
  v16[1] = a2;
  v17 = sub_1DD63F9C8();
  v2 = OUTLINED_FUNCTION_0(v17);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE16F0C0;
  sub_1DD63F9B8();
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DD643F90;
  v11 = sub_1DD6408F8();
  v13 = v12;
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1DD392BD8();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  OUTLINED_FUNCTION_0_20();
  sub_1DD63F998();

  v14 = v16[3];
  sub_1DD39410C();
  if (v14)
  {

    sub_1DD6404C8();
    OUTLINED_FUNCTION_0_20();
    sub_1DD63F9A8();
    result = (*(v4 + 8))(v8, v17);
    __break(1u);
  }

  else
  {
    sub_1DD6404C8();
    OUTLINED_FUNCTION_0_20();
    sub_1DD63F9A8();
    return (*(v4 + 8))(v8, v17);
  }

  return result;
}

unint64_t sub_1DD392BD8()
{
  result = qword_1EE166400;
  if (!qword_1EE166400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE166400);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_9()
{

  return sub_1DD640CD8();
}

uint64_t OUTLINED_FUNCTION_3_4()
{

  return sub_1DD640B18();
}

uint64_t OUTLINED_FUNCTION_0_18(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8)
{

  return DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(a1, 0, 0, a4, 11, 59, 59, a8);
}

uint64_t OUTLINED_FUNCTION_0_19()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_24(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_25@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_29()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_30()
{

  return sub_1DD6406A8();
}

uint64_t OUTLINED_FUNCTION_0_33()
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_36()
{
  *(v1 + 100) = 1;
  *(v1 + 264) = 0xE000000000000000;
  *(v1 + 104) = v0;
  *(v1 + 112) = 0xE000000000000000;
  *(v1 + 120) = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_4_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_48()
{

  return sub_1DD469E54(v0, type metadata accessor for StitchedContactResolverRecommendation);
}

uint64_t OUTLINED_FUNCTION_0_51()
{

  return sub_1DD472F1C(v0, type metadata accessor for ContactResolverRunTimeData);
}

void OUTLINED_FUNCTION_0_52()
{
  v2 = *(v0 + 16) + 1;

  sub_1DD42BBE8();
}

uint64_t OUTLINED_FUNCTION_0_54()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_56@<X0>(__int16 a1@<W8>)
{
  *(v1 + 88) = a1;
  *(v1 + 96) = 0;
  *(v1 + 104) = a1;
  *(v1 + 112) = 0;
  return v1;
}

uint64_t OUTLINED_FUNCTION_5_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_60(uint64_t result)
{
  *(result + 32) = 1;
  *(result + 40) = 0;
  *(result + 48) = 4;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_61()
{

  return sub_1DD640E28();
}

uint64_t OUTLINED_FUNCTION_0_62()
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 3, v0);
}

void OUTLINED_FUNCTION_0_65(uint64_t a1@<X8>)
{
  *(v1 - 168) = a1;
  v2 = *(v1 - 208);
  *(v1 - 160) = *(v1 - 204);
  *(v1 - 159) = v2;
  *(v1 - 158) = *(v1 - 184);
}

__n128 *OUTLINED_FUNCTION_0_68(__n128 *result, __n128 a2)
{
  result[1] = a2;
  *(v2 - 120) = 0;
  *(v2 - 112) = 0;
  *(v2 - 128) = 0x3FF0000000000000;
  *(v2 - 104) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_71(uint64_t a1@<X8>)
{
  v1 = 1 << *(a1 + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(a1 + 56);
}

uint64_t OUTLINED_FUNCTION_0_72()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_0_74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{

  return DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(6, 0, 0, &a13, 5, 59, 59, &a12);
}

uint64_t OUTLINED_FUNCTION_0_75()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_0_79()
{

  return type metadata accessor for DateTimeConstraint();
}

uint64_t OUTLINED_FUNCTION_0_82()
{

  return sub_1DD63FD58();
}

uint64_t OUTLINED_FUNCTION_0_87(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{

  return DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(5, 0, 0, &a13, 7, 0, 0, &a12);
}

uint64_t OUTLINED_FUNCTION_2_3@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = v2;
  *(a2 + 8) = a1;
  *(a2 + 16) = v3;
}

uint64_t OUTLINED_FUNCTION_0_97()
{

  return sub_1DD640CD8();
}

uint64_t OUTLINED_FUNCTION_0_99(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void OUTLINED_FUNCTION_0_100()
{
  *(v0 + 416) = 0;
  *(v0 + 424) = 0;
  *(v0 + 400) = 0;
  *(v0 + 408) = 0;
  *(v0 + 384) = 0;
  *(v0 + 352) = 0;
  *(v0 + 360) = 0;
  *(v0 + 344) = 0;
  *(v0 + 312) = 0;
  *(v0 + 320) = 0;
  *(v0 + 288) = 0;
  *(v0 + 340) = 0;
  *(v0 + 264) = 0;
  *(v0 + 272) = 0;
  *(v0 + 248) = 0;
  *(v0 + 256) = 0;
  *(v0 + 232) = 0;
  *(v0 + 240) = 0;
  *(v0 + 216) = 0;
  *(v0 + 224) = 0;
  *(v0 + 200) = 0;
  *(v0 + 208) = 0;
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  *(v0 + 160) = 0;
  *(v0 + 168) = 0;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  *(v0 + 456) = 0;
  *(v0 + 464) = 0;
  *(v0 + 120) = 0;
}

uint64_t OUTLINED_FUNCTION_0_101()
{

  return swift_once();
}

void *OUTLINED_FUNCTION_0_102()
{

  return memcpy(&STACK[0x5D8], &STACK[0xDF0], 0xCEuLL);
}

id OUTLINED_FUNCTION_0_104()
{

  return [v1 (v0 + 2207)];
}

uint64_t OUTLINED_FUNCTION_0_108()
{

  return sub_1DD640678();
}

uint64_t OUTLINED_FUNCTION_0_115()
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_119()
{
  *(v2 - 120) = v0;
  *(v2 - 112) = v0 + 56;
  v3 = ~(-1 << *(v0 + 32));
  *(v2 - 104) = v1 + 16;
  *(v2 - 128) = v1 + 8;
}

uint64_t OUTLINED_FUNCTION_0_120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14)
{

  return sub_1DD48DFB4(13, &a14, 2, 3, &a13, 1, 1, 0);
}

void OUTLINED_FUNCTION_0_124()
{
  v2 = *(v0 + 16) + 1;

  sub_1DD3C0A2C();
}

uint64_t OUTLINED_FUNCTION_0_126()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_0_128(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a15)
{
  result = a15;
  a1[1] = a15;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_135()
{
  result = v0;
  v4 = *(v2 - 216);
  *(v2 - 320) = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_136()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_137()
{
  *(v0 + 88) = v1;
  v4 = *(v3 + 8);
  return v2;
}

void OUTLINED_FUNCTION_0_138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = -1 << *(a4 + 32);
  if (-v4 < 64)
  {
    v5 = ~(-1 << -v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a4 + 64);
}

uint64_t OUTLINED_FUNCTION_0_140()
{

  return sub_1DD6406D8();
}

uint64_t OUTLINED_FUNCTION_0_141@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 96) = 0;
  *(v2 - 88) = 0xE000000000000000;
  v4 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  *(v2 - 128) = a1;
  *(v2 - 120) = v1;
  *(v2 - 112) = 0;
  *(v2 - 104) = v4;
}

void OUTLINED_FUNCTION_0_143()
{
  *(v4 - 120) = v3 & 0xC000000000000001;
  *(v4 - 112) = v3;
  *(v4 - 136) = v0;
  *(v4 - 128) = v3 & 0xFFFFFFFFFFFFFF8;
  *(v4 - 152) = v1 + 8;
  *(v4 - 144) = v1 + 16;
  *(v4 - 160) = v2 + 16;
}

uint64_t OUTLINED_FUNCTION_0_144@<X0>(__int16 a1@<W8>)
{
  *(v1 + 64) = 0;
  *(v1 + 72) = a1;
  return v1;
}

uint64_t OUTLINED_FUNCTION_6_1()
{

  return swift_once();
}

void *OUTLINED_FUNCTION_0_148(void *a1)
{

  return memcpy(a1, &STACK[0x368], 0x108uLL);
}

uint64_t OUTLINED_FUNCTION_0_150()
{

  return sub_1DD63E7D8();
}

uint64_t OUTLINED_FUNCTION_0_152()
{

  return swift_allocObject();
}

void sub_1DD393CE4()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF3A0, &qword_1DD644940);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v34 - v4;
  if (qword_1EE166258 != -1)
  {
    swift_once();
  }

  v5 = sub_1DD63F9F8();
  __swift_project_value_buffer(v5, qword_1EE16F0A8);
  v6 = v0;
  v7 = sub_1DD63F9D8();
  v8 = sub_1DD640358();

  if (os_log_type_enabled(v7, v8))
  {
    v34 = v1;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v38 = v10;
    *v9 = 136315138;
    v11 = [*&v6[OBJC_IVAR____TtC13SiriInference20BiomeSiriUIProcessor_siriUIEvent] dismissalReason];
    if (v11)
    {
      v12 = v11;
      v13 = sub_1DD63FDD8();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    v36 = v13;
    v37 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFDF0, &unk_1DD644950);
    v16 = sub_1DD63FE38();
    v18 = sub_1DD39565C(v16, v17, &v38);

    *(v9 + 4) = v18;
    _os_log_impl(&dword_1DD38D000, v7, v8, "biome siriUI event has dismissalReason: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E12B3DA0](v10, -1, -1);
    MEMORY[0x1E12B3DA0](v9, -1, -1);
  }

  else
  {
  }

  v19 = *&v6[OBJC_IVAR____TtC13SiriInference20BiomeSiriUIProcessor_siriUIEvent];
  if (([v19 starting] & 1) == 0)
  {
    v20 = [v19 dismissalReason];
    if (!v20)
    {
      goto LABEL_16;
    }

    v21 = v20;
    v22 = sub_1DD63FDD8();
    v24 = v23;

    if (v22 == 0xD000000000000011 && 0x80000001DD66A760 == v24)
    {
    }

    else
    {
      v26 = sub_1DD640CD8();

      if ((v26 & 1) == 0)
      {
LABEL_16:
        if (sub_1DD3D25D8())
        {
          __swift_project_boxed_opaque_existential_1(&v6[OBJC_IVAR____TtC13SiriInference20BiomeSiriUIProcessor_siriTasksEvaluator], *&v6[OBJC_IVAR____TtC13SiriInference20BiomeSiriUIProcessor_siriTasksEvaluator + 24]);
          v27 = sub_1DD6401F8();
          v28 = v35;
          __swift_storeEnumTagSinglePayload(v35, 1, 1, v27);
          v29 = swift_allocObject();
          *(v29 + 16) = 0;
          *(v29 + 24) = 0;
          sub_1DD5AF090(0, 0, v28, &unk_1DD644948, v29);
        }

        return;
      }
    }
  }

  v30 = v6;
  v31 = sub_1DD63F9D8();
  v32 = sub_1DD640358();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 67109120;
    *(v33 + 4) = [v19 starting];

    _os_log_impl(&dword_1DD38D000, v31, v32, "Skip the siriTasksEvaluation with isStarting: %{BOOL}d", v33, 8u);
    MEMORY[0x1E12B3DA0](v33, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1DD3940D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1DD39410C()
{
  sub_1DD393CE4();
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = v1;
  }

  sub_1DD395950();
  v3 = sub_1DD63FC88();
  sub_1DD3975C0(v2, v0 != 0, v3);

  sub_1DD39A630(v2, v0 != 0);
}

uint64_t OUTLINED_FUNCTION_6_4()
{
  result = *(v0 - 128);
  v2 = *(v0 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_9()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_6_6(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_54()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_62()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_5_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{

  return DateTime.Date.Holiday.init(with:name:calendarSystem:)(0xD000000000000010, a2, a3, a4, &a13);
}

uint64_t OUTLINED_FUNCTION_6_8()
{

  return DateTime.DateTimeRange.init(withStartDateTime:endDateTime:)(v1, v0);
}

void OUTLINED_FUNCTION_6_10()
{
  v2 = *(v0 + 16) + 1;

  sub_1DD3BEE1C();
}

void OUTLINED_FUNCTION_6_12(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  v3 = *(v1 - 320);
  v4 = *(v1 - 424);
}

void OUTLINED_FUNCTION_6_18()
{
  v0[18] = 0;
  v0[19] = 0;
  v0[16] = 0;
  v0[17] = 0;
  v0[32] = 0;
  v0[34] = 0;
}

uint64_t OUTLINED_FUNCTION_6_19@<X0>(char a1@<W8>)
{
  *(v1 - 65) = a1;

  return sub_1DD640C38();
}

void OUTLINED_FUNCTION_6_20()
{
  *(v2 - 200) = v0;
  *(v2 - 192) = v1;
  *(v2 - 232) = MEMORY[0x1E69E9820];
  *(v2 - 224) = v3;
}

uint64_t OUTLINED_FUNCTION_6_25()
{
  v2 = v0[459];
  v3 = v0[457];
  v4 = v0[455];
  v5 = v0[454];
  v6 = v0[452];
  v7 = v0[451];
  v8 = v0[448];
  v9 = v0[446];
  v10 = v0[445];
  v11 = v0[442];
}

void *OUTLINED_FUNCTION_6_26()
{

  return memcpy(&STACK[0x870], v0, 0x2C9uLL);
}

void OUTLINED_FUNCTION_5_3()
{
  *(v0 + 16) = v1;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_6_29()
{

  return sub_1DD640B18();
}

uint64_t OUTLINED_FUNCTION_6_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1DD4901FC(v4, v5 - 176, a3, a4, v5 - 177);
}

uint64_t OUTLINED_FUNCTION_6_34()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_6_37()
{

  sub_1DD5A6BDC(v2, v0, v1);
}

void *OUTLINED_FUNCTION_6_39()
{

  return memcpy(&STACK[0x870], v0, 0x2C9uLL);
}

uint64_t OUTLINED_FUNCTION_6_40()
{

  return swift_once();
}

void OUTLINED_FUNCTION_19_0()
{

  JUMPOUT(0x1E12B3DA0);
}

void OUTLINED_FUNCTION_23_0()
{

  JUMPOUT(0x1E12B3DA0);
}

uint64_t OUTLINED_FUNCTION_26()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_6_42()
{
  v2 = *(v0 + 16) + 1;

  sub_1DD42BD28();
}

uint64_t OUTLINED_FUNCTION_6_46(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

void OUTLINED_FUNCTION_6_48()
{

  sub_1DD4F54CC();
}

void OUTLINED_FUNCTION_6_50()
{
  v0[29] = 1024;
  v0[22] = 3;
  v0[23] = 2;
}

void *OUTLINED_FUNCTION_6_52()
{

  return memcpy(&STACK[0x310], (v0 + 40), 0xA6uLL);
}

uint64_t OUTLINED_FUNCTION_6_54()
{

  return sub_1DD5118B4(v0, v1, 0, v2);
}

BOOL OUTLINED_FUNCTION_6_55(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_6_58(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8)
{

  return DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(a1, a2, a3, a4, a5, 0, 0, a8);
}

void OUTLINED_FUNCTION_6_66()
{
  *(v0 - 224) = 0;
  *(v0 - 216) = 0;
  *(v0 - 236) = 0;
  *(v0 - 228) = 0;
}

uint64_t OUTLINED_FUNCTION_6_68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_1DD39565C(v9, v8, va);
}

uint64_t OUTLINED_FUNCTION_6_69()
{
}

uint64_t OUTLINED_FUNCTION_6_77()
{
  v3 = *(*(v1 - 112) + 8 * v0 + 32);
}

uint64_t OUTLINED_FUNCTION_3_6(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8)
{

  return DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(a1, a2, a3, a4, a5, 59, 59, a8);
}

BOOL OUTLINED_FUNCTION_2_4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_4_6()
{

  JUMPOUT(0x1E12B3DA0);
}

void OUTLINED_FUNCTION_4_8()
{
  v2 = *(v0 + v1 + 32);
  v3 = *(v0 + v1 + 40);
  v4 = *(v0 + v1 + 48);
  v5 = *(v0 + v1 + 56);
  v6 = *(v0 + v1 + 64);
  v7 = *(v0 + v1 + 72);
  v8 = *(v0 + v1 + 80);
  v11 = *(v0 + v1 + 88);
  v10 = *(v0 + v1 + 96);
  v9 = *(v0 + v1 + 104);
}

uint64_t OUTLINED_FUNCTION_4_9()
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_4_10()
{
  *(v1 + 16) = v2;

  return memcpy((v1 + 80 * v3 + 32), (v0 + 240), 0x4AuLL);
}

uint64_t OUTLINED_FUNCTION_4_11()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_4_16()
{
  *(v0 + 88) = v1;
  v4 = *(v3 + 8);
  return v2;
}

uint64_t OUTLINED_FUNCTION_104()
{
  v2 = *(v0 - 184);

  return sub_1DD640AB8();
}

double OUTLINED_FUNCTION_4_17()
{
  result = 0.0;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0;
  *(v0 + 248) = 0xE000000000000000;
  return result;
}

void OUTLINED_FUNCTION_65()
{

  JUMPOUT(0x1E12B2260);
}

uint64_t OUTLINED_FUNCTION_4_20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v3 + a2) = v2;
  *(v3 + *(a1 + 52)) = v5;
  *(v3 + *(a1 + 60)) = v4;
  return *(v6 - 88);
}

void OUTLINED_FUNCTION_4_25()
{
  v0[18] = 0;
  v0[11] = 0;
  v0[12] = 0;
  v0[10] = 0;
}

uint64_t OUTLINED_FUNCTION_4_26()
{
  v2 = *(v0 + 208);
  result = *(v0 + 216);
  v3 = *(result + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_29()
{
  v4 = *(*(v3 - 88) + 48) + *(v1 + 72) * v0;
  v5 = *(v1 + 16);
  return v2;
}

uint64_t OUTLINED_FUNCTION_4_30(uint64_t a1)
{

  return sub_1DD56E250(v1 - 128, a1);
}

uint64_t OUTLINED_FUNCTION_4_31()
{

  return sub_1DD640C08();
}

uint64_t OUTLINED_FUNCTION_4_34(uint64_t a1)
{

  return sub_1DD56E250(v1 - 176, a1);
}

void OUTLINED_FUNCTION_4_36()
{

  JUMPOUT(0x1E12B2260);
}

uint64_t OUTLINED_FUNCTION_17_1()
{

  return sub_1DD640ED8();
}

uint64_t OUTLINED_FUNCTION_4_42()
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_4_51()
{
  v0[20] = 0;
  v0[21] = 0;
  v0[18] = 0;
  v0[19] = 0;
  v0[16] = 0;
  v0[17] = 0;
  v0[57] = 0;
  v0[58] = 0;
  v0[15] = 0;
}

uint64_t OUTLINED_FUNCTION_4_52()
{

  return sub_1DD640C68();
}

BOOL OUTLINED_FUNCTION_4_53(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_4_56()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_57()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_4_59(uint64_t result)
{
  v4 = (v1 + *(result + 20));
  *v4 = v3;
  v4[1] = v2;
  v5 = *(result + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_60()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_4_65()
{
  v2 = *(v0 + 16) + 1;

  sub_1DD3C0098();
}

uint64_t OUTLINED_FUNCTION_4_66()
{

  return __swift_project_value_buffer(v0, v1);
}

uint64_t OUTLINED_FUNCTION_4_67()
{

  return sub_1DD63E118();
}

uint64_t OUTLINED_FUNCTION_4_68()
{

  return sub_1DD640C08();
}

uint64_t OUTLINED_FUNCTION_4_69()
{

  return swift_once();
}

void OUTLINED_FUNCTION_4_77()
{

  sub_1DD3C0A2C();
}

uint64_t OUTLINED_FUNCTION_4_80()
{

  return sub_1DD640C68();
}

uint64_t OUTLINED_FUNCTION_4_85()
{

  return sub_1DD63D0F8();
}

uint64_t OUTLINED_FUNCTION_4_87@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 216);
  return result;
}

void *OUTLINED_FUNCTION_4_88(void *a1)
{

  return memcpy(a1, v1, 0x80uLL);
}

uint64_t OUTLINED_FUNCTION_4_93()
{

  return sub_1DD640688();
}

void OUTLINED_FUNCTION_4_94(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_4_95()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_4_98()
{

  JUMPOUT(0x1E12B2260);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_48_0()
{
  result = *(v0 - 256);
  v3 = *(v1 - 320);
  return result;
}

uint64_t OUTLINED_FUNCTION_48_4()
{

  return sub_1DD640ED8();
}

double OUTLINED_FUNCTION_48_9()
{
  v2 = (v0 + *(v1 + 24));
  v3 = *v2;
  return v2[1];
}

void OUTLINED_FUNCTION_48_11(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_48_13()
{

  return sub_1DD6400F8();
}

uint64_t OUTLINED_FUNCTION_48_14()
{

  return sub_1DD63FD98();
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

unint64_t sub_1DD39555C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1DD39577C(a5, a6);
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
    result = sub_1DD640948();
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

uint64_t sub_1DD39565C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1DD39555C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1DD395720(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t sub_1DD395720(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1DD39577C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DD3957C8(a1, a2);
  sub_1DD395994(&unk_1F58AA7B8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1DD3957C8(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_1DD63FF98())
  {
    result = sub_1DD3958E0(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1DD640898();
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
          result = sub_1DD640948();
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

  return MEMORY[0x1E69E7CC0];
}

void *sub_1DD3958E0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF30, &qword_1DD644228);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unint64_t sub_1DD395950()
{
  result = qword_1EE166470;
  if (!qword_1EE166470)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE166470);
  }

  return result;
}

uint64_t sub_1DD395994(uint64_t result)
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

    result = sub_1DD3C220C(result, v8, 1, v3);
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

BOOL OUTLINED_FUNCTION_9_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_25_0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + 32 * a1;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);

  return sub_1DD3E7AA0(v4, v5, v6, v7);
}

void OUTLINED_FUNCTION_25_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_25_7(uint64_t result)
{
  *(v1 + *(result + 36)) = v2 & 1;
  *(v1 + *(result + 52)) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(v2 - 272);

  return sub_1DD45D624(v4, a2);
}

void OUTLINED_FUNCTION_25_12()
{

  JUMPOUT(0x1E12B3DA0);
}

id OUTLINED_FUNCTION_25_16(uint64_t a1, const char *a2)
{
  v6 = *(v4 - 256);

  return [v6 a2];
}

uint64_t OUTLINED_FUNCTION_25_17(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

__n128 OUTLINED_FUNCTION_25_18@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  v4 = *(v3 + 16);
  *(v2 - 144) = *v3;
  *(v2 - 128) = v4;
  result = *(v3 + 32);
  *(v2 - 112) = result;
  *(v2 - 96) = *(v3 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_19()
{
  v5 = *(v2 + 48) + v1 * v3;
  result = v0;
  v7 = *(v4 - 104);
  return result;
}

void OUTLINED_FUNCTION_25_23()
{

  JUMPOUT(0x1E12B2C10);
}

uint64_t OUTLINED_FUNCTION_25_24()
{

  return sub_1DD640CD8();
}

uint64_t OUTLINED_FUNCTION_25_25(uint64_t a1)
{

  return sub_1DD46D298(a1, v1);
}

uint64_t OUTLINED_FUNCTION_25_26()
{

  return sub_1DD640CD8();
}

uint64_t sub_1DD395D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_25_15();
  v48 = v7;
  if (v8)
  {
    v9 = v6;
    v10 = v5;
    sub_1DD39638C(0, &qword_1EE160148, 0x1E696AEC0);

    sub_1DD6405D8();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1DD396778();
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
    sub_1DD63FE38();
    sub_1DD63FDA8();

    swift_isUniquelyReferenced_nonNull_native();
    v47[0] = a3;
    OUTLINED_FUNCTION_1_79();
    sub_1DD396778();
    v48 = a3;
    type metadata accessor for InferenceError();
    v12 = v10;
    OUTLINED_FUNCTION_5_58();
    v16 = OUTLINED_FUNCTION_14_33(v10, v9, v13, v14, v15, 0x80000001DD66EF30);
    if (qword_1EE166510 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v17 = sub_1DD63F9F8();
    __swift_project_value_buffer(v17, qword_1EE16F0C8);
    sub_1DD4DEB78();
    sub_1DD4DDD28(*(v16 + 16));
    sub_1DD63FDA8();
    OUTLINED_FUNCTION_3_58();

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_19_26();
    OUTLINED_FUNCTION_2_68();
    OUTLINED_FUNCTION_17_31();
    sub_1DD396778();
    v48 = v47[0];
    v18 = *(v16 + 40);
    v19 = *(v16 + 48);
    sub_1DD63FDA8();
    OUTLINED_FUNCTION_3_58();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_19_26();
    OUTLINED_FUNCTION_17_31();
    OUTLINED_FUNCTION_16_34();
    v48 = v47[0];
    v20 = *(v16 + 56);
    v21 = *(v16 + 64);
    sub_1DD63FDA8();
    OUTLINED_FUNCTION_3_58();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_19_26();
    OUTLINED_FUNCTION_4_54();
    OUTLINED_FUNCTION_17_31();
    sub_1DD396778();
    v48 = v47[0];
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    OUTLINED_FUNCTION_3_58();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_19_26();
    OUTLINED_FUNCTION_17_31();
    OUTLINED_FUNCTION_13_33();
    v48 = v47[0];
    v22 = sub_1DD63F9D8();
    v23 = sub_1DD640378();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v47[0] = swift_slowAlloc();
      *v24 = 136446466;
      v25 = OUTLINED_FUNCTION_15_32();
      v27 = sub_1DD39565C(v25, v26, v47);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2080;
      sub_1DD39638C(0, &qword_1EE166470, 0x1E69E58C0);
      OUTLINED_FUNCTION_21_23();

      v28 = sub_1DD63FC68();
      v30 = v29;

      v31 = sub_1DD39565C(v28, v30, v47);

      *(v24 + 14) = v31;
      _os_log_impl(&dword_1DD38D000, v22, v23, "%{public}s failed. payload=%s", v24, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    OUTLINED_FUNCTION_15_32();
    OUTLINED_FUNCTION_8_45();
    OUTLINED_FUNCTION_9_41();
  }

  else
  {

    v32 = [v3 isCancelled];
    if (v32)
    {
      v33 = 0x656C6C65636E6163;
    }

    else
    {
      v33 = 0x6574656C706D6F63;
    }

    if (v32)
    {
      v34 = 0xE900000000000064;
    }

    else
    {
      v34 = 0xE800000000000000;
    }

    if (qword_1EE166510 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v35 = sub_1DD63F9F8();
    __swift_project_value_buffer(v35, qword_1EE16F0C8);

    v36 = sub_1DD63F9D8();
    v37 = sub_1DD640368();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v47[0] = swift_slowAlloc();
      *v38 = 136446722;
      v39 = sub_1DD6408F8();
      v41 = sub_1DD39565C(v39, v40, v47);

      *(v38 + 4) = v41;
      *(v38 + 12) = 2080;
      *(v38 + 14) = sub_1DD39565C(v33, v34, v47);
      *(v38 + 22) = 2080;
      sub_1DD39638C(0, &qword_1EE166470, 0x1E69E58C0);

      v42 = sub_1DD63FC68();
      v44 = v43;

      v45 = sub_1DD39565C(v42, v44, v47);
      OUTLINED_FUNCTION_25_15();

      *(v38 + 24) = v45;
      _os_log_impl(&dword_1DD38D000, v36, v37, "%{public}s finished. outcome=%s payload=%s", v38, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    sub_1DD63FDA8();
    OUTLINED_FUNCTION_21_23();

    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1DD396778();
    swift_endAccess();
    OUTLINED_FUNCTION_15_32();
    OUTLINED_FUNCTION_8_45();
    OUTLINED_FUNCTION_9_41();
  }
}

uint64_t sub_1DD39638C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t OUTLINED_FUNCTION_21_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_21_2()
{

  return sub_1DD3E7BA0(v0, type metadata accessor for Signpost);
}

uint64_t OUTLINED_FUNCTION_21_4()
{

  return sub_1DD4021D8(v0, 1701667182);
}

uint64_t OUTLINED_FUNCTION_64()
{

  return sub_1DD640E48();
}

uint64_t OUTLINED_FUNCTION_21_7()
{

  return sub_1DD640B38();
}

uint64_t OUTLINED_FUNCTION_21_8()
{

  return sub_1DD44774C(v0, type metadata accessor for ContactResolverRunTimeData);
}

void OUTLINED_FUNCTION_21_12()
{

  sub_1DD42B7A0();
}

uint64_t OUTLINED_FUNCTION_21_16(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_1DD63D2D8();
}

void OUTLINED_FUNCTION_21_20(uint64_t a1@<X8>)
{
  v3 = *(v1 + 56);
  v4 = (*(v1 + 48) + 16 * (a1 | (v2 << 6)));
  v5 = *v4;
  v6 = v4[1];
}

void OUTLINED_FUNCTION_21_22(_DWORD *a1@<X8>)
{
  *a1 = v1;
  *(v2 + 3086) = *(v2 + 3142);
  v3 = *(v2 + 168);
  *(v2 + 3088) = *(v2 + 160);
  *(v2 + 3096) = v3;
  LODWORD(v3) = *(v2 + 92);
  *(v2 + 3104) = *(v2 + 88);
  *(v2 + 3105) = v3;
}

uint64_t OUTLINED_FUNCTION_21_26()
{
  v3 = *(v1 + 2 * v0 + 32);
}

uint64_t OUTLINED_FUNCTION_21_30(uint64_t a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return sub_1DD4061B8(v4, a2, v2);
}

uint64_t OUTLINED_FUNCTION_21_32(uint64_t a1, void *a2)
{
  *a2 = v2;

  return swift_willThrow();
}

void *OUTLINED_FUNCTION_21_33()
{

  return memcpy((v0 + 16), v1, 0x108uLL);
}

uint64_t OUTLINED_FUNCTION_21_34()
{
  v2 = *(v0 - 480);

  return sub_1DD63F9D8();
}

__n128 OUTLINED_FUNCTION_21_35(__n128 *a1)
{
  result = *(v1 - 304);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_21_37()
{

  return type metadata accessor for InferenceError();
}

void sub_1DD396778()
{
  OUTLINED_FUNCTION_21_3();
  v2 = v1;
  OUTLINED_FUNCTION_2_16(v1, v3);
  v4 = sub_1DD3978DC();
  OUTLINED_FUNCTION_0_28(v4, v5);
  if (v8)
  {
    __break(1u);
LABEL_14:
    sub_1DD640D58();
    __break(1u);
    return;
  }

  v9 = v6;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC318, &qword_1DD646160);
  OUTLINED_FUNCTION_1_19();
  if (sub_1DD640A08())
  {
    OUTLINED_FUNCTION_19_9();
    OUTLINED_FUNCTION_14_12();
    if (!v12)
    {
      goto LABEL_14;
    }

    v9 = v11;
  }

  if (v10)
  {
    v13 = *(*v0 + 56);
    v14 = *(v13 + 8 * v9);
    *(v13 + 8 * v9) = v2;
    OUTLINED_FUNCTION_25_1();
  }

  else
  {
    v17 = OUTLINED_FUNCTION_7_11();
    sub_1DD3997C4(v17, v18, v19, v20, v21);
    OUTLINED_FUNCTION_25_1();
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1DD396880(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD3968E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_5()
{

  return sub_1DD640CD8();
}

uint64_t OUTLINED_FUNCTION_2_6(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8)
{

  return DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(a1, a2, a3, a4, 11, 59, 59, a8);
}

void OUTLINED_FUNCTION_3_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_2_10()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_2_12()
{
  v2 = *(v1 - 88);
  result = v0;
  v4 = *(v1 - 120);
  return result;
}

void OUTLINED_FUNCTION_2_14()
{

  sub_1DD3BFA3C();
}

uint64_t OUTLINED_FUNCTION_2_15()
{

  return sub_1DD640B18();
}

uint64_t OUTLINED_FUNCTION_2_17()
{

  return sub_1DD6400F8();
}

uint64_t OUTLINED_FUNCTION_26_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_18()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_52_0()
{

  return sub_1DD640BB8();
}

uint64_t OUTLINED_FUNCTION_27()
{

  return sub_1DD640CD8();
}

uint64_t OUTLINED_FUNCTION_2_25()
{
  v2 = *(v0 + 24);

  return sub_1DD467AE8(v2, type metadata accessor for ContactResolverRunTimeData);
}

void OUTLINED_FUNCTION_12_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_2_34()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_37(double a1)
{
  *(v2 - 128) = a1;
  *(v2 - 120) = 0;
  *(v2 - 112) = 0;
  *(v2 - 104) = 0;
  *(v2 - 129) = v1;

  return type metadata accessor for DateTimeConstraint();
}

uint64_t OUTLINED_FUNCTION_2_38()
{
  *(v0 + 32) = 1;
  *(v0 + 40) = 0;
  *(v0 + 48) = 4;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  return v0;
}

uint64_t OUTLINED_FUNCTION_2_39()
{

  return sub_1DD63FD28();
}

void *OUTLINED_FUNCTION_2_41()
{
  result = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v3 = *(v1 - 212);
  v4 = *(v1 - 208);
  return result;
}

void OUTLINED_FUNCTION_2_42(uint64_t a1@<X8>)
{
  v1 = 1 << *(a1 + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(a1 + 56);
}

uint64_t OUTLINED_FUNCTION_2_44()
{
  v1 = *(*(v0 - 208) + 8);
  v3 = *(v0 - 120);
  return *(v0 - 112);
}

uint64_t OUTLINED_FUNCTION_2_45()
{

  return sub_1DD640B78();
}

uint64_t OUTLINED_FUNCTION_2_47()
{

  return sub_1DD640B78();
}

uint64_t OUTLINED_FUNCTION_2_50()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_51(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8)
{

  return DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(a1, 0, 0, a4, 9, 0, 0, a8);
}

uint64_t OUTLINED_FUNCTION_2_53()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_2_57(uint64_t a1, uint64_t a2)
{
  *a2 = 1;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 48) = 2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_2_62()
{
  v2 = *(v0 - 152);

  return sub_1DD640AB8();
}

void OUTLINED_FUNCTION_2_65()
{
  v0[23] = 0;
  v0[24] = 0;
  v0[20] = 0;
  v0[21] = 0;
  v0[18] = 0;
  v0[19] = 0;
  v0[16] = 0;
  v0[17] = 0;
  v0[57] = 0;
  v0[58] = 0;
  v0[15] = 0;
}

void *OUTLINED_FUNCTION_2_67()
{

  return memcpy(&STACK[0xA78], &STACK[0xD40], 0x2C8uLL);
}

uint64_t OUTLINED_FUNCTION_2_72()
{

  return swift_once();
}

void OUTLINED_FUNCTION_2_74(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_2_75()
{
  v1 = *(v0 - 128);
  v2 = *(*(v0 - 120) + 104);
  return *(v0 - 136);
}

uint64_t OUTLINED_FUNCTION_2_76()
{
  result = v0;
  v3 = *(v1 - 248);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_77()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_2_78(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8)
{

  return DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(a1, a2, a3, a4, 1, 0, 0, a8);
}

uint64_t OUTLINED_FUNCTION_2_79()
{
}

uint64_t OUTLINED_FUNCTION_2_81()
{

  return sub_1DD63F9E8();
}

uint64_t OUTLINED_FUNCTION_2_82@<X0>(char a1@<W8>)
{
  *v1 = a1;
  v4 = *(v3 + 8);
  return v2;
}

void *OUTLINED_FUNCTION_2_83(void *a1)
{

  return memcpy(a1, &STACK[0x4C0], 0xA6uLL);
}

uint64_t OUTLINED_FUNCTION_2_84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{

  return sub_1DD3CDD14(a1, &a40, v40, v41);
}

void OUTLINED_FUNCTION_2_85(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_2_86()
{
  result = v1;
  *(v2 - 176) = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_88@<X0>(char a1@<W8>)
{
  *(v1 - 144) = a1;
  result = v1 - 144;
  v3 = *(v1 - 208);
  return result;
}

id OUTLINED_FUNCTION_2_97(uint64_t a1, const char *a2)
{

  return [v4 a2];
}

BOOL OUTLINED_FUNCTION_2_98(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_2_100()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_106@<X0>(char a1@<W8>)
{
  *(v1 - 216) = a1;

  return sub_1DD640AD8();
}

uint64_t OUTLINED_FUNCTION_2_107@<X0>(uint64_t a1@<X8>)
{
  *v1 = v2;
  v1[1] = v4;
  v1[2] = ~v5;
  v1[3] = a1;
  v1[4] = v6;
  return v3;
}

uint64_t OUTLINED_FUNCTION_2_108()
{

  return sub_1DD640B78();
}

void OUTLINED_FUNCTION_2_110()
{

  JUMPOUT(0x1E12B2250);
}

uint64_t OUTLINED_FUNCTION_2_111()
{

  return sub_1DD640CD8();
}

uint64_t OUTLINED_FUNCTION_2_112()
{
  v1 = *(v0 - 88);
  *(v0 - 160) = *(v0 - 104);
  *(v0 - 144) = v1;
  *(v0 - 128) = *(v0 - 72);
  return v0 - 56;
}

uint64_t OUTLINED_FUNCTION_2_114()
{
  v2 = **(v1 - 144);
  result = v0;
  v4 = *(v1 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_23_3()
{
  result = *(v0 - 840);
  v2 = *(v0 - 808);
  return result;
}

uint64_t OUTLINED_FUNCTION_23_15()
{
}

uint64_t OUTLINED_FUNCTION_23_16()
{

  return sub_1DD640698();
}

void OUTLINED_FUNCTION_23_24()
{
  v5 = *(v3 - 232);

  sub_1DD5A6BDC(v0, v2, v1);
}

uint64_t OUTLINED_FUNCTION_23_29()
{
  v2 = *(v0 - 208);
  *(v0 - 288) = *(v0 - 224);
  *(v0 - 272) = v2;
  *(v0 - 256) = *(v0 - 192);
  *(v0 - 240) = *(v0 - 176);

  return sub_1DD4339AC(v0 - 288);
}

uint64_t OUTLINED_FUNCTION_23_30()
{
  v2 = *(v0 - 96);

  return sub_1DD63FD98();
}

uint64_t OUTLINED_FUNCTION_23_31()
{

  return sub_1DD640A08();
}

uint64_t OUTLINED_FUNCTION_23_33()
{

  return sub_1DD63FD98();
}

unint64_t sub_1DD3978DC()
{
  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_17_9();
  OUTLINED_FUNCTION_18_10();
  sub_1DD63FD28();
  sub_1DD640E78();
  v0 = OUTLINED_FUNCTION_5_9();

  return sub_1DD398EC4(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_18_8(uint64_t a1, uint64_t a2)
{
  *(v3 - 104) = a2;
  *(v3 - 96) = v2;
  *(v3 - 88) = a1;

  return sub_1DD63CBB8();
}

uint64_t OUTLINED_FUNCTION_57_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_1DD39565C(v3, v4, a3);
}

void OUTLINED_FUNCTION_18_11()
{
  v0[18] = 0;
  v0[19] = 0;
  v0[16] = 0;
  v0[17] = 0;
}

uint64_t OUTLINED_FUNCTION_18_12()
{

  return sub_1DD640C28();
}

uint64_t OUTLINED_FUNCTION_18_14(uint64_t a1)
{
  result = *(v2 - 88);
  *(a1 + 16) = result;
  *(a1 + 24) = v1;
  return result;
}

void OUTLINED_FUNCTION_18_17()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
}

uint64_t OUTLINED_FUNCTION_18_20()
{
  if (v0 < 0)
  {
    return v0;
  }

  else
  {
    return v0 & 0xFFFFFFFFFFFFFF8;
  }
}

uint64_t OUTLINED_FUNCTION_18_21()
{
  result = *(v0 - 568);
  v2 = *(v0 - 624);
  v3 = *(v0 - 560);
  return result;
}

uint64_t OUTLINED_FUNCTION_18_22()
{
  result = v0;
  v3 = *(v1 - 352);
  return result;
}

uint64_t OUTLINED_FUNCTION_18_24()
{

  return sub_1DD640A68();
}

void OUTLINED_FUNCTION_18_27()
{
  v1 = v0[47];
  v0[310] = v0[46];
  v0[311] = v1;
  v0[312] = v0[49];
  v0[313] = v0[35];
  v2 = v0[38];
  v0[314] = v0[37];
  v0[315] = v2;
}

void *OUTLINED_FUNCTION_18_28(void *a1)
{

  return memcpy(a1, &STACK[0x5D8], 0x2C8uLL);
}

uint64_t OUTLINED_FUNCTION_18_31()
{

  return sub_1DD640438();
}

uint64_t OUTLINED_FUNCTION_18_32()
{
  result = v0 + 56;
  v3 = v1 + 56 + 8 * (((1 << *(v0 + 32)) + 63) >> 6);
  return result;
}

void *OUTLINED_FUNCTION_18_33(void *__src, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char __dst)
{

  return memcpy(&__dst, __src, 0x48uLL);
}

BOOL OUTLINED_FUNCTION_18_35(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_18_36()
{
  result = *(v0 - 440);
  v2 = *(v0 - 416);
  return result;
}

uint64_t OUTLINED_FUNCTION_18_38(unint64_t *a1)
{

  return sub_1DD5DEEBC(a1);
}

uint64_t OUTLINED_FUNCTION_18_41@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_18_42()
{

  return sub_1DD63C7B8();
}

uint64_t OUTLINED_FUNCTION_16_4()
{

  return sub_1DD640CD8();
}

void OUTLINED_FUNCTION_16_6(uint64_t a1@<X8>)
{
  *a1 = v2;
  *(a1 + 8) = v1;
  *(a1 + 16) = 2;
}

uint64_t OUTLINED_FUNCTION_16_8@<X0>(char a1@<W8>)
{
  *(v1 - 216) = a1;

  return sub_1DD640B28();
}

uint64_t OUTLINED_FUNCTION_16_15()
{

  return sub_1DD640008();
}

uint64_t OUTLINED_FUNCTION_16_16()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 232);
  return result;
}

uint64_t OUTLINED_FUNCTION_16_20(uint64_t result)
{
  v6 = *v5;
  *(result + 16) = v4;
  *(result + 24) = v3 & 1;
  *(result + 32) = v2;
  *(result + 40) = v1 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_0()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_16_22()
{
  *(v0 + 16) = v1;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_16_28(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_16_29()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_16_30@<X0>(uint64_t a1@<X8>)
{

  return sub_1DD57634C(0, (a1 + 63) >> 6, v1);
}

uint64_t OUTLINED_FUNCTION_16_33()
{

  return sub_1DD472DF8(&STACK[0xD40], &STACK[0xA78]);
}

void OUTLINED_FUNCTION_16_34()
{

  sub_1DD396778();
}

uint64_t OUTLINED_FUNCTION_16_35()
{
  v2 = *(v0 - 136);

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_16_36(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

void OUTLINED_FUNCTION_16_37()
{
  *(v1 + v0[11]) = 0;
  *(v1 + v0[12]) = 0;
  *(v1 + v0[13]) = 5;
  v2 = v1 + v0[15];
}

uint64_t OUTLINED_FUNCTION_16_39@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 120) = a2 - 32;
  *(v2 - 112) = a1;

  return sub_1DD63FBA8();
}

uint64_t OUTLINED_FUNCTION_16_40@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 - 120);
  v3 = *(v2 + 72);
  *(v1 - 112) = a1 + 1;
  v4 = *(v1 - 136) + v3 * a1;
  v5 = *(v2 + 16);
  result = *(v1 - 88);
  v7 = *(v1 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_16_43@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  a1[7] = a2;
  a1[8] = v2;
  a1[4] = v4;
  a1[5] = v3;
  return v3;
}

id OUTLINED_FUNCTION_16_45(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_16_47()
{

  return swift_task_create();
}

void OUTLINED_FUNCTION_16_49(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_16_52()
{
  result = v0;
  v3 = *(v1 - 160);
  return result;
}

void OUTLINED_FUNCTION_16_53(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

BOOL OUTLINED_FUNCTION_16_54()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_16_55()
{

  return swift_dynamicCastObjCClass();
}

void OUTLINED_FUNCTION_17_4()
{
  v1 = *(v0 - 96);
  *(v0 - 320) = v1;
  v2 = *(v1 + 56);
}

uint64_t OUTLINED_FUNCTION_17_5@<X0>(void (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  return sub_1DD3C20A4(v2 + a2, v4, v3 + a2, a1);
}

uint64_t OUTLINED_FUNCTION_17_6()
{

  return sub_1DD640CD8();
}

uint64_t OUTLINED_FUNCTION_17_8()
{

  return sub_1DD640CD8();
}

uint64_t OUTLINED_FUNCTION_17_9()
{
  v2 = *(v0 + 40);

  return sub_1DD640E28();
}

void OUTLINED_FUNCTION_17_11()
{

  JUMPOUT(0x1E12B2260);
}

uint64_t OUTLINED_FUNCTION_66()
{

  return sub_1DD640E48();
}

void OUTLINED_FUNCTION_17_18()
{
  v4 = v1 + 80 * v2;
  *(v4 + 32) = *(v0 + 264);
  *(v4 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_17_19()
{

  return sub_1DD640B18();
}

uint64_t OUTLINED_FUNCTION_17_27()
{

  return sub_1DD640CD8();
}

void OUTLINED_FUNCTION_17_29()
{
  *(v0 + 2800) = *(v0 + 200);
  *(v0 + 2808) = *(v0 + 216);
  *(v0 + 2816) = *(v0 + 180);
  *(v0 + 2824) = *(v0 + 288);
  *(v0 + 2832) = *(v0 + 104);
}

uint64_t OUTLINED_FUNCTION_17_32()
{

  return sub_1DD63FBD8();
}

uint64_t OUTLINED_FUNCTION_17_38()
{

  return sub_1DD63E7D8();
}

uint64_t OUTLINED_FUNCTION_17_39()
{
  v3 = *(v0 + 56);
  v4 = (*(v0 + 48) + 16 * (__clz(__rbit64(v1)) | (v2 << 6)));
  v6 = *v4;
  return v4[1];
}

uint64_t OUTLINED_FUNCTION_17_40(unint64_t *a1)
{

  return sub_1DD5DEDB8(a1);
}

uint64_t OUTLINED_FUNCTION_17_42(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_17_43()
{

  return sub_1DD6406F8();
}

BOOL OUTLINED_FUNCTION_5_6(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_5_10()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_60()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_5_15()
{
  *(v2 + 16) = v0;

  return sub_1DD3AA4A8((v3 - 168), v2 + 40 * v1 + 32);
}

unint64_t OUTLINED_FUNCTION_5_16(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = *(a5 + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_17()
{

  return sub_1DD640098();
}

uint64_t OUTLINED_FUNCTION_5_19@<X0>(char a1@<W8>)
{
  *(v1 - 96) = a1;
  v3 = *(v1 - 112);

  return sub_1DD640B28();
}

uint64_t OUTLINED_FUNCTION_5_20()
{
  result = type metadata accessor for ContactGroupResolverConfig(0);
  v1 = *(result + 20);
  return result;
}

void OUTLINED_FUNCTION_5_21()
{
  v0[18] = 0;
  v0[19] = 0;
  v0[16] = 0;
  v0[17] = 0;
  v0[32] = 0;
  v0[34] = 0;
  v0[20] = 0;
  v0[21] = 0;
}

uint64_t OUTLINED_FUNCTION_5_23@<X0>(char a1@<W8>)
{
  *(v1 + 520) = a1;
  result = v1 + 520;
  v3 = *(v1 + 320);
  v4 = *(v1 + 336);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v6 - 112) = a6;
  *(v6 - 120) = a4;
  v8 = *(v6 + 32);
  v9 = *(v6 + 16);

  return sub_1DD63D168();
}

double OUTLINED_FUNCTION_5_29@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = v2;
  *(a1 + 56) = v3;
  result = 0.0;
  *(a1 + 64) = *(v1 + 240);
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  v5 = *(v1 + 256);
  return result;
}

void *OUTLINED_FUNCTION_5_33(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char __dst)
{

  return memcpy(&__dst, v59, 0x81uLL);
}

uint64_t OUTLINED_FUNCTION_5_34()
{

  return sub_1DD474708(v0 - 200, v0 - 280);
}

uint64_t OUTLINED_FUNCTION_5_36()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_5_40()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_5_41@<X0>(char a1@<W8>)
{
  *(v2 - 177) = a1;
  v4 = *(v2 - 192);

  return sub_1DD4AE18C((v2 - 176), v1, (v2 - 177), v4);
}

uint64_t OUTLINED_FUNCTION_5_43()
{

  return sub_1DD640C08();
}

uint64_t OUTLINED_FUNCTION_5_44(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{

  return sub_1DD48DFB4(a1, a2, 0, 1, a5, 1, 1, 1);
}

void *OUTLINED_FUNCTION_5_47(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char __dst)
{

  return memcpy(&__dst, v61, 0x81uLL);
}

void OUTLINED_FUNCTION_5_49()
{

  JUMPOUT(0x1E12B2260);
}

uint64_t OUTLINED_FUNCTION_5_50()
{

  return sub_1DD640C08();
}

uint64_t OUTLINED_FUNCTION_5_52()
{

  return sub_1DD640B18();
}

void OUTLINED_FUNCTION_11_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void *OUTLINED_FUNCTION_5_57(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(__dst, a9);

  return memcpy(__dst, &STACK[0x310], 0xA6uLL);
}

void OUTLINED_FUNCTION_32_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 88);

  _os_log_impl(a1, v8, v4, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_5_61()
{

  return sub_1DD39565C(v0, v1, (v2 - 88));
}

uint64_t OUTLINED_FUNCTION_5_63()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

void *OUTLINED_FUNCTION_5_65(void *a1)
{

  return memcpy(a1, v1, 0x108uLL);
}

uint64_t OUTLINED_FUNCTION_5_67()
{
  v1 = **(v0 + 8);
  result = *(v0 + 112);
  v3 = *(v0 + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_68()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 120) | 0x8000000000000000;

  return sub_1DD6404A8();
}

void *OUTLINED_FUNCTION_5_69(void *a1)
{

  return memcpy(a1, &STACK[0x5D8], 0xCEuLL);
}

uint64_t OUTLINED_FUNCTION_5_70()
{

  return sub_1DD5547B4(v0, type metadata accessor for ContactResolverConfig);
}

uint64_t OUTLINED_FUNCTION_5_71()
{

  return sub_1DD640BB8();
}

uint64_t OUTLINED_FUNCTION_5_73()
{
  v3 = *(v0 - 112);
  v2 = *(v0 - 104);
  v4 = *(v0 - 144);

  return sub_1DD640C68();
}

void *OUTLINED_FUNCTION_5_89(void *result)
{
  result[2] = v3;
  result[3] = v1;
  result[4] = v2;
  return result;
}

unint64_t sub_1DD398EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1DD640CD8() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t OUTLINED_FUNCTION_20_5()
{

  return sub_1DD640098();
}

uint64_t OUTLINED_FUNCTION_20_8()
{

  return sub_1DD44774C(v0, type metadata accessor for MLContactRecommender);
}

uint64_t OUTLINED_FUNCTION_20_14()
{
  v3 = *(v1 - 144);
  v4 = *(v1 - 136);
  *(v1 - 144) = 0;
  *(v1 - 136) = 0xE000000000000000;
  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v3 & 0xFFFFFFFFFFFFLL;
  }

  v0[53] = v3;
  v0[54] = v4;
  v0[55] = 0;
  v0[56] = v5;
}

uint64_t OUTLINED_FUNCTION_20_15@<X0>(uint64_t result@<X0>, char a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(result + 56) = v9 & 1;
  *(result + 57) = a2;
  *(result + 64) = a8;
  *(result + 72) = v8;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_18()
{

  return sub_1DD640758();
}

uint64_t OUTLINED_FUNCTION_20_19()
{
  v1 = **(v0 - 384);
  result = *(v0 - 536);
  v3 = *(v0 - 472);
  return result;
}

uint64_t OUTLINED_FUNCTION_20_21(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DD4061B8(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_20_22()
{

  return sub_1DD4E72EC(v0, type metadata accessor for Signpost);
}

void OUTLINED_FUNCTION_20_29(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_10_3()
{

  return sub_1DD640E28();
}

uint64_t OUTLINED_FUNCTION_20_31(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v12 = a1;

  return sub_1DD39565C(v11, v10, &a10);
}

id OUTLINED_FUNCTION_20_33(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_20_36(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

void OUTLINED_FUNCTION_35(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_15_15()
{
  result = v0;
  v3 = *(v1 - 496);
  v4 = *(v1 - 504);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_17()
{
  result = v0;
  v3 = *(v1 - 232);
  return result;
}

void OUTLINED_FUNCTION_15_18()
{

  sub_1DD42B564();
}

uint64_t OUTLINED_FUNCTION_15_20()
{

  return sub_1DD6409F8();
}

uint64_t OUTLINED_FUNCTION_15_21()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_15_26()
{

  return sub_1DD63D198();
}

void OUTLINED_FUNCTION_15_28()
{

  JUMPOUT(0x1E12B2260);
}

uint64_t OUTLINED_FUNCTION_15_30(uint64_t a1)
{

  return sub_1DD4FDD00(a1, &STACK[0x4B0], v1, v2);
}

void OUTLINED_FUNCTION_15_31(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_15_32()
{

  return sub_1DD6408F8();
}

uint64_t OUTLINED_FUNCTION_15_33(uint64_t a1, unint64_t a2)
{

  return sub_1DD5118B4(a1, a2, 0, v2);
}

uint64_t OUTLINED_FUNCTION_15_34()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_15_35(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_15_40()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_42()
{

  return sub_1DD58FC88(v0, type metadata accessor for RunTimeDataRecord);
}

id OUTLINED_FUNCTION_15_43(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_15_46()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = *(v0[8] + 8);
  return v0[10];
}

uint64_t OUTLINED_FUNCTION_15_48()
{
  v3 = *(v1 + 96);
  result = v0;
  v5 = *(v2 - 368);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_49()
{

  return sub_1DD5DE64C(v0, type metadata accessor for StitchedContactResolverRecommendation);
}

uint64_t OUTLINED_FUNCTION_15_50()
{

  return sub_1DD390754(v2 - 160, v0, v1);
}

void OUTLINED_FUNCTION_15_52()
{
  v2 = *(v0 - 200);
  v1 = *(v0 - 192);
  v3 = *(v0 - 240);
  v4 = *(v0 - 184);
}

void OUTLINED_FUNCTION_15_53()
{

  dispatch_sync(v0, v1);
}

void OUTLINED_FUNCTION_15_54(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_15_56(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_15_57()
{

  return swift_arrayInitWithCopy();
}

unint64_t sub_1DD3997C4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

void OUTLINED_FUNCTION_7_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 8u);
}

uint64_t OUTLINED_FUNCTION_7_10()
{
  *(v2 + 16) = v0;
  sub_1DD3AA4A8((v3 - 208), v2 + 40 * v1 + 32);
  return v3 - 168;
}

void OUTLINED_FUNCTION_7_13()
{
  v0[15] = 0xE000000000000000;
  v0[16] = 0;
  v0[13] = 0;
  v0[14] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_7_15()
{
  *(v3 - 72) = v0;
  v4 = *(v1 + 8);
  return v2;
}

uint64_t OUTLINED_FUNCTION_7_19()
{
  v2 = *(v0 - 296);

  return sub_1DD458CB4(v2, type metadata accessor for StitchedContactResolverRequest);
}

uint64_t OUTLINED_FUNCTION_7_20@<X0>(char a1@<W8>)
{
  *(v1 - 136) = a1;
  result = v1 - 136;
  v3 = *(v1 - 232);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_26()
{
  v2 = *(v0 - 96);

  return sub_1DD63FD98();
}

id OUTLINED_FUNCTION_7_30()
{

  return sub_1DD488CD8(v1, v2, 0, 0, 0, v0);
}

void (*OUTLINED_FUNCTION_7_34(uint64_t a1, uint64_t a2, ...))(void *a1)
{
  va_start(va, a2);

  return sub_1DD4B80D0(va, v3, v2);
}

uint64_t OUTLINED_FUNCTION_7_41()
{

  return sub_1DD4F9544(v0, type metadata accessor for LearnedDisambiguation);
}

void OUTLINED_FUNCTION_7_44()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x1E12B3DA0);
}

uint64_t OUTLINED_FUNCTION_7_45()
{

  return sub_1DD6405B8();
}

id OUTLINED_FUNCTION_7_47()
{

  return [v1 (v3 + 2040)];
}

uint64_t OUTLINED_FUNCTION_34_1(uint64_t a1)
{
  *(v1 + 32) = a1;

  return sub_1DD6402C8();
}

uint64_t OUTLINED_FUNCTION_7_50()
{
  v2 = *(v0 - 168);
  v3 = *(v0 - 152);
  v4 = *(v0 - 104);

  return sub_1DD63F9A8();
}

uint64_t OUTLINED_FUNCTION_7_54(__n128 a1, uint64_t a2, __n128 *a3)
{
  *a3 = a1;
  a3[1].n128_u64[0] = 0;
  a3[1].n128_u8[8] = 3;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_7_56()
{
  result = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  return result;
}

void OUTLINED_FUNCTION_7_57(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_7_59()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_60(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_1DD5B618C(v3, a1 + v2, type metadata accessor for Contact);
}

uint64_t OUTLINED_FUNCTION_7_61()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_7_62()
{

  return sub_1DD640CD8();
}

uint64_t OUTLINED_FUNCTION_7_64@<X0>(uint64_t a1@<X8>)
{
  result = *(v1 + ((v3 << 9) | (8 * a1)));
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_69()
{
  *(v2 - 136) = v1;
  *(v2 - 128) = v0;

  return sub_1DD63D168();
}

uint64_t OUTLINED_FUNCTION_7_72()
{
}

uint64_t OUTLINED_FUNCTION_7_73(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_1DD39565C(0xD000000000000024, a2, va);
}

void sub_1DD399F2C()
{
  OUTLINED_FUNCTION_1_41();
  MEMORY[0x1E12B2260]();
  v0 = sub_1DD63FDA8();

  sub_1DD395950();
  v1 = sub_1DD63FC48();
  AnalyticsSendEvent();
}

uint64_t OUTLINED_FUNCTION_9_5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 16);
  return result;
}

void OUTLINED_FUNCTION_9_6()
{
  v1 = *(v0 - 896);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
}

uint64_t OUTLINED_FUNCTION_9_15()
{
  v2 = **(v1 - 440);
  result = v0;
  v4 = *(v1 - 376);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_20(uint64_t a1, float a2)
{
  *a1 = a2;
  *(a1 + 4) = *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_9_21@<X0>(char a1@<W8>)
{
  *(v1 - 88) = a1;

  return sub_1DD640B08();
}

uint64_t OUTLINED_FUNCTION_9_22@<X0>(char a1@<W8>)
{
  *(v1 - 104) = a1;
  *(v1 - 129) = 38;

  return type metadata accessor for DateTimeConstraint();
}

uint64_t OUTLINED_FUNCTION_9_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);

  return sub_1DD63D328();
}

uint64_t OUTLINED_FUNCTION_9_28()
{

  return sub_1DD640758();
}

uint64_t OUTLINED_FUNCTION_9_29()
{
  v1 = **(v0 - 360);
  result = *(v0 - 304);
  v3 = *(v0 - 296);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_30()
{

  return type metadata accessor for DateTimeConstraint();
}

void OUTLINED_FUNCTION_9_32(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t OUTLINED_FUNCTION_9_34()
{

  return sub_1DD6409F8();
}

uint64_t OUTLINED_FUNCTION_9_35()
{
  v3 = *(v1 - 368) + v0;
  v4 = *(v1 - 192);

  return __swift_getEnumTagSinglePayload(v3, 3, v4);
}

void OUTLINED_FUNCTION_9_36(__n128 a1, uint64_t a2, __n128 *a3)
{
  *a3 = a1;
  a3[1].n128_u64[0] = 0;
  a3[1].n128_u8[8] = 3;
}

void OUTLINED_FUNCTION_9_41()
{

  sub_1DD399F2C();
}

uint64_t OUTLINED_FUNCTION_9_43(uint64_t result)
{
  v2 = **(v1 - 272);
  v3 = *(v2 + 16);
  *(v1 - 256) = v2 + 56;
  *(v1 - 248) = result + 32;
  return result;
}

void OUTLINED_FUNCTION_35_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

__n128 OUTLINED_FUNCTION_9_44(uint64_t a1)
{
  result = v1[13];
  *a1 = result.n128_u32[0];
  *(a1 + 4) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_45()
{
  v2 = *(v0 - 128);
}

uint64_t OUTLINED_FUNCTION_9_46()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_47()
{
  v1 = **(v0 + 144);
  result = *(v0 + 240);
  v3 = *(v0 + 272);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_48()
{
  *v0 = *(v2 - 88);
  v3 = *(v1 + 32);
  return *(v2 - 136);
}

void OUTLINED_FUNCTION_9_52()
{

  JUMPOUT(0x1E12B3DA0);
}

uint64_t OUTLINED_FUNCTION_9_55()
{

  return sub_1DD640BC8();
}

uint64_t OUTLINED_FUNCTION_9_59()
{
}

uint64_t OUTLINED_FUNCTION_9_60@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_9_62(uint64_t result)
{
  v8 = *v2;
  v9 = *v1;
  *(result + 73) = 0;
  *(result + 16) = v7;
  *(result + 24) = v6 & 1;
  *(result + 32) = v5;
  *(result + 40) = v4 & 1;
  *(result + 48) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_66(uint64_t a1)
{
  v4 = *(a1 + 32);
  *(a1 + 24) = 0;
  *(a1 + 32) = v1;
}

void sub_1DD39A630(id a1, char a2)
{
  if (a2)
  {
  }
}

void sub_1DD39A63C(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  swift_unknownObjectRelease();
  if (qword_1EE166510 != -1)
  {
    swift_once();
  }

  v3 = sub_1DD63F9F8();
  __swift_project_value_buffer(v3, qword_1EE16F0C8);

  v4 = sub_1DD63F9D8();
  v5 = sub_1DD640368();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    swift_beginAccess();
    v11 = *(a1 + 16);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE00E8, qword_1DD665828);
    v8 = sub_1DD63FE38();
    v10 = sub_1DD39565C(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DD38D000, v4, v5, "closing transaction %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E12B3DA0](v7, -1, -1);
    MEMORY[0x1E12B3DA0](v6, -1, -1);
  }
}

uint64_t sub_1DD39A82C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD3ABDDC();
  *a1 = result;
  return result;
}

void sub_1DD39A854(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1DD39A888();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_1DD39A8C8@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DD39A8FC(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1DD39A968(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 24) = 2 * a2;
  return result;
}

uint64_t sub_1DD39AF90()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD39AFC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_0_11();
  v7 = type metadata accessor for AppRankEvent(v6);
  v8 = OUTLINED_FUNCTION_1_5(v7);
  if (*(v9 + 84) == v3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    v12 = sub_1DD63D078();
    OUTLINED_FUNCTION_1_5(v12);
    if (*(v13 + 84) != v3)
    {
      return OUTLINED_FUNCTION_3_12(*(v4 + *(a3 + 24) + 8));
    }

    v11 = OUTLINED_FUNCTION_2_7();
  }

  return __swift_getEnumTagSinglePayload(v11, v3, v10);
}

uint64_t sub_1DD39B0A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_0_11();
  v9 = type metadata accessor for AppRankEvent(v8);
  v10 = OUTLINED_FUNCTION_1_5(v9);
  if (*(v11 + 84) == a3)
  {
    v12 = v10;
    v13 = v5;
  }

  else
  {
    v14 = sub_1DD63D078();
    result = OUTLINED_FUNCTION_1_5(v14);
    if (*(v16 + 84) != a3)
    {
      *(v5 + *(a4 + 24) + 8) = (v4 - 1);
      return result;
    }

    v13 = OUTLINED_FUNCTION_2_7();
  }

  return __swift_storeEnumTagSinglePayload(v13, v4, v4, v12);
}

uint64_t sub_1DD39B180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_11();
  v6 = sub_1DD63D0F8();
  v7 = OUTLINED_FUNCTION_1_5(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v11 = sub_1DD63D078();
    OUTLINED_FUNCTION_1_5(v11);
    if (*(v12 + 84) != v3)
    {
      return OUTLINED_FUNCTION_3_12(*(v4 + *(a3 + 24)));
    }

    v10 = OUTLINED_FUNCTION_2_7();
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

uint64_t sub_1DD39B254(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_11();
  v8 = sub_1DD63D0F8();
  v9 = OUTLINED_FUNCTION_1_5(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    v13 = sub_1DD63D078();
    result = OUTLINED_FUNCTION_1_5(v13);
    if (*(v15 + 84) != a3)
    {
      *(v5 + *(a4 + 24)) = (v4 - 1);
      return result;
    }

    v12 = OUTLINED_FUNCTION_2_7();
  }

  return __swift_storeEnumTagSinglePayload(v12, v4, v4, v11);
}

char *sub_1DD39B338(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[80 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

char *sub_1DD39B35C(char *result, size_t a2, char *a3)
{
  if (a3 != result || &result[a2] <= a3)
  {
    return OUTLINED_FUNCTION_31_2(result, a3, a2);
  }

  return result;
}

char *sub_1DD39B378(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

uint64_t sub_1DD39B428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for StringTokenizer();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1DD39B4D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for StringTokenizer();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DD39B584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD63D168();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1DD39B63C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DD63D168();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_1DD39B6E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD39B720()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD39B758()
{
  v1 = sub_1DD63D078();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  v8 = (v7 + v4 + v5) & ~v4;
  v9 = (v8 + v7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 24);

  v11 = *(v3 + 8);
  v11(v0 + v5, v1);
  v11(v0 + v8, v1);
  v12 = *(v0 + v9 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v9 + 16, v4 | 7);
}

uint64_t sub_1DD39B84C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD39B884()
{
  v1 = sub_1DD63D078();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 95) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = (v0 + v5);
  v8 = v7[1];

  v9 = v7[2];

  v10 = v7[4];

  v11 = v7[9];

  v12 = v7[10];

  v13 = *(v0 + v6 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 16, v3 | 7);
}

uint64_t sub_1DD39BA00()
{
  OUTLINED_FUNCTION_1_16();
  v0 = sub_1DD63CA48();
  return OUTLINED_FUNCTION_0_24(v0, v1);
}

uint64_t sub_1DD39BA2C()
{
  OUTLINED_FUNCTION_1_16();
  v0 = sub_1DD63CA98();
  return OUTLINED_FUNCTION_0_24(v0, v1);
}

uint64_t sub_1DD39BA58()
{
  OUTLINED_FUNCTION_1_16();
  v0 = sub_1DD63CAB8();
  return OUTLINED_FUNCTION_0_24(v0, v1);
}

uint64_t sub_1DD39BA84()
{
  OUTLINED_FUNCTION_1_16();
  v0 = sub_1DD63CA28();
  return OUTLINED_FUNCTION_0_24(v0, v1);
}

uint64_t sub_1DD39BAB0()
{
  OUTLINED_FUNCTION_1_16();
  v0 = sub_1DD63CA78();
  return OUTLINED_FUNCTION_0_24(v0, v1);
}

uint64_t sub_1DD39BADC()
{
  OUTLINED_FUNCTION_1_16();
  v0 = sub_1DD63CAE8();
  return OUTLINED_FUNCTION_0_24(v0, v1);
}

uint64_t sub_1DD39BB08()
{
  OUTLINED_FUNCTION_1_16();
  v0 = sub_1DD63CB08();
  return OUTLINED_FUNCTION_0_24(v0, v1);
}

uint64_t sub_1DD39BB34()
{
  OUTLINED_FUNCTION_1_16();
  v0 = sub_1DD63CB48();
  return OUTLINED_FUNCTION_0_24(v0, v1);
}

uint64_t sub_1DD39BB60()
{
  OUTLINED_FUNCTION_1_16();
  v0 = sub_1DD63C9C8();
  return OUTLINED_FUNCTION_0_24(v0, v1);
}

uint64_t sub_1DD39BB8C()
{
  OUTLINED_FUNCTION_1_16();
  v0 = sub_1DD63CB28();
  return OUTLINED_FUNCTION_0_24(v0, v1);
}

uint64_t sub_1DD39BBB8()
{
  OUTLINED_FUNCTION_1_16();
  v0 = sub_1DD63C9A8();
  return OUTLINED_FUNCTION_0_24(v0, v1);
}

uint64_t sub_1DD39BBE4()
{
  OUTLINED_FUNCTION_1_16();
  v0 = sub_1DD63C988();
  return OUTLINED_FUNCTION_0_24(v0, v1);
}

uint64_t sub_1DD39BC10()
{
  OUTLINED_FUNCTION_1_16();
  v0 = sub_1DD63C9E8();
  return OUTLINED_FUNCTION_0_24(v0, v1);
}

uint64_t sub_1DD39BC3C()
{
  OUTLINED_FUNCTION_1_16();
  v0 = sub_1DD63C968();
  return OUTLINED_FUNCTION_0_24(v0, v1);
}

uint64_t sub_1DD39BD20(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DD63F4C8();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1DD39BDA8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DD63F4C8();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DD39BE28(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1E0, &qword_1DD645930);
  v7 = OUTLINED_FUNCTION_1_5(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1E8, &qword_1DD645938);
    v12 = OUTLINED_FUNCTION_1_5(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1F0, &qword_1DD645940);
      v16 = OUTLINED_FUNCTION_1_5(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = type metadata accessor for ContactsFrameworkMatcher();
        v19 = OUTLINED_FUNCTION_1_5(v18);
        if (*(v20 + 84) == a2)
        {
          v9 = v19;
          v14 = a3[9];
        }

        else
        {
          v21 = type metadata accessor for ThirdPartyContactMatcher(0);
          v22 = OUTLINED_FUNCTION_1_5(v21);
          if (*(v23 + 84) == a2)
          {
            v9 = v22;
            v14 = a3[10];
          }

          else
          {
            Expander = type metadata accessor for PartialNameQueryExpander();
            v25 = OUTLINED_FUNCTION_1_5(Expander);
            if (*(v26 + 84) == a2)
            {
              v9 = v25;
              v14 = a3[12];
            }

            else
            {
              v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1F8, &qword_1DD645948);
              v28 = OUTLINED_FUNCTION_1_5(v27);
              if (*(v29 + 84) == a2)
              {
                v9 = v28;
                v14 = a3[15];
              }

              else
              {
                v30 = type metadata accessor for AsrE3CandidateExpander();
                v31 = OUTLINED_FUNCTION_1_5(v30);
                if (*(v32 + 84) == a2)
                {
                  v9 = v31;
                  v14 = a3[16];
                }

                else
                {
                  if (a2 == 0x7FFFFFFF)
                  {
                    return OUTLINED_FUNCTION_99(a3[17]);
                  }

                  v9 = type metadata accessor for ContactSignalProviders(0);
                  v14 = a3[18];
                }
              }
            }
          }
        }
      }
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_1DD39C0D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1E0, &qword_1DD645930);
  v9 = OUTLINED_FUNCTION_1_5(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1E8, &qword_1DD645938);
    v14 = OUTLINED_FUNCTION_1_5(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1F0, &qword_1DD645940);
      v18 = OUTLINED_FUNCTION_1_5(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[6];
      }

      else
      {
        v20 = type metadata accessor for ContactsFrameworkMatcher();
        v21 = OUTLINED_FUNCTION_1_5(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[9];
        }

        else
        {
          v23 = type metadata accessor for ThirdPartyContactMatcher(0);
          v24 = OUTLINED_FUNCTION_1_5(v23);
          if (*(v25 + 84) == a3)
          {
            v11 = v24;
            v16 = a4[10];
          }

          else
          {
            Expander = type metadata accessor for PartialNameQueryExpander();
            v27 = OUTLINED_FUNCTION_1_5(Expander);
            if (*(v28 + 84) == a3)
            {
              v11 = v27;
              v16 = a4[12];
            }

            else
            {
              v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1F8, &qword_1DD645948);
              v30 = OUTLINED_FUNCTION_1_5(v29);
              if (*(v31 + 84) == a3)
              {
                v11 = v30;
                v16 = a4[15];
              }

              else
              {
                v32 = type metadata accessor for AsrE3CandidateExpander();
                result = OUTLINED_FUNCTION_1_5(v32);
                if (*(v34 + 84) == a3)
                {
                  v11 = result;
                  v16 = a4[16];
                }

                else
                {
                  if (a3 == 0x7FFFFFFF)
                  {
                    *(a1 + a4[17]) = (a2 - 1);
                    return result;
                  }

                  v11 = type metadata accessor for ContactSignalProviders(0);
                  v16 = a4[18];
                }
              }
            }
          }
        }
      }
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1DD39C38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_14();
  matched = type metadata accessor for RequestMatchSignalProvider();
  v7 = OUTLINED_FUNCTION_1_5(matched);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v11 = type metadata accessor for SiriRemembersContactSignalProvider();
    v12 = OUTLINED_FUNCTION_1_5(v11);
    if (*(v13 + 84) != a2)
    {
      return OUTLINED_FUNCTION_99(*(a3 + 28));
    }

    v9 = v12;
    v10 = v3 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_1DD39C464(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_14();
  matched = type metadata accessor for RequestMatchSignalProvider();
  v9 = OUTLINED_FUNCTION_1_5(matched);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = type metadata accessor for SiriRemembersContactSignalProvider();
    result = OUTLINED_FUNCTION_1_5(v13);
    if (*(v15 + 84) != a3)
    {
      *(v4 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = v4 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1DD39C548()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_57();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

BOOL sub_1DD39C5C0@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD3ECBCC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DD39C5F0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DD408BF8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DD39C638()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_18_9();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1DD39C670@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DD408BF8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DD39C69C()
{
  OUTLINED_FUNCTION_57();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1DD39C7A8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DD39C7E0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_1DD39C848@<X0>(uint64_t *a1@<X8>)
{
  result = City.Prefix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DD39C8AC()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[11];

  v5 = v0[12];

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1DD39C908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DD63D8A8();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1DD39C990(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DD63D8A8();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DD39CC64()
{
  sub_1DD63FD28();
}

uint64_t sub_1DD39CF28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD39CF08();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DD39CFC4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC4F8, &unk_1DD646910);
    v9 = a1 + *(a3 + 76);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1DD39D058(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC4F8, &unk_1DD646910);
    v8 = v5 + *(a4 + 76);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DD39D1F8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC700, &qword_1DD64AE00);
  v3 = OUTLINED_FUNCTION_1_26();

  return __swift_getEnumTagSinglePayload(v3, a2, v4);
}

uint64_t sub_1DD39D248()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC700, &qword_1DD64AE00);
  v0 = OUTLINED_FUNCTION_7_14();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1DD39D294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_43();
  v6 = sub_1DD63D168();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1DD39D33C(uint64_t a1, int a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_14();
  result = sub_1DD63D168();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_7_14();

    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13SiriInference24ContactRelationshipQueryVSg_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DD39D54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ContactResolverConfig(0);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1DD39D5D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ContactResolverConfig(0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DD39D6DC@<X0>(uint64_t *a1@<X8>)
{
  result = ContactResolver.AppCandidateType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DD39DAA0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *(a1 + 16);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    return (v3 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB80, &qword_1DD64A0E0);
    v6 = OUTLINED_FUNCTION_49_6(*(a3 + 120));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_1DD39DB30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB80, &qword_1DD64A0E0);
    v6 = OUTLINED_FUNCTION_49_6(*(a4 + 120));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_1DD39DBB8(unsigned __int8 *a1, int a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v3 = *a1;
    v4 = v3 >= 2;
    v5 = (v3 + 2147483646) & 0x7FFFFFFF;
    if (v4)
    {
      return (v5 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB80, &qword_1DD64A0E0);
    v8 = OUTLINED_FUNCTION_49_6(*(a3 + 36));

    return __swift_getEnumTagSinglePayload(v8, v9, v10);
  }
}

_BYTE *sub_1DD39DC48(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB80, &qword_1DD64A0E0);
    v6 = OUTLINED_FUNCTION_49_6(*(a4 + 36));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_1DD39DE50()
{
  v1 = type metadata accessor for ContactResolverCache();
  OUTLINED_FUNCTION_50(v1);
  v64 = *(v2 + 80);
  v4 = *(v3 + 64);
  v5 = type metadata accessor for ContactResolverConfig(0);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 80);
  v59 = *(v8 + 64);
  v9 = sub_1DD63D078();
  v10 = OUTLINED_FUNCTION_0(v9);
  v62 = v11;
  v63 = v10;
  v58 = *(v11 + 80);
  v61 = *(v12 + 64);
  v13 = *(v0 + 16);

  v57 = (v64 + 24) & ~v64;
  v14 = v0 + v57;
  v15 = *(v0 + v57);

  v16 = *(v0 + v57 + 8);

  v17 = v1[6];
  v18 = sub_1DD63F308();
  OUTLINED_FUNCTION_7(v18);
  (*(v19 + 8))(v0 + v57 + v17);
  __swift_destroy_boxed_opaque_existential_1((v0 + v57 + v1[8]));
  __swift_destroy_boxed_opaque_existential_1((v0 + v57 + v1[9]));
  __swift_destroy_boxed_opaque_existential_1((v0 + v57 + v1[10]));

  v20 = *(v0 + v57 + v1[13]);

  v21 = v0 + v57 + v1[14];
  v22 = type metadata accessor for MLContactRecommender();
  if (!__swift_getEnumTagSinglePayload(v21, 1, v22))
  {
    v23 = *(v21 + 8);

    v24 = *(v22 + 24);
    v25 = sub_1DD63D168();
    OUTLINED_FUNCTION_7(v25);
    (*(v26 + 8))(v21 + v24);
  }

  v60 = v7;
  v27 = v4 + v7;
  v28 = (v14 + v1[15]);
  v29 = *v28;

  v30 = *(type metadata accessor for StringTokenizer() + 20);
  v31 = sub_1DD63D168();
  OUTLINED_FUNCTION_7(v31);
  v33 = *(v32 + 8);
  v33(v28 + v30, v31);
  v34 = (v14 + v1[16]);
  if (*v34)
  {

    v35 = v34[1];
  }

  v36 = *(v14 + v1[17]);

  v33((v14 + v1[18]), v31);
  v37 = *(v14 + v1[19]);

  v38 = *(v14 + v1[20]);

  v39 = *(v14 + v1[21]);

  v40 = *(v14 + v1[22]);

  v41 = *(v14 + v1[23]);

  v42 = (v14 + v1[25]);
  if (v42[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v43 = (v57 + v27) & ~v60;
  v44 = *(v14 + v1[27] + 16);

  v45 = (v14 + v1[30]);
  if (v45[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v45);
  }

  v46 = v0 + v43;
  v47 = *(v0 + v43 + 16);

  v48 = *(v0 + v43 + 32);

  v49 = *(v0 + v43 + 48);

  v33((v0 + v43 + v5[8]), v31);
  v50 = *(v0 + v43 + v5[11]);

  v51 = (v0 + v43 + v5[16]);
  if (*v51)
  {
    v52 = v51[1];
  }

  v53 = (v43 + v59 + v58) & ~v58;
  v54 = *(v46 + v5[17] + 8);

  v55 = *(v46 + v5[20] + 8);

  (*(v62 + 8))(v0 + v53, v63);

  return MEMORY[0x1EEE6BDD0](v0, v53 + v61, v64 | v60 | v58 | 7);
}

uint64_t sub_1DD39E274()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_57();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1DD39E2A8()
{
  if (*(v0 + 16))
  {

    v1 = *(v0 + 24);
  }

  v2 = OUTLINED_FUNCTION_20();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1DD39E2E4()
{
  OUTLINED_FUNCTION_57();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1DD39E318()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_57();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1DD39E34C()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DD39E390()
{
  v1 = sub_1DD63F308();
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1DD39E424()
{
  v1 = sub_1DD63D168();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 24);

  v9 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v4 | 7);
}

uint64_t sub_1DD39E4FC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DD39E53C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = OUTLINED_FUNCTION_20();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

void sub_1DD39E5DC(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  if ((*v2 & a2) != 0)
  {
    *v2 &= ~a2;
  }

  OUTLINED_FUNCTION_44_7(a1);
}

uint64_t sub_1DD39E5FC(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_1DD39E638(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_1DD39E698(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1DD39E6A8()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_18_9();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1DD39E71C(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_3_12(*(a1 + 32));
  }

  sub_1DD63D168();
  v3 = OUTLINED_FUNCTION_17_15();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1DD39E790()
{
  OUTLINED_FUNCTION_48_8();
  if (v2)
  {
    *(v1 + 32) = (v0 - 1);
  }

  else
  {
    sub_1DD63D168();
    v3 = OUTLINED_FUNCTION_17_15();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

uint64_t sub_1DD39E878(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_3_12(*(a1 + 16));
  }

  sub_1DD63D168();
  v3 = OUTLINED_FUNCTION_17_15();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1DD39E8EC()
{
  OUTLINED_FUNCTION_48_8();
  if (v2)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    sub_1DD63D168();
    v3 = OUTLINED_FUNCTION_17_15();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

uint64_t sub_1DD39E9C8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1DD63D0F8();
  v7 = OUTLINED_FUNCTION_1_5(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[5];
LABEL_5:

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }

  v11 = type metadata accessor for PrivatizedContactResolverConfig(0);
  v12 = OUTLINED_FUNCTION_1_5(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a3[6];
    goto LABEL_5;
  }

  v15 = *(a1 + a3[9] + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1DD39EAB8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1DD63D0F8();
  v9 = OUTLINED_FUNCTION_1_5(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a4[5];
  }

  else
  {
    v13 = type metadata accessor for PrivatizedContactResolverConfig(0);
    result = OUTLINED_FUNCTION_1_5(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + a4[9] + 8) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a4[6];
  }

  return __swift_storeEnumTagSinglePayload(a1 + v12, a2, a2, v11);
}

uint64_t sub_1DD39ED68(char a1)
{
  result = 0x65756C6176;
  switch(a1)
  {
    case 1:
      result = 0x736C616E676973;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x7365727574616566;
      break;
    case 4:
      result = 0x65726F6373;
      break;
    case 5:
      result = OUTLINED_FUNCTION_45_7();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD39EE34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD461610();
  *a1 = result;
  return result;
}

uint64_t sub_1DD39EEB4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_3_12(*(a1 + 8));
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  v8 = OUTLINED_FUNCTION_1_5(v7);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = a3[10];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1C8, qword_1DD64ADD0);
    v13 = OUTLINED_FUNCTION_1_5(v12);
    if (*(v14 + 84) == a2)
    {
      v10 = v13;
      v11 = a3[14];
    }

    else
    {
      v15 = sub_1DD63D0F8();
      v16 = OUTLINED_FUNCTION_1_5(v15);
      if (*(v17 + 84) == a2)
      {
        v10 = v16;
        v11 = a3[18];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
        v11 = a3[19];
      }
    }
  }

  return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
}

void sub_1DD39F014()
{
  OUTLINED_FUNCTION_18_7();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
    v7 = OUTLINED_FUNCTION_1_5(v6);
    if (*(v8 + 84) == v5)
    {
      v9 = v7;
      v10 = v4[10];
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1C8, qword_1DD64ADD0);
      v12 = OUTLINED_FUNCTION_1_5(v11);
      if (*(v13 + 84) == v5)
      {
        v9 = v12;
        v10 = v4[14];
      }

      else
      {
        v14 = sub_1DD63D0F8();
        v15 = OUTLINED_FUNCTION_1_5(v14);
        if (*(v16 + 84) == v5)
        {
          v9 = v15;
          v10 = v4[18];
        }

        else
        {
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
          v10 = v4[19];
        }
      }
    }

    __swift_storeEnumTagSinglePayload(v1 + v10, v0, v0, v9);
  }
}

uint64_t sub_1DD39F178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_18_7();
  v6 = type metadata accessor for Contact();
  v7 = OUTLINED_FUNCTION_1_5(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v11 = type metadata accessor for ContactResolver.SignalSet(0);
    OUTLINED_FUNCTION_1_5(v11);
    if (*(v12 + 84) != v3)
    {
      return OUTLINED_FUNCTION_3_12(*(v4 + *(a3 + 24) + 16));
    }

    v10 = OUTLINED_FUNCTION_2_7();
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

uint64_t sub_1DD39F254(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_18_7();
  v8 = type metadata accessor for Contact();
  v9 = OUTLINED_FUNCTION_1_5(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    v13 = type metadata accessor for ContactResolver.SignalSet(0);
    result = OUTLINED_FUNCTION_1_5(v13);
    if (*(v15 + 84) != a3)
    {
      *(v5 + *(a4 + 24) + 16) = (v4 - 1);
      return result;
    }

    v12 = OUTLINED_FUNCTION_2_7();
  }

  return __swift_storeEnumTagSinglePayload(v12, v4, v4, v11);
}

uint64_t sub_1DD39F338(uint64_t a1, uint64_t a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_3_12(*(a1 + 8));
  }

  type metadata accessor for PrivatizedSignalSet(0);
  v4 = OUTLINED_FUNCTION_2_7();

  return __swift_getEnumTagSinglePayload(v4, a2, v5);
}

void sub_1DD39F3B0()
{
  OUTLINED_FUNCTION_18_7();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    type metadata accessor for PrivatizedSignalSet(0);
    v3 = OUTLINED_FUNCTION_2_7();

    __swift_storeEnumTagSinglePayload(v3, v0, v0, v4);
  }
}

uint64_t sub_1DD39F59C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContactResolverConfig(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1DD39F658(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_14();
  result = type metadata accessor for ContactResolverConfig(v8);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20) + 24) = a2;
  }

  return result;
}

uint64_t sub_1DD39F700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for StringTokenizer();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1DD39F788(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for StringTokenizer();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DD39F874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ContactResolverConfig(0);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1DD39F8FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ContactResolverConfig(0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DD39FC6C@<X0>(uint64_t *a1@<X8>)
{
  result = Country.Prefix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DD39FCE8@<X0>(uint64_t *a1@<X8>)
{
  result = County.Prefix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DD39FDA0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[8];

  v2 = v0[14];

  v3 = v0[16];

  return MEMORY[0x1EEE6BDD0](v0, 136, 7);
}

uint64_t sub_1DD39FDF0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  v2 = *(v0 + 80);

  v3 = *(v0 + 128);

  v4 = *(v0 + 144);

  return MEMORY[0x1EEE6BDD0](v0, 160, 7);
}

uint64_t sub_1DD3A0164(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD63D218();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 4)
  {
    return EnumTagSinglePayload - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD3A01AC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1DD63D218();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_1DD3A051C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD3A07DC(char a1)
{
  if (!a1)
  {
    return 0x726F7272457369;
  }

  if (a1 == 1)
  {
    return 0x6E6F6973726576;
  }

  return 0x6573557942746573;
}

uint64_t sub_1DD3A0840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD4A6378(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD3A0908()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD3A0940()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DD3A0BA0()
{
  OUTLINED_FUNCTION_57();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1DD3A0BD4()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_57();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1DD3A0C08()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DD3A0C68()
{
  v1 = type metadata accessor for LearningResult();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = v0 + v3;
  v8 = type metadata accessor for LearnedDisambiguation();
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v8))
  {
    v9 = *(v7 + 8);

    v10 = *(v7 + 24);

    v11 = v8[6];
    v12 = sub_1DD63D078();
    OUTLINED_FUNCTION_7(v12);
    (*(v13 + 8))(v7 + v11);
    v14 = *(v7 + v8[7]);

    v15 = *(v7 + v8[9] + 8);
  }

  v16 = *(v7 + *(v1 + 20) + 8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DD3A0DBC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD3A0E40()
{
  v1 = *(v0 + 16);

  v2 = OUTLINED_FUNCTION_8_34();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1DD3A0E70()
{
  v1 = OUTLINED_FUNCTION_8_34();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1DD3A0EA0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OUTLINED_FUNCTION_20();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1DD3A0F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1DD3A0FB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DD3A106C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      v5 = ((v4 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v5 = -2;
    }

    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for InferenceEuclidDebugMetrics(0);
    v10 = &a1[*(a3 + 20)];

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

_BYTE *sub_1DD3A1108(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = type metadata accessor for InferenceEuclidDebugMetrics(0);
    v8 = &v5[*(a4 + 20)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DD3A11C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD63D168();
  v7 = OUTLINED_FUNCTION_1_5(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = type metadata accessor for StringTokenizer();
  v12 = OUTLINED_FUNCTION_1_5(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 24));
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1DD3A12B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1DD63D168();
  v9 = OUTLINED_FUNCTION_1_5(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for StringTokenizer();
    result = OUTLINED_FUNCTION_1_5(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1DD3A13A0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD3A13D8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DD3A15F8(unsigned __int8 *a1, uint64_t a2, int *a3)
{
  if (a2 == 244)
  {
    v4 = *a1;
    if (v4 >= 0xC)
    {
      return v4 - 11;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1DD63D078();
    v9 = OUTLINED_FUNCTION_1_5(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      v13 = sub_1DD63D168();
      v14 = OUTLINED_FUNCTION_1_5(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[6];
      }

      else
      {
        v16 = sub_1DD63D328();
        v17 = OUTLINED_FUNCTION_1_5(v16);
        if (*(v18 + 84) == a2)
        {
          v11 = v17;
          v12 = a3[7];
        }

        else
        {
          v11 = sub_1DD63D2D8();
          v12 = a3[8];
        }
      }
    }

    return __swift_getEnumTagSinglePayload(&a1[v12], a2, v11);
  }
}

_BYTE *sub_1DD3A1738(_BYTE *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 244)
  {
    *result = a2 + 11;
  }

  else
  {
    v8 = sub_1DD63D078();
    v9 = OUTLINED_FUNCTION_1_5(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[5];
    }

    else
    {
      v13 = sub_1DD63D168();
      v14 = OUTLINED_FUNCTION_1_5(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[6];
      }

      else
      {
        v16 = sub_1DD63D328();
        v17 = OUTLINED_FUNCTION_1_5(v16);
        if (*(v18 + 84) == a3)
        {
          v11 = v17;
          v12 = a4[7];
        }

        else
        {
          v11 = sub_1DD63D2D8();
          v12 = a4[8];
        }
      }
    }

    return __swift_storeEnumTagSinglePayload(&v5[v12], a2, a2, v11);
  }

  return result;
}

uint64_t sub_1DD3A18E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD63D078();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1DD3A199C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DD63D078();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DD3A1C88()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD3A1CC0()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DD3A1D74()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DD3A1DC4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DD3A1E04(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for StringTokenizer();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1DD3A1E8C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for StringTokenizer();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DD3A20D8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD3A2110()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_18_9();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1DD3A216C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD63D078();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1DD3A21B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD63D078();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1DD3A2264()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[10];

  v6 = v0[12];

  v7 = v0[14];

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1DD3A22F8()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1DD3A2358(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DD63D078();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1DD3A23E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DD63D078();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DD3A2460()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDF20, &qword_1DD655818);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DD3A24EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD63F308();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1DD3A259C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DD63F308();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DD3A2648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD880, &qword_1DD652070);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1DD3A2710(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD880, &qword_1DD652070);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1DD3A2948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD63D168();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_1DD63D328();
    v8 = a1 + *(a3 + 28);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1DD3A29E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1DD63D168();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_1DD63D328();
    v10 = a1 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1DD3A2B00()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_57();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1DD3A2B34()
{
  OUTLINED_FUNCTION_57();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1DD3A2B68()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DD3A2C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for LocationResolutionContext();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1DD3A2C88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LocationResolutionContext();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DD3A2D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LocationResolutionContext();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = type metadata accessor for CandidateContactGenerator(0);
    v8 = a1 + *(a3 + 36);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 24) + 24);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1DD3A2E04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LocationResolutionContext();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v9 = type metadata accessor for CandidateContactGenerator(0);
    v10 = a1 + *(a4 + 36);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1DD3A2FD4()
{
  v1 = v0[6];

  v2 = v0[9];

  v3 = v0[12];

  if (v0[14])
  {

    v4 = v0[16];
  }

  if (v0[18] != 1)
  {

    v5 = v0[20];

    v6 = v0[22];

    if (v0[25] != 1)
    {

      v7 = v0[28];

      if (v0[30] != 1)
      {

        v8 = v0[33];

        v9 = v0[36];

        v10 = v0[39];

        v11 = v0[42];

        v12 = v0[45];

        v13 = v0[48];
      }
    }
  }

  v14 = v0[51];

  if (v0[54] != 1)
  {

    v15 = v0[56];

    v16 = v0[59];

    v17 = v0[61];

    v18 = v0[64];
  }

  if (v0[67] != 1)
  {

    v19 = v0[70];

    v20 = v0[73];

    v21 = v0[76];
  }

  v22 = v0[79];

  v23 = v0[82];

  v24 = v0[84];

  v25 = v0[87];

  v26 = v0[90];
  if (v26 >> 60 != 15)
  {
    sub_1DD3AD790(v0[89], v26);
  }

  return MEMORY[0x1EEE6BDD0](v0, 728, 7);
}

uint64_t sub_1DD3A3140()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD3A3188()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD3A31C0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD3A3204()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1DD3A328C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD3A32CC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD3A338C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DD63D168();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1DD3A3414(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1DD63D168();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DD3A3510()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD3A357C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DD63D168();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1DD3A3604(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DD63D168();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DD3A3DDC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD3A3E14()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD3A3E54()
{
  v1 = sub_1DD63D558();
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DD3A3ED4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DD3A3F2C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD3A3FF4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD3A403C@<X0>(uint64_t *a1@<X8>)
{
  result = NeighborhoodPlaceName.Prefix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DD3A4E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD63D168();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1DD3A4F18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DD63D168();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_1DD3A4FC0()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[10];

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1DD3A5018()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[10];

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1DD3A50E4@<X0>(uint64_t *a1@<X8>)
{
  result = OccupantName.Prefix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DD3A54D8()
{
  v1 = sub_1DD63F9F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1DD3A5578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD63F9C8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1DD3A5624(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DD63F9C8();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DD3A56CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StringTokenizer();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1DD3A5714(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StringTokenizer();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1DD3A5760()
{
  OUTLINED_FUNCTION_57();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1DD3A5794()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_57();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1DD3A57C8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DD3A589C@<X0>(uint64_t *a1@<X8>)
{
  result = PersonPlaceName.Prefix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DD3A5974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF78, &unk_1DD644440);
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1DD3A5A08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF78, &unk_1DD644440);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DD3A5A94()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DD3A5AE8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD3A5B28()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD3A5D74()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DD3A5ED0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE510, &qword_1DD65BA20);
    v11 = &a1[*(a3 + 36)];

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

_BYTE *sub_1DD3A5F64(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE510, &qword_1DD65BA20);
    v8 = &v5[*(a4 + 36)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DD3A6014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE510, &qword_1DD65BA20);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 96);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 144) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1DD3A60D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE510, &qword_1DD65BA20);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 96);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 144) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DD3A64B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for StringTokenizer();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1DD3A653C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for StringTokenizer();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DD3A6618(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14();
  v4 = type metadata accessor for StringTokenizer();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_1DD3A665C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14();
  v4 = type metadata accessor for StringTokenizer();

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v4);
}

BOOL sub_1DD3A66B8(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_1DD3A6800()
{
  v1 = OUTLINED_FUNCTION_7_56();
  sub_1DD589308(v1, v2, v3, v4, v5, v6, v7, v8, *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));

  return MEMORY[0x1EEE6BDD0](v0, 145, 7);
}

uint64_t sub_1DD3A6860()
{
  v1 = OUTLINED_FUNCTION_7_56();
  v43 = *(v0 + 96);
  v44 = *(v0 + 80);
  v41 = *(v0 + 128);
  v42 = *(v0 + 112);
  v39 = *(v0 + 160);
  v40 = *(v0 + 144);
  v37 = *(v0 + 192);
  v38 = *(v0 + 176);
  v2 = *(v0 + 512);
  v3 = *(v0 + 528);
  v4 = *(v0 + 544);
  v5 = *(v0 + 560);
  v6 = *(v0 + 576);
  v33 = *(v0 + 688);
  v34 = *(v0 + 704);
  v31 = *(v0 + 656);
  v32 = *(v0 + 672);
  v29 = *(v0 + 624);
  v30 = *(v0 + 640);
  v27 = *(v0 + 592);
  v28 = *(v0 + 608);
  v36 = *(v0 + 728);
  v35 = *(v0 + 720);
  v26 = *(v0 + 496);
  v24 = *(v0 + 464);
  v25 = *(v0 + 480);
  v22 = *(v0 + 432);
  v23 = *(v0 + 448);
  v20 = *(v0 + 400);
  v21 = *(v0 + 416);
  v18 = *(v0 + 368);
  v19 = *(v0 + 384);
  v16 = *(v0 + 336);
  v17 = *(v0 + 352);
  v15 = *(v0 + 304);
  sub_1DD5893D4(v1, v7, v8, v9, v10, v11, v12, v13, *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), *(v0 + 288), *(v0 + 296), v15, *(&v15 + 1), *(v0 + 320), *(v0 + 328), v16, *(&v16 + 1), v17, *(&v17 + 1), v18, *(&v18 + 1), v19, *(&v19 + 1), v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, *(&v23 + 1), v24, *(&v24 + 1), v25, *(&v25 + 1), v26, *(&v26 + 1), *(v0 + 512));

  return MEMORY[0x1EEE6BDD0](v0, 729, 7);
}

uint64_t sub_1DD3A69E0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DD3A6A20()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DD3A6A90(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DD63D078();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1DD3A6B18(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DD63D078();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DD3A6B98(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for PrivatizedContactResolverConfig(0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_1DD63D078();
      v10 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1DD3A6C64(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for PrivatizedContactResolverConfig(0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_1DD63D078();
      v10 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1DD3A6DA0()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_18_9();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1DD3A6DE4()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[10];

  v6 = v0[12];

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1DD3A6E44()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  v5 = v0[11];

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1DD3A6E9C()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_18_9();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1DD3A6ED0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD3A6F1C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD3A6F54()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD3A6F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD63F188();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1DD3A7038(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DD63F188();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DD3A70E0()
{
  v1 = (type metadata accessor for SELFLoggingService() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_1DD63D0F8();
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = v8;
  v10 = *(v7 + 80);
  v11 = (v4 + v10 + 16) & ~v10;
  v12 = *(v9 + 64);
  v13 = v2 | v10;
  v14 = sub_1DD63F188();
  (*(*(v14 - 8) + 8))(v0 + v3, v14);

  v15 = *(v0 + v4 + 8);

  (*(v7 + 8))(v0 + v11, v5);

  return MEMORY[0x1EEE6BDD0](v0, v11 + v12, v13 | 7);
}

uint64_t sub_1DD3A72BC(char a1)
{
  if (!a1)
  {
    return 0x6E6F6973726576;
  }

  if (a1 == 1)
  {
    return 0x726F7272457369;
  }

  return 0x65756C6176;
}

uint64_t sub_1DD3A7318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD5A9A88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD3A73E0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DD3A74A4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD3A74EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD63F308();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1DD3A75A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DD63F308();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_1DD3A76C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD63D2D8();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 4)
    {
      return v8 - 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1DD3A776C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DD63D2D8();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  return result;
}

uint64_t sub_1DD3A783C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD3A7A6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCE8, &unk_1DD64AF90);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1DD3A7AC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCE8, &unk_1DD64AF90);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1DD3A7B4C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD3A7B84()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD3A7CB0@<X0>(uint64_t *a1@<X8>)
{
  result = State.Prefix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DD3A7D28()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DD3A7D80(char a1)
{
  if (a1)
  {
    return 0x6156656C646E6168;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1DD3A7DB4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD3A7DEC()
{
  v1 = sub_1DD63D078();
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1DD3A7E80(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DD63D078();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1DD3A7F08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DD63D078();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DD3A8050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_0_11();
  v7 = type metadata accessor for PrivatizedContactResolverConfig(v6);
  v8 = OUTLINED_FUNCTION_1_5(v7);
  if (*(v9 + 84) == v3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    v12 = sub_1DD63D078();
    v13 = OUTLINED_FUNCTION_1_5(v12);
    if (*(v14 + 84) != v3)
    {
      return OUTLINED_FUNCTION_3_12(*(v4 + *(a3 + 24)));
    }

    v10 = v13;
    v11 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v11, v3, v10);
}

uint64_t sub_1DD3A8128(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_0_11();
  v9 = type metadata accessor for PrivatizedContactResolverConfig(v8);
  v10 = OUTLINED_FUNCTION_1_5(v9);
  if (*(v11 + 84) == a3)
  {
    v12 = v10;
    v13 = v5;
  }

  else
  {
    v14 = sub_1DD63D078();
    result = OUTLINED_FUNCTION_1_5(v14);
    if (*(v16 + 84) != a3)
    {
      *(v5 + *(a4 + 24)) = (v4 - 1);
      return result;
    }

    v12 = result;
    v13 = v5 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v13, v4, v4, v12);
}

uint64_t sub_1DD3A8208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContactResolverRunTimeData(0);
  v7 = OUTLINED_FUNCTION_1_5(v6);
  if (*(v8 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 <= 2)
    {
      return 0;
    }

    else
    {
      return v10 ^ 0xFF;
    }
  }
}

uint64_t sub_1DD3A82B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_0_11();
  v9 = type metadata accessor for ContactResolverRunTimeData(v8);
  result = OUTLINED_FUNCTION_1_5(v9);
  if (*(v11 + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v5, v4, v4, result);
  }

  else
  {
    *(v5 + *(a4 + 20) + 24) = ~v4;
  }

  return result;
}

uint64_t sub_1DD3A8350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_3_12(*(a1 + 8));
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B0, &unk_1DD6454F0);
  v8 = a1 + *(a3 + 28);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1DD3A83D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B0, &unk_1DD6454F0);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DD3A8BBC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = sub_1DD63D168();
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void *sub_1DD3A8C50(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_1DD63D168();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DD3A8CD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD63D168();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1DD3A8D18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD63D168();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1DD3A8D8C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DD3A8DCC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 43, 7);
}

uint64_t sub_1DD3A8E04()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DD3A8E44()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DD3A8E94()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[10];

  v5 = v0[12];

  v6 = v0[14];

  v7 = v0[16];

  v8 = v0[18];

  return MEMORY[0x1EEE6BDD0](v0, 153, 7);
}

uint64_t sub_1DD3A8F04()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  return MEMORY[0x1EEE6BDD0](v0, 97, 7);
}

uint64_t sub_1DD3A8F5C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DD63D078();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1DD3A8FE4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DD63D078();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DD3A9090()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD3A90F8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TaskMetadata();
  v7 = OUTLINED_FUNCTION_1_5(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC98, &unk_1DD6639C0);
    v14 = OUTLINED_FUNCTION_1_5(v13);
    if (*(v15 + 84) == a2)
    {
      v9 = v14;
      v16 = a3[6];
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC88, &unk_1DD6637F0);
      v16 = a3[7];
    }

    v10 = a1 + v16;
    goto LABEL_11;
  }

  v11 = *(a1 + a3[5]);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

uint64_t sub_1DD3A921C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for TaskMetadata();
  result = OUTLINED_FUNCTION_1_5(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5]) = (a2 - 1);
      return result;
    }

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC98, &unk_1DD6639C0);
    v14 = OUTLINED_FUNCTION_1_5(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[6];
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC88, &unk_1DD6637F0);
      v16 = a4[7];
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1DD3A9360()
{
  v2 = (type metadata accessor for TaskSuccessEvaluator() - 8);
  v45 = *(*v2 + 80);
  v3 = (v45 + 16) & ~v45;
  v37 = (*(*v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = type metadata accessor for TaskSuccessMetricsPublisher();
  OUTLINED_FUNCTION_2_113(v4);
  v42 = *(v5 + 80);
  v41 = *(v6 + 64);
  v7 = type metadata accessor for TaskMetadata();
  OUTLINED_FUNCTION_0(v7);
  v39 = *(v8 + 80);
  v43 = *(v9 + 64);
  v10 = v1 + v3;
  v11 = v1;
  v12 = *(v10 + 8);

  v13 = *(v10 + 24);

  v44 = v7;
  v14 = *(v7 + 24);
  v15 = sub_1DD63D078();
  OUTLINED_FUNCTION_7(v15);
  v40 = v17;
  v38 = *(v16 + 8);
  v38(v10 + v14);
  v18 = *(v10 + v2[7]);

  v19 = v2[8];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC98, &unk_1DD6639C0);
  OUTLINED_FUNCTION_7(v20);
  v22 = *(v21 + 8);
  v22(v10 + v19, v20);
  v23 = v2[9];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC88, &unk_1DD6637F0);
  OUTLINED_FUNCTION_7(v24);
  v26 = *(v25 + 8);
  v27 = v10 + v23;
  v28 = v11;
  v26(v27, v24);

  v29 = (v37 + v42 + 8) & ~v42;
  v22(v28 + v29, v20);
  v26(v28 + v29 + v0[5], v24);
  __swift_destroy_boxed_opaque_existential_1((v28 + v29 + v0[6]));
  v30 = (v28 + v29 + v0[7]);
  if (*v30)
  {
    v31 = v30[1];
  }

  v32 = (v29 + v41 + v39) & ~v39;
  v33 = *(v28 + v29 + v0[8]);
  swift_unknownObjectRelease();
  v34 = *(v28 + v32 + 8);

  v35 = *(v28 + v32 + 24);

  (v38)(v28 + v32 + *(v44 + 24), v40);

  return MEMORY[0x1EEE6BDD0](v28, v32 + v43, v45 | v42 | v39 | 7);
}

uint64_t sub_1DD3A9694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC98, &unk_1DD6639C0);
  v7 = OUTLINED_FUNCTION_1_5(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC88, &unk_1DD6637F0);
  v12 = OUTLINED_FUNCTION_1_5(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 24) + 24);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1DD3A979C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC98, &unk_1DD6639C0);
  v9 = OUTLINED_FUNCTION_1_5(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC88, &unk_1DD6637F0);
    result = OUTLINED_FUNCTION_1_5(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1DD3A98DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_0_11();
  v7 = type metadata accessor for SiriVocabularySearcher(v6);
  v8 = OUTLINED_FUNCTION_1_5(v7);
  if (*(v9 + 84) == v3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    v10 = type metadata accessor for StringTokenizer();
    v11 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v11, v3, v10);
}

uint64_t sub_1DD3A996C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_0_11();
  v9 = type metadata accessor for SiriVocabularySearcher(v8);
  v10 = OUTLINED_FUNCTION_1_5(v9);
  if (*(v11 + 84) == a3)
  {
    v12 = v10;
    v13 = v5;
  }

  else
  {
    v12 = type metadata accessor for StringTokenizer();
    v13 = v5 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v13, v4, v4, v12);
}

uint64_t sub_1DD3A9A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD63D168();
  v7 = OUTLINED_FUNCTION_1_5(v6);
  if (*(v8 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v7);
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

uint64_t sub_1DD3A9AAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_11();
  v8 = sub_1DD63D168();
  result = OUTLINED_FUNCTION_1_5(v8);
  if (*(v10 + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v5, v4, v4, result);
  }

  else
  {
    *(v5 + *(a4 + 20)) = (v4 - 1);
  }

  return result;
}

uint64_t sub_1DD3A9BB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DD5FB5D4();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DD3A9C9C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD3A9CD4()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_10_1();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1DD3A9DE0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DD3A9F70(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14();
  v4 = type metadata accessor for StringTokenizer();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_1DD3A9FB4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14();
  v4 = type metadata accessor for StringTokenizer();

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v4);
}

uint64_t sub_1DD3A9FFC()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_57();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1DD3AA030()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[12];

  v6 = v0[14];

  v7 = v0[16];

  v8 = v0[18];

  v9 = v0[20];

  v10 = v0[22];

  if (v0[25])
  {
    v11 = v0[23];

    v12 = v0[25];
  }

  if (v0[28])
  {

    v13 = v0[29];

    v14 = v0[31];
  }

  v15 = v0[32];

  v16 = v0[34];

  return MEMORY[0x1EEE6BDD0](v0, 280, 7);
}

uint64_t sub_1DD3AA104()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_18_9();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1DD3AA2A4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD3AA2E4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD3AA3A4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

id sub_1DD3AA3E4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isFinished];
  *a2 = result;
  return result;
}

uint64_t sub_1DD3AA418()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD3AA4A8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

char *sub_1DD3AA4C0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

char *sub_1DD3AA4E0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

char *sub_1DD3AA508(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_12(a3, result);
  }

  return result;
}

uint64_t sub_1DD3AA558(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void *sub_1DD3AA5B8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1DD3AA5D8()
{
  OUTLINED_FUNCTION_1_1();
  result = sub_1DD39A91C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1DD3AA660(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_1DD3AB354();
    v4 = sub_1DD640118();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_1DD3AA728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v10[4] = a2;
  v10[5] = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1DD3AA660;
  v10[3] = a4;
  v8 = _Block_copy(v10);

  [v5 *a5];
  _Block_release(v8);
}

uint64_t sub_1DD3AAA0C@<X0>(_DWORD *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1DD3AAA38@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1DD3AAA68(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1DD400E6C();
}

uint64_t sub_1DD3AAA84()
{
  v1 = OUTLINED_FUNCTION_1_1();
  result = nullsub_1(v1);
  *v0 = result;
  return result;
}

uint64_t sub_1DD3AAAB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD4E0998(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DD3AAAF4(uint64_t a1)
{
  v2 = sub_1DD3AB5C8(&qword_1ECCDB6A8, type metadata accessor for MKError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1DD3AAB60(uint64_t a1)
{
  v2 = sub_1DD3AB5C8(&qword_1ECCDB6A8, type metadata accessor for MKError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1DD3AABCC(void *a1, uint64_t a2)
{
  v4 = sub_1DD3AB5C8(&qword_1ECCDB6A8, type metadata accessor for MKError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1DD3AAC88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD3AB5C8(&qword_1ECCDB6A8, type metadata accessor for MKError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1DD3AAD04()
{
  v2 = *v0;
  sub_1DD640E28();
  sub_1DD63FCF8();
  return sub_1DD640E78();
}

uint64_t sub_1DD3AAD70(uint64_t a1)
{
  v2 = sub_1DD3AB5C8(&qword_1ECCDB6B0, type metadata accessor for LNSystemProtocolIdentifier);
  v3 = sub_1DD3AB5C8(&qword_1ECCDB6B8, type metadata accessor for LNSystemProtocolIdentifier);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DD3AAE2C(uint64_t a1)
{
  v2 = sub_1DD3AB5C8(&qword_1ECCDB6C0, type metadata accessor for INPersonHandleLabel);
  v3 = sub_1DD3AB5C8(&unk_1ECCDB6C8, type metadata accessor for INPersonHandleLabel);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DD3AAEE8(uint64_t a1)
{
  v2 = sub_1DD3AB5C8(&qword_1ECCDB670, type metadata accessor for MKError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1DD3AAF54(uint64_t a1)
{
  v2 = sub_1DD3AB5C8(&qword_1ECCDB670, type metadata accessor for MKError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1DD3AAFC4(uint64_t a1)
{
  v2 = sub_1DD3AB5C8(&qword_1ECCDB6A8, type metadata accessor for MKError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}