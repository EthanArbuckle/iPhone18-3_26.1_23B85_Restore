uint64_t sub_1C9543E04()
{
  v0 = sub_1C96A51F4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  sub_1C96A5204();
  sub_1C96A51E4();
  v7 = *(v1 + 8);
  v7(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A55A8);
  v8 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C96AA1C0;
  (*(v1 + 16))(v9 + v8, v6, v0);
  v10 = sub_1C96A53C4();

  v7(v6, v0);
  return v10;
}

uint64_t sub_1C954400C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1C96A51A4();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

_BYTE *storeEnumTagSinglePayload for MachServices(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C9544150()
{
  result = qword_1EDB7AB10;
  if (!qword_1EDB7AB10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB7AB10);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FeatureFlags(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C954424C()
{
  result = qword_1EC3A55C0;
  if (!qword_1EC3A55C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A55C0);
  }

  return result;
}

uint64_t Debouncer.__allocating_init(interval:queue:)(uint64_t a1, double a2)
{
  v4 = swift_allocObject();
  Debouncer.init(interval:queue:)(a1, a2);
  return v4;
}

Swift::Void __swiftcall Debouncer.cancel()()
{
  sub_1C96A3D04();
  sub_1C96A50E4();

  if (*(v0 + 32))
  {
    sub_1C96A3D04();
    sub_1C96A6644();
  }

  *(v0 + 32) = 0;

  sub_1C96A3D04();
  sub_1C96A50F4();
}

uint64_t Debouncer.deinit()
{

  return v0;
}

uint64_t Debouncer.__deallocating_deinit()
{
  Debouncer.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t ReportWeatherConfiguration.onlineFeedbackURL.getter()
{
  v1 = *v0;
  sub_1C96A53C4();
  return v1;
}

WeatherCore::ReportWeatherConfiguration __swiftcall ReportWeatherConfiguration.init(onlineFeedbackURL:)(Swift::String_optional onlineFeedbackURL)
{
  object = onlineFeedbackURL.value._object;
  countAndFlagsBits = onlineFeedbackURL.value._countAndFlagsBits;
  v4 = v1;
  v5 = sub_1C947660C();
  if (object)
  {

    v6 = object;
  }

  else
  {
    countAndFlagsBits = v5;
  }

  *v4 = countAndFlagsBits;
  v4[1] = v6;
  result.onlineFeedbackURL._object = v6;
  result.onlineFeedbackURL._countAndFlagsBits = v5;
  return result;
}

uint64_t ReportWeatherConfiguration.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A55D0);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C9476480();
  sub_1C96A7F54();
  sub_1C96A7D24();
  return (*(v4 + 8))(v7, v2);
}

BOOL sub_1C95445F8@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1C94E0038();
  *a1 = result;
  return result;
}

unint64_t sub_1C954462C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C94764DC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_1C9544654@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1C94E0038();
  *a1 = result;
  return result;
}

uint64_t sub_1C9544680(uint64_t a1)
{
  v2 = sub_1C9476480();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C95446BC(uint64_t a1)
{
  v2 = sub_1C9476480();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static ReportWeatherConfiguration.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C96A7DE4();
  }
}

uint64_t sub_1C9544744(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

unint64_t sub_1C9544788()
{
  result = qword_1EC3A55D8;
  if (!qword_1EC3A55D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A55D8);
  }

  return result;
}

void sub_1C95447DC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  OUTLINED_FUNCTION_7(v13);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_2_20();
  v14 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x1EEE9AC00]();
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C96A7844();
  v21 = v20;
  v22 = *(v16 + 16);
  v31 = a3;
  v22(v18, a3, v14);
  v23 = sub_1C96A4A54();
  v32 = v6;
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v23);
  v34 = v19;
  v35 = v21;
  swift_bridgeObjectRetain_n();
  sub_1C96A53C4();
  MEMORY[0x1CCA8CB00](58, 0xE100000000000000);
  v33 = a1;
  MEMORY[0x1CCA8CB00](a1, a2);

  v24 = v34;
  v30 = v35;
  if (v19 == 0x746E6572727563 && v21 == 0xE700000000000000)
  {

    v26 = 1;
  }

  else
  {
    v26 = sub_1C96A7DE4();
  }

  (*(v16 + 8))(v31, v14);
  v27 = v26 & 1;
  v28 = type metadata accessor for Location();
  *(a4 + v28[11]) = 0;
  *a4 = v19;
  *(a4 + 8) = v21;
  *(a4 + 16) = v33;
  *(a4 + 24) = a2;
  *(a4 + 32) = a5;
  *(a4 + 40) = a6;
  *(a4 + 48) = v27;
  v29 = v30;
  *(a4 + 56) = v24;
  *(a4 + 64) = v29;
  (*(v16 + 32))(a4 + v28[5], v18, v14);
  sub_1C948E818(v32, a4 + v28[6]);
  OUTLINED_FUNCTION_14_11(v28[7]);
  OUTLINED_FUNCTION_14_11(v28[8]);
  OUTLINED_FUNCTION_14_11(v28[9]);
  OUTLINED_FUNCTION_14_11(v28[10]);
}

void static Location.oulu.getter(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v3);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_7_12();
  sub_1C96A4D64();
  v5 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_0_1(v5);
  if (v6)
  {
    __break(1u);
  }

  else
  {
    sub_1C95447DC(1970042191, 0xE400000000000000, v1, a1, 65.0121, 25.4651);
  }
}

void sub_1C9544BBC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v10);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  sub_1C96A4D64();
  v14 = sub_1C96A4DF4();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1C95447DC(a1, a2, v13, a3, a4, a5);
  }
}

void static Location.dakar.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v0);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_10_9();
  sub_1C96A4D64();
  v2 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_0_1(v2);
  if (v3)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_6_15(0x72616B6144, 14.7166, 17.4676);
  }
}

void static Location.sydney.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v0);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_12();
  OUTLINED_FUNCTION_13_8();
  v2 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_0_1(v2);
  if (v3)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_8_12(0x79656E647953, -33.865143, 151.2099);
  }
}

void static Location.jerusalem.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v0);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_22();
  sub_1C96A4D64();
  v2 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_0_1(v2);
  if (v3)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_17_11(0x656C61737572654ALL, 31.7683, 35.2137);
  }
}

void static Location.utqiagvik.getter(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v3);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_12();
  sub_1C96A4D64();
  v5 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_0_1(v5);
  if (v6)
  {
    __break(1u);
  }

  else
  {
    sub_1C95447DC(0x6976676169717455, 0xE90000000000006BLL, v1, a1, 71.290558, -156.788605);
  }
}

uint64_t DaemonDecommissioningService.init(notificationManager:predictedLocationsNotificationsManager:predictedLocationsIntentDonationManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1C96A7724();
  OUTLINED_FUNCTION_1();
  v32 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14();
  v13 = v12 - v11;
  sub_1C96A65E4();
  OUTLINED_FUNCTION_1();
  v30 = v15;
  v31 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14();
  v18 = v17 - v16;
  v19 = sub_1C96A51A4();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_14();
  v25 = v24 - v23;
  *(v4 + qword_1EDB79098) = a1;
  v33 = a2;
  sub_1C9469B6C(a2, v4 + qword_1EDB79090);
  sub_1C9469B6C(a3, v4 + qword_1EDB79088);
  v26 = qword_1EDB7A468;
  swift_unknownObjectRetain();
  if (v26 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v19, qword_1EDB7A470);
  (*(v21 + 16))(v25, v27, v19);
  sub_1C94A9950();
  sub_1C96A6584();
  sub_1C94BA40C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A68);
  sub_1C94BA464();
  sub_1C96A79E4();
  sub_1C96A7714();
  (*(v32 + 8))(v13, v8);
  (*(v30 + 8))(v18, v31);
  v28 = sub_1C96A5D74();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  return v28;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DaemonDecommissioningService.evaluateConnectionCriteria(_:)(NSXPCConnection a1)
{
  v1 = sub_1C96A5F34();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  v7 = v6 - v5;
  sub_1C96A5F14();
  sub_1C96A5D84();
  (*(v3 + 8))(v7, v1);
}

uint64_t DaemonDecommissioningService.Errors.hashValue.getter()
{
  v1 = *v0;
  sub_1C96A7EE4();
  MEMORY[0x1CCA8D880](v1);
  return sub_1C96A7F24();
}

uint64_t sub_1C9545490()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + qword_1EDB79090);
  return __swift_destroy_boxed_opaque_existential_1Tm(v0 + qword_1EDB79088);
}

id DaemonDecommissioningService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C954550C(uint64_t a1)
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a1 + qword_1EDB79090);
  return __swift_destroy_boxed_opaque_existential_1Tm(a1 + qword_1EDB79088);
}

uint64_t DaemonDecommissioningService.decommission()()
{
  OUTLINED_FUNCTION_18();
  *(v1 + 144) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090);
  *(v1 + 152) = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C95455EC()
{
  OUTLINED_FUNCTION_30();
  if (qword_1EC3A47A8 != -1)
  {
    OUTLINED_FUNCTION_7_13();
  }

  v1 = sub_1C96A6154();
  v0[20] = __swift_project_value_buffer(v1, qword_1EC3A7478);
  v2 = sub_1C96A6134();
  v3 = sub_1C96A76A4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C945E000, v2, v3, "Received proxy request for decommissioning the daemon", v4, 2u);
    MEMORY[0x1CCA8E3D0](v4, -1, -1);
  }

  v5 = v0[18];

  v6 = *(v5 + qword_1EDB79098);
  v0[2] = v0;
  v0[3] = sub_1C95457AC;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A55E0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1C9545D94;
  v0[13] = &block_descriptor_4;
  v0[14] = v7;
  [v6 unregisterWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C95457AC()
{
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1C9545880, 0, 0);
}

uint64_t sub_1C9545880()
{
  OUTLINED_FUNCTION_39();
  __swift_project_boxed_opaque_existential_1((*(v0 + 144) + qword_1EDB79090), *(*(v0 + 144) + qword_1EDB79090 + 24));
  OUTLINED_FUNCTION_10_10();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 168) = v2;
  *v2 = v0;
  v2[1] = sub_1C9545990;
  v3 = OUTLINED_FUNCTION_12_13();

  return v5(v3);
}

uint64_t sub_1C9545990()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C9545A74()
{
  OUTLINED_FUNCTION_39();
  __swift_project_boxed_opaque_existential_1((*(v0 + 144) + qword_1EDB79088), *(*(v0 + 144) + qword_1EDB79088 + 24));
  OUTLINED_FUNCTION_10_10();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  *v2 = v0;
  v2[1] = sub_1C9545B84;
  v3 = OUTLINED_FUNCTION_12_13();

  return v5(v3);
}

uint64_t sub_1C9545B84()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C9545C68()
{
  OUTLINED_FUNCTION_30();
  v1 = sub_1C96A6134();
  v2 = sub_1C96A76A4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    OUTLINED_FUNCTION_16_2(&dword_1C945E000, v4, v5, "Executed daemon decommissioning task");
    MEMORY[0x1CCA8E3D0](v3, -1, -1);
  }

  v6 = *(v0 + 152);

  v7 = sub_1C96A7414();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  sub_1C9545ED4(0, 0, v6, &unk_1C96AEDC8, v8);

  sub_1C954654C(v6);

  OUTLINED_FUNCTION_17();

  return v9();
}

uint64_t sub_1C9545D94(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return j__swift_continuation_resume();
}

uint64_t sub_1C9545DE4()
{
  OUTLINED_FUNCTION_30();
  if (qword_1EC3A47A8 != -1)
  {
    OUTLINED_FUNCTION_7_13();
  }

  v0 = sub_1C96A6154();
  __swift_project_value_buffer(v0, qword_1EC3A7478);
  v1 = sub_1C96A6134();
  v2 = sub_1C96A76A4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    OUTLINED_FUNCTION_16_2(&dword_1C945E000, v4, v5, "Letting the system know that we can now exit clean");
    MEMORY[0x1CCA8E3D0](v3, -1, -1);
  }

  MEMORY[0x1CCA8E530]();
  OUTLINED_FUNCTION_17();

  return v6();
}

uint64_t sub_1C9545ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  sub_1C94C4364(a3, v24 - v10);
  v12 = sub_1C96A7414();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);
  sub_1C96A3D04();
  if (EnumTagSinglePayload == 1)
  {
    sub_1C954654C(v11);
  }

  else
  {
    sub_1C96A7404();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1C96A7374();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1C96A70D4() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;
      sub_1C96A3D04();
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

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

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

uint64_t sub_1C9546158(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  v6 = a1;

  return sub_1C95463A0(&unk_1C96AEF00, v5);
}

uint64_t sub_1C95461D4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1C954627C;

  return DaemonDecommissioningService.decommission()();
}

uint64_t sub_1C954627C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_15();
  *v5 = v4;

  v2[2](v2);
  _Block_release(v2);
  OUTLINED_FUNCTION_17();

  return v6();
}

uint64_t sub_1C95463A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_1C96A7414();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_1C96AEF10;
  v9[5] = v8;
  sub_1C9546BF4(0, 0, v6, &unk_1C96AEF20, v9);
}

uint64_t sub_1C95464B0()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17_1(v0);
  *v1 = v2;
  v1[1] = sub_1C94B0C0C;

  return sub_1C9545DC8();
}

uint64_t sub_1C954654C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C95465B8()
{
  result = qword_1EC3A55E8;
  if (!qword_1EC3A55E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A55E8);
  }

  return result;
}

uint64_t type metadata accessor for DaemonDecommissioningService()
{
  result = qword_1EDB79078;
  if (!qword_1EDB79078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DaemonDecommissioningService.Errors(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

uint64_t sub_1C95467C8()
{
  OUTLINED_FUNCTION_30();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C94B0CEC;

  return sub_1C95461D4(v2, v3);
}

uint64_t sub_1C9546870(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1C94B0CEC;

  return v6();
}

uint64_t sub_1C9546958()
{
  OUTLINED_FUNCTION_39();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B0CEC;
  v2 = OUTLINED_FUNCTION_12_13();

  return v3(v2);
}

uint64_t sub_1C9546A0C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1C94B0C0C;

  return v7();
}

uint64_t objectdestroy_13Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C9546B34()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_17_1(v6);
  *v7 = v8;
  v7[1] = sub_1C94B0CEC;

  return sub_1C9546A0C(v2, v3, v4, v5);
}

uint64_t sub_1C9546BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v22 - v10;
  sub_1C94C4364(a3, v22 - v10);
  v12 = sub_1C96A7414();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1C954654C(v11);
  }

  else
  {
    sub_1C96A7404();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_1C96A7374();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_1C96A70D4() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;
      sub_1C96A3D04();
      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_1C954654C(a3);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C954654C(a3);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_1C9546E90()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_4(v1);

  return v4(v3);
}

uint64_t sub_1C9546F20()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_4(v1);

  return v4(v3);
}

uint64_t ActiveUserStatus.LaunchedApp.hashValue.getter()
{
  v1 = *v0;
  sub_1C96A7EE4();
  MEMORY[0x1CCA8D880](v1);
  return sub_1C96A7F24();
}

uint64_t ActiveUserStatus.secretId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C96A4A94();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void sub_1C95470C0()
{
  OUTLINED_FUNCTION_103();
  v1 = v0;
  v19 = v2;
  v17 = sub_1C96A4A94();
  v3 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  v18 = *(v3 + 16);
  v18(v5 - v4, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A55F0);
  v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A55F8) - 8);
  v8 = *(*v7 + 72);
  v9 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C96AEF50;
  v11 = v10 + v9;
  v12 = v7[14];
  *(v10 + v9) = 0;
  active = type metadata accessor for ActiveUserModel();
  sub_1C94D63E8(v1 + *(active + 24), v11 + v12);
  v14 = v7[14];
  *(v11 + v8) = 1;
  sub_1C94D63E8(v1 + *(active + 28), v11 + v8 + v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  sub_1C94D1C10();
  v15 = sub_1C96A6F04();
  (v18)(v19, v6, v17);
  v16 = sub_1C9547314(v15);

  sub_1C94D6860(v1);
  (*(v3 + 8))(v6, v17);
  *(v19 + *(type metadata accessor for ActiveUserStatus() + 20)) = v16;
  OUTLINED_FUNCTION_101();
}

uint64_t sub_1C9547314(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  v62 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v61 = &v50 - v3;
  v64 = sub_1C96A4A54();
  v4 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v59 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5600);
  MEMORY[0x1EEE9AC00](v8);
  v63 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v50 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v60 = &v50 - v14;
  v16 = a1 + 64;
  v15 = *(a1 + 64);
  v65 = MEMORY[0x1E69E7CC8];
  v66 = MEMORY[0x1E69E7CC8];
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v15;
  v20 = (v17 + 63) >> 6;
  v52 = v4;
  v58 = (v4 + 32);
  result = sub_1C96A53C4();
  v22 = 0;
  v53 = a1;
  v56 = v8;
  v51 = v12;
  v54 = v20;
  for (i = a1 + 64; v19; result = sub_1C94BE204(v30, &unk_1EC3A5430))
  {
LABEL_9:
    v24 = __clz(__rbit64(v19)) | (v22 << 6);
    v25 = *(*(a1 + 48) + v24);
    v26 = *(a1 + 56) + *(v62 + 72) * v24;
    v27 = *(v8 + 48);
    v28 = v8;
    v29 = v60;
    sub_1C94D63E8(v26, &v60[v27]);
    *v29 = v25;
    sub_1C9548198(v29, v12);
    v30 = v61;
    sub_1C94D63E8(&v12[*(v28 + 48)], v61);
    v31 = v12;
    v32 = v64;
    if (__swift_getEnumTagSinglePayload(v30, 1, v64) == 1)
    {
      sub_1C94BE204(v31, &qword_1EC3A5600);
      v12 = v31;
      v8 = v28;
    }

    else
    {
      v33 = v65;
      v34 = v57;
      v35 = *v58;
      (*v58)(v57, v30, v32);
      sub_1C9548198(v31, v63);
      v35(v59, v34, v32);
      v36 = *(v33 + 16);
      if (*(v33 + 24) <= v36)
      {
        sub_1C9548208(v36 + 1, 1);
      }

      v37 = v66;
      v38 = *v63;
      sub_1C96A7EE4();
      MEMORY[0x1CCA8D880](v38);
      result = sub_1C96A7F24();
      v39 = v37 + 64;
      v65 = v37;
      v40 = -1 << *(v37 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      v16 = i;
      v8 = v56;
      v20 = v54;
      if (((-1 << v41) & ~*(v37 + 64 + 8 * (v41 >> 6))) == 0)
      {
        v45 = 0;
        v46 = (63 - v40) >> 6;
        v44 = v64;
        while (++v42 != v46 || (v45 & 1) == 0)
        {
          v47 = v42 == v46;
          if (v42 == v46)
          {
            v42 = 0;
          }

          v45 |= v47;
          v48 = *(v39 + 8 * v42);
          if (v48 != -1)
          {
            v43 = __clz(__rbit64(~v48)) + (v42 << 6);
            goto LABEL_22;
          }
        }

        goto LABEL_27;
      }

      v43 = __clz(__rbit64((-1 << v41) & ~*(v37 + 64 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
      v44 = v64;
LABEL_22:
      v30 = &v63[*(v56 + 48)];
      *(v39 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
      v49 = v65;
      *(*(v65 + 48) + v43) = v38;
      v35((*(v49 + 56) + *(v52 + 72) * v43), v59, v44);
      ++*(v49 + 16);
      a1 = v53;
      v12 = v51;
    }

    v19 &= v19 - 1;
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v20)
    {

      return v65;
    }

    v19 = *(v16 + 8 * v23);
    ++v22;
    if (v19)
    {
      v22 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void ActiveUserStatus.isFirstLaunchOfDay(of:now:)()
{
  OUTLINED_FUNCTION_103();
  v44 = v4;
  v45 = v3;
  sub_1C96A4CF4();
  OUTLINED_FUNCTION_1();
  v42 = v6;
  v43 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14();
  v41 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = OUTLINED_FUNCTION_6_16();
  OUTLINED_FUNCTION_1();
  v38 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14();
  v15 = v14 - v13;
  sub_1C96A4D14();
  OUTLINED_FUNCTION_1();
  v39 = v17;
  v40 = v16;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_14();
  v20 = v19 - v18;
  v21 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_21();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v37 - v26;
  v28 = *(v0 + *(type metadata accessor for ActiveUserStatus() + 20));
  if (!*(v28 + 16))
  {
    goto LABEL_5;
  }

  v29 = sub_1C949E2B4(*v45);
  if ((v30 & 1) == 0)
  {
    goto LABEL_5;
  }

  (*(v23 + 16))(v1, *(v28 + 56) + *(v23 + 72) * v29, v21);
  (*(v23 + 32))(v27, v1, v21);
  v46 = 0;
  ActiveUserStatus.isFirstLaunchOfMonth(of:now:)();
  if (v31)
  {
    (*(v23 + 8))(v27, v21);
LABEL_5:
    OUTLINED_FUNCTION_101();
    return;
  }

  sub_1C96A4D94();
  if (__swift_getEnumTagSinglePayload(v2, 1, v10) != 1)
  {
    v32 = v38;
    (*(v38 + 32))(v15, v2, v10);
    sub_1C96A4C34();
    (*(v32 + 8))(v15, v10);
    LODWORD(v38) = *MEMORY[0x1E6969A48];
    v33 = v41;
    v34 = v42;
    v37 = *(v42 + 104);
    v35 = v43;
    v37(v41);
    v45 = sub_1C96A4D04();
    v36 = *(v34 + 8);
    v36(v33, v35);
    (v37)(v33, v38, v35);
    sub_1C96A4D04();
    v36(v33, v35);
    (*(v39 + 8))(v20, v40);
    (*(v23 + 8))(v27, v21);
    goto LABEL_5;
  }

  __break(1u);
}

void ActiveUserStatus.isFirstLaunchOfMonth(of:now:)()
{
  OUTLINED_FUNCTION_103();
  v51 = v4;
  v52 = v3;
  sub_1C96A4CF4();
  OUTLINED_FUNCTION_1();
  v49 = v5;
  v50 = v6;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = OUTLINED_FUNCTION_6_16();
  OUTLINED_FUNCTION_1();
  v46 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14();
  v16 = v15 - v14;
  sub_1C96A4D14();
  OUTLINED_FUNCTION_1();
  v47 = v18;
  v48 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14();
  v21 = v20 - v19;
  v22 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2_21();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v43 - v27;
  v29 = *(v0 + *(type metadata accessor for ActiveUserStatus() + 20));
  if (!*(v29 + 16))
  {
    goto LABEL_5;
  }

  v30 = sub_1C949E2B4(*v52);
  if ((v31 & 1) == 0)
  {
    goto LABEL_5;
  }

  (*(v24 + 2))(v1, *(v29 + 56) + *(v24 + 9) * v30, v22);
  v52 = v24;
  v32 = *(v24 + 4);
  v45 = v22;
  v32(v28, v1, v22);
  sub_1C96A4D94();
  if (__swift_getEnumTagSinglePayload(v2, 1, v11) != 1)
  {
    v33 = v46;
    (*(v46 + 32))(v16, v2, v11);
    sub_1C96A4C34();
    (*(v33 + 8))(v16, v11);
    v34 = *MEMORY[0x1E6969A78];
    v36 = v49;
    v35 = v50;
    v37 = *(v50 + 104);
    v37(v9, v34, v49);
    v46 = sub_1C96A4D04();
    v38 = *(v35 + 8);
    v39 = OUTLINED_FUNCTION_116();
    v38(v39);
    HIDWORD(v43) = *MEMORY[0x1E6969A68];
    (v37)(v9);
    v50 = sub_1C96A4D04();
    v40 = OUTLINED_FUNCTION_116();
    v38(v40);
    v37(v9, v34, v36);
    v44 = sub_1C96A4D04();
    v41 = OUTLINED_FUNCTION_116();
    v38(v41);
    v37(v9, HIDWORD(v43), v36);
    sub_1C96A4D04();
    v42 = OUTLINED_FUNCTION_116();
    v38(v42);
    (*(v47 + 8))(v21, v48);
    v52[1](v28, v45);
LABEL_5:
    OUTLINED_FUNCTION_101();
    return;
  }

  __break(1u);
}

_BYTE *storeEnumTagSinglePayload for ActiveUserStatus.LaunchedApp(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

uint64_t sub_1C9548198(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5600);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C9548208(uint64_t a1, int a2)
{
  v3 = v2;
  v41 = sub_1C96A4A54();
  v5 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5608);
  v39 = a2;
  result = sub_1C96A7BC4();
  v9 = result;
  if (!*(v7 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v9;
    return result;
  }

  v35 = v2;
  v10 = 0;
  v11 = (v7 + 64);
  v12 = 1 << *(v7 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v7 + 64);
  v15 = (v12 + 63) >> 6;
  v36 = (v5 + 16);
  v37 = v7;
  v38 = v5;
  v16 = (v5 + 32);
  v17 = result + 64;
  if (!v14)
  {
LABEL_7:
    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_12;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      sub_1C94C18E0(0, (v34 + 63) >> 6, v11);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_12:
    v21 = v18 | (v10 << 6);
    v22 = *(v7 + 56);
    v23 = *(*(v7 + 48) + v21);
    v24 = *(v38 + 72);
    v25 = v22 + v24 * v21;
    if (v39)
    {
      (*v16)(v40, v25, v41);
    }

    else
    {
      (*v36)(v40, v25, v41);
    }

    sub_1C96A7EE4();
    MEMORY[0x1CCA8D880](v23);
    result = sub_1C96A7F24();
    v26 = -1 << *(v9 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v17 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    *(*(v9 + 48) + v29) = v23;
    result = (*v16)(*(v9 + 56) + v24 * v29, v40, v41);
    ++*(v9 + 16);
    v7 = v37;
    if (!v14)
    {
      goto LABEL_7;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v17 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1C954857C(void *a1, uint64_t *a2)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);

  return sub_1C95485D0(v6, a2, v2, v4, v5);
}

uint64_t sub_1C95485D0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[3] = a4;
  v15[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  v10 = *a2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    v14 = v10;
    (*(v11 + 8))(v15, &v14, ObjectType, v11);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v15);
}

void sub_1C95486E4(void *a1, void *a2)
{
  v4 = [objc_opt_self() defaultCenter];
  v5 = v4;
  if (*a1 != -1)
  {
    swift_once();
    v4 = v5;
  }

  [v4 postNotificationName:*a2 object:0];
}

uint64_t NanoPreferencesSynchronizer.__allocating_init(domain:container:appGroupContainer:)()
{
  OUTLINED_FUNCTION_0_28();
  v0 = swift_allocObject();
  NanoPreferencesSynchronizer.init(domain:container:appGroupContainer:)();
  return v0;
}

void NanoPreferencesSynchronizer.synchronize(keys:)()
{
  v1 = *(v0 + 64);
  v2 = sub_1C96A7004();
  v3 = sub_1C96A7564();
  v4 = sub_1C96A7004();
  v5 = sub_1C96A7004();
  [v1 synchronizeUserDefaultsDomain:v2 keys:v3 container:v4 appGroupContainer:v5];
}

uint64_t NanoPreferencesSynchronizer.deinit()
{

  return v0;
}

uint64_t NanoPreferencesSynchronizer.__deallocating_deinit()
{
  NanoPreferencesSynchronizer.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

WeatherCore::FeaturesConfiguration __swiftcall FeaturesConfiguration.init(exampleFeatureFlag:isNotificationDedupingEnabled:)(Swift::Bool_optional exampleFeatureFlag, Swift::Bool_optional isNotificationDedupingEnabled)
{
  *v2 = exampleFeatureFlag.value == 2 || exampleFeatureFlag.value;
  v2[1] = isNotificationDedupingEnabled.value == 2 || isNotificationDedupingEnabled.value;
  result.exampleFeatureFlag = exampleFeatureFlag.value;
  return result;
}

uint64_t FeaturesConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5620);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v11 - v8;
  v12 = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C947D86C();
  sub_1C96A7F54();
  v14 = 0;
  sub_1C96A7D34();
  if (!v2)
  {
    v13 = 1;
    sub_1C96A7D34();
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_1C9548B28()
{
  v0 = sub_1C96A7BE4();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C9548BA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C9548B28();
  *a1 = result;
  return result;
}

unint64_t sub_1C9548BD0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C947D8C8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C9548BFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C9548B28();
  *a1 = result;
  return result;
}

uint64_t sub_1C9548C24(uint64_t a1)
{
  v2 = sub_1C947D86C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9548C60(uint64_t a1)
{
  v2 = sub_1C947D86C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t getEnumTagSinglePayload for FeaturesConfiguration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_1C9548D8C()
{
  result = qword_1EC3A5628;
  if (!qword_1EC3A5628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5628);
  }

  return result;
}

uint64_t sub_1C9548DEC(char a1, char a2)
{
  v3 = 6844525;
  v4 = 0xE300000000000000;
  switch(a1)
  {
    case 1:
      v3 = 6844523;
      break;
    case 2:
      v4 = 0xE200000000000000;
      v3 = 29549;
      break;
    case 3:
      v3 = 7628386;
      break;
    case 4:
      v3 = 7566443;
      break;
    default:
      break;
  }

  v5 = 6844525;
  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v5 = 6844523;
      break;
    case 2:
      v6 = 0xE200000000000000;
      v5 = 29549;
      break;
    case 3:
      v5 = 7628386;
      break;
    case 4:
      v5 = 7566443;
      break;
    default:
      break;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_16();
  }

  return v8 & 1;
}

uint64_t sub_1C9548EFC()
{
  v0 = 0xEB00000000657275;
  OUTLINED_FUNCTION_49_2();
  v4 = v3;
  v5 = v2;
  v6 = 0xEB00000000657275;
  switch(v4)
  {
    case 1:
      v6 = 0xE800000000000000;
      v5 = 0x65636E6174736964;
      break;
    case 2:
      v5 = 0x7469706963657270;
      v6 = 0xED00006E6F697461;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v5 = 0x6572757373657270;
      break;
    case 4:
      v6 = 0xE400000000000000;
      v5 = 1684957559;
      break;
    case 5:
      v6 = 0xE300000000000000;
      v5 = 7105633;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = 0xE800000000000000;
      v2 = 0x65636E6174736964;
      break;
    case 2:
      OUTLINED_FUNCTION_45_3();
      OUTLINED_FUNCTION_44_1();
      break;
    case 3:
      v0 = 0xE800000000000000;
      v2 = 0x6572757373657270;
      break;
    case 4:
      v0 = 0xE400000000000000;
      v2 = 1684957559;
      break;
    case 5:
      v0 = 0xE300000000000000;
      v2 = 7105633;
      break;
    default:
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_10_11();
  }

  return v8 & 1;
}

uint64_t sub_1C9549078(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xE500000000000000;
  }

  OUTLINED_FUNCTION_17_12();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_16();
  }

  return v8 & 1;
}

uint64_t sub_1C9549104(char a1, char a2)
{
  v3 = 0xE200000000000000;
  v4 = 25705;
  switch(a1)
  {
    case 1:
      v3 = 0xE400000000000000;
      v4 = 1701667182;
      break;
    case 2:
      v4 = 0x616E6964726F6F63;
      v3 = 0xEA00000000006574;
      break;
    case 3:
      v3 = 0xE800000000000000;
      v4 = 0x656E6F5A656D6974;
      break;
    case 4:
      v4 = 0x726665527473616CLL;
      v3 = 0xEF65746144687365;
      break;
    case 5:
      v4 = 0x6954686372616573;
      v3 = 0xEB00000000656C74;
      break;
    case 6:
      v4 = 0x7553686372616573;
      v3 = 0xEE00656C74697462;
      break;
    case 7:
      v4 = 0x4E65736963657270;
      v3 = 0xEB00000000656D61;
      break;
    case 8:
      v4 = 0x7261646E6F636573;
      v3 = 0xED0000656D614E79;
      break;
    default:
      break;
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  switch(a2)
  {
    case 1:
      v5 = 0xE400000000000000;
      v6 = 1701667182;
      break;
    case 2:
      v6 = 0x616E6964726F6F63;
      v5 = 0xEA00000000006574;
      break;
    case 3:
      v5 = 0xE800000000000000;
      v6 = 0x656E6F5A656D6974;
      break;
    case 4:
      v6 = 0x726665527473616CLL;
      v5 = 0xEF65746144687365;
      break;
    case 5:
      v6 = 0x6954686372616573;
      v5 = 0xEB00000000656C74;
      break;
    case 6:
      v6 = 0x7553686372616573;
      v5 = 0xEE00656C74697462;
      break;
    case 7:
      v6 = 0x4E65736963657270;
      v5 = 0xEB00000000656D61;
      break;
    case 8:
      v6 = 0x7261646E6F636573;
      v5 = 0xED0000656D614E79;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_16();
  }

  return v8 & 1;
}

uint64_t sub_1C9549388(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = "featureAvailabilityURL";
    }

    else
    {
      v2 = "mapDataLearnMoreURL";
    }
  }

  else
  {
    v2 = "currentLocationCertaintyRadius";
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_27_6();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_5_16();
  }

  return v5 & 1;
}

uint64_t sub_1C954946C(char a1)
{
  v2 = "networkConfiguration";
  switch(a1)
  {
    case 1:
      v2 = "appReviewEnabled";
      break;
    case 2:
      v2 = "reviewPromptSamplingRate";
      break;
    case 3:
      v2 = "savedLocationsCountThreshold";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_27_6();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_5_16();
  }

  return v5 & 1;
}

uint64_t sub_1C95495CC(unsigned __int8 a1, char a2)
{
  v2 = 0x676E697472617473;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x676E697472617473;
  switch(v4)
  {
    case 1:
      v5 = 0x676E6970706F7473;
      break;
    case 2:
      v5 = 0xD000000000000011;
      v6 = "anguageTag";
      goto LABEL_5;
    case 3:
      v5 = 0xD000000000000011;
      v6 = "starting-stopping";
LABEL_5:
      v3 = v6 | 0x8000000000000000;
      break;
    default:
      break;
  }

  v7 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x676E6970706F7473;
      break;
    case 2:
      v2 = 0xD000000000000011;
      v8 = "anguageTag";
      goto LABEL_10;
    case 3:
      OUTLINED_FUNCTION_32_1();
LABEL_10:
      v7 = v8 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_5_16();
  }

  return v10 & 1;
}

uint64_t sub_1C95496F8(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v3 = 1701667182;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0x80000001C96CA040;
  }

  if (a2)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 1701667182;
  }

  if (a2)
  {
    v6 = 0x80000001C96CA040;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_16();
  }

  return v8 & 1;
}

uint64_t sub_1C9549788(char a1)
{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xE200000000000000;
  }

  OUTLINED_FUNCTION_17_12();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_16();
  }

  return v8 & 1;
}

uint64_t sub_1C9549808()
{
  OUTLINED_FUNCTION_17_12();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1C96A7DE4();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1C954986C(char a1, char a2)
{
  v3 = 6844525;
  v4 = 0xE300000000000000;
  switch(a1)
  {
    case 1:
      v3 = 6843755;
      break;
    case 2:
      v4 = 0xE200000000000000;
      v3 = 29549;
      break;
    case 3:
      v3 = 7628386;
      break;
    case 4:
      v3 = 7566443;
      break;
    default:
      break;
  }

  v5 = 6844525;
  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v5 = 6843755;
      break;
    case 2:
      v6 = 0xE200000000000000;
      v5 = 29549;
      break;
    case 3:
      v5 = 7628386;
      break;
    case 4:
      v5 = 7566443;
      break;
    default:
      break;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_16();
  }

  return v8 & 1;
}

uint64_t sub_1C954997C(char a1)
{
  if (a1)
  {
    v1 = 0xEC0000006C656E6ELL;
  }

  else
  {
    v1 = 0xE800000000000000;
  }

  OUTLINED_FUNCTION_17_12();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_16();
  }

  return v8 & 1;
}

uint64_t sub_1C9549A14(unsigned __int8 a1, char a2)
{
  v2 = 0x303030303030;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x303030303030;
  switch(v4)
  {
    case 1:
      v3 = 0x80000001C96CB890;
      v5 = 0xD00000000000001CLL;
      break;
    case 2:
      v3 = 0x80000001C96CB8B0;
      v5 = 0xD00000000000001DLL;
      break;
    case 3:
      break;
    case 4:
      v3 = 0x80000001C96CB8E0;
      v5 = 0xD000000000000016;
      break;
    default:
      v3 = 0x80000001C96CB870;
      v5 = 0xD000000000000015;
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0x80000001C96CB890;
      v2 = 0xD00000000000001CLL;
      break;
    case 2:
      v6 = 0x80000001C96CB8B0;
      v2 = 0xD00000000000001DLL;
      break;
    case 3:
      break;
    case 4:
      v6 = 0x80000001C96CB8E0;
      v2 = 0xD000000000000016;
      break;
    default:
      v6 = 0x80000001C96CB870;
      v2 = 0xD000000000000015;
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_16();
  }

  return v8 & 1;
}

uint64_t sub_1C9549B70(unsigned __int8 a1, char a2)
{
  v2 = 1701736302;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701736302;
  switch(v4)
  {
    case 1:
      v6 = "dic";
      goto LABEL_4;
    case 2:
      v3 = 0x80000001C96CA120;
      v5 = 0xD000000000000018;
      break;
    case 3:
      v3 = 0x80000001C96CA140;
      v5 = 0xD000000000000016;
      break;
    case 4:
      v6 = "infiniteLoopAndMission";
LABEL_4:
      v3 = v6 | 0x8000000000000000;
      v5 = 0xD00000000000001BLL;
      break;
    case 5:
      v3 = 0x80000001C96CA180;
      v5 = 0xD000000000000013;
      break;
    default:
      break;
  }

  v7 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v8 = "dic";
      goto LABEL_11;
    case 2:
      v7 = 0x80000001C96CA120;
      v2 = 0xD000000000000018;
      break;
    case 3:
      v7 = 0x80000001C96CA140;
      v2 = 0xD000000000000016;
      break;
    case 4:
      v8 = "infiniteLoopAndMission";
LABEL_11:
      v7 = v8 | 0x8000000000000000;
      v2 = 0xD00000000000001BLL;
      break;
    case 5:
      v7 = 0x80000001C96CA180;
      v2 = 0xD000000000000013;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_5_16();
  }

  return v10 & 1;
}

uint64_t sub_1C9549CFC(unsigned __int8 a1, char a2)
{
  v2 = 0x676E69646E6570;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x676E69646E6570;
  switch(v4)
  {
    case 1:
      v5 = 0x65726576696C6564;
      v3 = 0xE900000000000064;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x64656E65706FLL;
      break;
    case 3:
      v5 = 0x6465766F6D6572;
      break;
    case 4:
      v3 = 0xE800000000000000;
      v5 = 0x646563616C706572;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x65726576696C6564;
      v6 = 0xE900000000000064;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x64656E65706FLL;
      break;
    case 3:
      v2 = 0x6465766F6D6572;
      break;
    case 4:
      v6 = 0xE800000000000000;
      v2 = 0x646563616C706572;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_16();
  }

  return v8 & 1;
}

uint64_t sub_1C9549E64(char a1)
{
  if (a1)
  {
    v1 = 0xED00007265687461;
  }

  else
  {
    v1 = 0xEB00000000676154;
  }

  OUTLINED_FUNCTION_17_12();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_16();
  }

  return v8 & 1;
}

uint64_t sub_1C9549F08(char a1)
{
  if (a1)
  {
    v2 = "exampleFeatureFlag";
  }

  else
  {
    v2 = "onlineFeedbackURL";
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_27_6();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_5_16();
  }

  return v5 & 1;
}

uint64_t sub_1C9549F98(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000746E65;
  v3 = 0x6D6E6F7269766E65;
  v4 = a1;
  v5 = 0x6D6E6F7269766E65;
  v6 = 0xEB00000000746E65;
  switch(v4)
  {
    case 1:
      v6 = 0x80000001C96CB910;
      v5 = 0xD000000000000017;
      break;
    case 2:
      v6 = 0x80000001C96CB930;
      v5 = 0xD00000000000001DLL;
      break;
    case 3:
      v6 = 0x80000001C96CB950;
      v5 = 0xD000000000000016;
      break;
    case 4:
      v6 = 0x80000001C96CB970;
      v5 = 0xD000000000000018;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0x80000001C96CB910;
      v3 = 0xD000000000000017;
      break;
    case 2:
      v2 = 0x80000001C96CB930;
      v3 = 0xD00000000000001DLL;
      break;
    case 3:
      v2 = 0x80000001C96CB950;
      v3 = 0xD000000000000016;
      break;
    case 4:
      v2 = 0x80000001C96CB970;
      v3 = 0xD000000000000018;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_10_11();
  }

  return v8 & 1;
}

uint64_t sub_1C954A100(unsigned __int8 a1, char a2)
{
  v2 = 0xEA00000000006564;
  v3 = 0x6953726576726573;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x6953746E65696C63;
    }

    else
    {
      v5 = 0x6568636163;
    }

    if (v4 == 1)
    {
      v6 = 0xEA00000000006564;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0x6953726576726573;
    v6 = 0xEA00000000006564;
  }

  if (a2)
  {
    v3 = a2 == 1 ? 0x6953746E65696C63 : 0x6568636163;
    if (a2 != 1)
    {
      v2 = 0xE500000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_10_11();
  }

  return v8 & 1;
}

uint64_t sub_1C954A214(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = "legacyRevGeoCountryList";
    }

    else
    {
      v2 = "RegionAllowListGeoJSON";
    }
  }

  else
  {
    v2 = "nceIntensityMultipleThreshold";
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_27_6();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_5_16();
  }

  return v5 & 1;
}

uint64_t sub_1C954A2E8(uint64_t a1, uint64_t a2)
{
  v3 = 0xD000000000000020;
  v4 = 0x68736572666572;
  v5 = "useBackgroundReverseGeocodingPriority";
  v6 = "timelineReloadDebouncingInterval";
  v7 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v8 = 0xD000000000000025;
    }

    else
    {
      v8 = 0xD000000000000020;
    }

    if (v7 == 1)
    {
      v2 = 0x80000001C96CA880;
    }

    else
    {
      v2 = 0x80000001C96CA8B0;
    }
  }

  else
  {
    v8 = OUTLINED_FUNCTION_46_1(a1, a2, 0x68736572666572);
  }

  if (a2)
  {
    v9 = (v5 - 32) | 0x8000000000000000;
    v10 = (v6 - 32) | 0x8000000000000000;
    if (a2 == 1)
    {
      v4 = v3 + 5;
    }

    else
    {
      v4 = v3;
    }

    if (a2 == 1)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  if (v8 == v4 && v2 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_5_16();
  }

  return v13 & 1;
}

uint64_t sub_1C954A3C4()
{
  v0 = 0xEA00000000004E4FLL;
  OUTLINED_FUNCTION_19_8();
  v4 = v3;
  v5 = v2;
  v6 = 0xEA00000000004E4FLL;
  switch(v4)
  {
    case 1:
      v5 = OUTLINED_FUNCTION_51_2(16);
      v6 = v7 | 0x8000000000000000;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v5 = OUTLINED_FUNCTION_48_1();
      break;
    case 3:
      v6 = 0xE200000000000000;
      v5 = 16721;
      break;
    case 4:
      v6 = 0xE400000000000000;
      v5 = 1414743380;
      break;
    case 5:
      v6 = 0xE500000000000000;
      v5 = 0x4C45564544;
      break;
    case 6:
      v6 = 0xE500000000000000;
      v5 = 0x6C61636F6CLL;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_32_1();
      v0 = v8 | 0x8000000000000000;
      break;
    case 2:
      v0 = 0xE700000000000000;
      OUTLINED_FUNCTION_47_0();
      break;
    case 3:
      v0 = 0xE200000000000000;
      v2 = 16721;
      break;
    case 4:
      v0 = 0xE400000000000000;
      v2 = 1414743380;
      break;
    case 5:
      v0 = 0xE500000000000000;
      v2 = 0x4C45564544;
      break;
    case 6:
      v0 = 0xE500000000000000;
      v2 = 0x6C61636F6CLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_10_11();
  }

  return v10 & 1;
}

uint64_t sub_1C954A55C()
{
  OUTLINED_FUNCTION_17_12();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1C96A7DE4();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1C954A5C0()
{
  v0 = 0xEA00000000007974;
  OUTLINED_FUNCTION_43_3();
  v4 = v3;
  v5 = v2;
  v6 = 0xEA00000000007974;
  switch(v4)
  {
    case 1:
      v5 = 0x6F46796C72756F68;
      v6 = 0xEE00747361636572;
      break;
    case 2:
      v5 = 0x6B694C736C656566;
      v6 = 0xE900000000000065;
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_51_2(21);
      v6 = v7 | 0x8000000000000000;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v2 = 0x6F46796C72756F68;
      v0 = 0xEE00747361636572;
      break;
    case 2:
      v2 = 0x6B694C736C656566;
      v0 = 0xE900000000000065;
      break;
    case 3:
      OUTLINED_FUNCTION_32_1();
      v0 = v8 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_10_11();
  }

  return v10 & 1;
}

uint64_t sub_1C954A714(uint64_t a1, uint64_t a2)
{
  v3 = 0x64656C62616E65;
  v4 = "trendingPlacement";
  v5 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v6 = 0xD000000000000011;
    }

    else
    {
      v6 = 0x6C50657265766573;
    }

    if (v5 == 1)
    {
      v2 = 0x80000001C96CAF40;
    }

    else
    {
      v2 = 0xEF746E656D656361;
    }
  }

  else
  {
    v6 = OUTLINED_FUNCTION_46_1(a1, a2, 0x64656C62616E65);
  }

  if (a2)
  {
    v7 = (v4 - 32) | 0x8000000000000000;
    if (a2 == 1)
    {
      v3 = 0xD000000000000011;
    }

    else
    {
      v3 = 0x6C50657265766573;
    }

    if (a2 == 1)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0xEF746E656D656361;
    }
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v6 == v3 && v2 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_5_16();
  }

  return v10 & 1;
}

uint64_t sub_1C954A818(unsigned __int8 a1, char a2)
{
  v2 = 0x4C45564544;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x4C45564544;
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = OUTLINED_FUNCTION_48_1();
      break;
    case 3:
      v3 = 0xE200000000000000;
      v5 = 16721;
      break;
    case 4:
      v5 = OUTLINED_FUNCTION_35_3();
      v3 = 0xEA00000000000000;
      break;
    case 5:
      v5 = OUTLINED_FUNCTION_35_3();
      v3 = 0xEC00000032480000;
      break;
    case 6:
      v5 = 0x6C61636F6CLL;
      break;
    default:
      v5 = OUTLINED_FUNCTION_51_2(23);
      v3 = v6 | 0x8000000000000000;
      break;
  }

  v7 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      break;
    case 2:
      v7 = 0xE700000000000000;
      OUTLINED_FUNCTION_47_0();
      break;
    case 3:
      v7 = 0xE200000000000000;
      v2 = 16721;
      break;
    case 4:
      OUTLINED_FUNCTION_19_8();
      v7 = 0xEA00000000004E4FLL;
      break;
    case 5:
      OUTLINED_FUNCTION_19_8();
      v7 = 0xEC00000032484E4FLL;
      break;
    case 6:
      v2 = 0x6C61636F6CLL;
      break;
    default:
      OUTLINED_FUNCTION_32_1();
      v7 = v8 | 0x8000000000000000;
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_5_16();
  }

  return v10 & 1;
}

uint64_t sub_1C954A994(unsigned __int8 a1, char a2)
{
  v2 = 0x656372756F73;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x656372756F73;
  switch(v4)
  {
    case 1:
      v3 = 0xE300000000000000;
      v5 = 7107189;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v5 = 0x646E694B656C6974;
      break;
    case 3:
      v3 = 0x80000001C96CB180;
      v5 = 0xD00000000000002DLL;
      break;
    case 4:
      v5 = 0xD00000000000001BLL;
      v3 = 0x80000001C96CB1B0;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE300000000000000;
      v2 = 7107189;
      break;
    case 2:
      v6 = 0xE800000000000000;
      v2 = 0x646E694B656C6974;
      break;
    case 3:
      v6 = 0x80000001C96CB180;
      v2 = 0xD00000000000002DLL;
      break;
    case 4:
      OUTLINED_FUNCTION_32_1();
      v6 = v7 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_5_16();
  }

  return v9 & 1;
}

uint64_t sub_1C954AAF4(unsigned __int8 a1, char a2)
{
  v2 = 0xED00006574614474;
  v3 = 0x7261745372657375;
  v4 = a1;
  v5 = 0x7261745372657375;
  v6 = 0xED00006574614474;
  switch(v4)
  {
    case 1:
      v5 = 0x6E65644972657375;
      v6 = 0xEE00726569666974;
      break;
    case 2:
      v6 = 0x80000001C96CAD90;
      v5 = 0xD000000000000015;
      break;
    case 3:
      v6 = 0x80000001C96CADB0;
      v5 = 0xD000000000000017;
      break;
    case 4:
      v6 = 0x80000001C96CADD0;
      v5 = 0xD00000000000001BLL;
      break;
    case 5:
      v6 = 0x80000001C96CADF0;
      v5 = 0xD000000000000022;
      break;
    case 6:
      v6 = 0x80000001C96CAE20;
      v5 = 0xD000000000000024;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x6E65644972657375;
      v2 = 0xEE00726569666974;
      break;
    case 2:
      v2 = 0x80000001C96CAD90;
      v3 = 0xD000000000000015;
      break;
    case 3:
      v2 = 0x80000001C96CADB0;
      v3 = 0xD000000000000017;
      break;
    case 4:
      v2 = 0x80000001C96CADD0;
      v3 = 0xD00000000000001BLL;
      break;
    case 5:
      v2 = 0x80000001C96CADF0;
      v3 = 0xD000000000000022;
      break;
    case 6:
      v2 = 0x80000001C96CAE20;
      v3 = 0xD000000000000024;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_10_11();
  }

  return v8 & 1;
}

uint64_t sub_1C954ACE8(uint64_t a1, uint64_t a2)
{
  v3 = 0x737569736C6563;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x65686E6572686166;
    }

    else
    {
      v5 = 0x7953726F7272696DLL;
    }

    if (v4 == 1)
    {
      v2 = 0xEA00000000007469;
    }

    else
    {
      v2 = 0xEC0000006D657473;
    }
  }

  else
  {
    v5 = OUTLINED_FUNCTION_46_1(a1, a2, 0x737569736C6563);
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x65686E6572686166;
    }

    else
    {
      v3 = 0x7953726F7272696DLL;
    }

    if (a2 == 1)
    {
      v6 = 0xEA00000000007469;
    }

    else
    {
      v6 = 0xEC0000006D657473;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v5 == v3 && v2 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_16();
  }

  return v8 & 1;
}

uint64_t sub_1C954AE10(unsigned __int8 a1, char a2)
{
  v2 = 0xEA00000000006E6FLL;
  v3 = 0x69746375646F7270;
  v4 = a1;
  v5 = 0x69746375646F7270;
  v6 = 0xEA00000000006E6FLL;
  switch(v4)
  {
    case 1:
      v5 = 0x6D706F6C65766564;
      v6 = 0xEB00000000746E65;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v5 = 1869440356;
      break;
    case 3:
      v6 = 0xE300000000000000;
      v5 = 3301745;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x6D706F6C65766564;
      v2 = 0xEB00000000746E65;
      break;
    case 2:
      v2 = 0xE400000000000000;
      v3 = 1869440356;
      break;
    case 3:
      v2 = 0xE300000000000000;
      v3 = 3301745;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_10_11();
  }

  return v8 & 1;
}

uint64_t sub_1C954AF48(unsigned __int8 a1, char a2)
{
  v2 = 1918984813;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1918984813;
  switch(v4)
  {
    case 1:
      v5 = 1732800105;
      break;
    case 2:
      v5 = 1732799853;
      break;
    case 3:
      v3 = 0xE300000000000000;
      v5 = 6377576;
      break;
    case 4:
      v5 = 6377579;
      v3 = 0xE300000000000000;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 1732800105;
      break;
    case 2:
      v2 = 1732799853;
      break;
    case 3:
      v6 = 0xE300000000000000;
      v2 = 6377576;
      break;
    case 4:
      v2 = 6377579;
      v6 = 0xE300000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_16();
  }

  return v8 & 1;
}

uint64_t sub_1C954B074(unsigned __int8 a1, char a2)
{
  v2 = 1701736302;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701736302;
  switch(v4)
  {
    case 1:
      v5 = 0x6E69747265707563;
      v3 = 0xE90000000000006FLL;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x65736F4A6E6173;
      break;
    case 3:
      v5 = 0x6C6176796E6E7573;
      v3 = 0xE900000000000065;
      break;
    case 4:
      v5 = 0x636E6172466E6173;
      v6 = 1868788585;
      goto LABEL_5;
    case 5:
      v3 = 0xE800000000000000;
      v5 = 0x6F676569446E6173;
      break;
    case 6:
      v3 = 0xE800000000000000;
      v5 = 0x61676F7461726173;
      break;
    case 7:
      v3 = 0xE600000000000000;
      v5 = 0x6E6F646E6F6CLL;
      break;
    case 8:
      v3 = 0xE600000000000000;
      v5 = 0x6961626D756DLL;
      break;
    case 9:
      v5 = 0x664F6961626D756DLL;
      v6 = 1952805734;
LABEL_5:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      break;
  }

  v7 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6E69747265707563;
      v7 = 0xE90000000000006FLL;
      break;
    case 2:
      v7 = 0xE700000000000000;
      v2 = 0x65736F4A6E6173;
      break;
    case 3:
      v2 = 0x6C6176796E6E7573;
      v7 = 0xE900000000000065;
      break;
    case 4:
      v2 = 0x636E6172466E6173;
      v8 = 1868788585;
      goto LABEL_16;
    case 5:
      v7 = 0xE800000000000000;
      v2 = 0x6F676569446E6173;
      break;
    case 6:
      v7 = 0xE800000000000000;
      v2 = 0x61676F7461726173;
      break;
    case 7:
      v7 = 0xE600000000000000;
      v2 = 0x6E6F646E6F6CLL;
      break;
    case 8:
      v7 = 0xE600000000000000;
      v2 = 0x6961626D756DLL;
      break;
    case 9:
      v2 = 0x664F6961626D756DLL;
      v8 = 1952805734;
LABEL_16:
      v7 = v8 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_5_16();
  }

  return v10 & 1;
}

uint64_t sub_1C954B2F8(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 28011;
  }

  else
  {
    v3 = 0x73656C696DLL;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE200000000000000;
  }

  if (a2)
  {
    v5 = 28011;
  }

  else
  {
    v5 = 0x73656C696DLL;
  }

  if (a2)
  {
    v6 = 0xE200000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_16();
  }

  return v8 & 1;
}

uint64_t sub_1C954B37C(char a1)
{
  v2 = "isNotificationDedupingEnabled";
  switch(a1)
  {
    case 1:
      v2 = "r.widget.dailyForecast";
      break;
    case 2:
      v2 = "r.widget.dataDense";
      break;
    case 3:
      v2 = "com.apple.weather";
      break;
    case 4:
      v2 = "r.widget.sunriseSunset";
      break;
    case 5:
      v2 = "r.complication.temperature";
      break;
    case 6:
      v2 = "r.complication.rain";
      break;
    case 7:
      v2 = "r.complication.location";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_27_6();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_5_16();
  }

  return v5 & 1;
}

uint64_t sub_1C954B50C(unsigned __int8 a1, char a2)
{
  v2 = 0xEC00000073746E65;
  v3 = 0x7645656C62616E65;
  v4 = a1;
  v5 = 0x7645656C62616E65;
  v6 = 0xEC00000073746E65;
  switch(v4)
  {
    case 1:
      v6 = 0x80000001C96CBC70;
      v5 = 0xD00000000000001ELL;
      break;
    case 2:
      v6 = 0x80000001C96CBC90;
      v5 = 0xD000000000000017;
      break;
    case 3:
      v6 = 0x80000001C96CBCB0;
      v5 = 0xD000000000000012;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0x80000001C96CBC70;
      v3 = 0xD00000000000001ELL;
      break;
    case 2:
      v2 = 0x80000001C96CBC90;
      v3 = 0xD000000000000017;
      break;
    case 3:
      v2 = 0x80000001C96CBCB0;
      v3 = 0xD000000000000012;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_10_11();
  }

  return v8 & 1;
}

uint64_t sub_1C954B664(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_5_16();
  }

  return v10 & 1;
}

uint64_t sub_1C954B6E8(char a1)
{
  if (a1)
  {
    v1 = 0xE900000000000073;
  }

  else
  {
    v1 = 0xE700000000000000;
  }

  OUTLINED_FUNCTION_17_12();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_16();
  }

  return v8 & 1;
}

uint64_t sub_1C954B77C(char a1)
{
  v2 = "rrent";
  switch(a1)
  {
    case 1:
      v2 = "intervalBetweenUpdates";
      break;
    case 2:
      v2 = "extendedRefreshHintInterval";
      break;
    case 3:
      v2 = "offlineDataFreshnessInterval";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_27_6();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_5_16();
  }

  return v5 & 1;
}

uint64_t sub_1C954B894()
{
  OUTLINED_FUNCTION_17_12();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1C96A7DE4();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1C954B900(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    OUTLINED_FUNCTION_50_1();
    if (v3)
    {
      v7 = 0x746E65696C63;
    }

    else
    {
      v7 = 0x726576726573;
    }

    if (v3)
    {
      v2 = v6;
    }

    else
    {
      v2 = 0xE600000000000000;
    }
  }

  else
  {
    v7 = OUTLINED_FUNCTION_46_1(a1, a2, 0x746C7561666564);
  }

  if (v4)
  {
    OUTLINED_FUNCTION_50_1();
    if (v8)
    {
      v5 = 0x746E65696C63;
    }

    else
    {
      v5 = 0x726576726573;
    }

    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0xE600000000000000;
    }
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v7 == v5 && v2 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_5_16();
  }

  return v12 & 1;
}

uint64_t sub_1C954B9D4(char a1, char a2)
{
  v2 = 0x746867696CLL;
  if (a1)
  {
    OUTLINED_FUNCTION_50_1();
    if (v3)
    {
      v5 = 0x6D756964656DLL;
    }

    else
    {
      v5 = 0x7976616568;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
    v5 = 0x746867696CLL;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_50_1();
    if (v7)
    {
      v2 = 0x6D756964656DLL;
    }

    else
    {
      v2 = 0x7976616568;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE500000000000000;
    }
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_5_16();
  }

  return v11 & 1;
}

uint64_t sub_1C954BAA8(unsigned __int8 a1, char a2)
{
  v2 = 7827310;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7827310;
  switch(v4)
  {
    case 1:
      v5 = 0x756E694D65766966;
      v3 = 0xEB00000000736574;
      break;
    case 2:
      v5 = 0x74756E694D6E6574;
      v3 = 0xEA00000000007365;
      break;
    case 3:
      v5 = 0x4D6E656574666966;
      v3 = 0xEE00736574756E69;
      break;
    case 4:
      v5 = 0x694D797472696874;
      v3 = 0xED0000736574756ELL;
      break;
    case 5:
      v5 = OUTLINED_FUNCTION_51_2(17);
      v3 = v6 | 0x8000000000000000;
      break;
    case 6:
      v5 = 0x6E694D7974786973;
      v3 = 0xEC00000073657475;
      break;
    default:
      break;
  }

  v7 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x756E694D65766966;
      v7 = 0xEB00000000736574;
      break;
    case 2:
      v2 = 0x74756E694D6E6574;
      v7 = 0xEA00000000007365;
      break;
    case 3:
      v2 = 0x4D6E656574666966;
      v7 = 0xEE00736574756E69;
      break;
    case 4:
      v2 = 0x694D797472696874;
      v7 = 0xED0000736574756ELL;
      break;
    case 5:
      OUTLINED_FUNCTION_32_1();
      v7 = v8 | 0x8000000000000000;
      break;
    case 6:
      v2 = 0x6E694D7974786973;
      v7 = 0xEC00000073657475;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_5_16();
  }

  return v10 & 1;
}

uint64_t sub_1C954BCC4(unsigned __int8 a1, char a2)
{
  v2 = 0xEA00000000006B72;
  v3 = 0x615020656C707041;
  v4 = 0xEA00000000006B72;
  v5 = a1;
  v6 = 0x615020656C707041;
  switch(v5)
  {
    case 1:
      v6 = 0x7469685720656854;
      v4 = 0xEF6573756F482065;
      break;
    case 2:
      v6 = 0x696E69615220744DLL;
      v4 = 0xEA00000000007265;
      break;
    case 3:
      v6 = OUTLINED_FUNCTION_39_2();
      v7 = 0xEA00004F43206B72;
      goto LABEL_6;
    case 4:
      v6 = OUTLINED_FUNCTION_39_2();
      v7 = 0xEA00005854206B72;
LABEL_6:
      v4 = v7 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    case 5:
      v4 = 0xE700000000000000;
      v6 = 0x746E6572727543;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x7469685720656854;
      v2 = 0xEF6573756F482065;
      break;
    case 2:
      v3 = 0x696E69615220744DLL;
      v2 = 0xEA00000000007265;
      break;
    case 3:
      OUTLINED_FUNCTION_37_4();
      v8 = 0xEA00004F43206B72;
      goto LABEL_13;
    case 4:
      OUTLINED_FUNCTION_37_4();
      v8 = 0xEA00005854206B72;
LABEL_13:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    case 5:
      v2 = 0xE700000000000000;
      v3 = 0x746E6572727543;
      break;
    default:
      break;
  }

  if (v6 == v3 && v4 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_10_11();
  }

  return v10 & 1;
}

uint64_t sub_1C954BE6C(unsigned __int8 a1, char a2)
{
  v2 = 0x7261656C63;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x7261656C63;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1852399986;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1818845544;
      break;
    case 3:
      v5 = 0x7465656C73;
      break;
    case 4:
      v3 = 0xE400000000000000;
      v5 = 2003791475;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1852399986;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1818845544;
      break;
    case 3:
      v2 = 0x7465656C73;
      break;
    case 4:
      v6 = 0xE400000000000000;
      v2 = 2003791475;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_5_16();
  }

  return v8 & 1;
}

uint64_t sub_1C954BFB8()
{
  sub_1C96A3D04();
  sub_1C96A55D4();
}

uint64_t sub_1C954C000(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1C96A4C14();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v42[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(v9 + 16) && (v10 = sub_1C950B124(), (v11 & 1) != 0))
  {
    v12 = (*(v9 + 56) + 56 * v10);
    v13 = v12[1];
    v14 = v12[2];
    v15 = v12[3];
    v16 = v12[4];
    v17 = v12[5];
    v18 = v12[6];
    *&v47 = *v12;
    *(&v47 + 1) = v13;
    *&v48 = v14;
    *(&v48 + 1) = v15;
    *&v49 = v16;
    *(&v49 + 1) = v17;
    v50 = v18;
    v19 = v47;
    v20 = v13;
    v21 = v14;
    v22 = v15;
    v23 = v16;
    v24 = v17;
    v25 = v18;
    v26 = v19;
    v27 = v20;
    v28 = v21;
    v29 = v22;
    v30 = v23;
    v31 = v24;
    v32 = v25;
    swift_getAtKeyPath();

    v34 = *(&v47 + 1);
    v33 = v47;
    v36 = *(&v48 + 1);
    v35 = v48;
    v38 = *(&v49 + 1);
    v37 = v49;
    v39 = v50;
  }

  else
  {
    (*(v6 + 16))(v8, a2, v5);
    sub_1C954C32C(v8, &v47);
    sub_1C954DD20(&v47, &v43);
    swift_isUniquelyReferenced_nonNull_native();
    *&v43 = *v3;
    sub_1C950BF7C();
    *v3 = v43;
    v43 = v47;
    v44 = v48;
    v45 = v49;
    v46 = v50;
    sub_1C954DD20(&v47, v42);
    swift_getAtKeyPath();
    sub_1C954DD58(&v47);
    v34 = *(&v43 + 1);
    v33 = v43;
    v36 = *(&v44 + 1);
    v35 = v44;
    v38 = *(&v45 + 1);
    v37 = v45;
    v39 = v46;
  }

  return v42[0];
}

uint64_t UnitManager.deinit()
{

  return v0;
}

uint64_t UnitManager.__deallocating_deinit()
{
  UnitManager.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 49, 7);
}

uint64_t sub_1C954C32C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v40 = a1;
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5658);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v42 = &v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5660);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v39 = &v36 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5668);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v36 = &v36 - v8;
  v9 = sub_1C96A4C14();
  v41 = *(v9 - 8);
  v10 = v41;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5670);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v36 - v15;
  v17 = type metadata accessor for UnitDefaults(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v10 + 16);
  v20(v19, a1, v9);
  sub_1C96A4634();
  v21 = sub_1C94A4584(v19, v16);
  v22 = *(v14 + 8);
  v22(v16, v13);
  v38 = sub_1C94A4C84();

  sub_1C96A4644();
  v23 = sub_1C94A4584(v19, v16);
  v22(v16, v13);
  v37 = sub_1C94A4C84();

  sub_1C946B5D0(0, &qword_1EDB7FD98);
  v20(v12, v19, v9);
  sub_1C96A4654();
  v24 = sub_1C96A76C4();
  v36 = sub_1C94A5580();

  sub_1C946B5D0(0, &qword_1EDB80068);
  v20(v12, v19, v9);
  sub_1C96A4664();
  v25 = sub_1C96A76F4();
  v39 = NSUnitTemperature.canonical.getter();

  v26 = UnitDefaults.visibility.getter();
  v27 = sub_1C94A4C84();

  sub_1C946B5D0(0, &qword_1EDB80070);
  v20(v12, v19, v9);
  sub_1C96A4614();
  v28 = sub_1C96A7644();
  v29 = NSUnitSpeed.canonical.getter();

  v20(v12, v19, v9);
  sub_1C96A4614();
  v30 = sub_1C96A7644();
  v31 = NSUnitSpeed.canonical.getter();

  (*(v41 + 8))(v40, v9);
  result = sub_1C94A4C28(v19);
  v33 = v43;
  v34 = v37;
  *v43 = v38;
  v33[1] = v34;
  v35 = v39;
  v33[2] = v36;
  v33[3] = v35;
  v33[4] = v27;
  v33[5] = v29;
  v33[6] = v31;
  return result;
}

uint64_t sub_1C954C814()
{
  sub_1C9486640();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v5 = (*(v2 + 80) + **(v2 + 80));
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1C954C944;

  return v5(v1, v2);
}

uint64_t sub_1C954C944()
{

  return MEMORY[0x1EEE6DFA0](sub_1C954CA40, 0, 0);
}

uint64_t sub_1C954CA40()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall UnitManager.setPreferredTemperatureUnit(_:)(WeatherCore::UnitConfiguration::Temperature_optional a1)
{
  v1 = *a1.value;
  v2 = sub_1C954BFB8();
  if (v29)
  {
    OUTLINED_FUNCTION_30_3(v2, v3);
    v4 = sub_1C94BE204(v28, &qword_1EC3A5630);
    OUTLINED_FUNCTION_29_3(v4, v5, v6, v7, v8, v9, v10, v11, v22, v23, v24, v25, v26, v27);
    HIBYTE(v23) = v1;
    OUTLINED_FUNCTION_14_12();
    sub_1C9631564();
    __swift_destroy_boxed_opaque_existential_1Tm(&v24);
  }

  else
  {
    sub_1C94BE204(v28, &qword_1EC3A5630);
  }

  v12 = OUTLINED_FUNCTION_31_2();
  if (v29)
  {
    OUTLINED_FUNCTION_30_3(v12, v13);
    v14 = sub_1C94BE204(v28, &qword_1EC3A5630);
    OUTLINED_FUNCTION_29_3(v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
    sub_1C9487A10();
    __swift_destroy_boxed_opaque_existential_1Tm(&v24);
  }

  else
  {
    sub_1C94BE204(v28, &qword_1EC3A5630);
  }
}

uint64_t sub_1C954CBEC(char *a1, uint64_t *a2, uint64_t a3, const char *a4, void (*a5)(void))
{
  v8 = *a1;
  if (qword_1EDB80080 != -1)
  {
    OUTLINED_FUNCTION_0_29();
  }

  v9 = sub_1C96A6154();
  __swift_project_value_buffer(v9, qword_1EDB80088);
  v10 = sub_1C96A6134();
  v11 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v44[0] = v13;
    *v12 = 136446210;
    LOBYTE(v40) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v14 = sub_1C96A70A4();
    v16 = sub_1C9484164(v14, v15, v44);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1C945E000, v10, v11, a4, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }

  v17 = OUTLINED_FUNCTION_31_2();
  if (v45)
  {
    OUTLINED_FUNCTION_30_3(v17, v18);
    v19 = sub_1C94BE204(v44, &qword_1EC3A5630);
    OUTLINED_FUNCTION_29_3(v19, v20, v21, v22, v23, v24, v25, v26, v38, v39, v40, v41, v42, v43);
    HIBYTE(v39) = v8;
    OUTLINED_FUNCTION_14_12();
    a5();
    __swift_destroy_boxed_opaque_existential_1Tm(&v40);
  }

  else
  {
    sub_1C94BE204(v44, &qword_1EC3A5630);
  }

  v27 = OUTLINED_FUNCTION_31_2();
  if (!v45)
  {
    return sub_1C94BE204(v44, &qword_1EC3A5630);
  }

  OUTLINED_FUNCTION_30_3(v27, v28);
  v29 = sub_1C94BE204(v44, &qword_1EC3A5630);
  OUTLINED_FUNCTION_29_3(v29, v30, v31, v32, v33, v34, v35, v36, v38, v39, v40, v41, v42, v43);
  sub_1C9487A10();
  return __swift_destroy_boxed_opaque_existential_1Tm(&v40);
}

Swift::Void __swiftcall UnitManager.resetPreferredUnits()()
{
  v0 = sub_1C954BFB8();
  if (v67)
  {
    OUTLINED_FUNCTION_30_3(v0, v1);
    v2 = sub_1C94BE204(v66, &qword_1EC3A5630);
    OUTLINED_FUNCTION_29_3(v2, v3, v4, v5, v6, v7, v8, v9, v60, v61, v62, v63, v64, v65);
    OUTLINED_FUNCTION_12_14();
    sub_1C96314D4();
    __swift_destroy_boxed_opaque_existential_1Tm(&v62);
  }

  else
  {
    sub_1C94BE204(v66, &qword_1EC3A5630);
  }

  v10 = OUTLINED_FUNCTION_31_2();
  if (v67)
  {
    OUTLINED_FUNCTION_30_3(v10, v11);
    v12 = sub_1C94BE204(v66, &qword_1EC3A5630);
    OUTLINED_FUNCTION_29_3(v12, v13, v14, v15, v16, v17, v18, v19, v60, v61, v62, v63, v64, v65);
    OUTLINED_FUNCTION_12_14();
    sub_1C9631504();
    __swift_destroy_boxed_opaque_existential_1Tm(&v62);
  }

  else
  {
    sub_1C94BE204(v66, &qword_1EC3A5630);
  }

  v20 = OUTLINED_FUNCTION_31_2();
  if (v67)
  {
    OUTLINED_FUNCTION_30_3(v20, v21);
    v22 = sub_1C94BE204(v66, &qword_1EC3A5630);
    OUTLINED_FUNCTION_29_3(v22, v23, v24, v25, v26, v27, v28, v29, v60, v61, v62, v63, v64, v65);
    OUTLINED_FUNCTION_12_14();
    sub_1C9631534();
    __swift_destroy_boxed_opaque_existential_1Tm(&v62);
  }

  else
  {
    sub_1C94BE204(v66, &qword_1EC3A5630);
  }

  v30 = OUTLINED_FUNCTION_31_2();
  if (v67)
  {
    OUTLINED_FUNCTION_30_3(v30, v31);
    v32 = sub_1C94BE204(v66, &qword_1EC3A5630);
    OUTLINED_FUNCTION_29_3(v32, v33, v34, v35, v36, v37, v38, v39, v60, v61, v62, v63, v64, v65);
    OUTLINED_FUNCTION_12_14();
    sub_1C9631564();
    __swift_destroy_boxed_opaque_existential_1Tm(&v62);
  }

  else
  {
    sub_1C94BE204(v66, &qword_1EC3A5630);
  }

  v40 = OUTLINED_FUNCTION_31_2();
  if (v67)
  {
    OUTLINED_FUNCTION_30_3(v40, v41);
    v42 = sub_1C94BE204(v66, &qword_1EC3A5630);
    OUTLINED_FUNCTION_29_3(v42, v43, v44, v45, v46, v47, v48, v49, v60, v61, v62, v63, v64, v65);
    OUTLINED_FUNCTION_12_14();
    sub_1C9631594();
    __swift_destroy_boxed_opaque_existential_1Tm(&v62);
  }

  else
  {
    sub_1C94BE204(v66, &qword_1EC3A5630);
  }

  v50 = OUTLINED_FUNCTION_31_2();
  if (v67)
  {
    OUTLINED_FUNCTION_30_3(v50, v51);
    v52 = sub_1C94BE204(v66, &qword_1EC3A5630);
    OUTLINED_FUNCTION_29_3(v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
    sub_1C9487A10();
    __swift_destroy_boxed_opaque_existential_1Tm(&v62);
  }

  else
  {
    sub_1C94BE204(v66, &qword_1EC3A5630);
  }
}

Swift::Void __swiftcall UnitManager.setPreferredUnits(temperature:distance:precipitation:pressure:wind:)(WeatherCore::UnitConfiguration::Temperature_optional temperature, WeatherCore::UnitConfiguration::Distance_optional distance, WeatherCore::UnitConfiguration::Precipitation_optional precipitation, WeatherCore::UnitConfiguration::Pressure_optional pressure, WeatherCore::UnitConfiguration::WindSpeed_optional wind)
{
  v5 = *temperature.value;
  v6 = *distance.value;
  v7 = *precipitation.value;
  v8 = *pressure.value;
  v9 = *wind.value;
  v10 = sub_1C954BFB8();
  if (v77)
  {
    OUTLINED_FUNCTION_30_3(v10, v11);
    v12 = sub_1C94BE204(v76, &qword_1EC3A5630);
    OUTLINED_FUNCTION_29_3(v12, v13, v14, v15, v16, v17, v18, v19, v70, v71, v72, v73, v74, v75);
    HIBYTE(v71) = v5;
    OUTLINED_FUNCTION_14_12();
    sub_1C9631564();
    __swift_destroy_boxed_opaque_existential_1Tm(&v72);
  }

  else
  {
    sub_1C94BE204(v76, &qword_1EC3A5630);
  }

  v20 = OUTLINED_FUNCTION_31_2();
  if (v77)
  {
    OUTLINED_FUNCTION_30_3(v20, v21);
    v22 = sub_1C94BE204(v76, &qword_1EC3A5630);
    OUTLINED_FUNCTION_29_3(v22, v23, v24, v25, v26, v27, v28, v29, v70, v71, v72, v73, v74, v75);
    HIBYTE(v71) = v6;
    OUTLINED_FUNCTION_14_12();
    sub_1C96314D4();
    __swift_destroy_boxed_opaque_existential_1Tm(&v72);
  }

  else
  {
    sub_1C94BE204(v76, &qword_1EC3A5630);
  }

  v30 = OUTLINED_FUNCTION_31_2();
  if (v77)
  {
    OUTLINED_FUNCTION_30_3(v30, v31);
    v32 = sub_1C94BE204(v76, &qword_1EC3A5630);
    OUTLINED_FUNCTION_29_3(v32, v33, v34, v35, v36, v37, v38, v39, v70, v71, v72, v73, v74, v75);
    HIBYTE(v71) = v7;
    OUTLINED_FUNCTION_14_12();
    sub_1C9631504();
    __swift_destroy_boxed_opaque_existential_1Tm(&v72);
  }

  else
  {
    sub_1C94BE204(v76, &qword_1EC3A5630);
  }

  v40 = OUTLINED_FUNCTION_31_2();
  if (v77)
  {
    OUTLINED_FUNCTION_30_3(v40, v41);
    v42 = sub_1C94BE204(v76, &qword_1EC3A5630);
    OUTLINED_FUNCTION_29_3(v42, v43, v44, v45, v46, v47, v48, v49, v70, v71, v72, v73, v74, v75);
    HIBYTE(v71) = v8;
    OUTLINED_FUNCTION_14_12();
    sub_1C9631534();
    __swift_destroy_boxed_opaque_existential_1Tm(&v72);
  }

  else
  {
    sub_1C94BE204(v76, &qword_1EC3A5630);
  }

  v50 = OUTLINED_FUNCTION_31_2();
  if (v77)
  {
    OUTLINED_FUNCTION_30_3(v50, v51);
    v52 = sub_1C94BE204(v76, &qword_1EC3A5630);
    OUTLINED_FUNCTION_29_3(v52, v53, v54, v55, v56, v57, v58, v59, v70, v71, v72, v73, v74, v75);
    HIBYTE(v71) = v9;
    OUTLINED_FUNCTION_14_12();
    sub_1C9631594();
    __swift_destroy_boxed_opaque_existential_1Tm(&v72);
  }

  else
  {
    sub_1C94BE204(v76, &qword_1EC3A5630);
  }

  v60 = OUTLINED_FUNCTION_31_2();
  if (v77)
  {
    OUTLINED_FUNCTION_30_3(v60, v61);
    v62 = sub_1C94BE204(v76, &qword_1EC3A5630);
    OUTLINED_FUNCTION_29_3(v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75);
    sub_1C9487A10();
    __swift_destroy_boxed_opaque_existential_1Tm(&v72);
  }

  else
  {
    sub_1C94BE204(v76, &qword_1EC3A5630);
  }
}

BOOL UnitManager.hasPreferredUnits.getter()
{
  UnitManager.preferredDistanceUnit.getter();
  if (v5 != 2)
  {
    return 1;
  }

  UnitManager.preferredPrecipitationUnit.getter();
  if (v4 != 2)
  {
    return 1;
  }

  UnitManager.preferredPressureUnit.getter();
  if (v3 != 5)
  {
    return 1;
  }

  UnitManager.preferredTemperatureUnit.getter();
  if (v2 != 2)
  {
    return 1;
  }

  UnitManager.preferredWindUnit.getter();
  return v1 != 5;
}

uint64_t UnitManagerType.containsSameUnits(as:)(uint64_t a1)
{
  swift_getObjectType();
  if (v1 == a1)
  {
    return 1;
  }

  sub_1C946B5D0(0, &qword_1EDB7CD30);
  v5 = OUTLINED_FUNCTION_7_14();
  v6(v5);
  OUTLINED_FUNCTION_38_2();
  v7 = OUTLINED_FUNCTION_8_13();
  v8(v7);
  v9 = OUTLINED_FUNCTION_11_11();

  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = OUTLINED_FUNCTION_7_14();
  v11(v10);
  OUTLINED_FUNCTION_38_2();
  v12 = OUTLINED_FUNCTION_8_13();
  v13(v12);
  v14 = OUTLINED_FUNCTION_11_11();

  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v15 = OUTLINED_FUNCTION_7_14();
  v16(v15);
  OUTLINED_FUNCTION_38_2();
  v17 = OUTLINED_FUNCTION_8_13();
  v18(v17);
  v19 = OUTLINED_FUNCTION_11_11();

  if ((v19 & 1) == 0)
  {
    return 0;
  }

  v20 = OUTLINED_FUNCTION_7_14();
  v21(v20);
  OUTLINED_FUNCTION_38_2();
  v22 = OUTLINED_FUNCTION_8_13();
  v23(v22);
  v24 = OUTLINED_FUNCTION_11_11();

  if ((v24 & 1) == 0)
  {
    return 0;
  }

  v25 = OUTLINED_FUNCTION_7_14();
  v26(v25);
  OUTLINED_FUNCTION_38_2();
  v27 = OUTLINED_FUNCTION_8_13();
  v28(v27);
  v29 = OUTLINED_FUNCTION_11_11();

  if ((v29 & 1) == 0)
  {
    return 0;
  }

  v30 = OUTLINED_FUNCTION_7_14();
  v32 = v31(v30);
  v33 = OUTLINED_FUNCTION_8_13();
  v35 = v34(v33);
  v36 = sub_1C96A78B4();

  return v36 & 1;
}

void UnitManagerType.combineUnits(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 16))(a2, a3);
  OUTLINED_FUNCTION_66();
  sub_1C96A78C4();

  v4 = OUTLINED_FUNCTION_13_9();
  v5(v4);
  OUTLINED_FUNCTION_66();
  sub_1C96A78C4();

  v6 = OUTLINED_FUNCTION_13_9();
  v7(v6);
  OUTLINED_FUNCTION_66();
  sub_1C96A78C4();

  v8 = OUTLINED_FUNCTION_13_9();
  v9(v8);
  OUTLINED_FUNCTION_66();
  sub_1C96A78C4();

  v10 = OUTLINED_FUNCTION_13_9();
  v11(v10);
  OUTLINED_FUNCTION_66();
  sub_1C96A78C4();

  v12 = OUTLINED_FUNCTION_13_9();
  v14 = v13(v12);
  sub_1C96A78C4();
}

uint64_t OverrideUnitManager.__allocating_init(temperature:)()
{
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_66();
  OverrideUnitManager.init(temperature:)(v1);
  return v0;
}

uint64_t OverrideUnitManager.init(temperature:)(uint64_t a1)
{
  if (qword_1EDB80318 != -1)
  {
    OUTLINED_FUNCTION_16();
  }

  *(v1 + 16) = qword_1EDB80320;
  *(v1 + 24) = a1;
  sub_1C96A3D04();
  return v1;
}

void (*sub_1C954D838(uint64_t a1, void (*a2)(uint64_t)))(uint64_t)
{
  sub_1C96A4C14();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_3();
  sub_1C94A42AC();
  a2(v2);
  v5 = OUTLINED_FUNCTION_22_7();
  v6(v5);
  return a2;
}

void (*sub_1C954D9F8(void (*a1)(uint64_t)))(uint64_t)
{
  sub_1C96A4C14();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_3();
  sub_1C94A42AC();
  a1(v1);
  v4 = OUTLINED_FUNCTION_22_7();
  v5(v4);
  return a1;
}

uint64_t OverrideUnitManager.deinit()
{

  return v0;
}

uint64_t OverrideUnitManager.__deallocating_deinit()
{
  OverrideUnitManager.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

_BYTE *storeEnumTagSinglePayload for UnitManager.Notification(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C954DDE0()
{
  v0 = type metadata accessor for NanoPreferencesSynchronizer();
  swift_allocObject();
  v1 = NanoPreferencesSynchronizer.init(domain:container:appGroupContainer:)();
  type metadata accessor for UnitSetupManager();
  inited = swift_initStackObject();
  v5 = v0;
  v6 = &protocol witness table for NanoPreferencesSynchronizer;
  *&v4 = v1;
  sub_1C94670AC(&v4, inited + 16);
  UnitSetupManager.setupSettings()();
  swift_setDeallocating();
  return sub_1C954DF68(inited + 16);
}

_BYTE *storeEnumTagSinglePayload for WeatherCoreAppIntentsPackage(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C954DF68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5698);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C954DFD0()
{
  v25 = MEMORY[0x1E69E7CC0];
  sub_1C94D5558(0, 8, 0);
  v0 = 0;
  result = v25;
  v2 = "r.widget.dailyForecast";
  v3 = 0xD000000000000022;
  v4 = "r.widget.dataDense";
  v5 = 0xD000000000000011;
  v6 = "com.apple.weather";
  v7 = "r.widget.sunriseSunset";
  v8 = "r.complication.temperature";
  v9 = 0xD000000000000023;
  v10 = "r.complication.rain";
  do
  {
    v11 = "isNotificationDedupingEnabled";
    v12 = 0xD000000000000026;
    switch(byte_1F48FB0B0[v0 + 32])
    {
      case 1:
        v12 = v3;
        v11 = v2;
        break;
      case 2:
        v12 = v5;
        v11 = v4;
        break;
      case 3:
        v11 = v6;
        break;
      case 4:
        v12 = 0xD00000000000002ALL;
        v11 = v7;
        break;
      case 5:
        v12 = v9;
        v11 = v8;
        break;
      case 6:
        v12 = 0xD000000000000027;
        v11 = v10;
        break;
      case 7:
        v12 = 0xD000000000000029;
        v11 = "r.complication.location";
        break;
      default:
        break;
    }

    v26 = result;
    v14 = *(result + 16);
    v13 = *(result + 24);
    if (v14 >= v13 >> 1)
    {
      v17 = v9;
      v18 = v8;
      v23 = v3;
      v24 = v2;
      v21 = v5;
      v22 = v4;
      v19 = v7;
      v20 = v6;
      v16 = v10;
      sub_1C94D5558((v13 > 1), v14 + 1, 1);
      v10 = v16;
      v9 = v17;
      v8 = v18;
      v7 = v19;
      v6 = v20;
      v5 = v21;
      v4 = v22;
      v3 = v23;
      v2 = v24;
      result = v26;
    }

    ++v0;
    *(result + 16) = v14 + 1;
    v15 = result + 16 * v14;
    *(v15 + 32) = v12;
    *(v15 + 40) = v11 | 0x8000000000000000;
  }

  while (v0 != 8);
  return result;
}

unint64_t WidgetNames.rawValue.getter()
{
  result = 0xD000000000000026;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000022;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD00000000000002ALL;
      break;
    case 5:
      result = 0xD000000000000023;
      break;
    case 6:
      result = 0xD000000000000027;
      break;
    case 7:
      result = 0xD000000000000029;
      break;
    default:
      return result;
  }

  return result;
}

WeatherCore::WidgetNames_optional __swiftcall WidgetNames.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C96A7BE4();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1C954E2EC()
{
  result = qword_1EC3A56A0;
  if (!qword_1EC3A56A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A56A0);
  }

  return result;
}

unint64_t sub_1C954E364@<X0>(unint64_t *a1@<X8>)
{
  result = WidgetNames.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1C954E390()
{
  result = qword_1EC3A56A8;
  if (!qword_1EC3A56A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A56B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A56A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WidgetNames(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WidgetNames(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        break;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t LocationEntity.id.getter()
{
  v1 = *v0;
  sub_1C96A53C4();
  return v1;
}

uint64_t LocationEntity.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1C954E640@<X0>(uint64_t *a1@<X8>)
{
  result = LocationEntity.name.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C954E690()
{
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C96A3D04();
  sub_1C96A3D04();
  sub_1C96A3D04();
  sub_1C96A3D04();
  sub_1C96A3D04();
  LocationEntity.name.setter();
}

uint64_t (*LocationEntity.name.modify())()
{
  v1 = OUTLINED_FUNCTION_17_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_0(v2);
  *(v0 + 32) = sub_1C96A3BE4();
  return sub_1C9552050;
}

uint64_t (*LocationEntity.secondaryName.modify())()
{
  v1 = OUTLINED_FUNCTION_17_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_0(v2);
  *(v0 + 32) = sub_1C96A3BE4();
  return sub_1C954E8EC;
}

uint64_t sub_1C954E948@<X0>(uint64_t *a1@<X8>)
{
  result = LocationEntity.placemark.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C954E998(id *a1)
{
  v1 = *a1;
  sub_1C96A53C4();
  sub_1C96A3D04();
  sub_1C96A3D04();
  sub_1C96A3D04();
  sub_1C96A3D04();
  sub_1C96A3D04();
  LocationEntity.placemark.setter(v1);
}

void LocationEntity.placemark.setter(void *a1)
{
  v1 = a1;
  sub_1C96A3C04();
}

uint64_t (*LocationEntity.placemark.modify())()
{
  v1 = OUTLINED_FUNCTION_17_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_0(v2);
  *(v0 + 32) = sub_1C96A3BE4();
  return sub_1C9552050;
}

uint64_t sub_1C954EB68@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1C954EBBC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C96A3D04();
  sub_1C96A3D04();
  sub_1C96A3D04();
  sub_1C96A3D04();
  sub_1C96A3D04();
  a5(v6, v7);
}

uint64_t (*LocationEntity.timeZoneIdentifier.modify())()
{
  v1 = OUTLINED_FUNCTION_17_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_0(v2);
  *(v0 + 32) = sub_1C96A3BE4();
  return sub_1C9552050;
}

uint64_t sub_1C954ED84@<X0>(_BYTE *a1@<X8>)
{
  result = LocationEntity.locationOfInterestType.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1C954EDDC()
{
  sub_1C96A53C4();
  sub_1C96A3D04();
  sub_1C96A3D04();
  sub_1C96A3D04();
  sub_1C96A3D04();
  sub_1C96A3D04();
  LocationEntity.locationOfInterestType.setter();
}

uint64_t (*LocationEntity.locationOfInterestType.modify())()
{
  v1 = OUTLINED_FUNCTION_17_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_0(v2);
  *(v0 + 32) = sub_1C96A3BE4();
  return sub_1C9552050;
}

void sub_1C954EF48(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void LocationEntity.init(id:name:placemark:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X4>, void *a4@<X8>)
{
  v5 = sub_1C96A4C14();
  v6 = OUTLINED_FUNCTION_7(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14();
  v7 = sub_1C96A45A4();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14();
  v11 = sub_1C96A6FF4();
  v12 = OUTLINED_FUNCTION_7(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_21_1();
  v13 = sub_1C96A45C4();
  v14 = OUTLINED_FUNCTION_7(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A56E0);
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    OUTLINED_FUNCTION_6_18();
  }

  __swift_project_value_buffer(v7, qword_1EDB94A40);
  v15 = *(v9 + 16);
  v16 = OUTLINED_FUNCTION_5_17();
  v15(v16);
  sub_1C96A4BC4();
  OUTLINED_FUNCTION_1_24();
  a4[2] = sub_1C96A3C34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A56E8);
  OUTLINED_FUNCTION_12_15();
  sub_1C96A6FA4();
  v17 = OUTLINED_FUNCTION_5_17();
  v15(v17);
  sub_1C96A4BC4();
  OUTLINED_FUNCTION_1_24();
  a4[3] = sub_1C96A3C34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A56F0);
  OUTLINED_FUNCTION_11_12();
  sub_1C96A6FA4();
  v18 = OUTLINED_FUNCTION_5_17();
  v15(v18);
  sub_1C96A4BC4();
  OUTLINED_FUNCTION_1_24();
  a4[4] = sub_1C96A3C44();
  OUTLINED_FUNCTION_22_8();
  sub_1C96A6FA4();
  v19 = OUTLINED_FUNCTION_5_17();
  v15(v19);
  sub_1C96A4BC4();
  OUTLINED_FUNCTION_1_24();
  a4[5] = sub_1C96A3C34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A56F8);
  sub_1C96A6FA4();
  v20 = OUTLINED_FUNCTION_5_17();
  v15(v20);
  sub_1C96A4BC4();
  OUTLINED_FUNCTION_1_24();
  sub_1C955158C();
  a4[6] = sub_1C96A3C24();
  *a4 = a1;
  a4[1] = a2;
  sub_1C96A3C04();
  v21 = a3;
  sub_1C96A3C04();
}

uint64_t LocationEntity.init(id:name:secondaryName:placemark:timeZone:locationOfInterestType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, unsigned __int8 *a10)
{
  v56 = a8;
  v57 = a1;
  v53 = a6;
  v54 = a7;
  v51 = a4;
  v52 = a5;
  v50 = a3;
  v58 = a2;
  v59 = a9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v10);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v45 - v12;
  v13 = sub_1C96A4C14();
  v14 = OUTLINED_FUNCTION_7(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_16_12();
  v15 = sub_1C96A45A4();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14();
  v19 = sub_1C96A6FF4();
  v20 = OUTLINED_FUNCTION_7(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_14();
  v21 = sub_1C96A45C4();
  v22 = OUTLINED_FUNCTION_7(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_21_1();
  v49 = *a10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A56E0);
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    OUTLINED_FUNCTION_6_18();
  }

  __swift_project_value_buffer(v15, qword_1EDB94A40);
  v23 = *(v17 + 16);
  v24 = OUTLINED_FUNCTION_5_17();
  v23(v24);
  sub_1C96A4BC4();
  OUTLINED_FUNCTION_0_30();
  OUTLINED_FUNCTION_7_15();
  v47 = sub_1C96A3C34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A56E8);
  OUTLINED_FUNCTION_12_15();
  sub_1C96A6FA4();
  v25 = OUTLINED_FUNCTION_5_17();
  v23(v25);
  sub_1C96A4BC4();
  OUTLINED_FUNCTION_0_30();
  OUTLINED_FUNCTION_7_15();
  v46 = sub_1C96A3C34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A56F0);
  OUTLINED_FUNCTION_11_12();
  sub_1C96A6FA4();
  v26 = OUTLINED_FUNCTION_5_17();
  v23(v26);
  sub_1C96A4BC4();
  OUTLINED_FUNCTION_0_30();
  OUTLINED_FUNCTION_7_15();
  v45 = sub_1C96A3C44();
  OUTLINED_FUNCTION_22_8();
  sub_1C96A6FA4();
  v27 = OUTLINED_FUNCTION_5_17();
  v23(v27);
  sub_1C96A4BC4();
  OUTLINED_FUNCTION_0_30();
  OUTLINED_FUNCTION_7_15();
  v48 = sub_1C96A3C34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A56F8);
  sub_1C96A6FA4();
  v28 = OUTLINED_FUNCTION_5_17();
  v29 = v47;
  v23(v28);
  sub_1C96A4BC4();
  OUTLINED_FUNCTION_0_30();
  v30 = v46;
  OUTLINED_FUNCTION_7_15();
  sub_1C955158C();
  v31 = sub_1C96A3C24();
  v60 = v50;
  v61 = v51;
  sub_1C96A3C04();
  v60 = v52;
  v61 = v53;
  sub_1C96A3C04();
  v60 = v54;
  v32 = v54;
  v33 = v45;
  sub_1C96A3C04();
  v35 = v55;
  v34 = v56;
  sub_1C95515E0(v56, v55);
  v36 = sub_1C96A4DF4();
  if (__swift_getEnumTagSinglePayload(v35, 1, v36) == 1)
  {
    sub_1C9551650(v35);
    v37 = 0;
    v38 = 0;
  }

  else
  {
    v37 = sub_1C96A4D74();
    v38 = v39;
    (*(*(v36 - 8) + 8))(v35, v36);
  }

  v60 = v37;
  v61 = v38;
  v40 = v48;
  sub_1C96A3C04();
  v41 = v49 & 1;
  if (v49 == 2)
  {
    v41 = 2;
  }

  LOBYTE(v60) = v41;
  sub_1C96A3C04();

  result = sub_1C9551650(v34);
  v43 = v59;
  v44 = v58;
  *v59 = v57;
  v43[1] = v44;
  v43[2] = v29;
  v43[3] = v30;
  v43[4] = v33;
  v43[5] = v40;
  v43[6] = v31;
  return result;
}

uint64_t sub_1C954F7E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5748);
  sub_1C96A3A74();
  sub_1C96A3A64();
  result = sub_1C96A3A24();
  qword_1EC3A56B8 = result;
  return result;
}

uint64_t static LocationEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC3A4640 != -1)
  {
    swift_once();
  }

  *a1 = qword_1EC3A56B8;

  return sub_1C96A3D04();
}

uint64_t LocationEntity.displayRepresentation.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5700);
  OUTLINED_FUNCTION_7(v2);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_21_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5708);
  OUTLINED_FUNCTION_7(v4);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_10();
  v6 = sub_1C96A45C4();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_16_12();
  v8 = sub_1C96A6FE4();
  v9 = OUTLINED_FUNCTION_7(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14();
  sub_1C96A6FD4();
  sub_1C96A6FC4();
  sub_1C96A3BF4();
  sub_1C96A6FB4();

  sub_1C96A6FC4();
  sub_1C96A45B4();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v6);
  v10 = sub_1C96A3E84();
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v10);
  return sub_1C96A3EA4();
}

uint64_t static LocationEntity.typeDisplayRepresentation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5708);
  OUTLINED_FUNCTION_7(v1);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17 - v3;
  v5 = sub_1C96A4C14();
  v6 = OUTLINED_FUNCTION_7(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_21_1();
  v7 = sub_1C96A45A4();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_16_12();
  v11 = sub_1C96A6FF4();
  v12 = OUTLINED_FUNCTION_7(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14();
  v13 = sub_1C96A45C4();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14();
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    OUTLINED_FUNCTION_6_18();
  }

  v15 = __swift_project_value_buffer(v7, qword_1EDB94A40);
  (*(v9 + 16))(v0, v15, v7);
  sub_1C96A4BC4();
  OUTLINED_FUNCTION_7_15();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v13);
  return sub_1C96A3FC4();
}

Swift::String_optional __swiftcall LocationEntity.locationIdentifier()()
{
  sub_1C96A3BF4();
  v0 = [v4 location];

  if (v0)
  {
    [v0 coordinate];

    v1 = sub_1C96A7844();
  }

  else
  {
    v1 = 0;
    v2 = 0;
  }

  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t static LocationEntity.makeFromLocation(_:name:)@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_20_9(a1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v4);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_10();
  if (!v1)
  {
    sub_1C96A53C4();
  }

  sub_1C946B5D0(0, &qword_1EDB77D20);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = objc_allocWithZone(MEMORY[0x1E6985C40]);
  sub_1C96A53C4();
  [v8 initWithLatitude:v6 longitude:v7];
  sub_1C96A53C4();
  OUTLINED_FUNCTION_19_9();
  Location.sanitizedSecondaryName.getter();
  v9 = *(type metadata accessor for Location() + 20);
  v10 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_6();
  (*(v11 + 16))(v2, v3 + v9, v10);
  OUTLINED_FUNCTION_23_8();
  v21 = 2;
  sub_1C96A53C4();
  v12 = OUTLINED_FUNCTION_13_10();
  return LocationEntity.init(id:name:secondaryName:placemark:timeZone:locationOfInterestType:)(v12, v13, v14, v15, v16, v17, v18, v2, v19, &v21);
}

uint64_t static LocationEntity.makeFromLocation(_:name:locationOfInterestType:)@<X0>(unsigned __int8 *a1@<X3>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_20_9(a2);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  OUTLINED_FUNCTION_7(v6);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_10();
  v23 = *a1;
  if (!v2)
  {
    sub_1C96A53C4();
  }

  sub_1C946B5D0(0, &qword_1EDB77D20);
  v8 = *(v4 + 32);
  v9 = *(v4 + 40);
  v10 = objc_allocWithZone(MEMORY[0x1E6985C40]);
  sub_1C96A53C4();
  [v10 initWithLatitude:v8 longitude:v9];
  sub_1C96A53C4();
  v22 = OUTLINED_FUNCTION_19_9();
  Location.sanitizedSecondaryName.getter();
  v11 = *(type metadata accessor for Location() + 20);
  v12 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_6();
  (*(v13 + 16))(v3, v4 + v11, v12);
  OUTLINED_FUNCTION_23_8();
  v24 = v23;
  sub_1C96A53C4();
  v14 = OUTLINED_FUNCTION_13_10();
  return LocationEntity.init(id:name:secondaryName:placemark:timeZone:locationOfInterestType:)(v14, v15, v16, v17, v18, v19, v22, v3, v20, &v24);
}

id sub_1C9550094(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_1C96A7004();
  }

  else
  {
    v6 = 0;
  }

  v7 = [swift_getObjCClassFromMetadata() placemarkWithLocation:a1 name:v6 postalAddress:a4];

  return v7;
}

uint64_t sub_1C9550154@<X0>(uint64_t *a1@<X8>)
{
  result = LocationEntity.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C9550180(uint64_t a1)
{
  v2 = sub_1C9551824();

  return MEMORY[0x1EEDB2C58](a1, v2);
}

uint64_t sub_1C95501D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C94B9278;

  return MEMORY[0x1EEDB3F60](a1, a2, a3, a4);
}

uint64_t sub_1C9550294(uint64_t a1)
{
  v2 = sub_1C955197C();

  return MEMORY[0x1EEDB3F68](a1, v2);
}

uint64_t sub_1C95502E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5708);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13[-v1];
  v3 = sub_1C96A4C14();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1C96A45A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1C96A6FF4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1C96A45C4();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1C96A3FD4();
  __swift_allocate_value_buffer(v10, qword_1EC3A56C0);
  __swift_project_value_buffer(v10, qword_1EC3A56C0);
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_1EDB94A40);
  (*(v5 + 16))(v7, v11, v4);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v9);
  return sub_1C96A3FC4();
}

uint64_t sub_1C95505B8()
{
  if (qword_1EC3A4648 != -1)
  {
    OUTLINED_FUNCTION_3_14();
  }

  v0 = sub_1C96A3FD4();

  return __swift_project_value_buffer(v0, qword_1EC3A56C0);
}

uint64_t static LocationEntityLocationOfInterestType.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC3A4648 != -1)
  {
    OUTLINED_FUNCTION_3_14();
  }

  v2 = sub_1C96A3FD4();
  v3 = __swift_project_value_buffer(v2, qword_1EC3A56C0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static LocationEntityLocationOfInterestType.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_1EC3A4648 != -1)
  {
    OUTLINED_FUNCTION_3_14();
  }

  v2 = sub_1C96A3FD4();
  v3 = __swift_project_value_buffer(v2, qword_1EC3A56C0);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static LocationEntityLocationOfInterestType.typeDisplayRepresentation.modify())()
{
  if (qword_1EC3A4648 != -1)
  {
    OUTLINED_FUNCTION_3_14();
  }

  v0 = sub_1C96A3FD4();
  __swift_project_value_buffer(v0, qword_1EC3A56C0);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1C9550824@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C95505B8();
  swift_beginAccess();
  v3 = sub_1C96A3FD4();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_1C95508A0(uint64_t a1)
{
  v2 = sub_1C95505B8();
  swift_beginAccess();
  v3 = sub_1C96A3FD4();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t sub_1C9550924()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5700);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v30 = &v22 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5708);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_1C96A4C14();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1C96A45A4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C96A6FF4();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1C96A45C4();
  MEMORY[0x1EEE9AC00](v11);
  v28 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5738);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5740);
  v14 = (*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80);
  v26 = *(*(v13 - 8) + 72);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C96AEF50;
  v29 = v15;
  v16 = (v15 + v14);
  v27 = v13;
  v25 = *(v13 + 48);
  *v16 = 0;
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v6, qword_1EDB94A40);
  v23 = *(v7 + 16);
  v24 = v17;
  v23(v9, v17, v6);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v11);
  v18 = sub_1C96A3E84();
  v22 = v11;
  v19 = v18;
  v20 = v30;
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v18);
  sub_1C96A3EA4();
  v27 = *(v27 + 48);
  v16[v26] = 1;
  sub_1C96A6FA4();
  v23(v9, v24, v6);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v22);
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v19);
  sub_1C96A3EA4();
  sub_1C96A3EB4();
  sub_1C9551E40();
  result = sub_1C96A6F04();
  qword_1EC3A56D8 = result;
  return result;
}

uint64_t *sub_1C9550DF0()
{
  if (qword_1EC3A4650 != -1)
  {
    OUTLINED_FUNCTION_2_23();
  }

  return &qword_1EC3A56D8;
}

uint64_t static LocationEntityLocationOfInterestType.caseDisplayRepresentations.getter()
{
  if (qword_1EC3A4650 != -1)
  {
    OUTLINED_FUNCTION_2_23();
  }

  swift_beginAccess();
  return sub_1C96A53C4();
}

uint64_t static LocationEntityLocationOfInterestType.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_1EC3A4650 != -1)
  {
    OUTLINED_FUNCTION_2_23();
  }

  swift_beginAccess();
  qword_1EC3A56D8 = a1;
}

uint64_t (*static LocationEntityLocationOfInterestType.caseDisplayRepresentations.modify())()
{
  if (qword_1EC3A4650 != -1)
  {
    OUTLINED_FUNCTION_2_23();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1C9550F80@<X0>(void *a1@<X8>)
{
  sub_1C9550DF0();
  swift_beginAccess();
  *a1 = qword_1EC3A56D8;
  return sub_1C96A53C4();
}

uint64_t sub_1C9550FD4(uint64_t *a1)
{
  v1 = *a1;
  sub_1C96A53C4();
  sub_1C9550DF0();
  swift_beginAccess();
  qword_1EC3A56D8 = v1;
}

WeatherCore::LocationEntityLocationOfInterestType_optional __swiftcall LocationEntityLocationOfInterestType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C96A7BE4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t LocationEntityLocationOfInterestType.rawValue.getter()
{
  if (*v0)
  {
    return 1802661751;
  }

  else
  {
    return 1701670760;
  }
}

uint64_t sub_1C9551100@<X0>(uint64_t *a1@<X8>)
{
  result = LocationEntityLocationOfInterestType.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE400000000000000;
  return result;
}

uint64_t sub_1C9551130(uint64_t a1)
{
  v2 = sub_1C955158C();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

uint64_t sub_1C9551180(uint64_t a1)
{
  v2 = sub_1C9551CE8();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

uint64_t LocationEntity.description.getter()
{
  v1 = 7104878;
  v2 = *v0;
  v3 = v0[1];
  sub_1C96A7A94();
  MEMORY[0x1CCA8CB00](4023401, 0xE300000000000000);
  MEMORY[0x1CCA8CB00](v2, v3);
  MEMORY[0x1CCA8CB00](0x3D656D614E202CLL, 0xE700000000000000);
  sub_1C96A3BF4();
  MEMORY[0x1CCA8CB00]();

  MEMORY[0x1CCA8CB00](0xD000000000000011, 0x80000001C96CEF00);
  sub_1C96A3BF4();
  if (v15)
  {
    v4 = v14;
  }

  else
  {
    v4 = 7104878;
  }

  if (v15)
  {
    v5 = v15;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  MEMORY[0x1CCA8CB00](v4, v5);

  MEMORY[0x1CCA8CB00](0x6D6563616C50202CLL, 0xEC0000003D6B7261);
  sub_1C96A3BF4();
  v6 = [v14 description];
  v7 = sub_1C96A7024();
  v9 = v8;

  MEMORY[0x1CCA8CB00](v7, v9);

  MEMORY[0x1CCA8CB00](0xD000000000000017, 0x80000001C96CEF20);
  sub_1C96A3BF4();
  if (v15)
  {
    v10 = v14;
  }

  else
  {
    v10 = 7104878;
  }

  if (v15)
  {
    v11 = v15;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  MEMORY[0x1CCA8CB00](v10, v11);

  MEMORY[0x1CCA8CB00](0xD00000000000001CLL, 0x80000001C96CEF40);
  sub_1C96A3BF4();
  if (v14 == 2)
  {
    v12 = 0xE300000000000000;
  }

  else
  {
    if (v14)
    {
      v1 = 1802661751;
    }

    else
    {
      v1 = 1701670760;
    }

    v12 = 0xE400000000000000;
  }

  MEMORY[0x1CCA8CB00](v1, v12);

  return 0;
}

uint64_t static LocationEntity.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (sub_1C96A7DE4() & 1) != 0)
  {
    sub_1C96A3BF4();
    sub_1C96A3BF4();

    sub_1C946B5D0(0, &qword_1EDB7CD30);
    sub_1C96A3BF4();
    sub_1C96A3BF4();
    v3 = sub_1C96A78B4();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

unint64_t sub_1C955158C()
{
  result = qword_1EDB7A878;
  if (!qword_1EDB7A878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A878);
  }

  return result;
}

uint64_t sub_1C95515E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C9551650(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C95516BC()
{
  result = qword_1EDB7A180;
  if (!qword_1EDB7A180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A180);
  }

  return result;
}

unint64_t sub_1C9551714()
{
  result = qword_1EDB7A168;
  if (!qword_1EDB7A168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A168);
  }

  return result;
}

unint64_t sub_1C955176C()
{
  result = qword_1EDB7A140;
  if (!qword_1EDB7A140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A140);
  }

  return result;
}

unint64_t sub_1C95517C0()
{
  result = qword_1EC3A5710;
  if (!qword_1EC3A5710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5710);
  }

  return result;
}

unint64_t sub_1C9551824()
{
  result = qword_1EDB7A178;
  if (!qword_1EDB7A178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A178);
  }

  return result;
}

unint64_t sub_1C955187C()
{
  result = qword_1EDB7A160;
  if (!qword_1EDB7A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A160);
  }

  return result;
}

unint64_t sub_1C95518D0()
{
  result = qword_1EDB7A158;
  if (!qword_1EDB7A158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A158);
  }

  return result;
}

unint64_t sub_1C9551924()
{
  result = qword_1EDB7A170;
  if (!qword_1EDB7A170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A170);
  }

  return result;
}

unint64_t sub_1C955197C()
{
  result = qword_1EDB7A150;
  if (!qword_1EDB7A150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A150);
  }

  return result;
}

unint64_t sub_1C9551A24()
{
  result = qword_1EDB7A148;
  if (!qword_1EDB7A148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A148);
  }

  return result;
}

unint64_t sub_1C9551A7C()
{
  result = qword_1EDB7A838;
  if (!qword_1EDB7A838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A838);
  }

  return result;
}

unint64_t sub_1C9551AD4()
{
  result = qword_1EDB7A870;
  if (!qword_1EDB7A870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A870);
  }

  return result;
}

unint64_t sub_1C9551B2C()
{
  result = qword_1EDB7A850;
  if (!qword_1EDB7A850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A850);
  }

  return result;
}

unint64_t sub_1C9551B84()
{
  result = qword_1EDB7A830;
  if (!qword_1EDB7A830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A830);
  }

  return result;
}

unint64_t sub_1C9551BE8()
{
  result = qword_1EDB7A858;
  if (!qword_1EDB7A858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A858);
  }

  return result;
}

unint64_t sub_1C9551C3C()
{
  result = qword_1EDB7A880;
  if (!qword_1EDB7A880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A880);
  }

  return result;
}

unint64_t sub_1C9551C90()
{
  result = qword_1EDB7A868;
  if (!qword_1EDB7A868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A868);
  }

  return result;
}

unint64_t sub_1C9551CE8()
{
  result = qword_1EDB7A860;
  if (!qword_1EDB7A860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A860);
  }

  return result;
}

unint64_t sub_1C9551D90()
{
  result = qword_1EDB7A848;
  if (!qword_1EDB7A848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A848);
  }

  return result;
}

unint64_t sub_1C9551DE8()
{
  result = qword_1EDB7A828;
  if (!qword_1EDB7A828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A828);
  }

  return result;
}

unint64_t sub_1C9551E40()
{
  result = qword_1EDB7A840;
  if (!qword_1EDB7A840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A840);
  }

  return result;
}

uint64_t sub_1C9551ED8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C9551F18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationEntityLocationOfInterestType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

WeatherCore::APSEnvironment_optional __swiftcall APSEnvironment.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C96A7BE4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t APSEnvironment.rawValue.getter()
{
  result = 0x69746375646F7270;
  switch(*v0)
  {
    case 1:
      result = 0x6D706F6C65766564;
      break;
    case 2:
      result = 1869440356;
      break;
    case 3:
      result = 3301745;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C955214C()
{
  result = qword_1EDB7A1A0;
  if (!qword_1EDB7A1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A1A0);
  }

  return result;
}

uint64_t sub_1C95521C4@<X0>(uint64_t *a1@<X8>)
{
  result = APSEnvironment.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C95521EC(uint64_t a1)
{
  v2 = sub_1C95523CC();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1C9552240(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C95523CC();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1C955229C(uint64_t a1)
{
  v2 = sub_1C95523CC();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

_BYTE *storeEnumTagSinglePayload for APSEnvironment(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        break;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C95523CC()
{
  result = qword_1EDB7A198;
  if (!qword_1EDB7A198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A198);
  }

  return result;
}

uint64_t StubGeocodeService.Errors.hashValue.getter()
{
  sub_1C96A7EE4();
  MEMORY[0x1CCA8D880](0);
  return sub_1C96A7F24();
}

uint64_t StubGeocodeService.__allocating_init(locations:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t StubGeocodeService.reverseGeocode(location:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for Location();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v12 = &v18 - v11;
  v13 = *(v1 + 16);
  [a1 coordinate];
  sub_1C94FA708(v13, v5, v14, v15);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1C94FB2D4(v5);
    sub_1C95526DC();
    swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5758);
    swift_allocObject();
    return sub_1C96A5694();
  }

  else
  {
    sub_1C94898C4(v5, v12);
    sub_1C9489760(v12, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5758);
    swift_allocObject();
    v16 = sub_1C96A56A4();
    sub_1C94DBDDC(v12);
  }

  return v16;
}

unint64_t sub_1C95526DC()
{
  result = qword_1EC3A5750;
  if (!qword_1EC3A5750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5750);
  }

  return result;
}

uint64_t StubGeocodeService.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

unint64_t sub_1C95527FC()
{
  result = qword_1EC3A5760;
  if (!qword_1EC3A5760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5760);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StubGeocodeService.Errors(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t NotificationLocationComparator.__allocating_init(appConfigurationManager:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1C94670AC(a1, v2 + 16);
  return v2;
}

uint64_t NotificationLocationComparator.areLocationsEquivalent(_:_:)(uint64_t a1, uint64_t a2)
{
  v124 = a2;
  v121 = type metadata accessor for Location();
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12_2();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v112[-v10];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v112[-v13];
  v15 = type metadata accessor for AppConfiguration();
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v112[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  v20 = OUTLINED_FUNCTION_4_17();
  v21(v20, v19);
  memcpy(__dst, &v18[*(v16 + 92)], sizeof(__dst));
  sub_1C94BDC2C(__dst, v125);
  sub_1C948CC3C(v18, type metadata accessor for AppConfiguration);
  v23 = v2[5];
  v22 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v23);
  (*(v22 + 8))(v23, v22);
  v24 = v18[*(v16 + 60) + 1];
  sub_1C948CC3C(v18, type metadata accessor for AppConfiguration);
  if (v24 != 1)
  {
    sub_1C94BDE74(__dst);
    return 0;
  }

  v25 = *&__dst[12];
  v26 = Location.clLocation.getter();
  v27 = v124;
  v28 = Location.clLocation.getter();
  [v26 distanceFromLocation_];
  v30 = v29;

  if (qword_1EDB7FDC8 != -1)
  {
    swift_once();
  }

  v31 = sub_1C96A6154();
  v32 = __swift_project_value_buffer(v31, qword_1EDB7FDD0);
  v116 = a1;
  sub_1C9489760(a1, v14);
  sub_1C9489760(v27, v11);
  v115 = v32;
  v33 = sub_1C96A6134();
  v34 = sub_1C96A76A4();
  v35 = &unk_1C96B0000;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    OUTLINED_FUNCTION_10_12(v114);
    *v36 = 141559299;
    OUTLINED_FUNCTION_25();
    *(v36 + 4) = v37;
    *(v36 + 12) = 2081;
    sub_1C94DBD84();
    v113 = v34;
    sub_1C96A7DB4();
    v39 = v38;
    sub_1C948CC3C(v14, type metadata accessor for Location);
    v40 = OUTLINED_FUNCTION_2_24();
    v42 = sub_1C9484164(v40, v39, v41);
    v35 = &unk_1C96B0000;

    *(v36 + 14) = v42;
    *(v36 + 22) = 2160;
    OUTLINED_FUNCTION_25();
    *(v36 + 24) = v43;
    *(v36 + 32) = 2081;
    v22 = MEMORY[0x1E69E7CA0];
    sub_1C96A7DB4();
    v45 = v44;
    v27 = v124;
    sub_1C948CC3C(v11, type metadata accessor for Location);
    v46 = OUTLINED_FUNCTION_2_24();
    v48 = sub_1C9484164(v46, v45, v47);

    *(v36 + 34) = v48;
    *(v36 + 42) = 2048;
    *(v36 + 44) = v30;
    *(v36 + 52) = 2048;
    *(v36 + 54) = v25;
    _os_log_impl(&dword_1C945E000, v33, v113, "Comparing distance between locations, location1=%{private,mask.hash}s, location2=%{private,mask.hash}s, distanceBetweenLocations=%fm, locationEquivalenceDistance=%fm", v36, 0x3Eu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }

  else
  {

    sub_1C948CC3C(v11, type metadata accessor for Location);
    sub_1C948CC3C(v14, type metadata accessor for Location);
  }

  v50 = v122;
  v51 = v123;
  v52 = v116;
  if (v30 >= v25)
  {
    memcpy(v125, __dst, sizeof(v125));
    v75 = sub_1C95533D8(v116, v27, v125, v30);
    sub_1C94BDE74(__dst);
    if (v75)
    {
      v53 = v117;
      sub_1C9489760(v52, v117);
      v76 = v118;
      sub_1C9489760(v27, v118);
      v77 = v115;
      v56 = sub_1C96A6134();
      v78 = sub_1C96A76A4();
      if (OUTLINED_FUNCTION_9_15(v78))
      {
        swift_slowAlloc();
        v79 = OUTLINED_FUNCTION_8_14();
        OUTLINED_FUNCTION_10_12(v79);
        *v11 = 141558787;
        OUTLINED_FUNCTION_25();
        *(v11 + 4) = v80;
        *(v11 + 6) = 2081;
        sub_1C94DBD84();
        OUTLINED_FUNCTION_11_13();
        v81 = OUTLINED_FUNCTION_0_32();
        sub_1C948CC3C(v81, v82);
        v83 = OUTLINED_FUNCTION_2_24();
        sub_1C9484164(v83, v53, v84);
        OUTLINED_FUNCTION_4_17();

        *(v11 + 14) = v77;
        *(v11 + 11) = 2160;
        OUTLINED_FUNCTION_25();
        *(v11 + 3) = v85;
        *(v11 + 16) = 2081;
        sub_1C96A7DB4();
        OUTLINED_FUNCTION_12_16();
        v86 = OUTLINED_FUNCTION_2_24();
        v88 = sub_1C9484164(v86, v33, v87);

        *(v11 + 34) = v88;
        OUTLINED_FUNCTION_5_18();
        _os_log_impl(v89, v90, v91, v92, v93, 0x2Au);
        swift_arrayDestroy();
        goto LABEL_15;
      }

      v94 = v76;
LABEL_20:
      sub_1C948CC3C(v94, type metadata accessor for Location);
      sub_1C948CC3C(v53, type metadata accessor for Location);
      return 1;
    }

    sub_1C9489760(v52, v50);
    sub_1C9489760(v27, v51);
    v95 = v115;
    v96 = sub_1C96A6134();
    v97 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_9_15(v97))
    {
      swift_slowAlloc();
      v124 = OUTLINED_FUNCTION_8_14();
      OUTLINED_FUNCTION_10_12(v124);
      *v11 = v35[25];
      OUTLINED_FUNCTION_25();
      *(v11 + 4) = v98;
      *(v11 + 6) = 2081;
      sub_1C94DBD84();
      OUTLINED_FUNCTION_11_13();
      v99 = OUTLINED_FUNCTION_0_32();
      sub_1C948CC3C(v99, v100);
      v101 = OUTLINED_FUNCTION_2_24();
      sub_1C9484164(v101, v50, v102);
      OUTLINED_FUNCTION_4_17();

      *(v11 + 14) = v95;
      *(v11 + 11) = 2160;
      OUTLINED_FUNCTION_25();
      *(v11 + 3) = v103;
      *(v11 + 16) = 2081;
      sub_1C96A7DB4();
      OUTLINED_FUNCTION_12_16();
      v104 = OUTLINED_FUNCTION_2_24();
      v106 = sub_1C9484164(v104, v33, v105);

      *(v11 + 34) = v106;
      *(v11 + 21) = 2048;
      *(v11 + 44) = v30;
      *(v11 + 26) = 2048;
      *(v11 + 54) = v25;
      OUTLINED_FUNCTION_5_18();
      _os_log_impl(v107, v108, v109, v110, v111, 0x3Eu);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();
    }

    else
    {

      sub_1C948CC3C(v51, type metadata accessor for Location);
      sub_1C948CC3C(v50, type metadata accessor for Location);
    }

    return 0;
  }

  sub_1C94BDE74(__dst);
  v53 = v119;
  sub_1C9489760(v52, v119);
  v54 = v27;
  v55 = v120;
  sub_1C9489760(v54, v120);
  v56 = sub_1C96A6134();
  v57 = sub_1C96A76A4();
  if (!OUTLINED_FUNCTION_9_15(v57))
  {

    v94 = v55;
    goto LABEL_20;
  }

  swift_slowAlloc();
  v58 = OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_10_12(v58);
  *v11 = 134219011;
  *(v11 + 4) = v25;
  *(v11 + 6) = 2160;
  OUTLINED_FUNCTION_25();
  *(v11 + 14) = v59;
  *(v11 + 11) = 2081;
  sub_1C94DBD84();
  sub_1C96A7DB4();
  v60 = OUTLINED_FUNCTION_0_32();
  sub_1C948CC3C(v60, v61);
  v62 = OUTLINED_FUNCTION_2_24();
  sub_1C9484164(v62, v53, v63);
  OUTLINED_FUNCTION_4_17();

  *(v11 + 3) = v53;
  *(v11 + 16) = 2160;
  OUTLINED_FUNCTION_25();
  *(v11 + 34) = v64;
  *(v11 + 21) = 2081;
  sub_1C96A7DB4();
  v66 = v65;
  sub_1C948CC3C(v55, v22);
  v67 = OUTLINED_FUNCTION_2_24();
  v69 = sub_1C9484164(v67, v66, v68);

  *(v11 + 44) = v69;
  OUTLINED_FUNCTION_5_18();
  _os_log_impl(v70, v71, v72, v73, v74, 0x34u);
  swift_arrayDestroy();
LABEL_15:
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_26();

  return 1;
}

BOOL sub_1C95533D8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  result = 0;
  if (*(a3 + 104) > a4)
  {
    v6 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
    if (v6 || (sub_1C96A7DE4() & 1) != 0)
    {
      return 1;
    }

    v8 = *(type metadata accessor for Location() + 40);
    v9 = (a1 + v8);
    v10 = *(a1 + v8 + 8);
    if (v10)
    {
      v11 = (a2 + v8);
      v12 = v11[1];
      if (v12)
      {
        v13 = *v9 == *v11 && v10 == v12;
        if (v13 || (sub_1C96A7DE4() & 1) != 0)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t NotificationLocationComparator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1C9553568(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7473694C62757473 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C96A7DE4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C95535FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9553568(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C9553628(uint64_t a1)
{
  v2 = sub_1C9553838();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9553664(uint64_t a1)
{
  v2 = sub_1C9553838();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutomationWeatherDataConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5768);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C9553838();
  sub_1C96A53C4();
  sub_1C96A7F54();
  v11[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5770);
  sub_1C9553A84(&qword_1EC3A5778, sub_1C955388C);
  sub_1C96A7D74();

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1C9553838()
{
  result = qword_1EDB7A8A0;
  if (!qword_1EDB7A8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A8A0);
  }

  return result;
}

unint64_t sub_1C955388C()
{
  result = qword_1EC3A5780;
  if (!qword_1EC3A5780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5780);
  }

  return result;
}

uint64_t AutomationWeatherDataConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5788);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C9553838();
  sub_1C96A7F44();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5770);
    sub_1C9553A84(&qword_1EDB77D38, sub_1C9553AFC);
    sub_1C96A7CB4();
    (*(v7 + 8))(v10, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1C9553A84(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A5770);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C9553AFC()
{
  result = qword_1EDB795B8;
  if (!qword_1EDB795B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB795B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AutomationWeatherDataConfiguration.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C9553C40()
{
  result = qword_1EC3A5790;
  if (!qword_1EC3A5790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A5790);
  }

  return result;
}

unint64_t sub_1C9553C98()
{
  result = qword_1EDB7A890;
  if (!qword_1EDB7A890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A890);
  }

  return result;
}

unint64_t sub_1C9553CF0()
{
  result = qword_1EDB7A898;
  if (!qword_1EDB7A898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A898);
  }

  return result;
}

uint64_t PrecipitationNotificationFetchSchedule.init(identifier:subscription:date:gracePeriod:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>, double a6@<D0>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule();
  sub_1C9524A18(a3, &a5[Schedule[5]]);
  v11 = Schedule[6];
  v12 = sub_1C96A4A54();
  result = (*(*(v12 - 8) + 32))(&a5[v11], a4, v12);
  *&a5[Schedule[7]] = a6;
  return result;
}

uint64_t type metadata accessor for PrecipitationNotificationFetchSchedule()
{
  result = qword_1EC3A5798;
  if (!qword_1EC3A5798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PrecipitationNotificationFetchSchedule.identifier.getter()
{
  v1 = *v0;
  sub_1C96A53C4();
  return v1;
}

uint64_t PrecipitationNotificationFetchSchedule.subscription.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PrecipitationNotificationFetchSchedule() + 20);

  return sub_1C9524958(v3, a1);
}

uint64_t PrecipitationNotificationFetchSchedule.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PrecipitationNotificationFetchSchedule() + 24);
  v4 = sub_1C96A4A54();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PrecipitationNotificationFetchSchedule.description.getter()
{
  sub_1C96A7A94();

  strcpy(v4, "Subscription: ");
  HIBYTE(v4[1]) = -18;
  Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule();
  MEMORY[0x1CCA8CB00](*(v0 + *(Schedule + 20)), *(v0 + *(Schedule + 20) + 8));
  MEMORY[0x1CCA8CB00](0x203A65746144203BLL, 0xE800000000000000);
  sub_1C96A4A54();
  sub_1C95188DC();
  v2 = sub_1C96A7DB4();
  MEMORY[0x1CCA8CB00](v2);

  return v4[0];
}

uint64_t sub_1C955405C()
{
  result = type metadata accessor for NotificationSubscription(319);
  if (v1 <= 0x3F)
  {
    result = sub_1C96A4A54();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void __swiftcall NetworkConfiguration.init(isRequestRacingEnabled:raceDelayTimeIntervals:shouldRetry503Errors:shouldRetryTimeOutsAndLostNetworkConnectionErrors:shouldRetryInvalidAuthorizationErrors:maxRetryCount:tokenTimeoutTimeInterval:attemptTimeoutTimeIntervals:retryBackoffTimeIntervals:)(WeatherCore::NetworkConfiguration *__return_ptr retstr, Swift::Bool_optional isRequestRacingEnabled, Swift::OpaquePointer_optional raceDelayTimeIntervals, Swift::Bool_optional shouldRetry503Errors, Swift::Bool_optional shouldRetryTimeOutsAndLostNetworkConnectionErrors, Swift::Bool_optional shouldRetryInvalidAuthorizationErrors, Swift::Int_optional maxRetryCount, Swift::Double_optional tokenTimeoutTimeInterval, Swift::OpaquePointer_optional attemptTimeoutTimeIntervals, Swift::OpaquePointer_optional retryBackoffTimeIntervals)
{
  rawValue = attemptTimeoutTimeIntervals.value._rawValue;
  v11 = MEMORY[0x1E69E7CC0];
  if (raceDelayTimeIntervals.value._rawValue)
  {
    v12 = raceDelayTimeIntervals.value._rawValue;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  retstr->isRequestRacingEnabled = isRequestRacingEnabled.value;
  retstr->raceDelayTimeIntervals._rawValue = v12;
  if (maxRetryCount.value)
  {
    v13 = 1;
  }

  else
  {
    v13 = *&shouldRetryInvalidAuthorizationErrors;
  }

  if (!attemptTimeoutTimeIntervals.value._rawValue)
  {
    rawValue = v11;
  }

  retstr->shouldRetry503Errors = raceDelayTimeIntervals.is_nil;
  retstr->shouldRetryTimeOutsAndLostNetworkConnectionErrors = shouldRetry503Errors.value;
  retstr->shouldRetryInvalidAuthorizationErrors = shouldRetryTimeOutsAndLostNetworkConnectionErrors.value == 2 || shouldRetryTimeOutsAndLostNetworkConnectionErrors.value;
  retstr->maxRetryCount = v13;
  retstr->tokenTimeoutTimeInterval.value = *&maxRetryCount.is_nil;
  retstr->tokenTimeoutTimeInterval.is_nil = tokenTimeoutTimeInterval.is_nil;
  if (*&attemptTimeoutTimeIntervals.is_nil)
  {
    v14 = *&attemptTimeoutTimeIntervals.is_nil;
  }

  else
  {
    v14 = &unk_1F48FA9E8;
  }

  retstr->attemptTimeoutTimeIntervals._rawValue = rawValue;
  retstr->retryBackoffTimeIntervals._rawValue = v14;
}

void sub_1C9554184()
{
  OUTLINED_FUNCTION_103();
  v4 = OUTLINED_FUNCTION_11_14();
  v5 = type metadata accessor for NotificationSubscription(v4);
  OUTLINED_FUNCTION_2_25();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_18();
  OUTLINED_FUNCTION_17_14();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_10_13();
  v8 = *(v2 + 16);
  if (v8 == *(v3 + 16) && v8 && v2 != v3)
  {
    OUTLINED_FUNCTION_3_15();
    v10 = v2 + v9;
    v11 = v3 + v9;
    v13 = *(v12 + 72);
    while (1)
    {
      sub_1C948F090(v10, v1, type metadata accessor for NotificationSubscription);
      if (!v8)
      {
        break;
      }

      sub_1C948F090(v11, v0, type metadata accessor for NotificationSubscription);
      v14 = *v1 == *v0 && v1[1] == v0[1];
      if (!v14 && (sub_1C96A7DE4() & 1) == 0)
      {
        sub_1C948F150(v0, type metadata accessor for NotificationSubscription);
        OUTLINED_FUNCTION_14_13();
        goto LABEL_31;
      }

      v15 = *(v5 + 24);
      v16 = *(v5 + 28);
      v17 = *(v1 + v15);
      v18 = *(v1 + v16);
      v19 = v17 & 1;
      if (v18)
      {
        v20 = v17 & 1 | 2;
      }

      else
      {
        v20 = v17 & 1;
      }

      if (v18 == 2)
      {
        v21 = v19;
      }

      else
      {
        v21 = v20;
      }

      v22 = *(v0 + v15);
      v23 = *(v0 + v16);
      v24 = v22 & 1;
      if (v23)
      {
        v25 = v22 & 1 | 2;
      }

      else
      {
        v25 = v22 & 1;
      }

      if (v23 == 2)
      {
        v26 = v24;
      }

      else
      {
        v26 = v25;
      }

      sub_1C948F150(v0, type metadata accessor for NotificationSubscription);
      sub_1C948F150(v1, type metadata accessor for NotificationSubscription);
      v27 = v21 != v26 || v8-- == 1;
      v11 += v13;
      v10 += v13;
      if (v27)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_31:
    OUTLINED_FUNCTION_101();
  }
}

BOOL sub_1C9554388(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for LocationDataModel() - 8;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_18();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17_14();
  v10 = *(a1 + 16);
  if (v10 == *(a2 + 16))
  {
    if (!v10 || a1 == a2)
    {
      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_3_15();
      v12 = a1 + v11;
      v13 = a2 + v11;
      v15 = *(v14 + 72);
      do
      {
        sub_1C948F090(v12, v2, type metadata accessor for LocationDataModel);
        sub_1C948F090(v13, v8, type metadata accessor for LocationDataModel);
        v16 = static LocationDataModel.== infix(_:_:)(v2, v8);
        sub_1C948F150(v8, type metadata accessor for LocationDataModel);
        sub_1C948F150(v2, type metadata accessor for LocationDataModel);
        if (!v16)
        {
          break;
        }

        v13 += v15;
        v12 += v15;
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    return 0;
  }

  return v16;
}

void sub_1C955451C()
{
  OUTLINED_FUNCTION_9_16();
  if (v9 && v0 && v1 != v2)
  {
    v3 = (v1 + 96);
    v4 = (v2 + 96);
    do
    {
      v6 = *(v3 - 4);
      v5 = *(v3 - 3);
      v8 = *(v4 - 4);
      v7 = *(v4 - 3);
      v9 = *(v3 - 1) == *(v4 - 1) && *v3 == *v4;
      if (v9)
      {
        if (v6 != v8 || v5 != v7)
        {
          return;
        }
      }

      else
      {
        if ((sub_1C96A7DE4() & 1) == 0)
        {
          return;
        }

        if (v6 != v8 || v5 != v7)
        {
          return;
        }
      }

      v3 += 9;
      v4 += 9;
      --v0;
    }

    while (v0);
  }
}

uint64_t NetworkConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A57B8);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v21 = *(v1 + 8);
  v25 = *(v1 + 16);
  v9 = *(v1 + 17);
  v19 = *(v1 + 18);
  v20 = v9;
  v10 = *(v1 + 32);
  v18 = *(v1 + 24);
  v17 = *(v1 + 40);
  v11 = *(v1 + 56);
  v15 = *(v1 + 48);
  v16 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C9480BF0();
  sub_1C96A7F54();
  LOBYTE(v23) = 0;
  v12 = v22;
  sub_1C96A7D34();
  if (!v12)
  {
    v22 = v11;
    v23 = v21;
    v26 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A57B0);
    sub_1C95548AC(&qword_1EDB7CE60);
    OUTLINED_FUNCTION_5_19();
    OUTLINED_FUNCTION_22_9(2);
    OUTLINED_FUNCTION_15_10();
    sub_1C96A7D34();
    OUTLINED_FUNCTION_22_9(3);
    OUTLINED_FUNCTION_15_10();
    sub_1C96A7D34();
    OUTLINED_FUNCTION_22_9(4);
    OUTLINED_FUNCTION_15_10();
    sub_1C96A7D34();
    OUTLINED_FUNCTION_22_9(5);
    OUTLINED_FUNCTION_15_10();
    sub_1C96A7D54();
    v23 = v16;
    v24 = v17;
    v26 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A57C0);
    sub_1C9554918();
    sub_1C96A7D74();
    v23 = v15;
    v26 = 7;
    OUTLINED_FUNCTION_5_19();
    v23 = v22;
    v26 = 8;
    OUTLINED_FUNCTION_5_19();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1C95548AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A57B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C9554918()
{
  result = qword_1EDB7CE00;
  if (!qword_1EDB7CE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A57C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7CE00);
  }

  return result;
}

uint64_t sub_1C9554994()
{
  v0 = sub_1C96A7BE4();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C9554A14@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C9554994();
  *a1 = result;
  return result;
}

unint64_t sub_1C9554A44@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C9479168(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C9554A70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C95549E0();
  *a1 = result;
  return result;
}

uint64_t sub_1C9554A98@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C95549E4();
  *a1 = result;
  return result;
}

uint64_t sub_1C9554AC0(uint64_t a1)
{
  v2 = sub_1C9480BF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9554AFC(uint64_t a1)
{
  v2 = sub_1C9480BF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C9554B68(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

unint64_t sub_1C9554BAC()
{
  result = qword_1EC3A57C8;
  if (!qword_1EC3A57C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A57C8);
  }

  return result;
}

unint64_t sub_1C9554C00()
{
  result = qword_1EC3A57D8;
  if (!qword_1EC3A57D8)
  {
    sub_1C96A4764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A57D8);
  }

  return result;
}

uint64_t Assembly.__allocating_init()()
{
  v0 = swift_allocObject();
  Assembly.init()();
  return v0;
}

uint64_t Assembly.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1C9554D84()
{
  v1 = sub_1C96A4F24();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  v5 = OUTLINED_FUNCTION_3_16();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14();
  if (qword_1EDB80020 != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  __swift_project_value_buffer(v5, qword_1EDB80028);
  v7 = OUTLINED_FUNCTION_5_1();
  v8(v7);
  (*(v3 + 104))(v0, *MEMORY[0x1E69D6E90], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0);
  swift_allocObject();
  result = OUTLINED_FUNCTION_4_19();
  qword_1EDB7CAF0 = result;
  return result;
}

_BYTE *_s9AppConfigVwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C9555014@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_1C96A4764();
  OUTLINED_FUNCTION_6();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

void *SyncedDataContextProvider.serializeData<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + OBJC_IVAR____TtC11WeatherCore25SyncedDataContextProvider_contextProvider + 24);
  v9 = *(v3 + OBJC_IVAR____TtC11WeatherCore25SyncedDataContextProvider_contextProvider + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC11WeatherCore25SyncedDataContextProvider_contextProvider), v8);
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a1;
  result = (*(v9 + 24))(&v12, sub_1C95552A0, v11, MEMORY[0x1E6969080], v8, v9);
  if (!v4)
  {
    return v12;
  }

  return result;
}

uint64_t sub_1C9555140@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1C96A6C24();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x1E6995280], v3, v5);
  v8 = sub_1C96A6AC4();
  if (v1)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v11 = v8;
  v12 = v9;
  result = (*(v4 + 8))(v7, v3);
  *a1 = v11;
  a1[1] = v12;
  return result;
}

uint64_t SyncedDataContextProvider.__allocating_init(dataStorageURL:useTransientContext:)(uint64_t a1, int a2)
{
  v4 = swift_allocObject();
  SyncedDataContextProvider.init(dataStorageURL:useTransientContext:)(a1, a2);
  return v4;
}

uint64_t SyncedDataContextProvider.deinit()
{
  v1 = OBJC_IVAR____TtC11WeatherCore25SyncedDataContextProvider_coherenceDataStorageURL;
  v2 = sub_1C96A4764();
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC11WeatherCore25SyncedDataContextProvider_coherenceContextStorageURL, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + OBJC_IVAR____TtC11WeatherCore25SyncedDataContextProvider_contextProvider);

  return v0;
}

uint64_t SyncedDataContextProvider.__deallocating_deinit()
{
  SyncedDataContextProvider.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void __swiftcall WidgetRefreshConfiguration.init(currentLocation:defaultLocation:severe:changeInConditions:nextHourPrecipitation:)(WeatherCore::WidgetRefreshConfiguration *__return_ptr retstr, WeatherCore::WidgetRefreshRange_optional currentLocation, WeatherCore::WidgetRefreshRange_optional defaultLocation, WeatherCore::WidgetRefreshRange_optional severe, WeatherCore::WidgetRefreshRange_optional changeInConditions, WeatherCore::WidgetRefreshRange_optional nextHourPrecipitation)
{
  v6 = **&nextHourPrecipitation.is_nil;
  v7 = xmmword_1C96B0700;
  if ((*(*&currentLocation.is_nil + 16) & 1) == 0)
  {
    v7 = **&currentLocation.is_nil;
  }

  v8 = vdup_n_s32(*(*&defaultLocation.is_nil + 16));
  v9.i64[0] = v8.u32[0];
  v9.i64[1] = v8.u32[1];
  v10 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v9, 0x3FuLL)), xmmword_1C96B0700, **&defaultLocation.is_nil);
  v11 = vdup_n_s32(*(*&severe.is_nil + 16));
  v9.i64[0] = v11.u32[0];
  v9.i64[1] = v11.u32[1];
  v12 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v9, 0x3FuLL)), xmmword_1C96B0700, **&severe.is_nil);
  v13 = vdup_n_s32(*(*&changeInConditions.is_nil + 16));
  v9.i64[0] = v13.u32[0];
  v9.i64[1] = v13.u32[1];
  v14 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v9, 0x3FuLL)), xmmword_1C96B0700, **&changeInConditions.is_nil);
  v15 = vdup_n_s32(*(*&nextHourPrecipitation.is_nil + 16));
  v9.i64[0] = v15.u32[0];
  v9.i64[1] = v15.u32[1];
  retstr->currentLocation = v7;
  retstr->defaultLocation = v10;
  retstr->severe = v12;
  retstr->changeInConditions = v14;
  retstr->nextHourPrecipitation = vbslq_s8(vcltzq_s64(vshlq_n_s64(v9, 0x3FuLL)), xmmword_1C96B0700, v6);
}

uint64_t WidgetRefreshConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A57F0);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - v8;
  v10 = *(v1 + 8);
  v12[0] = *(v1 + 16);
  v12[1] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C948C798();
  sub_1C96A7F54();
  v22 = 0;
  OUTLINED_FUNCTION_1_20();
  if (!v2)
  {
    v21 = 1;
    OUTLINED_FUNCTION_1_20();
    v20 = 2;
    OUTLINED_FUNCTION_1_20();
    v19 = 3;
    OUTLINED_FUNCTION_1_20();
    v18 = 4;
    OUTLINED_FUNCTION_1_20();
    v17 = 5;
    OUTLINED_FUNCTION_1_20();
    v16 = 6;
    OUTLINED_FUNCTION_1_20();
    v15 = 7;
    OUTLINED_FUNCTION_1_20();
    v14 = 8;
    OUTLINED_FUNCTION_1_20();
    v13 = 9;
    OUTLINED_FUNCTION_1_20();
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_1C955583C()
{
  v0 = sub_1C96A7BE4();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C95558B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C955583C();
  *a1 = result;
  return result;
}

unint64_t sub_1C95558E4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C9482630(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C9555910@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C9555888();
  *a1 = result;
  return result;
}

uint64_t sub_1C9555938(uint64_t a1)
{
  v2 = sub_1C948C798();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9555974(uint64_t a1)
{
  v2 = sub_1C948C798();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C95559CC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1C9555A00()
{
  result = qword_1EC3A57F8;
  if (!qword_1EC3A57F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A57F8);
  }

  return result;
}

id WeatherConfigurationManager.__allocating_init(contentDirectoryURL:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1C96A46E4();
  v5 = [v3 initWithContentDirectoryURL_];

  sub_1C96A4764();
  OUTLINED_FUNCTION_0_36();
  (*(v6 + 8))(a1);
  return v5;
}

uint64_t sub_1C9555AE0()
{
  sub_1C96A4EE4();
  sub_1C96A4EC4();
  if (qword_1EDB7CAE8 != -1)
  {
    swift_once();
  }

  sub_1C96A3D04();
  sub_1C96A4EB4();
}

id WeatherConfigurationManager.init(contentDirectoryURL:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1C96A5114();
  MEMORY[0x1EEE9AC00](v4 - 8);
  *&v1[OBJC_IVAR____TtC11WeatherCore27WeatherConfigurationManager_observers] = MEMORY[0x1E69E7CC0];
  v5 = OBJC_IVAR____TtC11WeatherCore27WeatherConfigurationManager_lock;
  sub_1C96A5104();
  sub_1C96A5134();
  swift_allocObject();
  *&v1[v5] = sub_1C96A5124();
  v6 = sub_1C96A46E4();
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v15, sel_initWithContentDirectoryURL_, v6);

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = ObjectType;
  aBlock[4] = sub_1C9556670;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C9556894;
  aBlock[3] = &block_descriptor_5;
  v10 = _Block_copy(aBlock);
  v11 = v7;

  [v11 setNetworkEventHandler_];
  _Block_release(v10);

  sub_1C96A4764();
  OUTLINED_FUNCTION_0_36();
  (*(v12 + 8))(a1);
  return v11;
}

void sub_1C9555D88(void *a1, uint64_t a2, char a3)
{
  v5 = sub_1C96A5D14();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5820);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (v51 - v9);
  v11 = sub_1C96A5454();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_1EDB7CFF0 != -1)
    {
      swift_once();
    }

    v22 = sub_1C96A6154();
    __swift_project_value_buffer(v22, qword_1EDB7CFF8);
    v16 = sub_1C96A6134();
    v23 = sub_1C96A76A4();
    if (os_log_type_enabled(v16, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1C945E000, v16, v23, "Skipping app config telemetry: missing self", v24, 2u);
      MEMORY[0x1CCA8E3D0](v24, -1, -1);
    }

    goto LABEL_13;
  }

  v16 = Strong;
  if (qword_1EDB7C968 != -1)
  {
    swift_once();
  }

  if (byte_1EDB7A6C0)
  {
    if (qword_1EDB7CFF0 != -1)
    {
      swift_once();
    }

    v17 = sub_1C96A6154();
    __swift_project_value_buffer(v17, qword_1EDB7CFF8);
    v18 = sub_1C96A6134();
    v19 = sub_1C96A76A4();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_20;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "Skipping app config telemetry: telemetry is disabled";
LABEL_19:
    _os_log_impl(&dword_1C945E000, v18, v19, v21, v20, 2u);
    MEMORY[0x1CCA8E3D0](v20, -1, -1);
LABEL_20:

LABEL_21:
    return;
  }

  if (a3)
  {
    if (qword_1EDB7CFF0 != -1)
    {
      swift_once();
    }

    v25 = sub_1C96A6154();
    __swift_project_value_buffer(v25, qword_1EDB7CFF8);
    v18 = sub_1C96A6134();
    v19 = sub_1C96A76A4();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_20;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "Skipping app config telemetry: fallback";
    goto LABEL_19;
  }

  if (sub_1C9556678())
  {
    sub_1C95566E4(a1, v10);
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {
      sub_1C9557AB8(v10, &qword_1EC3A5820);
      if (qword_1EDB7CFF0 != -1)
      {
        swift_once();
      }

      v26 = sub_1C96A6154();
      __swift_project_value_buffer(v26, qword_1EDB7CFF8);
      v27 = sub_1C96A6134();
      v28 = sub_1C96A76A4();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_1C945E000, v27, v28, "Skipping app config telemetry: invalid event", v29, 2u);
        MEMORY[0x1CCA8E3D0](v29, -1, -1);
      }

LABEL_13:
      return;
    }

    v43 = (*(v12 + 32))(v14, v10, v11);
    v51[0] = v51;
    v51[1] = *(v16 + OBJC_IVAR____TtC11WeatherCore27WeatherConfigurationManager_lock);
    MEMORY[0x1EEE9AC00](v43);
    v51[-2] = v16;
    sub_1C96A5134();
    sub_1C96A3D04();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5828);
    sub_1C96A5554();

    v44 = v52;
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5830) + 48);
    (*(v12 + 16))(v7, v14, v11);
    sub_1C96A5DF4();
    swift_storeEnumTagMultiPayload();
    v46 = sub_1C96A5DE4();
    __swift_storeEnumTagSinglePayload(&v7[v45], 1, 1, v46);
    swift_storeEnumTagMultiPayload();
    v47 = sub_1C946D04C();
    if (!v47)
    {
      goto LABEL_41;
    }

    v48 = v47;
    if (v47 >= 1)
    {
      for (i = 0; i != v48; ++i)
      {
        if ((v44 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1CCA8D440](i, v44);
        }

        else
        {
          sub_1C96A3D04();
        }

        sub_1C9641964();
      }

LABEL_41:

      sub_1C9557A5C(v7);
      (*(v12 + 8))(v14, v11);
      return;
    }

    __break(1u);
  }

  else
  {
    v30 = [a1 error];
    if (!v30)
    {
      if (qword_1EDB7CFF0 != -1)
      {
        swift_once();
      }

      v50 = sub_1C96A6154();
      __swift_project_value_buffer(v50, qword_1EDB7CFF8);
      v18 = sub_1C96A6134();
      v19 = sub_1C96A76A4();
      if (!os_log_type_enabled(v18, v19))
      {
        goto LABEL_20;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "Skipping app config telemetry: unknown";
      goto LABEL_19;
    }

    v31 = v30;
    if (qword_1EDB7CFF0 != -1)
    {
      swift_once();
    }

    v32 = sub_1C96A6154();
    __swift_project_value_buffer(v32, qword_1EDB7CFF8);
    v33 = v31;
    v34 = sub_1C96A6134();
    v35 = sub_1C96A76A4();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v52 = v38;
      *v36 = 136446466;
      swift_getErrorValue();
      v39 = sub_1C96A7E64();
      v41 = sub_1C9484164(v39, v40, &v52);

      *(v36 + 4) = v41;
      *(v36 + 12) = 2112;
      v18 = v33;
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 14) = v42;
      *v37 = v42;
      _os_log_impl(&dword_1C945E000, v34, v35, "Skipping app config telemetry: error=%{public}s %@", v36, 0x16u);
      sub_1C9557AB8(v37, &qword_1EC3A5410);
      MEMORY[0x1CCA8E3D0](v37, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x1CCA8E3D0](v38, -1, -1);
      MEMORY[0x1CCA8E3D0](v36, -1, -1);

      goto LABEL_21;
    }
  }
}

uint64_t sub_1C9556678()
{
  v1 = [v0 error];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1C96A4574();
    sub_1C95575BC();
    v5 = v4;

    v6 = v5 ^ 1;
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

uint64_t sub_1C95566E4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 error];
  if (v4)
  {
    *a2 = v4;
    v5 = MEMORY[0x1E69D6858];
LABEL_3:
    v6 = *v5;
    v7 = sub_1C96A5454();
    (*(*(v7 - 8) + 104))(a2, v6, v7);
    v8 = a2;
    v9 = 0;
    v10 = v7;
    goto LABEL_11;
  }

  v11 = [a1 response];
  if (v11)
  {
    v12 = v11;
    if ((sub_1C96A76E4() & 1) == 0)
    {
      *a2 = v12;
      v5 = MEMORY[0x1E69D6840];
      goto LABEL_3;
    }

    v13 = [a1 metrics];
    if (v13)
    {
      v14 = v13;
      if ([v13 resourceFetchType] != 3)
      {
        *a2 = v12;
        a2[1] = v14;
        v5 = MEMORY[0x1E69D6848];
        goto LABEL_3;
      }
    }
  }

  v10 = sub_1C96A5454();
  v8 = a2;
  v9 = 1;
LABEL_11:

  return __swift_storeEnumTagSinglePayload(v8, v9, 1, v10);
}

uint64_t sub_1C9556838@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = OBJC_IVAR____TtC11WeatherCore27WeatherConfigurationManager_observers;
  swift_beginAccess();
  *a2 = *(a1 + v4);
  return sub_1C96A53C4();
}

void sub_1C9556894(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  sub_1C96A3D04();
  v9 = a2;
  v8 = a3;
  v7(v9, v8, a4);
}

id WeatherConfigurationManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t WeatherConfigurationManager.fetchConfiguration(with:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5810);
  swift_allocObject();
  return sub_1C96A5714();
}

void sub_1C9556A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_1C96A52F4();
  sub_1C96A52E4();
  v12 = sub_1C96A52D4();

  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a1;
  v13[5] = a2;
  v15[4] = sub_1C95579D4;
  v15[5] = v13;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1C9556F28;
  v15[3] = &block_descriptor_9_0;
  v14 = _Block_copy(v15);
  sub_1C96A3D04();
  sub_1C96A3D04();

  [a5 fetchSingleConfigurationWithSettings:a6 completionQueue:v12 completion:v14];
  _Block_release(v14);
}

void sub_1C9556BE4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, id a5, void (*a6)(void), int a7, void (*a8)(void), uint64_t a9)
{
  if (a5)
  {
    v11 = a5;
    (a6)(a5);
    v12 = a5;
LABEL_5:

    return;
  }

  v13 = a2;
  if (a2 >> 60 == 15)
  {
    sub_1C9557A00();
    v14 = swift_allocError();
    *v15 = 0;
    a6();
    v12 = v14;
    goto LABEL_5;
  }

  v20 = a9;
  if (a3 && (v21 = sub_1C946D04C()) != 0)
  {
    v22 = v21;
    v41 = a9;
    v45 = a8;
    v23 = a1;
    v24 = MEMORY[0x1E69E7CC0];
    v43 = v13;
    sub_1C94874C0(v23, v13);
    v48 = v24;
    sub_1C9522D28(0, v22 & ~(v22 >> 63), 0);
    if (v22 < 0)
    {
      __break(1u);
      goto LABEL_36;
    }

    v25 = 0;
    v26 = v48;
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1CCA8D440](v25, a3);
      }

      else
      {
        v27 = *(a3 + 8 * v25 + 32);
      }

      v28 = v27;
      v29 = [v27 longLongValue];

      v48 = v26;
      v31 = *(v26 + 16);
      v30 = *(v26 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1C9522D28((v30 > 1), v31 + 1, 1);
        v26 = v48;
      }

      ++v25;
      *(v26 + 16) = v31 + 1;
      *(v26 + 8 * v31 + 32) = v29;
    }

    while (v22 != v25);
    v13 = v43;
    a8 = v45;
    v20 = v41;
    if (!a4)
    {
      goto LABEL_31;
    }
  }

  else
  {
    sub_1C94874C0(a1, v13);
    v26 = MEMORY[0x1E69E7CC0];
    if (!a4)
    {
LABEL_31:
      v33 = MEMORY[0x1E69E7CC0];
      goto LABEL_32;
    }
  }

  v32 = sub_1C946D04C();
  v33 = MEMORY[0x1E69E7CC0];
  if (v32)
  {
    v34 = v32;
    v42 = v20;
    v44 = v13;
    v46 = a8;
    v48 = MEMORY[0x1E69E7CC0];
    sub_1C9522D08(0, v32 & ~(v32 >> 63), 0);
    if ((v34 & 0x8000000000000000) == 0)
    {
      v35 = 0;
      v33 = v48;
      do
      {
        if ((a4 & 0xC000000000000001) != 0)
        {
          v36 = MEMORY[0x1CCA8D440](v35, a4);
        }

        else
        {
          v36 = *(a4 + 8 * v35 + 32);
        }

        v37 = v36;
        v38 = [v36 intValue];

        v48 = v33;
        v40 = *(v33 + 16);
        v39 = *(v33 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_1C9522D08((v39 > 1), v40 + 1, 1);
          v33 = v48;
        }

        ++v35;
        *(v33 + 16) = v40 + 1;
        *(v33 + 4 * v40 + 32) = v38;
      }

      while (v34 != v35);
      v13 = v44;
      a8 = v46;
      goto LABEL_32;
    }

LABEL_36:
    __break(1u);
    return;
  }

LABEL_32:
  v48 = a1;
  v49 = v13;
  v50 = v26;
  v51 = v33;
  sub_1C94B05C8(a1, v13);
  a8(&v48);
  sub_1C9485BFC(a1, v13);
  sub_1C9482F3C(v48, v49);
}

uint64_t sub_1C9556F28(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_1C96A3D04();
    v10 = v8;
    v8 = sub_1C96A4854();
    v12 = v11;

    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_1C96A3D04();
  v12 = 0xF000000000000000;
  if (a3)
  {
LABEL_3:
    sub_1C946B5D0(0, &qword_1EDB7CD38);
    a3 = sub_1C96A72A4();
  }

LABEL_4:
  if (a4)
  {
    sub_1C946B5D0(0, &qword_1EDB7CD38);
    a4 = sub_1C96A72A4();
  }

  v13 = a5;
  v9(v8, v12, a3, a4, a5);

  sub_1C9485BFC(v8, v12);
}

uint64_t sub_1C9557070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OBJC_IVAR____TtC11WeatherCore27WeatherConfigurationManager_observers;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v12 = MEMORY[0x1E69E7CC0];
  v6 = sub_1C946D04C();
  result = sub_1C96A53C4();
  for (i = 0; ; ++i)
  {
    if (v6 == i)
    {

      *(a1 + v4) = v12;

      type metadata accessor for AppConfigurationDataServiceObserverProxy();
      swift_allocObject();
      v9 = swift_unknownObjectRetain();
      sub_1C94AC734(v9, a3);
      v10 = swift_beginAccess();
      MEMORY[0x1CCA8CC10](v10);
      sub_1C94AC1D4(*((*(a1 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1C96A7314();
      return swift_endAccess();
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1CCA8D440](i, v5);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      result = sub_1C96A3D04();
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1C96A7B14();
      sub_1C96A7B34();
      sub_1C96A7B44();
      result = sub_1C96A7B24();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1C9557260()
{
  sub_1C96A5134();
  sub_1C96A3D04();
  sub_1C96A5554();
}

uint64_t sub_1C95572E8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11WeatherCore27WeatherConfigurationManager_observers;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v11 = MEMORY[0x1E69E7CC0];
  v6 = sub_1C946D04C();
  result = sub_1C96A53C4();
  for (i = 0; ; ++i)
  {
    if (v6 == i)
    {

      *(a1 + v4) = v11;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1CCA8D440](i, v5);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      result = sub_1C96A3D04();
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v10 = Strong, swift_unknownObjectRelease(), v10 == a2))
    {
    }

    else
    {
      sub_1C96A7B14();
      sub_1C96A7B34();
      sub_1C96A7B44();
      result = sub_1C96A7B24();
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}