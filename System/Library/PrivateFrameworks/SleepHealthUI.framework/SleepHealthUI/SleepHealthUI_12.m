uint64_t sub_269D5BB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  sub_269D5C1E0(0, &qword_28034EA50, type metadata accessor for Alarm);
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v8 = type metadata accessor for Alarm();
  v7[18] = v8;
  v7[19] = *(v8 - 8);
  v7[20] = swift_task_alloc();
  sub_269D9A8E0();
  v7[21] = sub_269D9A8D0();
  v10 = sub_269D9A880();

  return MEMORY[0x2822009F8](sub_269D5BCA0, v10, v9);
}

uint64_t sub_269D5BCA0()
{
  v38 = v0;
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[12];

  v5 = v4;
  sub_269D912BC(v4, v3);
  v6 = (*(v2 + 48))(v3, 1, v1);
  v7 = v0[13];
  if (v6 == 1)
  {
    v8 = v0[18];
    v9 = v0[19];
    v10 = v0[16];
    v11 = v0[14];
    sub_269C5AA40(v0[17]);
    (*(v9 + 56))(v10, 1, 1, v8);
    v12 = OBJC_IVAR____TtC13SleepHealthUI13AlarmProvider_alarm;
    swift_beginAccess();
    sub_269D5C280(v10, v7 + v12);
    swift_endAccess();
    sub_269D5A744();
    sub_269C5AA40(v10);
    if (v11)
    {
      v13 = v0[14];
      v14 = v13;
      if (qword_28034D738 != -1)
      {
        swift_once();
      }

      v15 = sub_269D98250();
      __swift_project_value_buffer(v15, qword_280351208);
      v16 = v13;
      v17 = sub_269D98230();
      v18 = sub_269D9AB60();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v37 = v20;
        *v19 = 136446466;
        v21 = sub_269D9B4D0();
        v23 = sub_269C2EACC(v21, v22, &v37);

        *(v19 + 4) = v23;
        *(v19 + 12) = 2082;
        swift_getErrorValue();
        v24 = *(v0[6] - 8);
        v25 = swift_task_alloc();
        (*(v24 + 16))(v25);
        v26 = sub_269D9A660();
        v28 = v27;

        v29 = sub_269C2EACC(v26, v28, &v37);

        *(v19 + 14) = v29;
        _os_log_impl(&dword_269C18000, v17, v18, "[%{public}s] error retrieving upcoming alarm: %{public}s", v19, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D652460](v20, -1, -1);
        MEMORY[0x26D652460](v19, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
    v31 = v0[19];
    v30 = v0[20];
    v32 = v0[18];
    v33 = v0[16];
    sub_269C80C90(v0[17], v30);
    sub_269D5C300(v30, v33);
    (*(v31 + 56))(v33, 0, 1, v32);
    v34 = OBJC_IVAR____TtC13SleepHealthUI13AlarmProvider_alarm;
    swift_beginAccess();
    sub_269D5C280(v33, v7 + v34);
    swift_endAccess();
    sub_269D5A744();
    sub_269C5AA40(v33);
    sub_269D5C364(v30);
  }

  v35 = v0[1];

  return v35();
}

unint64_t sub_269D5C094()
{
  result = qword_280351540;
  if (!qword_280351540)
  {
    sub_269D97050();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280351540);
  }

  return result;
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_269D5C10C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_269C71C08;

  return sub_269D5BB54(a1, v4, v5, v6, v7, v9, v8);
}

void sub_269D5C1E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269D9AE60();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_269D5C234()
{
  result = qword_280351550;
  if (!qword_280351550)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280351550);
  }

  return result;
}

uint64_t sub_269D5C280(uint64_t a1, uint64_t a2)
{
  sub_269D5C1E0(0, &qword_28034EA50, type metadata accessor for Alarm);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_269D5C300(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Alarm();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269D5C364(uint64_t a1)
{
  v2 = type metadata accessor for Alarm();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269D5C3C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC13SleepHealthUI13AlarmProvider_alarm;
  v7 = type metadata accessor for Alarm();
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC13SleepHealthUI13AlarmProvider_alarmManager;
  *(v3 + v8) = [objc_allocWithZone(MEMORY[0x277D296D8]) init];
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v9 = qword_28034D738;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = sub_269D98250();
  __swift_project_value_buffer(v10, qword_280351208);
  v11 = sub_269D98230();
  v12 = sub_269D9AB80();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136446210;
    v15 = sub_269D9B4D0();
    v17 = sub_269C2EACC(v15, v16, &v24);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_269C18000, v11, v12, "[%{public}s] init", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x26D652460](v14, -1, -1);
    MEMORY[0x26D652460](v13, -1, -1);
  }

  v18 = objc_opt_self();
  v19 = [v18 defaultCenter];
  v20 = OBJC_IVAR____TtC13SleepHealthUI13AlarmProvider_alarmManager;
  [v19 addObserver:v3 selector:sel_handleAlarmChangeWithNotification_ name:*MEMORY[0x277D29598] object:*(v3 + OBJC_IVAR____TtC13SleepHealthUI13AlarmProvider_alarmManager)];

  v21 = [v18 defaultCenter];
  [v21 addObserver:v3 selector:sel_handleAlarmChangeWithNotification_ name:*MEMORY[0x277D295C8] object:*(v3 + v20)];

  v22 = [v18 defaultCenter];
  [v22 addObserver:v3 selector:sel_handleAlarmChangeWithNotification_ name:*MEMORY[0x277D295D8] object:*(v3 + v20)];

  return v3;
}

void sub_269D5C6A4()
{
  if (!qword_280C0B108)
  {
    sub_269D99790();
    v0 = sub_269D98A10();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0B108);
    }
  }
}

uint64_t type metadata accessor for SleepScoreCountingText()
{
  result = qword_280351568;
  if (!qword_280351568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269D5C75C()
{
  sub_269D5C6A4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_269D5C810@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = sub_269D990F0();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_269D99440();
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v45 = &v37[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = sub_269D99790();
  v5 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v7 = &v37[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = sub_269D99840();
  v8 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v10 = &v37[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_269D5D080();
  v50 = *(v11 - 8);
  v51 = v11;
  MEMORY[0x28223BE20](v11);
  v43 = &v37[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_269D5D9FC();
  v49 = v13;
  MEMORY[0x28223BE20](v13);
  v48 = &v37[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = v1[1];
  v44 = *v1;
  v16 = v44;
  KeyPath = swift_getKeyPath();

  sub_269D9A180();
  sub_269D98DF0();
  v39 = swift_getKeyPath();
  v71 = 0;
  v38 = swift_getKeyPath();
  v17 = swift_getKeyPath();
  v18 = v1[2];
  sub_269D9A250();
  v20 = v19;
  v22 = v21;
  v23 = v1[3];
  type metadata accessor for SleepScoreCountingText();
  sub_269C40D38(v7);
  sub_269D99820();
  (*(v5 + 8))(v7, v42);
  v24 = sub_269D99830();
  (*(v8 + 8))(v10, v41);
  Ascent = CTFontGetAscent(v24);
  Descent = CTFontGetDescent(v24);
  v27 = Ascent + Descent;
  CapHeight = CTFontGetCapHeight(v24);

  *&v53 = v16;
  *(&v53 + 1) = KeyPath;
  *&v54[0] = v15;
  *(&v54[3] + 8) = v65;
  *(&v54[4] + 8) = v66;
  *(&v54[5] + 8) = v67;
  *(&v54[6] + 8) = v68;
  *(v54 + 8) = v62;
  *(&v54[1] + 8) = v63;
  *(&v54[2] + 8) = v64;
  *(&v54[7] + 1) = v39;
  *&v55 = 1;
  BYTE8(v55) = 0;
  *&v56 = v38;
  *(&v56 + 1) = 0x3FB999999999999ALL;
  *&v57 = v17;
  BYTE8(v57) = 1;
  *&v58 = v18;
  *(&v58 + 1) = v18;
  *&v59 = v20;
  *(&v59 + 1) = v22;
  v60 = v23;
  v61 = Descent + (v27 - CapHeight) * -0.5;
  v29 = v45;
  sub_269D99420();
  sub_269D5D13C(0);
  v31 = v30;
  v32 = sub_269D5D55C(&qword_2803515C8, sub_269D5D13C, sub_269D5D520);
  v33 = v43;
  sub_269D99B80();
  (*(v46 + 8))(v29, v47);
  v69[12] = v58;
  v69[13] = v59;
  v69[14] = v60;
  v70 = v61;
  v69[8] = v54[7];
  v69[9] = v55;
  v69[10] = v56;
  v69[11] = v57;
  v69[4] = v54[3];
  v69[5] = v54[4];
  v69[6] = v54[5];
  v69[7] = v54[6];
  v69[0] = v53;
  v69[1] = v54[0];
  v69[2] = v54[1];
  v69[3] = v54[2];
  sub_269D5DAB8(v69);
  sub_269D990E0();
  sub_269D990D0();
  if (qword_28034D7D0 != -1)
  {
    swift_once();
  }

  sub_269D990C0();
  sub_269D990D0();
  *&v53 = v44;
  sub_269D990A0();
  sub_269D990D0();
  sub_269D99110();
  *&v53 = v31;
  *(&v53 + 1) = v32;
  swift_getOpaqueTypeConformance2();
  v34 = v48;
  v35 = v51;
  sub_269D99B40();

  (*(v50 + 8))(v33, v35);
  sub_269D98CF0();
  return sub_269C240E0(v34);
}

uint64_t sub_269D5CF80()
{
  v0 = sub_269D9A5E0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D9A570();
  v4 = sub_269D4A384(v3);
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  qword_280351558 = v4;
  unk_280351560 = v6;
  return result;
}

void sub_269D5D080()
{
  if (!qword_280351578)
  {
    sub_269D5D13C(255);
    sub_269D5D55C(&qword_2803515C8, sub_269D5D13C, sub_269D5D520);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_280351578);
    }
  }
}

void sub_269D5D18C()
{
  if (!qword_280351590)
  {
    sub_269D5D248(255, &qword_280351598, sub_269D5D218, &qword_2803515C0, MEMORY[0x277D839B0]);
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_280351590);
    }
  }
}

void sub_269D5D248(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    sub_269D5D4D0(255, a4, a5, MEMORY[0x277CE0860]);
    v8 = sub_269D98D00();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_269D5D2E0()
{
  if (!qword_2803515A8)
  {
    sub_269D5D360(255);
    sub_269D5D464(255, &qword_28034E270, &qword_28034E278, MEMORY[0x277D83B88]);
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_2803515A8);
    }
  }
}

void sub_269D5D388(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269D98D00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_269D5D3EC()
{
  if (!qword_2803515B8)
  {
    sub_269D5D464(255, &qword_28034E088, &qword_28034E090, MEMORY[0x277CE0AE0]);
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_2803515B8);
    }
  }
}

void sub_269D5D464(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_269D5D4D0(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_269D99530();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_269D5D4D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_269D5D55C(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_269D5D618()
{
  result = qword_2803515E0;
  if (!qword_2803515E0)
  {
    v1 = MEMORY[0x277D839B0];
    sub_269D5D248(255, &qword_280351598, sub_269D5D218, &qword_2803515C0, MEMORY[0x277D839B0]);
    sub_269D5D6E4();
    sub_269D5D998(&qword_280351610, &qword_2803515C0, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803515E0);
  }

  return result;
}

unint64_t sub_269D5D6E4()
{
  result = qword_2803515E8;
  if (!qword_2803515E8)
  {
    sub_269D5D218(255);
    sub_269D5D77C();
    sub_269D5D998(&qword_28034E2D8, &qword_28034E280, MEMORY[0x277D85048]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803515E8);
  }

  return result;
}

unint64_t sub_269D5D77C()
{
  result = qword_2803515F0;
  if (!qword_2803515F0)
  {
    sub_269D5D2E0();
    sub_269D5D55C(&qword_2803515F8, sub_269D5D360, sub_269D5D854);
    sub_269D5D948(&qword_28034E2D0, &qword_28034E270, &qword_28034E278, MEMORY[0x277D83B88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803515F0);
  }

  return result;
}

unint64_t sub_269D5D854()
{
  result = qword_280351600;
  if (!qword_280351600)
  {
    sub_269D5D3EC();
    sub_269D5D8F4();
    sub_269D5D948(&qword_28034E0D0, &qword_28034E088, &qword_28034E090, MEMORY[0x277CE0AE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280351600);
  }

  return result;
}

unint64_t sub_269D5D8F4()
{
  result = qword_280351608;
  if (!qword_280351608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280351608);
  }

  return result;
}

uint64_t sub_269D5D948(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_269D5D464(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_269D5D998(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_269D5D4D0(255, a2, a3, MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_269D5D9FC()
{
  if (!qword_280351618)
  {
    sub_269D5D080();
    sub_269D99540();
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_280351618);
    }
  }
}

uint64_t sub_269D5DA64@<X0>(void *a1@<X8>)
{
  result = sub_269D98F40();
  *a1 = v3;
  return result;
}

uint64_t sub_269D5DAB8(uint64_t a1)
{
  sub_269D5D13C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_269D5DB14()
{
  result = qword_280351620;
  if (!qword_280351620)
  {
    sub_269D5D9FC();
    sub_269D5D13C(255);
    sub_269D5D55C(&qword_2803515C8, sub_269D5D13C, sub_269D5D520);
    swift_getOpaqueTypeConformance2();
    sub_269D5DBFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280351620);
  }

  return result;
}

unint64_t sub_269D5DBFC()
{
  result = qword_28034E0A0;
  if (!qword_28034E0A0)
  {
    sub_269D99540();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034E0A0);
  }

  return result;
}

uint64_t SleepActivityConfigurationSectionBuilder.sections()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  return v1;
}

uint64_t SleepActivityConfigurationSectionBuilder.sleepTreatment()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  if (!v3)
  {
    return 0;
  }

  type metadata accessor for SleepSettingsModel();
  sub_269D5E228(&qword_28034F568, type metadata accessor for SleepSettingsModel);
  sub_269D98E40();
  type metadata accessor for WatchAppInstalledProvider();
  sub_269D5E228(&qword_280351628, type metadata accessor for WatchAppInstalledProvider);
  sub_269D98E40();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  sub_269D98760();
  v0 = *&v3[OBJC_IVAR____TtC13SleepHealthUI31SleepActivityConfigurationModel_watchAppInstalledProvider];
  sub_269D98760();
  v1 = v0;

  sub_269D5DEE0();
  sub_269D5E074();
  return sub_269D99FF0();
}

void sub_269D5DEE0()
{
  if (!qword_280351630)
  {
    sub_269D5DF48();
    sub_269D5DFA8(255);
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_280351630);
    }
  }
}

void sub_269D5DF48()
{
  if (!qword_280351638)
  {
    sub_269CD68A4(255);
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_280351638);
    }
  }
}

void sub_269D5E010(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_269D5E074()
{
  result = qword_280351650;
  if (!qword_280351650)
  {
    sub_269D5DEE0();
    sub_269D5E124();
    sub_269D5E228(&qword_280351668, sub_269D5DFA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280351650);
  }

  return result;
}

unint64_t sub_269D5E124()
{
  result = qword_280351658;
  if (!qword_280351658)
  {
    sub_269D5DF48();
    sub_269D5E1D4();
    sub_269D5E228(&qword_28034FD78, sub_269CD68A4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280351658);
  }

  return result;
}

unint64_t sub_269D5E1D4()
{
  result = qword_280351660;
  if (!qword_280351660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280351660);
  }

  return result;
}

uint64_t sub_269D5E228(unint64_t *a1, void (*a2)(uint64_t))
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

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void sub_269D5E4D0()
{
  v1 = [v0 textLabel];
  if (v1)
  {
    v2 = v1;
    [v1 setTextAlignment_];
  }

  v3 = [v0 textLabel];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() hk_appErrorColor];
    [v4 setTextColor_];
  }

  v6 = objc_allocWithZone(MEMORY[0x277D75348]);
  v9[4] = sub_269CC7C58;
  v9[5] = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_269CC7F6C;
  v9[3] = &block_descriptor_36;
  v7 = _Block_copy(v9);
  v8 = [v6 initWithDynamicProvider_];
  _Block_release(v7);

  [v0 setBackgroundColor_];
}

void sub_269D5E63C()
{
  v1 = v0;
  sub_269C4BDE4(0, &qword_280C0B440, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_269DA0D60;
  *(v2 + 32) = sub_269D9A630();
  *(v2 + 40) = v3;
  *(v2 + 48) = 0x7065656C53;
  *(v2 + 56) = 0xE500000000000000;
  strcpy((v2 + 64), "ScheduleEditor");
  *(v2 + 79) = -18;
  v11 = v2;
  sub_269C49A1C(&unk_287AA0128);
  sub_269C4BDE4(0, &qword_280C0B4F0, MEMORY[0x277D83940]);
  sub_269C4BE38();
  v4 = sub_269D9A520();
  v6 = v5;

  sub_269C4BEAC(&unk_287AA0148);
  v7 = sub_269D9A5F0();
  [v1 setAccessibilityIdentifier_];

  v8 = [v1 textLabel];
  if (v8)
  {
    v9 = v8;
    v12 = v6;

    MEMORY[0x26D650930](0x6554656C7469542ELL, 0xEA00000000007478);

    v10 = sub_269D9A5F0();

    [v9 setAccessibilityIdentifier_];
  }

  else
  {
  }
}

id ScheduleOccurrenceDeleteTableViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScheduleOccurrenceDeleteTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void ScheduleOccurrenceDeleteTableViewCell.apply(_:)(uint64_t a1)
{
  v1[OBJC_IVAR____TtC13SleepHealthUI37ScheduleOccurrenceDeleteTableViewCell_model] = *(a1 + 57);
  v2 = [v1 textLabel];
  if (v2)
  {
    v3 = v2;
    if (qword_280C0AE70 != -1)
    {
      swift_once();
    }

    sub_269D972C0();

    v4 = sub_269D9A5F0();

    [v3 setText_];
  }
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_269D5EA54(uint64_t a1, uint64_t a2)
{
  v2[OBJC_IVAR____TtC13SleepHealthUI37ScheduleOccurrenceDeleteTableViewCell_model] = 0;
  if (a2)
  {
    v3 = sub_269D9A5F0();
  }

  else
  {
    v3 = 0;
  }

  v10.receiver = v2;
  v10.super_class = type metadata accessor for ScheduleOccurrenceDeleteTableViewCell();
  v4 = objc_msgSendSuper2(&v10, sel_initWithStyle_reuseIdentifier_, 0, v3);

  v5 = v4;
  sub_269D5E4D0();
  v6 = [v5 textLabel];
  if (v6)
  {
    v7 = v6;
    if (qword_280C0AE70 != -1)
    {
      swift_once();
    }

    sub_269D972C0();

    v8 = sub_269D9A5F0();

    [v7 setText_];
  }

  sub_269D5E63C();

  return v5;
}

uint64_t Calendar.date(bySubtracting:from:)(uint64_t a1)
{
  v2 = sub_269D971F0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = _s10Foundation14DateComponentsV13SleepHealthUIE08calendarC0ShyAA8CalendarV9ComponentOGvgZ_0();
  sub_269D68968(v7, a1, v6);

  sub_269D97730();
  return (*(v3 + 8))(v6, v2);
}

uint64_t Calendar.timeComponents(from:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = MEMORY[0x277D83D88];
  sub_269D60AD8(0, &unk_28034D9A0, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v54 - v5;
  sub_269D60AD8(0, &unk_280C0BB50, MEMORY[0x277CC99E8], v3);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v54 - v8;
  v10 = sub_269D971F0();
  v64 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D60AD8(0, &qword_280C0BB60, MEMORY[0x277CC9578], v3);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v54 - v14;
  v16 = sub_269D97580();
  v62 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v60 = &v54 - v21;
  MEMORY[0x28223BE20](v20);
  v61 = &v54 - v22;
  sub_269D97150();
  if (v23 & 1) != 0 || (sub_269D971A0(), (v24) || (sub_269D97150(), (v25) || (sub_269D971A0(), (v26))
  {
    v27 = v63;
    v28 = *(v64 + 56);

    return v28(v27, 1, 1, v10);
  }

  else
  {
    sub_269D5F878(v15);
    v30 = v62;
    v31 = v16;
    if ((*(v62 + 48))(v15, 1, v16) == 1)
    {
      sub_269C67C78(v15);
    }

    else
    {
      v55 = *(v30 + 32);
      v56 = v30 + 32;
      v55(v61, v15, v16);
      v59 = sub_269D976E0();
      v58 = sub_269D974B0();
      sub_269D97170();
      if (v32 & 1) != 0 && (sub_269D97180(), (v33) && (sub_269D97130(), (v34))
      {
        (*(v64 + 16))(v12, a1, v10);
      }

      else
      {
        v35 = sub_269D977A0();
        (*(*(v35 - 8) + 56))(v9, 1, 1, v35);
        v36 = sub_269D97810();
        (*(*(v36 - 8) + 56))(v6, 1, 1, v36);
        v57 = sub_269D97150();
        sub_269D971A0();
        v31 = v16;
        sub_269D971D0();
      }

      v37 = sub_269D97110();
      (*(v64 + 8))(v12, v10);
      v39 = v58;
      v38 = v59;
      v40 = [v59 hksp:v58 previousDateBeforeDate:v37 matchingComponents:?];

      v41 = v62;
      if (v40)
      {
        sub_269D97540();

        v42 = v60;
        v55(v60, v19, v31);
        sub_269D60AD8(0, &qword_2803502B0, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
        v43 = sub_269D97780();
        v44 = v31;
        v45 = *(v43 - 8);
        v46 = *(v45 + 72);
        v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_269D9EBF0;
        v49 = v48 + v47;
        v50 = *(v45 + 104);
        v50(v49, *MEMORY[0x277CC9980], v43);
        v50(v49 + v46, *MEMORY[0x277CC99A0], v43);
        sub_269CF7250(v48);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v51 = v63;
        v52 = v61;
        sub_269D976B0();

        v53 = *(v41 + 8);
        v53(v42, v44);
        v53(v52, v44);
        return (*(v64 + 56))(v51, 0, 1, v10);
      }

      (*(v62 + 8))(v61, v31);
    }

    return (*(v64 + 56))(v63, 1, 1, v10);
  }
}

BOOL Calendar.dayPeriod(for:in:)(uint64_t a1)
{
  v2 = sub_269D97580();
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269D97780();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_269D976E0();
  v10 = sub_269D974B0();
  v11 = sub_269D97610();
  v12 = [v9 bs:v10 dayPeriodForDate:v11 inLocale:?];

  BSDayPeriod.simplified.getter(v12, &v29);
  if (v29 == 2)
  {
    (*(v6 + 104))(v8, *MEMORY[0x277CC9980], v5);
    v13 = sub_269D97790();
    (*(v6 + 8))(v8, v5);
    if (v13 - 10 >= 0xFFFFFFFFFFFFFFF9)
    {
      if (qword_280C0B218 != -1)
      {
        swift_once();
      }

      v14 = sub_269D98250();
      __swift_project_value_buffer(v14, qword_280C0B220);
      v16 = v26;
      v15 = v27;
      (*(v26 + 16))(v4, a1, v27);
      v17 = sub_269D98230();
      v18 = sub_269D9AB80();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v28 = v20;
        *v19 = 136315138;
        sub_269D60B3C(&qword_280C0B3E8, MEMORY[0x277CC9578]);
        v21 = sub_269D9B230();
        v23 = v22;
        (*(v16 + 8))(v4, v15);
        v24 = sub_269C2EACC(v21, v23, &v28);

        *(v19 + 4) = v24;
        _os_log_impl(&dword_269C18000, v17, v18, "[BSDayPeriod] overriding evening with morning for date: %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        MEMORY[0x26D652460](v20, -1, -1);
        MEMORY[0x26D652460](v19, -1, -1);
      }

      else
      {

        (*(v16 + 8))(v4, v15);
      }

      return v13 > 5;
    }
  }

  return v12;
}

uint64_t sub_269D5F878@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_269D97580();
  v15 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269D971F0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D97150();
  if (v9 & 1) != 0 || (v10 = sub_269D971A0(), (v11))
  {
    v12 = *(v15 + 56);

    return v12(a1, 1, 1, v2);
  }

  else
  {
    v14 = v10;
    _s10Foundation14DateComponentsV13SleepHealthUIE08calendarC0ShyAA8CalendarV9ComponentOGvgZ_0();
    sub_269D97570();
    sub_269D976C0();

    (*(v15 + 8))(v4, v2);
    sub_269D97160();
    sub_269D971B0();
    sub_269D971C0();
    sub_269D97140();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t Calendar.timeComponents(bySubtractingHours:from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_269D60AD8(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v29 - v5;
  v7 = sub_269D97580();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v29 - v12;
  sub_269D97150();
  if (v14 & 1) != 0 || (sub_269D971A0(), (v15))
  {
    v16 = sub_269D971F0();
    v17 = *(*(v16 - 8) + 56);

    return v17(a1, 1, 1, v16);
  }

  else
  {
    sub_269D5F878(v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_269C67C78(v6);
      v19 = sub_269D971F0();
      return (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
    }

    else
    {
      (*(v8 + 32))(v13, v6, v7);
      sub_269D974A0();
      sub_269D60AD8(0, &qword_2803502B0, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
      v20 = sub_269D97780();
      v21 = *(v20 - 8);
      v29[0] = *(v21 + 72);
      v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_269D9EBF0;
      v24 = v23 + v22;
      v25 = *MEMORY[0x277CC9980];
      v29[1] = v2;
      v26 = *(v21 + 104);
      v26(v24, v25, v20);
      v26(v24 + v29[0], *MEMORY[0x277CC99A0], v20);
      sub_269CF7250(v23);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_269D976C0();

      v27 = *(v8 + 8);
      v27(v10, v7);
      v27(v13, v7);
      v28 = sub_269D971F0();
      return (*(*(v28 - 8) + 56))(a1, 0, 1, v28);
    }
  }
}

uint64_t Calendar.dateComponents(byAdding:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  sub_269D60AD8(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  v11 = sub_269D97580();
  v31 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  v17 = MEMORY[0x277D84FA0];
  v33 = MEMORY[0x277D84FA0];
  v18 = _s10Foundation14DateComponentsV13SleepHealthUIE08calendarC0ShyAA8CalendarV9ComponentOGvgZ_0();
  v30 = a1;
  sub_269D68B88(v18, a1, &v33);

  v19 = v33;
  v33 = v17;
  v20 = _s10Foundation14DateComponentsV13SleepHealthUIE08calendarC0ShyAA8CalendarV9ComponentOGvgZ_0();
  sub_269D68B88(v20, a2, &v33);

  LOBYTE(v17) = sub_269D602A0(v33, v19);

  if (v17)
  {
    sub_269D97720();
    v21 = v31[6];
    if (v21(v10, 1, v11) == 1)
    {
      v7 = v10;
    }

    else
    {
      v24 = v10;
      v25 = v31[4];
      v25(v16, v24, v11);
      sub_269D97730();
      if (v21(v7, 1, v11) != 1)
      {
        v25(v13, v7, v11);
        v33 = MEMORY[0x277D84FA0];
        v26 = _s10Foundation14DateComponentsV13SleepHealthUIE08calendarC0ShyAA8CalendarV9ComponentOGvgZ_0();
        sub_269D68B88(v26, a2, &v33);

        v23 = v32;
        sub_269D976C0();

        v27 = v31[1];
        v27(v13, v11);
        v27(v16, v11);
        v22 = 0;
        goto LABEL_9;
      }

      (v31[1])(v16, v11);
    }

    v23 = v32;
    sub_269C67C78(v7);
    v22 = 1;
  }

  else
  {
    v22 = 1;
    v23 = v32;
  }

LABEL_9:
  v28 = sub_269D971F0();
  return (*(*(v28 - 8) + 56))(v23, v22, 1, v28);
}

uint64_t sub_269D602A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_269D97780();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v15 = a2 + 56;
  v16 = 1 << *(a2 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(a2 + 56);
  v39 = v5 + 32;
  v40 = (v16 + 63) >> 6;
  v43 = a1 + 56;
  v44 = v5 + 16;
  v45 = (v5 + 8);

  v20 = 0;
  v34 = a2 + 56;
  v35 = v13;
  v38 = a2;
  v36 = v5;
  v21 = v40;
  if (v18)
  {
    while (1)
    {
      v22 = v20;
LABEL_11:
      v23 = *(v5 + 72);
      v24 = *(a2 + 48) + v23 * (__clz(__rbit64(v18)) | (v22 << 6));
      v41 = *(v5 + 16);
      v42 = v23;
      v41(v13, v24, v4);
      (*(v5 + 32))(v10, v13, v4);
      v25 = *(a1 + 16);
      v37 = v45 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v26 = v10;
      if (!v25)
      {
        break;
      }

      sub_269D60B3C(&qword_2803502E0, MEMORY[0x277CC99D0]);
      v27 = sub_269D9A4D0();
      v28 = -1 << *(a1 + 32);
      v29 = v27 & ~v28;
      if (((*(v43 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
      {
        break;
      }

      v30 = a1;
      v18 &= v18 - 1;
      v31 = ~v28;
      while (1)
      {
        v41(v7, *(v30 + 48) + v29 * v42, v4);
        sub_269D60B3C(&qword_2803502E8, MEMORY[0x277CC99D0]);
        v32 = sub_269D9A560();
        v33 = *v45;
        (*v45)(v7, v4);
        if (v32)
        {
          break;
        }

        v29 = (v29 + 1) & v31;
        if (((*(v43 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
        {
          v33(v26, v4);
          goto LABEL_19;
        }
      }

      v10 = v26;
      result = (v33)(v26, v4);
      v20 = v22;
      a2 = v38;
      a1 = v30;
      v13 = v35;
      v5 = v36;
      v15 = v34;
      v21 = v40;
      if (!v18)
      {
        goto LABEL_8;
      }
    }

    (*v45)(v10, v4);
LABEL_19:
    v14 = 0;
LABEL_21:

    return v14;
  }

LABEL_8:
  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
      v14 = 1;
      goto LABEL_21;
    }

    v18 = *(v15 + 8 * v22);
    ++v20;
    if (v18)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t Calendar.dateComponents(bySubtracting:from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v38 = sub_269D971F0();
  v40 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D60AD8(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v33 - v11;
  v13 = sub_269D97580();
  v37 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v35 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v33 - v16;
  v18 = MEMORY[0x277D84FA0];
  v41 = MEMORY[0x277D84FA0];
  v19 = _s10Foundation14DateComponentsV13SleepHealthUIE08calendarC0ShyAA8CalendarV9ComponentOGvgZ_0();
  v36 = a1;
  sub_269D68B88(v19, a1, &v41);

  v20 = v41;
  v41 = v18;
  v21 = _s10Foundation14DateComponentsV13SleepHealthUIE08calendarC0ShyAA8CalendarV9ComponentOGvgZ_0();
  sub_269D68B88(v21, a2, &v41);

  LOBYTE(v18) = sub_269D602A0(v41, v20);

  if (v18)
  {
    sub_269D97720();
    v22 = v37[6];
    if (v22(v12, 1, v13) == 1)
    {
      v9 = v12;
      v24 = v38;
      v23 = v39;
    }

    else
    {
      v26 = v37[4];
      v33[1] = v37 + 4;
      v34 = a2;
      v33[0] = v26;
      v26(v17, v12, v13);
      v27 = v36;
      v24 = v38;
      (*(v40 + 16))(v6, v36, v38);
      v28 = _s10Foundation14DateComponentsV13SleepHealthUIE08calendarC0ShyAA8CalendarV9ComponentOGvgZ_0();
      sub_269D68968(v28, v27, v6);

      sub_269D97730();
      (*(v40 + 8))(v6, v24);
      if (v22(v9, 1, v13) != 1)
      {
        v29 = v35;
        (v33[0])(v35, v9, v13);
        v41 = MEMORY[0x277D84FA0];
        v30 = _s10Foundation14DateComponentsV13SleepHealthUIE08calendarC0ShyAA8CalendarV9ComponentOGvgZ_0();
        sub_269D68B88(v30, v34, &v41);

        v23 = v39;
        sub_269D976C0();

        v31 = v37[1];
        v31(v29, v13);
        v31(v17, v13);
        v25 = 0;
        return (*(v40 + 56))(v23, v25, 1, v24);
      }

      (v37[1])(v17, v13);
      v23 = v39;
    }

    sub_269C67C78(v9);
    v25 = 1;
  }

  else
  {
    v25 = 1;
    v24 = v38;
    v23 = v39;
  }

  return (*(v40 + 56))(v23, v25, 1, v24);
}

void sub_269D60AD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269D60B3C(unint64_t *a1, void (*a2)(uint64_t))
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

id static NSDateFormatter.makeTimeFormatter(locale:shouldCondense:)(uint64_t a1, char a2)
{
  v4 = objc_opt_self();
  v5 = sub_269D9A5F0();
  v6 = sub_269D97610();
  v7 = [v4 dateFormatFromTemplate:v5 options:0 locale:v6];

  if (v7)
  {
    v8 = sub_269D9A630();
    v10 = v9;
  }

  else
  {
    v10 = 0xE500000000000000;
    v8 = 0x616D6D3A68;
  }

  v11 = sub_269D62560(v8, v10, a1, a2 & 1);

  return v11;
}

uint64_t NSDateFormatter.localizedCommaSeparatedList(using:calendar:useShortSymbols:)(uint64_t a1, uint64_t a2, char a3)
{
  if (*MEMORY[0x277D623A0] == a1)
  {
    return 0;
  }

  v33 = sub_269D976E0();
  v5 = [v33 hksp:a1 orderedSleepWeekdaysForWeekdays:?];
  sub_269C1B0B8(0, &qword_28034DF10);
  v6 = sub_269D9A7E0();

  if (v6 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_269D9AF50())
  {
    v8 = 0;
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26D651260](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v10 = *(v6 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v13 = [v10 unsignedIntegerValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_269D62064(0, *(v9 + 2) + 1, 1, v9);
      }

      v15 = *(v9 + 2);
      v14 = *(v9 + 3);
      if (v15 >= v14 >> 1)
      {
        v9 = sub_269D62064((v14 > 1), v15 + 1, 1, v9);
      }

      *(v9 + 2) = v15 + 1;
      *&v9[8 * v15 + 32] = v13;
      ++v8;
      if (v12 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_21:

  v16 = *(v9 + 2);
  if (!v16)
  {
LABEL_43:

    v29 = objc_opt_self();
    v30 = sub_269D9A7D0();

    v31 = [v29 localizedStringByJoiningStrings_];

    v32 = sub_269D9A630();
    return v32;
  }

  v17 = 0;
  v18 = MEMORY[0x277D84F90];
  while (v17 < *(v9 + 2))
  {
    HKSPDayForWeekdays();
    if (a3)
    {
      result = [v35 shortStandaloneWeekdaySymbols];
      if (!result)
      {
        goto LABEL_51;
      }

      v19 = result;
      v20 = sub_269D9A7E0();

      result = NSGregorianCalendarDayForHKSPDay();
      if (result)
      {
        v21 = result - 1;
        if (__OFSUB__(result, 1))
        {
          goto LABEL_45;
        }

        if ((v21 & 0x8000000000000000) != 0)
        {
          goto LABEL_47;
        }

        if (v21 >= *(v20 + 16))
        {
          goto LABEL_50;
        }

        goto LABEL_38;
      }
    }

    else
    {
      result = [v35 standaloneWeekdaySymbols];
      if (!result)
      {
        goto LABEL_52;
      }

      v22 = result;
      v20 = sub_269D9A7E0();

      result = NSGregorianCalendarDayForHKSPDay();
      if (result)
      {
        v21 = result - 1;
        if (__OFSUB__(result, 1))
        {
          goto LABEL_46;
        }

        if ((v21 & 0x8000000000000000) != 0)
        {
          goto LABEL_48;
        }

        if (v21 >= *(v20 + 16))
        {
          goto LABEL_49;
        }

LABEL_38:
        v23 = v20 + 16 * v21;
        v24 = *(v23 + 32);
        v25 = *(v23 + 40);

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_269D61CB0(0, *(v18 + 16) + 1, 1, v18);
          v18 = result;
        }

        v27 = *(v18 + 16);
        v26 = *(v18 + 24);
        if (v27 >= v26 >> 1)
        {
          result = sub_269D61CB0((v26 > 1), v27 + 1, 1, v18);
          v18 = result;
        }

        *(v18 + 16) = v27 + 1;
        v28 = v18 + 16 * v27;
        *(v28 + 32) = v24;
        *(v28 + 40) = v25;
        goto LABEL_24;
      }
    }

LABEL_24:
    if (v16 == ++v17)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

uint64_t static NSDateFormatter.localizedList(using:calendar:standaloneFormatter:listItemFormatter:useShortSymbols:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (*MEMORY[0x277D623A0] == a1)
  {
    return 0;
  }

  v9 = sub_269D976E0();
  v10 = [v9 hksp:a1 localizedGroupingStringForWeekdays:?];
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    if (HKSPWeekdaysIsSingleDay())
    {
      v12 = HKSPDayForWeekdays();
      NSDateFormatter.standaloneWeekdaySymbol(for:)(v12);
      if (!v13)
      {

        return 0;
      }

      v14 = sub_269D9A5F0();

      v15 = [v14 hk_localizedFirstWordCapitalizedString];
    }

    else
    {
      NSDateFormatter.localizedCommaSeparatedList(using:calendar:useShortSymbols:)(a1, a2, a5 & 1);
      v14 = sub_269D9A5F0();

      v15 = [v14 hk_localizedFirstWordCapitalizedString];
    }

    v11 = v15;
  }

  v16 = sub_269D9A630();

  return v16;
}

id static NSDateFormatter.makeHourOnlyFormatter(locale:shouldCondense:)(uint64_t a1, char a2)
{
  v4 = objc_opt_self();
  v5 = sub_269D9A5F0();
  v6 = sub_269D97610();
  v7 = [v4 dateFormatFromTemplate:v5 options:0 locale:v6];

  if (v7)
  {
    v8 = sub_269D9A630();
    v10 = v9;
  }

  else
  {
    v10 = 0xE200000000000000;
    v8 = 24936;
  }

  v11 = sub_269D62560(v8, v10, a1, a2 & 1);

  return v11;
}

id sub_269D61314(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v2 setFormattingContext_];
  return v2;
}

char *sub_269D61370(uint64_t a1, SEL *a2)
{
  result = [v2 *a2];
  if (!result)
  {
    goto LABEL_12;
  }

  v4 = result;
  v5 = sub_269D9A7E0();

  result = NSGregorianCalendarDayForHKSPDay();
  if (!result)
  {

    return 0;
  }

  v6 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else if ((v6 & 0x8000000000000000) == 0)
  {
    if (v6 < *(v5 + 16))
    {
      v7 = *(v5 + 16 * v6 + 32);

      return v7;
    }

    goto LABEL_11;
  }

  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t Time.time.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Time.designator.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void __swiftcall Time.init(time:designator:designatorComesBeforeTime:)(SleepHealthUI::Time *__return_ptr retstr, Swift::String time, Swift::String_optional designator, Swift::Bool designatorComesBeforeTime)
{
  retstr->time = time;
  retstr->designator = designator;
  retstr->designatorComesBeforeTime = designatorComesBeforeTime;
}

void __swiftcall NSDateFormatter.time(hour:minute:)(SleepHealthUI::Time *__return_ptr retstr, Swift::Int hour, Swift::Int minute)
{
  v4 = v3;
  v48 = retstr;
  v49 = minute;
  v41 = hour;
  v5 = MEMORY[0x277D83D88];
  sub_269D627C8(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v50 = &v39 - v7;
  v8 = sub_269D97580();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D627C8(0, &unk_28034D9A0, MEMORY[0x277CC9A70], v5);
  MEMORY[0x28223BE20](v12 - 8);
  v42 = &v39 - v13;
  v14 = sub_269D971F0();
  v45 = *(v14 - 8);
  v46 = v14;
  MEMORY[0x28223BE20](v14);
  v44 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D627C8(0, &unk_280C0BB50, MEMORY[0x277CC99E8], v5);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v39 - v20;
  v22 = sub_269D977A0();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v39 - v28;
  v47 = v4;
  v30 = [v4 calendar];
  v43 = v23;
  if (v30)
  {
    v31 = v30;
    sub_269D97710();

    v39 = v9;
    v40 = v11;
    v32 = v8;
    v33 = *(v23 + 32);
    v33(v21, v25, v22);
    v34 = *(v23 + 56);
    v34(v21, 0, 1, v22);
    v33(v29, v21, v22);
    v8 = v32;
    v9 = v39;
    v11 = v40;
    v35 = v29;
  }

  else
  {
    v40 = v18;
    v34 = *(v23 + 56);
    v34(v21, 1, 1, v22);
    sub_269D97770();
    if ((*(v23 + 48))(v21, 1, v22) != 1)
    {
      sub_269D626BC(v21, &unk_280C0BB50, MEMORY[0x277CC99E8]);
    }

    v35 = v29;
    v18 = v40;
  }

  v34(v18, 1, 1, v22);
  v36 = sub_269D97810();
  (*(*(v36 - 8) + 56))(v42, 1, 1, v36);
  v37 = v44;
  sub_269D971D0();
  sub_269D97160();
  sub_269D971B0();
  v38 = v50;
  sub_269D97720();
  if ((*(v9 + 48))(v38, 1, v8) == 1)
  {
    sub_269D626BC(v50, &qword_280C0BB60, MEMORY[0x277CC9578]);
    sub_269D9B100();
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v11, v50, v8);
    NSDateFormatter.time(date:)(v48);
    (*(v9 + 8))(v11, v8);
    (*(v45 + 8))(v37, v46);
    (*(v43 + 8))(v35, v22);
  }
}

void NSDateFormatter.time(date:)(uint64_t a1@<X8>)
{
  v2 = v1;
  v18 = *MEMORY[0x277D85DE8];
  sub_269C1B0B8(0, &qword_280351678);
  v4 = sub_269D9AE00();
  v17 = 0;
  v5 = sub_269D974B0();
  v16 = v4;
  v6 = [v2 hksp:v5 timeStringFromDate:&v16 designatorString:&v17 designatorIsBeforeTime:?];

  v7 = v16;
  v8 = sub_269D9A630();
  v10 = v9;

  v11 = [v7 length];
  if (v11 < 1)
  {
    v12 = 0;
    v14 = 0;
  }

  else
  {
    v12 = sub_269D9A630();
    v14 = v13;
  }

  v15 = v17;

  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12;
  *(a1 + 24) = v14;
  *(a1 + 32) = v15;
}

char *sub_269D61CB0(char *result, int64_t a2, char a3, char *a4)
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
    sub_269C5C1B8(0, &qword_280C0B440);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_269D61DC0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_269D627C8(0, &qword_28034E100, sub_269C4C0D0, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_269C4C0D0();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_269D61F54(char *result, int64_t a2, char a3, char *a4)
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
    sub_269C5C1B8(0, &qword_280C0B448);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_269D62064(char *result, int64_t a2, char a3, char *a4)
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
    sub_269D627C8(0, qword_280351690, type metadata accessor for HKSPWeekdays, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_269D621C0(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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

  sub_269D627C8(0, a5, a6, MEMORY[0x277D84560]);
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

char *sub_269D62450(char *result, int64_t a2, char a3, char *a4)
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
    sub_269C5C1B8(0, &qword_280351680);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_269D62560(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    v4 = sub_269D9A720();
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      do
      {
        if ((sub_269D9A4F0() & 1) == 0)
        {
          MEMORY[0x26D650920](v6, v7);
        }

        v6 = sub_269D9A720();
        v7 = v8;
      }

      while (v8);
    }
  }

  else
  {
  }

  v9 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v10 = sub_269D97610();
  [v9 setLocale_];

  v11 = sub_269D9A5F0();

  [v9 setDateFormat_];

  return v9;
}

uint64_t sub_269D626BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_269D627C8(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_269D6272C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_269D62774(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_269D627C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269D6282C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_269D99040();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D63510(0, &qword_28034F8B8, MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_269CC6074(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_269D98CA0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_269D9AB70();
    v13 = sub_269D99590();
    sub_269D98200();

    sub_269D99030();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t DynamicStack.init(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  sub_269D63510(0, &qword_28034F8B8, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for DynamicStack();
  v7 = (a3 + *(result + 36));
  *v7 = a1;
  v7[1] = a2;
  return result;
}

uint64_t DynamicStack.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = sub_269D99F00();
  v33 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v11 = sub_269D99FC0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - v16;
  v18 = sub_269D992E0();
  v35 = *(v18 - 8);
  v36 = v18;
  MEMORY[0x28223BE20](v18);
  v34 = &v32 - v19;
  v20 = sub_269D62FBC();
  if (v20)
  {
    v21 = sub_269D991A0();
    MEMORY[0x28223BE20](v21);
    *(&v32 - 4) = v3;
    *(&v32 - 3) = v4;
    *(&v32 - 2) = v2;
    sub_269D99FB0();
    WitnessTable = swift_getWitnessTable();
    sub_269CE81C8(v14, v11, WitnessTable);
    v23 = *(v12 + 8);
    v23(v14, v11);
    sub_269CE81C8(v17, v11, WitnessTable);
    swift_getWitnessTable();
    v24 = v34;
    sub_269CE3A44(v14, v11);
    v23(v14, v11);
    v23(v17, v11);
  }

  else
  {
    MEMORY[0x28223BE20](v20);
    *(&v32 - 4) = v3;
    *(&v32 - 3) = v4;
    *(&v32 - 2) = v2;
    sub_269D99090();
    sub_269D99EF0();
    v25 = swift_getWitnessTable();
    sub_269CE81C8(v7, v5, v25);
    v26 = *(v33 + 8);
    v26(v7, v5);
    sub_269CE81C8(v10, v5, v25);
    swift_getWitnessTable();
    v24 = v34;
    sub_269CE3B3C(v7, v11, v5);
    v26(v7, v5);
    v26(v10, v5);
  }

  v27 = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  v38 = v27;
  v39 = v28;
  v29 = v36;
  v30 = swift_getWitnessTable();
  sub_269CE81C8(v24, v29, v30);
  return (*(v35 + 8))(v24, v29);
}

uint64_t sub_269D62FBC()
{
  v0 = sub_269D98CA0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  sub_269D6282C(&v10 - v5);
  (*(v1 + 104))(v3, *MEMORY[0x277CDF988], v0);
  sub_269D63584();
  v7 = sub_269D9A540();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  return v7 & 1;
}

uint64_t sub_269D63104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16[1] = a4;
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v16 - v11;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = type metadata accessor for DynamicStack();
  (*(a1 + *(v13 + 36)))();
  sub_269CE81C8(v9, a2, a3);
  v14 = *(v7 + 8);
  v14(v9, a2);
  sub_269CE81C8(v12, a2, a3);
  v14(v12, a2);
}

uint64_t sub_269D632F0(uint64_t a1)
{
  v2 = sub_269D98CA0();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_269D98EB0();
}

void sub_269D6345C()
{
  sub_269D63510(319, &qword_28034F7E8, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_269CFD578();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_269D63510(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_269D98CA0();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_269D63584()
{
  result = qword_280C0B658;
  if (!qword_280C0B658)
  {
    sub_269D98CA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B658);
  }

  return result;
}

id sub_269D635DC(void *a1)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = qword_280C0AE70;
  v3 = a1;
  if (v2 != -1)
  {
    swift_once();
  }

  sub_269D972C0();
  v4 = sub_269D9A5F0();

  v5 = [v3 hksp:v4 addNextButtonWithTitle:0xE000000000000000];

  return v5;
}

uint64_t sub_269D6373C()
{
  v1 = v0;
  v2 = [objc_opt_self() boldButton];
  [v2 addTarget:v1 action:sel_hksp_nextButtonTapped forControlEvents:64];
  v3 = v2;
  v4 = sub_269D9A5F0();
  [v3 setTitle:v4 forState:0];

  sub_269C4BDE4(0, &qword_280C0B440, MEMORY[0x277D84560]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_269DA0D60;
  *(v5 + 32) = sub_269D9A630();
  *(v5 + 40) = v6;
  *(v5 + 48) = 0x7065656C53;
  *(v5 + 56) = 0xE500000000000000;
  *(v5 + 64) = 0x696472616F626E4FLL;
  *(v5 + 72) = 0xEA0000000000676ELL;
  v7 = v3;
  sub_269C49A1C(&unk_287AA0158);
  sub_269C4BDE4(0, &qword_280C0B4F0, MEMORY[0x277D83940]);
  sub_269C4BE38();
  sub_269D9A520();

  sub_269C4BEAC(&unk_287AA0178);
  v8 = sub_269D9A5F0();

  [v7 setAccessibilityIdentifier_];

  v9 = [v1 hksp_presentationStyle];
  if (!v9 || v9 == 2)
  {
    goto LABEL_6;
  }

  if (v9 == 1)
  {
    v10 = BPSPillSelectedColor();
    if (v10)
    {
      v11 = v10;
      [v7 setTintColor_];
    }

LABEL_6:

    v12 = [v1 buttonTray];
    [v12 addButton_];

    return v7;
  }

  result = sub_269D9B290();
  __break(1u);
  return result;
}

id sub_269D639FC()
{
  v1 = v0;
  sub_269D65B48(0, &qword_280351750, MEMORY[0x277D75058], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v16 - v3;
  v5 = [objc_opt_self() buttonWithType_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_269D9AE10();
  v6 = sub_269D9AE20();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  sub_269D9AE30();
  v7 = [v5 titleLabel];
  if (v7)
  {
    v8 = v7;
    [v7 setTextAlignment_];
  }

  v9 = sub_269D9A5F0();
  [v5 setTitle:v9 forState:0];

  [v5 addTarget:v1 action:sel_hksp_contentViewButtonTapped forControlEvents:64];
  sub_269C4BDE4(0, &qword_280C0B440, MEMORY[0x277D84560]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_269DA0D60;
  *(v10 + 32) = sub_269D9A630();
  *(v10 + 40) = v11;
  *(v10 + 48) = 0x7065656C53;
  *(v10 + 56) = 0xE500000000000000;
  *(v10 + 64) = 0x696472616F626E4FLL;
  *(v10 + 72) = 0xEA0000000000676ELL;
  v16[1] = v10;
  sub_269C49A1C(&unk_287AA0188);
  sub_269C4BDE4(0, &qword_280C0B4F0, MEMORY[0x277D83940]);
  sub_269C4BE38();
  sub_269D9A520();

  sub_269C4BEAC(&unk_287AA01A8);
  v12 = sub_269D9A5F0();

  [v5 setAccessibilityIdentifier_];

  v13 = [v1 secondaryContentView];
  if (v13)
  {
    v14 = v13;
    [v13 addSubview_];
    [v5 hk:v14 alignConstraintsWithView:?];
  }

  return v5;
}

id sub_269D63D54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_269D9A630();
  v9 = v8;
  v10 = a1;
  v11 = a5(v7, v9);

  return v11;
}

void sub_269D63E54(void *a1)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = qword_280C0AE70;
  v4 = a1;
  if (v2 != -1)
  {
    swift_once();
  }

  sub_269D972C0();
  v3 = sub_269D9A5F0();

  [v4 hksp:v3 addSkipButtonWithTitle:0xE000000000000000];
}

void sub_269D63FA4()
{
  v1 = v0;
  v2 = [objc_opt_self() linkButton];
  [v2 addTarget:v1 action:sel_hksp_skipButtonTapped forControlEvents:64];
  v3 = sub_269D9A5F0();
  [v2 setTitle:v3 forState:0];

  sub_269C4BDE4(0, &qword_280C0B440, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_269DA0D60;
  *(v4 + 32) = sub_269D9A630();
  *(v4 + 40) = v5;
  *(v4 + 48) = 0x7065656C53;
  *(v4 + 56) = 0xE500000000000000;
  *(v4 + 64) = 0x696472616F626E4FLL;
  *(v4 + 72) = 0xEA0000000000676ELL;
  v6 = v2;
  sub_269C49A1C(&unk_287AA01B8);
  sub_269C4BDE4(0, &qword_280C0B4F0, MEMORY[0x277D83940]);
  sub_269C4BE38();
  sub_269D9A520();

  sub_269C4BEAC(&unk_287AA01D8);
  v7 = sub_269D9A5F0();

  [v6 setAccessibilityIdentifier_];

  v8 = [v1 buttonTray];
  [v8 addButton_];
}

uint64_t sub_269D641C0(void *a1)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269D9A630();
  v2 = a1;
  sub_269D63FA4();
}

uint64_t sub_269D642A0()
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

void sub_269D64334()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v0 action:sel_hksp_cancelButtonTapped_];
  sub_269C4BDE4(0, &qword_280C0B440, MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_269DA0D60;
  *(v3 + 32) = sub_269D9A630();
  *(v3 + 40) = v4;
  *(v3 + 48) = 0x7065656C53;
  *(v3 + 56) = 0xE500000000000000;
  *(v3 + 64) = 0x696472616F626E4FLL;
  *(v3 + 72) = 0xEA0000000000676ELL;
  v5 = v2;
  sub_269C49A1C(&unk_287AA01E8);
  sub_269C4BDE4(0, &qword_280C0B4F0, MEMORY[0x277D83940]);
  sub_269C4BE38();
  sub_269D9A520();

  sub_269C4BEAC(&unk_287AA0208);
  v6 = sub_269D9A5F0();

  [v5 setAccessibilityIdentifier_];

  v7 = [v1 navigationItem];
  [v7 setRightBarButtonItem_];
}

uint64_t sub_269D64528()
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

void sub_269D645B8()
{
  v3 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setTag_];
  v1 = [v0 contentView];
  [v1 addSubview_];

  v2 = [v0 contentView];
  [v3 hk:v2 alignConstraintsWithView:?];

  [v3 setHidden_];
  [v3 startAnimating];
}

void sub_269D646EC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

void sub_269D647B8(void *a1)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a1;
  v2 = [v7 contentView];
  v3 = [v2 viewWithTag_];

  if (v3)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      [v4 setHidden_];
      [v5 stopAnimating];
      [v5 removeFromSuperview];
    }

    v6 = v3;
  }

  else
  {

    v6 = v7;
  }
}

void sub_269D64908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  sub_269D972C0();
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v3;
  v7[5] = ObjectType;

  v23 = v3;
  v8 = sub_269D9A5F0();

  aBlock[4] = sub_269D659E8;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_269CECE18;
  aBlock[3] = &block_descriptor_37;
  v9 = _Block_copy(aBlock);

  v10 = objc_opt_self();
  v22 = [v10 actionWithTitle:v8 style:0 handler:{v9, 0xE000000000000000}];
  _Block_release(v9);

  sub_269C4BDE4(0, &qword_280C0B440, MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_269DA0D60;
  *(v11 + 32) = sub_269D9A630();
  *(v11 + 40) = v12;
  *(v11 + 48) = 0x7065656C53;
  *(v11 + 56) = 0xE500000000000000;
  *(v11 + 64) = 0x696472616F626E4FLL;
  *(v11 + 72) = 0xEA0000000000676ELL;
  aBlock[0] = v11;
  sub_269C49A1C(&unk_287AA0218);
  sub_269C4BDE4(0, &qword_280C0B4F0, MEMORY[0x277D83940]);
  sub_269C4BE38();
  sub_269D9A520();

  swift_arrayDestroy();
  v13 = sub_269D9A5F0();

  [v22 setAccessibilityIdentifier_];

  sub_269D972C0();
  v14 = sub_269D9A5F0();

  v15 = [v10 actionWithTitle:v14 style:1 handler:{0, 0xE000000000000000}];

  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_269DA0D60;
  *(v16 + 32) = sub_269D9A630();
  *(v16 + 40) = v17;
  *(v16 + 48) = 0x7065656C53;
  *(v16 + 56) = 0xE500000000000000;
  *(v16 + 64) = 0x696472616F626E4FLL;
  *(v16 + 72) = 0xEA0000000000676ELL;
  aBlock[0] = v16;
  sub_269C49A1C(&unk_287AA0258);
  sub_269D9A520();

  swift_arrayDestroy();
  v18 = sub_269D9A5F0();

  [v15 setAccessibilityIdentifier_];

  sub_269D972C0();
  v19 = sub_269D9A5F0();

  v20 = [objc_opt_self() alertControllerWithTitle:0 message:v19 preferredStyle:{0, 0xE000000000000000}];

  v21 = [v20 popoverPresentationController];
  [v21 setSourceItem_];

  [v20 addAction_];
  [v20 addAction_];
  [v23 presentViewController:v20 animated:1 completion:0];
}

void sub_269D64E98(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void *a4)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a2(isCurrentExecutor);
  v23 = a4;
  sub_269D65A0C();
  sub_269D65A58();
  v7 = a4;
  if (swift_dynamicCast())
  {
    sub_269C25520(v21, v24);
    v8 = v25;
    v9 = v26;
    __swift_project_boxed_opaque_existential_1Tm(v24, v25);
    if ((*(v9 + 16))(v8, v9))
    {
      v11 = v10;
      ObjectType = swift_getObjectType();
      (*(v11 + 8))(ObjectType, v11);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(v24);

      return;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  else
  {
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_269D65ABC(v21);
  }

  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v13 = sub_269D98250();
  __swift_project_value_buffer(v13, qword_280C0B728);
  v14 = sub_269D98230();
  v15 = sub_269D9AB70();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24[0] = v17;
    *v16 = 136446210;
    v18 = sub_269D9B4D0();
    v20 = sub_269C2EACC(v18, v19, v24);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_269C18000, v14, v15, "[%{public}s] No delegate found while attemping to cancel onboarding", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x26D652460](v17, -1, -1);
    MEMORY[0x26D652460](v16, -1, -1);
  }
}

uint64_t sub_269D65140(void *a1, uint64_t a2, uint64_t a3, const void *a4)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = _Block_copy(a4);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  swift_unknownObjectRetain();
  v9 = a1;
  sub_269D64908(a3, sub_269D659D8, v8);

  swift_unknownObjectRelease();
}

void sub_269D65254(void *a1, uint64_t a2, void *a3)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v6 = a3;
  v7 = a1;
  v8 = [v5 initWithImage_];
  [v8 setContentMode_];
  v9 = [v7 contentView];
  [v9 addSubview_];

  v10 = [v7 contentView];
  UIView.alignConstraints(to:insets:reduceBottomConstraintPriority:)(v10, 0, *MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24));
}

void sub_269D653C8(void *a1, uint64_t a2, void *a3)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v9 = a1;
  v6 = [v9 contentView];
  [v6 addSubview_];

  v7 = [v9 contentView];
  [v7 setClipsToBounds_];

  v8 = [v9 contentView];
  UIView.alignConstraints(to:insets:reduceBottomConstraintPriority:)(v8, 0, *MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24));
}

void OBWelcomeController.hksp_addHostedContentView<A>(hostedView:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_269D99560();
  MEMORY[0x28223BE20](v4);
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D991D0();
  (*(v5 + 16))(v8, a1, a2);
  v9 = sub_269D991C0();
  v10 = MEMORY[0x277CDE4B0];
  sub_269D65B48(0, &qword_280351718, MEMORY[0x277CDE4B0], MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_269D9EBE0;
  v12 = v19[0];
  sub_269D99550();
  v19[1] = v11;
  sub_269D65870();
  sub_269D65B48(0, &qword_280351728, v10, MEMORY[0x277D83940]);
  sub_269D658C8();
  sub_269D9AEF0();
  sub_269D991B0();
  v13 = v9;
  [v12 addChildViewController_];
  v14 = [v12 contentView];
  v15 = [v13 view];
  if (v15)
  {
    v16 = v15;
    [v14 addSubview_];

    [v13 didMoveToParentViewController_];
    v17 = [v13 view];

    if (v17)
    {
      v18 = [v12 contentView];
      [v17 hk:v18 alignConstraintsWithView:?];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_269D65870()
{
  result = qword_280351720;
  if (!qword_280351720)
  {
    sub_269D99560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280351720);
  }

  return result;
}

unint64_t sub_269D658C8()
{
  result = qword_280351730;
  if (!qword_280351730)
  {
    sub_269D65B48(255, &qword_280351728, MEMORY[0x277CDE4B0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280351730);
  }

  return result;
}

uint64_t sub_269D65950()
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 0;
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_269D65A0C()
{
  result = qword_280351738;
  if (!qword_280351738)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280351738);
  }

  return result;
}

unint64_t sub_269D65A58()
{
  result = qword_280351740;
  if (!qword_280351740)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280351740);
  }

  return result;
}

uint64_t sub_269D65ABC(uint64_t a1)
{
  sub_269D65B48(0, &qword_280351748, sub_269D65A58, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_269D65B48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for WeekResultsBuilder()
{
  result = qword_280351758;
  if (!qword_280351758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269D65C20()
{
  type metadata accessor for HKDayIndexRange(319);
  if (v0 <= 0x3F)
  {
    sub_269D977A0();
    if (v1 <= 0x3F)
    {
      sub_269C1B0B8(319, &qword_28034DE58);
      if (v2 <= 0x3F)
      {
        sub_269C1B0B8(319, &qword_28034DE60);
        if (v3 <= 0x3F)
        {
          sub_269D65D14();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_269D65D14()
{
  if (!qword_280351768)
  {
    sub_269C1B0B8(255, &qword_280C0AED8);
    v0 = sub_269D9A4A0();
    if (!v1)
    {
      atomic_store(v0, &qword_280351768);
    }
  }
}

void sub_269D65D8C()
{
  v1 = *(v0 + *(type metadata accessor for WeekResultsBuilder() + 36));
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  if (v4)
  {
    v5 = 0;
    v6 = __clz(__rbit64(v4));
    v7 = (v4 - 1) & v4;
    v8 = (v2 + 63) >> 6;
LABEL_9:
    v11 = *(*(v1 + 48) + 8 * v6);
    v12 = *(*(v1 + 56) + 8 * v6);

    if (!v7)
    {
      goto LABEL_12;
    }

    do
    {
LABEL_10:
      while (1)
      {
        v13 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v14 = v13 | (v5 << 6);
        v15 = *(*(v1 + 48) + 8 * v14);
        if (v15 < v11)
        {
          break;
        }

        if (!v7)
        {
          goto LABEL_12;
        }
      }

      v17 = *(*(v1 + 56) + 8 * v14);

      v12 = v17;
      v11 = v15;
    }

    while (v7);
    while (1)
    {
LABEL_12:
      v16 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        return;
      }

      if (v16 >= v8)
      {
        break;
      }

      v7 = *(v1 + 64 + 8 * v16);
      ++v5;
      if (v7)
      {
        v5 = v16;
        goto LABEL_10;
      }
    }

    v18 = [v12 sleepDurationGoal];
    if (v18)
    {
      v19 = v18;
      v20 = [objc_opt_self() secondUnit];
      [v19 doubleValueForUnit_];
    }

    else
    {
    }
  }

  else
  {
    v9 = 0;
    v8 = (v2 + 63) >> 6;
    while (v8 - 1 != v4)
    {
      v5 = v4 + 1;
      v10 = *(v1 + 72 + 8 * v4);
      v9 -= 64;
      ++v4;
      if (v10)
      {
        v7 = (v10 - 1) & v10;
        v6 = __clz(__rbit64(v10)) - v9;
        goto LABEL_9;
      }
    }
  }
}

id sub_269D65F84@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v111 = a1;
  v3 = sub_269D97580();
  v112 = *(v3 - 8);
  v113 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v110 = &v97[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v4);
  v109 = &v97[-v7];
  v8 = MEMORY[0x28223BE20](v6);
  v108 = &v97[-v9];
  v10 = MEMORY[0x28223BE20](v8);
  v107 = &v97[-v11];
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v97[-v13];
  MEMORY[0x28223BE20](v12);
  v16 = &v97[-v15];
  v17 = type metadata accessor for WeekResultsBuilder();
  v116 = v14;
  v117 = v17;
  v18 = *(v1 + *(v17 + 36));
  v19 = *(v18 + 16);
  v114 = v16;
  v115 = v1;
  if (v19)
  {
    v20 = sub_269D674DC(v19, 0);
    v21 = sub_269D67580(&v119, v20 + 4, v19, v18);

    result = sub_269D676D4();
    if (v21 != v19)
    {
      __break(1u);
      return result;
    }

    v16 = v114;
    v2 = v115;
  }

  v23 = objc_opt_self();
  sub_269C1B0B8(0, &qword_280C0AED8);
  v24 = sub_269D9A7D0();

  v26 = *v2;
  v25 = v2[1];
  v27 = [v23 sleepMetricsForDaySummaries:v24 inMorningIndexRange:{*v2, v25}];

  v28 = *(v117 + 20);
  v29 = objc_opt_self();
  v30 = sub_269D976E0();
  v31 = [v29 hk:v26 noonWithDayIndex:v30 calendar:?];

  sub_269D97540();
  v103 = v25;
  v32 = sub_269D9ABA0();
  v104 = v26;
  if (v33)
  {
    v34 = v26;
  }

  else
  {
    v34 = v32;
  }

  v105 = v28;
  v35 = sub_269D976E0();
  v36 = [v29 hk:v34 noonWithDayIndex:v35 calendar:?];

  v37 = v116;
  sub_269D97540();

  v38 = 0;
  if ([v27 sleepAnalysisCount] >= 2 && (v39 = objc_msgSend(v27, sel_averageSleepDuration)) != 0)
  {
    v40 = v39;
    v41 = [v39 hk_secondsNumber];

    [v41 doubleValue];
    v38 = v42;

    v43 = 0;
  }

  else
  {
    v43 = 1;
  }

  v44 = v112;
  v45 = v113;
  LODWORD(v113) = v43;
  sub_269D65D8C();
  v47 = v46;
  v102 = v48;
  if (qword_28034D750 != -1)
  {
    swift_once();
  }

  v106 = v27;
  v49 = sub_269D98250();
  __swift_project_value_buffer(v49, qword_280351238);
  v50 = *(v44 + 16);
  v51 = v107;
  v50(v107, v16, v45);
  v52 = v108;
  v50(v108, v37, v45);
  v53 = sub_269D98230();
  v54 = sub_269D9AB40();
  v55 = os_log_type_enabled(v53, v54);
  v112 = v47;
  if (v55)
  {
    v56 = swift_slowAlloc();
    v100 = v50;
    v57 = v56;
    v99 = swift_slowAlloc();
    v118[0] = v99;
    *v57 = 136447235;
    *(v57 + 4) = sub_269C2EACC(0xD000000000000012, 0x8000000269DAA9C0, v118);
    *(v57 + 12) = 2080;
    sub_269D67910(&qword_280C0B3E8, MEMORY[0x277CC9578]);
    v98 = v54;
    v58 = sub_269D9B230();
    v59 = v51;
    v61 = v60;
    v62 = *(v44 + 8);
    v101 = (v44 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (v62)(v59, v45);
    v63 = sub_269C2EACC(v58, v61, v118);

    *(v57 + 14) = v63;
    *(v57 + 22) = 2080;
    v64 = sub_269D9B230();
    v66 = v65;
    v108 = v62;
    (v62)(v52, v45);
    v67 = sub_269C2EACC(v64, v66, v118);

    *(v57 + 24) = v67;
    *(v57 + 32) = 2081;
    v119 = v38;
    LOBYTE(v120) = v113;
    sub_269D67A80(0, &qword_280C0B4E0, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    v68 = sub_269D9A660();
    v70 = sub_269C2EACC(v68, v69, v118);

    *(v57 + 34) = v70;
    v47 = v112;
    *(v57 + 42) = 2081;
    v119 = v47;
    v71 = v102;
    LOBYTE(v120) = v102 & 1;
    v72 = sub_269D9A660();
    v74 = sub_269C2EACC(v72, v73, v118);

    *(v57 + 44) = v74;
    _os_log_impl(&dword_269C18000, v53, v98, "[%{public}s] [%s-%s] average: %{private}s, mostRecentGoal: %{private}s", v57, 0x34u);
    v75 = v99;
    swift_arrayDestroy();
    MEMORY[0x26D652460](v75, -1, -1);
    v76 = v57;
    v50 = v100;
    MEMORY[0x26D652460](v76, -1, -1);
  }

  else
  {

    v78 = *(v44 + 8);
    v101 = (v44 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (v78)(v52, v45);
    v108 = v78;
    v77 = (v78)(v51, v45);
    v71 = v102;
  }

  MEMORY[0x28223BE20](v77);
  v79 = v115;
  *&v97[-32] = v115;
  *&v97[-24] = v47;
  LODWORD(v107) = v71 & 1;
  v97[-16] = v71 & 1;
  v104 = sub_269D66E2C(sub_269D676DC, &v97[-48], v104);
  v80 = v114;
  v50(v109, v114, v45);
  v81 = v116;
  v50(v110, v116, v45);
  v82 = type metadata accessor for WeekResults(0);
  v83 = v111;
  sub_269D96FB0();
  sub_269D66914();
  v85 = v84;
  v86 = v82[10];
  v87 = sub_269D977A0();
  (*(*(v87 - 8) + 16))(v83 + v86, v79 + v105, v87);
  v88 = v117;
  v89 = *(v79 + *(v117 + 32));
  v90 = objc_allocWithZone(MEMORY[0x277CCA958]);
  v91 = v89;
  v92 = [v90 init];
  [v92 setAllowedUnits_];
  [v92 setUnitsStyle_];

  v93 = v81;
  v94 = v108;
  (v108)(v93, v45);
  v94(v80, v45);
  v95 = *(v79 + *(v88 + 28));
  *v83 = v104;
  *(v83 + 8) = v38;
  *(v83 + 16) = v113;
  *(v83 + v82[7]) = v85;
  v96 = v83 + v82[8];
  *v96 = v112;
  *(v96 + 8) = v107;
  *(v83 + v82[9]) = 0x40AC200000000000;
  *(v83 + v82[11]) = v91;
  *(v83 + v82[12]) = v92;
  *(v83 + v82[13]) = v95;

  return v95;
}

void sub_269D66914()
{
  v1 = *(v0 + *(type metadata accessor for WeekResultsBuilder() + 36));
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  if (v4)
  {
    v5 = 0;
    v6 = __clz(__rbit64(v4));
    v7 = (v4 - 1) & v4;
    v8 = (v2 + 63) >> 6;
LABEL_9:
    v11 = *(*(v1 + 56) + 8 * v6);

    while (1)
    {
      v12 = v5;
      if (!v7)
      {
        break;
      }

LABEL_14:
      v13 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v14 = *(*(v1 + 56) + ((v5 << 9) | (8 * v13)));
      [v11 sleepDuration];
      v16 = v15;
      [v14 sleepDuration];
      if (v16 < v17)
      {

        v11 = v14;
      }

      else
      {
      }
    }

    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v8)
      {

        [v11 sleepDuration];

        return;
      }

      v7 = *(v1 + 64 + 8 * v5);
      ++v12;
      if (v7)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = 0;
    v8 = (v2 + 63) >> 6;
    while (v8 - 1 != v4)
    {
      v5 = v4 + 1;
      v10 = *(v1 + 72 + 8 * v4);
      v9 -= 64;
      ++v4;
      if (v10)
      {
        v7 = (v10 - 1) & v10;
        v6 = __clz(__rbit64(v10)) - v9;
        goto LABEL_9;
      }
    }
  }
}

void sub_269D66B0C(uint64_t a1@<X0>, uint64_t a2@<X1>, double a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v31 = a4;
  v30 = a3;
  v9 = sub_269D9A330();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_269D9A320();
  v13 = *(a2 + *(type metadata accessor for WeekResultsBuilder() + 36));
  v14 = sub_269D9A320();
  v15 = 0.0;
  if (*(v13 + 16))
  {
    v16 = sub_269C43418(v14);
    if (v17)
    {
      [*(*(v13 + 56) + 8 * v16) sleepDuration];
      v15 = v18;
    }
  }

  if (qword_28034D750 != -1)
  {
    swift_once();
  }

  v19 = sub_269D98250();
  __swift_project_value_buffer(v19, qword_280351238);
  (*(v10 + 16))(v12, a1, v9);
  v20 = sub_269D98230();
  v21 = sub_269D9AB40();
  if (os_log_type_enabled(v20, v21))
  {
    v28[1] = v5;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v32 = v23;
    *v22 = 136446979;
    *(v22 + 4) = sub_269C2EACC(0xD000000000000012, 0x8000000269DAA9C0, &v32);
    *(v22 + 12) = 2048;
    v24 = sub_269D9A320();
    (*(v10 + 8))(v12, v9);
    *(v22 + 14) = v24;
    *(v22 + 22) = 2049;
    *(v22 + 24) = v15;
    *(v22 + 32) = 1024;
    v25 = v31;
    v26 = v30;
    v27 = (v31 & 1) == 0 && v30 - *MEMORY[0x277CCCDC8] <= v15;
    *(v22 + 34) = v27;
    _os_log_impl(&dword_269C18000, v20, v21, "[%{public}s] [Index %ld] duration: %{private}f, met goal: %{BOOL}d", v22, 0x26u);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x26D652460](v23, -1, -1);
    MEMORY[0x26D652460](v22, -1, -1);
  }

  else
  {
    (*(v10 + 8))(v12, v9);

    v25 = v31;
    v26 = v30;
  }

  *a5 = v29;
  *(a5 + 8) = v15;
  *(a5 + 16) = v26;
  *(a5 + 24) = v25 & 1;
}

uint64_t sub_269D66E2C(void (*a1)(void *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v70 = a3;
  v59 = a2;
  v58 = a1;
  sub_269D67700();
  v64 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v63 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v62 = &v53 - v8;
  sub_269D67768();
  v10 = v9;
  MEMORY[0x28223BE20](v9);
  v60 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_269D9A330();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v74 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v72 = &v53 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v53 - v18;
  sub_269D677FC();
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = MEMORY[0x277D84F90];
  sub_269C754A0(0, 0, 0);
  v73 = v77;
  sub_269D9AB90();
  v24 = *(v21 + 44);
  v61 = v10;
  v25 = *(v10 + 36);
  v26 = sub_269D67910(&qword_2803514D0, MEMORY[0x277CCB6A8]);
  v65 = v25;
  v57 = v26;
  if (sub_269D9A560())
  {
LABEL_2:
    sub_269D67A20(v23, sub_269D677FC);
    return v73;
  }

  else
  {
    v55 = v19;
    v30 = *(v13 + 16);
    v29 = (v13 + 16);
    v28 = v30;
    v31 = v12;
    v32 = (v29 + 16);
    v56 = v29 - 8;
    v33 = v65;
    v54 = v29;
    v70 = v24;
    v71 = v23;
    v53 = v30;
    v69 = v29 + 16;
    while (1)
    {
      v28(v72, &v23[v24], v31);
      v34 = *v32;
      (*v32)(v74, &v23[v24], v31);
      v35 = sub_269D67910(&qword_280351780, MEMORY[0x277CCB6A8]);
      if ((sub_269D9A550() & 1) == 0)
      {
        break;
      }

      v66 = v4;
      v36 = v62;
      v28(v62, v23, v31);
      v37 = v28;
      v38 = v64;
      v37(v36 + *(v64 + 48), &v23[v33], v31);
      v39 = v63;
      sub_269D67958(v36, v63);
      v67 = *(v38 + 48);
      v68 = v35;
      v40 = v60;
      v34(v60, v39, v31);
      v23 = v56;
      v29 = *v56;
      (*v56)(v39 + v67, v31);
      sub_269D679BC(v36, v39);
      v34((v40 + *(v61 + 36)), (v39 + *(v38 + 48)), v31);
      (v29)(v39, v31);
      if ((sub_269D9A550() & 1) == 0)
      {
        goto LABEL_13;
      }

      v32 = v31;
      v41 = sub_269D9A530();
      sub_269D67A20(v40, sub_269D67768);
      if ((v41 & 1) == 0)
      {
        goto LABEL_14;
      }

      v75[0] = 1;
      sub_269D67910(&qword_280351798, MEMORY[0x277CCB6A8]);
      v42 = v74;
      sub_269D9AE70();
      (v29)(v42, v32);
      v23 = v55;
      v34(v55, v72, v32);
      v43 = v66;
      v58(v75, v23);
      if (v43)
      {
        goto LABEL_15;
      }

      (v29)(v23, v32);
      v44 = v75[0];
      v45 = v75[1];
      v46 = v75[2];
      v47 = v76;
      v48 = v73;
      v77 = v73;
      v50 = *(v73 + 16);
      v49 = *(v73 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_269C754A0((v49 > 1), v50 + 1, 1);
        v48 = v77;
      }

      *(v48 + 16) = v50 + 1;
      v73 = v48;
      v51 = v48 + 32 * v50;
      *(v51 + 32) = v44;
      *(v51 + 40) = v45;
      *(v51 + 48) = v46;
      *(v51 + 56) = v47;
      v24 = v70;
      v23 = v71;
      v33 = v65;
      v31 = v32;
      v52 = sub_269D9A560();
      v4 = 0;
      v29 = v54;
      v28 = v53;
      v32 = v69;
      if (v52)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    (v29)(v23, v32);
    sub_269D67A20(v71, sub_269D677FC);

    __break(1u);
  }

  return result;
}

void *sub_269D674DC(uint64_t a1, uint64_t a2)
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

  sub_269D67A80(0, &qword_280C0AD70, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_269D67580(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_269D67700()
{
  if (!qword_280351770)
  {
    sub_269D9A330();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280351770);
    }
  }
}

void sub_269D67768()
{
  if (!qword_280351778)
  {
    sub_269D9A330();
    sub_269D67910(&qword_280351780, MEMORY[0x277CCB6A8]);
    v0 = sub_269D9AA60();
    if (!v1)
    {
      atomic_store(v0, &qword_280351778);
    }
  }
}

void sub_269D677FC()
{
  if (!qword_280351788)
  {
    sub_269D67768();
    sub_269D67860();
    v0 = sub_269D9B0F0();
    if (!v1)
    {
      atomic_store(v0, &qword_280351788);
    }
  }
}

unint64_t sub_269D67860()
{
  result = qword_280351790;
  if (!qword_280351790)
  {
    sub_269D67768();
    sub_269D67910(&qword_280351798, MEMORY[0x277CCB6A8]);
    sub_269C3C8AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280351790);
  }

  return result;
}

uint64_t sub_269D67910(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_269D67958(uint64_t a1, uint64_t a2)
{
  sub_269D67700();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269D679BC(uint64_t a1, uint64_t a2)
{
  sub_269D67700();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269D67A20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_269D67A80(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t FloatingPoint.rounded(_:toNearest:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  sub_269D9A4B0();
  sub_269D9A4C0();
  v10 = *(v4 + 8);
  v10(v6, a3);
  sub_269D9A9B0();
  return (v10)(v9, a3);
}

uint64_t sub_269D67C24@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_269D971F0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 16);
  v9(v8, v2, v5);
  v10 = sub_269D971A0();
  if (v11)
  {
    return (*(v6 + 32))(a2, v8, v5);
  }

  v12 = lrint(v10 / a1);
  result = a1 * v12;
  if ((a1 * v12) >> 64 != (a1 * v12) >> 63)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  sub_269D971B0();
  v14 = sub_269D97150();
  if ((v15 & 1) == 0)
  {
    v16 = v14;
    result = sub_269D971A0();
    if ((v17 & 1) == 0)
    {
      if (result != 60 || !__OFADD__(v16, 1))
      {
        v9(a2, v8, v5);
        sub_269D97160();
        sub_269D971B0();
        return (*(v6 + 8))(v8, v5);
      }

      goto LABEL_11;
    }
  }

  return (*(v6 + 32))(a2, v8, v5);
}

uint64_t static DateComponents.hourAndMinuteComponents.getter()
{
  sub_269D6B1AC(0, &qword_2803502B0, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
  v0 = sub_269D97780();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_269D9EBF0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277CC9980], v0);
  v6(v5 + v2, *MEMORY[0x277CC99A0], v0);
  v7 = sub_269CF7250(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v7;
}

uint64_t DateComponents.timeComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x277D83D88];
  sub_269D6B1AC(0, &unk_28034D9A0, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  sub_269D6B1AC(0, &unk_280C0BB50, MEMORY[0x277CC99E8], v3);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  sub_269D97170();
  if (v10 & 1) != 0 && (sub_269D97180(), (v11) && (sub_269D97130(), (v12))
  {
    v13 = sub_269D971F0();
    v14 = *(*(v13 - 8) + 16);

    return v14(a1, v1, v13);
  }

  else
  {
    v16 = sub_269D977A0();
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
    v17 = sub_269D97810();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
    sub_269D97150();
    sub_269D971A0();
    return sub_269D971D0();
  }
}

uint64_t DateComponents.calendarComponents.getter()
{
  v3 = MEMORY[0x277D84FA0];
  v1 = _s10Foundation14DateComponentsV13SleepHealthUIE08calendarC0ShyAA8CalendarV9ComponentOGvgZ_0();
  sub_269D68B88(v1, v0, &v3);

  return v3;
}

void static DateComponents.timeComponents(fromHours:)(double a1)
{
  v2 = MEMORY[0x277D83D88];
  sub_269D6B1AC(0, &unk_28034D9A0, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  sub_269D6B1AC(0, &unk_280C0BB50, MEMORY[0x277CC99E8], v2);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  if (a1 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = round((a1 - a1) * 60.0);
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_10;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v9 < 9.22337204e18)
  {
    v10 = sub_269D977A0();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    v11 = sub_269D97810();
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    sub_269D971D0();
    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t DateComponents.hourAndMinute.getter()
{
  v0 = sub_269D97150();
  if (v1)
  {
    return 0;
  }

  v2 = v0;
  sub_269D971A0();
  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_269D68570(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a2)
    {
      return 0;
    }

    return 0;
  }

  if (a2)
  {
    return 0;
  }

  v5 = -1;
  if (a3 >= a1)
  {
    v5 = 1;
  }

  if (a3 == a1)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t static DateComponents.floatingCalendarComponents.getter()
{
  sub_269D6B1AC(0, &qword_2803502B0, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
  v0 = sub_269D97780();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_269DA7DB0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277CC9978], v0);
  v6(v5 + v2, *MEMORY[0x277CC9988], v0);
  v6(v5 + 2 * v2, *MEMORY[0x277CC9998], v0);
  v6(v5 + 3 * v2, *MEMORY[0x277CC9968], v0);
  v6(v5 + 4 * v2, *MEMORY[0x277CC9980], v0);
  v6(v5 + 5 * v2, *MEMORY[0x277CC99A0], v0);
  v6(v5 + 6 * v2, *MEMORY[0x277CC99A8], v0);
  v7 = sub_269CF7250(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v7;
}

uint64_t static DateComponents.timeComponents.getter()
{
  sub_269D6B1AC(0, &qword_2803502B0, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
  v0 = sub_269D97780();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_269DA0D60;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277CC9980], v0);
  v6(v5 + v2, *MEMORY[0x277CC99A0], v0);
  v6(v5 + 2 * v2, *MEMORY[0x277CC99A8], v0);
  v7 = sub_269CF7250(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v7;
}

uint64_t sub_269D68968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22[1] = a3;
  v22[4] = a2;
  v4 = sub_269D97780();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v22 - v9;
  v11 = a1 + 56;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 56);
  v15 = (v12 + 63) >> 6;
  v22[2] = v5 + 32;
  v22[3] = v5 + 16;
  v23 = a1;

  v17 = 0;
  while (v14)
  {
LABEL_10:
    (*(v5 + 16))(v10, *(v23 + 48) + *(v5 + 72) * (__clz(__rbit64(v14)) | (v17 << 6)), v4);
    (*(v5 + 32))(v8, v10, v4);
    v19 = sub_269D97190();
    if ((v20 & 1) == 0 && v19 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = __OFSUB__(0, v19);
      result = -v19;
      if (v21)
      {
        goto LABEL_16;
      }

      sub_269D971E0();
    }

    v14 &= v14 - 1;
    result = (*(v5 + 8))(v8, v4);
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
    }

    v14 = *(v11 + 8 * v18);
    ++v17;
    if (v14)
    {
      v17 = v18;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_269D68B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v35 = a2;
  v4 = sub_269D97780();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v31 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v30 = &v29 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  MEMORY[0x28223BE20](v12);
  v34 = &v29 - v13;
  v14 = a1 + 56;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 56);
  v18 = (v15 + 63) >> 6;
  v33 = v5 + 32;
  v37 = v5 + 16;
  v38 = (v5 + 8);
  v36 = a1;

  v20 = 0;
  while (v17)
  {
LABEL_11:
    v23 = *(v5 + 16);
    v24 = v34;
    v23(v34, *(v36 + 48) + *(v5 + 72) * (__clz(__rbit64(v17)) | (v20 << 6)), v4);
    (*(v5 + 32))(v11, v24, v4);
    v25 = sub_269D97190();
    if ((v26 & 1) != 0 || v25 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = *v38;
    }

    else
    {
      v27 = v31;
      v23(v31, v11, v4);
      v28 = v30;
      sub_269D692FC(v30, v27);
      v21 = *v38;
      (*v38)(v28, v4);
    }

    v17 &= v17 - 1;
    result = (v21)(v11, v4);
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v18)
    {
    }

    v17 = *(v14 + 8 * v22);
    ++v20;
    if (v17)
    {
      v20 = v22;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t DateComponents.enumerate(components:block:)(uint64_t a1, void (*a2)(char *, uint64_t, void), uint64_t a3)
{
  v24 = a3;
  v23 = a2;
  v4 = sub_269D97780();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v22 - v9;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 56);
  v14 = (v11 + 63) >> 6;
  v22[1] = v5 + 32;
  v22[2] = v5 + 16;
  v22[0] = v5 + 8;

  for (i = 0; v13; result = (*(v5 + 8))(v7, v4))
  {
    v17 = i;
LABEL_9:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    (*(v5 + 16))(v10, *(a1 + 48) + *(v5 + 72) * (v18 | (v17 << 6)), v4);
    (*(v5 + 32))(v7, v10, v4);
    v19 = sub_269D97190();
    if (v19 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = 0;
    }

    else
    {
      v21 = v19;
    }

    if (v20)
    {
      v21 = v19;
    }

    v23(v7, v21, v20 & 1 | (v19 == 0x7FFFFFFFFFFFFFFFLL));
  }

  while (1)
  {
    v17 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
    }

    v13 = *(a1 + 56 + 8 * v17);
    ++i;
    if (v13)
    {
      i = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_269D69064()
{
  v0 = sub_269D97150();
  if (v1)
  {
    return 0;
  }

  v2 = v0;
  sub_269D971A0();
  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_269D690B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_269D9B350();
  sub_269D9A6A0();
  v8 = sub_269D9B390();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_269D9B280() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_269D69DC4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_269D69204(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  sub_269D9B350();
  MEMORY[0x26D6515B0](a2);
  v6 = sub_269D9B390();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_269D69F44(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_269D692FC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_269D97780();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_269D6B2D8(&qword_2803502E0, MEMORY[0x277CC99D0]);
  v33 = a2;
  v11 = sub_269D9A4D0();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_269D6B2D8(&qword_2803502E8, MEMORY[0x277CC99D0]);
      v21 = sub_269D9A560();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_269D6A0A0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_269D695DC()
{
  v1 = v0;
  v2 = *v0;
  sub_269D6B320();
  result = sub_269D9AFC0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_269D9B350();
      sub_269D9A6A0();
      result = sub_269D9B390();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_269D69830()
{
  v1 = v0;
  v2 = *v0;
  sub_269D6B244();
  result = sub_269D9AFC0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_269D9B350();
      MEMORY[0x26D6515B0](v16);
      result = sub_269D9B390();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_269D69A74()
{
  v1 = v0;
  v35 = sub_269D97780();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_269CF8680();
  result = sub_269D9AFC0();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_269D6B2D8(&qword_2803502E0, MEMORY[0x277CC99D0]);
      result = sub_269D9A4D0();
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
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
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
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_269D69DC4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_269D695DC();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_269D6A344();
      goto LABEL_16;
    }

    sub_269D6A7F0();
  }

  v10 = *v4;
  sub_269D9B350();
  sub_269D9A6A0();
  result = sub_269D9B390();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_269D9B280();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_269D9B2B0();
  __break(1u);
  return result;
}

void sub_269D69F44(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_269D69830();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_269D6A494();
      a2 = v7;
      goto LABEL_12;
    }

    sub_269D6AA1C();
  }

  v8 = *v3;
  sub_269D9B350();
  MEMORY[0x26D6515B0](a1);
  v9 = sub_269D9B390();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for HKCategoryValueSleepAnalysis(0);
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != a1)
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
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = a1;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_269D9B2B0();
  __break(1u);
}

uint64_t sub_269D6A0A0(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_269D97780();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_269D69A74();
  }

  else
  {
    if (v12 > v11)
    {
      sub_269D6A5C8();
      goto LABEL_12;
    }

    sub_269D6AC30();
  }

  v13 = *v3;
  sub_269D6B2D8(&qword_2803502E0, MEMORY[0x277CC99D0]);
  v14 = sub_269D9A4D0();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_269D6B2D8(&qword_2803502E8, MEMORY[0x277CC99D0]);
      v22 = sub_269D9A560();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_269D9B2B0();
  __break(1u);
  return result;
}

void *sub_269D6A344()
{
  v1 = v0;
  sub_269D6B320();
  v2 = *v0;
  v3 = sub_269D9AFB0();
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
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

void *sub_269D6A494()
{
  v1 = v0;
  sub_269D6B244();
  v2 = *v0;
  v3 = sub_269D9AFB0();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
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

void *sub_269D6A5C8()
{
  v1 = v0;
  v2 = sub_269D97780();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CF8680();
  v6 = *v0;
  v7 = sub_269D9AFB0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_269D6A7F0()
{
  v1 = v0;
  v2 = *v0;
  sub_269D6B320();
  result = sub_269D9AFC0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_269D9B350();

      sub_269D9A6A0();
      result = sub_269D9B390();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_269D6AA1C()
{
  v1 = v0;
  v2 = *v0;
  sub_269D6B244();
  result = sub_269D9AFC0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      sub_269D9B350();
      MEMORY[0x26D6515B0](v15);
      result = sub_269D9B390();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_269D6AC30()
{
  v1 = v0;
  v32 = sub_269D97780();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_269CF8680();
  v6 = sub_269D9AFC0();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_269D6B2D8(&qword_2803502E0, MEMORY[0x277CC99D0]);
      result = sub_269D9A4D0();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t _s10Foundation14DateComponentsV13SleepHealthUIE08calendarC0ShyAA8CalendarV9ComponentOGvgZ_0()
{
  sub_269D6B1AC(0, &qword_2803502B0, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
  v0 = sub_269D97780();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_269DAAA00;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277CC9978], v0);
  v6(v5 + v2, *MEMORY[0x277CC9988], v0);
  v6(v5 + 2 * v2, *MEMORY[0x277CC9998], v0);
  v6(v5 + 3 * v2, *MEMORY[0x277CC9968], v0);
  v6(v5 + 4 * v2, *MEMORY[0x277CC9980], v0);
  v6(v5 + 5 * v2, *MEMORY[0x277CC99A0], v0);
  v6(v5 + 6 * v2, *MEMORY[0x277CC99A8], v0);
  v6(v5 + 7 * v2, *MEMORY[0x277CC99C0], v0);
  v6(v5 + 8 * v2, *MEMORY[0x277CC99C8], v0);
  v7 = sub_269CF7250(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v7;
}

void sub_269D6B1AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269D6B244()
{
  if (!qword_2803517A0)
  {
    type metadata accessor for HKCategoryValueSleepAnalysis(255);
    sub_269D6B2D8(&qword_2803501F8, type metadata accessor for HKCategoryValueSleepAnalysis);
    v0 = sub_269D9AFE0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803517A0);
    }
  }
}

uint64_t sub_269D6B2D8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_269D6B320()
{
  if (!qword_2803517A8)
  {
    v0 = sub_269D9AFE0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803517A8);
    }
  }
}

uint64_t sub_269D6B3BC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  return v1;
}

uint64_t sub_269D6B430()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_269D98890();
}

void (*sub_269D6B49C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_269D98870();
  return sub_269C458D0;
}

uint64_t sub_269D6B540()
{
  swift_beginAccess();
  sub_269D6BD50(0, &qword_28034E680, sub_269D6BCE8, MEMORY[0x277CBCED0]);
  sub_269D98850();
  return swift_endAccess();
}

uint64_t sub_269D6B5DC(uint64_t a1)
{
  sub_269D6BD50(0, &qword_2803517D0, sub_269D6BCE8, MEMORY[0x277CBCEC0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  sub_269D6BD50(0, &qword_28034E680, sub_269D6BCE8, MEMORY[0x277CBCED0]);
  sub_269D98860();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_269D6B7A4()
{
  swift_beginAccess();
  sub_269D6BD50(0, &qword_28034E680, sub_269D6BCE8, MEMORY[0x277CBCED0]);
  sub_269D98850();
  return swift_endAccess();
}

uint64_t sub_269D6B83C(uint64_t a1)
{
  sub_269D6BD50(0, &qword_2803517D0, sub_269D6BCE8, MEMORY[0x277CBCEC0]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v8 - v6, a1, v3, v5);
  swift_beginAccess();
  sub_269D6BD50(0, &qword_28034E680, sub_269D6BCE8, MEMORY[0x277CBCED0]);
  sub_269D98860();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

void (*sub_269D6B9B8(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_269D6BD50(0, &qword_2803517D0, sub_269D6BCE8, MEMORY[0x277CBCEC0]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC13SleepHealthUI13LocationModel__currentLocation;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_269D6BD50(0, &qword_28034E680, sub_269D6BCE8, MEMORY[0x277CBCED0]);
  v5[16] = v11;
  sub_269D98850();
  swift_endAccess();
  return sub_269C45F6C;
}

id LocationModel.init(debugIdentifier:)(uint64_t a1, uint64_t a2)
{
  sub_269D6BD50(0, &qword_28034E680, sub_269D6BCE8, MEMORY[0x277CBCED0]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  *&v2[OBJC_IVAR____TtC13SleepHealthUI13LocationModel_locationManager] = 0;
  v10 = OBJC_IVAR____TtC13SleepHealthUI13LocationModel__currentLocation;
  v16 = 0;
  sub_269D6BCE8();
  sub_269D98840();
  (*(v7 + 32))(&v2[v10], v9, v6);
  *&v2[OBJC_IVAR____TtC13SleepHealthUI13LocationModel_inUseAssertion] = 0;
  v2[OBJC_IVAR____TtC13SleepHealthUI13LocationModel_hasRequestedAuthorization] = 0;
  v11 = &v2[OBJC_IVAR____TtC13SleepHealthUI13LocationModel_debugIdentifier];
  *v11 = a1;
  v11[1] = a2;
  v12 = type metadata accessor for LocationModel();
  v15.receiver = v2;
  v15.super_class = v12;
  return objc_msgSendSuper2(&v15, sel_init);
}

void sub_269D6BCE8()
{
  if (!qword_2803517C0)
  {
    sub_269C1B0B8(255, &qword_28034E668);
    v0 = sub_269D9AE60();
    if (!v1)
    {
      atomic_store(v0, &qword_2803517C0);
    }
  }
}

void sub_269D6BD50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for LocationModel()
{
  result = qword_280351800;
  if (!qword_280351800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269D6BE00()
{
  v1 = v0;
  swift_getObjectType();
  v2 = OBJC_IVAR____TtC13SleepHealthUI13LocationModel_locationManager;
  if (!*&v0[OBJC_IVAR____TtC13SleepHealthUI13LocationModel_locationManager])
  {
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v3 = sub_269D98250();
    __swift_project_value_buffer(v3, qword_280351208);
    v4 = v0;
    v5 = sub_269D98230();
    v6 = sub_269D9AB80();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v24 = v8;
      *v7 = 136446210;
      v22 = sub_269D9B4D0();
      v23 = v9;
      MEMORY[0x26D650930](58, 0xE100000000000000);
      MEMORY[0x26D650930](*&v4[OBJC_IVAR____TtC13SleepHealthUI13LocationModel_debugIdentifier], *&v4[OBJC_IVAR____TtC13SleepHealthUI13LocationModel_debugIdentifier + 8]);
      v10 = sub_269C2EACC(v22, v23, &v24);

      *(v7 + 4) = v10;
      _os_log_impl(&dword_269C18000, v5, v6, "[%{public}s] starting", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x26D652460](v8, -1, -1);
      MEMORY[0x26D652460](v7, -1, -1);
    }

    sub_269C1B0B8(0, &qword_280C0AEB0);
    v11 = sub_269D9AC40();
    v12 = objc_allocWithZone(MEMORY[0x277CBFC10]);
    v13 = sub_269D9A5F0();
    v14 = [v12 initWithEffectiveBundleIdentifier:v13 delegate:v4 onQueue:v11];

    v15 = *&v1[v2];
    *&v1[v2] = v14;
    v16 = v14;

    if (v16)
    {
      [v16 setDesiredAccuracy_];
    }

    v17 = objc_opt_self();
    v18 = sub_269D9A5F0();
    v19 = sub_269D9A5F0();
    v20 = [v17 newAssertionForBundleIdentifier:v18 withReason:v19];

    v21 = *&v4[OBJC_IVAR____TtC13SleepHealthUI13LocationModel_inUseAssertion];
    *&v4[OBJC_IVAR____TtC13SleepHealthUI13LocationModel_inUseAssertion] = v20;
  }
}

void sub_269D6C110()
{
  v1 = v0;
  swift_getObjectType();
  v2 = OBJC_IVAR____TtC13SleepHealthUI13LocationModel_locationManager;
  if (*&v0[OBJC_IVAR____TtC13SleepHealthUI13LocationModel_locationManager])
  {
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v3 = sub_269D98250();
    __swift_project_value_buffer(v3, qword_280351208);
    v4 = v0;
    v5 = sub_269D98230();
    v6 = sub_269D9AB80();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17 = v8;
      *v7 = 136446210;
      v15 = sub_269D9B4D0();
      v16 = v9;
      MEMORY[0x26D650930](58, 0xE100000000000000);
      MEMORY[0x26D650930](*&v4[OBJC_IVAR____TtC13SleepHealthUI13LocationModel_debugIdentifier], *&v4[OBJC_IVAR____TtC13SleepHealthUI13LocationModel_debugIdentifier + 8]);
      v10 = sub_269C2EACC(v15, v16, &v17);

      *(v7 + 4) = v10;
      _os_log_impl(&dword_269C18000, v5, v6, "[%{public}s] stopping", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x26D652460](v8, -1, -1);
      MEMORY[0x26D652460](v7, -1, -1);
    }

    v11 = OBJC_IVAR____TtC13SleepHealthUI13LocationModel_inUseAssertion;
    v12 = *&v4[OBJC_IVAR____TtC13SleepHealthUI13LocationModel_inUseAssertion];
    if (v12)
    {
      [v12 invalidate];
      v13 = *&v4[v11];
    }

    else
    {
      v13 = 0;
    }

    *&v4[v11] = 0;

    v14 = *&v1[v2];
    *&v1[v2] = 0;

    v4[OBJC_IVAR____TtC13SleepHealthUI13LocationModel_hasRequestedAuthorization] = 0;
  }
}

uint64_t sub_269D6C308()
{
  swift_getObjectType();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  if (v11)
  {

    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v2 = sub_269D98250();
    __swift_project_value_buffer(v2, qword_280351208);
    v3 = v0;
    v4 = sub_269D98230();
    v5 = sub_269D9AB80();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v14 = v7;
      *v6 = 136446210;
      v12 = sub_269D9B4D0();
      v13 = v8;
      MEMORY[0x26D650930](58, 0xE100000000000000);
      MEMORY[0x26D650930](*&v3[OBJC_IVAR____TtC13SleepHealthUI13LocationModel_debugIdentifier], *&v3[OBJC_IVAR____TtC13SleepHealthUI13LocationModel_debugIdentifier + 8]);
      v9 = sub_269C2EACC(v12, v13, &v14);

      *(v6 + 4) = v9;
      _os_log_impl(&dword_269C18000, v4, v5, "[%{public}s] resetting location", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x26D652460](v7, -1, -1);
      MEMORY[0x26D652460](v6, -1, -1);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v10 = v3;
    result = sub_269D98890();
    v10[OBJC_IVAR____TtC13SleepHealthUI13LocationModel_hasRequestedAuthorization] = 0;
  }

  return result;
}

id LocationModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LocationModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269D6C6D8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LocationModel();
  result = sub_269D98770();
  *a1 = result;
  return result;
}

Swift::Void __swiftcall LocationModel.locationManagerDidChangeAuthorization(_:)(CLLocationManager a1)
{
  isa = a1.super.isa;
  swift_getObjectType();
  v3 = [(objc_class *)isa authorizationStatus];
  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v4 = sub_269D98250();
  __swift_project_value_buffer(v4, qword_280351208);
  v5 = v1;
  v6 = sub_269D98230();
  v7 = sub_269D9AB80();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v55 = v9;
    *v8 = 136446466;
    v45 = sub_269D9B4D0();
    v50 = v10;
    MEMORY[0x26D650930](58, 0xE100000000000000);
    MEMORY[0x26D650930](*&v5[OBJC_IVAR____TtC13SleepHealthUI13LocationModel_debugIdentifier], *&v5[OBJC_IVAR____TtC13SleepHealthUI13LocationModel_debugIdentifier + 8]);
    v11 = sub_269C2EACC(v45, v50, &v55);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    type metadata accessor for CLAuthorizationStatus(0);
    v12 = sub_269D9A660();
    v14 = sub_269C2EACC(v12, v13, &v55);

    *(v8 + 14) = v14;
    _os_log_impl(&dword_269C18000, v6, v7, "[%{public}s] status: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v9, -1, -1);
    MEMORY[0x26D652460](v8, -1, -1);
  }

  if (v3 - 1 < 2)
  {
    v22 = v5;
    v23 = sub_269D98230();
    v24 = sub_269D9AB60();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v55 = v26;
      *v25 = 136446210;
      v47 = sub_269D9B4D0();
      v52 = v27;
      MEMORY[0x26D650930](58, 0xE100000000000000);
      MEMORY[0x26D650930](*&v22[OBJC_IVAR____TtC13SleepHealthUI13LocationModel_debugIdentifier], *&v22[OBJC_IVAR____TtC13SleepHealthUI13LocationModel_debugIdentifier + 8]);
      v28 = sub_269C2EACC(v47, v52, &v55);

      *(v25 + 4) = v28;
      _os_log_impl(&dword_269C18000, v23, v24, "[%{public}s] doesn't have location permissions", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x26D652460](v26, -1, -1);
      MEMORY[0x26D652460](v25, -1, -1);
    }
  }

  else if (v3 - 3 >= 2)
  {
    if (!v3)
    {
      v29 = v5;
      v30 = sub_269D98230();
      v31 = sub_269D9AB80();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v55 = v33;
        *v32 = 136446466;
        v48 = sub_269D9B4D0();
        v53 = v34;
        MEMORY[0x26D650930](58, 0xE100000000000000);
        MEMORY[0x26D650930](*&v29[OBJC_IVAR____TtC13SleepHealthUI13LocationModel_debugIdentifier], *&v29[OBJC_IVAR____TtC13SleepHealthUI13LocationModel_debugIdentifier + 8]);
        v35 = sub_269C2EACC(v48, v53, &v55);

        *(v32 + 4) = v35;
        *(v32 + 12) = 1024;
        v36 = v29[OBJC_IVAR____TtC13SleepHealthUI13LocationModel_hasRequestedAuthorization];

        *(v32 + 14) = v36;
        _os_log_impl(&dword_269C18000, v30, v31, "[%{public}s] has requested authorization? %{BOOL}d", v32, 0x12u);
        __swift_destroy_boxed_opaque_existential_1Tm(v33);
        MEMORY[0x26D652460](v33, -1, -1);
        MEMORY[0x26D652460](v32, -1, -1);
      }

      else
      {
      }

      v37 = OBJC_IVAR____TtC13SleepHealthUI13LocationModel_hasRequestedAuthorization;
      if ((v29[OBJC_IVAR____TtC13SleepHealthUI13LocationModel_hasRequestedAuthorization] & 1) == 0)
      {
        v38 = v29;
        v39 = sub_269D98230();
        v40 = sub_269D9AB80();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v55 = v42;
          *v41 = 136446210;
          v49 = sub_269D9B4D0();
          v54 = v43;
          MEMORY[0x26D650930](58, 0xE100000000000000);
          MEMORY[0x26D650930](*&v38[OBJC_IVAR____TtC13SleepHealthUI13LocationModel_debugIdentifier], *&v38[OBJC_IVAR____TtC13SleepHealthUI13LocationModel_debugIdentifier + 8]);
          v44 = sub_269C2EACC(v49, v54, &v55);

          *(v41 + 4) = v44;
          _os_log_impl(&dword_269C18000, v39, v40, "[%{public}s] requesting when in use authorization...", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v42);
          MEMORY[0x26D652460](v42, -1, -1);
          MEMORY[0x26D652460](v41, -1, -1);
        }

        [*&v38[OBJC_IVAR____TtC13SleepHealthUI13LocationModel_locationManager] requestWhenInUseAuthorization];
        v29[v37] = 1;
      }
    }
  }

  else
  {
    v15 = v5;
    v16 = sub_269D98230();
    v17 = sub_269D9AB80();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v55 = v19;
      *v18 = 136446210;
      v46 = sub_269D9B4D0();
      v51 = v20;
      MEMORY[0x26D650930](58, 0xE100000000000000);
      MEMORY[0x26D650930](*&v15[OBJC_IVAR____TtC13SleepHealthUI13LocationModel_debugIdentifier], *&v15[OBJC_IVAR____TtC13SleepHealthUI13LocationModel_debugIdentifier + 8]);
      v21 = sub_269C2EACC(v46, v51, &v55);

      *(v18 + 4) = v21;
      _os_log_impl(&dword_269C18000, v16, v17, "[%{public}s] requesting location once...", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x26D652460](v19, -1, -1);
      MEMORY[0x26D652460](v18, -1, -1);
    }

    [*&v15[OBJC_IVAR____TtC13SleepHealthUI13LocationModel_locationManager] requestLocation];
  }
}

uint64_t CLLocation.fetchSolarColors(completion:)(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v21 = a1;
  v2 = sub_269D9A260();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_269D9A290();
  v6 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_269D9A270();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C1B0B8(0, &qword_280C0AEB0);
  (*(v10 + 104))(v12, *MEMORY[0x277D851B8], v9);
  v13 = sub_269D9AC60();
  (*(v10 + 8))(v12, v9);
  v14 = swift_allocObject();
  v15 = v21;
  v16 = v22;
  v14[2] = v22;
  v14[3] = v15;
  v14[4] = v23;
  aBlock[4] = sub_269D6E21C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_269CA6718;
  aBlock[3] = &block_descriptor_38;
  v17 = _Block_copy(aBlock);
  v18 = v16;

  sub_269D9A280();
  v25 = MEMORY[0x277D84F90];
  sub_269D6E240();
  sub_269D6BD50(0, &qword_2803504A0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_269D6E298();
  sub_269D9AEF0();
  MEMORY[0x26D650EA0](0, v8, v5, v17);
  _Block_release(v17);

  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v24);
}

uint64_t sub_269D6D2D0(void *a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  sub_269D6BD50(0, &unk_280351880, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_269D97EC0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_269D97580();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - v17;
  sub_269D97570();
  (*(v13 + 16))(v15, v18, v12);
  v19 = a1;
  sub_269D97EA0();
  v20 = sub_269D97EB0();
  v21 = sub_269D9A900();
  (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
  sub_269D9A8E0();

  v22 = sub_269D9A8D0();
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  v23[2] = v22;
  v23[3] = v24;
  v23[4] = v27;
  v23[5] = a3;
  v23[6] = v20;
  sub_269C79F94(0, 0, v7, &unk_269DAAB58, v23);

  (*(v9 + 8))(v11, v8);
  return (*(v13 + 8))(v18, v12);
}

uint64_t sub_269D6D5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_269D9A8E0();
  v6[5] = sub_269D9A8D0();
  v8 = sub_269D9A880();

  return MEMORY[0x2822009F8](sub_269D6D668, v8, v7);
}

uint64_t sub_269D6D668()
{
  v1 = v0[4];
  v2 = v0[2];

  v2(v1);
  v3 = v0[1];

  return v3();
}

void CLLocation.fetchCity(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CBFBE8]) init];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = sub_269D6E320;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_269D6DB48;
  v8[3] = &block_descriptor_8_0;
  v7 = _Block_copy(v8);

  [v5 reverseGeocodeLocation:v2 completionHandler:v7];
  _Block_release(v7);
}

uint64_t sub_269D6D7EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_269D6BD50(0, &unk_280351880, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_269D9A900();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_269D9A8E0();

  v12 = a2;
  v13 = sub_269D9A8D0();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = a1;
  v14[5] = a3;
  v14[6] = a4;
  v14[7] = a2;
  sub_269C79F94(0, 0, v10, &unk_269DAAB48, v14);
}

uint64_t sub_269D6D95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_269D9A8E0();
  v7[6] = sub_269D9A8D0();
  v9 = sub_269D9A880();

  return MEMORY[0x2822009F8](sub_269D6D9F8, v9, v8);
}

uint64_t sub_269D6D9F8()
{
  v1 = *(v0 + 16);

  if (v1)
  {
    v2 = *(v0 + 16);
    if (v2 >> 62)
    {
      result = sub_269D9AF50();
      if (!result)
      {
        goto LABEL_11;
      }
    }

    else
    {
      result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_11;
      }
    }

    v4 = *(v0 + 16);
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D651260](0, v2);
    }

    else
    {
      if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v5 = *(v2 + 32);
    }

    v6 = v5;
    v7 = [v5 locality];

    if (v7)
    {
      v8 = sub_269D9A630();
      v10 = v9;

      result = v8;
LABEL_12:
      (*(v0 + 24))(result, v10, 0);

      goto LABEL_13;
    }

    result = 0;
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  (*(v0 + 24))(0, 0, *(v0 + 40));
LABEL_13:
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_269D6DB48(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_269C1B0B8(0, &qword_280351878);
    v4 = sub_269D9A7E0();
  }

  v6 = a3;
  v5(v4, a3);
}

double static LinearGradient.fullScreenGradient(from:)@<D0>(uint64_t a1@<X8>)
{
  sub_269D9A230();
  sub_269D9A240();

  MEMORY[0x26D6503A0](v2);
  sub_269D98C20();
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  return result;
}

void sub_269D6DC78(void *a1)
{
  swift_getObjectType();
  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v3 = sub_269D98250();
  __swift_project_value_buffer(v3, qword_280351208);
  v4 = v1;
  v5 = a1;
  v18 = sub_269D98230();
  v6 = sub_269D9AB60();

  if (os_log_type_enabled(v18, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136446466;
    v19 = sub_269D9B4D0();
    v20 = v9;
    MEMORY[0x26D650930](58, 0xE100000000000000);
    MEMORY[0x26D650930](*&v4[OBJC_IVAR____TtC13SleepHealthUI13LocationModel_debugIdentifier], *&v4[OBJC_IVAR____TtC13SleepHealthUI13LocationModel_debugIdentifier + 8]);
    v10 = sub_269C2EACC(v19, v20, &v21);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    ErrorValue = swift_getErrorValue();
    v12 = MEMORY[0x28223BE20](ErrorValue);
    (*(v14 + 16))(&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
    v15 = sub_269D9A660();
    v17 = sub_269C2EACC(v15, v16, &v21);

    *(v7 + 14) = v17;
    _os_log_impl(&dword_269C18000, v18, v6, "[%{public}s] error fetching current location: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v8, -1, -1);
    MEMORY[0x26D652460](v7, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_269D6DF34(unint64_t a1)
{
  result = swift_getObjectType();
  if (a1 >> 62)
  {
    v2 = result;
    v5 = sub_269D9AF50();
    result = v2;
    if (!v5)
    {
      return result;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }
  }

  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_16;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_16:
    v8 = MEMORY[0x26D651260](v7, a1);
    goto LABEL_8;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  v8 = *(a1 + 8 * v7 + 32);
LABEL_8:
  v2 = v8;
  if (qword_28034D738 != -1)
  {
LABEL_18:
    swift_once();
  }

  v9 = sub_269D98250();
  __swift_project_value_buffer(v9, qword_280351208);
  v10 = v1;
  v11 = v2;
  v12 = sub_269D98230();
  v13 = sub_269D9AB80();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 136446467;
    v25 = sub_269D9B4D0();
    v26 = v16;
    MEMORY[0x26D650930](58, 0xE100000000000000);
    MEMORY[0x26D650930](*&v10[OBJC_IVAR____TtC13SleepHealthUI13LocationModel_debugIdentifier], *&v10[OBJC_IVAR____TtC13SleepHealthUI13LocationModel_debugIdentifier + 8]);
    v17 = sub_269C2EACC(v25, v26, &v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2081;
    v18 = v11;
    v19 = [v18 description];
    v20 = sub_269D9A630();
    v22 = v21;

    v23 = sub_269C2EACC(v20, v22, &v27);

    *(v14 + 14) = v23;
    _os_log_impl(&dword_269C18000, v12, v13, "[%{public}s] fetched current location: %{private}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v15, -1, -1);
    MEMORY[0x26D652460](v14, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v24 = v10;
  return sub_269D98890();
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_269D6E240()
{
  result = qword_28034EAA0;
  if (!qword_28034EAA0)
  {
    sub_269D9A260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034EAA0);
  }

  return result;
}

unint64_t sub_269D6E298()
{
  result = qword_28034EAB0[0];
  if (!qword_28034EAB0[0])
  {
    sub_269D6BD50(255, &qword_2803504A0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, qword_28034EAB0);
  }

  return result;
}

void sub_269D6E330()
{
  sub_269D6BD50(319, &qword_28034E680, sub_269D6BCE8, MEMORY[0x277CBCED0]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_269D6E628()
{
  result = qword_280351870;
  if (!qword_280351870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280351870);
  }

  return result;
}

uint64_t sub_269D6E67C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_269C80D04;

  return sub_269D6D95C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_269D6E750(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_269C71C08;

  return sub_269D6D5CC(a1, v4, v5, v6, v7, v8);
}

id sub_269D6E820()
{
  result = [objc_opt_self() currentDevice];
  if (result)
  {
    v1 = result;
    sub_269C44580(&unk_287A9F490);
    sub_269D9AE40();
    v3 = v2;

    qword_28035E850 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_269D6E8A0()
{
  if (qword_28034D658 != -1)
  {
    swift_once();
  }

  qword_28035E858 = qword_28034EB80;
}

void sub_269D6E938(uint64_t a1)
{
  v2 = v1;
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v3 = qword_280C0D990;
  v4 = sub_269D9A5F0();
  v5 = [objc_opt_self() imageNamed:v4 inBundle:v3];

  type metadata accessor for ConfirmationOnboardingSection();
  swift_allocObject();

  v7 = sub_269C5C290(v6);
  if (qword_28034D7E8 != -1)
  {
    swift_once();
  }

  sub_269D972C0();
  v8 = objc_opt_self();

  v9 = v5;
  v43 = [v8 systemBackgroundColor];
  v10 = &v2[OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_delegate];
  *v10 = 0;
  v10[1] = 0;
  *&v2[OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_dataSourceAdaptor] = 0;
  *&v2[OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_sleepChangeObserver] = 0;
  *&v2[OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_userInfo] = a1;
  *&v2[OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_presentationStyle] = 0;
  v11 = &v2[OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_dataSource];
  v12 = MEMORY[0x277D10F80];
  *v11 = v7;
  v11[1] = v12;
  v2[OBJC_IVAR____TtC13SleepHealthUI27SleepTableWelcomeController_hasSystemMargins] = 0;

  v13 = v9;
  v14 = sub_269D9A5F0();

  v15 = v13;
  v16 = sub_269D9A5F0();

  v50.receiver = v2;
  v50.super_class = type metadata accessor for SleepTableWelcomeController();
  v17 = objc_msgSendSuper2(&v50, sel_initWithTitle_detailText_icon_adoptTableViewScrollView_, v14, v16, v13, 1);

  v18 = objc_allocWithZone(MEMORY[0x277D75B40]);
  v19 = v17;
  v20 = [v18 initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  [v19 setTableView_];

  v21 = [v19 tableView];
  if (!v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v22 = v21;
  v23 = [v8 systemBackgroundColor];
  [v22 setBackgroundColor_];

  v24 = [v19 tableView];
  if (!v24)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v25 = v24;
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];

  v26 = [v19 tableView];
  if (!v26)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v26 setTableHeaderView_];

  v28 = v19;
  v29 = [v28 tableView];
  if (!v29)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v30 = v29;
  [v29 setDelegate_];

  v31 = [v28 tableView];
  if (!v31)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  type metadata accessor for SleepDiffableTableViewAdaptor();
  v32 = swift_allocObject();

  v33 = v43;
  v34 = sub_269D8007C(v31, v7, 0, v43, v32);

  *&v28[OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_dataSourceAdaptor] = v34;

  v47 = v7;
  v48 = MEMORY[0x277D10F80];
  sub_269C95CC0(0, &qword_28034F080);
  sub_269C95CC0(0, &qword_2803518A0);

  if (!swift_dynamicCast())
  {

    v46 = 0;
    memset(v45, 0, sizeof(v45));
    sub_269D6F8C4(v45);
    goto LABEL_14;
  }

  sub_269C25520(v45, v49);
  __swift_project_boxed_opaque_existential_1Tm(v49, v49[3]);
  v35 = [v28 tableView];
  if (v35)
  {
    v36 = v35;

    sub_269D98140();

    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    v15 = v13;
LABEL_14:
    v37 = v28;
    [v37 setModalInPresentation_];
    v38 = [v37 headerView];
    [v38 setTitleHyphenationFactor_];

    sub_269C57F8C();
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_269D9EBE0;
    v40 = sub_269D983D0();
    v41 = MEMORY[0x277D74DB8];
    *(v39 + 32) = v40;
    *(v39 + 40) = v41;
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_269C30054();
    sub_269D9AC10();

    swift_unknownObjectRelease();

    v42 = [v37 headerView];
    [v42 setAllowFullWidthIcon_];

    return;
  }

LABEL_20:
  __break(1u);
}

void sub_269D6F0B4()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for SleepOnboardingConfirmationViewController();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  v1 = [v0 tableView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  [v1 setAllowsSelection_];

  v3 = [v0 tableView];
  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v4 = v3;
  [v3 setSeparatorInset_];

  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  sub_269D972C0();
  v5 = sub_269D9A5F0();
}

void sub_269D6F23C()
{
  swift_getObjectType();
  v1 = (v0 + OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_delegate);
  swift_beginAccess();
  if (*v1)
  {
    v2 = v1[1];
    v3 = qword_28034D770;
    swift_unknownObjectRetain();
    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_269D98250();
    __swift_project_value_buffer(v4, qword_280351280);
    v5 = sub_269D98230();
    v6 = sub_269D9AB80();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v23[0] = v8;
      *v7 = 136446210;
      v9 = sub_269D9B4D0();
      v11 = sub_269C2EACC(v9, v10, v23);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_269C18000, v5, v6, "[%{public}s] we're done!", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x26D652460](v8, -1, -1);
      MEMORY[0x26D652460](v7, -1, -1);
    }

    sub_269D2F438(6, 2);
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v13 = *(v2 + 16);

    v13(v14, ObjectType, v2);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_280C0B720 != -1)
    {
      swift_once();
    }

    v15 = sub_269D98250();
    __swift_project_value_buffer(v15, qword_280C0B728);
    v16 = sub_269D98230();
    v17 = sub_269D9AB70();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v23[0] = v19;
      *v18 = 136446210;
      v20 = sub_269D9B4D0();
      v22 = sub_269C2EACC(v20, v21, v23);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_269C18000, v16, v17, "[%{public}s] No delegate found while attempting to complete onboarding", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x26D652460](v19, -1, -1);
      MEMORY[0x26D652460](v18, -1, -1);
    }
  }
}

void sub_269D6F580(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

id sub_269D6F7AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepOnboardingConfirmationViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_269D6F804()
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v0 = qword_280C0D990;
  v1 = sub_269D972C0();
  v3 = v2;

  qword_280351890 = v1;
  *algn_280351898 = v3;
}

uint64_t sub_269D6F8C4(uint64_t a1)
{
  sub_269D6F920();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_269D6F920()
{
  if (!qword_2803518A8)
  {
    sub_269C95CC0(255, &qword_2803518A0);
    v0 = sub_269D9AE60();
    if (!v1)
    {
      atomic_store(v0, &qword_2803518A8);
    }
  }
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *HealthStatusFeatureProvider.__allocating_init(healthStore:notificationSettingsProvider:)(void *a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = sub_269D705B8(a1, v7, v2, v5, v6);

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v8;
}

void *HealthStatusFeatureProvider.init(healthStore:notificationSettingsProvider:)(void *a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  v12 = sub_269D704E8(a1, v10, v2, v5, v6);

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v12;
}

id sub_269D6FB44()
{
  v1 = sub_269D981D0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
  sub_269D981F0();
  v5 = sub_269D981E0();
  (*(v2 + 8))(v4, v1);
  v6 = [v5 areAllRequirementsSatisfied];

  return v6;
}

uint64_t sub_269D6FEB8()
{
  swift_beginAccess();
  sub_269C2DB5C(v0 + 56, v3);
  __swift_project_boxed_opaque_existential_1Tm(v3, v3[3]);
  v1 = sub_269D97DC0();
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  return v1 & 1;
}

uint64_t sub_269D6FF30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  sub_269C2DB5C(v3 + 56, v5);
  __swift_project_boxed_opaque_existential_1Tm(v5, v5[3]);
  LOBYTE(v3) = sub_269D97DA0();
  result = __swift_destroy_boxed_opaque_existential_1Tm(v5);
  *a2 = v3 & 1;
  return result;
}

uint64_t sub_269D6FFB8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1(v2 + 56, *(v2 + 80));
  sub_269D97DB0();
  return swift_endAccess();
}

uint64_t sub_269D7002C()
{
  swift_beginAccess();
  sub_269C2DB5C(v0 + 56, v3);
  __swift_project_boxed_opaque_existential_1Tm(v3, v3[3]);
  v1 = sub_269D97DA0();
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  return v1 & 1;
}

uint64_t sub_269D700A8()
{
  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, *(v0 + 80));
  sub_269D97DB0();
  return swift_endAccess();
}

void (*sub_269D70118(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  swift_beginAccess();
  sub_269C2DB5C(v1 + 56, v4);
  __swift_project_boxed_opaque_existential_1Tm(v4, *(v4 + 24));
  v5 = sub_269D97DA0();
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  *(v4 + 72) = v5 & 1;
  return sub_269D701E4;
}

void sub_269D701E4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1(v2 + 56, *(v2 + 80));
  sub_269D97DB0();
  swift_endAccess();

  free(v1);
}

uint64_t HealthStatusFeatureProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  return v0;
}

uint64_t HealthStatusFeatureProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_269D70304()
{
  v1 = *v0;
  swift_beginAccess();
  sub_269C2DB5C(v1 + 56, v3);
  __swift_project_boxed_opaque_existential_1Tm(v3, v3[3]);
  LOBYTE(v1) = sub_269D97DC0();
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  return v1 & 1;
}

uint64_t sub_269D70380()
{
  v1 = *v0;
  swift_beginAccess();
  sub_269C2DB5C(v1 + 56, v3);
  __swift_project_boxed_opaque_existential_1Tm(v3, v3[3]);
  LOBYTE(v1) = sub_269D97DA0();
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  return v1 & 1;
}

uint64_t sub_269D70400()
{
  v1 = *v0;
  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1(v1 + 56, *(v1 + 80));
  sub_269D97DB0();
  return swift_endAccess();
}

void (*sub_269D70474(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_269D70118(v2);
  return sub_269C3CF88;
}

void *sub_269D704E8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v15 = a4;
  v16 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = [objc_allocWithZone(MEMORY[0x277CCD460]) initWithFeatureIdentifier:*MEMORY[0x277CCC0F0] healthStore:a1];
  v11 = sub_269CC8B20();
  v12 = MEMORY[0x277D113B8];
  a3[5] = v11;
  a3[6] = v12;
  a3[2] = v10;
  sub_269CAC4E4(&v14, (a3 + 7));
  return a3;
}

void *sub_269D705B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthStatusFeatureProvider();
  v12 = swift_allocObject();
  (*(v9 + 16))(v11, a2, a4);
  return sub_269D704E8(a1, v11, v12, a4, a5);
}

uint64_t static Double.alarmSnoozeDurationOptions.getter()
{
  v0 = *MEMORY[0x277D61FF0] * 60.0;
  if (v0 != 0.0)
  {
    return sub_269D70B40(*MEMORY[0x277D61FE8] * 60.0, *MEMORY[0x277D61FE0] * 60.0, v0);
  }

  __break(1u);
  return result;
}

uint64_t static Double.sleepDurationGoalOptions.getter()
{
  v0 = *MEMORY[0x277D621A0] * 60.0 * 60.0;
  if (v0 != 0.0)
  {
    return sub_269D70B40(*MEMORY[0x277D62198] * 60.0 * 60.0, *MEMORY[0x277D62190] * 60.0 * 60.0, v0);
  }

  __break(1u);
  return result;
}

void static Double.windDownOptions(for:duringOnboarding:)(void *a1, char a2)
{
  v3 = sub_269D71060(a1);
  v4 = *MEMORY[0x277D623E8] * 60.0;
  if (v4 == 0.0)
  {
    __break(1u);
  }

  else
  {
    v5 = *MEMORY[0x277D623D8];
    if (a2)
    {
      v5 = *MEMORY[0x277D623E0];
    }

    v6 = v5 * 60.0;

    sub_269D70DE4(v6, v3, v4);
  }
}

uint64_t sub_269D70ACC(double a1, double a2, double a3)
{
  result = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1;
  do
  {
    v8 = v6 <= a2;
    if (a3 > 0.0)
    {
      v8 = v6 >= a2;
    }

    if (v8)
    {
      if ((v6 != a2) | v4 & 1)
      {
        return result;
      }

      v4 = 1;
    }

    else
    {
      v7 = __OFADD__(v5++, 1);
      if (v7)
      {
        goto LABEL_12;
      }

      v6 = a1 + v5 * a3;
    }

    v7 = __OFADD__(result++, 1);
  }

  while (!v7);
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_269D70B40(double a1, double a2, double a3)
{
  v6 = sub_269D70ACC(a1, a2, a3);
  v7 = v6;
  if (v6)
  {
    if (v6 <= 0)
    {
      v8 = MEMORY[0x277D84F90];
    }

    else
    {
      sub_269D71260();
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      *(v8 + 2) = v7;
      *(v8 + 3) = 2 * (v10 >> 3);
    }
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v11 = *(v8 + 3);

  if (v7 < 0)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    return result;
  }

  v13 = v8 + 4;
  v14 = v11 >> 1;
  v15 = 0;
  v16 = 0;
  if (v7)
  {
    v14 -= v7;
    i = a1;
    while (1)
    {
      v18 = i;
      v19 = i <= a2;
      if (a3 > 0.0)
      {
        v19 = i >= a2;
      }

      if (v19)
      {
        if (v15 & 1 | (i != a2))
        {
          goto LABEL_50;
        }

        v15 = 1;
      }

      else
      {
        v20 = __OFADD__(v16++, 1);
        if (v20)
        {
          goto LABEL_51;
        }

        i = a1 + v16 * a3;
      }

      *v13++ = v18;
      if (!--v7)
      {
        goto LABEL_21;
      }
    }
  }

  for (i = a1; ; i = v22)
  {
LABEL_21:
    v21 = i <= a2;
    if (a3 > 0.0)
    {
      v21 = i >= a2;
    }

    if (!v21)
    {
      v20 = __OFADD__(v16++, 1);
      if (v20)
      {
        goto LABEL_48;
      }

      v22 = a1 + v16 * a3;
      if (v14)
      {
        goto LABEL_41;
      }

      goto LABEL_29;
    }

    if ((i != a2) | v15 & 1)
    {
      break;
    }

    v15 = 1;
    v22 = i;
    if (v14)
    {
      v22 = i;
      goto LABEL_41;
    }

LABEL_29:
    v23 = *(v8 + 3);
    if (((v23 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_49;
    }

    v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
    if (v24 <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = v24;
    }

    sub_269D71260();
    v26 = swift_allocObject();
    v27 = _swift_stdlib_malloc_size(v26);
    v28 = v27 - 32;
    if (v27 < 32)
    {
      v28 = v27 - 25;
    }

    v29 = v28 >> 3;
    *(v26 + 2) = v25;
    *(v26 + 3) = 2 * (v28 >> 3);
    v30 = (v26 + 4);
    v31 = *(v8 + 3) >> 1;
    if (*(v8 + 2))
    {
      v32 = v8 + 4;
      if (v26 != v8 || v30 >= v32 + 8 * v31)
      {
        memmove(v26 + 4, v32, 8 * v31);
      }

      v8[2] = 0.0;
    }

    v13 = (v30 + 8 * v31);
    v14 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - v31;

    v8 = v26;
LABEL_41:
    v20 = __OFSUB__(v14--, 1);
    if (v20)
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    *v13++ = i;
  }

  v33 = *(v8 + 3);
  if (v33 >= 2)
  {
    v34 = v33 >> 1;
    v20 = __OFSUB__(v34, v14);
    v35 = v34 - v14;
    if (v20)
    {
      goto LABEL_53;
    }

    *(v8 + 2) = v35;
  }

  return v8;
}

void sub_269D70DE4(double a1, double a2, double a3)
{
  v6 = a1 <= a2;
  if (a3 > 0.0)
  {
    v6 = a1 >= a2;
  }

  if (!v6)
  {
    v7 = -1;
    do
    {
      v8 = ++v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_48;
      }

      v9 = a1 + v8 * a3;
      v10 = v9 <= a2;
      if (a3 > 0.0)
      {
        v10 = v9 >= a2;
      }
    }

    while (!v10);
    if (v7 == -1)
    {
      goto LABEL_18;
    }

    sub_269D71260();
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    v14 = v13 >> 3;
    *(v11 + 2) = v8;
    *(v11 + 3) = 2 * v14;
    v15 = v11 + 4;
    v16 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v8;
    v17 = -1;
    v18 = a1;
    while (1)
    {
      v19 = v18 <= a2;
      if (a3 > 0.0)
      {
        v19 = v18 >= a2;
      }

      if (v19)
      {
        goto LABEL_50;
      }

      v20 = a1 + (v17 + 2) * a3;
      *v15++ = v18;
      ++v17;
      v18 = v20;
      if (v7 == v17)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_18:
  v11 = MEMORY[0x277D84F90];
  v21 = *(MEMORY[0x277D84F90] + 24);

  v8 = 0;
  v15 = v11 + 4;
  v16 = v21 >> 1;
  v20 = a1;
LABEL_19:
  v22 = v20 <= a2;
  if (a3 > 0.0)
  {
    v22 = v20 >= a2;
  }

  if (!v22)
  {
    while (!__OFADD__(v8, 1))
    {
      if (!v16)
      {
        v23 = *(v11 + 3);
        if (((v23 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_51;
        }

        v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        sub_269D71260();
        v26 = swift_allocObject();
        v27 = _swift_stdlib_malloc_size(v26);
        v28 = v27 - 32;
        if (v27 < 32)
        {
          v28 = v27 - 25;
        }

        v29 = v28 >> 3;
        *(v26 + 2) = v25;
        *(v26 + 3) = 2 * (v28 >> 3);
        v30 = (v26 + 4);
        v31 = *(v11 + 3) >> 1;
        if (*(v11 + 2))
        {
          if (v26 != v11 || v30 >= &v11[v31 + 4])
          {
            memmove(v26 + 4, v11 + 4, 8 * v31);
          }

          v11[2] = 0.0;
        }

        v15 = (v30 + 8 * v31);
        v16 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - v31;

        v11 = v26;
      }

      v33 = __OFSUB__(v16--, 1);
      if (v33)
      {
        goto LABEL_49;
      }

      *v15++ = v20;
      v20 = a1 + (v8 + 1) * a3;
      v34 = v20 <= a2;
      if (a3 > 0.0)
      {
        v34 = v20 >= a2;
      }

      ++v8;
      if (v34)
      {
        goto LABEL_43;
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

LABEL_43:
  v35 = *(v11 + 3);
  if (v35 >= 2)
  {
    v36 = v35 >> 1;
    v33 = __OFSUB__(v36, v16);
    v37 = v36 - v16;
    if (v33)
    {
LABEL_52:
      __break(1u);
      return;
    }

    *(v11 + 2) = v37;
  }
}

double sub_269D71060(void *a1)
{
  v1 = a1;
  v2 = [a1 occurrences];
  sub_269D415B8();
  v3 = sub_269D9A7E0();

  v12 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_269D9AF50())
  {
    v11 = v1;
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x26D651260](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v1 = (v5 + 1);
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ([v6 isSingleDayOverride])
      {
      }

      else
      {
        sub_269D9B050();
        sub_269D9B090();
        sub_269D9B0A0();
        sub_269D9B060();
      }

      ++v5;
      if (v1 == i)
      {
        v1 = v11;
        v8 = v12;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v8 = MEMORY[0x277D84F90];
LABEL_18:

  if (v8 < 0 || (v8 & 0x4000000000000000) != 0)
  {
    v9 = sub_269D9AF50();
  }

  else
  {
    v9 = *(v8 + 16);
  }

  if (!v9)
  {
    return *MEMORY[0x277D623D0] * 60.0 + 1.0;
  }

  [v1 maximumAllowableWindDown];
  if (*MEMORY[0x277D623D0] * 60.0 + 1.0 < result)
  {
    return *MEMORY[0x277D623D0] * 60.0 + 1.0;
  }

  return result;
}

void sub_269D71260()
{
  if (!qword_280C0BBA0)
  {
    v0 = sub_269D9B240();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0BBA0);
    }
  }
}

void ScheduledDaysState.init(schedule:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (![a1 weekdaysWithOccurrences])
  {
    v4 = 1;
LABEL_6:
    v5 = 1;
    goto LABEL_7;
  }

  if (![a1 weekdaysWithoutOccurrences])
  {
    v4 = 0;
    goto LABEL_6;
  }

  v4 = [a1 weekdaysWithOccurrences];
  v5 = 0;
LABEL_7:

  *a2 = v4;
  *(a2 + 8) = v5;
}

uint64_t ScheduledDaysState.localizedDetail.getter()
{
  if (*(v0 + 8) == 1 && !*v0)
  {
    return 0;
  }

  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  return sub_269D972C0();
}

uint64_t ScheduledDaysState.localizedPrompt.getter()
{
  if (*(v0 + 8) == 1 && !*v0)
  {
    if (qword_280C0AE70 == -1)
    {
      return sub_269D972C0();
    }

    goto LABEL_7;
  }

  if (qword_280C0AE70 != -1)
  {
LABEL_7:
    swift_once();
  }

  return sub_269D972C0();
}

uint64_t static ScheduledDaysState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_269D71538(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t ScheduledDaysState.localizedTitle.getter()
{
  if (*(v0 + 8) == 1 && !*v0)
  {
    return 0;
  }

  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  return sub_269D972C0();
}

uint64_t ScheduledDaysState.unscheduledDaysFooter.getter()
{
  if (*(v0 + 8) == 1)
  {
    if (!*v0)
    {
      return 0;
    }

    if (qword_280C0AE70 == -1)
    {
      return sub_269D972C0();
    }

    goto LABEL_14;
  }

  if (!HKSPWeekdaysIsSingleDay())
  {
LABEL_12:
    if (qword_280C0AE70 == -1)
    {
      return sub_269D972C0();
    }

LABEL_14:
    swift_once();
    return sub_269D972C0();
  }

  v1 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v1 setFormattingContext_];
  v2 = HKSPDayForWeekdays();
  v3 = NSDateFormatter.standaloneWeekdaySymbol(for:)(v2);
  if (!v4)
  {

    goto LABEL_12;
  }

  v5 = v3;
  v6 = v4;
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  sub_269D972C0();
  sub_269D718F8();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_269D9EBE0;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_269C7172C();
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  sub_269D9A600();

  v8 = sub_269D9A5F0();

  v9 = [v8 hk_localizedFirstWordCapitalizedString];

  v10 = sub_269D9A630();
  return v10;
}

void sub_269D718F8()
{
  if (!qword_28034E6B0)
  {
    sub_269C716C8();
    v0 = sub_269D9B240();
    if (!v1)
    {
      atomic_store(v0, &qword_28034E6B0);
    }
  }
}

uint64_t getEnumTagSinglePayload for ScheduledDaysState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ScheduledDaysState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_269D719A0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_269D719BC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void BSDayPeriod.simplified.getter(unint64_t a1@<X0>, char *a2@<X8>)
{
  if (a1 <= 0xA)
  {
    if (((1 << a1) & 0x2F0) != 0)
    {
      v2 = 2;
LABEL_14:
      *a2 = v2;
      return;
    }

    if (((1 << a1) & 0x10C) != 0)
    {
      v2 = 1;
      goto LABEL_14;
    }

    if (a1 == 10)
    {
      v3 = a2;
      if (qword_280C0B218 != -1)
      {
        swift_once();
      }

      v4 = sub_269D98250();
      __swift_project_value_buffer(v4, qword_280C0B220);
      v5 = sub_269D98230();
      v6 = sub_269D9AB60();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v9 = v8;
        *v7 = 136446210;
        *(v7 + 4) = sub_269C2EACC(0x7265507961445342, 0xEB00000000646F69, &v9);
        _os_log_impl(&dword_269C18000, v5, v6, "[%{public}s] unknown period, using fallback", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v8);
        MEMORY[0x26D652460](v8, -1, -1);
        MEMORY[0x26D652460](v7, -1, -1);
      }

      v2 = 0;
      a2 = v3;
      goto LABEL_14;
    }
  }

  if (a1 < 2)
  {
    v2 = 0;
    goto LABEL_14;
  }

  sub_269D9B100();
  __break(1u);
}

uint64_t BSDayPeriod.greeting.getter(uint64_t a1)
{
  v4 = 0;
  sub_269D71D6C(&v4, a1);
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v1 = qword_280C0D990;
  v2 = sub_269D972C0();

  return v2;
}

uint64_t BSDayPeriod.Simplified.hashValue.getter()
{
  v1 = *v0;
  sub_269D9B350();
  MEMORY[0x26D6515B0](v1);
  return sub_269D9B390();
}

uint64_t sub_269D71D6C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (a2 <= 4)
  {
    if (a2 <= 1)
    {
      if (!a2)
      {
        result = 0xD000000000000011;
        v6 = "MORNING1_GREETING";
        goto LABEL_24;
      }

      if (a2 != 1)
      {
LABEL_36:
        result = sub_269D9B100();
        __break(1u);
        return result;
      }

      result = 0xD000000000000011;
      v6 = "MORNING2_GREETING";
    }

    else
    {
      if (a2 == 2)
      {
        v4 = "AFTERNOON1_GREETING";
LABEL_16:
        v7 = (v4 - 32) | 0x8000000000000000;
        result = 0xD000000000000013;
        if ((v2 & 1) == 0)
        {
          return result;
        }

        goto LABEL_28;
      }

      if (a2 == 3)
      {
        v4 = "AFTERNOON2_GREETING";
        goto LABEL_16;
      }

      result = 0xD000000000000011;
      v6 = "EVENING1_GREETING";
    }

LABEL_24:
    v7 = (v6 - 32) | 0x8000000000000000;
    if ((v2 & 1) == 0)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (a2 > 7)
  {
    switch(a2)
    {
      case 8:
        v7 = 0xED0000474E495445;
        result = 0x4552475F4E4F4F4ELL;
        if ((v2 & 1) == 0)
        {
          return result;
        }

        goto LABEL_28;
      case 9:
        result = 0xD000000000000011;
        v6 = "MIDNIGHT_GREETING";
        goto LABEL_24;
      case 10:
        if (qword_280C0B218 != -1)
        {
          swift_once();
        }

        v8 = sub_269D98250();
        __swift_project_value_buffer(v8, qword_280C0B220);
        v9 = sub_269D98230();
        v10 = sub_269D9AB60();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&dword_269C18000, v9, v10, "[BSDayPeriod] unknown period, using fallback", v11, 2u);
          MEMORY[0x26D652460](v11, -1, -1);
        }

        v12[0] = v2;
        return sub_269D71D6C(v12, 1);
    }

    goto LABEL_36;
  }

  if (a2 == 5)
  {
    result = 0xD000000000000011;
    v6 = "EVENING2_GREETING";
    goto LABEL_24;
  }

  if (a2 == 6)
  {
    v3 = 0x31544847494ELL;
  }

  else
  {
    v3 = 0x32544847494ELL;
  }

  result = v3 & 0xFFFFFFFFFFFFLL | 0x475F000000000000;
  v7 = 0xEF474E4954454552;
  if (v2)
  {
LABEL_28:
    v12[0] = result;
    v12[1] = v7;

    MEMORY[0x26D650930](0x454D414E5FLL, 0xE500000000000000);

    return v12[0];
  }

  return result;
}

Swift::String __swiftcall BSDayPeriod.namedGreeting(name:)(Swift::String name)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  v12 = 1;
  sub_269D71D6C(&v12, v1);
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v4 = qword_280C0D990;
  sub_269D972C0();

  sub_269D718F8();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_269D9EBE0;
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_269C7172C();
  *(v5 + 32) = countAndFlagsBits;
  *(v5 + 40) = object;

  v6 = sub_269D9A600();
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

unint64_t sub_269D721B4()
{
  result = qword_2803518B0;
  if (!qword_2803518B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803518B0);
  }

  return result;
}

unint64_t sub_269D7220C()
{
  result = qword_2803518B8;
  if (!qword_2803518B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803518B8);
  }

  return result;
}

unint64_t sub_269D72264()
{
  result = qword_2803518C0;
  if (!qword_2803518C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803518C0);
  }

  return result;
}

unint64_t sub_269D722BC()
{
  result = qword_2803518C8;
  if (!qword_2803518C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803518C8);
  }

  return result;
}

unint64_t sub_269D72314()
{
  result = qword_2803518D0;
  if (!qword_2803518D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803518D0);
  }

  return result;
}

id HKFeatureAvailabilityProviding.isFeatureOnboarded.getter(uint64_t a1)
{

  return sub_269D72448(a1, &selRef_isCurrentOnboardingVersionCompletedWithError_);
}

id HKFeatureAvailabilityProviding.pairedWatchSupportsSleep.getter(uint64_t a1)
{

  return sub_269D72448(a1, &selRef_isFeatureCapabilitySupportedOnActivePairedDeviceWithError_);
}

id sub_269D72448(uint64_t a1, SEL *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v3 = [v2 *a2];
  if (v3)
  {
    v4 = v3;
    v5 = v10[0];
    v6 = [v4 BOOLValue];
  }

  else
  {
    v7 = v10[0];
    v8 = sub_269D97360();

    swift_willThrow();
    return 0;
  }

  return v6;
}

id sub_269D72518()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker____lazy_storage___formatter;
  v2 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker____lazy_storage___formatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker____lazy_storage___formatter);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for BriefOneHourIsSixtyMinDateComponentsFormatter()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_269D7258C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker_durationLabel);
  sub_269D726D4();
  v4 = v3;
  [v2 setAttributedText_];

  v5 = v1 + OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    v7 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker_selectedIndex);
    v8 = 0.0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v9 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker_options);
      if (v7 < *(v9 + 16))
      {
        v8 = *(v9 + 8 * v7 + 32);
      }
    }

    ObjectType = swift_getObjectType();
    (*(v6 + 8))(ObjectType, v6, v8);
    swift_unknownObjectRelease();
  }

  v11 = OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker_selectedIndex;
  [*(v1 + OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker_minusButton) setEnabled_];
  v12 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker_plusButton);
  v13 = *(v1 + v11) != *(*(v1 + OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker_options) + 16) - 1;

  return [v12 setEnabled_];
}

void sub_269D726D4()
{
  v0 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  sub_269D73100(0, &qword_280351910, &qword_28034DE70, type metadata accessor for TraitKey);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269D9EBE0;
  v2 = *MEMORY[0x277D74430];
  *(inited + 32) = *MEMORY[0x277D74430];
  v3 = *MEMORY[0x277D74420];
  type metadata accessor for Weight(0);
  *(inited + 64) = v4;
  *(inited + 40) = v3;
  v5 = v0;
  v6 = v2;
  v7 = sub_269C44B4C(inited);
  swift_setDeallocating();
  sub_269D731F8(inited + 32, &qword_28034DE70, type metadata accessor for TraitKey);
  sub_269D73100(0, &unk_2803505B0, &qword_28034DEC0, type metadata accessor for AttributeName);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_269D9EBE0;
  v9 = *MEMORY[0x277D74380];
  *(v8 + 32) = *MEMORY[0x277D74380];
  sub_269D73158();
  *(v8 + 64) = v10;
  *(v8 + 40) = v7;
  v11 = v9;

  sub_269C44468(v8);
  swift_setDeallocating();
  sub_269D731F8(v8 + 32, &qword_28034DEC0, type metadata accessor for AttributeName);
  type metadata accessor for AttributeName(0);
  sub_269D73254(&qword_28034DBF8, type metadata accessor for AttributeName);
  v12 = sub_269D9A480();

  v13 = [v5 fontDescriptorByAddingAttributes_];

  v14 = [v13 fontDescriptorWithDesign_];
  if (v14)
  {

    v15 = objc_opt_self();
    v16 = [v15 fontWithDescriptor:v14 size:42.0];
    if (sub_269D9A2C0())
    {
      isa = UIFontDescriptor.addingLowercaseSmallCapsAttributes()().super.isa;
      v18 = UIFontDescriptor.addingUppercaseSmallCapsAttributes()().super.isa;

      v14 = v18;
    }

    v19 = [v15 fontWithDescriptor:v14 size:42.0];
    v20 = sub_269D73054();
    if (v21)
    {
      v22 = v21;
      v32 = v20;
      sub_269D73100(0, &qword_280350108, &qword_280350110, type metadata accessor for Key);
      v23 = swift_initStackObject();
      *(v23 + 16) = xmmword_269D9EBE0;
      v24 = *MEMORY[0x277D740A8];
      *(v23 + 32) = *MEMORY[0x277D740A8];
      v25 = sub_269C1B0B8(0, &qword_28034E5F0);
      *(v23 + 64) = v25;
      *(v23 + 40) = v19;
      v26 = v24;
      v31 = v19;
      v27 = sub_269C44B18(v23);
      swift_setDeallocating();
      sub_269D731F8(v23 + 32, &qword_280350110, type metadata accessor for Key);
      v28 = swift_initStackObject();
      *(v28 + 16) = xmmword_269D9EBE0;
      *(v28 + 32) = v26;
      *(v28 + 64) = v25;
      *(v28 + 40) = v16;
      v29 = v16;
      v30 = sub_269C44B18(v28);
      swift_setDeallocating();
      sub_269D731F8(v28 + 32, &qword_280350110, type metadata accessor for Key);
      sub_269C1B0B8(0, &unk_28034EBF0);
      MEMORY[0x26D650ED0](v32, v22, v30, v27);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_269D72D3C()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker_selectedIndex);
  if (v1 != *(*(v0 + OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker_options) + 16) - 1)
  {
    v2 = __OFADD__(v1, 1);
    v3 = v1 + 1;
    if (v2)
    {
      __break(1u);
    }

    else
    {
      *(v0 + OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker_selectedIndex) = v3;
      return sub_269D7258C();
    }
  }

  return result;
}

id sub_269D72F70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TimeDurationPicker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269D73054()
{
  v1 = sub_269D72518();
  v2 = v1;
  v3 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker_selectedIndex);
  v4 = 0.0;
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker_options);
    if (v3 < *(v5 + 16))
    {
      v4 = *(v5 + 8 * v3 + 32);
    }
  }

  v6 = [v1 stringFromTimeInterval_];

  if (!v6)
  {
    return 0;
  }

  v7 = sub_269D9A630();

  return v7;
}

void sub_269D73100(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_269D7329C(255, a3, a4);
    v5 = sub_269D9B240();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_269D73158()
{
  if (!qword_280351918)
  {
    type metadata accessor for TraitKey(255);
    sub_269D73254(&qword_28034DBD8, type metadata accessor for TraitKey);
    v0 = sub_269D9A4A0();
    if (!v1)
    {
      atomic_store(v0, &qword_280351918);
    }
  }
}

uint64_t sub_269D731F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_269D7329C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_269D73254(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_269D7329C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_269D73304()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker____lazy_storage___formatter) = 0;
  v2 = type metadata accessor for PlusMinusButton();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC13SleepHealthUI15PlusMinusButton_type] = 24577;
  v25.receiver = v3;
  v25.super_class = v2;
  v4 = objc_msgSendSuper2(&v25, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_269C1B0B8(0, &qword_28034E5F0);
  v5 = *MEMORY[0x277D76A08];
  v6 = *MEMORY[0x277D74420];
  v7 = v4;
  v22 = v6;
  v8 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(v5, 0, 1, 0, 0, 0, 0, v6, 0);
  sub_269C1B0B8(0, &qword_280351920);
  v24 = *&v7[OBJC_IVAR____TtC13SleepHealthUI15PlusMinusButton_type];
  Symbol.systemName.getter();
  v9 = sub_269D9ADA0();

  v10 = objc_opt_self();
  v11 = [v10 configurationWithFont:v8 scale:3];
  if (v9)
  {
    v12 = v9;
    v9 = [v12 imageWithConfiguration_];

    v11 = v12;
  }

  v13 = OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker_plusButton;
  [v7 setImage:v9 forState:0];

  *(v1 + v13) = v7;
  v14 = objc_allocWithZone(v2);
  *&v14[OBJC_IVAR____TtC13SleepHealthUI15PlusMinusButton_type] = 20481;
  v23.receiver = v14;
  v23.super_class = v2;
  v15 = objc_msgSendSuper2(&v23, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v16 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(v5, 0, 1, 0, 0, 0, 0, v22, 0);
  v24 = *&v15[OBJC_IVAR____TtC13SleepHealthUI15PlusMinusButton_type];
  Symbol.systemName.getter();
  v17 = sub_269D9ADA0();

  v18 = [v10 configurationWithFont:v16 scale:3];
  if (v17)
  {
    v19 = v17;
    v17 = [v19 imageWithConfiguration_];

    v18 = v19;
  }

  v20 = OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker_minusButton;
  [v15 setImage:v17 forState:0];

  *(v1 + v20) = v15;
  v21 = OBJC_IVAR____TtC13SleepHealthUI18TimeDurationPicker_durationLabel;
  *(v1 + v21) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  sub_269D9B100();
  __break(1u);
}