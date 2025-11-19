uint64_t Assembly.init()()
{
  sub_2201F325C();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22037EA40;
  v2 = type metadata accessor for HeartbeatAssembly();
  v3 = swift_allocObject();
  *(v1 + 56) = v2;
  *(v1 + 64) = sub_2201F333C(&qword_281264E28, type metadata accessor for HeartbeatAssembly);
  *(v1 + 32) = v3;
  v4 = type metadata accessor for TrackerAssembly();
  v5 = swift_allocObject();
  *(v1 + 96) = v4;
  *(v1 + 104) = sub_2201F333C(&qword_281265498, type metadata accessor for TrackerAssembly);
  *(v1 + 72) = v5;
  v6 = type metadata accessor for TelemetryAssembly();
  v7 = swift_allocObject();
  *(v1 + 136) = v6;
  *(v1 + 144) = sub_2201F333C(&qword_281264D58, type metadata accessor for TelemetryAssembly);
  *(v1 + 112) = v7;
  v8 = type metadata accessor for DebugAssembly();
  v9 = swift_allocObject();
  *(v1 + 176) = v8;
  *(v1 + 184) = sub_2201F333C(&qword_281265CE0, type metadata accessor for DebugAssembly);
  *(v1 + 152) = v9;
  *(v0 + 16) = v1;
  return v0;
}

void sub_2201F325C()
{
  if (!qword_281261B30)
  {
    sub_2201F32B4();
    v0 = sub_220370038();
    if (!v1)
    {
      atomic_store(v0, &qword_281261B30);
    }
  }
}

unint64_t sub_2201F32B4()
{
  result = qword_281266680;
  if (!qword_281266680)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281266680);
  }

  return result;
}

uint64_t sub_2201F333C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2201F33FC()
{
  v0 = sub_22036F798();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22036F508();
  sub_2201F358C(0, &qword_281263070);
  sub_22036F728();

  (*(v1 + 104))(v4, *MEMORY[0x277D6CF00], v0);
  sub_22036F458();

  (*(v1 + 8))(v4, v0);
  sub_22036F518();
  sub_22036F708();
}

uint64_t sub_2201F358C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2201F360C(uint64_t a1)
{
  v39 = sub_22036F7F8();
  v38 = *(v39 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v39);
  v37 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_22036F4C8();
  v55 = *(v51 - 8);
  v5 = *(v55 + 64);
  MEMORY[0x28223BE20](v51);
  v46 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22036F798();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22036F508();
  sub_22036EBE8();
  sub_22036F718();

  v54 = *MEMORY[0x277D6CF10];
  v12 = v8[13];
  v12(v11);
  sub_22036F458();

  v13 = v8[1];
  v13(v11, v7);
  sub_22036F508();
  sub_22036EF18();
  sub_22036F718();

  sub_22036F448();

  v53 = *MEMORY[0x277D6CF00];
  v12(v11);
  sub_22036F458();

  v13(v11, v7);
  sub_22036F508();
  sub_22036ED18();

  v36 = v1;
  sub_22036F718();

  v14 = v54;
  (v12)(v11, v54, v7);
  v49 = v8 + 13;
  v47 = v12;
  sub_22036F458();

  v50 = v13;
  v48 = v8 + 1;
  v13(v11, v7);
  sub_22036F508();
  sub_22036F728();

  (v12)(v11, v14, v7);
  sub_22036F458();

  v13(v11, v7);
  sub_22036F518();
  type metadata accessor for FlushAnalyticsBatchesStartupTask();
  sub_22036F718();

  sub_22036F528();
  __swift_project_boxed_opaque_existential_1(v56, v57);
  sub_22036F6E8();
  v52 = *MEMORY[0x277D6CB30];
  v15 = v55;
  v16 = *(v55 + 104);
  v43 = v55 + 104;
  v44 = v16;
  v17 = v46;
  v18 = v51;
  (v16)(v46);
  sub_22036F778();
  v19 = *(v15 + 8);
  v55 = v15 + 8;
  v42 = v19;
  v19(v17, v18);
  __swift_destroy_boxed_opaque_existential_1(v56);
  sub_22036F518();

  sub_22036F728();

  v20 = v38;
  v21 = v37;
  v22 = v39;
  (*(v38 + 104))(v37, *MEMORY[0x277D6CF70], v39);
  sub_22036F428();

  (*(v20 + 8))(v21, v22);
  sub_22036F508();
  sub_22036F358();
  sub_22036F718();

  v23 = v47;
  (v47)(v11, v53, v7);
  sub_22036F458();

  v24 = v50;
  v50(v11, v7);
  sub_22036F508();
  sub_2201F358C(0, qword_2812630A8);
  sub_22036F728();

  sub_22036F508();
  sub_2201F358C(0, &unk_2812666B0);
  sub_22036F728();

  v41 = v7;
  (v23)(v11, v54, v7);
  v40 = v11;
  sub_22036F458();

  v24(v11, v7);
  sub_22036F508();
  sub_2201F358C(0, qword_281262B58);
  sub_22036F728();

  sub_22036F508();
  sub_2201F358C(0, &qword_2812666C0);
  sub_22036F728();

  sub_22036F518();
  sub_22036F0A8();
  sub_22036F718();

  sub_22036F518();
  sub_22036F158();

  sub_22036F718();

  sub_22036F518();
  type metadata accessor for ExternalAnalyticsEventProcessor();
  sub_22036F718();

  sub_22036F518();
  sub_2201F358C(0, &qword_281266988);
  sub_22036F728();

  sub_22036F518();
  sub_2201F358C(0, &qword_2812662E0);
  sub_22036F728();

  v45 = a1;
  sub_22036F518();
  sub_2201F358C(0, qword_2812662E8);
  sub_22036F728();

  sub_22036F528();
  __swift_project_boxed_opaque_existential_1(v56, v57);
  sub_2201F358C(0, &qword_281266630);
  v25 = v46;
  v26 = v52;
  v27 = v51;
  v28 = v44;
  v44(v46, v52, v51);
  sub_22036F788();
  v29 = v42;
  v42(v25, v27);
  __swift_destroy_boxed_opaque_existential_1(v56);
  sub_22036F528();
  v39 = v58;
  __swift_project_boxed_opaque_existential_1(v56, v57);
  sub_2201F51A0(0, &qword_281266648, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC78]);
  v28(v25, v26, v27);
  sub_22036F778();
  v29(v25, v27);
  __swift_destroy_boxed_opaque_existential_1(v56);
  sub_22036F528();
  __swift_project_boxed_opaque_existential_1(v56, v57);
  sub_2201F358C(0, &qword_281266A80);
  v28(v25, v52, v27);
  sub_22036F788();
  v29(v25, v27);
  __swift_destroy_boxed_opaque_existential_1(v56);
  sub_22036F508();
  type metadata accessor for SessionObserver();
  sub_22036F718();

  v30 = v40;
  v31 = v41;
  v32 = v47;
  (v47)(v40, v53, v41);
  sub_22036F458();

  v33 = v50;
  v50(v30, v31);
  sub_22036F508();
  type metadata accessor for SegmentationObserver();
  sub_22036F718();

  (v32)(v30, v54, v31);
  sub_22036F458();

  v33(v30, v31);
  sub_22036F518();
  sub_22036F2B8();
  sub_22036F718();

  sub_22036F518();
  sub_2202BEB24(0, &qword_2812668E0, &protocolRef_AAEndpointType);
  sub_22036F718();
}

uint64_t sub_2201F44E0()
{
  result = sub_22036F5C8();
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

uint64_t type metadata accessor for FlushAnalyticsBatchesStartupTask()
{
  result = qword_2812665D8;
  if (!qword_2812665D8)
  {
    return swift_getSingletonMetadata();
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

uint64_t sub_2201F4634()
{
  v1 = sub_22036F4C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_22036F528();
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  sub_2201F358C(0, &qword_281266AA8);
  (*(v2 + 104))(v5, *MEMORY[0x277D6CB30], v1);
  sub_22036F788();
  (*(v2 + 8))(v5, v1);
  __swift_destroy_boxed_opaque_existential_1(v9);
  sub_22036F518();

  sub_22036F708();
}

uint64_t sub_2201F47F0()
{
  v0 = sub_22036F4C8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22036F528();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_22036F898();
  (*(v1 + 104))(v4, *MEMORY[0x277D6CB30], v0);
  sub_22036F778();
  (*(v1 + 8))(v4, v0);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_2201F4948()
{
  v0 = *(*(sub_22036F138() - 8) + 64);
  MEMORY[0x28223BE20]();
  sub_22036EBE8();
  sub_22036EF68();
  sub_22036EF58();
  sub_22036EDE8();
  sub_22036EDD8();
  sub_22036F128();
  return sub_22036EBD8();
}

uint64_t sub_2201F4A14(uint64_t a1, void *a2)
{
  v2 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SegmentationObserver();
  result = sub_22036F4A8();
  if (result)
  {
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2201F4A7C(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22036EF18();
  result = sub_22036F4A8();
  if (result)
  {
    v3 = sub_22036EF08();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2201F4AE8(void *a1)
{
  v2 = *(*(sub_22036F118() - 8) + 64);
  MEMORY[0x28223BE20]();
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22036ECC8();
  v33 = *(v5 - 8);
  v34 = v5;
  v6 = *(v33 + 64);
  MEMORY[0x28223BE20]();
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(sub_22036EEF8() - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v10 = sub_22036F1C8();
  v30 = *(v10 - 8);
  v31 = v10;
  v11 = *(v30 + 64);
  MEMORY[0x28223BE20]();
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277CEAD38];
  sub_2201F51A0(0, &unk_281261B40, MEMORY[0x277CEAD38], MEMORY[0x277D84560]);
  v15 = *(v8 + 72);
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_220371610;
  sub_22036EED8();
  sub_22036EEE8();
  v38 = v17;
  sub_2201F50A0(&qword_2812666F0, 255, MEMORY[0x277CEAD38]);
  sub_2201F51A0(0, &unk_281261F50, v14, MEMORY[0x277D83940]);
  sub_2201F5310(&unk_281261F40, &unk_281261F50, v14);
  sub_22036FCF8();
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2201F358C(0, &unk_2812666B0);
  result = sub_22036F4B8();
  if (!v39)
  {
    __break(1u);
    goto LABEL_6;
  }

  v32 = v4;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2201F358C(0, &qword_2812666C0);
  result = sub_22036F4B8();
  if (!v37)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v21 = MEMORY[0x277CEAC90];
  sub_2201F51A0(0, &qword_281261B60, MEMORY[0x277CEAC90], MEMORY[0x277D84560]);
  v22 = *(v33 + 72);
  v23 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_22037EA30;
  sub_22036ECB8();
  sub_22036EC98();
  sub_22036ECA8();
  v36 = v24;
  sub_2201F50A0(&qword_281266970, 255, MEMORY[0x277CEAC90]);
  sub_2201F51A0(0, &qword_281261F70, v21, MEMORY[0x277D83940]);
  sub_2201F5310(&unk_281261F60, &qword_281261F70, v21);
  sub_22036FCF8();
  v25 = sub_22036EE78();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  sub_22036EE68();
  sub_22036F108();
  sub_22036F1B8();
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22036EBE8();
  result = sub_22036F4A8();
  if (result)
  {
    v29 = sub_22036EBC8();

    (*(v30 + 8))(v13, v31);
    return v29;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2201F50A0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2201F50E8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_2201F51A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2201F5228(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2201F358C(0, &qword_281266A80);
  result = sub_22036F4B8();
  if (v7[3])
  {
    v4 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_22036F358();
    result = sub_22036F4A8();
    if (result)
    {
      v5 = result;
      type metadata accessor for SegmentationObserver();
      swift_allocObject();
      v6 = sub_2201F6A94(v7, v5);

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2201F5310(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2201F51A0(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2201F5374()
{
  v5 = "(";
  v6 = MEMORY[0x277D83410] + 64;
  v7 = MEMORY[0x277D83428] + 64;
  result = sub_22036F048();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8);
    swift_getTupleTypeLayout2();
    v8 = &v4;
    result = sub_22036E5A8();
    if (v3 <= 0x3F)
    {
      v9 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_2201F547C(uint64_t *a1, double a2)
{
  v3 = v2;
  v6 = sub_22036E5A8();
  v29 = *(v6 - 8);
  v30 = v6;
  v7 = *(v29 + 64);
  MEMORY[0x28223BE20]();
  v28 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22036EF48();
  v9 = *(v27 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22036F048();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20]();
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2201F5D44();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v2 + 64) = v18;
  sub_2201F5DF4(a1, v2 + 16);
  *(v2 + 56) = a2;
  v20 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  (*(v19 + 8))(v20, v19);
  sub_22036EF38();
  v22 = v21;
  (*(v9 + 8))(v12, v27);
  v23 = v2 + OBJC_IVAR____TtC15StocksAnalytics37RollingTimestampConfigurationProvider_lastConfig;
  (*(v14 + 32))(v23, v17, v13);
  sub_2201F57FC();
  *(v23 + *(v24 + 48)) = v22;
  v25 = v28;
  sub_22036E598();
  (*(v29 + 32))(v3 + OBJC_IVAR____TtC15StocksAnalytics37RollingTimestampConfigurationProvider_lastConfigRollDate, v25, v30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t type metadata accessor for Settings.Analytics2.Debugging.Jitter()
{
  result = qword_2812669F0;
  if (!qword_2812669F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2201F57FC()
{
  if (!qword_2812666D0)
  {
    sub_22036F048();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2812666D0);
    }
  }
}

uint64_t type metadata accessor for PrivacyValidationProvider()
{
  result = qword_281262F18;
  if (!qword_281262F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2201F58B4()
{
  result = sub_22036EF88();
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

uint64_t sub_2201F5950()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2201F65D4();
  }

  return result;
}

uint64_t sub_2201F59B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2201F358C(0, qword_281262B58);
  result = sub_22036F4B8();
  if (v9[3])
  {
    v5 = type metadata accessor for RollingTimestampConfigurationProvider();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v8 = sub_2201F547C(v9, 15.0);
    a2[3] = v5;
    result = sub_2201F50A0(&qword_2812626C8, 255, type metadata accessor for RollingTimestampConfigurationProvider);
    a2[4] = result;
    *a2 = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2201F5A9C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2201F51A0(0, &qword_281266AB0, MEMORY[0x277D69388], MEMORY[0x277D83D88]);
  v5 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v16 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_22036E868();
  sub_22036F4B8();
  v10 = *(v9 - 8);
  result = (*(v10 + 48))(v7, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v12 = type metadata accessor for TimestampJitterFactory();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    result = (*(v10 + 32))(v15 + OBJC_IVAR____TtC15StocksAnalytics22TimestampJitterFactory_appConfiguration, v7, v9);
    a2[3] = v12;
    a2[4] = &off_2833F1938;
    *a2 = v15;
  }

  return result;
}

uint64_t type metadata accessor for TimestampJitterFactory()
{
  result = qword_281263608;
  if (!qword_281263608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2201F5C68()
{
  result = sub_22036E868();
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

uint64_t type metadata accessor for RollingTimestampConfigurationProvider()
{
  result = qword_2812626B0;
  if (!qword_2812626B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2201F5D44()
{
  if (!qword_281261E30)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22036FD88();
    if (!v1)
    {
      atomic_store(v0, &qword_281261E30);
    }
  }
}

void sub_2201F5DA8(uint64_t a1, unint64_t *a2)
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

uint64_t sub_2201F5DF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2201F5E58@<X0>(uint64_t a1@<X8>)
{
  v27[0] = a1;
  v2 = *v1;
  v3 = sub_22036E868();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22036EF48();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = (v27 - v14);
  if (qword_281266A18 != -1)
  {
    swift_once();
  }

  if (sub_22036EB18())
  {
    if (qword_27CF25AE0 != -1)
    {
      swift_once();
    }

    sub_22024E79C();
    sub_22036EAC8();
    v16 = v28;
    if (qword_27CF25AE8 != -1)
    {
      swift_once();
    }

    sub_22036EAC8();
    v17 = v27[2];
    if (qword_27CF25AF0 != -1)
    {
      swift_once();
    }

    sub_22036EAC8();
    if (v16)
    {
      v18 = v27[1];
      *v15 = v17;
      v15[1] = v18;
      v19 = MEMORY[0x277CEAD48];
    }

    else
    {
      v19 = MEMORY[0x277CEAD50];
    }

    (*(v9 + 104))(v15, *v19, v8);
    return (*(v9 + 32))(v27[0], v15, v8);
  }

  else
  {
    (*(v4 + 16))(v7, v1 + OBJC_IVAR____TtC15StocksAnalytics22TimestampJitterFactory_appConfiguration, v3);
    v20 = objc_opt_self();
    if ([v20 enabledForCurrentLevel_])
    {
      sub_22036E7E8();
      v22 = v21;
      sub_22036E7F8();
      v24 = v23;
      (*(v4 + 8))(v7, v3);
      *v13 = v22;
      v13[1] = v24;
      v25 = MEMORY[0x277CEAD48];
    }

    else
    {
      (*(v4 + 8))(v7, v3);
      v25 = MEMORY[0x277CEAD50];
    }

    (*(v9 + 104))(v13, *v25, v8);
    return (*(v9 + 32))(v27[0], v13, v8);
  }
}

uint64_t sub_2201F625C()
{
  v0 = sub_22036EB38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  (*(v1 + 104))(&v13 - v6, *MEMORY[0x277D6D098], v0);
  v8 = type metadata accessor for Settings.Analytics2.Debugging.Jitter();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  (*(v1 + 16))(v5, v7, v0);
  v11 = sub_22036EB08();
  result = (*(v1 + 8))(v7, v0);
  qword_281266A20 = v11;
  return result;
}

uint64_t sub_2201F63D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2201F358C(0, &qword_281266A80);
  result = sub_22036F4B8();
  if (v14)
  {
    v5 = type metadata accessor for PrivacyValidationProvider();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    v8 = swift_allocObject();
    v9 = OBJC_IVAR____TtC15StocksAnalytics25PrivacyValidationProvider_privacyValidation;
    v10 = *MEMORY[0x277CEAD70];
    v11 = sub_22036EF88();
    (*(*(v11 - 8) + 104))(v8 + v9, v10, v11);
    sub_2201F5DF4(v13, v8 + 16);
    __swift_project_boxed_opaque_existential_1(v13, v14);
    sub_22036E948();
    swift_allocObject();
    swift_weakInit();
    sub_22036F538();

    __swift_destroy_boxed_opaque_existential_1(v12);
    __swift_destroy_boxed_opaque_existential_1(v13);
    result = sub_2201F50A0(qword_281262F28, 255, type metadata accessor for PrivacyValidationProvider);
    *a2 = v8;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2201F6594()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2201F65D4()
{
  v1 = v0;
  v2 = sub_22036EFB8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22036EF88();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22036F478();
  v12 = sub_22036F468();
  v30 = v11;
  if (v12)
  {
    v13 = sub_22036E848();
  }

  else if (NFSeedBuild())
  {
    v13 = sub_22036E828();
  }

  else
  {
    v13 = sub_22036E838();
  }

  v14 = v13;
  v15 = *(v13 + 16);
  if (v15)
  {
    v27 = v8;
    v28 = v7;
    v29 = v0;
    v31 = MEMORY[0x277D84F90];
    sub_2202BC6FC(0, v15, 0);
    v16 = v31;
    v17 = (v14 + 40);
    do
    {
      v19 = *(v17 - 1);
      v18 = *v17;

      sub_22036EFA8();
      v31 = v16;
      v21 = *(v16 + 16);
      v20 = *(v16 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_2202BC6FC(v20 > 1, v21 + 1, 1);
        v16 = v31;
      }

      *(v16 + 16) = v21 + 1;
      (*(v3 + 32))(v16 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v21, v6, v2);
      v17 += 2;
      --v15;
    }

    while (v15);

    v7 = v28;
    v1 = v29;
    v8 = v27;
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  v22 = sub_2201F68C8(v16);

  v23 = v30;
  *v30 = v22;
  (*(v8 + 104))(v23, *MEMORY[0x277CEAD68], v7);
  v24 = OBJC_IVAR____TtC15StocksAnalytics25PrivacyValidationProvider_privacyValidation;
  swift_beginAccess();
  (*(v8 + 40))(v1 + v24, v23, v7);
  return swift_endAccess();
}

uint64_t sub_2201F68C8(uint64_t a1)
{
  v2 = sub_22036EFB8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_2201F6A50(&qword_2812666D8);
  result = MEMORY[0x223D799C0](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2202BB968(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_2201F6A50(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22036EFB8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2201F6A94(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22036E868();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 16) = a2;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_22036E958();
  sub_2201F6C84();
  (*(v7 + 8))(v10, v6);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22036E948();
  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v3;
  sub_22036F538();

  __swift_destroy_boxed_opaque_existential_1(v15);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_2201F6C4C()
{
  v1 = *(v0 + 16);
  swift_unownedRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_2201F6C84()
{
  v1 = v0;
  v2 = sub_22036E798();
  v3 = objc_opt_self();
  v4 = [v3 standardUserDefaults];
  v5 = sub_22036FAC8();
  v6 = [v4 valueForKey_];

  if (v6)
  {
    sub_22036FCE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24 = v22;
  v25 = v23;
  if (*(&v23 + 1))
  {
    sub_2201F70D0(0, &qword_281261EA8, MEMORY[0x277D84A28], MEMORY[0x277D83940]);
    if (swift_dynamicCast())
    {
      v7 = sub_2201F7170(v2, v21);

      if (v7)
      {

        goto LABEL_10;
      }
    }
  }

  else
  {
    sub_220235924(&v24);
  }

  v8 = *(v1 + 16);
  *(swift_allocObject() + 16) = v2;

  sub_22036F308();

  v9 = [v3 standardUserDefaults];
  v10 = sub_22036FB58();

  v11 = sub_22036FAC8();
  [v9 setObject:v10 forKey:v11];

LABEL_10:
  v12 = sub_22036E7A8();
  v13 = [v3 standardUserDefaults];
  v14 = sub_22036FAC8();
  v15 = [v13 valueForKey_];

  if (v15)
  {
    sub_22036FCE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24 = v22;
  v25 = v23;
  if (*(&v23 + 1))
  {
    sub_2201F70D0(0, &qword_281261EC0, MEMORY[0x277D849A8], MEMORY[0x277D83940]);
    if (swift_dynamicCast())
    {
      v16 = sub_2201F71CC(v12, v21);

      if (v16)
      {

        return;
      }
    }
  }

  else
  {
    sub_220235924(&v24);
  }

  v17 = *(v1 + 16);
  *(swift_allocObject() + 16) = v12;

  sub_22036F308();

  v18 = [v3 standardUserDefaults];
  v19 = sub_22036FB58();

  v20 = sub_22036FAC8();
  [v18 setObject:v19 forKey:v20];
}

uint64_t sub_2201F7094()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_2201F70D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2201F7120(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2201F7170(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2201F71CC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2201F7228(void *a1, void *a2)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SessionObserver();
  result = sub_22036F4A8();
  if (result)
  {
    v6 = result;
    sub_2201F50A0(&qword_2812654D8, 255, type metadata accessor for SessionObserver);
    sub_22036F738();

    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2201F7308(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22036EF18();
  result = sub_22036F4A8();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = result;
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2201F358C(0, &qword_281266AA0);
  result = sub_22036F4B8();
  if (!v41)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2201F7B70();
  result = sub_22036F4A8();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = result;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_22036F4B8();
  if (!v39)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22036F2B8();
  result = sub_22036F4A8();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = result;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2201F358C(0, &qword_281266A80);
  result = sub_22036F4B8();
  if (!v37[3])
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2201F358C(0, &qword_281266610);
  result = sub_22036F4B8();
  if (!v36[3])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202BEB24(0, &qword_281261E40, &protocolRef_FCUserEventHistoryStorageType);
  sub_22036FA38();
  v14 = sub_22036F488();

  if (v14)
  {
    v15 = type metadata accessor for SessionObserver();
    v16 = objc_allocWithZone(v15);
    swift_unknownObjectWeakInit();
    sub_2201F5DF4(v40, &v16[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_watchlistManager]);
    *&v16[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_sessionManager] = v4;

    *&v16[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_tracker] = sub_22036EF08();
    *&v16[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_cloudContext] = v7;
    sub_2201F9BFC(v38, &v16[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_userContext]);
    *&v16[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_client] = v10;
    v16[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_kind] = 0;
    sub_2201F5DF4(v37, &v16[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_appConfigurationManager]);
    sub_2201F5DF4(v36, &v16[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_appIntentExecutionTypeProvider]);
    *&v16[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_userEventHistoryStorage] = v14;
    v35.receiver = v16;
    v35.super_class = v15;
    v34 = v7;
    v33 = v10;
    swift_unknownObjectRetain();
    v17 = objc_msgSendSuper2(&v35, sel_init);
    sub_2201F7C9C();
    v18 = OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_sessionManager;
    v19 = *&v17[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_sessionManager];
    sub_22036EF08();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_22036F318();

    v20 = [objc_opt_self() currentDevice];
    [v20 beginGeneratingDeviceOrientationNotifications];

    sub_2201F8378();
    v21 = objc_opt_self();
    v22 = [v21 defaultCenter];
    [v22 addObserver:v17 selector:sel_pushOrientationData name:*MEMORY[0x277D76878] object:0];

    sub_2201F8974();
    v23 = *&v17[v18];
    *(swift_allocObject() + 16) = v17;
    v24 = v17;
    sub_22036EE98();

    v25 = *&v17[v18];
    *(swift_allocObject() + 16) = v24;
    v26 = v24;
    sub_22036EE98();

    v27 = *&v17[v18];
    *(swift_allocObject() + 16) = v26;
    v28 = v26;
    sub_22036EE98();

    sub_2201F8378();
    v29 = [v21 defaultCenter];
    v30 = sub_22036FAC8();
    [v29 addObserver:v28 selector:sel_offerDidChange_ name:v30 object:0];

    __swift_project_boxed_opaque_existential_1(v38, v39);
    sub_2201F50A0(&unk_2812654F0, 255, type metadata accessor for SessionObserver);
    sub_22036E908();

    _s15StocksAnalytics15SessionObserverC21identificationService_15didChangeUserIDy0A4Core014IdentificationF4Type_p_SStF_0();
    __swift_project_boxed_opaque_existential_1(v40, v41);
    sub_2201F50A0(&qword_281265500, 255, type metadata accessor for SessionObserver);
    sub_22036E888();

    v31 = *&v28[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_tracker];
    swift_allocObject();
    swift_unknownObjectUnownedInit();
    v32 = v28;

    sub_22036F318();

    sub_22036EF28();

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v36);
    __swift_destroy_boxed_opaque_existential_1(v37);
    sub_2201F9480(v38);
    __swift_destroy_boxed_opaque_existential_1(v40);
    return v32;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2201F7AC0()
{
  MEMORY[0x223D7A5C0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2201F7AF8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2201F7B30()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_2201F7B70()
{
  result = qword_281261E90;
  if (!qword_281261E90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281261E90);
  }

  return result;
}

uint64_t sub_2201F7BBC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_2201F7C08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2201F7C50()
{
  sub_22036F2B8();
  v0 = [objc_opt_self() mainBundle];
  return sub_22036F298();
}

id sub_2201F7C9C()
{
  v1 = *&v0[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_cloudContext];
  result = [v1 bundleSubscriptionManager];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = [result cachedSubscription];
  swift_unknownObjectRelease();
  _s15StocksAnalytics15SessionObserverC27bundleSubscriptionDidExpireyySo08FCBundleF0CF_0(v3);

  result = [v1 bundleSubscriptionManager];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  [result addObserver_];
  swift_unknownObjectRelease();
  sub_22036F4F8();
  *(swift_allocObject() + 16) = v0;
  v4 = v0;
  sub_22036F4E8();
}

uint64_t sub_2201F7DC0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t _s15StocksAnalytics15SessionObserverC27bundleSubscriptionDidExpireyySo08FCBundleF0CF_0(void *a1)
{
  sub_2201F9C58();
  v21 = *(v3 - 8);
  v22 = v3;
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v3);
  v19 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2201F817C(a1, &v25);
  v20 = *(v1 + OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_sessionManager);
  sub_22036EF08();
  v23 = v25;
  v24[0] = v26[0];
  *(v24 + 9) = *(v26 + 9);
  sub_2201F8304();
  v18 = v6;
  v7 = sub_22036EE48();
  v8 = *(v7 - 8);
  v17 = *(v8 + 72);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  v16 = xmmword_220371600;
  *(v10 + 16) = xmmword_220371600;
  v11 = *MEMORY[0x277CEAD10];
  v12 = *(v8 + 104);
  v12(v10 + v9, v11, v7);
  sub_2201F9CB4();
  sub_22036F328();

  v23 = v25;
  v24[0] = v26[0];
  *(v24 + 9) = *(v26 + 9);
  v13 = v19;
  sub_22036ECD8();
  v14 = swift_allocObject();
  *(v14 + 16) = v16;
  v12(v14 + v9, v11, v7);
  sub_22036EEB8();

  return (*(v21 + 8))(v13, v22);
}

unint64_t sub_2201F80D0()
{
  result = qword_281262838;
  if (!qword_281262838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262838);
  }

  return result;
}

unint64_t sub_2201F8128()
{
  result = qword_281262840;
  if (!qword_281262840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262840);
  }

  return result;
}

id sub_2201F817C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 subscriptionState];
  if (v4 >= 4)
  {
    result = sub_22036FE08();
    __break(1u);
  }

  else
  {
    v5 = v4;
    v6 = [a1 isPurchaser];
    v7 = [a1 isAmplifyUser];
    v8 = [a1 bundlePurchaseID];
    if (v8)
    {
      v9 = v8;
      v10 = sub_22036FAD8();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    v13 = [a1 servicesBundlePurchaseID];
    if (v13)
    {
      v14 = v13;
      v15 = sub_22036FAD8();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    result = [a1 isPaidBundleViaOfferActivated];
    *a2 = 0x3030201u >> (8 * v5);
    *(a2 + 1) = v6;
    *(a2 + 2) = v7;
    *(a2 + 8) = v10;
    *(a2 + 16) = v12;
    *(a2 + 24) = v15;
    *(a2 + 32) = v17;
    *(a2 + 40) = result;
  }

  return result;
}

void sub_2201F8304()
{
  if (!qword_281261B50)
  {
    sub_22036EE48();
    v0 = sub_220370038();
    if (!v1)
    {
      atomic_store(v0, &qword_281261B50);
    }
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void sub_2201F8378()
{
  sub_2201F8750(0, &qword_281266968, sub_2201F87B0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = v24 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [Strong windowScene];

    if (v9)
    {
      v10 = [v9 interfaceOrientation];

      v11 = [objc_opt_self() currentDevice];
      v12 = [v11 orientation];
      v33 = v3;
      v13 = v12;

      if (v13 >= 7)
      {
        v14 = 0;
      }

      else
      {
        v14 = v13;
      }

      if (v10 >= 5)
      {
        v15 = 0;
      }

      else
      {
        v15 = 0x304020100uLL >> (8 * v10);
      }

      v29 = v15;
      v30 = v14;
      v32 = *(v0 + OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_sessionManager);
      v26 = sub_22036EF08();
      v34 = v14;
      v35 = v15;
      sub_2201FB2BC(0, &qword_281261B50, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
      v28 = v16;
      v17 = sub_22036EE48();
      v18 = *(v17 - 8);
      v27 = *(v18 + 72);
      v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v20 = swift_allocObject();
      v25 = xmmword_220371600;
      *(v20 + 16) = xmmword_220371600;
      v21 = *MEMORY[0x277CEAD10];
      v31 = v2;
      v22 = *(v18 + 104);
      v22(v20 + v19, v21, v17);
      v24[1] = "SessionObserver";
      sub_2201F87B0();
      sub_22036F328();

      v34 = v30;
      v35 = v29;
      sub_22036ECD8();
      v23 = swift_allocObject();
      *(v23 + 16) = v25;
      v22(v23 + v19, v21, v17);
      sub_22036EEB8();

      (*(v33 + 8))(v6, v31);
    }
  }
}

void sub_2201F8750(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_22036ECE8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2201F87B0()
{
  result = qword_281265520;
  if (!qword_281265520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265520);
  }

  return result;
}

unint64_t sub_2201F8808()
{
  result = qword_281265510;
  if (!qword_281265510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265510);
  }

  return result;
}

unint64_t sub_2201F8860()
{
  result = qword_281265518;
  if (!qword_281265518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265518);
  }

  return result;
}

void sub_2201F88B4()
{
  if (!qword_281266910)
  {
    sub_2201F8C48();
    v0 = sub_22036ECE8();
    if (!v1)
    {
      atomic_store(v0, &qword_281266910);
    }
  }
}

void sub_2201F8910(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2201F8974()
{
  sub_2201F8910(0, &qword_281266908, sub_2201F88B4, MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v18 - v3;
  sub_2201F88B4();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v5);
  v10 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - v11;
  sub_2201F8D4C(v4);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    return sub_2201F9194(v4);
  }

  v14 = *(v7 + 32);
  v14(v12, v4, v6);
  v15 = *(v0 + OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_sessionManager);
  (*(v7 + 16))(v10, v12, v6);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  v14((v17 + v16), v10, v6);
  sub_22036EE98();

  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_2201F8BC0()
{
  sub_2201F88B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

unint64_t sub_2201F8C48()
{
  result = qword_2812620A8;
  if (!qword_2812620A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812620A8);
  }

  return result;
}

unint64_t sub_2201F8CA0()
{
  result = qword_281262098;
  if (!qword_281262098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262098);
  }

  return result;
}

unint64_t sub_2201F8CF8()
{
  result = qword_2812620A0;
  if (!qword_2812620A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812620A0);
  }

  return result;
}

uint64_t sub_2201F8D4C@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  if (qword_281266A28 != -1)
  {
    swift_once();
  }

  sub_2201F90D4();
  sub_22036EAC8();
  v2 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v2 = *v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    sub_2201F8C48();
    sub_22036ECD8();
    sub_2201F88B4();
    return (*(*(v3 - 8) + 56))(a1, 0, 1, v3);
  }

  else
  {
    sub_2201F88B4();
    (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
  }
}

uint64_t sub_2201F8EB4()
{
  v0 = sub_22036EB38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22036EB48();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(v8 + 104))(v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_2201F9084(0, &qword_2812669A0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  result = sub_22036EB88();
  qword_281266A30 = result;
  return result;
}

void sub_2201F9084(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_22036EB78();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_2201F90D4()
{
  result = qword_2812654E0;
  if (!qword_2812654E0)
  {
    type metadata accessor for SessionObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812654E0);
  }

  return result;
}

uint64_t sub_2201F912C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D2860](a1, a2, ObjectType, a6);
}

uint64_t sub_2201F9194(uint64_t a1)
{
  sub_2201F8910(0, &qword_281266908, sub_2201F88B4, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s15StocksAnalytics15SessionObserverC21identificationService_15didChangeUserIDy0A4Core014IdentificationF4Type_p_SStF_0()
{
  v1 = *&v0[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_sessionManager];
  *(swift_allocObject() + 16) = v0;
  v2 = v0;
  sub_22036EE98();

  v3 = &v2[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_userContext];
  v4 = *&v2[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_userContext + 24];
  v5 = *&v2[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_userContext + 32];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  sub_22036E928();
  sub_22036EF08();
  sub_2201F9370();
  sub_22036F328();
}

uint64_t sub_2201F9338()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_2201F9370()
{
  result = qword_281266188;
  if (!qword_281266188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266188);
  }

  return result;
}

unint64_t sub_2201F93C8()
{
  result = qword_281266178;
  if (!qword_281266178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266178);
  }

  return result;
}

unint64_t sub_2201F9420()
{
  result = qword_281266180;
  if (!qword_281266180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266180);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2201F94D4(uint64_t a1, void *a2)
{
  v2 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v3 = type metadata accessor for FlushAnalyticsBatchesStartupTask();
  result = sub_22036F4A8();
  if (result)
  {
    v5 = result;
    v6[3] = v3;
    v6[4] = sub_2201F50A0(&qword_2812665F0, 255, type metadata accessor for FlushAnalyticsBatchesStartupTask);
    v6[0] = v5;
    sub_22036F6D8();
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2201F95A0(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22036ED18();
  result = sub_22036F4A8();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22036F0A8();
  result = sub_22036F4A8();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = type metadata accessor for FlushAnalyticsBatchesStartupTask();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC15StocksAnalytics32FlushAnalyticsBatchesStartupTask_group;
  if (qword_281266660 != -1)
  {
    swift_once();
  }

  v12 = sub_22036F5C8();
  v13 = __swift_project_value_buffer(v12, qword_281266668);
  (*(*(v12 - 8) + 16))(v10 + v11, v13, v12);
  *(v10 + OBJC_IVAR____TtC15StocksAnalytics32FlushAnalyticsBatchesStartupTask_flushManager) = v4;
  *(v10 + OBJC_IVAR____TtC15StocksAnalytics32FlushAnalyticsBatchesStartupTask_loggingEventProcessor) = v6;
  return v10;
}

uint64_t sub_2201F96F8()
{
  v0 = sub_22036EB38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2201F9084(0, &qword_281266990);
  v6[2] = 1;
  v6[3] = 50;
  v6[1] = 50;
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  result = sub_22036EB68();
  qword_2812669C0 = result;
  return result;
}

uint64_t sub_2201F983C()
{
  v0 = sub_22036EB38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2201F9084(0, &qword_281266990);
  v6[3] = 10;
  v6[2] = 5;
  v6[1] = 20;
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  result = sub_22036EB68();
  qword_281266A08 = result;
  return result;
}

uint64_t sub_2201F9988()
{
  v0 = sub_22036F1A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22036F0A8();
  *v4 = 11;
  (*(v1 + 104))(v4, *MEMORY[0x277CEAE08], v0);
  return sub_22036F098();
}

uint64_t sub_2201F9A6C()
{
  v0 = sub_22036F5C8();
  __swift_allocate_value_buffer(v0, qword_281266668);
  __swift_project_value_buffer(v0, qword_281266668);
  return sub_22036F5B8();
}

uint64_t sub_2201F9ADC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2201F358C(0, &qword_281266A88);
  result = sub_22036F4B8();
  if (v10)
  {
    v6 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2201F358C(0, &unk_281266A90);
    result = sub_22036F4B8();
    if (v7)
    {
      result = sub_2201F9BC8(&v9, a2);
      *(a2 + 40) = v7;
      *(a2 + 48) = v8;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2201F9BC8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

void sub_2201F9C58()
{
  if (!qword_281266920)
  {
    sub_2201F9CB4();
    v0 = sub_22036ECE8();
    if (!v1)
    {
      atomic_store(v0, &qword_281266920);
    }
  }
}

unint64_t sub_2201F9CB4()
{
  result = qword_281262848;
  if (!qword_281262848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262848);
  }

  return result;
}

uint64_t sub_2201F9D08(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22036EBE8();
  result = sub_22036F4A8();
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22036F2B8();
  result = sub_22036F4A8();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202BEB24(0, &qword_2812668E0, &protocolRef_AAEndpointType);
  result = sub_22036F4A8();
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_22036ED18();
  sub_22036F0F8();
  v9 = sub_22036F0E8();
  if (qword_281266A50 != -1)
  {
    swift_once();
  }

  sub_2201F50A0(&qword_2812654A0, v8, type metadata accessor for TrackerAssembly);
  sub_22036EAC8();
  v10 = sub_22036F0D8();

  if (qword_2812669B8 != -1)
  {
    swift_once();
  }

  sub_22036EAC8();
  v11 = sub_22036F0B8();

  if (qword_281266A00 != -1)
  {
    swift_once();
  }

  sub_22036EAC8();
  sub_22036F0C8();

  v12 = sub_22036F1E8();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_22036F1D8();
  return sub_22036ECF8();
}

uint64_t sub_2201FA004(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2201F358C(0, &qword_281266A80);
  result = sub_22036F4B8();
  if (v5)
  {
    type metadata accessor for DynamicEndpoint();
    v3 = swift_allocObject();
    sub_2201F9BC8(&v4, v3 + 16);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2201FA0C8()
{
  v0 = sub_22036EB38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_22036EB48();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(v8 + 104))(&v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v13[15] = 0;
  sub_2201F9084(0, &qword_281266998);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  result = sub_22036EB88();
  qword_281266A58 = result;
  return result;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2201FA580@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15StocksAnalytics32FlushAnalyticsBatchesStartupTask_group;
  v5 = sub_22036F5C8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_2201FA600(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = sub_22036F498();
  if (v14 == 2)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v14)
  {
    return result;
  }

  sub_22036EE88();
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22036F0A8();
  result = sub_22036F4A8();
  if (!result)
  {
    goto LABEL_13;
  }

  sub_22036EF78();

  sub_22036EE88();
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22036F158();
  result = sub_22036F4A8();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_22036EF78();

  sub_22036EE88();
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ExternalAnalyticsEventProcessor();
  result = sub_22036F4A8();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_2201F50A0(qword_281266468, 255, type metadata accessor for ExternalAnalyticsEventProcessor);
  sub_22036EF78();

  sub_22036EE88();
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2201F358C(0, &qword_2812662D0);
  result = sub_22036F4B8();
  if (!v14)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    __break(1u);
    return result;
  }

  v10 = *(v15 + 8);
  sub_22036EF78();
  swift_unknownObjectRelease();

  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = sub_22036F498();
  if (v14 == 2)
  {
    goto LABEL_17;
  }

  if (v14)
  {
    sub_22036EE88();
    v12 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_2201F358C(0, &qword_281266618);
    sub_22036F4B8();
    v13 = *(v15 + 8);
    sub_22036EF78();
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2201FA970()
{
  v1 = *v0;
  sub_2201FA9C4();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_22036F7D8();
}

void sub_2201FA9C4()
{
  if (!qword_281266620)
  {
    v0 = sub_22036F7E8();
    if (!v1)
    {
      atomic_store(v0, &qword_281266620);
    }
  }
}

uint64_t sub_2201FAA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a5 + OBJC_IVAR____TtC15StocksAnalytics32FlushAnalyticsBatchesStartupTask_flushManager);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2201FF844;
  *(v10 + 24) = v8;

  sub_22036ED08();
}

uint64_t sub_2201FAB10()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t Tracker.chain(eventPath:)(char *a1)
{
  v3 = *a1;
  EventPath.rawValue.getter();
  v1 = sub_22036F338();

  return v1;
}

uint64_t EventPath.rawValue.getter()
{
  result = 0x686372616573;
  switch(*v0)
  {
    case 1:
      result = 0x61576567616E616DLL;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x72656B636974;
      break;
    case 4:
      result = 0x694C6C6F626D7973;
      break;
    case 5:
      v2 = 0x6C6F626D7973;
      goto LABEL_15;
    case 6:
      v2 = 0x756F59726F66;
LABEL_15:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6546000000000000;
      break;
    case 7:
      result = 0x656C6369747261;
      break;
    case 8:
      result = 1953460082;
      break;
    case 9:
      result = 0x656D6F636C6577;
      break;
    case 0xA:
    case 0xB:
      result = 0xD000000000000013;
      break;
    case 0xC:
      result = 0xD000000000000010;
      break;
    case 0xD:
      result = 0x6C63697472416E69;
      break;
    case 0xE:
      result = 0x6E65746E49707061;
      break;
    case 0xF:
      result = 0x6E65746E49707061;
      break;
    default:
      return result;
  }

  return result;
}

void *_s15StocksAnalytics15SessionObserverC018sceneWillConnectToC011withOptionsy13TeaFoundation015SceneConnectionJ0V_tF_0()
{
  v1 = v0;
  v2 = sub_22036E868();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2201FB258(0, &qword_281261FC0, MEMORY[0x277CE4188], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v34 - v9;
  v11 = sub_22036F818();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_22036F768();
  if (result)
  {
    v37 = result;
    sub_22036FC78();
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_2201FB320(v10, &qword_281261FC0, MEMORY[0x277CE4188], MEMORY[0x277D83D88], sub_2201FB258);
      v35 = 2;
      v36 = 5;
    }

    else
    {
      (*(v12 + 32))(v15, v10, v11);
      v34 = v3;
      v17 = v2;
      v18 = *&v0[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_appIntentExecutionTypeProvider + 24];
      v19 = *&v0[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_appIntentExecutionTypeProvider + 32];
      __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_appIntentExecutionTypeProvider], v18);
      v20 = *(v19 + 8);
      v21 = v19;
      v2 = v17;
      v1 = v0;
      v3 = v34;
      v20(&v38, v15, v18, v21);
      (*(v12 + 8))(v15, v11);
      v35 = 9;
      v36 = v38;
    }

    v22 = &v1[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_appConfigurationManager];
    v23 = *&v1[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_appConfigurationManager + 32];
    __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_appConfigurationManager], *&v1[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_appConfigurationManager + 24]);
    sub_22036E958();
    v24 = sub_22036E798();
    v25 = *(v3 + 8);
    v25(v6, v2);
    v26 = v1;
    v27 = v2;
    v28 = *(v22 + 4);
    __swift_project_boxed_opaque_existential_1(v22, *(v22 + 3));
    sub_22036E958();
    v29 = sub_22036E7A8();
    v25(v6, v27);
    v30 = *&v26[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_sessionManager];
    v31 = swift_allocObject();
    *(v31 + 16) = v26;
    v32 = v36;
    *(v31 + 24) = v35;
    *(v31 + 32) = v24;
    *(v31 + 40) = v29;
    *(v31 + 48) = v32;
    v33 = v26;
    sub_22036EE98();
  }

  return result;
}

void sub_2201FB1F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2201FB258(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2201FB2BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2201FB320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_2201FB380(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2201FB3E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for HeartbeatEventService();
  result = sub_22036F4A8();
  if (result)
  {
    v5 = result;
    result = sub_2201FBA28(&qword_281263968);
    *a2 = v5;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2201FB484()
{
  v0 = sub_22036F798();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeartbeatEventService();
  sub_22036F718();
  sub_22036F438();

  (*(v1 + 104))(v4, *MEMORY[0x277D6CF00], v0);
  sub_22036F458();

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_2201FB5F0(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2201F358C(0, &qword_281266A80);
  result = sub_22036F4B8();
  if (!v11)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2201F358C(0, &qword_281266A88);
  result = sub_22036F4B8();
  if (!v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2201F358C(0, &qword_281262828);
  result = sub_22036F4B8();
  if (v7)
  {
    type metadata accessor for HeartbeatEventService();
    swift_allocObject();
    return sub_2201FB734(&v10, &v8, &v6);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2201FB734(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v16 = a2;
  v17 = a3;
  v15 = a1;
  v14 = sub_22036FC38();
  v4 = *(v14 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_22036FC28() - 8) + 64);
  MEMORY[0x28223BE20]();
  v9 = *(*(sub_22036F9F8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v10 = sub_2201FB9DC();
  v13[1] = "ConditionsProvider";
  v13[2] = v10;
  sub_22036F9E8();
  v18 = MEMORY[0x277D84F90];
  sub_2201FBA6C(&unk_281261E68, 255, MEMORY[0x277D85230]);
  v11 = MEMORY[0x277D85230];
  sub_2201FBAB4(0, &qword_281261ED0, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_2201FBB18(&qword_281261EC8, &qword_281261ED0, v11);
  sub_22036FCF8();
  (*(v4 + 104))(v7, *MEMORY[0x277D85260], v14);
  *(v3 + 136) = sub_22036FC68();
  sub_2201F9BC8(v15, v3 + 16);
  sub_2201F9BC8(v16, v3 + 56);
  sub_2201F9BC8(v17, v3 + 96);
  return v3;
}

unint64_t sub_2201FB9DC()
{
  result = qword_281261E60;
  if (!qword_281261E60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281261E60);
  }

  return result;
}

uint64_t sub_2201FBA28(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HeartbeatEventService();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2201FBA6C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_2201FBAB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2201FBB18(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2201FBAB4(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2201FBB7C(uint64_t a1, uint64_t a2)
{
  result = sub_2201FBA6C(&qword_281263970, a2, type metadata accessor for HeartbeatEventService);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2201FBBD4(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2201F358C(0, &qword_281266630);
  result = sub_22036F4B8();
  if (v6)
  {
    sub_2201FBCBC(&v5, v7);
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    sub_2201FBA28(&qword_281263970);
    sub_22036F738();
    __swift_destroy_boxed_opaque_existential_1(&v5);
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2201FBCC4()
{
  result = qword_281262198;
  if (!qword_281262198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262198);
  }

  return result;
}

unint64_t sub_2201FBD1C()
{
  result = qword_2812621A0;
  if (!qword_2812621A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812621A0);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

void SessionObserver.window.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  sub_2201F8378();
}

uint64_t sub_2201FBE04(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D1DE0](ObjectType, a2);
}

uint64_t sub_2201FBE44()
{
  sub_2201FC100();
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v0);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2201FD124();
  sub_2201F8304();
  v6 = sub_22036EE48();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_220371600;
  (*(v7 + 104))(v10 + v9, *MEMORY[0x277CEAD10], v6);
  sub_2201FC2C4();
  sub_22036F028();

  return (*(v2 + 8))(v5, v1);
}

void sub_2201FC014()
{
  if (qword_281261FB8 != -1)
  {
    swift_once();
  }

  v0 = sub_22036F848();
  __swift_project_value_buffer(v0, qword_281278FD0);
  v1 = sub_22036F838();
  v2 = sub_22036FC18();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2201F1000, v1, v2, "See scene entering foreground, sending heartbeat", v3, 2u);
    MEMORY[0x223D7A540](v3, -1, -1);
  }

  sub_2201FC368();
}

void sub_2201FC100()
{
  if (!qword_281266900)
  {
    sub_2201FC2C4();
    v0 = sub_22036ECE8();
    if (!v1)
    {
      atomic_store(v0, &qword_281266900);
    }
  }
}

uint64_t sub_2201FC15C()
{
  v0 = sub_22036F848();
  __swift_allocate_value_buffer(v0, qword_281278FD0);
  __swift_project_value_buffer(v0, qword_281278FD0);
  if (qword_281265D00 != -1)
  {
    swift_once();
  }

  v1 = qword_281265D08;
  return sub_22036F858();
}

uint64_t sub_2201FC1E8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_22036FAD8();
  }

  sub_2201FC318();
  result = sub_22036FCA8();
  qword_281265D08 = result;
  return result;
}

unint64_t sub_2201FC2C4()
{
  result = qword_281266148;
  if (!qword_281266148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266148);
  }

  return result;
}

unint64_t sub_2201FC318()
{
  result = qword_281261E38;
  if (!qword_281261E38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281261E38);
  }

  return result;
}

void sub_2201FC368()
{
  v1 = v0;
  v2 = sub_22036F9C8();
  v73 = *(v2 - 8);
  v74 = v2;
  v3 = *(v73 + 64);
  MEMORY[0x28223BE20](v2);
  v71 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_22036F9F8();
  v70 = *(v72 - 8);
  v5 = *(v70 + 64);
  MEMORY[0x28223BE20](v72);
  v69 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22036E8D8();
  v76 = *(v7 - 8);
  v77 = v7;
  v8 = *(v76 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2201FBAB4(0, &qword_281266AE0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v68 - v13;
  v79 = sub_22036E508();
  v81 = *(v79 - 8);
  v15 = *(v81 + 64);
  v16 = MEMORY[0x28223BE20](v79);
  v78 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v75 = &v68 - v18;
  MEMORY[0x28223BE20](v17);
  v80 = &v68 - v19;
  v20 = sub_22036E868();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_22036E958();
  v26 = sub_22036E818();
  v27 = *(v21 + 8);
  v27(v24, v20);
  if ((v26 & 1) == 0)
  {
    if (qword_281261FB8 != -1)
    {
      swift_once();
    }

    v38 = sub_22036F848();
    __swift_project_value_buffer(v38, qword_281278FD0);
    v34 = sub_22036F838();
    v35 = sub_22036FC18();
    if (!os_log_type_enabled(v34, v35))
    {
      goto LABEL_17;
    }

    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = "Not sending heartbeat event due to foreground heartbeat event being disabled";
    goto LABEL_16;
  }

  v68 = v27;
  v28 = v1[15];
  v29 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v28);
  if (((*(v29 + 8))(v28, v29) & 1) == 0)
  {
    if (qword_281261FB8 != -1)
    {
      swift_once();
    }

    v39 = sub_22036F848();
    __swift_project_value_buffer(v39, qword_281278FD0);
    v34 = sub_22036F838();
    v35 = sub_22036FC18();
    if (!os_log_type_enabled(v34, v35))
    {
      goto LABEL_17;
    }

    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = "Not sending heartbeat because user has not agreed to in-app terms and conditions";
    goto LABEL_16;
  }

  v30 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  sub_22036E958();
  sub_22036E7B8();
  v68(v24, v20);
  sub_22036E8B8();
  (*(v76 + 8))(v10, v77);
  sub_22036E4F8();

  v31 = v81;
  v32 = v79;
  if ((*(v81 + 48))(v14, 1, v79) == 1)
  {
    sub_22035D02C(v14);
    if (qword_281261FB8 != -1)
    {
      swift_once();
    }

    v33 = sub_22036F848();
    __swift_project_value_buffer(v33, qword_281278FD0);
    v34 = sub_22036F838();
    v35 = sub_22036FC08();
    if (!os_log_type_enabled(v34, v35))
    {
      goto LABEL_17;
    }

    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = "Failed to send heartbeat event due to failure to resolve heartbeat endpoint URL";
LABEL_16:
    _os_log_impl(&dword_2201F1000, v34, v35, v37, v36, 2u);
    MEMORY[0x223D7A540](v36, -1, -1);
LABEL_17:

    return;
  }

  v40 = v31;
  v77 = *(v31 + 32);
  v77(v80, v14, v32);
  v41 = v32;
  if (qword_281265D00 != -1)
  {
    swift_once();
  }

  sub_22036FC18();
  sub_22036F828();
  v42 = v40 + 16;
  v43 = *(v40 + 16);
  v44 = v75;
  v43(v75, v80, v41);
  v43(v78, v44, v41);
  v45 = (*(v42 + 64) + 24) & ~*(v42 + 64);
  v46 = swift_allocObject();
  *(v46 + 16) = v1;
  v77((v46 + v45), v44, v41);
  v47 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);

  sub_22036E958();
  LOBYTE(v45) = sub_22036E858();
  v68(v24, v20);
  if (v45)
  {
    v48 = *(v81 + 8);
    v81 += 8;
    v48(v78, v41);
    if (qword_281261FB8 != -1)
    {
      swift_once();
    }

    v49 = sub_22036F848();
    __swift_project_value_buffer(v49, qword_281278FD0);
    v50 = sub_22036F838();
    v51 = sub_22036FC18();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_2201F1000, v50, v51, "Dispatching heartbeat request", v52, 2u);
      MEMORY[0x223D7A540](v52, -1, -1);
    }

    v53 = v1[17];
    v54 = swift_allocObject();
    *(v54 + 16) = sub_2201FD2D4;
    *(v54 + 24) = v46;
    aBlock[4] = sub_2201FD0FC;
    aBlock[5] = v54;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2201FD060;
    aBlock[3] = &block_descriptor_2;
    v55 = _Block_copy(aBlock);

    v56 = v69;
    sub_22036F9D8();
    v82 = MEMORY[0x277D84F90];
    sub_2201FBA6C(&qword_281261FA8, 255, MEMORY[0x277D85198]);
    v57 = MEMORY[0x277D85198];
    sub_2201FBAB4(0, &qword_281261F08, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_2201FBB18(&qword_281261F00, &qword_281261F08, v57);
    v58 = v71;
    v59 = v74;
    sub_22036FCF8();
    MEMORY[0x223D79A70](0, v56, v58, v55);
    _Block_release(v55);

    (*(v73 + 8))(v58, v59);
    (*(v70 + 8))(v56, v72);
    v48(v80, v79);
  }

  else
  {
    if (qword_281261FB8 != -1)
    {
      swift_once();
    }

    v60 = sub_22036F848();
    __swift_project_value_buffer(v60, qword_281278FD0);
    v61 = sub_22036F838();
    v62 = sub_22036FC18();
    v63 = os_log_type_enabled(v61, v62);
    v64 = v80;
    v65 = v78;
    if (v63)
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_2201F1000, v61, v62, "Not dispatching heartbeat request", v66, 2u);
      MEMORY[0x223D7A540](v66, -1, -1);
    }

    sub_2201FD42C(v1, v65);

    v67 = *(v81 + 8);
    v67(v65, v41);
    v67(v64, v41);
  }
}

uint64_t sub_2201FCF10()
{
  v1 = sub_22036E508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2201FCFD4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_2201FD00C()
{
  result = qword_281266138;
  if (!qword_281266138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266138);
  }

  return result;
}

uint64_t sub_2201FD060(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

unint64_t sub_2201FD0A8()
{
  result = qword_281266140;
  if (!qword_281266140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266140);
  }

  return result;
}

uint64_t sub_2201FD0FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_2201FD124()
{
  sub_2201FD338();
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = [v1 systemName];

  sub_22036FAD8();
  sub_22036F478();
  sub_22036F468();
  v3 = [v0 currentDevice];
  v4 = [v3 systemVersion];

  sub_22036FAD8();
  v5 = [v0 currentDevice];
  v6 = [v5 sa_buildVersion];

  if (v6)
  {

    sub_22036FAD8();
    sub_2201FC2C4();
    sub_22036ECD8();
  }

  else
  {
    __break(1u);
  }
}

void sub_2201FD2D4()
{
  v1 = *(sub_22036E508() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_2201FD42C(v2, v3);
}

uint64_t sub_2201FD338()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  sysctlbyname("hw.machine", 0, v6, 0, 0);
  v0 = v6[0];
  if ((v6[0] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  if (v6[0])
  {
    v1 = sub_22036FB78();
    *(v1 + 16) = v0;
    bzero((v1 + 32), v0);
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  sysctlbyname("hw.machine", (v1 + 32), v6, 0, 0);
  v3 = sub_2201FDBD8(v1, v2);

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

void sub_2201FD42C(void *a1, uint64_t a2)
{
  v70 = a2;
  v3 = sub_22036F078();
  v72 = *(v3 - 8);
  v73 = v3;
  v4 = *(v72 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22036E5D8();
  v74 = *(v7 - 8);
  v8 = *(v74 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v67 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v59 - v11;
  v13 = sub_22036E5A8();
  v63 = *(v13 - 8);
  v64 = v13;
  v14 = *(v63 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v66 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v59 - v17;
  v19 = type metadata accessor for HeartbeatData();
  v20 = *(*(v19 - 1) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for HeartbeatEvent.Model(0);
  v23 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281261FB8 != -1)
  {
    swift_once();
  }

  v68 = v25;
  v71 = v6;
  v26 = sub_22036F848();
  v59 = __swift_project_value_buffer(v26, qword_281278FD0);
  v27 = sub_22036F838();
  v28 = sub_22036FC18();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_2201F1000, v27, v28, "Building request", v29, 2u);
    MEMORY[0x223D7A540](v29, -1, -1);
  }

  v30 = a1[11];
  __swift_project_boxed_opaque_existential_1(a1 + 7, a1[10]);
  v31 = sub_22036E918();
  v60 = v32;
  v61 = v31;
  sub_22036E598();
  sub_22036E5C8();
  v33 = sub_22036E5B8();
  v35 = v34;
  v36 = *(v74 + 8);
  v69 = v7;
  v74 += 8;
  v62 = v36;
  v36(v12, v7);
  v37 = objc_opt_self();
  v38 = [v37 currentDevice];
  v39 = [v38 systemVersion];

  v40 = sub_22036FAD8();
  v42 = v41;
  v43 = [v37 currentDevice];
  v44 = [v43 sa_buildVersion];

  if (v44)
  {

    v45 = sub_22036FAD8();
    v47 = v46;

    v48 = v60;
    *v22 = v61;
    *(v22 + 1) = v48;
    (*(v63 + 32))(&v22[v19[5]], v18, v64);
    v49 = &v22[v19[6]];
    *v49 = v33;
    v49[1] = v35;
    v50 = &v22[v19[7]];
    *v50 = v40;
    v50[1] = v42;
    v51 = &v22[v19[8]];
    *v51 = v45;
    v51[1] = v47;
    v52 = v68;
    sub_2201FE084(v22, v68);
    if (qword_281265D00 != -1)
    {
      swift_once();
    }

    v53 = objc_opt_self();
    v54 = [v53 mainBundle];
    sub_22036FC88();

    sub_22036F2B8();
    v55 = [v53 mainBundle];
    v56 = sub_22036F298();
    sub_22036E598();
    v57 = v67;
    sub_22036E5C8();
    sub_22036E5B8();
    v62(v57, v69);
    v58 = v71;
    sub_22036F068();
    sub_2201FBA6C(&qword_2812658C8, 255, type metadata accessor for HeartbeatEvent.Model);
    sub_22036F058();

    (*(v72 + 8))(v58, v73);
    sub_2201FE0E8(v52);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2201FDBD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (!*(a1 + 32))
    {
      return MEMORY[0x2821FBD68](a1 + 32, 0);
    }

    a2 = 0;
    v3 = v2 - 1;
    while (v3 != a2)
    {
      if (!*(a1 + 33 + a2++))
      {
        a1 += 32;
        return MEMORY[0x2821FBD68](a1, a2);
      }
    }

    __break(1u);
  }

  __break(1u);
  return MEMORY[0x2821FBD68](a1, a2);
}

uint64_t type metadata accessor for HeartbeatData()
{
  result = qword_281265A30;
  if (!qword_281265A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2201FDC70()
{
  result = sub_22036E5A8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2201FDD14(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2201FDD70()
{
  sub_2201FDFB0();
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v0);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2201FE3E8();
  sub_2201F8304();
  v6 = sub_22036EE48();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_220371600;
  (*(v7 + 104))(v10 + v9, *MEMORY[0x277CEAD10], v6);
  sub_2201FE02C();
  sub_22036F028();

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_2201FDF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2201FDFB0()
{
  if (!qword_281266928)
  {
    sub_2201FE02C();
    v0 = sub_22036ECE8();
    if (!v1)
    {
      atomic_store(v0, &qword_281266928);
    }
  }
}

unint64_t sub_2201FE02C()
{
  result = qword_281263678;
  if (!qword_281263678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263678);
  }

  return result;
}

uint64_t sub_2201FE084(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeartbeatData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2201FE0E8(uint64_t a1)
{
  v2 = type metadata accessor for HeartbeatEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2201FE144()
{
  result = qword_281263668;
  if (!qword_281263668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263668);
  }

  return result;
}

uint64_t sub_2201FE1BC(void *a1)
{
  sub_2201FE384(0, &qword_281261CA8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2201FE5F8();
  sub_220370168();
  type metadata accessor for HeartbeatData();
  sub_2201FE9DC(&qword_281265A40);
  sub_22036FFF8();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_2201FE330()
{
  result = qword_281263670;
  if (!qword_281263670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263670);
  }

  return result;
}

void sub_2201FE384(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2201FE5F8();
    v7 = a3(a1, &type metadata for HeartbeatEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2201FE3E8()
{
  swift_getObjectType();
  v0 = sub_22036E788();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22036EA98();
  sub_2201F90D4();
  sub_22036EAC8();

  v5 = (*(v1 + 88))(v4, v0);
  if (v5 == *MEMORY[0x277D69330])
  {
    v6 = 3;
  }

  else if (v5 == *MEMORY[0x277D69368])
  {
    v6 = 2;
  }

  else if (v5 == *MEMORY[0x277D69340])
  {
    v6 = 1;
  }

  else
  {
    if (v5 != *MEMORY[0x277D69348] && v5 != *MEMORY[0x277D69338] && v5 != *MEMORY[0x277D69360] && v5 != *MEMORY[0x277D69350] && v5 != *MEMORY[0x277D69358])
    {
      (*(v1 + 8))(v4, v0);
    }

    v6 = 0;
  }

  v12[15] = v6;
  sub_2201FE02C();
  return sub_22036ECD8();
}

unint64_t sub_2201FE5F8()
{
  result = qword_2812658E0;
  if (!qword_2812658E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812658E0);
  }

  return result;
}

uint64_t sub_2201FE650(uint64_t a1, uint64_t a2)
{
  sub_2201FE8C8();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_client);
  v10 = sub_22036F2A8();
  v12 = v11;
  v13 = sub_22036F288();
  v21[0] = v10;
  v21[1] = v12;
  v21[2] = v13;
  v21[3] = v14;
  sub_2201FE930();
  sub_22036ECD8();
  sub_2201F8304();
  v15 = sub_22036EE48();
  v16 = *(v15 - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_220371600;
  (*(v16 + 104))(v19 + v18, *MEMORY[0x277CEAD10], v15);
  sub_22036F028();

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2201FE874()
{
  result = qword_2812658D0;
  if (!qword_2812658D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812658D0);
  }

  return result;
}

void sub_2201FE8C8()
{
  if (!qword_2812668F0)
  {
    sub_2201FE930();
    v0 = sub_22036ECE8();
    if (!v1)
    {
      atomic_store(v0, &qword_2812668F0);
    }
  }
}

unint64_t sub_2201FE930()
{
  result = qword_2812622A8;
  if (!qword_2812622A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812622A8);
  }

  return result;
}

unint64_t sub_2201FE984()
{
  result = qword_2812658D8;
  if (!qword_2812658D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812658D8);
  }

  return result;
}

uint64_t sub_2201FE9DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HeartbeatData();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2201FEA24()
{
  result = qword_281262298;
  if (!qword_281262298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262298);
  }

  return result;
}

_WORD *storeEnumTagSinglePayload for AdStateData.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdStateData.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

unint64_t sub_2201FEB48()
{
  result = qword_2812622A0;
  if (!qword_2812622A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812622A0);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t HeartbeatData.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2201FEFD4(0, &qword_281261CC8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v26[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2201FF0B4();
  sub_220370168();
  v12 = *v3;
  v13 = v3[1];
  v26[15] = 0;
  sub_22036FFB8();
  if (!v2)
  {
    v14 = type metadata accessor for HeartbeatData();
    v15 = v14[5];
    v26[14] = 1;
    sub_22036E5A8();
    sub_2201FF630(&qword_281266AD0, MEMORY[0x277CC9578]);
    sub_22036FFF8();
    v16 = (v3 + v14[6]);
    v17 = *v16;
    v18 = v16[1];
    v26[13] = 2;
    sub_22036FFB8();
    v19 = (v3 + v14[7]);
    v20 = *v19;
    v21 = v19[1];
    v26[12] = 3;
    sub_22036FFB8();
    v22 = (v3 + v14[8]);
    v23 = *v22;
    v24 = v22[1];
    v26[11] = 4;
    sub_22036FFB8();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_2201FEE04()
{
  sub_2201FF058();
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v0);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2201FF2BC();
  sub_2201F8304();
  v6 = sub_22036EE48();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_220371600;
  (*(v7 + 104))(v10 + v9, *MEMORY[0x277CEAD10], v6);
  sub_2201FF10C();
  sub_22036F028();

  return (*(v2 + 8))(v5, v1);
}

void sub_2201FEFD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2201FF0B4();
    v7 = a3(a1, &type metadata for HeartbeatData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_2201FF058()
{
  if (!qword_281266918)
  {
    sub_2201FF10C();
    v0 = sub_22036ECE8();
    if (!v1)
    {
      atomic_store(v0, &qword_281266918);
    }
  }
}

unint64_t sub_2201FF0B4()
{
  result = qword_281265A58[0];
  if (!qword_281265A58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281265A58);
  }

  return result;
}

unint64_t sub_2201FF10C()
{
  result = qword_281262158;
  if (!qword_281262158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262158);
  }

  return result;
}

unint64_t sub_2201FF160()
{
  result = qword_281265A48;
  if (!qword_281265A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265A48);
  }

  return result;
}

unint64_t sub_2201FF1BC()
{
  result = qword_281262148;
  if (!qword_281262148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262148);
  }

  return result;
}

unint64_t sub_2201FF214()
{
  result = qword_281265A50;
  if (!qword_281265A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265A50);
  }

  return result;
}

unint64_t sub_2201FF268()
{
  result = qword_281262150;
  if (!qword_281262150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262150);
  }

  return result;
}

uint64_t sub_2201FF2BC()
{
  v1 = sub_22036E5A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_userContext;
  v7 = *(v0 + OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_userContext + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_userContext), *(v0 + OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_userContext + 24));
  v8 = sub_22036E918();
  v10 = v9;
  v11 = *(v6 + 40);
  v12 = *(v6 + 48);
  swift_getObjectType();
  v13 = sub_22036E8E8();
  sub_2201FF678();
  sub_22036E578();
  v15 = v14;
  result = (*(v2 + 8))(v5, v1);
  v17 = v15 * 1000.0;
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v18 = objc_opt_self();
  v19 = [v18 ageGroup];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 intValue];
  }

  else
  {
    v21 = 0;
  }

  v22 = [v18 gender];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 intValue];
  }

  else
  {
    v24 = 0;
  }

  if (v13)
  {
    v25 = 1;
  }

  else
  {
    v25 = 2;
  }

  v26 = sub_22036EA18();
  v28[0] = v8;
  v28[1] = v10;
  v29 = v25;
  v30 = v17;
  v31 = v21;
  v32 = 1065353216;
  v33 = v24;
  v34 = 1065353216;
  v35 = v26;
  v36 = v27;
  sub_2201FF10C();
  return sub_22036ECD8();
}

uint64_t sub_2201FF540()
{
  v1 = *v0;
  v2 = 0x444972657375;
  v3 = 0x4449746E657665;
  v4 = 0x6F6973726556736FLL;
  if (v1 != 3)
  {
    v4 = 0x656C646E7542736FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D617473656D6974;
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

uint64_t sub_2201FF5E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2201FF630(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2201FF678()
{
  v0 = sub_22036E5A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22036E8F8();
  sub_22036E538();
  (*(v1 + 8))(v4, v0);
  return sub_22036E528();
}

uint64_t storeEnumTagSinglePayload for InterfaceOrientation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2201FF844()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t getEnumTagSinglePayload for InterfaceOrientation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 49, 7);
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

uint64_t sub_2201FF97C(uint64_t a1, void *a2)
{
  v2 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for TelemetrySessionManager();
  sub_22036F4A8();
}

uint64_t sub_2201FFA24(uint64_t a1, uint64_t a2)
{
  v14 = a2;
  v2 = sub_22036F798();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22036EBE8();
  v13 = "ytics17TelemetryAssembly";
  sub_22036F718();
  v8 = v3[13];
  v12 = *MEMORY[0x277D6CF10];
  v7 = v12;
  v8(v6, v12, v2);
  sub_22036F458();

  v9 = v3[1];
  v9(v6, v2);
  type metadata accessor for TelemetrySessionManager();
  sub_22036F718();
  sub_22036F448();

  v8(v6, v7, v2);
  sub_22036F458();

  v9(v6, v2);
  sub_22036EF18();
  sub_22036F718();
  sub_22036F448();

  v8(v6, *MEMORY[0x277D6CF00], v2);
  sub_22036F458();

  v9(v6, v2);
  type metadata accessor for SessionObserver();
  sub_22036F718();
  v8(v6, v12, v2);
  sub_22036F458();

  v9(v6, v2);
  sub_22036F0A8();
  sub_22036F718();

  sub_22036F158();

  sub_22036F718();

  sub_22036F2B8();
  sub_22036F718();

  sub_2202BEB24(0, &qword_2812668E0, &protocolRef_AAEndpointType);
  sub_22036F718();
}

uint64_t sub_2201FFE6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v70 = a6;
  v66 = a4;
  v67 = a5;
  v64 = a3;
  v72 = a1;
  v62 = sub_22036E618();
  v6 = *(v62 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v62);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v57 - v11;
  v73 = sub_22036E5A8();
  v13 = *(v73 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v73);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22036E648();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for SessionData();
  v22 = *(*(v71 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v71);
  v63 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v57 - v25;
  sub_220200F2C();
  v68 = *(v27 - 8);
  v69 = v27;
  v28 = *(v68 + 64);
  MEMORY[0x28223BE20](v27);
  v65 = &v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22036E638();
  sub_22036E598();
  v30 = sub_22036E628();
  (*(v13 + 8))(v16, v73);
  result = (*(v18 + 8))(v21, v17);
  if (v30 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v30 > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  sub_22036E608();
  v73 = sub_22036E5F8();
  v61 = v32;
  v33 = *(v6 + 8);
  v34 = v12;
  v35 = v62;
  v33(v34, v62);
  sub_22036E608();
  v36 = sub_22036E5E8();
  v59 = v37;
  v60 = v36;
  v33(v10, v35);
  if (sub_22036EA28())
  {
    v38 = 1;
  }

  else
  {
    v38 = 2;
  }

  v58 = 0x8000000220391430;
  v39 = NFStoreDemoMode();
  v40 = [objc_allocWithZone(MEMORY[0x277D23658]) init];
  LODWORD(v62) = [v40 personalizedAds];

  v41 = v71;
  v42 = *(v71 + 48);
  v77 = 2;
  v43 = MEMORY[0x277D839B0];
  sub_22036F168();
  v44 = *(v41 + 52);
  v76 = 2;
  sub_22036F168();
  v45 = *(v41 + 56);
  v26[v45] = 5;
  *v26 = v30;
  v47 = v60;
  v46 = v61;
  *(v26 + 1) = v73;
  *(v26 + 2) = v46;
  v48 = v59;
  *(v26 + 3) = v47;
  *(v26 + 4) = v48;
  v26[40] = v38;
  v26[41] = v64;
  *(v26 + 6) = 0xD000000000000010;
  v50 = v66;
  v49 = v67;
  *(v26 + 7) = v58;
  *(v26 + 8) = v50;
  *(v26 + 9) = v49;
  v75 = v39;
  sub_2201F7120(0, &qword_2812666C8, v43, MEMORY[0x277CEAE00]);

  sub_22036F198();
  v74 = v62;
  sub_22036F198();
  v26[v45] = v70;
  sub_220202E28(v26, v63);
  sub_220201748();
  v51 = v65;
  sub_22036ECD8();
  sub_220202F1C(v26);
  sub_2201FB258(0, &qword_281261B50, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v52 = sub_22036EE48();
  v53 = *(v52 - 8);
  v54 = *(v53 + 72);
  v55 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_220371600;
  (*(v53 + 104))(v56 + v55, *MEMORY[0x277CEAD10], v52);
  sub_22036F028();

  return (*(v68 + 8))(v51, v69);
}

void *sub_2202004D8(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2201F358C(0, &qword_281266AA8);
  result = sub_22036F4B8();
  if (!v8[3])
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22036EF18();
  result = sub_22036F488();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SessionObserver();
  result = sub_22036F488();
  if (result)
  {
    v7 = result;
    type metadata accessor for TelemetrySessionManager();
    swift_allocObject();
    return sub_2202017D4(v8, v5, v7);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_220200618(void *a1)
{
  v2 = sub_22036F118();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22036ECC8();
  v35 = *(v6 - 8);
  v36 = v6;
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v6);
  v37 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22036EEF8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = sub_22036F1C8();
  v32 = *(v12 - 8);
  v33 = v12;
  v13 = *(v32 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x277CEAD38];
  sub_220200CD0(0, &unk_281261B40, MEMORY[0x277CEAD38], MEMORY[0x277D84560]);
  v17 = *(v10 + 72);
  v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_220371610;
  sub_22036EED8();
  sub_22036EEE8();
  v40 = v19;
  sub_220200EE4(&qword_2812666F0, 255, MEMORY[0x277CEAD38]);
  sub_220200CD0(0, &unk_281261F50, v16, MEMORY[0x277D83940]);
  sub_220200C6C(&unk_281261F40, &unk_281261F50, v16);
  sub_22036FCF8();
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2201F358C(0, &unk_2812666B0);
  result = sub_22036F4B8();
  if (!v41)
  {
    __break(1u);
    goto LABEL_6;
  }

  v34 = v5;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2201F358C(0, &qword_2812666C0);
  result = sub_22036F4B8();
  if (!v39)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v23 = MEMORY[0x277CEAC90];
  sub_220200CD0(0, &qword_281261B60, MEMORY[0x277CEAC90], MEMORY[0x277D84560]);
  v24 = *(v35 + 72);
  v25 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_22037EA30;
  sub_22036ECB8();
  sub_22036EC98();
  sub_22036ECA8();
  v38 = v26;
  sub_220200EE4(&qword_281266970, 255, MEMORY[0x277CEAC90]);
  sub_220200CD0(0, &qword_281261F70, v23, MEMORY[0x277D83940]);
  sub_220200C6C(&unk_281261F60, &qword_281261F70, v23);
  sub_22036FCF8();
  v27 = sub_22036EE78();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  sub_22036EE68();
  sub_22036F108();
  sub_22036F1B8();
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22036EBE8();
  result = sub_22036F4A8();
  if (result)
  {
    v31 = sub_22036EBC8();

    (*(v32 + 8))(v15, v33);
    return v31;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for SessionData()
{
  result = qword_281265ED0;
  if (!qword_281265ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220200C1C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_220200C6C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_220200CD0(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_220200CD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_220200D34()
{
  sub_220200C1C(319, &qword_281261F88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_220200C1C(319, &qword_281261EA8, MEMORY[0x277D84A28], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_220200C1C(319, &qword_281261EC0, MEMORY[0x277D849A8], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_220200C1C(319, &qword_2812666C8, MEMORY[0x277D839B0], MEMORY[0x277CEAE00]);
        if (v3 <= 0x3F)
        {
          sub_220200C1C(319, &qword_281265CE8, &type metadata for AppIntentType, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_220200EE4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_220200F2C()
{
  if (!qword_2812668E8)
  {
    type metadata accessor for SessionData();
    sub_220201748();
    v0 = sub_22036ECE8();
    if (!v1)
    {
      atomic_store(v0, &qword_2812668E8);
    }
  }
}

uint64_t sub_220200F90(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22036EF18();
  result = sub_22036F488();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = result;
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2201F358C(0, &qword_281266AA0);
  result = sub_22036F4B8();
  if (!v39)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2201F7B70();
  result = sub_22036F4A8();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = result;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_22036F4B8();
  if (!v37)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22036F2B8();
  result = sub_22036F4A8();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = result;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2201F358C(0, &qword_281266A80);
  result = sub_22036F4B8();
  if (!v35[3])
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2201F358C(0, &qword_281266610);
  result = sub_22036F4B8();
  if (!v34[3])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202BEB24(0, &qword_281261E40, &protocolRef_FCUserEventHistoryStorageType);
  sub_22036FA38();
  v14 = sub_22036F488();

  if (v14)
  {
    v15 = type metadata accessor for SessionObserver();
    v16 = objc_allocWithZone(v15);
    swift_unknownObjectWeakInit();
    sub_2201F5DF4(v38, &v16[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_watchlistManager]);
    *&v16[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_sessionManager] = v4;

    *&v16[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_tracker] = sub_22036EF08();
    *&v16[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_cloudContext] = v7;
    sub_2201F9BFC(v36, &v16[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_userContext]);
    *&v16[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_client] = v10;
    v16[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_kind] = 2;
    sub_2201F5DF4(v35, &v16[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_appConfigurationManager]);
    sub_2201F5DF4(v34, &v16[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_appIntentExecutionTypeProvider]);
    *&v16[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_userEventHistoryStorage] = v14;
    v33.receiver = v16;
    v33.super_class = v15;
    v32 = v7;
    v31 = v10;
    swift_unknownObjectRetain();
    v17 = objc_msgSendSuper2(&v33, sel_init);
    sub_2201F7C9C();
    v18 = OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_sessionManager;
    v19 = *&v17[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_sessionManager];
    sub_22036EF08();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_22036F318();

    v20 = [objc_opt_self() currentDevice];
    [v20 beginGeneratingDeviceOrientationNotifications];

    sub_2201F8378();
    v21 = objc_opt_self();
    v22 = [v21 defaultCenter];
    [v22 addObserver:v17 selector:sel_pushOrientationData name:*MEMORY[0x277D76878] object:0];

    sub_2201F8974();
    v23 = *&v17[v18];
    *(swift_allocObject() + 16) = v17;
    v24 = v17;
    sub_22036EE98();

    v25 = *&v17[v18];
    *(swift_allocObject() + 16) = v24;
    v26 = v24;
    sub_22036EE98();

    v27 = *&v17[v18];
    *(swift_allocObject() + 16) = v26;
    v28 = v26;
    sub_22036EE98();

    sub_2201F8378();
    v29 = [v21 defaultCenter];
    v30 = sub_22036FAC8();
    [v29 addObserver:v28 selector:sel_offerDidChange_ name:v30 object:0];

    __swift_project_boxed_opaque_existential_1(v36, v37);
    sub_220200EE4(&unk_2812654F0, 255, type metadata accessor for SessionObserver);
    sub_22036E908();

    _s15StocksAnalytics15SessionObserverC21identificationService_15didChangeUserIDy0A4Core014IdentificationF4Type_p_SStF_0();
    __swift_project_boxed_opaque_existential_1(v38, v39);
    sub_220200EE4(&qword_281265500, 255, type metadata accessor for SessionObserver);
    sub_22036E888();

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v34);
    __swift_destroy_boxed_opaque_existential_1(v35);
    sub_2201F9480(v36);
    __swift_destroy_boxed_opaque_existential_1(v38);
    return v28;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2202016D0()
{
  MEMORY[0x223D7A5C0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220201708()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_220201748()
{
  result = qword_281265EF0;
  if (!qword_281265EF0)
  {
    type metadata accessor for SessionData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265EF0);
  }

  return result;
}

void *sub_2202017D4(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v4[3] = a3;
  v4[4] = 0;
  v4[2] = a2;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  v8 = a3;
  sub_22036E878();
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  swift_allocObject();
  swift_weakInit();
  v9 = sub_22036F8C8();

  v10 = v4[4];
  v4[4] = v9;

  __swift_destroy_boxed_opaque_existential_1(v12);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_2202018F4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22020192C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SessionData();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_220201970(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2201F358C(0, &qword_281266630);
  result = sub_22036F4B8();
  if (v6)
  {
    sub_2201F9BC8(&v5, v7);
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    sub_220200EE4(qword_281263350, 255, type metadata accessor for TelemetrySessionManager);
    sub_22036F738();
    __swift_destroy_boxed_opaque_existential_1(&v5);
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_220201A94()
{
  result = [*(v0 + OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_cloudContext) bundleSubscriptionManager];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5[4] = sub_2202022A0;
    v5[5] = v3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_220202238;
    v5[3] = &block_descriptor;
    v4 = _Block_copy(v5);

    [v2 refreshBundleSubscriptionWithCachePolicy:2 completion:v4];
    _Block_release(v4);
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220201BA8()
{
  MEMORY[0x223D7A5C0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220201C14(uint64_t *a1, void *a2)
{
  v3 = *a1;
  sub_22036EE88();
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22036F0A8();
  result = sub_22036F4A8();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_22036EF78();

  sub_22036EE88();
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22036F158();
  result = sub_22036F488();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_22036EF78();
}

uint64_t sub_220201D34()
{
  v0 = sub_22036F1A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22036F0A8();
  *v4 = 11;
  (*(v1 + 104))(v4, *MEMORY[0x277CEAE08], v0);
  return sub_22036F098();
}

uint64_t sub_220201E18(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22036F2B8();
  result = sub_22036F4A8();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202BEB24(0, &qword_2812668E0, &protocolRef_AAEndpointType);
  result = sub_22036F4A8();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_22036F158();
  sub_22036F0F8();
  v8 = sub_22036F0E8();
  if (qword_281266A50 != -1)
  {
    swift_once();
  }

  sub_220200EE4(&qword_281264D60, v7, type metadata accessor for TelemetryAssembly);
  sub_22036EAC8();
  v9 = sub_22036F0D8();

  if (qword_2812669B8 != -1)
  {
    swift_once();
  }

  sub_22036EAC8();
  v10 = sub_22036F0B8();

  if (qword_281266A00 != -1)
  {
    swift_once();
  }

  sub_22036EAC8();
  sub_22036F0C8();

  return sub_22036F148();
}

unint64_t sub_2202020B8()
{
  result = qword_281262108;
  if (!qword_281262108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262108);
  }

  return result;
}

unint64_t sub_220202110()
{
  result = qword_281262110;
  if (!qword_281262110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262110);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

unint64_t sub_22020218C()
{
  result = qword_281265810;
  if (!qword_281265810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265810);
  }

  return result;
}

unint64_t sub_2202021E4()
{
  result = qword_281265818;
  if (!qword_281265818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265818);
  }

  return result;
}

void sub_220202238(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_2202022A8(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  v5 = a1;
  sub_22036F808();
}

uint64_t sub_22020232C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_220202374(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    _s15StocksAnalytics15SessionObserverC27bundleSubscriptionDidExpireyySo08FCBundleF0CF_0(a2);
  }
}

uint64_t sub_2202023D0()
{
  v1 = *&v0[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_tracker];
  *(swift_allocObject() + 16) = v0;
  v2 = v0;
  sub_22036F308();
}

uint64_t sub_220202454()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2202024B0()
{
  result = sub_22036F388();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_220202568()
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D1DB8](ObjectType);
}

void sub_2202025D0()
{
  sub_22036F388();
  if (v0 <= 0x3F)
  {
    sub_22036F3C8();
    if (v1 <= 0x3F)
    {
      sub_220202718();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_220202698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D1DB0](a1, a2, a3, a4, a5, ObjectType);
}

void sub_220202718()
{
  if (!qword_281263B20)
  {
    v0 = sub_22036FCC8();
    if (!v1)
    {
      atomic_store(v0, &qword_281263B20);
    }
  }
}

uint64_t sub_2202027B4()
{
  result = sub_22036F388();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22020285C()
{
  sub_22036F388();
  if (v0 <= 0x3F)
  {
    sub_22036F3C8();
    if (v1 <= 0x3F)
    {
      sub_22020292C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22020292C()
{
  if (!qword_281265970)
  {
    v0 = sub_22036FCC8();
    if (!v1)
    {
      atomic_store(v0, &qword_281265970);
    }
  }
}

uint64_t sub_22020299C()
{
  result = sub_22036F388();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_220202A34@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2201F358C(0, &qword_281266A80);
  result = sub_22036F4B8();
  if (v8)
  {
    v5 = type metadata accessor for TrackerConfiguration();
    v6 = swift_allocObject();
    result = sub_2201F9BC8(&v7, v6 + 16);
    a2[3] = v5;
    a2[4] = &off_2833F8D08;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_220202B10()
{
  result = qword_2812661D0;
  if (!qword_2812661D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812661D0);
  }

  return result;
}

unint64_t sub_220202B7C()
{
  result = qword_2812661D8;
  if (!qword_2812661D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812661D8);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for NewsArticleData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_220202CE4(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t sub_220202D8C()
{
  v1 = OBJC_IVAR____TtC15StocksAnalytics22TimestampJitterFactory_appConfiguration;
  v2 = sub_22036E868();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_220202E28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for NewsArticleData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_220202F1C(uint64_t a1)
{
  v2 = type metadata accessor for SessionData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220202F90(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE900000000000070;
  v5 = 0x614374656B72616DLL;
  if (*v1 != 2)
  {
    v5 = 0x61746E6563726570;
    v4 = 0xEA00000000006567;
  }

  if (*v1)
  {
    v3 = 0x6563697270;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

void sub_220203014(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a2 == 1)
    {
      sub_2202627C4();
      sub_22036ED98();
      sub_220262818();
      sub_22036ED98();
      sub_22026286C();
      sub_220262C2C();
    }
  }
}

double sub_2202030B8(uint64_t a1)
{
  v2 = v1;
  v53 = a1;
  sub_2201F57FC();
  v52 = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v51 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_22036EF48();
  v6 = *(v48 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v48);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_22036F048();
  v10 = *(v50 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v50);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22036E5A8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v48 - v20;
  v49 = *(v2 + 64);
  os_unfair_lock_lock(v49 + 4);
  sub_22036E598();
  (*(v15 + 16))(v19, v2 + OBJC_IVAR____TtC15StocksAnalytics37RollingTimestampConfigurationProvider_lastConfigRollDate, v14);
  sub_22036E548();
  v23 = v22;
  v24 = *(v15 + 8);
  v24(v19, v14);
  v24(v21, v14);
  if (*(v2 + 56) >= v23)
  {
    sub_2201FC318();
    v32 = sub_22036FCB8();
    sub_220203688();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_220371610;
    v39 = v2 + OBJC_IVAR____TtC15StocksAnalytics37RollingTimestampConfigurationProvider_lastConfig;
    swift_beginAccess();
    v30 = v50;
    (*(v10 + 16))(v13, v39, v50);
    v40 = sub_22036F038();
    v42 = v41;
    (*(v10 + 8))(v13, v30);
    *(v33 + 56) = MEMORY[0x277D837D0];
    *(v33 + 64) = sub_22020374C();
    *(v33 + 32) = v40;
    *(v33 + 40) = v42;
    v31 = v52;
    v37 = *(v39 + *(v52 + 48));
  }

  else
  {
    v25 = *(v2 + 40);
    v26 = *(v2 + 48);
    __swift_project_boxed_opaque_existential_1((v2 + 16), v25);
    (*(v26 + 8))(v25, v26);
    sub_22036EF38();
    v28 = v27;
    (*(v6 + 8))(v9, v48);
    v29 = v2 + OBJC_IVAR____TtC15StocksAnalytics37RollingTimestampConfigurationProvider_lastConfig;
    swift_beginAccess();
    v30 = v50;
    (*(v10 + 40))(v29, v13, v50);
    v31 = v52;
    *(v29 + *(v52 + 48)) = v28;
    swift_endAccess();
    sub_2201FC318();
    v32 = sub_22036FCB8();
    sub_220203688();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_220371610;
    (*(v10 + 16))(v13, v29, v30);
    v34 = sub_22036F038();
    v36 = v35;
    (*(v10 + 8))(v13, v30);
    *(v33 + 56) = MEMORY[0x277D837D0];
    *(v33 + 64) = sub_22020374C();
    *(v33 + 32) = v34;
    *(v33 + 40) = v36;
    v37 = *(v29 + *(v31 + 48));
  }

  v38 = MEMORY[0x277D83A80];
  *(v33 + 96) = MEMORY[0x277D839F8];
  *(v33 + 104) = v38;
  *(v33 + 72) = v37;
  sub_22036FC18();
  sub_22036F828();

  v43 = OBJC_IVAR____TtC15StocksAnalytics37RollingTimestampConfigurationProvider_lastConfig;
  swift_beginAccess();
  v44 = v2 + v43;
  v45 = v51;
  sub_2202037A0(v44, v51);
  v46 = *(v45 + *(v31 + 48));
  (*(v10 + 32))(v53, v45, v30);
  os_unfair_lock_unlock(v49 + 4);
  return v46;
}

void sub_220203688()
{
  if (!qword_281261AF8)
  {
    sub_2202036F0(255, &qword_281261AE0);
    v0 = sub_220370038();
    if (!v1)
    {
      atomic_store(v0, &qword_281261AF8);
    }
  }
}

uint64_t sub_2202036F0(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_22020374C()
{
  result = qword_281261F98;
  if (!qword_281261F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281261F98);
  }

  return result;
}

uint64_t sub_2202037A0(uint64_t a1, uint64_t a2)
{
  sub_2201F57FC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22020381C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220203A44();
    v7 = a3(a1, &type metadata for OrientationData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t OrientationData.encode(to:)(void *a1)
{
  sub_22020381C(0, &qword_281261C80, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v13 - v8;
  v10 = *v1;
  v14 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220203A44();
  sub_220370168();
  v18 = v10;
  v17 = 0;
  sub_220203B48();
  sub_22036FFF8();
  if (!v2)
  {
    v16 = v14;
    v15 = 1;
    sub_220203EB4();
    sub_22036FFF8();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_220203A44()
{
  result = qword_281265538;
  if (!qword_281265538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265538);
  }

  return result;
}

unint64_t sub_220203A9C()
{
  result = qword_281265528;
  if (!qword_281265528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265528);
  }

  return result;
}

unint64_t sub_220203AF4()
{
  result = qword_281265530;
  if (!qword_281265530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265530);
  }

  return result;
}

unint64_t sub_220203B48()
{
  result = qword_281264E40;
  if (!qword_281264E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264E40);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for WatchlistType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for WatchlistType(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_220203D2C()
{
  result = qword_281264E38;
  if (!qword_281264E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264E38);
  }

  return result;
}

void sub_220203D80(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE600000000000000;
  v6 = 0x705565636166;
  if (v2 != 5)
  {
    v6 = 0x6E776F4465636166;
    v5 = 0xE800000000000000;
  }

  v7 = 0xED00007466654C65;
  if (v2 != 3)
  {
    v7 = 0xEE00746867695265;
  }

  if (*v1 <= 4u)
  {
    v6 = 0x70616373646E616CLL;
    v5 = v7;
  }

  v8 = 0xE800000000000000;
  v9 = 0x7469617274726F70;
  if (v2 != 1)
  {
    v9 = 0xD000000000000012;
    v8 = 0x800000022038FB40;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_220203E78()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

unint64_t sub_220203EB4()
{
  result = qword_281264070[0];
  if (!qword_281264070[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281264070);
  }

  return result;
}

unint64_t sub_220203F58()
{
  result = qword_281264068;
  if (!qword_281264068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264068);
  }

  return result;
}

void sub_220203FAC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0x800000022038FB40;
  v6 = 0xD000000000000012;
  v7 = 0xED00007466654C65;
  if (v2 != 3)
  {
    v7 = 0xEE00746867695265;
  }

  if (v2 != 2)
  {
    v6 = 0x70616373646E616CLL;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7469617274726F70;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t DeviceData.encode(to:)(void *a1)
{
  sub_2202042B0(0, &qword_281261D28, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v18 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v20 = v1[3];
  v21 = v11;
  v19 = *(v1 + 32);
  v12 = v1[5];
  v18[2] = v1[6];
  v18[3] = v12;
  v13 = v1[7];
  v18[0] = v1[8];
  v18[1] = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220204314();
  sub_220370168();
  v28 = 0;
  v15 = v22;
  sub_22036FFB8();
  if (!v15)
  {
    v16 = v19;
    v27 = 1;
    sub_22036FFB8();
    v26 = v16;
    v25 = 2;
    sub_2202044DC();
    sub_22036FFF8();
    v24 = 3;
    sub_22036FFB8();
    v23 = 4;
    sub_22036FFB8();
  }

  return (*(v5 + 8))(v8, v4);
}

void sub_2202042B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220204314();
    v7 = a3(a1, &type metadata for DeviceData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220204314()
{
  result = qword_281266160;
  if (!qword_281266160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266160);
  }

  return result;
}

unint64_t sub_22020436C()
{
  result = qword_281266150;
  if (!qword_281266150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266150);
  }

  return result;
}

unint64_t sub_2202043C4()
{
  result = qword_281266158;
  if (!qword_281266158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266158);
  }

  return result;
}

unint64_t sub_220204418()
{
  v1 = *v0;
  v2 = 0x6F4D656369766564;
  v3 = 0xD000000000000010;
  v4 = 0x6F6973726556736FLL;
  if (v1 != 3)
  {
    v4 = 0x656C646E7542736FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C50656369766564;
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

unint64_t sub_2202044DC()
{
  result = qword_2812650D8;
  if (!qword_2812650D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812650D8);
  }

  return result;
}

unint64_t sub_220204580()
{
  result = qword_2812650D0;
  if (!qword_2812650D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812650D0);
  }

  return result;
}

void sub_2202045D4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6C616E7265746E69;
  if (v2 != 1)
  {
    v4 = 0x6C616E7265747865;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (!v5)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t ContentEnvironmentData.encode(to:)(void *a1)
{
  sub_220204784(0, &qword_281261BF8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220204800();
  sub_220370168();
  v13 = v9;
  sub_220204904();
  sub_22036FFF8();
  return (*(v5 + 8))(v8, v4);
}

void sub_220204784(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220204800();
    v7 = a3(a1, &type metadata for ContentEnvironmentData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220204800()
{
  result = qword_281263690[0];
  if (!qword_281263690[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281263690);
  }

  return result;
}

unint64_t sub_220204858()
{
  result = qword_281263680;
  if (!qword_281263680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263680);
  }

  return result;
}

unint64_t sub_2202048B0()
{
  result = qword_281263688;
  if (!qword_281263688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263688);
  }

  return result;
}

unint64_t sub_220204904()
{
  result = qword_281264A70;
  if (!qword_281264A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264A70);
  }

  return result;
}

unint64_t sub_2202049A8()
{
  result = qword_281264A68;
  if (!qword_281264A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264A68);
  }

  return result;
}

void sub_2202049FC(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE700000000000000;
  v5 = 0x676E6967617473;
  if (*v1 != 2)
  {
    v5 = 1685025392;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 24945;
    v2 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

void sub_220204A84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220204F10();
    v7 = a3(a1, &type metadata for SessionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t SessionData.encode(to:)(void *a1)
{
  v3 = v1;
  sub_220204A84(0, &qword_281261CF8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220204F10();
  sub_220370168();
  v12 = *v3;
  LOBYTE(v23) = 0;
  sub_220370008();
  if (!v2)
  {
    v13 = *(v3 + 1);
    v14 = *(v3 + 2);
    LOBYTE(v23) = 1;
    sub_22036FF68();
    v16 = *(v3 + 3);
    v17 = *(v3 + 4);
    LOBYTE(v23) = 2;
    sub_22036FF68();
    LOBYTE(v23) = *(v3 + 40);
    v24 = 3;
    sub_2202051C4();
    sub_22036FFF8();
    LOBYTE(v23) = *(v3 + 41);
    v24 = 4;
    sub_220205460();
    sub_22036FFF8();
    v18 = *(v3 + 6);
    v19 = *(v3 + 7);
    LOBYTE(v23) = 5;
    sub_22036FFB8();
    v23 = *(v3 + 8);
    v24 = 6;
    sub_220200C1C(0, &qword_281261EA8, MEMORY[0x277D84A28], MEMORY[0x277D83940]);
    sub_2202056E8(&qword_281261EA0);
    sub_22036FFF8();
    v23 = *(v3 + 9);
    v24 = 7;
    sub_220200C1C(0, &qword_281261EC0, MEMORY[0x277D849A8], MEMORY[0x277D83940]);
    sub_2202057CC(&qword_281261EB8);
    sub_22036FFF8();
    v20 = type metadata accessor for SessionData();
    v21 = v20[12];
    LOBYTE(v23) = 8;
    sub_22036FF58();
    v22 = v20[13];
    LOBYTE(v23) = 9;
    sub_22036FF58();
    LOBYTE(v23) = *(v3 + v20[14]);
    v24 = 10;
    sub_220233AD0();
    sub_22036FF88();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_220204F10()
{
  result = qword_281265F08[0];
  if (!qword_281265F08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281265F08);
  }

  return result;
}

unint64_t sub_220204F68()
{
  result = qword_281265EF8;
  if (!qword_281265EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265EF8);
  }

  return result;
}

unint64_t sub_220204FC0()
{
  result = qword_281265F00;
  if (!qword_281265F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265F00);
  }

  return result;
}

unint64_t sub_22020501C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x657366664F637475;
    v6 = 0x437972746E756F63;
    v7 = 0xD000000000000012;
    if (a1 != 3)
    {
      v7 = 0x74654D7472617473;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0x65676175676E616CLL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x4465726F74537369;
    v2 = 0xD000000000000018;
    if (a1 != 9)
    {
      v2 = 0x6E65746E49707061;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD00000000000001DLL;
    if (a1 == 6)
    {
      v3 = 0xD00000000000001CLL;
    }

    if (a1 == 5)
    {
      v3 = 0x54746375646F7270;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_2202051C4()
{
  result = qword_281264948[0];
  if (!qword_281264948[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281264948);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for SessionData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SessionData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_2202053A8()
{
  result = qword_281264940;
  if (!qword_281264940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264940);
  }

  return result;
}

void sub_2202053FC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6E49646567676F6CLL;
  if (v2 != 1)
  {
    v5 = 0x754F646567676F6CLL;
    v4 = 0xE900000000000074;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_220205460()
{
  result = qword_281265E20[0];
  if (!qword_281265E20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281265E20);
  }

  return result;
}

unint64_t sub_220205504()
{
  result = qword_281265E18;
  if (!qword_281265E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265E18);
  }

  return result;
}

unint64_t sub_220205558@<X0>(unint64_t *a1@<X8>)
{
  result = StartMethod.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t StartMethod.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x6867696C746F7073;
    v7 = 0x66666F646E6168;
    if (v1 != 8)
    {
      v7 = 0x6E65746E49707061;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000011;
    if (v1 != 5)
    {
      v8 = 0xD000000000000020;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6E776F6E6B6E75;
    v3 = 0x6C616E7265747865;
    v4 = 0xD000000000000011;
    if (v1 != 3)
    {
      v4 = 0x6465725069726973;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x6469577961646F74;
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

uint64_t sub_2202056E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_220200C1C(255, &qword_281261EA8, MEMORY[0x277D84A28], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22020576C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2203430E0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2202057CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_220200C1C(255, &qword_281261EC0, MEMORY[0x277D849A8], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_220205850(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_220339724();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2202058B0()
{
  v1 = sub_22036E868();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  if (qword_281266A68 != -1)
  {
    swift_once();
  }

  v7 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v6[5]);
  sub_22036E958();
  sub_22036E7D8();
  (*(v2 + 8))(v5, v1);
  sub_220205A24();
  return sub_22036EAE8() & 1;
}

unint64_t sub_220205A24()
{
  result = qword_281263BF8[0];
  if (!qword_281263BF8[0])
  {
    type metadata accessor for TrackerConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, qword_281263BF8);
  }

  return result;
}

uint64_t sub_220205AB4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  sub_220230718();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  sub_220231004(0, &qword_27CF25E68, sub_2202309A4, sub_2202309F8);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  sub_220231004(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  sub_220231004(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  sub_220231004(0, &qword_281266840, sub_220231080, sub_2202310D4);
  v19 = v18;
  v20 = *(*(v18 - 8) + 48);
  v21 = a1 + a3[9];

  return v20(v21, a2, v19);
}

uint64_t sub_220205DAC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  sub_220230718();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  sub_220231004(0, &qword_27CF25E68, sub_2202309A4, sub_2202309F8);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  sub_220231004(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  sub_220231004(0, &qword_2812667D8, sub_2201F8808, sub_2201F8860);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  sub_220231004(0, &qword_281266840, sub_220231080, sub_2202310D4);
  v21 = v20;
  v22 = *(*(v20 - 8) + 56);
  v23 = a1 + a4[9];

  return v22(v23, a2, a2, v21);
}

uint64_t sub_2202060B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22036F3C8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_2202061C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22036F388();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22036F3C8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2202062DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_220200C1C(0, &qword_2812666C8, MEMORY[0x277D839B0], MEMORY[0x277CEAE00]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 48);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2202063B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    sub_220200C1C(0, &qword_2812666C8, MEMORY[0x277D839B0], MEMORY[0x277CEAE00]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 48);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_220206478(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_22:

    return v9(v10, a2, v8);
  }

  sub_220237BA0(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_21:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_22;
  }

  sub_220237BA0(0, &qword_281266858, sub_220236A30, sub_220236A84);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_21;
  }

  sub_220237BA0(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_21;
  }

  sub_220237BA0(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_21;
  }

  sub_220237BA0(0, &qword_27CF25F28, sub_220237090, sub_2202370E4);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_21;
  }

  sub_220237BA0(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_21;
  }

  sub_220237BA0(0, &qword_27CF25F40, sub_220237498, sub_2202374EC);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_21;
  }

  sub_220237BA0(0, &qword_281266710, sub_2202376F0, sub_220237744);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_21;
  }

  sub_220237BA0(0, &qword_27CF25F58, sub_220237948, sub_22023799C);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_21;
  }

  sub_220237BA0(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v24 = v23;
  v25 = *(*(v23 - 8) + 48);
  v26 = a1 + a3[14];

  return v25(v26, a2, v24);
}

uint64_t sub_220206A28(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_22:

    return v11(v12, a2, a2, v10);
  }

  sub_220237BA0(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_21:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_22;
  }

  sub_220237BA0(0, &qword_281266858, sub_220236A30, sub_220236A84);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_21;
  }

  sub_220237BA0(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_21;
  }

  sub_220237BA0(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_21;
  }

  sub_220237BA0(0, &qword_27CF25F28, sub_220237090, sub_2202370E4);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_21;
  }

  sub_220237BA0(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_21;
  }

  sub_220237BA0(0, &qword_27CF25F40, sub_220237498, sub_2202374EC);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_21;
  }

  sub_220237BA0(0, &qword_281266710, sub_2202376F0, sub_220237744);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_21;
  }

  sub_220237BA0(0, &qword_27CF25F58, sub_220237948, sub_22023799C);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_21;
  }

  sub_220237BA0(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v26 = v25;
  v27 = *(*(v25 - 8) + 56);
  v28 = a1 + a4[14];

  return v27(v28, a2, a2, v26);
}

uint64_t sub_220206FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2202070A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036F388();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220207160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_22023B724(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_22023B724(0, &qword_281266AE8, sub_22023B7A0, sub_22023B7F4);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_220207310(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_22023B724(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_22023B724(0, &qword_281266AE8, sub_22023B7A0, sub_22023B7F4);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_2202074CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22020758C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036F388();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220207648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_220230718();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_22023D8B0();
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_220207788(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_220230718();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_22023D8B0();
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_2202078D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22036F3C8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_2202079E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22036F388();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22036F3C8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_220207AE8(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  sub_22023F868(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  sub_22023F868(0, &qword_281266770, sub_22023D918, sub_22023D96C);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  sub_22023F868(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v17 = v16;
  v18 = *(*(v16 - 8) + 48);
  v19 = a1 + a3[7];

  return v18(v19, a2, v17);
}

uint64_t sub_220207D18(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  sub_22023F868(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  sub_22023F868(0, &qword_281266770, sub_22023D918, sub_22023D96C);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  sub_22023F868(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  v19 = v18;
  v20 = *(*(v18 - 8) + 56);
  v21 = a1 + a4[7];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_220207F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_220208014(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036F388();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220208130(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_22:

    return v9(v10, a2, v8);
  }

  sub_220230718();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_21:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_22;
  }

  sub_2202437E4(0, &qword_281266880, sub_2201F93C8, sub_2201F9420);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_21;
  }

  sub_2202437E4(0, &qword_281266858, sub_220236A30, sub_220236A84);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_21;
  }

  sub_2202437E4(0, &qword_281266860, sub_22023D1F4, sub_22023D24C);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_21;
  }

  sub_2202437E4(0, &qword_2812667F0, sub_220242CD4, sub_220242D28);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_21;
  }

  sub_2202437E4(0, &qword_281266888, sub_220242F2C, sub_220242F80);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_21;
  }

  sub_2202437E4(0, &qword_281266800, sub_220243184, sub_2202431D8);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_21;
  }

  sub_2202437E4(0, &qword_281266890, sub_220202B10, sub_220202B7C);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_21;
  }

  sub_2202437E4(0, &qword_281266838, sub_22024358C, sub_2202435E0);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_21;
  }

  sub_2202437E4(0, &qword_281266868, sub_220243860, sub_2202438B4);
  v24 = v23;
  v25 = *(*(v23 - 8) + 48);
  v26 = a1 + a3[14];

  return v25(v26, a2, v24);
}

uint64_t sub_2202086A8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_22:

    return v11(v12, a2, a2, v10);
  }

  sub_220230718();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_21:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_22;
  }

  sub_2202437E4(0, &qword_281266880, sub_2201F93C8, sub_2201F9420);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_21;
  }

  sub_2202437E4(0, &qword_281266858, sub_220236A30, sub_220236A84);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_21;
  }

  sub_2202437E4(0, &qword_281266860, sub_22023D1F4, sub_22023D24C);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_21;
  }

  sub_2202437E4(0, &qword_2812667F0, sub_220242CD4, sub_220242D28);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_21;
  }

  sub_2202437E4(0, &qword_281266888, sub_220242F2C, sub_220242F80);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_21;
  }

  sub_2202437E4(0, &qword_281266800, sub_220243184, sub_2202431D8);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_21;
  }

  sub_2202437E4(0, &qword_281266890, sub_220202B10, sub_220202B7C);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_21;
  }

  sub_2202437E4(0, &qword_281266838, sub_22024358C, sub_2202435E0);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_21;
  }

  sub_2202437E4(0, &qword_281266868, sub_220243860, sub_2202438B4);
  v26 = v25;
  v27 = *(*(v25 - 8) + 56);
  v28 = a1 + a4[14];

  return v27(v28, a2, a2, v26);
}

uint64_t sub_220208C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22036F3C8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_220208D3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22036F388();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22036F3C8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_220208E48(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  sub_2202480B8(0, &qword_281266878, sub_220247C08, sub_220247C5C);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  sub_2202480B8(0, &qword_27CF26320, sub_220247E60, sub_220247EB4);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  sub_2202480B8(0, &qword_2812667B0, sub_220248134, sub_220248188);
  v17 = v16;
  v18 = *(*(v16 - 8) + 48);
  v19 = a1 + a3[7];

  return v18(v19, a2, v17);
}

uint64_t sub_220209078(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  sub_2202480B8(0, &qword_281266878, sub_220247C08, sub_220247C5C);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  sub_2202480B8(0, &qword_27CF26320, sub_220247E60, sub_220247EB4);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  sub_2202480B8(0, &qword_2812667B0, sub_220248134, sub_220248188);
  v19 = v18;
  v20 = *(*(v18 - 8) + 56);
  v21 = a1 + a4[7];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_2202092B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_220209374(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036F388();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220209430(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  sub_22024A328(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  sub_22024A328(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  sub_22024A328(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  v17 = v16;
  v18 = *(*(v16 - 8) + 48);
  v19 = a1 + a3[7];

  return v18(v19, a2, v17);
}

uint64_t sub_220209660(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  sub_22024A328(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  sub_22024A328(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  sub_22024A328(0, &qword_281266870, sub_220230BFC, sub_220230C50);
  v19 = v18;
  v20 = *(*(v18 - 8) + 56);
  v21 = a1 + a4[7];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_22020989C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22020995C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036F388();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220209A78(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  sub_220230718();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_13:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_14;
  }

  sub_22025134C(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_13;
  }

  sub_22025134C(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_13;
  }

  sub_22025134C(0, &qword_2812667E8, sub_220250F44, sub_220250F98);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_13;
  }

  sub_22025134C(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_13;
  }

  sub_22025134C(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v20 = v19;
  v21 = *(*(v19 - 8) + 48);
  v22 = a1 + a3[10];

  return v21(v22, a2, v20);
}

uint64_t sub_220209DF0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_14:

    return v11(v12, a2, a2, v10);
  }

  sub_220230718();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_13:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_14;
  }

  sub_22025134C(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_13;
  }

  sub_22025134C(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_13;
  }

  sub_22025134C(0, &qword_2812667E8, sub_220250F44, sub_220250F98);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_13;
  }

  sub_22025134C(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_13;
  }

  sub_22025134C(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v22 = v21;
  v23 = *(*(v21 - 8) + 56);
  v24 = a1 + a4[10];

  return v23(v24, a2, a2, v22);
}

uint64_t sub_22020A174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22036F3C8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 16);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_22020A284(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22036F388();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22036F3C8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 16) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22020A3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036E5A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 64) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_22020A4A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22036E5A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 64) + 8) = a2;
  }

  return result;
}

uint64_t sub_22020A674(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  sub_220230718();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_13:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_14;
  }

  sub_22025AEB0(0, &qword_281266770, sub_22023D918, sub_22023D96C);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_13;
  }

  sub_22025AEB0(0, &qword_2812667F8, sub_22020218C, sub_2202021E4);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_13;
  }

  sub_22025AEB0(0, &qword_281266840, sub_220231080, sub_2202310D4);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_13;
  }

  sub_22025AEB0(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_13;
  }

  sub_22025AEB0(0, &qword_2812667B8, sub_22025AF2C, sub_22025AF80);
  v20 = v19;
  v21 = *(*(v19 - 8) + 48);
  v22 = a1 + a3[10];

  return v21(v22, a2, v20);
}

uint64_t sub_22020A9EC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_14:

    return v11(v12, a2, a2, v10);
  }

  sub_220230718();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_13:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_14;
  }

  sub_22025AEB0(0, &qword_281266770, sub_22023D918, sub_22023D96C);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_13;
  }

  sub_22025AEB0(0, &qword_2812667F8, sub_22020218C, sub_2202021E4);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_13;
  }

  sub_22025AEB0(0, &qword_281266840, sub_220231080, sub_2202310D4);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_13;
  }

  sub_22025AEB0(0, &qword_281266810, sub_220237C1C, sub_220237C70);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_13;
  }

  sub_22025AEB0(0, &qword_2812667B8, sub_22025AF2C, sub_22025AF80);
  v22 = v21;
  v23 = *(*(v21 - 8) + 56);
  v24 = a1 + a4[10];

  return v23(v24, a2, a2, v22);
}

uint64_t sub_22020AD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22036F3C8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_22020AE7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22036F388();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22036F3C8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22020AF84(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_24:

    return v9(v10, a2, v8);
  }

  sub_220230718();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_23:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_24;
  }

  sub_22025ECCC(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_23;
  }

  sub_22025ECCC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_23;
  }

  sub_22025ECCC(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_23;
  }

  sub_22025ECCC(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_23;
  }

  sub_22025ECCC(0, &qword_281266B00, sub_22025E1BC, sub_22025E210);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_23;
  }

  sub_22025ECCC(0, &qword_281266B18, sub_22025E414, sub_22025E468);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_23;
  }

  sub_22025ECCC(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_23;
  }

  sub_22025ECCC(0, &qword_281266760, sub_22025E8C4, sub_22025E918);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[13];
    goto LABEL_23;
  }

  sub_22025ECCC(0, &qword_281266710, sub_2202376F0, sub_220237744);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[14];
    goto LABEL_23;
  }

  sub_22025ECCC(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v25 = v24;
  v26 = *(*(v24 - 8) + 48);
  v27 = a1 + a3[15];

  return v26(v27, a2, v25);
}

uint64_t sub_22020B57C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220230578();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_24:

    return v11(v12, a2, a2, v10);
  }

  sub_220230718();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_23:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_24;
  }

  sub_22025ECCC(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_23;
  }

  sub_22025ECCC(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_23;
  }

  sub_22025ECCC(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_23;
  }

  sub_22025ECCC(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[9];
    goto LABEL_23;
  }

  sub_22025ECCC(0, &qword_281266B00, sub_22025E1BC, sub_22025E210);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[10];
    goto LABEL_23;
  }

  sub_22025ECCC(0, &qword_281266B18, sub_22025E414, sub_22025E468);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[11];
    goto LABEL_23;
  }

  sub_22025ECCC(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[12];
    goto LABEL_23;
  }

  sub_22025ECCC(0, &qword_281266760, sub_22025E8C4, sub_22025E918);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[13];
    goto LABEL_23;
  }

  sub_22025ECCC(0, &qword_281266710, sub_2202376F0, sub_220237744);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[14];
    goto LABEL_23;
  }

  sub_22025ECCC(0, &qword_281266858, sub_220236A30, sub_220236A84);
  v27 = v26;
  v28 = *(*(v26 - 8) + 56);
  v29 = a1 + a4[15];

  return v28(v29, a2, a2, v27);
}

uint64_t sub_22020BB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22036F388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22036F3C8();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_22020BC90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22036F388();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22036F3C8();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22020BD9C()
{
  MEMORY[0x223D7A5C0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22020BDD4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220230578();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_20:

    return v9(v10, a2, v8);
  }

  sub_220230718();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_19:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_20;
  }

  sub_220266184(0, &qword_281266728, sub_2202020B8, sub_220202110);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_19;
  }

  sub_220266184(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_19;
  }

  sub_220266184(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_19;
  }

  sub_220266184(0, &qword_281266858, sub_220236A30, sub_220236A84);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_19;
  }

  sub_220266184(0, &qword_281266718, sub_220236C88, sub_220236CDC);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[10];
    goto LABEL_19;
  }

  sub_220266184(0, &qword_281266788, sub_220265CD4, sub_220265D28);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[11];
    goto LABEL_19;
  }

  sub_220266184(0, &qword_281266820, sub_220265F2C, sub_220265F80);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[12];
    goto LABEL_19;
  }

  sub_220266184(0, &qword_281266848, sub_220266200, sub_220266254);
  v23 = v22;
  v24 = *(*(v22 - 8) + 48);
  v25 = a1 + a3[13];

  return v24(v25, a2, v23);
}