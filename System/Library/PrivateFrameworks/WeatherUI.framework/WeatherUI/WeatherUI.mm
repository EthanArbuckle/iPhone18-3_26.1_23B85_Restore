uint64_t type metadata accessor for BackgroundMoonData()
{
  result = qword_1EDA1D6F8;
  if (!qword_1EDA1D6F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BC942D24()
{
  sub_1BCE19060();
  if (v0 <= 0x3F)
  {
    sub_1BC942DC4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BC942DC4()
{
  if (!qword_1EDA1EF30)
  {
    sub_1BCE19060();
    v0 = sub_1BCE1DB10();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA1EF30);
    }
  }
}

uint64_t DeviceRequiresProMotionOptOut()
{
  if (DeviceRequiresProMotionOptOut_onceToken != -1)
  {
    DeviceRequiresProMotionOptOut_cold_1();
  }

  return DeviceRequiresProMotionOptOut_result;
}

void sub_1BC942E68(void *a1)
{
  v1 = a1;
  sub_1BC942EB0();
}

void sub_1BC942EF8(void *a1)
{
  if (qword_1EDA1EC88 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_1BC942F98(Strong);
}

void sub_1BC942F98(void *a1)
{
  if (qword_1EDA1EC88 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;

    if (v3 == a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v4 = [objc_opt_self() defaultCenter];
  if (qword_1EDA1C0B0 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDA2EFE8;
  v6 = swift_unknownObjectWeakLoadStrong();
  [v4 postNotificationName:v5 object:v6];
}

uint64_t sub_1BC9430C0()
{
  result = sub_1BCE1D240();
  qword_1EDA2EFE8 = result;
  return result;
}

id sub_1BC9430F8(void *a1)
{
  v1 = a1;
  v2 = UIApplication.key_window.getter();

  return v2;
}

id UIApplication.key_window.getter()
{
  if (qword_1EDA1EC88 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = [Strong keyWindow];

  return v2;
}

uint64_t WeatherForecastDescriptionStringBuilder.init()()
{
  v1 = type metadata accessor for WeatherChangeStringBuilder();
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0u;
  *(v0 + 176) = 0u;
  v2 = OUTLINED_FUNCTION_5_41();
  *(v0 + 40) = v1;
  *(v0 + 48) = &off_1F3B56F38;
  *(v0 + 16) = v2;
  v3 = type metadata accessor for WindGustStringBuilder();
  v4 = OUTLINED_FUNCTION_5_41();
  v5 = type metadata accessor for ChangingForecastParser();
  *(&v42 + 1) = v3;
  v43 = &off_1F3B54610;
  *&v41 = v4;
  v40[3] = v5;
  v40[4] = &off_1F3B5AE50;
  v40[0] = OUTLINED_FUNCTION_5_41();
  v6 = type metadata accessor for SevereStormStringBuilder();
  v7 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(&v41, v3);
  OUTLINED_FUNCTION_3_6();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = (v10 - v9);
  (*(v12 + 16))(v10 - v9);
  __swift_mutable_project_boxed_opaque_existential_1(v40, v5);
  OUTLINED_FUNCTION_3_6();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_0();
  v16 = (v15 - v14);
  (*(v17 + 16))(v15 - v14);
  v18 = *v11;
  v19 = *v16;
  v7[5] = v3;
  v7[6] = &off_1F3B54610;
  v7[7] = v19;
  v7[2] = v18;
  v7[10] = v5;
  v7[11] = &off_1F3B5AE50;
  __swift_destroy_boxed_opaque_existential_1(v40);
  __swift_destroy_boxed_opaque_existential_1(&v41);
  *(v0 + 80) = v6;
  *(v0 + 88) = &off_1F3B56758;
  *(v0 + 56) = v7;
  v20 = OUTLINED_FUNCTION_5_41();
  *(&v42 + 1) = v5;
  v43 = &off_1F3B5AE50;
  *&v41 = v20;
  v21 = type metadata accessor for ConstantConditionsStringBuilder();
  v22 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(&v41, v5);
  OUTLINED_FUNCTION_3_6();
  v24 = v23;
  v26 = *(v25 + 64);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v29 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  v30 = *(v24 + 16);
  v30(&v40[-1] - v29, v28);
  v31 = *(&v40[-1] - v29);
  v22[5] = v5;
  v22[6] = &off_1F3B5AE50;
  v22[2] = v31;
  __swift_destroy_boxed_opaque_existential_1(&v41);
  *(v0 + 120) = v21;
  *(v0 + 128) = &protocol witness table for ConstantConditionsStringBuilder;
  *(v0 + 96) = v22;
  v32 = OUTLINED_FUNCTION_5_41();
  *(&v42 + 1) = v5;
  v43 = &off_1F3B5AE50;
  *&v41 = v32;
  v33 = type metadata accessor for ChangingForecastStringBuilder();
  v34 = swift_allocObject();
  v35 = __swift_mutable_project_boxed_opaque_existential_1(&v41, v5);
  v36 = MEMORY[0x1EEE9AC00](v35);
  v30(&v40[-1] - v29, v36);
  v37 = *(&v40[-1] - v29);
  v34[5] = v5;
  v34[6] = &off_1F3B5AE50;
  v34[2] = v37;
  __swift_destroy_boxed_opaque_existential_1(&v41);
  *(v0 + 160) = v33;
  *(v0 + 168) = &off_1F3B50DC0;
  *(v0 + 136) = v34;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  OUTLINED_FUNCTION_8_5();
  sub_1BC94543C(&v41, v0 + 176, &qword_1EBD0B020);
  swift_endAccess();
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  OUTLINED_FUNCTION_8_5();
  sub_1BC94543C(&v41, v0 + 216, &qword_1EBD0B028);
  swift_endAccess();
  return v0;
}

uint64_t OUTLINED_FUNCTION_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_3()
{

  return type metadata accessor for WeatherFormatCacheKey();
}

uint64_t OUTLINED_FUNCTION_5_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_1()
{

  return sub_1BCE1BF60();
}

uint64_t OUTLINED_FUNCTION_5_5()
{

  return sub_1BCE1DED0();
}

uint64_t OUTLINED_FUNCTION_5_8()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_12()
{

  return swift_beginAccess();
}

double OUTLINED_FUNCTION_5_9(double a1)
{
  *(v1 + 648) = 0x4032000000000000;
  *(v1 + 656) = a1;
  *(v1 + 664) = -1029701632;
  *(v1 + 712) = 0;
  result = 0.0;
  *(v1 + 672) = 0u;
  *(v1 + 688) = 0u;
  *(v1 + 704) = 0;
  *(v1 + 720) = v2;
  *(v1 + 728) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3);
}

uint64_t OUTLINED_FUNCTION_5_10()
{

  return sub_1BCE1DF70();
}

uint64_t OUTLINED_FUNCTION_5_12()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_13()
{

  return sub_1BCE1AC20();
}

uint64_t OUTLINED_FUNCTION_0_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_3()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_5_24()
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_5_25()
{
  *(v0 + 16) = v2;
  v4 = *(v3 - 200);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(v3 - 184) = v0;
  return v0 + v5 + *(v4 + 72) * v1;
}

uint64_t OUTLINED_FUNCTION_5_29()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_2()
{

  return sub_1BCE1E020();
}

void OUTLINED_FUNCTION_5_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, char a17, uint64_t a18, uint64_t a19, int a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  v30[1639] = a30;
  v30[1640] = a21;
  v30[1641] = a17;
}

uint64_t OUTLINED_FUNCTION_5_41()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_5_44@<X0>(char a1@<W8>)
{
  *(v1 + 144) = a1;

  return sub_1BCE1DF70();
}

uint64_t OUTLINED_FUNCTION_5_46()
{

  return sub_1BC983420(v0, v1);
}

uint64_t OUTLINED_FUNCTION_5_49()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_50()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_0_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_64()
{

  return sub_1BCE1DED0();
}

uint64_t OUTLINED_FUNCTION_5_65()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_66()
{

  return sub_1BCE1D6C0();
}

uint64_t OUTLINED_FUNCTION_5_70()
{

  return sub_1BCE1A2D0();
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

__n128 OUTLINED_FUNCTION_3_5@<Q0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, __n128 a8)
{
  v9 = (v8 + a1);
  result = a8;
  *v9 = a8;
  v9[1].n128_u64[0] = a7;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_8()
{

  return sub_1BCE1DF90();
}

uint64_t OUTLINED_FUNCTION_3_9()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_10(uint64_t a1)
{

  return sub_1BCB37580(v2, 0, a1, v1 + v3);
}

uint64_t OUTLINED_FUNCTION_3_11@<X0>(uint64_t a1@<X8>)
{
  result = v2 + a1;
  *(v3 - 128) = *(v1 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_12()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_3_14(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a10, uint64_t a11, uint64_t a12, __int128 a13)
{
  *(v13 + 472) = 0x4030800000000000;
  *(v13 + 480) = a1;
  *(v13 + 488) = -1038090240;
  result = a10;
  *(v13 + 496) = a13;
  *(v13 + 512) = a10;
  *(v13 + 528) = v14;
  *(v13 + 536) = 3;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_15()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_3_17(uint64_t a1)
{
  *(v1 + 40) = a1;

  return sub_1BCE1B440();
}

uint64_t OUTLINED_FUNCTION_3_21()
{

  return sub_1BCE1DE10();
}

uint64_t OUTLINED_FUNCTION_3_26()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_30()
{

  return type metadata accessor for WindComplicationViewModel();
}

void OUTLINED_FUNCTION_29()
{

  JUMPOUT(0x1BFB30880);
}

float OUTLINED_FUNCTION_3_35@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, __int128 a5)
{
  result = *(a1 + 4 * a2 + 32);
  *(&a5 & 0xFFFFFFFFFFFFFFF3 | (4 * (a2 & 3))) = result;
  return result;
}

void OUTLINED_FUNCTION_0_5()
{

  JUMPOUT(0x1BFB30880);
}

uint64_t OUTLINED_FUNCTION_3_36()
{

  return sub_1BCE1DF70();
}

id OUTLINED_FUNCTION_3_37(uint64_t a1)
{

  return [v1 (v2 + 3704)];
}

uint64_t OUTLINED_FUNCTION_3_39(unint64_t *a1)
{

  return sub_1BC94B978(a1);
}

uint64_t OUTLINED_FUNCTION_3_41()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_45()
{

  return sub_1BCE1DED0();
}

uint64_t OUTLINED_FUNCTION_3_46()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_0_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_47()
{
}

void OUTLINED_FUNCTION_3_50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, char a23, __int16 a24, char a25, __int16 a26, char a27, __int16 a28, char a29, __int16 a30, char a31, __int16 a32, char a33, __int16 a34, char a35, __int16 a36, char a37, __int16 a38, char a39, __int16 a40, char a41, __int16 a42, char a43, __int16 a44, char a45, __int16 a46, char a47, __int16 a48, char a49, int a50, int a51, char a52, __int16 a53, char a54, __int16 a55, char a56, __int16 a57, char a58)
{
  v58[3965] = a47;
  v58[3966] = a39;
  v58[3967] = a37;
  v58[3968] = a23;
  v58[3969] = a29;
  v58[3970] = a31;
  v58[3971] = a33;
  v58[3972] = a27;
  v58[3973] = v59;
  v58[3974] = a25;
  v58[3975] = a45;
  v58[3976] = v60;
  v58[3977] = v64;
  v58[3978] = v63;
  v58[3979] = v62;
  v58[3980] = a43;
  v58[3981] = v61;
  v58[3982] = a49;
  v58[3983] = a52;
  v58[3984] = a54;
  v58[3985] = a56;
  v58[3986] = a58;
  v58[3987] = a35;
  v58[3988] = a41;
}

uint64_t OUTLINED_FUNCTION_3_51()
{
}

uint64_t OUTLINED_FUNCTION_3_52()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_3_53()
{

  return sub_1BCE1E020();
}

uint64_t OUTLINED_FUNCTION_3_59()
{

  return sub_1BCE1E090();
}

uint64_t OUTLINED_FUNCTION_3_64()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_3_65()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_3_69()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_9_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_71()
{

  return sub_1BCE1DF90();
}

void OUTLINED_FUNCTION_3_72(float a1)
{
  *v1 = a1;
  *(v1 + 4) = 1752392040;
  *(v1 + 12) = 2081;
}

uint64_t OUTLINED_FUNCTION_3_75()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_76()
{

  return swift_getOpaqueTypeConformance2();
}

void OUTLINED_FUNCTION_3_83()
{
  v1 = *(v0 - 112);
  *(v0 - 104) = v1 + 32;
  *(v0 - 144) = v1 + 8;
  *(v0 - 136) = v1 + 16;
}

uint64_t OUTLINED_FUNCTION_3_88()
{
}

uint64_t OUTLINED_FUNCTION_3_93()
{

  return sub_1BCE1E090();
}

uint64_t OUTLINED_FUNCTION_3_95()
{
  v5 = (v3 + *(v4 + 32));
  *v5 = v2;
  v5[1] = v1;
  return v0;
}

uint64_t OUTLINED_FUNCTION_3_96()
{

  return swift_once();
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t OUTLINED_FUNCTION_8_1@<X0>(uint64_t a1@<X8>)
{

  return sub_1BC9FE308(v2, v1 + a1, v3);
}

uint64_t OUTLINED_FUNCTION_8_2()
{

  return sub_1BCA091A4(v0, type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle);
}

uint64_t OUTLINED_FUNCTION_8_4()
{
  *(v1 - 96) = v0;

  return type metadata accessor for WeatherFormatCacheKey();
}

uint64_t OUTLINED_FUNCTION_8_5()
{

  return swift_beginAccess();
}

__n128 OUTLINED_FUNCTION_8_6(double a1)
{
  *(v1 + 32) = 0;
  *(v1 + 40) = a1;
  *(v1 + 48) = 1117782016;
  __asm { FMOV            V0.2D, #1.0 }

  *(v1 + 56) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_7()
{
}

void OUTLINED_FUNCTION_8_12()
{
  v1 = *(v0 - 168);
  *(v0 - 208) = *(v0 - 184) & 1;
  *(v0 - 216) = v1 & 1;
}

uint64_t OUTLINED_FUNCTION_8_18()
{

  return MEMORY[0x1EEDE1268](0);
}

uint64_t OUTLINED_FUNCTION_8_21()
{

  return sub_1BCE1C830();
}

uint64_t OUTLINED_FUNCTION_8_24(unint64_t *a1)
{

  return sub_1BC957184(a1, v1);
}

uint64_t OUTLINED_FUNCTION_8_26()
{

  return sub_1BCE1DF90();
}

uint64_t OUTLINED_FUNCTION_8_32()
{

  return sub_1BCE1DF70();
}

uint64_t OUTLINED_FUNCTION_8_35()
{
  sub_1BCA21FC4(*(v0 + v1), *(v0 + v1 + 8));
  sub_1BCA21FD0(*(v0 + v1 + 16), *(v0 + v1 + 24), *(v0 + v1 + 32), *(v0 + v1 + 40), *(v0 + v1 + 48));
}

unint64_t OUTLINED_FUNCTION_8_36()
{
  *(v0 - 112) = 11501794;
  *(v0 - 104) = 0xA300000000000000;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0xE000000000000000;

  return sub_1BC970820();
}

void *OUTLINED_FUNCTION_8_38(void *a1)
{

  return memcpy(a1, &STACK[0x4340], 0x65DuLL);
}

uint64_t OUTLINED_FUNCTION_8_39()
{
}

uint64_t OUTLINED_FUNCTION_8_43()
{

  return sub_1BC983420(v0, v1);
}

uint64_t OUTLINED_FUNCTION_8_45()
{

  return sub_1BC96160C(v0);
}

uint64_t OUTLINED_FUNCTION_8_48@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(v3 - 88) + a3;
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  return result;
}

void OUTLINED_FUNCTION_8_58()
{

  sub_1BCB65224();
}

BOOL OUTLINED_FUNCTION_8_59(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_8_63()
{

  return sub_1BCDF3B80(v0, v2 & 1, v1 & 1, v3);
}

uint64_t sub_1BC94543C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_9_0(a1, a2, a3);
  OUTLINED_FUNCTION_4();
  (*(v5 + 40))(v3, v4);
  return v3;
}

void OUTLINED_FUNCTION_4_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_0_10()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_0_15()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_0_16(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __n128 a12)
{
  v12[35].n128_u64[0] = 0x4031800000000000;
  v12[35].n128_f64[1] = a1;
  v12[36].n128_u32[0] = -1036779520;
  v12[36].n128_u64[1] = v13;
  result = a12;
  v12[37] = a12;
  v12[38].n128_u64[0] = 0x3FC999999999999ALL;
  v12[38].n128_u32[2] = v14;
  v12[39].n128_u64[0] = 0;
  v12[39].n128_u64[1] = v15;
  v12[40].n128_u32[0] = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_21()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_28()
{

  return sub_1BCE1B730();
}

uint64_t OUTLINED_FUNCTION_0_35()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_36()
{

  return sub_1BCE1E000();
}

uint64_t OUTLINED_FUNCTION_0_37()
{

  return sub_1BCE1DF70();
}

uint64_t OUTLINED_FUNCTION_0_41()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_43()
{

  return sub_1BCE1C680();
}

void OUTLINED_FUNCTION_0_44()
{

  JUMPOUT(0x1BFB2FB00);
}

void OUTLINED_FUNCTION_0_45(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = v2;
  *(a1 + 8) = v3;
}

id OUTLINED_FUNCTION_0_46()
{

  return [v0 (v1 + 3832)];
}

uint64_t OUTLINED_FUNCTION_0_47()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_53()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_0_56@<X0>(char a1@<W8>)
{
  *(v1 - 65) = a1;

  return sub_1BCE1E020();
}

uint64_t OUTLINED_FUNCTION_0_59()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_61()
{

  return sub_1BCE1DF70();
}

uint64_t OUTLINED_FUNCTION_0_68()
{

  return sub_1BCE1A900();
}

uint64_t OUTLINED_FUNCTION_0_70()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_71()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_73()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_0_82()
{

  return sub_1BCE1DF70();
}

uint64_t OUTLINED_FUNCTION_0_83()
{

  return sub_1BCE1E090();
}

uint64_t OUTLINED_FUNCTION_0_86(uint64_t a1, unint64_t a2)
{
  sub_1BC9775B8(a1, a2);
  sub_1BC9775B8(v2, v3);

  return sub_1BC977830(v2, v3);
}

uint64_t OUTLINED_FUNCTION_0_96()
{

  return swift_once();
}

uint64_t __DeviceRequiresProMotionOptOut_block_invoke()
{
  result = MGIsDeviceOneOfType();
  DeviceRequiresProMotionOptOut_result = result;
  return result;
}

uint64_t Assembly.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09A28);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BCE3E030;
  v2 = type metadata accessor for MoonAssembly();
  v3 = swift_allocObject();
  *(v1 + 56) = v2;
  *(v1 + 64) = sub_1BC94607C(qword_1EDA1AC38, type metadata accessor for MoonAssembly);
  *(v1 + 32) = v3;
  v4 = type metadata accessor for ProviderAssembly();
  v5 = swift_allocObject();
  *(v1 + 96) = v4;
  *(v1 + 104) = sub_1BC94607C(qword_1EDA1A820, type metadata accessor for ProviderAssembly);
  *(v1 + 72) = v5;
  *(v0 + 16) = v1;
  return v0;
}

uint64_t sub_1BC94607C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC946160()
{
  v0 = sub_1BCE1A9D0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BCE1A830();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0EA40);
  OUTLINED_FUNCTION_0_68();

  v4 = *(v1 + 104);
  v5 = OUTLINED_FUNCTION_1_97();
  v4(v5);
  sub_1BCE1A770();

  v6 = *(v1 + 8);
  v6(v3, v0);
  sub_1BCE1A830();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0EA48);
  OUTLINED_FUNCTION_0_68();

  v7 = OUTLINED_FUNCTION_1_97();
  v4(v7);
  sub_1BCE1A770();

  v6(v3, v0);
  sub_1BCE1A830();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0EA50);
  OUTLINED_FUNCTION_0_68();

  sub_1BCE1A830();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0EA58);
  OUTLINED_FUNCTION_0_68();

  sub_1BCE1A830();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0EA60);
  OUTLINED_FUNCTION_0_68();

  v8 = OUTLINED_FUNCTION_1_97();
  v4(v8);
  sub_1BCE1A770();

  return (v6)(v3, v0);
}

void OUTLINED_FUNCTION_1_5(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  static WeatherFormatStyle<>.weather(_:locale:)();
}

__n128 OUTLINED_FUNCTION_1_7(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __n128 a14)
{
  v14[24].n128_u64[0] = 0x4028000000000000;
  v14[24].n128_f64[1] = a1;
  v14[25].n128_u32[0] = 0;
  v14[25].n128_u64[1] = v16;
  result = a14;
  v14[26] = a14;
  v14[27].n128_u64[0] = 0x3FCC28F5C28F5C29;
  v14[27].n128_u32[2] = 1050253722;
  v14[28].n128_u64[0] = v15;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = v4;
  *(v3 + *(result + 24)) = v2;
  *(v3 + *(result + 28)) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_9()
{

  return sub_1BCA78618();
}

uint64_t OUTLINED_FUNCTION_1_10()
{

  return swift_once();
}

void OUTLINED_FUNCTION_1_11(double a1, __n128 a2)
{
  *(v2 + 64) = v3;
  *(v2 + 72) = 256;
  *(v2 + 90) = a2;
}

__n128 *OUTLINED_FUNCTION_1_12(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v3;
  result[2].n128_u64[1] = v2;
  result[3].n128_u64[0] = 0;
  result[3].n128_u64[1] = 0;
  result[4].n128_u8[0] = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_16()
{

  return swift_once();
}

void OUTLINED_FUNCTION_27_0()
{

  JUMPOUT(0x1BFB31B10);
}

uint64_t OUTLINED_FUNCTION_1_25@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_1BCB07174(v2, &a2 - ((a1 + 15) & 0xFFFFFFFFFFFFFFF0));
}

uint64_t OUTLINED_FUNCTION_1_32@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_1BCB3C54C(v2, &a2 - ((a1 + 15) & 0xFFFFFFFFFFFFFFF0));
}

uint64_t OUTLINED_FUNCTION_1_33()
{

  return sub_1BCE1DF50();
}

uint64_t OUTLINED_FUNCTION_1_39()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_1_40()
{

  return sub_1BCE1E090();
}

uint64_t OUTLINED_FUNCTION_1_41()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_1_47()
{

  return sub_1BCE18B60();
}

id OUTLINED_FUNCTION_1_50()
{

  return [v0 (v1 + 1016)];
}

void OUTLINED_FUNCTION_1_52(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, char a28, uint64_t a29, char a30, int a31, int a32, char a33, __int16 a34, char a35, __int16 a36, char a37, __int16 a38, char a39)
{
  v39[1644] = a28;
  v39[1645] = a20;
  v39[1646] = a30;
  v39[1647] = a33;
  v39[1648] = a35;
  v39[1649] = a37;
  v39[1650] = a39;
}

uint64_t OUTLINED_FUNCTION_1_55()
{

  return sub_1BCE1DF70();
}

uint64_t OUTLINED_FUNCTION_1_58()
{

  return sub_1BCE1E020();
}

uint64_t OUTLINED_FUNCTION_1_60()
{

  return sub_1BCE18B60();
}

uint64_t OUTLINED_FUNCTION_1_75()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_1_77(unint64_t *a1, uint64_t *a2)
{

  return sub_1BCB60180(a1, a2);
}

uint64_t OUTLINED_FUNCTION_1_79()
{

  return swift_allocObject();
}

id OUTLINED_FUNCTION_1_81()
{
  v4 = *(*(v1 + 48) + ((v2 << 9) | (8 * __clz(__rbit64(v0)))));

  return v4;
}

uint64_t OUTLINED_FUNCTION_1_85()
{

  return sub_1BCE1D280();
}

uint64_t OUTLINED_FUNCTION_1_90()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_1_93(uint64_t result)
{
  *v8 = v7;
  *(v8 + 8) = v6;
  *(v8 + 16) = v5;
  *(v8 + 24) = v9;
  *(v8 + 32) = result;
  *(v8 + 40) = 0;
  *(v8 + 48) = v4;
  *(v8 + 56) = v3;
  *(v8 + 64) = v2;
  *(v8 + 72) = v11;
  *(v8 + 80) = v10;
  *(v8 + 88) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_99()
{

  return swift_once();
}

uint64_t sub_1BC946FF8()
{
  v0 = sub_1BCE1A9D0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BCE1A830();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C5F0);
  OUTLINED_FUNCTION_0_68();

  v4 = *MEMORY[0x1E69D6AD0];
  v5 = *(v1 + 104);
  v5(v3, v4, v0);
  sub_1BCE1A770();

  v6 = *(v1 + 8);
  v6(v3, v0);
  sub_1BCE1A830();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C5F8);
  OUTLINED_FUNCTION_0_68();

  v5(v3, v4, v0);
  sub_1BCE1A770();

  return (v6)(v3, v0);
}

uint64_t type metadata accessor for SunriseSunsetDescriptionContext()
{
  result = qword_1EDA1CA40;
  if (!qword_1EDA1CA40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BC947244()
{
  sub_1BC942DC4();
  if (v0 <= 0x3F)
  {
    sub_1BCE19470();
    if (v1 <= 0x3F)
    {
      sub_1BCE196E0();
      if (v2 <= 0x3F)
      {
        sub_1BC947304();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BC947304()
{
  if (!qword_1EDA1EB60)
  {
    sub_1BCE19540();
    sub_1BC9473E0(&qword_1EDA1EBA0);
    sub_1BC9473E0(&qword_1EDA1EBB0);
    sub_1BC9473E0(&qword_1EDA1EBA8);
    v0 = sub_1BCE1A100();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA1EB60);
    }
  }
}

uint64_t sub_1BC9473E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1BCE19540();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BC947424(unint64_t *a1, void (*a2)(uint64_t))
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

id UIApplication.maybeWindow.getter()
{
  v1 = [v0 key_window];
  if (!v1)
  {
    v2 = [v0 connectedScenes];
    sub_1BC947608(0, &qword_1EDA16840);
    sub_1BC947648();
    v3 = sub_1BCE1D6B0();

    sub_1BC9476B0(v3);
    v5 = v4;

    if (sub_1BC94791C(v5) && ((v6 = OUTLINED_FUNCTION_0_58(), sub_1BC95A704(v6, v7, v8), v3) ? (v9 = MEMORY[0x1BFB304A0](0, v5)) : (v9 = *(v5 + 32)), v10 = v9, , v11 = [v10 windows], v10, sub_1BC947608(0, &qword_1EDA16828), v12 = sub_1BCE1D570(), v11, sub_1BC94791C(v12)))
    {
      v13 = OUTLINED_FUNCTION_0_58();
      sub_1BC95A704(v13, v14, v15);
      if (v10)
      {
        v16 = MEMORY[0x1BFB304A0](0, v12);
      }

      else
      {
        v16 = *(v12 + 32);
      }

      v1 = v16;
    }

    else
    {

      return 0;
    }
  }

  return v1;
}

uint64_t sub_1BC947608(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1BC947648()
{
  result = qword_1EDA16838;
  if (!qword_1EDA16838)
  {
    sub_1BC947608(255, &qword_1EDA16840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA16838);
  }

  return result;
}

void sub_1BC9476B0(uint64_t a1)
{
  v1 = a1;
  v18 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BCE1DC70();
    sub_1BC947608(0, &qword_1EDA16840);
    sub_1BC947648();
    sub_1BCE1D6C0();
    v1 = v13;
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!sub_1BCE1DCA0() || (sub_1BC947608(0, &qword_1EDA16840), swift_dynamicCast(), (v11 = v12) == 0))
    {
LABEL_21:
      sub_1BC947914();
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x1BFB2FC90]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BCE1D590();
      }

      sub_1BCE1D5B0();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1BC947924(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1BCE1DC80();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

unint64_t sub_1BC947948@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C600);
  result = sub_1BCE1A800();
  if (v7)
  {
    v4 = type metadata accessor for WeatherServiceConfigurationProvider();
    v5 = swift_allocObject();
    sub_1BC947AB4(&v6, v5 + 16);
    a2[3] = v4;
    result = sub_1BC947A5C();
    a2[4] = result;
    *a2 = v5;
  }

  else
  {
    __break(1u);
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

unint64_t sub_1BC947A5C()
{
  result = qword_1EDA1B290;
  if (!qword_1EDA1B290)
  {
    type metadata accessor for WeatherServiceConfigurationProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B290);
  }

  return result;
}

uint64_t sub_1BC947AB4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1BC947AEC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BC947B24()
{
  sub_1BC94BC84();
  if (v0 <= 0x3F)
  {
    sub_1BCE19060();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BC947BB8()
{
  result = sub_1BCE18E40();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t StringBuilder.init(_:)(uint64_t (*a1)(void))
{
  v2 = v1;
  type metadata accessor for AnyRule();
  *(v1 + 16) = sub_1BCE1D0E0();
  v4 = a1();
  swift_beginAccess();
  v5 = *(v4 + 16);

  *(v2 + 16) = v5;

  return v2;
}

void OUTLINED_FUNCTION_10_6(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);

  sub_1BC9639B4();
}

uint64_t OUTLINED_FUNCTION_10_7()
{
  *(v1 - 96) = v0;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_10_8()
{

  return sub_1BCE1A780();
}

void OUTLINED_FUNCTION_10_9(__n128 a1)
{
  *(v1 + 248) = a1;
  *(v1 + 264) = 1039516303;
  *(v1 + 272) = 0;
}

uint64_t OUTLINED_FUNCTION_25()
{

  return sub_1BCE1DD80();
}

uint64_t OUTLINED_FUNCTION_10_12()
{

  return sub_1BCE1B610();
}

uint64_t OUTLINED_FUNCTION_10_13()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_10_19(uint64_t a1)
{
  v5 = v1[17];
  v6 = v1[24];
  v2[4] = v1[18];
  v2[5] = v6;
  v2[12] = v3;
  v2[13] = a1;
  v7 = v1[16];
  v2[8] = a1;
  v2[9] = v7;
  v2[10] = v5;
}

void OUTLINED_FUNCTION_10_20()
{

  JUMPOUT(0x1BFB2FB00);
}

uint64_t OUTLINED_FUNCTION_10_22()
{

  return sub_1BCE1D240();
}

uint64_t OUTLINED_FUNCTION_10_25()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_10_26()
{

  return sub_1BCE191B0();
}

void OUTLINED_FUNCTION_10_33(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, char a23, uint64_t a24, char a25, __int16 a26, char a27, uint64_t a28, char a29, __int16 a30, char a31, uint64_t a32, int a33, char a34)
{
  LOBYTE(STACK[0x103D]) = a34;
  LOBYTE(STACK[0x103E]) = a31;
  v34[1631] = a29;
  v34[1632] = a23;
  v34[1633] = a25;
  v34[1634] = a27;
}

uint64_t OUTLINED_FUNCTION_10_35()
{
  type metadata accessor for RuleRegistry();

  return sub_1BC9483D4();
}

uint64_t OUTLINED_FUNCTION_10_41(uint64_t a1)
{

  return sub_1BC9660CC(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_10_47()
{

  return sub_1BC9600B0();
}

uint64_t OUTLINED_FUNCTION_10_48()
{

  return sub_1BC9A67F4(v0 + 4704, v0 + 64);
}

uint64_t OUTLINED_FUNCTION_10_49@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 120) = &a2 - a1;

  return sub_1BCE19060();
}

uint64_t OUTLINED_FUNCTION_10_51(double a1, double a2, double a3, double a4)
{
  *&STACK[0x230] = a1;
  *&STACK[0x228] = a2;
  *&STACK[0x220] = a3;
  *&STACK[0x218] = a4;
}

void OUTLINED_FUNCTION_10_54(unint64_t a1@<X8>)
{

  sub_1BCB653B4(a1 > 1, v2, 1, v1);
}

uint64_t OUTLINED_FUNCTION_10_55()
{
}

uint64_t static RuleBuilder.buildBlock<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_10_35();
  sub_1BC9493D0(a1, a5, a7);

  v14 = sub_1BC9493D0(a2, a6, a8);

  return v14;
}

uint64_t sub_1BC9483D4()
{
  OUTLINED_FUNCTION_6_37();
  v0 = swift_allocObject();
  sub_1BC94AA74();
  return v0;
}

uint64_t OUTLINED_FUNCTION_6_3()
{
  v5 = v0 + *(v1 + 44);

  return sub_1BC9FE308(v2, v5, v3);
}

uint64_t OUTLINED_FUNCTION_6_5()
{
  *(v5 - 81) = v0;
  v7 = *(v5 - 120);
  v8 = *(v5 - 112);

  return sub_1BC96AFAC(v1, v2, (v5 - 81), v7, v8, v4, v3);
}

uint64_t OUTLINED_FUNCTION_6_7()
{

  return swift_allocObject();
}

int64x2_t OUTLINED_FUNCTION_6_10(double a1)
{
  *(v1 + 296) = 0x401E000000000000;
  *(v1 + 304) = a1;
  *(v1 + 312) = 1109393408;
  return vdupq_n_s64(0x3FE6666666666666uLL);
}

uint64_t OUTLINED_FUNCTION_6_11()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_6_13(uint64_t result)
{
  *v1 = result;
  *(result + 24) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_17()
{

  return sub_1BCE18B60();
}

uint64_t OUTLINED_FUNCTION_6_19()
{

  return sub_1BCE1C680();
}

uint64_t OUTLINED_FUNCTION_6_24()
{

  return sub_1BCE1DED0();
}

void OUTLINED_FUNCTION_6_25()
{
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
}

uint64_t OUTLINED_FUNCTION_6_28()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_6_29(uint64_t a1)
{
  v4 = *(v2 - 168);

  return sub_1BC952ABC(a1, v4, v1);
}

uint64_t OUTLINED_FUNCTION_6_30()
{

  return sub_1BCE1C680();
}

uint64_t OUTLINED_FUNCTION_6_31()
{

  return MEMORY[0x1EEDC6938](v1 - 128, v0, v0);
}

uint64_t OUTLINED_FUNCTION_6_34(uint64_t a1)
{

  return sub_1BC94C0B4(a1, v1);
}

uint64_t OUTLINED_FUNCTION_6_41()
{

  return sub_1BCC617A8(v0, type metadata accessor for NextHourPrecipitationChartViewModel);
}

uint64_t OUTLINED_FUNCTION_6_45(unint64_t *a1)
{

  return sub_1BC957184(a1, v1);
}

uint64_t OUTLINED_FUNCTION_6_46()
{

  return sub_1BCE1C3D0();
}

uint64_t OUTLINED_FUNCTION_6_48()
{

  return sub_1BCE1E020();
}

double OUTLINED_FUNCTION_6_49(double a1)
{
  result = fmin(a1, 1.0);
  *(v1 + *(v2 + 40)) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_50()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_6_54()
{

  return sub_1BCE1DED0();
}

uint64_t OUTLINED_FUNCTION_6_60()
{

  return sub_1BCE185E0();
}

uint64_t OUTLINED_FUNCTION_6_61()
{

  return sub_1BCE1DF90();
}

uint64_t OUTLINED_FUNCTION_6_62()
{

  return swift_beginAccess();
}

__n128 OUTLINED_FUNCTION_6_65@<Q0>(uint64_t a1@<X8>, __n128 a2@<Q1>)
{
  result = *(a1 - 256);
  *(v2 - 192) = result;
  *(v2 - 176) = a2;
  return result;
}

void OUTLINED_FUNCTION_6_66()
{

  JUMPOUT(0x1BFB31B10);
}

uint64_t OUTLINED_FUNCTION_6_68()
{

  return sub_1BCDF50A8(v1, v0);
}

uint64_t OUTLINED_FUNCTION_6_70()
{

  return type metadata accessor for SevereWeatherComplicationViewModel();
}

void OUTLINED_FUNCTION_4_11()
{
}

uint64_t OUTLINED_FUNCTION_4_12(double a1)
{
  *(v1 + 736) = 0x4038000000000000;
  *(v1 + 744) = a1;
  *(v1 + 752) = v2;
  *(v1 + 800) = 0;
  *(v1 + 760) = 0u;
  *(v1 + 776) = 0u;
  *(v1 + 792) = 0;
  *(v1 + 808) = v3;
  *(v1 + 816) = 0;
  return v1;
}

uint64_t OUTLINED_FUNCTION_4_13(unint64_t *a1, uint64_t a2)
{

  return sub_1BCA5B4A0(a1, a2);
}

uint64_t OUTLINED_FUNCTION_4_14()
{

  return sub_1BCE1E090();
}

__n128 OUTLINED_FUNCTION_4_17@<Q0>(uint64_t a1@<X8>)
{
  *(v5 - 288) = v4;
  *(v5 - 280) = a1;
  *(v5 - 272) = v1;
  *(v5 - 264) = v2;
  *(v5 - 256) = v3;
  result = *(v5 - 160);
  *(v5 - 248) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_19(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1BC9714A4(a1, a2, a3, 0, 1, 0);
}

id OUTLINED_FUNCTION_22@<X0>(void *a1@<X8>)
{

  return a1;
}

uint64_t OUTLINED_FUNCTION_4_20()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_23()
{
  v2 = *(v0 - 208);
  *(v0 - 160) = *(v0 - 224);
  *(v0 - 144) = v2;
  *(v0 - 128) = *(v0 - 192);
  *(v0 - 119) = *(v0 - 183);

  return sub_1BCAC1C90(v0 - 160);
}

void *OUTLINED_FUNCTION_4_26(void *a1)
{

  return memcpy(a1, (v1 + 21072), 0x918uLL);
}

uint64_t OUTLINED_FUNCTION_4_28()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_29()
{

  return sub_1BCE1CB30();
}

uint64_t OUTLINED_FUNCTION_4_32()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_4_36(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

void OUTLINED_FUNCTION_4_41(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, char a23, __int16 a24, char a25, __int16 a26, char a27, __int16 a28, char a29, __int16 a30, char a31, int a32, char a33, __int16 a34, char a35, __int16 a36, char a37, __int16 a38, char a39, __int16 a40, char a41, __int16 a42, char a43, __int16 a44, char a45, __int16 a46, char a47, int a48, int a49, char a50, __int16 a51, char a52, __int16 a53, char a54, __int16 a55, char a56)
{
  LOBYTE(STACK[0x71D]) = a45;
  LOBYTE(STACK[0x71E]) = a37;
  LOBYTE(STACK[0x71F]) = a35;
  LOBYTE(STACK[0x720]) = a23;
  LOBYTE(STACK[0x721]) = a29;
  LOBYTE(STACK[0x722]) = a31;
  LOBYTE(STACK[0x723]) = v56;
  LOBYTE(STACK[0x724]) = a27;
  LOBYTE(STACK[0x725]) = v57;
  LOBYTE(STACK[0x726]) = a25;
  LOBYTE(STACK[0x727]) = a43;
  LOBYTE(STACK[0x728]) = v58;
  LOBYTE(STACK[0x729]) = v62;
  LOBYTE(STACK[0x72A]) = v61;
  LOBYTE(STACK[0x72B]) = v60;
  LOBYTE(STACK[0x72C]) = a41;
  LOBYTE(STACK[0x72D]) = v59;
  LOBYTE(STACK[0x72E]) = a47;
  LOBYTE(STACK[0x72F]) = a50;
  LOBYTE(STACK[0x730]) = a52;
  LOBYTE(STACK[0x731]) = a54;
  LOBYTE(STACK[0x732]) = a56;
  LOBYTE(STACK[0x733]) = a33;
  LOBYTE(STACK[0x734]) = a39;
}

uint64_t OUTLINED_FUNCTION_11_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_43()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_4_45@<X0>(char a1@<W8>)
{
  *(v1 + 144) = a1;

  return sub_1BCE1DF70();
}

uint64_t OUTLINED_FUNCTION_4_47()
{

  return sub_1BCE1E020();
}

unint64_t OUTLINED_FUNCTION_4_51()
{
  *(v0 - 144) = 11501794;
  *(v0 - 136) = 0xA300000000000000;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0xE000000000000000;

  return sub_1BC970820();
}

uint64_t OUTLINED_FUNCTION_4_53()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_4_56()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_4_59()
{

  JUMPOUT(0x1BFB31B30);
}

uint64_t OUTLINED_FUNCTION_4_60()
{

  return sub_1BCE1DF90();
}

uint64_t OUTLINED_FUNCTION_4_64()
{
  v2 = *(v1 - 144);
  v3 = *(v2 + 8);
  result = v0;
  *(v1 - 144) = v2 + 8;
  *(v1 - 200) = v3;
  return result;
}

void OUTLINED_FUNCTION_4_69()
{

  static WeatherFormatStyle<>.weather(_:locale:)();
}

uint64_t OUTLINED_FUNCTION_4_73()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_4_74(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_4_75()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_76()
{

  return type metadata accessor for CurrentObservationViewAttributes();
}

uint64_t sub_1BC9493D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for AnyRule();
  (*(v6 + 16))(v8, a1, a2);
  v11 = sub_1BC94B6DC(v8, a2, a3);
  swift_beginAccess();
  sub_1BCE1D5D0();
  sub_1BCE1D5C0();
  swift_endAccess();
}

uint64_t *sub_1BC949538(char *a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v21 = a1;
  v5 = *v3;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 16);
  v19 = v7;
  v20 = v9;
  (v9)(v8);
  v10 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v11 = swift_allocObject();
  v23 = *(v5 + 80);
  *(v11 + 2) = v23;
  v22 = *(v5 + 88);
  *(v11 + 3) = v22;
  *(v11 + 4) = a2;
  *(v11 + 5) = v24;
  v12 = *(v6 + 32);
  v12(&v11[v10], v8, a2);
  v3[2] = sub_1BC96EC64;
  v3[3] = v11;
  v20(v8, v21, a2);
  v13 = swift_allocObject();
  v14 = v22;
  *(v13 + 2) = v23;
  *(v13 + 3) = v14;
  v15 = v24;
  *(v13 + 4) = a2;
  *(v13 + 5) = v15;
  v12(&v13[v10], v8, a2);
  v3[4] = sub_1BC96F080;
  v3[5] = v13;
  v12(v8, v21, a2);
  v16 = swift_allocObject();
  v17 = v22;
  *(v16 + 2) = v23;
  *(v16 + 3) = v17;
  *(v16 + 4) = a2;
  *(v16 + 5) = v15;
  v12(&v16[v10], v8, a2);
  v3[6] = sub_1BC988744;
  v3[7] = v16;
  return v3;
}

uint64_t sub_1BC949804()
{
  result = type metadata accessor for BackgroundAnimationData.Model(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1BC949870()
{
  sub_1BCE1A6F0();
  if (v0 <= 0x3F)
  {
    sub_1BCE19060();
    if (v1 <= 0x3F)
    {
      sub_1BCE199D0();
      if (v2 <= 0x3F)
      {
        sub_1BC949A84(319, &qword_1EDA1EF88, sub_1BC949AE8, MEMORY[0x1E6968070]);
        if (v3 <= 0x3F)
        {
          sub_1BC949A84(319, qword_1EDA1D6B0, type metadata accessor for BackgroundMoonData, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1BC949A84(319, &qword_1EDA1EF30, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1BC949A20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BC949A84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BC949AE8()
{
  result = qword_1EDA1F1C8;
  if (!qword_1EDA1F1C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDA1F1C8);
  }

  return result;
}

uint64_t type metadata accessor for WeatherConditionBackgroundModelFactoryInput()
{
  result = qword_1EDA1AF78;
  if (!qword_1EDA1AF78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BC949B78()
{
  sub_1BCE19060();
  if (v0 <= 0x3F)
  {
    sub_1BC94B8C0();
    if (v1 <= 0x3F)
    {
      sub_1BC949D30(319, qword_1EDA1D6B0, type metadata accessor for BackgroundMoonData);
      if (v2 <= 0x3F)
      {
        sub_1BC949D30(319, &qword_1EDA1EB68, MEMORY[0x1E6984D30]);
        if (v3 <= 0x3F)
        {
          sub_1BC949D30(319, &qword_1EDA1BD38, MEMORY[0x1E69E17A8]);
          if (v4 <= 0x3F)
          {
            sub_1BC949D30(319, &qword_1EDA1BED8, MEMORY[0x1E6984D68]);
            if (v5 <= 0x3F)
            {
              sub_1BC949D30(319, &qword_1EDA1EF30, MEMORY[0x1E6969530]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1BC949D30(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BCE1DB10();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t WeatherConditionGradientManager.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t OUTLINED_FUNCTION_12_2()
{
}

uint64_t OUTLINED_FUNCTION_15_3()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_15_4()
{

  return sub_1BCE1DED0();
}

uint64_t OUTLINED_FUNCTION_15_6()
{

  return sub_1BCE1CA40();
}

__n128 OUTLINED_FUNCTION_15_8()
{
  result = *(v0 + 42);
  *(v0 + 106) = result;
  *(v0 + 120) = *(v0 + 56);
  *(v0 + 128) = 0;
  return result;
}

void OUTLINED_FUNCTION_15_10()
{
  *(v1 + 32) = v0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
}

uint64_t OUTLINED_FUNCTION_15_12()
{

  return sub_1BCE1BF60();
}

uint64_t OUTLINED_FUNCTION_15_14()
{
  *(v2 + 112) = v1;
  *(v2 + 120) = v3;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 144) = 3;
  v5 = *(v0 + 632);
  v6 = *(v0 + 640);

  return sub_1BC97FC70(v5, v6, v2);
}

uint64_t OUTLINED_FUNCTION_15_16()
{

  return sub_1BCB600E4(v0, type metadata accessor for NSUnitPressure.BaseWeatherFormatStyle);
}

uint64_t OUTLINED_FUNCTION_15_22()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_27()
{
}

uint64_t OUTLINED_FUNCTION_15_28(uint64_t a1, uint64_t a2)
{

  return sub_1BCAA84D4(a1, a2);
}

uint64_t OUTLINED_FUNCTION_15_30()
{
}

id OUTLINED_FUNCTION_15_33(uint64_t a1, uint64_t a2)
{

  return sub_1BCD16B38(v3, v4, a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_15_37()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_38(double a1, double a2, double a3, double a4)
{
  *&STACK[0x2D0] = a1;
  *&STACK[0x2C8] = a2;
  *&STACK[0x2C0] = a3;
  *&STACK[0x2B8] = a4;
}

id OUTLINED_FUNCTION_15_39(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_15_40()
{

  return sub_1BCE1D190();
}

uint64_t WeatherConditionBackgroundModelFactory.init(gradientManager:automationEnabled:isDemoPresetActive:)(__int128 *a1, char a2, char a3)
{
  OUTLINED_FUNCTION_18_21(a1);
  *(v3 + 56) = a2;
  *(v3 + 57) = a3;
  return v3;
}

void *sub_1BC94A284@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for MoonDataProvider();
  swift_allocObject();
  result = MoonDataProvider.init()();
  a1[3] = v2;
  a1[4] = &protocol witness table for MoonDataProvider;
  *a1 = result;
  return result;
}

void *MoonDataProvider.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08D00);
  OUTLINED_FUNCTION_31_2();
  v0[2] = sub_1BCE1A980();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08D08);
  OUTLINED_FUNCTION_31_2();
  v0[3] = sub_1BCE1A980();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08D10);
  OUTLINED_FUNCTION_31_2();
  v0[4] = sub_1BCE1A980();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08D18);
  OUTLINED_FUNCTION_31_2();
  v0[5] = sub_1BCE1A980();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08D20);
  OUTLINED_FUNCTION_31_2();
  v0[6] = sub_1BCE1A980();
  return v0;
}

uint64_t sub_1BC94A3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1BC94A4A8(uint64_t a1, unint64_t *a2)
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

uint64_t OUTLINED_FUNCTION_31_1()
{
  result = v2;
  *(v0 + 296) = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_92()
{

  return sub_1BCE1E090();
}

uint64_t OUTLINED_FUNCTION_31_2()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_31_4()
{

  return sub_1BC97EA34(v0, type metadata accessor for NSUnitSpeed.BaseWeatherFormatStyle);
}

uint64_t OUTLINED_FUNCTION_31_6(uint64_t a1)
{

  return sub_1BCB37580(v2, 0, a1, v1);
}

void OUTLINED_FUNCTION_31_10(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t), void (*a6)(uint64_t, uint64_t, unint64_t, __n128))
{
  v8 = *(v6 - 272);
  v9 = *(v6 - 264);

  sub_1BCC07C88(a1, a2, a3, a4, a5, a6, v8, v9);
}

uint64_t OUTLINED_FUNCTION_31_14()
{

  return sub_1BCE1D130();
}

uint64_t OUTLINED_FUNCTION_31_16(double a1, double a2, double a3, double a4)
{
  *&STACK[0x328] = a2;
  *&STACK[0x320] = a3;
  *&STACK[0x318] = a4;
}

unint64_t sub_1BC94A744()
{
  result = qword_1EDA1D908[0];
  if (!qword_1EDA1D908[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA1D908);
  }

  return result;
}

void sub_1BC94A800()
{
  type metadata accessor for CLLocationCoordinate2D(319);
  if (v0 <= 0x3F)
  {
    sub_1BCE19060();
    if (v1 <= 0x3F)
    {
      sub_1BCE19470();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void *WeatherEventDescriptionStringBuilder.init()()
{
  v1 = v0;
  type metadata accessor for SevereWeatherStringBuilder();
  swift_allocObject();
  v0[2] = SevereWeatherStringBuilder.init()();
  type metadata accessor for NextHourPrecipitationStringBuilder();
  v0[3] = swift_allocObject();
  v2 = type metadata accessor for WeatherChangeStringBuilder();
  v3 = swift_allocObject();
  v1[7] = v2;
  v1[8] = &off_1F3B56F38;
  v1[4] = v3;
  return v1;
}

uint64_t SevereWeatherStringBuilder.init()()
{
  if (qword_1EDA1EFB0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v1 = qword_1EDA1EFB8;
  OUTLINED_FUNCTION_7();
  v2 = sub_1BCE18B60();
  v4 = v3;

  *(v0 + 16) = v2;
  *(v0 + 24) = v4;
  return v0;
}

uint64_t sub_1BC94AA74()
{
  OUTLINED_FUNCTION_2_54();
  OUTLINED_FUNCTION_2_54();
  type metadata accessor for AnyRule();
  *(v0 + 16) = sub_1BCE1D0E0();
  return v0;
}

void OUTLINED_FUNCTION_2_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

uint64_t OUTLINED_FUNCTION_2_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_8()
{

  return type metadata accessor for TemperatureComplicationViewModel();
}

int64x2_t OUTLINED_FUNCTION_2_10(double a1)
{
  *(v1 + 208) = 0x401A000000000000;
  *(v1 + 216) = a1;
  *(v1 + 224) = 1110704128;
  result = vdupq_n_s64(0x3FD6666666666666uLL);
  *(v1 + 232) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_11()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_2_12()
{

  return sub_1BCA78618();
}

uint64_t OUTLINED_FUNCTION_2_17()
{

  return sub_1BCE1E090();
}

uint64_t OUTLINED_FUNCTION_2_19()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_2_24()
{

  return sub_1BCE18B60();
}

void *OUTLINED_FUNCTION_2_27()
{

  return memcpy((v0 + 23408), (v0 + 21072), 0x918uLL);
}

uint64_t OUTLINED_FUNCTION_2_29(unint64_t *a1)
{

  return sub_1BC94B978(a1);
}

uint64_t OUTLINED_FUNCTION_2_32()
{

  return sub_1BCE1CB30();
}

uint64_t OUTLINED_FUNCTION_2_34()
{

  return sub_1BCE1E020();
}

uint64_t OUTLINED_FUNCTION_2_39()
{

  return sub_1BCE1E020();
}

uint64_t OUTLINED_FUNCTION_2_42()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_2_45()
{

  return type metadata accessor for WeatherDayVarianceViewStyle();
}

uint64_t OUTLINED_FUNCTION_2_46()
{

  return sub_1BCE1B570();
}

void *OUTLINED_FUNCTION_2_53()
{

  return memcpy((v0 + 1653), &STACK[0x4098], 0x2A3uLL);
}

uint64_t OUTLINED_FUNCTION_2_59@<X0>(char a1@<W8>)
{
  *(v1 - 65) = a1;

  return sub_1BCE1E020();
}

uint64_t OUTLINED_FUNCTION_2_65()
{

  return sub_1BCE19CF0();
}

uint64_t OUTLINED_FUNCTION_2_72()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_74()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_78()
{

  return sub_1BCE1DED0();
}

uint64_t OUTLINED_FUNCTION_2_81()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_84()
{

  return swift_getOpaqueTypeConformance2();
}

void OUTLINED_FUNCTION_2_85()
{
  v2 = *(v0 + 16) + 1;

  sub_1BCA151E4(0, v2, 1);
}

uint64_t OUTLINED_FUNCTION_2_86()
{

  return sub_1BCE1DF90();
}

uint64_t OUTLINED_FUNCTION_2_95()
{

  return sub_1BCE1E020();
}

uint64_t OUTLINED_FUNCTION_2_96()
{

  return sub_1BCE1E020();
}

uint64_t OUTLINED_FUNCTION_2_101@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_1BCDB0D54(v2, &a2 - ((a1 + 15) & 0xFFFFFFFFFFFFFFF0));
}

uint64_t OUTLINED_FUNCTION_2_102(unint64_t *a1)
{

  return sub_1BC957184(a1, v1);
}

uint64_t OUTLINED_FUNCTION_2_104()
{

  return sub_1BCE1D590();
}

uint64_t OUTLINED_FUNCTION_9_2()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_2_105(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v13 + 16) = v14;
  v16 = v13 + 16 * v15;
  *(v16 + 32) = v12;
  *(v16 + 40) = v11;
  *(v10 + a10) = v13;
}

void OUTLINED_FUNCTION_2_106()
{
  *(v3 + v4[6]) = v7;
  *(v3 + v4[7]) = v6;
  *(v3 + v4[8]) = v5;
  v8 = (v3 + v4[9]);
  *v8 = v2;
  v8[1] = v1;
  *(v3 + v4[10]) = v0;
}

uint64_t OUTLINED_FUNCTION_2_108@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  *a2 = a1;

  return type metadata accessor for SevereWeatherComplicationViewModel();
}

uint64_t RuleRegistry.__deallocating_deinit()
{
  RuleRegistry.deinit();
  v0 = OUTLINED_FUNCTION_6_37();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void *FeelsLikeStringBuilder.init()()
{
  v1 = type metadata accessor for WindGustStringBuilder();
  v2 = swift_allocObject();
  v0[5] = v1;
  v0[6] = &off_1F3B54610;
  v0[2] = v2;
  return v0;
}

uint64_t WeatherForecastDescriptionStringBuilder.feelsLikeStringBuilder.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_8_5();
  sub_1BC94543C(a1, v1 + 176, &qword_1EBD0B020);
  return swift_endAccess();
}

uint64_t sub_1BC94B83C()
{
  result = type metadata accessor for BackgroundAnimationData(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1BC94B8C0()
{
  if (!qword_1EDA16DE8)
  {
    v0 = sub_1BCE1DB10();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA16DE8);
    }
  }
}

uint64_t sub_1BC94B930(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC94B978(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1BCE19060();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BC94B9BC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BC94BA08()
{
  if (!qword_1EDA1C1D0)
  {
    sub_1BCE19060();
    sub_1BC94B930(&qword_1EDA1EF40, MEMORY[0x1E6969530]);
    v0 = sub_1BCE1D7E0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA1C1D0);
    }
  }
}

uint64_t type metadata accessor for MoonRiseSet()
{
  result = qword_1EDA1DE60;
  if (!qword_1EDA1DE60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BC94BB14()
{
  result = sub_1BCE19060();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

id sub_1BC94BB94()
{
  type metadata accessor for BundleLookup();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EDA1EFB8 = result;
  return result;
}

uint64_t sub_1BC94BC10@<X0>(uint64_t *a1@<X8>)
{
  sub_1BCE19890();
  v2 = sub_1BCE19880();
  v3 = type metadata accessor for WeatherProviderAttributionCacheManager();
  swift_allocObject();
  result = sub_1BC94CBB8(v2);
  a1[3] = v3;
  a1[4] = &off_1F3B544D8;
  *a1 = result;
  return result;
}

void sub_1BC94BC84()
{
  if (!qword_1EDA16CC0)
  {
    type metadata accessor for WeatherProviderAttributionCacheManager.ProviderDetails(255);
    sub_1BC94CC74(&qword_1EDA1B198, type metadata accessor for WeatherProviderAttributionCacheManager.ProviderDetails);
    v0 = sub_1BCE1D6D0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA16CC0);
    }
  }
}

uint64_t sub_1BC94BD18()
{
  v1 = v0;
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1BCE1D240();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_1BCE1DBF0();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (!*(&v11 + 1))
  {
    return sub_1BC94C05C(v12, &unk_1EBD0DC60);
  }

  result = swift_dynamicCast();
  if (result)
  {
    sub_1BCE18550();
    swift_allocObject();
    sub_1BCE18540();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0ACC0);
    sub_1BCBECF40();
    sub_1BCE18530();

    v7 = *(v1 + 16);
    MEMORY[0x1EEE9AC00](v6);
    os_unfair_lock_lock((v7 + 24));
    sub_1BCBED054((v7 + 16));
    os_unfair_lock_unlock((v7 + 24));
    sub_1BCBECFFC(v8, v9);
  }

  return result;
}

uint64_t sub_1BC94C05C(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1BC94C0B4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BC94C130()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_1BC94C114(&v1[4]);

  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_1BC94C188(uint64_t a1, uint64_t a2)
{

  sub_1BC94CD18(v4, a2, a1);
}

uint64_t static RuleBuilder.buildBlock<A, B, C, D, E>(_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_10_35();
  v21 = OUTLINED_FUNCTION_1_53();
  sub_1BC9493D0(v21, a8, a13);
  OUTLINED_FUNCTION_3_51();
  sub_1BC9493D0(a2, a9, a14);
  OUTLINED_FUNCTION_1_53();

  sub_1BC9493D0(a3, a10, a15);
  OUTLINED_FUNCTION_3_51();
  sub_1BC9493D0(a4, a11, a16);
  OUTLINED_FUNCTION_1_53();

  sub_1BC9493D0(a5, a12, a17);
  OUTLINED_FUNCTION_3_51();
  return a1;
}

_BYTE *storeEnumTagSinglePayload for BackgroundAnimationKind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFE)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFD)
  {
    v7 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        JUMPOUT(0x1BC94C3C0);
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t static RuleBuilder.buildBlock<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_10_35();
  v7 = OUTLINED_FUNCTION_7_42();
  sub_1BC9493D0(v7, a4, a5);
  OUTLINED_FUNCTION_3_51();
  return a5;
}

uint64_t sub_1BC94C438@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for MoonStringBuilder();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &protocol witness table for MoonStringBuilder;
  *a1 = result;
  return result;
}

__n128 OUTLINED_FUNCTION_7_14(double a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a15)
{
  result = a15;
  v15[9] = a2;
  v15[10] = a15;
  v15[11].n128_u32[0] = 0;
  v15[11].n128_u64[1] = 0;
  v15[12].n128_u64[0] = v16;
  v15[12].n128_u32[2] = 0;
  return result;
}

id OUTLINED_FUNCTION_7_18@<X0>(void *a1@<X8>)
{

  return a1;
}

void OUTLINED_FUNCTION_7_21()
{
  *(v1 + 72) = v0;
  *(v1 + 80) = v2;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 104) = 1;
}

uint64_t OUTLINED_FUNCTION_7_27()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_56(uint64_t a1)
{

  return sub_1BC94C05C(a1, v1);
}

uint64_t OUTLINED_FUNCTION_7_31(unint64_t *a1)
{

  return sub_1BC957184(a1, v1);
}

void OUTLINED_FUNCTION_7_33()
{
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
}

void OUTLINED_FUNCTION_7_36()
{
  *(v1 + 16) = v3;
  v5 = v1 + 16 * v4;
  *(v5 + 32) = v0;
  *(v5 + 40) = v2;
}

void *OUTLINED_FUNCTION_7_41(void *a1)
{

  return memcpy(a1, &STACK[0x4098], 0x2A3uLL);
}

uint64_t OUTLINED_FUNCTION_7_44()
{

  return type metadata accessor for NextHourPrecipitationChartViewModel(0);
}

uint64_t OUTLINED_FUNCTION_7_49()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_7_51()
{

  return type metadata accessor for WeatherConditionGradientModel();
}

id OUTLINED_FUNCTION_7_53()
{

  return [v0 (v3 + 632)];
}

uint64_t OUTLINED_FUNCTION_7_59()
{
  result = v1;
  *(v2 - 152) = v0 + 32;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_61()
{

  return sub_1BCE1DED0();
}

uint64_t OUTLINED_FUNCTION_7_66()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_7_69()
{

  return sub_1BCDF1330(v0, type metadata accessor for NSUnitLength.BaseWeatherFormatStyle);
}

uint64_t sub_1BC94CBB8(uint64_t a1)
{
  type metadata accessor for WeatherProviderAttributionCacheManager.ProviderDetailsCacheEntry(0);
  v3 = sub_1BCE1D130();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0ACB0);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = a1;

  sub_1BC94BD18();
  sub_1BC94C130();

  return v1;
}

uint64_t sub_1BC94CC74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC94CD18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      do
      {
LABEL_8:

        sub_1BC95F1C4(a3);
        if (v4)
        {

          v4 = 0;
        }

        v9 &= v9 - 1;
      }

      while (v9);
    }
  }

  __break(1u);
  return result;
}

_BYTE *_s3VFXV19AnimatedBackgroundsC13AnimationKindOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1BC94CF08);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t static RuleBuilder.buildBlock<A, B, C, D, E, F>(_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_10_35();
  v22 = OUTLINED_FUNCTION_7_42();
  sub_1BC9493D0(v22, a9, a15);

  sub_1BC9493D0(a2, a10, a16);
  OUTLINED_FUNCTION_7_42();

  sub_1BC9493D0(a3, a11, a17);
  OUTLINED_FUNCTION_3_51();
  sub_1BC9493D0(a4, a12, a18);
  OUTLINED_FUNCTION_1_53();

  sub_1BC9493D0(a5, a13, a19);
  OUTLINED_FUNCTION_3_51();
  sub_1BC9493D0(a6, a14, a20);
  OUTLINED_FUNCTION_1_53();

  return a3;
}

uint64_t static RuleBuilder.buildBlock<A, B, C, D>(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_4_42();
  OUTLINED_FUNCTION_10_35();
  v17 = OUTLINED_FUNCTION_5_40();
  sub_1BC9493D0(v17, v18, a11);

  sub_1BC9493D0(v15, a8, a12);
  OUTLINED_FUNCTION_7_42();

  sub_1BC9493D0(v14, a9, a13);
  OUTLINED_FUNCTION_3_51();
  sub_1BC9493D0(a4, a10, a14);
  OUTLINED_FUNCTION_1_53();

  return a13;
}

__n128 WeatherConditionConfigurationManager.init()()
{
  __asm { FMOV            V0.2D, #9.0 }

  v0[1] = result;
  return result;
}

int64x2_t VFXSceneTemplateManager.init()()
{
  result = vdupq_n_s64(1uLL);
  v0[1] = result;
  return result;
}

void WeatherConditionBackgroundManager.init(configurationManager:templateManager:)()
{
  OUTLINED_FUNCTION_20_0();
  v1 = v0;
  v8 = v2;
  v9 = v3;
  sub_1BCE1A7E0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  sub_1BCE1A7B0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C410);
  OUTLINED_FUNCTION_31_2();
  *(v0 + 16) = sub_1BCE1A980();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C418);
  OUTLINED_FUNCTION_31_2();
  *(v0 + 24) = sub_1BCE1A980();
  type metadata accessor for VFXOverrideCache();
  swift_allocObject();
  *(v0 + 32) = sub_1BC94DB48();
  sub_1BCE1A7A0();
  sub_1BCE1A7D0();
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_26_16();
  *(v0 + 160) = sub_1BCE1A7C0();
  sub_1BC94DDD8(&qword_1EDA1F6B0, 255, MEMORY[0x1E69D6388]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07D70);
  sub_1BC94DD84(&qword_1EDA1F6A0, &qword_1EBD07D70);
  sub_1BCE1DC30();
  swift_allocObject();
  OUTLINED_FUNCTION_26_16();
  *(v0 + 168) = sub_1BCE1A7C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C420);
  OUTLINED_FUNCTION_31_2();
  *(v0 + 176) = sub_1BCE1A9E0();
  sub_1BC947608(0, &qword_1EDA1C0A0);
  *(v0 + 184) = sub_1BCE1DB00();
  *(v0 + 192) = 2;
  sub_1BC94DE68(v8, v0 + 64);
  sub_1BC94DE68(v9, v0 + 104);
  type metadata accessor for Request(0);
  sub_1BC94E37C();
  *(v0 + 144) = OUTLINED_FUNCTION_31_14();
  *(v0 + 152) = OUTLINED_FUNCTION_31_14();
  sub_1BC94DDD8(&qword_1EDA1EAD8, 255, MEMORY[0x1E69D6420]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD0C510);
  sub_1BC94DD84(&qword_1EDA1C248, &unk_1EBD0C510);
  sub_1BCE1DC30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C428);
  OUTLINED_FUNCTION_31_2();
  *(v0 + 56) = sub_1BCE1A940();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C430);
  swift_allocObject();

  v7 = sub_1BC94E4B0(v6, 0);
  __swift_destroy_boxed_opaque_existential_1(v9);
  __swift_destroy_boxed_opaque_existential_1(v8);
  *(v1 + 40) = v7;
  *(v1 + 48) = &protocol witness table for WeatherConditionPlaybackCoordinator<A>;
  OUTLINED_FUNCTION_21();
}

uint64_t OUTLINED_FUNCTION_24_6()
{

  return sub_1BCE18B60();
}

uint64_t OUTLINED_FUNCTION_24_9()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_24_14()
{

  return sub_1BCE1DF70();
}

uint64_t OUTLINED_FUNCTION_24_18()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_24_20()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_24_21(double a1, double a2, double a3, double a4)
{
  *&STACK[0x410] = a1;
  *&STACK[0x408] = a2;
  *&STACK[0x400] = a3;
  *&STACK[0x3F8] = a4;
}

double OUTLINED_FUNCTION_24_22(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_1BCDC33E4(va);
}

uint64_t OUTLINED_FUNCTION_20_4()
{
  *(v1 + *(v0 + 28)) = 0;
  *(v1 + *(v0 + 32)) = 0;
  return v1;
}

void OUTLINED_FUNCTION_20_6()
{

  static WeatherFormatStyle<>.weather(_:locale:)();
}

uint64_t OUTLINED_FUNCTION_20_7()
{

  return sub_1BCE1BD30();
}

id OUTLINED_FUNCTION_9_4@<X0>(void *a1@<X8>)
{

  return a1;
}

uint64_t OUTLINED_FUNCTION_40_0()
{
}

uint64_t OUTLINED_FUNCTION_20_16()
{

  return sub_1BCE18BA0();
}

float OUTLINED_FUNCTION_20_20(float result)
{
  if (result == 0.0)
  {
    return v1;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_26(double a1, double a2, double a3, double a4)
{
  *&STACK[0x388] = a1;
  *&STACK[0x380] = a2;
  *&STACK[0x378] = a3;
  *&STACK[0x370] = a4;
}

uint64_t sub_1BC94DB48()
{
  v1 = sub_1BCE1A7B0();
  MEMORY[0x1EEE9AC00](v1);
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD07D60);
  *(swift_allocObject() + 16) = xmmword_1BCE3E050;
  sub_1BCE1A7A0();
  sub_1BC94DCC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07D70);
  sub_1BC94DD20();
  sub_1BCE1DC30();
  sub_1BCE1A7D0();
  swift_allocObject();
  *(v0 + 24) = sub_1BCE1A7C0();
  return v0;
}

unint64_t sub_1BC94DCC8()
{
  result = qword_1EDA1F6B0;
  if (!qword_1EDA1F6B0)
  {
    sub_1BCE1A7B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1F6B0);
  }

  return result;
}

unint64_t sub_1BC94DD20()
{
  result = qword_1EDA1F6A0;
  if (!qword_1EDA1F6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD07D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1F6A0);
  }

  return result;
}

uint64_t sub_1BC94DD84(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BC94DDD8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BC94DE20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC94DE68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1BC94DF0C()
{
  result = type metadata accessor for VFXLoadRequest(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1BC94DF74()
{
  type metadata accessor for WeatherVFXConditionBackground();
  if (v0 <= 0x3F)
  {
    sub_1BC94E2D8();
    if (v1 <= 0x3F)
    {
      type metadata accessor for BackgroundAnimationData.Model(319);
      if (v2 <= 0x3F)
      {
        sub_1BCE1B7E0();
        if (v3 <= 0x3F)
        {
          sub_1BC94E330(319, qword_1EDA1D450);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for WeatherVFXConditionBackground()
{
  result = qword_1EDA1E6C8;
  if (!qword_1EDA1E6C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BC94E0AC()
{
  sub_1BC94E224(319, &qword_1EDA1EA70, &qword_1EBD08360);
  if (v0 <= 0x3F)
  {
    sub_1BC94E224(319, &qword_1EDA1EA78, &qword_1EBD08368);
    if (v1 <= 0x3F)
    {
      sub_1BC94E288();
      if (v2 <= 0x3F)
      {
        sub_1BC942DC4();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1BC94E224(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_1BCE1B470();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BC94E288()
{
  if (!qword_1EDA1EA68)
  {
    v0 = sub_1BCE1B470();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA1EA68);
    }
  }
}

void sub_1BC94E2D8()
{
  if (!qword_1EDA1CEF0)
  {
    type metadata accessor for BackgroundAnimationData.Model(255);
    v0 = sub_1BCE1DB10();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA1CEF0);
    }
  }
}

void sub_1BC94E330(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1BCE1DB10();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1BC94E37C()
{
  result = qword_1EDA1DB98[0];
  if (!qword_1EDA1DB98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA1DB98);
  }

  return result;
}

unint64_t sub_1BC94E3D4()
{
  result = qword_1EDA1DB90;
  if (!qword_1EDA1DB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1DB90);
  }

  return result;
}

uint64_t sub_1BC94E4B0(uint64_t a1, char a2)
{
  *(v2 + 16) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = sub_1BC94E4FC();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2 & 1;
  return v2;
}

id sub_1BC94E4FC()
{
  sub_1BC94E5B8();
  v0 = sub_1BC94E5FC(0x6874615079656BLL, 0xE700000000000000);
  [v0 setMass_];
  [v0 setStiffness_];
  [v0 setDamping_];
  [v0 setInitialVelocity_];
  v1 = v0;
  [v1 settlingDuration];
  [v1 setDuration_];

  return v1;
}

unint64_t sub_1BC94E5B8()
{
  result = qword_1EDA1C138;
  if (!qword_1EDA1C138)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDA1C138);
  }

  return result;
}

id sub_1BC94E5FC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_1BCE1D240();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() animationWithKeyPath_];

  return v3;
}

uint64_t OUTLINED_FUNCTION_26()
{

  return swift_allocObject();
}

unint64_t OUTLINED_FUNCTION_25_3()
{
  v0[84] = 11501794;
  v0[85] = 0xA300000000000000;
  v0[82] = 0;
  v0[83] = 0xE000000000000000;

  return sub_1BC970820();
}

uint64_t OUTLINED_FUNCTION_32()
{
}

uint64_t OUTLINED_FUNCTION_25_8()
{

  return sub_1BCE1BD00();
}

void *OUTLINED_FUNCTION_25_13()
{
  v5 = (*(v0 + 368) + v1);

  return memcpy(v5, (v3 + v2), 0x59uLL);
}

uint64_t OUTLINED_FUNCTION_25_16(double a1, double a2, double a3, double a4)
{
  *(v4 - 256) = a1;
  *&STACK[0x438] = a2;
  *&STACK[0x420] = a3;
  *&STACK[0x418] = a4;
}

uint64_t OUTLINED_FUNCTION_25_17()
{

  return sub_1BCE1D240();
}

uint64_t sub_1BC94E84C(uint64_t a1, uint64_t a2)
{
  result = sub_1BC94DDD8(&qword_1EDA1E5E8, a2, type metadata accessor for WeatherConditionBackgroundManager);
  *(a1 + 8) = result;
  return result;
}

uint64_t static Settings.VFX.overrideConditionBackgroundDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDA1BD90 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
  v3 = __swift_project_value_buffer(v2, qword_1EDA1BD98);

  return sub_1BC962464(v3, a1);
}

uint64_t sub_1BC94E928()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
  __swift_allocate_value_buffer(v0, qword_1EDA1BD98);
  v1 = __swift_project_value_buffer(v0, qword_1EDA1BD98);
  return sub_1BC94E9E4(v1);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1BC94E9E4@<X0>(uint64_t a1@<X8>)
{
  sub_1BCE1A230();
  sub_1BCE1A210();
  if (qword_1EDA1BD78 != -1)
  {
    swift_once();
  }

  sub_1BCE1A200();

  if (v5 < 1)
  {
    v2 = 1;
  }

  else
  {
    sub_1BCE18FF0();
    v2 = 0;
  }

  v3 = sub_1BCE19060();
  return __swift_storeEnumTagSinglePayload(a1, v2, 1, v3);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1BC94EAE0()
{
  v0 = sub_1BCE1A240();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BCE1A260();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  v8[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BC50);
  swift_allocObject();
  result = sub_1BCE1A2C0();
  qword_1EDA1BD80 = result;
  return result;
}

uint64_t static GeoHandler.getElevation(for:on:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = type metadata accessor for GeoHandler.CacheEntry();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_2_0();
  v60 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v52 - v9;
  v11 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v61 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  v17 = sub_1BCE19470();
  OUTLINED_FUNCTION_2();
  v19 = v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v52 - v24;
  sub_1BCE1A6E0();
  sub_1BC94F258(a1, v25, a2, &v62);
  v57 = v19;
  v58 = v17;
  v26 = v17;
  v27 = *(v19 + 8);
  result = v27(v25, v26);
  v29 = v63;
  if (v63 == 2)
  {
    v56 = a3;
    sub_1BCE1A6A0();
    v31 = v30;
    v33 = v32;
    v55 = a1;
    sub_1BCE1A6E0();
    v34 = Date.exactTimeOfDay(in:)();
    sub_1BC950114();
    v36 = v35;
    v54 = a2;
    sub_1BC9502D8(a2, v16, v31, v33, v34);
    v53 = *(v61 + 16);
    v53(v10, v16, v11);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
    v37 = objc_allocWithZone(MEMORY[0x1E69A1DF0]);
    v38 = sub_1BC951B1C(v10, 0);
    v39 = v38;
    if (v38)
    {
      [v38 altitude];
      v41 = v40;
    }

    else
    {
      v41 = 0xC066800000000000;
    }

    v42 = v58;
    v43 = sub_1BC951E44(v31, v33);
    CGFloat.wrappedHour(shiftedBy:)(-v36, v43);
    v45 = v44;

    (*(v61 + 8))(v16, v11);
    v27(v23, v42);
    v46 = v55;
    sub_1BCE1A6E0();
    v47 = v60;
    v53(v60, v54, v11);
    v48 = v59;
    v49 = (*(v57 + 16))(v47 + *(v59 + 20), v25, v42);
    v50 = v47 + *(v48 + 24);
    *v50 = v41;
    LODWORD(v61) = v45 <= v34;
    *(v50 + 8) = v61;
    v59 = v27;
    if (qword_1EDA1DF38 != -1)
    {
      v49 = swift_once();
    }

    v62 = qword_1EDA1DF40;
    MEMORY[0x1EEE9AC00](v49);
    *(&v52 - 2) = v46;
    *(&v52 - 1) = v47;
    sub_1BCE1A7D0();

    sub_1BCE1A960();
    (v59)(v25, v42);

    result = sub_1BC952964(v47);
    v51 = v56;
    *v56 = v41;
    *(v51 + 8) = v61;
  }

  else
  {
    *a3 = v62;
    *(a3 + 8) = v29 & 1;
  }

  return result;
}

uint64_t type metadata accessor for GeoHandler.CacheEntry()
{
  result = qword_1EDA1DFA0;
  if (!qword_1EDA1DFA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BC94F1CC()
{
  result = sub_1BCE19060();
  if (v1 <= 0x3F)
  {
    result = sub_1BCE19470();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BC94F258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19 = a2;
  v20 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD0C498);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for GeoHandler.CacheEntry();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDA1DF38 != -1)
  {
    v10 = swift_once();
  }

  v21 = qword_1EDA1DF40;
  MEMORY[0x1EEE9AC00](v10);
  *(&v18 - 2) = a1;
  sub_1BCE1A7D0();

  sub_1BCE1A960();

  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    result = sub_1BC94C0B4(v8, &unk_1EBD0C498);
LABEL_9:
    v16 = 0;
    v17 = 2;
    goto LABEL_10;
  }

  sub_1BC962A5C(v8, v12);
  sub_1BCE18F90();
  if (fabs(v14) >= 60.0 || (MEMORY[0x1BFB2BB80](v19, &v12[*(v9 + 20)]) & 1) == 0)
  {
    result = sub_1BC952964(v12);
    goto LABEL_9;
  }

  v15 = &v12[*(v9 + 24)];
  v16 = *v15;
  v17 = v15[8];
  result = sub_1BC952964(v12);
LABEL_10:
  *a4 = v16;
  *(a4 + 8) = v17;
  return result;
}

uint64_t sub_1BC94F4A8()
{
  v0 = sub_1BCE1A7B0();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1BCE1A7A0();
  sub_1BCE1A7D0();
  swift_allocObject();
  result = sub_1BCE1A7C0();
  qword_1EDA1DF40 = result;
  return result;
}

uint64_t sub_1BC94F544@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDA1DF20 != -1)
  {
    swift_once();
  }

  sub_1BCE1A6A0();
  sub_1BCE1DA70();
  swift_beginAccess();
  sub_1BC94F60C(qword_1EDA1DF28, a1);
  swift_endAccess();
}

uint64_t sub_1BC94F64C@<X0>(uint64_t a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  if (*(a1 + 16) && (v9 = a3(), (v10 & 1) != 0))
  {
    v11 = v9;
    v12 = *(a1 + 56);
    v13 = a2(0);
    sub_1BC96299C(v12 + *(*(v13 - 8) + 72) * v11, a5, a4);
    v14 = a5;
    v15 = 0;
    v16 = v13;
  }

  else
  {
    v16 = a2(0);
    v14 = a5;
    v15 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v14, v15, 1, v16);
}

void sub_1BC94F730(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1BCE19060();
  OUTLINED_FUNCTION_1();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_1BCE19470();
    OUTLINED_FUNCTION_1();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2 + 1;
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1BC94F81C(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_3_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1BC94F88C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BCE19060();
  OUTLINED_FUNCTION_1();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_1BCE19470();
    OUTLINED_FUNCTION_1();
    if (*(v11 + 84) != a2)
    {
      v13 = *(a1 + *(a3 + 24) + 8);
      if (v13 >= 2)
      {
        return ((v13 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v10;
    v9 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

double Date.exactTimeOfDay(in:)()
{
  v0 = sub_1BCE193C0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_2_0();
  v4 = v3 - v2;
  sub_1BCE188F0();
  OUTLINED_FUNCTION_2();
  v33 = v6;
  v34 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  sub_1BCE193E0();
  OUTLINED_FUNCTION_2();
  v31 = v11;
  v32 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  sub_1BCE192A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08570);
  v15 = *(v1 + 72);
  v16 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BCE3E030;
  v18 = v17 + v16;
  v19 = *MEMORY[0x1E6969A58];
  v20 = *(v1 + 104);
  v20(v18, v19, v0);
  v29 = *MEMORY[0x1E6969A88];
  (v20)(v18 + v15);
  sub_1BC94FCF8();
  sub_1BCE192E0();

  v21 = sub_1BCE18850();
  if (v22)
  {
    v20(v4, v19, v0);
    v30 = sub_1BCE193D0();
    v23 = v1;
    v24 = v4;
    (*(v1 + 8))(v4, v0);
  }

  else
  {
    v30 = v21;
    v24 = v4;
    v23 = v1;
  }

  v25 = sub_1BCE18890();
  if (v26)
  {
    v20(v24, v29, v0);
    v27 = sub_1BCE193D0();
    (*(v23 + 8))(v24, v0);
  }

  else
  {
    v27 = v25;
  }

  (*(v33 + 8))(v9, v34);
  (*(v31 + 8))(v14, v32);
  return v27 / 60.0 + v30;
}

void sub_1BC94FCF8()
{
  OUTLINED_FUNCTION_20_0();
  v5 = v4;
  v6 = sub_1BCE193C0();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_50();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_35();
  v30 = v9;
  OUTLINED_FUNCTION_88_3();
  if (v1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0E7B0), v10 = OUTLINED_FUNCTION_35_14(), *(v5 + 16)))
  {
    OUTLINED_FUNCTION_27_16();
    while (v11 < *(v5 + 16))
    {
      v12 = OUTLINED_FUNCTION_33_17(v11);
      (v5)(v12);
      OUTLINED_FUNCTION_32_12();
      sub_1BC9500CC(&qword_1EDA1F6B8, v13);
      OUTLINED_FUNCTION_33_6();
      sub_1BCE1D180();
      OUTLINED_FUNCTION_90_3();
      while (1)
      {
        v15 = v14 & v2;
        OUTLINED_FUNCTION_44_11();
        if (((v17 << v15) & v18) == 0)
        {
          break;
        }

        v19 = OUTLINED_FUNCTION_57_5();
        (v5)(v19);
        OUTLINED_FUNCTION_32_12();
        sub_1BC9500CC(&qword_1EDA1F640, v20);
        v21 = OUTLINED_FUNCTION_82_5();
        v22 = *v0;
        v23 = OUTLINED_FUNCTION_54_6();
        v22(v23);
        if (v21)
        {
          (v22)(v30, v6);
          v10 = v3;
          goto LABEL_12;
        }

        v14 = v15 + 1;
        v10 = v3;
      }

      v24 = OUTLINED_FUNCTION_52_7(v16);
      v25(v24);
      v26 = *(v10 + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_16;
      }

      *(v10 + 16) = v28;
LABEL_12:
      OUTLINED_FUNCTION_68_3();
      if (v29)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    OUTLINED_FUNCTION_21();
  }
}

uint64_t OUTLINED_FUNCTION_45_0()
{

  return sub_1BCE18EF0();
}

void OUTLINED_FUNCTION_45_1()
{
  if (!v1 & v0)
  {
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  sub_1BCB653B4(v5, v3, 1, v2);
}

uint64_t OUTLINED_FUNCTION_45_6()
{
}

void OUTLINED_FUNCTION_45_7()
{

  JUMPOUT(0x1BFB30850);
}

uint64_t OUTLINED_FUNCTION_45_8()
{
}

uint64_t sub_1BC94FFF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC95003C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC950084(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC9500CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC950114()
{
  v0 = sub_1BCE19060();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BCE19470();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BCE19460();
  sub_1BCE19050();
  v8 = sub_1BCE19410();
  v9 = *(v1 + 8);
  v9(v3, v0);
  (*(v5 + 8))(v7, v4);
  sub_1BCE19050();
  v10 = sub_1BCE19410();
  result = (v9)(v3, v0);
  if (__OFSUB__(v8, v10))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BC9502D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v65 = a1;
  v63 = a2;
  v8 = sub_1BCE19060();
  v61 = *(v8 - 8);
  v62 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1BCE192F0();
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BCE19320();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BCE192C0();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1BCE193E0();
  v58 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v52 - v23;
  sub_1BC950114();
  CGFloat.wrappedHour(shiftedBy:)(v25, a5);
  v64 = v26;
  v56 = v21;
  sub_1BCE19390();
  if (*v64.i64 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*v64.i64 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *v27.i64 = *v64.i64 - trunc(*v64.i64);
  v28.f64[0] = NAN;
  v28.f64[1] = NAN;
  a5 = *vbslq_s8(vnegq_f64(v28), v27, v64).i64 * 60.0;
  v29 = COERCE__INT64(fabs(a5)) > 0x7FEFFFFFFFFFFFFFLL;
  if ((v64.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v29)
  {
    goto LABEL_16;
  }

  if (a5 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a5 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_9;
  }

  v54 = *v64.i64;
  v30 = *MEMORY[0x1E69698D0];
  v31 = *(v17 + 104);
  v55 = v16;
  v31(v19, v30, v16);
  (*(v13 + 104))(v15, *MEMORY[0x1E69699C8], v12);
  v32 = v57;
  v33 = v59;
  (*(v57 + 104))(v11, *MEMORY[0x1E6969998], v59);
  v34 = v56;
  sub_1BCE19350();
  (*(v32 + 8))(v11, v33);
  (*(v13 + 8))(v15, v12);
  (*(v17 + 8))(v19, v55);
  (*(v58 + 8))(v34, v60);
  v13 = v62;
  if (__swift_getEnumTagSinglePayload(v24, 1, v62) != 1)
  {
    return v61[4](v63, v24, v13);
  }

  sub_1BC94C0B4(v24, &qword_1EBD07868);
  v11 = v61;
  if (qword_1EDA1EE78 != -1)
  {
    goto LABEL_19;
  }

LABEL_9:
  v35 = sub_1BCE1ACC0();
  __swift_project_value_buffer(v35, qword_1EDA1EE80);
  v36 = *(v11 + 2);
  v37 = v53;
  v36(v53, v65, v13);
  v38 = sub_1BCE1ACA0();
  v39 = sub_1BCE1D8B0();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v60 = v36;
    v41 = v40;
    v42 = swift_slowAlloc();
    v68[0] = v42;
    *v41 = 141559043;
    *(v41 + 4) = 1752392040;
    *(v41 + 12) = 2081;
    v66 = a3;
    v67 = a4;
    type metadata accessor for CLLocationCoordinate2D(0);
    v43 = sub_1BCE1D2D0();
    v45 = sub_1BC98FE38(v43, v44, v68);

    *(v41 + 14) = v45;
    *(v41 + 22) = 2082;
    sub_1BCCF98D8();
    v46 = sub_1BCE1E050();
    v48 = v47;
    (*(v11 + 1))(v37, v13);
    v49 = sub_1BC98FE38(v46, v48, v68);

    *(v41 + 24) = v49;
    *(v41 + 32) = 2050;
    *(v41 + 34) = v64.i64[0];
    *(v41 + 42) = 2050;
    *(v41 + 44) = a5;
    _os_log_impl(&dword_1BC940000, v38, v39, "Failed to generate elevation due to invalid localized date for location=%{private,mask.hash}s, date=%{public}s, localizedTime=%{public}f:%{public}f", v41, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x1BFB31B10](v42, -1, -1);
    v50 = v41;
    v36 = v60;
    MEMORY[0x1BFB31B10](v50, -1, -1);
  }

  else
  {

    (*(v11 + 1))(v37, v13);
  }

  return (v36)(v63, v65, v13);
}

void CGFloat.wrappedHour(shiftedBy:)(double a1, double a2)
{
  while (1)
  {
    v2 = a1 + a2;
    v3 = 24.0;
    if (v2 >= 0.0)
    {
      v3 = -24.0;
      if (v2 < 24.0)
      {
        break;
      }
    }

    a2 = v2 + v3;
    a1 = 0.0;
  }
}

id sub_1BC950AA0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13_15();
  v4 = sub_1BCE19060();
  v5 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v4) != 1)
  {
    v5 = sub_1BCE18FB0();
    (*(*(v4 - 8) + 8))(a1, v4);
  }

  v6 = OUTLINED_FUNCTION_6_20();
  v9 = [v7 v8];

  return v9;
}

uint64_t OUTLINED_FUNCTION_30_0()
{

  return sub_1BCE1D760();
}

uint64_t OUTLINED_FUNCTION_30_1()
{
}

uint64_t OUTLINED_FUNCTION_30_9()
{

  return sub_1BCE19D30();
}

void OUTLINED_FUNCTION_30_12()
{
  *(v1 + 16) = v2;
  v5 = v1 + 16 * v3;
  v6 = *(v0 + 656);
  *(v5 + 32) = *(v0 + 560);
  *(v5 + 40) = v6;
  *(v4 - 120) = v1;
}

uint64_t OUTLINED_FUNCTION_30_13(uint64_t a1)
{
  v4 = *(v2 - 456);

  return sub_1BCCAE950(a1, v1, v4);
}

uint64_t OUTLINED_FUNCTION_30_17(double a1, double a2, double a3)
{
  *&STACK[0x210] = a1;
  *&STACK[0x208] = a2;
  *&STACK[0x200] = a3;
}

uint64_t OUTLINED_FUNCTION_54_5(double a1, double a2, double a3, double a4)
{
  *&STACK[0x2C8] = a1;
  *&STACK[0x2C0] = a2;
  *&STACK[0x2B8] = a3;
  *&STACK[0x2B0] = a4;
}

uint64_t OUTLINED_FUNCTION_88()
{
  v1 = *v0;
  if (*v0 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void OUTLINED_FUNCTION_88_0()
{
}

uint64_t OUTLINED_FUNCTION_88_1()
{
}

uint64_t OUTLINED_FUNCTION_81_0()
{

  return sub_1BCE1DED0();
}

uint64_t OUTLINED_FUNCTION_81_2@<X0>(uint64_t a1@<X8>)
{

  return sub_1BCB601C4(v2, v1 + a1);
}

uint64_t OUTLINED_FUNCTION_81_4()
{

  return sub_1BCE1D210();
}

uint64_t OUTLINED_FUNCTION_51_1()
{

  return sub_1BCE1D210();
}

uint64_t OUTLINED_FUNCTION_51_2()
{

  return sub_1BCE18F30();
}

uint64_t OUTLINED_FUNCTION_51_3()
{

  return sub_1BCE1DFE0();
}

uint64_t OUTLINED_FUNCTION_51_8(double a1, double a2, double a3, double a4)
{
  *&STACK[0x268] = a1;
  *&STACK[0x260] = a2;
  *&STACK[0x258] = a3;
  *&STACK[0x250] = a4;
}

unint64_t sub_1BC950FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1BCE1E090() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t OUTLINED_FUNCTION_34_0()
{

  return sub_1BCE191B0();
}

uint64_t OUTLINED_FUNCTION_34_14(double a1, double a2, double a3, double a4)
{
  *&STACK[0x390] = a1;
  *&STACK[0x388] = a2;
  *&STACK[0x380] = a3;
  *&STACK[0x378] = a4;
}

uint64_t OUTLINED_FUNCTION_43_4()
{

  return sub_1BCE1E100();
}

uint64_t OUTLINED_FUNCTION_43_7()
{
}

uint64_t OUTLINED_FUNCTION_28_0()
{

  return type metadata accessor for ConditionsComplicationViewModel();
}

uint64_t OUTLINED_FUNCTION_28_2()
{

  return sub_1BCE1E090();
}

uint64_t OUTLINED_FUNCTION_28_3()
{
  v3 = *(v0 + 208);
  v4 = *(v0 + 24);

  return sub_1BC97EFD0(v1, v3, v4);
}

void OUTLINED_FUNCTION_28_5()
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);

  static WeatherFormatStyle<>.weather(_:locale:)();
}

uint64_t OUTLINED_FUNCTION_28_7()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_28_11()
{

  return sub_1BCE18F10();
}

uint64_t OUTLINED_FUNCTION_28_14()
{

  return sub_1BCE1DF70();
}

uint64_t OUTLINED_FUNCTION_28_15()
{
}

uint64_t _s9WeatherUI16MoonDataProviderC13moonEphemeris3for10coordinateAA09CelestialG0CSg10Foundation4DateV_So22CLLocationCoordinate2DVtF_0(uint64_t a1, double a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for MoonDataProvider.MoonEphemerisCacheKey(0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = (&v22 - v12);
  v14 = *(v11 + 28);
  v15 = sub_1BCE19060();
  v16 = *(*(v15 - 8) + 16);
  v16(v13 + v14, a1, v15);
  *v13 = a2;
  v13[1] = a3;

  sub_1BCE1A9B0();

  v17 = v23;
  if (!v23)
  {
    v16(v8, a1, v15);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v15);
    v18 = objc_allocWithZone(MEMORY[0x1E69A1BD8]);
    v19 = sub_1BC950AA0(v8, 4);
    type metadata accessor for CelestialEphemeris();
    swift_allocObject();
    v20 = v19;
    v17 = sub_1BC958658(v19);
    sub_1BC9529C0();
    v23 = v17;

    sub_1BCE1A9C0();
  }

  sub_1BC9589E8(v13, type metadata accessor for MoonDataProvider.MoonEphemerisCacheKey);
  return v17;
}

uint64_t OUTLINED_FUNCTION_50_0()
{
  v6 = *(v4 - 248) + v0;

  return sub_1BC9660CC(v6, v3 + v2, v1);
}

uint64_t OUTLINED_FUNCTION_50_1()
{

  return sub_1BCE1D750();
}

uint64_t OUTLINED_FUNCTION_50_2()
{

  return sub_1BC94C05C(v1, v0);
}

uint64_t OUTLINED_FUNCTION_50_3()
{

  return sub_1BCE1D370();
}

uint64_t OUTLINED_FUNCTION_50_7(double a1, double a2, double a3, double a4)
{
  *&STACK[0x248] = a1;
  *&STACK[0x240] = a2;
  *&STACK[0x238] = a3;
  *&STACK[0x230] = a4;
}

uint64_t OUTLINED_FUNCTION_26_1()
{

  return sub_1BCE1DF70();
}

uint64_t OUTLINED_FUNCTION_26_5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v5 - 128) = v3;
  *(v5 - 120) = v4;
  *(v5 - 144) = a1;
  *(v5 - 136) = a2;
  *(v5 - 160) = a3;
  return 0;
}

uint64_t OUTLINED_FUNCTION_26_9()
{

  return sub_1BCE1BD00();
}

uint64_t OUTLINED_FUNCTION_26_10()
{

  return MEMORY[0x1EEDC2E28](0, 0xE000000000000000);
}

__n128 OUTLINED_FUNCTION_26_14()
{
  v1 = *(v0 + 2480);
  result = *(v0 + 2496);
  *(v0 + 16) = result;
  *(v0 + 32) = v1;
  *(v0 + 8) = *(v0 + 2512);
  return result;
}

uint64_t OUTLINED_FUNCTION_26_17()
{
}

void OUTLINED_FUNCTION_26_18()
{

  sub_1BC98B0E4();
}

uint64_t sub_1BC9519FC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD0C498);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - v4;
  if (qword_1EDA1DF20 != -1)
  {
    swift_once();
  }

  sub_1BCE1A6A0();
  sub_1BCE1DA70();
  sub_1BC952094(a2, v5);
  v6 = type metadata accessor for GeoHandler.CacheEntry();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  swift_beginAccess();
  sub_1BC9520F8();
  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_14_7()
{
}

uint64_t OUTLINED_FUNCTION_14_9@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_14_10()
{

  return sub_1BCE1AC20();
}

uint64_t OUTLINED_FUNCTION_14_13()
{

  return sub_1BCE1B610();
}

void OUTLINED_FUNCTION_14_15()
{
  *(v1 - 136) = v0 + 32;
  *(v1 - 200) = v0;
  *(v1 - 176) = v0 + 8;
  *(v1 - 168) = v0 + 16;
}

uint64_t OUTLINED_FUNCTION_14_19(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_1BCBF4868(v2, v3);
}

void *OUTLINED_FUNCTION_14_23(void *a1)
{

  return memcpy(a1, v1, 0x918uLL);
}

uint64_t OUTLINED_FUNCTION_14_28()
{

  return sub_1BCE1DFC0();
}

uint64_t OUTLINED_FUNCTION_14_32()
{

  return sub_1BCE192E0();
}

uint64_t OUTLINED_FUNCTION_14_34(double a1, double a2, double a3, double a4)
{
  *&STACK[0x2B0] = a1;
  *&STACK[0x2A8] = a2;
  *&STACK[0x2A0] = a3;
  *&STACK[0x298] = a4;
}

uint64_t OUTLINED_FUNCTION_14_35()
{

  return sub_1BCE1A2E0();
}

void OUTLINED_FUNCTION_14_36()
{

  JUMPOUT(0x1BFB30880);
}

double sub_1BC951E44(double a1, double a2)
{
  v4 = sub_1BCE193E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BCE19060();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - v13;
  sub_1BCE18E60();
  v16 = [objc_allocWithZone(MEMORY[0x1E69A2598]) initWithLocation:a1 time:a2 altitudeInDegrees:v15 accuracy:{*MEMORY[0x1E69A15F8], 60.0}];
  [v16 nextEventOfType_];
  sub_1BCE18E50();

  sub_1BCE19390();
  sub_1BCE19290();
  (*(v5 + 8))(v7, v4);
  sub_1BCE18F90();
  v18 = v17;
  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v14, v8);
  return v18 / 60.0 / 60.0;
}

uint64_t sub_1BC952094(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeoHandler.CacheEntry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC9520F8()
{
  OUTLINED_FUNCTION_27_11();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD0C498);
  OUTLINED_FUNCTION_14(v3);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_24_19();
  type metadata accessor for GeoHandler.CacheEntry();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  if (__swift_getEnumTagSinglePayload(v0, 1, v6) == 1)
  {
    v7 = OUTLINED_FUNCTION_40_1();
    v9 = sub_1BC94C05C(v7, v8);
    OUTLINED_FUNCTION_32_9(v9, v10, &qword_1EBD085D8, &unk_1BCE495E0, type metadata accessor for GeoHandler.CacheEntry);

    return sub_1BC94C05C(v2, &unk_1EBD0C498);
  }

  else
  {
    OUTLINED_FUNCTION_40_1();
    sub_1BC9526CC();
    swift_isUniquelyReferenced_nonNull_native();
    v12 = OUTLINED_FUNCTION_13_35();
    sub_1BC958554(v12, v13);

    *v1 = v14;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_4()
{

  return sub_1BC94C0B4(v1, v0);
}

void OUTLINED_FUNCTION_13_6(__n128 a1)
{
  *(v1 + 72) = a1;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
}

void OUTLINED_FUNCTION_13_9(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v20 = (v19 + a1);
  *v20 = a18;
  v20[1] = a19;
}

uint64_t OUTLINED_FUNCTION_13_11()
{

  return sub_1BCE1B610();
}

unint64_t OUTLINED_FUNCTION_13_17()
{
  v0[91] = v1;
  v0[92] = v2;
  v0[89] = 11501794;
  v0[90] = 0xA300000000000000;
  v0[87] = 0;
  v0[88] = 0xE000000000000000;

  return sub_1BC970820();
}

uint64_t OUTLINED_FUNCTION_13_19@<X0>(uint64_t a1@<X8>)
{
  *(v2 + a1) = 0;

  return sub_1BCB5F17C(v2, v1);
}

uint64_t OUTLINED_FUNCTION_13_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1BCB37580(v5, 0, v4, a4);
}

void OUTLINED_FUNCTION_13_24()
{
  v2 = *(v0 + 16) + 1;

  sub_1BC998D04(0, v2, 1, v0);
}

void OUTLINED_FUNCTION_13_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, char a23, uint64_t a24, char a25, __int16 a26, char a27, uint64_t a28, char a29, __int16 a30, char a31, uint64_t a32, int a33, char a34)
{
  v34[3965] = a34;
  v34[3966] = a31;
  v34[3967] = a29;
  v34[3968] = a23;
  v34[3969] = a25;
  v34[3970] = a27;
}

__n128 OUTLINED_FUNCTION_13_29@<Q0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  *(v1 - 368) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_36()
{

  return sub_1BCE1DF10();
}

uint64_t OUTLINED_FUNCTION_13_41(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(v3 - 128) = a3;
  *(v3 - 104) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_42()
{

  return sub_1BCE1DC00();
}

uint64_t OUTLINED_FUNCTION_13_44(double a1, double a2, double a3, double a4)
{
  *&STACK[0x290] = a1;
  *&STACK[0x288] = a2;
  *&STACK[0x280] = a3;
  *&STACK[0x278] = a4;
}

uint64_t OUTLINED_FUNCTION_13_45()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_46()
{

  return sub_1BCE1A2E0();
}

uint64_t sub_1BC9526CC()
{
  v1 = OUTLINED_FUNCTION_12_0();
  v2(v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_10_1();
  v4(v3);
  return v0;
}

double OUTLINED_FUNCTION_69_1()
{
  result = 0.0;
  v2 = *(v0 + 520);
  *v2 = 0u;
  v2[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_69_2(uint64_t a1)
{

  return sub_1BC94C05C(a1, v1);
}

uint64_t OUTLINED_FUNCTION_42_3(uint64_t a1, uint64_t a2)
{
  *(v2 + 688) = a1;
  *(v2 + 680) = a2;

  return sub_1BC9807F0(v3, v5, v4);
}

uint64_t OUTLINED_FUNCTION_42_5()
{

  return sub_1BCE1E000();
}

uint64_t OUTLINED_FUNCTION_42_11()
{
}

void OUTLINED_FUNCTION_85_1()
{

  JUMPOUT(0x1BFB31B10);
}

uint64_t OUTLINED_FUNCTION_92_0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3)
{
  a2 = a1;
  a3 = v3;

  return MEMORY[0x1EEE699B8](&a2, v4, v5);
}

uint64_t OUTLINED_FUNCTION_92_1()
{

  return sub_1BCE191B0();
}

uint64_t OUTLINED_FUNCTION_92_2(uint64_t a1)
{

  return sub_1BC94C05C(a1, v1);
}

uint64_t sub_1BC952964(uint64_t a1)
{
  v2 = type metadata accessor for GeoHandler.CacheEntry();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC9529C0()
{
  v1 = OUTLINED_FUNCTION_12_0();
  v2(v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_10_1();
  v4(v3);
  return v0;
}

uint64_t sub_1BC952A14()
{
  v1 = *(v0 + 8);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1BFB30880](*&v1);
  OUTLINED_FUNCTION_29();
  type metadata accessor for MoonDataProvider.MoonEphemerisCacheKey(0);
  sub_1BCE19060();
  OUTLINED_FUNCTION_0_29();
  sub_1BC94B930(v2, v3);
  return sub_1BCE1D190();
}

uint64_t sub_1BC952ABC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BC952B1C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_9_0(a1, a2, a3);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(v3, v4);
  return v3;
}

void MoonDataProvider.moonRiseSetEvents(in:coordinate:)()
{
  OUTLINED_FUNCTION_43_1();
  OUTLINED_FUNCTION_13_15();
  v5 = v4;
  type metadata accessor for MoonRiseSet();
  OUTLINED_FUNCTION_2();
  v50 = v7;
  v51 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3();
  v10 = v8 - v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v44 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = v44 - v15;
  v17 = type metadata accessor for MoonDataProvider.LunarEventsCacheKey(0);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v44 - v20;
  sub_1BC99F010(v5, v44 - v20, &qword_1EBD08D40);
  v22 = &v21[*(v18 + 28)];
  *v22 = v3;
  *(v22 + 1) = v2;

  sub_1BCE1A9B0();

  if (v52)
  {
    OUTLINED_FUNCTION_10_18();
    v24 = v21;
LABEL_18:
    sub_1BC9589E8(v24, v23);
    OUTLINED_FUNCTION_44();
  }

  else
  {
    v48 = v14;
    v49 = v10;
    v44[1] = v1;
    v45 = v21;
    v25 = OUTLINED_FUNCTION_6_20();
    v46 = v0;
    v27 = sub_1BC953320(v25, v26);
    v28 = sub_1BCE18FB0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08D40);
    v29 = sub_1BCE18FB0();
    v44[0] = v27;
    v30 = [v27 lunarEventsFrom:v28 to:v29];

    sub_1BC9533EC();
    v31 = sub_1BCE1D570();

    v32 = sub_1BC94791C(v31);
    v33 = 0;
    v34 = MEMORY[0x1E69E7CC0];
    v35 = &selRef_setComputePipelineState_;
    v47 = v16;
    while (1)
    {
      if (v32 == v33)
      {

        v43 = v45;
        sub_1BC9529C0();
        v52 = v34;

        sub_1BCE1A9C0();

        OUTLINED_FUNCTION_10_18();
        v24 = v43;
        goto LABEL_18;
      }

      if ((v31 & 0xC000000000000001) != 0)
      {
        v40 = OUTLINED_FUNCTION_10_1();
        v36 = MEMORY[0x1BFB304A0](v40);
      }

      else
      {
        if (v33 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v36 = *(v31 + 8 * v33 + 32);
      }

      v37 = v36;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if ([v36 v35[143]] < 2)
      {
        v38 = [v37 date];
        sub_1BCE19020();

        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_7_28();
        sub_1BC960144();
        sub_1BC960144();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_38_5();
          sub_1BC953430();
          v34 = v41;
        }

        v39 = *(v34 + 16);
        v35 = &selRef_setComputePipelineState_;
        if (v39 >= *(v34 + 24) >> 1)
        {
          OUTLINED_FUNCTION_38_5();
          sub_1BC953430();
          v34 = v42;
        }

        *(v34 + 16) = v39 + 1;
        OUTLINED_FUNCTION_8_19();
        sub_1BC960144();
        ++v33;
      }

      else
      {

        ++v33;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }
}

uint64_t OUTLINED_FUNCTION_17_4()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0);
}

uint64_t OUTLINED_FUNCTION_17_6()
{

  return sub_1BCE1AC20();
}

uint64_t OUTLINED_FUNCTION_17_9(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{

  return sub_1BCABB250(v4, v3, a3);
}

uint64_t OUTLINED_FUNCTION_38_0(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v2 + v1, 1, a1);
}

void *OUTLINED_FUNCTION_17_19(void *a1)
{

  return memcpy(a1, &STACK[0x49A0], 0x918uLL);
}

double OUTLINED_FUNCTION_17_20@<D0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  *(v1 - 368) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_21()
{

  return swift_once();
}

void OUTLINED_FUNCTION_17_22()
{

  JUMPOUT(0x1BFB2FB00);
}

uint64_t OUTLINED_FUNCTION_17_23()
{
}

uint64_t OUTLINED_FUNCTION_17_24(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_17_25()
{

  return sub_1BCE1D210();
}

uint64_t OUTLINED_FUNCTION_17_27()
{

  return sub_1BC99F06C();
}

uint64_t OUTLINED_FUNCTION_17_29()
{

  return sub_1BCE18680();
}

uint64_t OUTLINED_FUNCTION_17_31(unint64_t *a1)
{

  return sub_1BCD8EB38(a1);
}

uint64_t OUTLINED_FUNCTION_17_32(double a1, double a2, double a3, double a4)
{
  *&STACK[0x310] = a1;
  *&STACK[0x308] = a2;
  *&STACK[0x300] = a3;
  *&STACK[0x2F8] = a4;
}

uint64_t OUTLINED_FUNCTION_17_33()
{

  return swift_beginAccess();
}

id sub_1BC953320(double a1, double a2)
{

  sub_1BCE1A9B0();

  result = v7;
  if (!v7)
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E69A2188]) initWithLocation_];

    v6 = v5;
    sub_1BCE1A9C0();

    return v6;
  }

  return result;
}

unint64_t sub_1BC9533EC()
{
  result = qword_1EDA1C158[0];
  if (!qword_1EDA1C158[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EDA1C158);
  }

  return result;
}

void sub_1BC953430()
{
  OUTLINED_FUNCTION_1_37();
  if (v4)
  {
    OUTLINED_FUNCTION_0_39();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_12_23();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_43();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_19_15(v2, v5, &qword_1EBD09CB0, &unk_1BCE528C0);
  OUTLINED_FUNCTION_13_20();
  type metadata accessor for MoonRiseSet();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_2_37(v8);
    sub_1BCA14F80(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_32();
  }
}

void sub_1BC953500(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_17_3();
  if (v8 && (a4(0), OUTLINED_FUNCTION_4(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_5_2();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_5_2();

    swift_arrayInitWithTakeFrontToBack();
  }
}

uint64_t sub_1BC9535B4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void (**a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v102 = a7;
  v99 = a6;
  v113 = a5;
  v114 = a4;
  v126 = a3;
  v128 = a1;
  v105 = a8;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08D38);
  v9 = MEMORY[0x1EEE9AC00](v124);
  v112 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v111 = &v99 - v11;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08D40);
  MEMORY[0x1EEE9AC00](v110);
  v123 = &v99 - v12;
  v13 = sub_1BCE19060();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v101 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v119 = &v99 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v99 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v125 = &v99 - v22;
  v23 = type metadata accessor for MoonRiseSet();
  v127 = *(v23 - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v104 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v103 = &v99 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v99 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v99 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v121 = &v99 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v120 = &v99 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08D28);
  v38 = MEMORY[0x1EEE9AC00](v37 - 8);
  v108 = &v99 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v109 = &v99 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v44 = &v99 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v99 - v45;
  v100 = a2;
  v129 = a2;
  sub_1BC9602E8();
  v47 = v46;
  sub_1BC99F010(v46, v44, &qword_1EBD08D28);
  v128 = v23;
  if (__swift_getEnumTagSinglePayload(v44, 1, v23) != 1)
  {
    sub_1BC94C05C(v46, &qword_1EBD08D28);
    sub_1BC960144();
    v89 = v121;
    sub_1BC960144();
    v90 = v105;
    (*(v14 + 32))(v105, v89, v13);
    v91 = v90;
    v92 = 0;
    v93 = v13;
    return __swift_storeEnumTagSinglePayload(v91, v92, 1, v93);
  }

  sub_1BC94C05C(v44, &qword_1EBD08D28);
  v49 = *(v14 + 16);
  v48 = (v14 + 16);
  v50 = v125;
  v118 = v49;
  v49(v125, v126, v13);
  v51 = 1;
  sub_1BCE18EF0();
  v107 = sub_1BC94B930(&qword_1EDA1EF40, MEMORY[0x1E6969530]);
  v120 = v48 + 16;
  v121 = v48;
  v126 = (v48 - 8);
  v106 = v21;
  v122 = v13;
  while (2)
  {
    if (sub_1BCE1D1F0())
    {
      v115 = v51;
      v52 = v111;
      v53 = v118;
      v118(v111, v50, v13);
      v54 = v124;
      v53(v52 + *(v124 + 48), v21, v13);
      v55 = v112;
      sub_1BC99F010(v52, v112, &qword_1EBD08D38);
      v117 = *(v54 + 48);
      v56 = *v120;
      (*v120)(v123, v55, v13);
      v57 = *v126;
      (*v126)(v117 + v55, v13);
      sub_1BC958A40(v52, v55);
      v58 = v123;
      v59 = &v123[*(v110 + 36)];
      v60 = v55 + *(v124 + 48);
      v116 = v56;
      v56(v59, v60, v13);
      v57(v55, v13);
      MoonDataProvider.moonRiseSetEvents(in:coordinate:)();
      v62 = v61;
      sub_1BC94C05C(v58, &qword_1EBD08D40);
      v63 = 0;
      v21 = *(v62 + 16);
      while (1)
      {
        if (v21 == v63)
        {
          v57(v125, v122);

          v64 = 1;
          v65 = v109;
          goto LABEL_11;
        }

        if (v63 >= *(v62 + 16))
        {
          __break(1u);
          goto LABEL_22;
        }

        sub_1BC9529C0();
        sub_1BC9529C0();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        ++v63;
        sub_1BC9589E8(v33, type metadata accessor for MoonRiseSet);
        sub_1BC9589E8(v30, type metadata accessor for MoonRiseSet);
      }

      v57(v125, v122);

      sub_1BC9589E8(v30, type metadata accessor for MoonRiseSet);
      v65 = v109;
      sub_1BC960144();
      v64 = 0;
LABEL_11:
      v117 = v57;
      v66 = v128;
      __swift_storeEnumTagSinglePayload(v65, v64, 1, v128);
      v67 = v108;
      sub_1BC99F010(v65, v108, &qword_1EBD08D28);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v67, 1, v66);
      v21 = v106;
      if (EnumTagSinglePayload != 1)
      {
        sub_1BC94C05C(v65, &qword_1EBD08D28);
        v94 = v122;
        v117(v21, v122);
        sub_1BC94C05C(v47, &qword_1EBD08D28);
        sub_1BC960144();
        v95 = v104;
        sub_1BC960144();
        v96 = v105;
        v116(v105, v95, v94);
        v91 = v96;
        v92 = 0;
        v93 = v94;
        return __swift_storeEnumTagSinglePayload(v91, v92, 1, v93);
      }

      sub_1BC94C05C(v67, &qword_1EBD08D28);
      v69 = v125;
      v13 = v122;
      v118(v125, v21, v122);
      sub_1BCE18EF0();
      v50 = v69;
      sub_1BC94C05C(v65, &qword_1EBD08D28);
      v117(v21, v13);
      v116(v21, v119, v13);
      v51 = v115 + 1;
      if (v115 != 30)
      {
        continue;
      }

      if (qword_1EDA1EE78 == -1)
      {
        goto LABEL_14;
      }
    }

    else
    {
LABEL_22:
      __break(1u);
    }

    break;
  }

  swift_once();
LABEL_14:
  v70 = sub_1BCE1ACC0();
  __swift_project_value_buffer(v70, qword_1EDA1EE80);
  v71 = v101;
  v72 = v122;
  v118(v101, v100, v122);
  v73 = v102;

  v74 = sub_1BCE1ACA0();
  v75 = sub_1BCE1D8B0();

  v76 = os_log_type_enabled(v74, v75);
  v77 = v105;
  if (v76)
  {
    v78 = swift_slowAlloc();
    v128 = v47;
    v79 = v78;
    v127 = swift_slowAlloc();
    v130 = v127;
    *v79 = 136315651;
    sub_1BC94B930(&qword_1EDA1BF08, MEMORY[0x1E6969530]);
    v80 = v77;
    v81 = sub_1BCE1E050();
    v82 = v71;
    v84 = v83;
    v85 = v117;
    v117(v82, v122);
    v86 = sub_1BC98FE38(v81, v84, &v130);
    v72 = v122;

    *(v79 + 4) = v86;
    v77 = v80;
    *(v79 + 12) = 2160;
    *(v79 + 14) = 1752392040;
    *(v79 + 22) = 2081;
    *(v79 + 24) = sub_1BC98FE38(v99, v73, &v130);
    _os_log_impl(&dword_1BC940000, v74, v75, "Did not find a next moonset within the next 30 days from %s at coordinate=%{private,mask.hash}s", v79, 0x20u);
    v87 = v127;
    swift_arrayDestroy();
    MEMORY[0x1BFB31B10](v87, -1, -1);
    MEMORY[0x1BFB31B10](v79, -1, -1);

    v85(v21, v72);
    v85(v125, v72);
    v88 = v128;
  }

  else
  {

    v97 = v117;
    v117(v71, v72);
    v97(v21, v72);
    v97(v125, v72);
    v88 = v47;
  }

  sub_1BC94C05C(v88, &qword_1EBD08D28);
  v91 = v77;
  v92 = 1;
  v93 = v72;
  return __swift_storeEnumTagSinglePayload(v91, v92, 1, v93);
}

uint64_t sub_1BC9542F8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1BC954350(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_27_3()
{

  return swift_setDeallocating();
}

uint64_t OUTLINED_FUNCTION_27_6()
{

  return sub_1BCE1E090();
}

uint64_t OUTLINED_FUNCTION_27_14(uint64_t a1)
{

  return sub_1BC94C05C(a1, v1);
}

void OUTLINED_FUNCTION_27_16()
{
  *(v2 - 96) = v1 + 56;
  v3 = *(v2 - 120);
  v4 = *(v3 + 80);
  *(v2 - 144) = v0;
  *(v2 - 136) = v0 + ((v4 + 32) & ~v4);
  *(v2 - 104) = v3 + 16;
  *(v2 - 152) = v3 + 32;
}

uint64_t sub_1BC95451C()
{
  v0 = sub_1BCE19060();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MoonRiseSet();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  sub_1BC9529C0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1BC9589E8(v9, type metadata accessor for MoonRiseSet);
  if (EnumCaseMultiPayload == 1)
  {
    v11 = 0;
  }

  else
  {
    sub_1BC9529C0();
    (*(v1 + 32))(v3, v7, v0);
    sub_1BC94B930(&qword_1EDA1EF40, MEMORY[0x1E6969530]);
    v12 = sub_1BCE1D1E0();
    (*(v1 + 8))(v3, v0);
    v11 = v12 ^ 1;
  }

  return v11 & 1;
}

id sub_1BC95475C@<X0>(uint64_t a1@<X0>, SEL *a2@<X1>, void *a3@<X8>)
{
  result = [*(a1 + 16) *a2];
  if (result)
  {
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BC95479C()
{
  result = [OUTLINED_FUNCTION_0_11() librationPositionAngle];
  *v0 = v2;
  return result;
}

BOOL sub_1BC9547E4()
{
  v2 = OUTLINED_FUNCTION_12_0();
  type metadata accessor for MoonDataProvider.MoonEphemerisCacheKey(v2);
  return (sub_1BCE19010() & 1) != 0 && *v1 == *v0 && v1[1] == v0[1];
}

void sub_1BC954854()
{
  sub_1BC95A6B4();
  if (v0 <= 0x3F)
  {
    sub_1BCA9D72C();
    if (v1 <= 0x3F)
    {
      sub_1BC960754();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t DeviceSupportsStickyHeaders()
{
  if (DeviceSupportsStickyHeaders_onceToken != -1)
  {
    DeviceSupportsStickyHeaders_cold_1();
  }

  return DeviceSupportsStickyHeaders_result;
}

uint64_t __DeviceSupportsForegroundEffects_block_invoke()
{
  result = MGIsDeviceOneOfType();
  DeviceSupportsForegroundEffects_result = result ^ 1;
  return result;
}

uint64_t static DividerStyle<>.quaternary.getter@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_1BC95500C@<X0>(void *a1@<X8>)
{
  result = sub_1BCE1BA20();
  *a1 = v3;
  return result;
}

unint64_t sub_1BC955048(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t DeviceIsSlow()
{
  if (DeviceIsSlow_onceToken[0] != -1)
  {
    DeviceIsSlow_cold_1();
  }

  return DeviceIsSlow_result;
}

uint64_t sub_1BC9550A4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1BCE1ACC0();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1BCE1ACB0();
}

unint64_t sub_1BC95511C()
{
  OUTLINED_FUNCTION_11_12();
  sub_1BCE1D370();
  sub_1BCE1E150();
  v0 = OUTLINED_FUNCTION_10_2();

  return sub_1BC950FCC(v0, v1, v2);
}

void sub_1BC9551A8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_7_52(a1, a2, a3, a4, a5);
  v8 = (v7 + 16 * v6);
  *v8 = v9;
  v8[1] = v10;
  v12 = v11(0);
  OUTLINED_FUNCTION_14(v12);
  sub_1BC9526CC();
  OUTLINED_FUNCTION_23_26();
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v13;
  }
}

void MoonDataProvider.weatherBackgroundMoonData(for:timeZone:coordinate:)()
{
  OUTLINED_FUNCTION_13_15();
  v137 = v6;
  v138 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
  v10 = OUTLINED_FUNCTION_14(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3();
  v136 = v11 - v12;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_35();
  v135 = v14;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08D38);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_3();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v122 - v20;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08D40);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = v122 - v23;
  v139 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v141 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_3();
  v131 = v27 - v28;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_35();
  v142 = v30;
  OUTLINED_FUNCTION_13();
  v31 = sub_1BCE193E0();
  OUTLINED_FUNCTION_2();
  v134 = v32;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_2_0();
  v140 = v35 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07870);
  v37 = OUTLINED_FUNCTION_14(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_20_10();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_36();
  v39 = type metadata accessor for BackgroundMoonData();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v41);
  if (qword_1EDA1DAE8 != -1)
  {
    swift_once();
  }

  if (byte_1EDA1DAF0 == 1)
  {
    v127 = v0;
    v128 = v31;
    v130 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1BCE3E030;
    v43 = MEMORY[0x1E69E63B0];
    v44 = MEMORY[0x1E69E6438];
    *(v42 + 56) = MEMORY[0x1E69E63B0];
    *(v42 + 64) = v44;
    *(v42 + 32) = v4;
    *(v42 + 96) = v43;
    *(v42 + 104) = v44;
    *(v42 + 72) = v3;
    v45 = sub_1BCE1D2B0();
    v47 = v46;
    v129 = v45;
    v143 = v45;
    v144 = v46;

    sub_1BCE1A9A0();

    if (__swift_getEnumTagSinglePayload(v1, 1, v39) != 1)
    {

      sub_1BC960144();
      sub_1BC960144();
LABEL_16:
      OUTLINED_FUNCTION_39_1();
      goto LABEL_17;
    }

    v126 = v47;
    sub_1BC94C05C(v1, &qword_1EBD07870);
    v48 = OUTLINED_FUNCTION_6_20();
    v49 = v138;
    v51 = _s9WeatherUI16MoonDataProviderC13moonEphemeris3for10coordinateAA09CelestialG0CSg10Foundation4DateV_So22CLLocationCoordinate2DVtF_0(v138, v48, v50);
    if (v51)
    {
      v125 = v2;
      v131 = v51;
      sub_1BCE192A0();
      sub_1BCE18EF0();
      OUTLINED_FUNCTION_0_29();
      sub_1BC94B930(v52, v53);
      OUTLINED_FUNCTION_10_3();
      v54 = v139;
      v55 = sub_1BCE1D1F0();
      v137 = v39;
      if (v55)
      {
        v56 = v141;
        v57 = *(v141 + 16);
        v122[1] = v141 + 16;
        v123 = v57;
        v57(v21, v49, v54);
        v58 = v133;
        v57(&v21[*(v133 + 48)], v142, v54);
        sub_1BC99F010(v21, v18, &qword_1EBD08D38);
        v59 = *(v58 + 48);
        v60 = *(v56 + 32);
        v60(v24, v18, v54);
        v61 = *(v56 + 8);
        v61(v18 + v59, v54);
        v124 = v61;
        v141 = v56 + 8;
        sub_1BC958A40(v21, v18);
        v60(&v24[*(v132 + 36)], v18 + *(v58 + 48), v54);
        v61(v18, v54);
        OUTLINED_FUNCTION_6_20();
        MoonDataProvider.moonRiseSetEvents(in:coordinate:)();
        sub_1BC94C05C(v24, &qword_1EBD08D40);
        v62 = v135;
        v63 = v138;
        OUTLINED_FUNCTION_6_20();
        v64 = v129;
        v65 = v126;
        sub_1BC9535B4(v66, v67, v68, v69, v70, v129, v126, v71);
        v72 = v136;
        OUTLINED_FUNCTION_10_3();
        OUTLINED_FUNCTION_6_20();
        sub_1BC9595BC(v73, v74, v75, v76, v64, v65, v77);

        v78 = v131;
        GEOCelestialEphemeris.moonPhaseAngle.getter();
        v80 = fmod(v79 + 180.0, 360.0);
        v81 = v125;
        v123(v125, v63, v54);
        v82 = v137;
        sub_1BC99F010(v72, v81 + v137[5], &qword_1EBD07868);
        sub_1BC99F010(v62, v81 + v82[6], &qword_1EBD07868);
        v83 = CelestialEphemeris.horizontalCoord.getter();
        [v83 altitude];
        v85 = v84;

        v86 = CelestialEphemeris.librationPositionAngle.getter();
        v87 = v86 - CelestialEphemeris.topocentricParallacticAngle.getter();
        [*(v78 + 16) phaseAngle];
        v89 = v88;
        [*(v78 + 16) parallacticAngle];
        v91 = static MoonImage.imageName(phaseAngle:parallacticAngle:)(v89, v90);
        *(v81 + v82[7]) = v85;
        *(v81 + v82[8]) = v80;
        *(v81 + v82[9]) = v87;
        v92 = (v81 + v82[10]);
        *v92 = v91;
        v92[1] = v93;
        sub_1BC9529C0();
        OUTLINED_FUNCTION_22_7();
        __swift_storeEnumTagSinglePayload(v94, v95, v96, v97);
        v143 = v64;
        v144 = v65;

        sub_1BCE1A9C0();

        sub_1BC94C05C(v72, &qword_1EBD07868);
        sub_1BC94C05C(v62, &qword_1EBD07868);
        v124(v142, v139);
        (*(v134 + 8))(v140, v128);
        sub_1BC960144();
        OUTLINED_FUNCTION_22_7();
LABEL_17:
        __swift_storeEnumTagSinglePayload(v98, v99, v100, v101);
        OUTLINED_FUNCTION_17_12();
        return;
      }

      __break(1u);
    }

    else
    {
      v2 = v139;
      if (qword_1EDA1EE78 == -1)
      {
        goto LABEL_13;
      }
    }

    swift_once();
LABEL_13:
    v107 = sub_1BCE1ACC0();
    __swift_project_value_buffer(v107, qword_1EDA1EE80);
    v108 = v141;
    v109 = v131;
    (*(v141 + 16))(v131, v49, v2);
    v110 = v126;

    v111 = sub_1BCE1ACA0();
    v112 = sub_1BCE1D8D0();

    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      *v113 = 136446723;
      OUTLINED_FUNCTION_0_29();
      sub_1BC94B930(v114, v115);
      v116 = sub_1BCE1E050();
      v117 = v109;
      v119 = v118;
      (*(v108 + 8))(v117, v2);
      v120 = sub_1BC98FE38(v116, v119, &v143);

      *(v113 + 4) = v120;
      *(v113 + 12) = 2160;
      *(v113 + 14) = 1752392040;
      *(v113 + 22) = 2081;
      v121 = sub_1BC98FE38(v129, v110, &v143);

      *(v113 + 24) = v121;
      _os_log_impl(&dword_1BC940000, v111, v112, "Failed to generate celestial ephemeris required for moon rendering; date=%{public}s, coordinate=%{private,mask.hash}s", v113, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27_0();
      OUTLINED_FUNCTION_27_0();
    }

    else
    {

      (*(v108 + 8))(v109, v2);
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_17_12();

  __swift_storeEnumTagSinglePayload(v102, v103, v104, v105);
}

uint64_t sub_1BC955D4C()
{
  sub_1BCE1A230();
  sub_1BCE1A210();
  if (qword_1EDA1EB20 != -1)
  {
    swift_once();
  }

  v0 = sub_1BCE1A220();

  byte_1EDA1DAF0 = v0 & 1;
  return result;
}

uint64_t sub_1BC955DEC()
{
  v0 = sub_1BCE1A240();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  v7 = sub_1BCE1A260();
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_2_0();
  v8 = sub_1BCE1A1C0();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BC58);
  (*(v10 + 104))(v14, *MEMORY[0x1E69D6D08], v8);
  sub_1BCE1A250();
  (*(v2 + 104))(v6, *MEMORY[0x1E69D6E90], v0);
  result = sub_1BCE1A2A0();
  qword_1EDA1EB28 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_6()
{

  return sub_1BCE1A2D0();
}

uint64_t OUTLINED_FUNCTION_11_8()
{

  return swift_getOpaqueTypeConformance2();
}

void OUTLINED_FUNCTION_11_10(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = v8 + a1;
  *v9 = a7;
  *(v9 + 8) = a8 & 1;
}

uint64_t OUTLINED_FUNCTION_11_11()
{

  return swift_getAtKeyPath();
}

uint64_t OUTLINED_FUNCTION_11_12()
{

  return sub_1BCE1E100();
}

uint64_t OUTLINED_FUNCTION_11_13(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_11_16(uint64_t a1)
{
  v4 = *(v2 - 256);

  return sub_1BC9660CC(a1, v4, v1);
}

uint64_t OUTLINED_FUNCTION_11_24()
{

  return sub_1BCE19260();
}

uint64_t OUTLINED_FUNCTION_11_25(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 - 128) = a1;
  *(v4 - 120) = a2;
  *(v4 - 112) = a3 & 1;
  *(v4 - 104) = a4;

  return sub_1BCE1C0D0();
}

uint64_t OUTLINED_FUNCTION_11_27()
{

  return sub_1BCE1D190();
}

void OUTLINED_FUNCTION_11_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, char a23, uint64_t a24, char a25, __int16 a26, char a27, __int16 a28, char a29, int a30, char a31, __int16 a32, char a33, uint64_t a34, int a35, char a36)
{
  v36[1629] = a36;
  v36[1630] = a33;
  v36[1631] = a31;
  v36[1632] = a23;
  v36[1633] = a25;
  v36[1634] = a27;
  v36[1635] = a29;
}

uint64_t OUTLINED_FUNCTION_11_33()
{

  return sub_1BCE1E090();
}

uint64_t OUTLINED_FUNCTION_11_36()
{

  return sub_1BCE1E090();
}

uint64_t OUTLINED_FUNCTION_11_39(uint64_t a1)
{
  *(a1 + 16) = *&STACK[0x270];
  *(a1 + 32) = v2;
  *(a1 + 36) = v3;
  *(a1 + 40) = v4;
  *(a1 + 44) = v5;

  return sub_1BC9A79F0();
}

void OUTLINED_FUNCTION_11_40()
{

  sub_1BCB65224();
}

uint64_t OUTLINED_FUNCTION_11_42(double a1, double a2, double a3, double a4)
{
  *&STACK[0x250] = a1;
  *&STACK[0x248] = a2;
  *&STACK[0x240] = a3;
  *&STACK[0x238] = a4;
}

void OUTLINED_FUNCTION_11_45()
{
  v2 = *(v0 + 16) + 1;

  sub_1BCB653B4(0, v2, 1, v0);
}

uint64_t OUTLINED_FUNCTION_9_7()
{

  return sub_1BCE1DEB0();
}

void OUTLINED_FUNCTION_9_10(__n128 a1, __n128 a2)
{
  v2[20] = a1;
  v2[21] = a2;
  v2[22].n128_u32[0] = 1048576000;
  v2[22].n128_u64[1] = 10;
}

void OUTLINED_FUNCTION_9_12(double a1, double a2, double a3, double a4)
{
  *(v4 - 296) = a1;
  *(v4 - 304) = a2;
  *(v4 - 312) = a3;
  *(v4 - 320) = a4;
}

uint64_t OUTLINED_FUNCTION_9_14()
{

  return sub_1BCE1BF60();
}

uint64_t OUTLINED_FUNCTION_9_18()
{

  return swift_once();
}

void OUTLINED_FUNCTION_9_23()
{
  *(v1 + 32) = v0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
}

void OUTLINED_FUNCTION_9_31(char a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23, int a24, int a25, char a26, __int16 a27, char a28, __int16 a29, char a30, __int16 a31, char a32)
{
  v32[1644] = a1;
  v32[1645] = a13;
  v32[1646] = a23;
  v32[1647] = a26;
  v32[1648] = a28;
  v32[1649] = a30;
  v32[1650] = a32;
  v32[1651] = a19;
  v32[1652] = a21;
}

uint64_t OUTLINED_FUNCTION_9_33()
{

  return sub_1BCE1E000();
}

uint64_t OUTLINED_FUNCTION_9_34()
{
  v2 = *(v0 + *(v1 + 24) + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t OUTLINED_FUNCTION_9_38(unint64_t *a1, uint64_t *a2)
{

  return sub_1BC957184(a1, a2);
}

uint64_t OUTLINED_FUNCTION_9_47()
{
}

uint64_t OUTLINED_FUNCTION_9_48(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 0, 1, a1);
}

uint64_t OUTLINED_FUNCTION_9_50()
{

  return sub_1BCE18680();
}

void *OUTLINED_FUNCTION_9_51(void *a1)
{

  return memcpy(a1, v1, 0x918uLL);
}

uint64_t OUTLINED_FUNCTION_9_53(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 - 96) = &a9 - v9;

  return sub_1BCE188F0();
}

uint64_t OUTLINED_FUNCTION_9_56()
{

  return sub_1BCE1E130();
}

uint64_t OUTLINED_FUNCTION_9_58()
{

  return sub_1BCE1CEE0();
}

uint64_t OUTLINED_FUNCTION_9_59@<X0>(uint64_t a1@<X8>)
{

  return sub_1BC983D0C(v2, v1 - a1);
}

uint64_t OUTLINED_FUNCTION_18_5()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_18_7@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;

  return sub_1BCE1BC20();
}

void *OUTLINED_FUNCTION_18_18(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char __dst)
{
  *(v13 - 89) = v12;

  return memcpy(&__dst, v11, 0x660uLL);
}

uint64_t OUTLINED_FUNCTION_18_21(__int128 *a1)
{
  *(v1 + 58) = 2;

  return sub_1BC947AB4(a1, v1 + 16);
}

uint64_t OUTLINED_FUNCTION_18_22()
{

  return type metadata accessor for VFXLoadRequest(0);
}

uint64_t OUTLINED_FUNCTION_18_24()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_18_26(unint64_t *a1)
{

  return sub_1BCD8EB38(a1);
}

uint64_t OUTLINED_FUNCTION_18_27(double a1, double a2, double a3, double a4)
{
  *&STACK[0x348] = a1;
  *&STACK[0x340] = a2;
  *&STACK[0x338] = a3;
  *&STACK[0x330] = a4;
}

uint64_t OUTLINED_FUNCTION_18_29(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v2 + v1, 1, a1);
}

uint64_t sub_1BC956C80(unint64_t *a1)
{
  sub_1BCE1A7D0();
  sub_1BC947608(0, a1);

  sub_1BCE1A960();

  return v3;
}

id sub_1BC956D68()
{
  result = [OUTLINED_FUNCTION_0_11() topocentricParallacticAngle];
  *v0 = v2;
  return result;
}

uint64_t sub_1BC956D98(double a1, double a2)
{
  if (a1 >= 0.0 && a1 <= 24.0)
  {
    return 14;
  }

  if (a1 >= 24.0 && a1 <= 38.0)
  {
    v9 = a2 < 180.0;
    v10 = 15;
    v11 = 13;
    goto LABEL_34;
  }

  if (a1 >= 38.0 && a1 <= 50.0)
  {
    v9 = a2 < 180.0;
    v10 = 16;
    v11 = 12;
    goto LABEL_34;
  }

  if (a1 >= 50.0 && a1 <= 58.0)
  {
    v9 = a2 < 180.0;
    v10 = 17;
    v11 = 11;
    goto LABEL_34;
  }

  if (a1 >= 58.0 && a1 <= 68.0)
  {
    v9 = a2 < 180.0;
    v10 = 18;
    v11 = 10;
    goto LABEL_34;
  }

  if (a1 >= 68.0 && a1 <= 76.0)
  {
    v9 = a2 < 180.0;
    v10 = 19;
    v11 = 9;
    goto LABEL_34;
  }

  if (a1 >= 76.0 && a1 <= 85.0)
  {
    v9 = a2 < 180.0;
    v10 = 20;
    v11 = 8;
    goto LABEL_34;
  }

  if (a1 >= 85.0 && a1 <= 95.0)
  {
    v9 = a2 < 180.0;
    v10 = 21;
    v11 = 7;
    goto LABEL_34;
  }

  if (a1 >= 95.0 && a1 <= 109.0)
  {
    v9 = a2 < 180.0;
    v10 = 22;
    v11 = 6;
    goto LABEL_34;
  }

  if (a1 >= 109.0 && a1 <= 123.0)
  {
    v9 = a2 < 180.0;
    v10 = 23;
    v11 = 5;
    goto LABEL_34;
  }

  if (a1 >= 123.0 && a1 <= 135.0)
  {
    v9 = a2 < 180.0;
    v10 = 24;
    v11 = 4;
    goto LABEL_34;
  }

  if (a1 >= 135.0 && a1 <= 140.0)
  {
    v9 = a2 < 180.0;
    v10 = 25;
    v11 = 3;
    goto LABEL_34;
  }

  if (a1 >= 140.0 && a1 <= 144.0)
  {
    v9 = a2 < 180.0;
    v10 = 26;
    v11 = 2;
LABEL_34:
    if (v9)
    {
      return v10;
    }

    else
    {
      return v11;
    }
  }

  if (a1 < 144.0 || a1 > 156.0)
  {
    if (a1 < 156.0 || a1 > 180.0)
    {
      if (qword_1EDA1EE78 != -1)
      {
        swift_once();
      }

      v13 = sub_1BCE1ACC0();
      __swift_project_value_buffer(v13, qword_1EDA1EE80);
      v14 = sub_1BCE1ACA0();
      v15 = sub_1BCE1D8B0();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 134349056;
        *(v16 + 4) = a1;
        _os_log_impl(&dword_1BC940000, v14, v15, "Unexpected phase angle found when generating moon phase image. phaseAngle=%{public}f", v16, 0xCu);
        MEMORY[0x1BFB31B10](v16, -1, -1);
      }
    }

    return 0;
  }

  else if (a2 >= 180.0)
  {
    return 1;
  }

  else
  {
    return 27;
  }
}

uint64_t sub_1BC957184(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BC957204()
{
  v0 = sub_1BCE1A240();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  v7 = sub_1BCE1A1C0();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0BC58);
  (*(v9 + 104))(v13, *MEMORY[0x1E69D6D00], v7);
  (*(v2 + 104))(v6, *MEMORY[0x1E69D6E90], v0);
  result = sub_1BCE1A290();
  qword_1EDA1BE68 = result;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_33_2(unint64_t *a1)
{

  return sub_1BCAFEB90(a1);
}

uint64_t OUTLINED_FUNCTION_33_3()
{

  return sub_1BC9600B0();
}

void OUTLINED_FUNCTION_33_10()
{
  v3[1629] = v0;
  v3[1630] = v2;
  v3[1631] = v4;
  v3[1632] = v1;
}

void OUTLINED_FUNCTION_33_12()
{

  sub_1BCD87580(v0);
}

void OUTLINED_FUNCTION_33_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_33_16(double a1, double a2, double a3, double a4)
{
  *&STACK[0x370] = a1;
  *&STACK[0x368] = a2;
  *&STACK[0x360] = a3;
  *&STACK[0x358] = a4;
}

uint64_t View.statusBarPreserving(preferredColorScheme:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for StatusBarPreservingModifier();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  sub_1BC9660CC(a1, v9 - v8 + *(v11 + 24), &qword_1EBD08600);
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  v12 = *(v6 + 20);
  *(v10 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085F8);
  swift_storeEnumTagMultiPayload();
  MEMORY[0x1BFB2F100](v10, a2, v6, a3);
  return sub_1BC95AD44(v10);
}

uint64_t sub_1BC9576A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BCE1BB10();
  *a1 = result & 1;
  return result;
}

uint64_t StatusBarPreservingModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a1;
  v120 = a2;
  v113 = type metadata accessor for StatusBarPreservingModifier();
  OUTLINED_FUNCTION_2();
  v104 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v105 = v5;
  v106 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08608);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  v111 = &v98 - v7;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08610);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3();
  v110 = v9 - v10;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v11);
  v112 = &v98 - v12;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08618);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v13);
  v118 = &v98 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08600);
  MEMORY[0x1EEE9AC00](v15 - 8);
  OUTLINED_FUNCTION_3();
  v107 = v16 - v17;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v18);
  v109 = &v98 - v19;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v20);
  v100 = &v98 - v21;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v22);
  v101 = &v98 - v23;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08620);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_3();
  v102 = v25 - v26;
  OUTLINED_FUNCTION_15();
  MEMORY[0x1EEE9AC00](v27);
  v103 = &v98 - v28;
  v29 = sub_1BCE1C010();
  OUTLINED_FUNCTION_2();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_2_0();
  v99 = v34 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08628);
  v36 = v35 - 8;
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v98 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08630);
  MEMORY[0x1EEE9AC00](v39 - 8);
  OUTLINED_FUNCTION_3();
  v42 = v40 - v41;
  v44 = MEMORY[0x1EEE9AC00](v43);
  v46 = &v98 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v98 - v47;
  v114 = v2;
  sub_1BCA9CE4C(&v98 - v47);
  (*(v31 + 104))(v46, *MEMORY[0x1E697FF38], v29);
  __swift_storeEnumTagSinglePayload(v46, 0, 1, v29);
  v49 = *(v36 + 56);
  sub_1BC9660CC(v48, v38, &qword_1EBD08630);
  sub_1BC9660CC(v46, &v38[v49], &qword_1EBD08630);
  if (OUTLINED_FUNCTION_11_13(v38) == 1)
  {
    v50 = OUTLINED_FUNCTION_10_1();
    sub_1BC94C05C(v50, v51);
    sub_1BC94C05C(v48, &qword_1EBD08630);
    if (OUTLINED_FUNCTION_11_13(&v38[v49]) == 1)
    {
      sub_1BC94C05C(v38, &qword_1EBD08630);
      v52 = v114;
LABEL_15:
      v82 = v100;
      sub_1BC9660CC(v52 + *(v113 + 24), v100, &qword_1EBD08600);
      v83 = sub_1BCE1B4E0();
      OUTLINED_FUNCTION_5_16(v82);
      if (v64)
      {
        sub_1BCA9CD18();
        OUTLINED_FUNCTION_3_2();
        v85 = MEMORY[0x1E697DBB8];
        if ((v86 & 1) == 0)
        {
          v85 = MEMORY[0x1E697DBA8];
        }

        v88 = v101;
        (*(v84 + 104))(v101, *v85, v83);
        OUTLINED_FUNCTION_5_16(v82);
        if (!v64)
        {
          sub_1BC94C05C(v82, &qword_1EBD08600);
        }
      }

      else
      {
        OUTLINED_FUNCTION_3_2();
        v88 = v101;
        (*(v87 + 32))(v101, v82, v83);
      }

      OUTLINED_FUNCTION_10_13();
      v89 = v102;
      sub_1BC999734(v88, v102 + *(v116 + 36), &qword_1EBD08600);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08638);
      OUTLINED_FUNCTION_4();
      (*(v90 + 16))(v89, v115);
      v71 = &qword_1EBD08620;
      v72 = v103;
      OUTLINED_FUNCTION_8_14();
      sub_1BC999734(v91, v92, v93);
      OUTLINED_FUNCTION_8_14();
      sub_1BC9660CC(v94, v95, v96);
      swift_storeEnumTagMultiPayload();
      sub_1BC9607AC();
      sub_1BCA9D568();
      goto LABEL_22;
    }

    goto LABEL_6;
  }

  sub_1BC9660CC(v38, v42, &qword_1EBD08630);
  if (OUTLINED_FUNCTION_11_13(&v38[v49]) == 1)
  {
    v53 = OUTLINED_FUNCTION_10_1();
    sub_1BC94C05C(v53, v54);
    sub_1BC94C05C(v48, &qword_1EBD08630);
    (*(v31 + 8))(v42, v29);
LABEL_6:
    sub_1BC94C05C(v38, &qword_1EBD08628);
    v52 = v114;
    goto LABEL_7;
  }

  v79 = v99;
  (*(v31 + 32))(v99, &v38[v49], v29);
  sub_1BCA9D81C(&qword_1EBD06C80, MEMORY[0x1E697FF50]);
  v80 = sub_1BCE1D210();
  v81 = *(v31 + 8);
  v81(v79, v29);
  sub_1BC94C05C(v46, &qword_1EBD08630);
  sub_1BC94C05C(v48, &qword_1EBD08630);
  v81(v42, v29);
  sub_1BC94C05C(v38, &qword_1EBD08630);
  v52 = v114;
  if (v80)
  {
    goto LABEL_15;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  v56 = v106;
  sub_1BCA9D430(v52, v106);
  v57 = (*(v104 + 80) + 16) & ~*(v104 + 80);
  v58 = swift_allocObject();
  sub_1BCA9D494(v56, v58 + v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08638);
  OUTLINED_FUNCTION_4();
  v60 = v111;
  (*(v59 + 16))(v111, v115);
  v61 = v107;
  v62 = (v60 + *(v108 + 36));
  *v62 = KeyPath;
  v62[1] = sub_1BCA9D4F8;
  v62[2] = v58;
  sub_1BC9660CC(v52 + *(v113 + 24), v61, &qword_1EBD08600);
  v63 = sub_1BCE1B4E0();
  OUTLINED_FUNCTION_5_16(v61);
  if (v64)
  {
    sub_1BCA9CD18();
    OUTLINED_FUNCTION_3_2();
    v66 = MEMORY[0x1E697DBB8];
    if ((v67 & 1) == 0)
    {
      v66 = MEMORY[0x1E697DBA8];
    }

    v69 = v109;
    (*(v65 + 104))(v109, *v66, v63);
    OUTLINED_FUNCTION_5_16(v61);
    if (!v64)
    {
      sub_1BC94C05C(v61, &qword_1EBD08600);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_2();
    v69 = v109;
    (*(v68 + 32))(v109, v61, v63);
  }

  OUTLINED_FUNCTION_10_13();
  v70 = v110;
  sub_1BC999734(v69, v110 + *(v119 + 36), &qword_1EBD08600);
  sub_1BC999734(v60, v70, &qword_1EBD08608);
  v71 = &qword_1EBD08610;
  v72 = v112;
  OUTLINED_FUNCTION_8_14();
  sub_1BC999734(v73, v74, v75);
  OUTLINED_FUNCTION_8_14();
  sub_1BC9660CC(v76, v77, v78);
  swift_storeEnumTagMultiPayload();
  sub_1BC9607AC();
  sub_1BCA9D568();
LABEL_22:
  sub_1BCE1BF60();
  return sub_1BC94C05C(v72, v71);
}

uint64_t sub_1BC9581DC()
{
  v1 = type metadata accessor for StatusBarPreservingModifier();
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_1BCA21FC4(*(v0 + v4), *(v0 + v4 + 8));
  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1BCE1C010();
    if (!OUTLINED_FUNCTION_11_13(v5 + v6))
    {
      OUTLINED_FUNCTION_3_2();
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  v9 = *(v1 + 24);
  v10 = sub_1BCE1B4E0();
  if (!__swift_getEnumTagSinglePayload(v5 + v9, 1, v10))
  {
    OUTLINED_FUNCTION_3_2();
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3, v2 | 7);
}

unint64_t sub_1BC958364()
{
  result = qword_1EDA1B948;
  if (!qword_1EDA1B948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0E230);
    sub_1BC95B4B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B948);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_37_3()
{

  return sub_1BCE1DF10();
}

uint64_t OUTLINED_FUNCTION_37_4()
{
  *(v1 + *(v3 + 48)) = v2;
  v6 = (v1 + *(v3 + 52));
  *v6 = v4;
  v6[1] = v0;
}

uint64_t OUTLINED_FUNCTION_37_5()
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_37_7(void *a1)
{

  return memcpy(a1, (v1 + 1653), 0x2A3uLL);
}

void OUTLINED_FUNCTION_37_10(unint64_t a1@<X8>)
{

  sub_1BCB653B4(a1 > 1, v2, 1, v1);
}

uint64_t OUTLINED_FUNCTION_37_13()
{
}

void sub_1BC958554(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_14(a1, a2);
  sub_1BC95511C();
  OUTLINED_FUNCTION_0_24();
  if (v6)
  {
    __break(1u);
LABEL_12:
    sub_1BCE1E0F0();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_16_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD085D8);
  if (OUTLINED_FUNCTION_3_21())
  {
    OUTLINED_FUNCTION_10_2();
    sub_1BC95511C();
    OUTLINED_FUNCTION_5_15();
    if (!v8)
    {
      goto LABEL_12;
    }

    v4 = v7;
  }

  if (v5)
  {
    v9 = *(*v3 + 56);
    v10 = type metadata accessor for GeoHandler.CacheEntry();
    sub_1BCA9C4CC(v2, v9 + *(*(v10 - 8) + 72) * v4, type metadata accessor for GeoHandler.CacheEntry);
    OUTLINED_FUNCTION_18_8();
  }

  else
  {
    v11 = OUTLINED_FUNCTION_7_19();
    sub_1BC95517C(v11, v12, v13, v14, v15);
    OUTLINED_FUNCTION_18_8();
  }
}

uint64_t sub_1BC958658(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BCE1A7B0();
  MEMORY[0x1EEE9AC00](v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD07D60);
  *(swift_allocObject() + 16) = xmmword_1BCE3E050;
  sub_1BCE1A7A0();
  sub_1BC94DCC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07D70);
  sub_1BC94DD20();
  sub_1BCE1DC30();
  sub_1BCE1A7D0();
  swift_allocObject();
  *(v1 + 24) = sub_1BCE1A7C0();
  if (a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v2;
}

uint64_t sub_1BC958828(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1BCE1E100();
  a4(v6);
  return sub_1BCE1E150();
}

void OUTLINED_FUNCTION_29_5()
{
  v5 = *(v0 + 96);
  *v5 = v2;
  v5[1] = v3;
  v5[2] = v1;
  v5[3] = v4;
}

uint64_t OUTLINED_FUNCTION_29_9()
{

  return sub_1BCE1BD00();
}

uint64_t OUTLINED_FUNCTION_29_11()
{

  return sub_1BC9600B0();
}

void *OUTLINED_FUNCTION_29_12(void *a1)
{

  return memcpy(a1, v1, 0x65DuLL);
}

uint64_t OUTLINED_FUNCTION_29_14()
{

  return sub_1BCE1D1E0();
}

void OUTLINED_FUNCTION_29_15()
{
}

uint64_t OUTLINED_FUNCTION_29_16()
{

  return sub_1BCE1E090();
}

uint64_t OUTLINED_FUNCTION_29_17()
{

  return sub_1BCE1DED0();
}

uint64_t OUTLINED_FUNCTION_29_18()
{

  return sub_1BCE1CAE0();
}

uint64_t sub_1BC9589E8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1BC958A40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08D38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_39()
{
}

void OUTLINED_FUNCTION_39_0(uint64_t a1@<X8>)
{
  *(v6 - 264) = v4;
  *(v6 - 184) = v2;
  *(v6 - 208) = ~a1;
  *(v6 - 272) = v3 + 32;
  v7 = *(v5 + 72);
  *(v6 - 200) = v1;
  *(v6 - 192) = v7;
  *(v6 - 248) = v3 + 8;
}

uint64_t OUTLINED_FUNCTION_39_3(unint64_t *a1)
{

  return sub_1BC94B978(a1);
}

uint64_t OUTLINED_FUNCTION_39_4()
{

  return sub_1BCE1DF70();
}

uint64_t OUTLINED_FUNCTION_39_5()
{

  return sub_1BCE1BCF0();
}

uint64_t OUTLINED_FUNCTION_39_11()
{
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1BC958C10()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BCE1E100();
  sub_1BC958C60(v1, v2);
  return sub_1BCE1E150();
}

uint64_t sub_1BC958C60(double a1, double a2)
{
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  MEMORY[0x1BFB30880](*&v3);
  if (a1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = a1;
  }

  return MEMORY[0x1BFB30880](*&v4);
}

void sub_1BC958CC8()
{
  sub_1BCE19060();
  OUTLINED_FUNCTION_0_29();
  sub_1BC94B930(v1, v2);
  OUTLINED_FUNCTION_10_3();
  sub_1BCE1D190();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08D40);
  OUTLINED_FUNCTION_10_3();
  sub_1BCE1D190();
  v3 = *(v0 + *(type metadata accessor for MoonDataProvider.LunarEventsCacheKey(0) + 20) + 8);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1BFB30880](*&v3);
  OUTLINED_FUNCTION_29();
}

unint64_t OUTLINED_FUNCTION_40_2@<X0>(uint64_t a1@<X8>)
{
  v1[85] = a1;
  v1[82] = 0;
  v1[83] = 0xE000000000000000;

  return sub_1BC970820();
}

uint64_t OUTLINED_FUNCTION_40_5()
{

  return sub_1BCE1DF10();
}

uint64_t OUTLINED_FUNCTION_40_9(uint64_t result)
{
  *(v2 - 80) = *(v1 + *(result + 20));
  *(v2 - 81) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_40_11()
{
}

uint64_t OUTLINED_FUNCTION_40_12()
{

  return swift_once();
}

void sub_1BC958EB0()
{
  OUTLINED_FUNCTION_18_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v26 = v7;
  v25 = v8(0);
  OUTLINED_FUNCTION_2();
  v10 = v9;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  v14 = 0;
  v15 = *(v4 + 16);
  while (v15 != v14)
  {
    sub_1BC959000(v4 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v14, v13, v2);
    v16 = v6(v13);
    if (v0)
    {
      v19 = OUTLINED_FUNCTION_29_2();
      sub_1BC9542F8(v19, v20);
      goto LABEL_10;
    }

    if (v16)
    {
      sub_1BC960328(v13, v26, v2);
      break;
    }

    v17 = OUTLINED_FUNCTION_29_2();
    sub_1BC9542F8(v17, v18);
    ++v14;
  }

  v21 = OUTLINED_FUNCTION_28_1();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v25);
LABEL_10:
  OUTLINED_FUNCTION_20_9();
  OUTLINED_FUNCTION_17_1();
}

uint64_t sub_1BC959000(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BC959060(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_11();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_10_1();
  v6(v5);
  return a2;
}

uint64_t sub_1BC9590D8()
{
  v0 = sub_1BCE19060();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MoonRiseSet();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  sub_1BC9529C0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1BC9589E8(v9, type metadata accessor for MoonRiseSet);
  if (EnumCaseMultiPayload == 1)
  {
    sub_1BC9529C0();
    (*(v1 + 32))(v3, v7, v0);
    sub_1BC94B930(&qword_1EDA1EF40, MEMORY[0x1E6969530]);
    v11 = sub_1BCE1D1E0();
    (*(v1 + 8))(v3, v0);
    v12 = v11 ^ 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t OUTLINED_FUNCTION_19_3(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v3 - 104) = v2;

  return sub_1BCE197B0();
}

uint64_t OUTLINED_FUNCTION_19_6()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_19_8()
{

  return swift_beginAccess();
}

size_t OUTLINED_FUNCTION_19_15(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{

  return sub_1BC9601F8(v5, a2, a3, a4, v4);
}

void *OUTLINED_FUNCTION_19_21()
{
  LOBYTE(STACK[0x670]) = v1;

  return memcpy((v2 + 1633), (v0 + 1633), 0x2B7uLL);
}

uint64_t OUTLINED_FUNCTION_19_23()
{
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);

  return sub_1BCE19390();
}

void OUTLINED_FUNCTION_19_25()
{
}

uint64_t OUTLINED_FUNCTION_19_27(double a1, double a2, double a3, double a4)
{
  *&STACK[0x368] = a1;
  *&STACK[0x360] = a2;
  *&STACK[0x358] = a3;
  *&STACK[0x350] = a4;
}

uint64_t OUTLINED_FUNCTION_19_29()
{
}

uint64_t sub_1BC9595BC@<X0>(void (**a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v105 = a6;
  v103 = a5;
  v114 = a4;
  v115 = a3;
  v126 = a1;
  v108 = a7;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08D38);
  v8 = MEMORY[0x1EEE9AC00](v129);
  v113 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v120 = &v102 - v10;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08D40);
  MEMORY[0x1EEE9AC00](v112);
  v128 = &v102 - v11;
  v122 = sub_1BCE19060();
  v12 = *(v122 - 8);
  v13 = MEMORY[0x1EEE9AC00](v122);
  v104 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v111 = &v102 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v102 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v121 = &v102 - v20;
  v21 = type metadata accessor for MoonRiseSet();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v107 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v106 = &v102 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v102 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = (&v102 - v31);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v125 = &v102 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v124 = (&v102 - v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08D28);
  v37 = MEMORY[0x1EEE9AC00](v36 - 8);
  v119 = &v102 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v127 = &v102 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v43 = &v102 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v102 - v44;
  v46 = a2;
  v130 = a2;
  sub_1BC9603E4();
  v47 = v45;
  sub_1BC99F010(v45, v43, &qword_1EBD08D28);
  if (__swift_getEnumTagSinglePayload(v43, 1, v21) == 1)
  {
    v109 = v21;
    sub_1BC94C05C(v43, &qword_1EBD08D28);
    v48 = *(v12 + 16);
    v49 = v121;
    v102 = v46;
    v50 = v46;
    v51 = v122;
    v118 = v48;
    (v48)(v121, v50, v122);
    sub_1BCE18EF0();
    v110 = sub_1BC94B930(&qword_1EDA1EF40, MEMORY[0x1E6969530]);
    v52 = (v12 + 16);
    v125 = (v12 + 32);
    v126 = (v12 + 8);
    v53 = 1;
    v54 = v49;
    v117 = v19;
    while ((sub_1BCE1D1F0() & 1) != 0)
    {
      v116 = v53;
      v55 = v120;
      v56 = v118;
      v118();
      v57 = v54;
      v54 = v52;
      (v56)(v55 + *(v129 + 48), v57, v51);
      v58 = v113;
      sub_1BC99F010(v55, v113, &qword_1EBD08D38);
      v59 = *(v129 + 48);
      v123 = *v125;
      v124 = v59;
      v123(v128, v58, v51);
      v60 = *v126;
      (*v126)(v124 + v58, v51);
      sub_1BC958A40(v120, v58);
      v123(&v128[*(v112 + 36)], v58 + *(v129 + 48), v51);
      v124 = v60;
      v60(v58, v51);
      v61 = v128;
      MoonDataProvider.moonRiseSetEvents(in:coordinate:)();
      v63 = v62;
      sub_1BC94C05C(v61, &qword_1EBD08D40);
      v64 = *(v63 + 16) - 1;
      v65 = v109;
      v66 = v119;
      while (v64 != -1)
      {
        if (v64 >= *(v63 + 16))
        {
          __break(1u);
          goto LABEL_20;
        }

        sub_1BC9529C0();
        sub_1BC9529C0();
        if (swift_getEnumCaseMultiPayload() != 1)
        {

          v124(v121, v122);
          sub_1BC9589E8(v29, type metadata accessor for MoonRiseSet);
          v67 = v127;
          sub_1BC960144();
          v68 = 0;
          goto LABEL_10;
        }

        sub_1BC9589E8(v32, type metadata accessor for MoonRiseSet);
        sub_1BC9589E8(v29, type metadata accessor for MoonRiseSet);
        --v64;
        v54 = v52;
      }

      v124(v121, v122);
      v68 = 1;
      v67 = v127;
LABEL_10:
      __swift_storeEnumTagSinglePayload(v67, v68, 1, v65);
      sub_1BC99F010(v67, v66, &qword_1EBD08D28);
      v69 = __swift_getEnumTagSinglePayload(v66, 1, v65) == 1;
      v70 = v117;
      if (!v69)
      {
        sub_1BC94C05C(v127, &qword_1EBD08D28);
        v79 = v70;
        v80 = v122;
        v124(v79, v122);
        sub_1BC94C05C(v47, &qword_1EBD08D28);
        sub_1BC960144();
        v81 = v107;
        sub_1BC960144();
        v82 = v108;
        v123(v108, v81, v80);
        v83 = v82;
        v84 = 0;
        v85 = v80;
        return __swift_storeEnumTagSinglePayload(v83, v84, 1, v85);
      }

      sub_1BC94C05C(v119, &qword_1EBD08D28);
      v71 = v121;
      v72 = v70;
      v51 = v122;
      (v118)(v121, v72, v122);
      v73 = v111;
      sub_1BCE18EF0();
      v74 = v117;
      sub_1BC94C05C(v127, &qword_1EBD08D28);
      v124(v74, v51);
      v123(v74, v73, v51);
      v54 = v71;
      v53 = v116 + 1;
      if (v116 == 30)
      {
        if (qword_1EDA1EE78 != -1)
        {
          goto LABEL_24;
        }

        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_24:
    swift_once();
LABEL_17:
    v86 = sub_1BCE1ACC0();
    __swift_project_value_buffer(v86, qword_1EDA1EE80);
    v29 = v104;
    v22 = v122;
    (v118)(v104, v102, v122);
    v87 = v105;

    v32 = sub_1BCE1ACA0();
    v88 = sub_1BCE1D8B0();

    v89 = os_log_type_enabled(v32, v88);
    v65 = v108;
    if (v89)
    {
      v90 = swift_slowAlloc();
      v129 = v47;
      v91 = v90;
      v92 = swift_slowAlloc();
      v131 = v92;
      *v91 = 136315651;
      sub_1BC94B930(&qword_1EDA1BF08, MEMORY[0x1E6969530]);
      v93 = sub_1BCE1E050();
      v94 = v29;
      v96 = v95;
      v97 = v124;
      v124(v94, v22);
      v98 = sub_1BC98FE38(v93, v96, &v131);

      *(v91 + 4) = v98;
      *(v91 + 12) = 2160;
      *(v91 + 14) = 1752392040;
      *(v91 + 22) = 2081;
      *(v91 + 24) = sub_1BC98FE38(v103, v87, &v131);
      _os_log_impl(&dword_1BC940000, v32, v88, "Did not find a previous moonrise within the previous 30 days from %s at coordinate=%{private,mask.hash}s", v91, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFB31B10](v92, -1, -1);
      MEMORY[0x1BFB31B10](v91, -1, -1);

      v97(v117, v22);
      v97(v121, v22);
      v65 = v108;
      v99 = v129;
    }

    else
    {
LABEL_20:

      v100 = v124;
      v124(v29, v22);
      v100(v117, v22);
      v100(v54, v22);
      v99 = v47;
    }

    sub_1BC94C05C(v99, &qword_1EBD08D28);
    v83 = v65;
    v84 = 1;
    v85 = v22;
  }

  else
  {
    sub_1BC94C05C(v45, &qword_1EBD08D28);
    sub_1BC960144();
    v75 = v125;
    sub_1BC960144();
    v76 = v108;
    v77 = v75;
    v78 = v122;
    (*(v12 + 32))(v108, v77, v122);
    v83 = v76;
    v84 = 0;
    v85 = v78;
  }

  return __swift_storeEnumTagSinglePayload(v83, v84, 1, v85);
}

uint64_t OUTLINED_FUNCTION_16_5()
{
}

uint64_t OUTLINED_FUNCTION_16_6()
{

  return sub_1BCE18680();
}

uint64_t OUTLINED_FUNCTION_16_8()
{

  return sub_1BCE1E130();
}

uint64_t OUTLINED_FUNCTION_16_10()
{

  return sub_1BCE1C310();
}

uint64_t OUTLINED_FUNCTION_16_12()
{

  return sub_1BC95DCE8();
}

__n128 OUTLINED_FUNCTION_16_13()
{
  result = *(v0 + 186);
  *(v0 + 106) = result;
  *(v0 + 120) = *(v2 + 56);
  *(v0 + 128) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_14()
{

  return type metadata accessor for ConditionsComplicationViewModel();
}

uint64_t OUTLINED_FUNCTION_16_15()
{

  return sub_1BCABB2B8(v1, v0);
}

uint64_t OUTLINED_FUNCTION_16_27()
{

  return sub_1BCE1E090();
}

void *OUTLINED_FUNCTION_16_29@<X0>(unint64_t a1@<X8>)
{

  return sub_1BC9804BC((a1 > 1), v1 + 1, 1);
}

uint64_t OUTLINED_FUNCTION_16_30()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_16_31@<X0>(uint64_t a1@<X8>)
{

  return __swift_storeEnumTagSinglePayload(v1 + a1, 1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_16_32()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_16_34()
{

  return sub_1BCE1E020();
}

uint64_t OUTLINED_FUNCTION_16_35(double a1, double a2, double a3, double a4)
{
  *&STACK[0x2F0] = a1;
  *&STACK[0x2E8] = a2;
  *&STACK[0x2E0] = a3;
  *&STACK[0x2D8] = a4;
}

uint64_t OUTLINED_FUNCTION_16_36()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_16_37()
{

  return sub_1BC95A704(0, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t type metadata accessor for StatusBarPreservingModifier()
{
  result = qword_1EDA188B0;
  if (!qword_1EDA188B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BC95A6B4()
{
  if (!qword_1EDA1EA38)
  {
    v0 = sub_1BCE1B4F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA1EA38);
    }
  }
}

uint64_t __DeviceIsSlow_block_invoke()
{
  result = MGIsDeviceOneOfType();
  DeviceIsSlow_result = result;
  return result;
}

Swift::Void __swiftcall WeatherConditionBackgroundManager.sceneWillEnterForeground()()
{
  if (qword_1EDA1EE78 != -1)
  {
    OUTLINED_FUNCTION_2_74();
  }

  v0 = sub_1BCE1ACC0();
  __swift_project_value_buffer(v0, qword_1EDA1EE80);
  v1 = sub_1BCE1ACA0();
  v2 = sub_1BCE1D8D0();
  if (os_log_type_enabled(v1, v2))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_33_13(&dword_1BC940000, v3, v4, "UIScene will enter foreground");
    OUTLINED_FUNCTION_27_0();
  }

  sub_1BC95AD00();
  sub_1BCE1AEA0();
  MEMORY[0x1BFB2D510]();
}

uint64_t sub_1BC95AD00()
{

  sub_1BCE1AA00();
}

uint64_t sub_1BC95AD44(uint64_t a1)
{
  v2 = type metadata accessor for StatusBarPreservingModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BC95AE8C()
{
  result = qword_1EDA18290;
  if (!qword_1EDA18290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA18290);
  }

  return result;
}

uint64_t type metadata accessor for ForegroundEffectCoordinator()
{
  result = qword_1EDA189F8;
  if (!qword_1EDA189F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BC95AF34()
{
  if (!qword_1EDA1BD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD07D20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD0E340);
    v0 = sub_1BCE1A2F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA1BD68);
    }
  }
}

void sub_1BC95AFB4()
{
  sub_1BC95AF34();
  if (v0 <= 0x3F)
  {
    sub_1BC95B140();
    if (v1 <= 0x3F)
    {
      sub_1BC94E288();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1BC95B140()
{
  if (!qword_1EDA1BD60)
  {
    sub_1BC947608(255, qword_1EDA16858);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD07D30);
    v0 = sub_1BCE1A2F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA1BD60);
    }
  }
}

unint64_t sub_1BC95B200()
{
  result = qword_1EDA1B8A0;
  if (!qword_1EDA1B8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0E260);
    sub_1BC95B2B8();
    sub_1BC957184(&qword_1EDA1B690, &qword_1EBD0E288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B8A0);
  }

  return result;
}

unint64_t sub_1BC95B2B8()
{
  result = qword_1EDA1B8A8;
  if (!qword_1EDA1B8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0E258);
    sub_1BC95B370();
    sub_1BC957184(&qword_1EDA1B6E8, &qword_1EBD0E298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B8A8);
  }

  return result;
}

unint64_t sub_1BC95B370()
{
  result = qword_1EDA1B8B8;
  if (!qword_1EDA1B8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0E240);
    sub_1BC95B428();
    sub_1BC957184(&qword_1EDA1B6E0, &qword_1EBD0E290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B8B8);
  }

  return result;
}

unint64_t sub_1BC95B428()
{
  result = qword_1EDA1B8C8;
  if (!qword_1EDA1B8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0E238);
    sub_1BC958364();
    sub_1BC95B56C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1B8C8);
  }

  return result;
}

unint64_t sub_1BC95B4B4()
{
  result = qword_1EDA1BB48;
  if (!qword_1EDA1BB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0E228);
    sub_1BC957184(&qword_1EDA1B740, &qword_1EBD0E220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BB48);
  }

  return result;
}

unint64_t sub_1BC95B56C()
{
  result = qword_1EDA17A68[0];
  if (!qword_1EDA17A68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA17A68);
  }

  return result;
}

uint64_t sub_1BC95B5DC()
{
  v0 = OUTLINED_FUNCTION_10_1();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  OUTLINED_FUNCTION_2_102(&qword_1EDA1B738);
  return swift_getOpaqueTypeConformance2();
}

_BYTE *storeEnumTagSinglePayload for TargetWindowSizeClass(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1BC95B748);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1BC95B794()
{
  v0 = sub_1BCE1A240();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  sub_1BCE1A260();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_0();
  (*(v10 + 104))(v9 - v8, *MEMORY[0x1E69D6EA0]);
  (*(v2 + 104))(v6, *MEMORY[0x1E69D6E88], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A978);
  swift_allocObject();
  result = sub_1BCE1A2C0();
  qword_1EDA1BDC8 = result;
  return result;
}

uint64_t View.enableForegroundEffects()(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BCE1B8B0();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - v8;
  v13[0] = sub_1BC95BF34;
  v13[1] = 0;
  v14 = 0;
  MEMORY[0x1BFB2F100](v13, a1, &type metadata for EnableForegroundEffectModifier, a2);
  v10 = sub_1BC95AE8C();
  v12[1] = a2;
  v12[2] = v10;
  OUTLINED_FUNCTION_0_87();
  swift_getWitnessTable();
  View.setForegroundEffectBackgroundContainer()();
  return (*(v6 + 8))(v9, v4);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t View.setForegroundEffectBackgroundContainer()()
{
  v0 = sub_1BCE1BF90();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[0] = 0xD000000000000010;
  v7[1] = 0x80000001BCE8C8D0;
  sub_1BCE1C030();
  sub_1BCE1C870();
  return (*(v2 + 8))(v5, v0);
}

uint64_t WeatherVFXConditionBackground.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07D58);
  OUTLINED_FUNCTION_2();
  v27 = v2;
  v28 = v1;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v25 - v4;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08348);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08338);
  OUTLINED_FUNCTION_2();
  v12 = v11;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  v16 = OBJC_IVAR____TtC9WeatherUI29WeatherVFXConditionBackground__backgroundEffectModel;
  *&v30 = 0;
  v29 = 1uLL;
  BYTE8(v30) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08360);
  sub_1BCE1B410();
  v17 = *(v12 + 32);
  v17(v0 + v16, v15, v10);
  v18 = OBJC_IVAR____TtC9WeatherUI29WeatherVFXConditionBackground__collisionEffectModel;
  *&v30 = 0;
  v29 = 1uLL;
  BYTE8(v30) = 0;
  sub_1BCE1B410();
  v17(v0 + v18, v15, v10);
  v19 = OBJC_IVAR____TtC9WeatherUI29WeatherVFXConditionBackground__backgroundMask;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08368);
  sub_1BCE1B410();
  (*(v6 + 32))(v0 + v19, v9, v25);
  v20 = OBJC_IVAR____TtC9WeatherUI29WeatherVFXConditionBackground__isLoaded;
  LOBYTE(v29) = 0;
  v21 = v26;
  sub_1BCE1B410();
  (*(v27 + 32))(v0 + v20, v21, v28);
  *(v0 + OBJC_IVAR____TtC9WeatherUI29WeatherVFXConditionBackground_isTransitioning) = 0;
  v22 = OBJC_IVAR____TtC9WeatherUI29WeatherVFXConditionBackground_fadeOutAnimationStartDate;
  v23 = sub_1BCE19060();
  __swift_storeEnumTagSinglePayload(v0 + v22, 1, 1, v23);
  return v0;
}

uint64_t sub_1BC95BE90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BCE1B3F0();
  *a1 = result;
  return result;
}

uint64_t sub_1BC95BEE0(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 25))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BC95BF34()
{
  type metadata accessor for ForegroundEffectCoordinator();
  swift_allocObject();
  return sub_1BC95BF6C();
}

uint64_t sub_1BC95BF6C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07D58);
  OUTLINED_FUNCTION_2();
  v40 = v3;
  v41 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v39 = &v35 - v4;
  sub_1BCE1D9A0();
  OUTLINED_FUNCTION_2();
  v37 = v6;
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  v36 = v8 - v7;
  v9 = sub_1BCE1D980();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_0();
  v35 = v11 - v10;
  v12 = sub_1BCE1D020();
  MEMORY[0x1EEE9AC00](v12 - 8);
  OUTLINED_FUNCTION_2_0();
  v13 = sub_1BCE1A7B0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_0();
  *(v0 + 16) = 4;
  *(v0 + 20) = 0x3F80000000000000;
  *(v0 + 28) = 513;
  *(v0 + 32) = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD07D60);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BCE3E050;
  sub_1BCE1A7A0();
  v42[0] = v14;
  sub_1BC95C6F8(&qword_1EDA1F6B0, MEMORY[0x1E69D6388]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07D70);
  sub_1BC94DD84(&qword_1EDA1F6A0, &qword_1EBD07D70);
  sub_1BCE1DC30();
  sub_1BCE1A7D0();
  swift_allocObject();
  *(v0 + 40) = sub_1BCE1A7C0();
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD07D20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD0E340);
  OUTLINED_FUNCTION_11_6();
  *(v0 + OBJC_IVAR____TtC9WeatherUI27ForegroundEffectCoordinator_blurStrength) = 1109393408;
  sub_1BC947608(0, qword_1EDA16858);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07D30);
  OUTLINED_FUNCTION_11_6();
  *(v0 + OBJC_IVAR____TtC9WeatherUI27ForegroundEffectCoordinator_displayLink) = 0;
  v15 = OBJC_IVAR____TtC9WeatherUI27ForegroundEffectCoordinator_renderQueue;
  sub_1BC947608(0, &qword_1EDA1C128);
  sub_1BCE1D000();
  v42[0] = MEMORY[0x1E69E7CC0];
  sub_1BC95C6F8(&qword_1EDA1C130, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07D78);
  sub_1BC94DD84(&qword_1EDA1C210, &qword_1EBD07D78);
  sub_1BCE1DC30();
  (*(v37 + 104))(v36, *MEMORY[0x1E69E8090], v38);
  *(v0 + v15) = sub_1BCE1D9D0();
  v16 = OBJC_IVAR____TtC9WeatherUI27ForegroundEffectCoordinator__isAbleToRender;
  LOBYTE(v42[0]) = 0;
  v17 = v39;
  sub_1BCE1B410();
  (*(v40 + 32))(v1 + v16, v17, v41);
  v18 = [objc_allocWithZone(MEMORY[0x1E69741C0]) init];
  v19 = OBJC_IVAR____TtC9WeatherUI27ForegroundEffectCoordinator_backgroundTextureDescriptor;
  *(v1 + OBJC_IVAR____TtC9WeatherUI27ForegroundEffectCoordinator_backgroundTextureDescriptor) = v18;
  [v18 setPixelFormat_];
  [*(v1 + v19) setUsage_];
  v20 = [objc_allocWithZone(MEMORY[0x1E69741C0]) init];
  *(v1 + OBJC_IVAR____TtC9WeatherUI27ForegroundEffectCoordinator_backgroundBlurTextureDescriptor) = v20;
  [v20 setPixelFormat_];
  v21 = OBJC_IVAR____TtC9WeatherUI27ForegroundEffectCoordinator_backgroundBlurTextureDescriptor;
  [*(v1 + OBJC_IVAR____TtC9WeatherUI27ForegroundEffectCoordinator_backgroundBlurTextureDescriptor) setUsage_];
  v22 = *(v1 + OBJC_IVAR____TtC9WeatherUI27ForegroundEffectCoordinator_backgroundTextureDescriptor);
  v23 = *(v1 + v21);
  v24 = v1 + OBJC_IVAR____TtC9WeatherUI27ForegroundEffectCoordinator_context;
  *v24 = 0;
  *(v24 + 8) = 0;
  *(v24 + 16) = v22;
  *(v24 + 24) = 0;
  *(v24 + 32) = 0;
  *(v24 + 40) = v23;
  *(v24 + 56) = 0;
  *(v24 + 64) = 0;
  *(v24 + 48) = 0;
  *(v24 + 72) = 1;
  v25 = qword_1EDA18AE0;
  v26 = v22;
  v27 = v23;
  if (v25 != -1)
  {
    OUTLINED_FUNCTION_0_15();
  }

  OUTLINED_FUNCTION_6_9();
  if (v28)
  {
    sub_1BC947608(0, &unk_1EDA16AD8);
    v29 = type metadata accessor for ForegroundEffectCoordinator.WeakBox();
    OUTLINED_FUNCTION_9_9();
    swift_allocObject();

    v30 = sub_1BC95C80C();
    v42[3] = v29;
    v42[0] = v30;
    v31 = sub_1BC95C850(v42, sel_render);
    LOBYTE(v42[0]) = 1;
    sub_1BCE1D930();
    [v31 setPreferredFrameRateRange_];
    [v31 setPaused_];
    v32 = [objc_opt_self() currentRunLoop];
    [v31 addToRunLoop:v32 forMode:*MEMORY[0x1E695DA28]];

    v33 = *(v1 + OBJC_IVAR____TtC9WeatherUI27ForegroundEffectCoordinator_displayLink);
    *(v1 + OBJC_IVAR____TtC9WeatherUI27ForegroundEffectCoordinator_displayLink) = v31;
  }

  return v1;
}

uint64_t sub_1BC95C6F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC95C740()
{
  sub_1BCE1A230();
  sub_1BCE1A210();
  if (qword_1EDA1BE60 != -1)
  {
    swift_once();
  }

  DeviceSupportsForegroundEffects();
  v0 = sub_1BCE1A220();

  byte_1EDA18AF0 = v0 & 1;
  return result;
}

uint64_t sub_1BC95C80C()
{
  swift_weakInit();
  swift_weakAssign();

  return v0;
}

id sub_1BC95C850(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_1BCE1E070();
  v5 = [swift_getObjCClassFromMetadata() displayLinkWithTarget:v4 selector:a2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v5;
}

uint64_t type metadata accessor for ForegroundEffectRenderer()
{
  result = qword_1EDA195C8;
  if (!qword_1EDA195C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BC95C91C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD0E340);
    v4 = sub_1BCE1A2F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BC95C994()
{
  sub_1BC94E288();
  if (v0 <= 0x3F)
  {
    sub_1BC95C91C(319, &qword_1EDA1BD70, &qword_1EBD0E338);
    if (v1 <= 0x3F)
    {
      sub_1BCDBD360();
      if (v2 <= 0x3F)
      {
        sub_1BC95C91C(319, &qword_1EDA1BD50, &qword_1EBD0E368);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_1BC95CB74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC95CBC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v33 = sub_1BCE1A7E0();
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  a4 &= 1u;
  *(v11 + 32) = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0E220);
  (*(*(v12 - 8) + 16))(a5, a1, v12);
  v13 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0E228) + 36));
  *v13 = sub_1BC970BC8;
  v13[1] = v11;
  v13[2] = 0;
  v13[3] = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  v15 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0E230) + 36));
  *v15 = 0;
  v15[1] = 0;
  v15[2] = sub_1BCDB1AB8;
  v15[3] = v14;
  KeyPath = swift_getKeyPath();
  v17 = swift_getKeyPath();
  v18 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0E238) + 36);
  *v18 = KeyPath;
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  *(v18 + 24) = v17;
  *(v18 + 32) = 0;
  v19 = swift_getKeyPath();
  sub_1BC95D090();
  sub_1BC95D090();
  v31 = type metadata accessor for ForegroundEffectCoordinator();
  sub_1BC95D098(&qword_1EDA18A08, type metadata accessor for ForegroundEffectCoordinator);
  v20 = sub_1BCE1B500();
  v21 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0E240) + 36));
  *v21 = v19;
  v21[1] = v20;
  v30 = swift_getKeyPath();
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  *(v22 + 32) = a4;
  v34 = MEMORY[0x1E69E7CC0];
  sub_1BC95D090();
  sub_1BC95D098(&qword_1EDA1EAD8, MEMORY[0x1E69D6420]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD0C510);
  sub_1BC957184(&qword_1EDA1C248, &unk_1EBD0C510);
  sub_1BCE1DC30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0E248);
  swift_allocObject();
  v23 = sub_1BCE1A940();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0E250);
  swift_allocObject();
  v24 = sub_1BC960DC4(v23, 0);
  v25 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0E258) + 36));
  *v25 = v30;
  v25[1] = v24;
  v25[2] = &protocol witness table for WeatherConditionPlaybackCoordinator<A>;
  v26 = swift_getKeyPath();
  sub_1BCE1B500();
  LOBYTE(a3) = sub_1BC960DC8();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0E260);
  v28 = a5 + *(result + 36);
  *v28 = v26;
  *(v28 + 8) = a3 & 1;
  return result;
}

uint64_t sub_1BC95D098(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_21_6()
{

  return sub_1BC94C05C(v1, v0);
}

void OUTLINED_FUNCTION_21_7()
{
  v3 = *(v0 + 48);
  *(v1 + 168) = v2;
  *(v1 + 176) = v3;
  *(v1 + 184) = 5;
}

uint64_t OUTLINED_FUNCTION_21_14()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_21_15()
{

  return sub_1BCE1C6A0();
}

uint64_t OUTLINED_FUNCTION_21_18()
{

  return sub_1BC9600B0();
}

uint64_t OUTLINED_FUNCTION_21_20(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_21_26(double a1, double a2, double a3, double a4)
{
  *&STACK[0x3A8] = a1;
  *&STACK[0x3A0] = a2;
  *&STACK[0x398] = a3;
  *&STACK[0x390] = a4;
}

uint64_t OUTLINED_FUNCTION_21_27()
{

  return sub_1BCE1D100();
}

uint64_t OUTLINED_FUNCTION_21_28()
{
}

void OUTLINED_FUNCTION_21_29()
{
  *(v7 - 176) = v0 + 56;
  v8 = *(*(v7 - 288) + 80);
  *(v7 - 320) = v1 + ((v8 + 32) & ~v8);
  *(v7 - 312) = v5 + 32;
  *(v7 - 256) = v5 + 8;
  *(v7 - 336) = v2;
  *(v7 - 280) = v3;
  *(v7 - 328) = v6;
  *(v7 - 264) = v1;
  *(v7 - 240) = v4;
  *(v7 - 184) = v0;
}

uint64_t sub_1BC95D454@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDA174B8 != -1)
  {
    swift_once();
  }

  return sub_1BCDB1BE4(&xmmword_1EDA174C0, a1, &qword_1EBD0E210);
}

double sub_1BC95D4C4()
{
  result = 0.0;
  xmmword_1EDA174C0 = xmmword_1BCE44170;
  return result;
}

uint64_t sub_1BC95D4DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else if ((*(a1 + 8) & 0xF000000000000007) != 0)
    {
      v2 = *a1 & 0x7FFFFFFF;
    }

    else
    {
      v2 = -1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BC95D59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29[6] = a1;
  v30 = a7;
  v29[3] = a5;
  v29[4] = a6;
  v29[1] = a3;
  v29[2] = a4;
  v29[0] = a2;
  v8 = type metadata accessor for WeatherProviderAttributionCacheManager.ProviderDetails(0);
  OUTLINED_FUNCTION_2();
  v31 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08568);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v29 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0ACC8);
  v18 = *(v12 + 72);
  v19 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v20 = 6;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1BCE3E120;
  v29[5] = v21;
  v22 = v21 + v19;
  sub_1BC95DA8C(v21 + v19);
  sub_1BC95E2C0(&qword_1EBD08580, &qword_1EBD08588, v22 + v18);
  sub_1BC95E2C0(&qword_1EBD0ACF0, &qword_1EBD085A0, v22 + 2 * v18);
  sub_1BC95E2C0(&qword_1EBD0ACE8, &qword_1EBD085A8, v22 + 3 * v18);
  sub_1BC95E500((v22 + 4 * v18));
  v23 = v30;
  v30 = v7;
  sub_1BC95EA10(v23, v22 + 5 * v18);
  v24 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1BC95DCE8();
    sub_1BC95ECC8(v17, v15);
    if (__swift_getEnumTagSinglePayload(v15, 1, v8) == 1)
    {
      sub_1BC94C05C(v15, &qword_1EBD08568);
    }

    else
    {
      OUTLINED_FUNCTION_4_40();
      sub_1BCBED070();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BCB66068();
        v24 = v26;
      }

      v25 = *(v24 + 16);
      if (v25 >= *(v24 + 24) >> 1)
      {
        sub_1BCB66068();
        v24 = v27;
      }

      *(v24 + 16) = v25 + 1;
      OUTLINED_FUNCTION_4_40();
      sub_1BCBED070();
    }

    v22 += v18;
    --v20;
  }

  while (v20);
  swift_setDeallocating();
  sub_1BC95ED38();
  sub_1BC95EDB4();
}

uint64_t sub_1BC95DA8C@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v1 = sub_1BCE198B0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0ACF8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_1BCE196E0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC95DCE8();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_1BC94C05C(v7, &qword_1EBD0ACF8);
    v12 = type metadata accessor for WeatherProviderAttributionCacheManager.ProviderDetails(0);
    return __swift_storeEnumTagSinglePayload(v15, 1, 1, v12);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    sub_1BCE196C0();
    sub_1BC95DD40(v15);
    (*(v2 + 8))(v4, v1);
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_1BC95DCE8()
{
  OUTLINED_FUNCTION_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_10_1();
  v3(v2);
  return v0;
}

uint64_t sub_1BC95DD40@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09490);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v36 - v6;
  v8 = sub_1BCE18E40();
  v39 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v38 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0ACD8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v36 - v14;
  v16 = sub_1BCE19730();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BCE198A0();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_1BC94C05C(v15, &qword_1EBD0ACD8);
    v20 = type metadata accessor for WeatherProviderAttributionCacheManager.ProviderDetails(0);
    v21 = a1;
  }

  else
  {
    v37 = a1;
    (*(v17 + 32))(v19, v15, v16);
    sub_1BCE19710();
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
    {
      (*(v17 + 8))(v19, v16);
      v22 = v7;
    }

    else
    {
      v23 = v39;
      v24 = v7;
      v25 = *(v39 + 32);
      v25(v12, v24, v8);
      sub_1BCE19720();
      if (__swift_getEnumTagSinglePayload(v5, 1, v8) != 1)
      {
        v28 = v38;
        v29 = v5;
        v30 = v25;
        v25(v38, v29, v8);
        v31 = sub_1BCE19700();
        v39 = v32;
        (*(v17 + 8))(v19, v16);
        v33 = type metadata accessor for WeatherProviderAttributionCacheManager.ProviderDetails(0);
        v34 = v37;
        v30(v37 + *(v33 + 20), v12, v8);
        v30(v34 + *(v33 + 24), v28, v8);
        v35 = v39;
        *v34 = v31;
        v34[1] = v35;
        v21 = v34;
        v26 = 0;
        v20 = v33;
        return __swift_storeEnumTagSinglePayload(v21, v26, 1, v20);
      }

      (*(v23 + 8))(v12, v8);
      (*(v17 + 8))(v19, v16);
      v22 = v5;
    }

    sub_1BC94C05C(v22, &qword_1EBD09490);
    v20 = type metadata accessor for WeatherProviderAttributionCacheManager.ProviderDetails(0);
    v21 = v37;
  }

  v26 = 1;
  return __swift_storeEnumTagSinglePayload(v21, v26, 1, v20);
}