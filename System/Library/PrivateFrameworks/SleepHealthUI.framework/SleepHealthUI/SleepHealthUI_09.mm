uint64_t SleepScheduleComponentsViewModel.roundedWakeUpComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SleepScheduleComponentsViewModel() + 40);
  v4 = sub_269D971F0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_269D0B86C(uint64_t a1, uint64_t a2)
{
  v4 = sub_269D971F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = type metadata accessor for SleepScheduleComponentsViewModel();
  (*(v5 + 24))(a2 + *(v8 + 40), v7, v4);
  sub_269D0B984();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_269D0B984()
{
  v1 = v0;
  sub_269D0C8FC(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for SleepScheduleComponentsViewModel();
  v6 = v5;
  if (!*(v0 + *(v5 + 28)))
  {
    *(v0 + *(v5 + 60)) = 0;
LABEL_8:
    v10 = 0;
    v11 = 0;
    goto LABEL_10;
  }

  v7 = sub_269D09440() & 1;
  v8 = sub_269D09680();
  v9 = v7 | 2;
  if ((v8 & 1) == 0)
  {
    v9 = v7;
  }

  *(v0 + v6[15]) = v9;
  if (v9)
  {
    v11 = 0;
    v10 = 1;
    goto LABEL_10;
  }

  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = 0;
  v11 = 1;
LABEL_10:
  *(v0 + v6[13]) = v10;
  *(v0 + v6[14]) = v11;
  sub_269D97720();
  v12 = sub_269D0C704(v4, v0);
  v14 = v13;
  v15 = MEMORY[0x277CC9578];
  sub_269D0CB60(v4, &qword_280C0BB60, MEMORY[0x277CC9578]);
  v16 = (v1 + v6[18]);

  *v16 = v12;
  v16[1] = v14;
  sub_269D97720();
  v17 = sub_269D0C704(v4, v1);
  v19 = v18;
  sub_269D0CB60(v4, &qword_280C0BB60, v15);
  v20 = (v1 + v6[19]);

  *v20 = v17;
  v20[1] = v19;
  return sub_269D0A9B8();
}

void (*SleepScheduleComponentsViewModel.roundedWakeUpComponents.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  sub_269D0C8FC(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  v4 = *(*(v3 - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(v4);
  }

  *(a1 + 8) = v5;
  v6 = type metadata accessor for SleepScheduleComponentsViewModel();
  *(a1 + 16) = v6;
  *(a1 + 24) = *(v6 + 40);
  return sub_269D0BC28;
}

void sub_269D0BC28(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = a1[1];
    goto LABEL_15;
  }

  v3 = a1[2];
  v4 = *a1;
  if (!*(*a1 + v3[7]))
  {
    *(v4 + v3[15]) = 0;
LABEL_13:
    v9 = 0;
    v10 = 0;
    goto LABEL_14;
  }

  v5 = a1;
  v6 = sub_269D09440() & 1;
  v7 = sub_269D09680();
  v8 = v6 | 2;
  if ((v7 & 1) == 0)
  {
    v8 = v6;
  }

  *(v4 + v3[15]) = v8;
  if (v8)
  {
    v10 = 0;
    v9 = 1;
    goto LABEL_11;
  }

  if (!v8)
  {
    a1 = v5;
    goto LABEL_13;
  }

  v9 = 0;
  v10 = 1;
LABEL_11:
  a1 = v5;
LABEL_14:
  *(v4 + v3[13]) = v9;
  v2 = a1[1];
  *(v4 + v3[14]) = v10;
  sub_269D97720();
  v11 = sub_269D0C704(v2, v4);
  v13 = v12;
  v14 = MEMORY[0x277CC9578];
  sub_269D0CB60(v2, &qword_280C0BB60, MEMORY[0x277CC9578]);
  v15 = (v4 + v3[18]);

  *v15 = v11;
  v15[1] = v13;
  sub_269D97720();
  v16 = sub_269D0C704(v2, v4);
  v18 = v17;
  sub_269D0CB60(v2, &qword_280C0BB60, v14);
  v19 = (v4 + v3[19]);

  *v19 = v16;
  v19[1] = v18;
  sub_269D0A9B8();
LABEL_15:

  free(v2);
}

uint64_t SleepScheduleComponentsViewModel.wakeUpComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SleepScheduleComponentsViewModel() + 44);
  v4 = sub_269D971F0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_269D0BE7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_269D971F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = type metadata accessor for SleepScheduleComponentsViewModel();
  (*(v5 + 24))(a2 + *(v8 + 44), v7, v4);
  sub_269D0A9B8();
  return (*(v5 + 8))(v7, v4);
}

uint64_t (*SleepScheduleComponentsViewModel.wakeUpComponents.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  type metadata accessor for SleepScheduleComponentsViewModel();
  return sub_269D0BFE0;
}

uint64_t sub_269D0BFE0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_269D0A9B8();
  }

  return result;
}

uint64_t sub_269D0C00C@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  sub_269D0C8FC(0, &qword_28034E048, MEMORY[0x277CC8990]);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v32 - v3;
  v4 = sub_269D971F0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v35 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - v8;
  sub_269D0C8FC(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - v11;
  v13 = sub_269D97580();
  v39 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v40 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SleepScheduleComponentsViewModel();
  v16 = v15[5];
  v17 = v1 + v15[11];
  v33 = *(v5 + 16);
  v34 = v5 + 16;
  v33(v9, v17, v4);
  sub_269D97150();
  sub_269D97160();
  sub_269D971A0();
  sub_269D971B0();
  v38 = v16;
  v18 = v1;
  sub_269D97720();
  v19 = v13;
  v36 = v5;
  v20 = v5;
  v21 = v39;
  v22 = v4;
  v23 = *(v20 + 8);
  v23(v9, v22);
  if ((*(v21 + 48))(v12, 1, v19) == 1)
  {
    sub_269D0CB60(v12, &qword_280C0BB60, MEMORY[0x277CC9578]);
    return (*(v21 + 56))(v41, 1, 1, v19);
  }

  (*(v21 + 32))(v40, v12, v19);
  v24 = v18 + v15[9];
  v25 = v19;
  v26 = v37;
  Calendar.timeComponents(from:to:)(v24, v37);
  v27 = v36;
  if ((*(v36 + 48))(v26, 1, v22) == 1)
  {
    (*(v21 + 8))(v40, v25);
    sub_269D0CB60(v26, &qword_28034E048, MEMORY[0x277CC8990]);
    v19 = v25;
    return (*(v21 + 56))(v41, 1, 1, v19);
  }

  v29 = v35;
  (*(v27 + 32))(v35, v26, v22);
  v33(v9, v29, v22);
  v30 = _s10Foundation14DateComponentsV13SleepHealthUIE08calendarC0ShyAA8CalendarV9ComponentOGvgZ_0();
  sub_269D68968(v30, v29, v9);

  v31 = v40;
  sub_269D97730();
  v23(v29, v22);
  (*(v21 + 8))(v31, v25);
  return (v23)(v9, v22);
}

id SleepScheduleComponentsViewModel.dayLabelFormatter.getter()
{
  v1 = *(v0 + *(type metadata accessor for SleepScheduleComponentsViewModel() + 48));

  return v1;
}

uint64_t sub_269D0C4E0(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = type metadata accessor for SleepScheduleComponentsViewModel();
  objc_storeStrong((a2 + *(v4 + 48)), v3);
  return sub_269D0A9B8();
}

void SleepScheduleComponentsViewModel.dayLabelFormatter.setter(void *a1)
{
  v2 = type metadata accessor for SleepScheduleComponentsViewModel();
  objc_storeStrong((v1 + *(v2 + 48)), a1);
  sub_269D0A9B8();
}

uint64_t (*SleepScheduleComponentsViewModel.dayLabelFormatter.modify(void *a1))()
{
  *a1 = v1;
  type metadata accessor for SleepScheduleComponentsViewModel();
  return sub_269D0CBBC;
}

uint64_t SleepScheduleComponentsViewModel.bedtimeDay.getter()
{
  v1 = *(v0 + *(type metadata accessor for SleepScheduleComponentsViewModel() + 64));

  return v1;
}

uint64_t SleepScheduleComponentsViewModel.wakeUpDay.getter()
{
  v1 = *(v0 + *(type metadata accessor for SleepScheduleComponentsViewModel() + 68));

  return v1;
}

uint64_t SleepScheduleComponentsViewModel.roundedFormattedBedtimeTime.getter()
{
  v1 = *(v0 + *(type metadata accessor for SleepScheduleComponentsViewModel() + 72));

  return v1;
}

uint64_t SleepScheduleComponentsViewModel.roundedFormattedWakeUpTime.getter()
{
  v1 = *(v0 + *(type metadata accessor for SleepScheduleComponentsViewModel() + 76));

  return v1;
}

uint64_t sub_269D0C704(uint64_t a1, uint64_t a2)
{
  v4 = sub_269D97580();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D0C8FC(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v17 - v9;
  sub_269D0CAE0(a1, v17 - v9);
  v11 = (*(v5 + 48))(v10, 1, v4);
  result = 0;
  if (v11 != 1)
  {
    (*(v5 + 32))(v7, v10, v4);
    v13 = *(a2 + *(type metadata accessor for SleepScheduleComponentsViewModel() + 24));
    v14 = sub_269D974B0();
    v15 = [v13 stringFromDate_];

    v16 = sub_269D9A630();
    (*(v5 + 8))(v7, v4);
    return v16;
  }

  return result;
}

void sub_269D0C8FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_269D0C978()
{
  sub_269D977A0();
  if (v0 <= 0x3F)
  {
    sub_269C1B0B8(319, &qword_280C0BF28);
    if (v1 <= 0x3F)
    {
      sub_269C662B4();
      if (v2 <= 0x3F)
      {
        sub_269D971F0();
        if (v3 <= 0x3F)
        {
          sub_269D0CA90();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_269D0CA90()
{
  if (!qword_280C0BF30)
  {
    v0 = sub_269D9AE60();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0BF30);
    }
  }
}

uint64_t sub_269D0CAE0(uint64_t a1, uint64_t a2)
{
  sub_269D0C8FC(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269D0CB60(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_269D0C8FC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id WeatherPrefetchScheduler.init(sleepStore:)(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = OBJC_IVAR____TtC13SleepHealthUI24WeatherPrefetchScheduler_onShouldPrefetch;
  sub_269CB9E90();
  swift_allocObject();
  *&v1[v4] = sub_269D98790();
  v5 = OBJC_IVAR____TtC13SleepHealthUI24WeatherPrefetchScheduler_onShouldCancel;
  swift_allocObject();
  *&v1[v5] = sub_269D98790();
  v6 = OBJC_IVAR____TtC13SleepHealthUI24WeatherPrefetchScheduler_lastWakeUp;
  v7 = sub_269D97580();
  (*(*(v7 - 8) + 56))(&v2[v6], 1, 1, v7);
  v8 = OBJC_IVAR____TtC13SleepHealthUI24WeatherPrefetchScheduler_lockedTimer;
  sub_269D0CEAC();
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = 0;
  *&v2[v8] = v9;
  if (qword_28034D738 != -1)
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
    v22 = v14;
    *v13 = 136446210;
    v15 = sub_269D9B4D0();
    v17 = sub_269C2EACC(v15, v16, &v22);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_269C18000, v11, v12, "[%{public}s] initializing...", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x26D652460](v14, -1, -1);
    MEMORY[0x26D652460](v13, -1, -1);
  }

  *&v2[OBJC_IVAR____TtC13SleepHealthUI24WeatherPrefetchScheduler_sleepStore] = a1;
  v18 = type metadata accessor for WeatherPrefetchScheduler();
  v23.receiver = v2;
  v23.super_class = v18;
  v19 = a1;
  v20 = objc_msgSendSuper2(&v23, sel_init);
  [v19 addObserver_];

  return v20;
}

void sub_269D0CEAC()
{
  if (!qword_280350928)
  {
    sub_269D0CF14();
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_269D9B030();
    if (!v1)
    {
      atomic_store(v0, &qword_280350928);
    }
  }
}

void sub_269D0CF14()
{
  if (!qword_280350930)
  {
    sub_269C1B0B8(255, &qword_280350938);
    v0 = sub_269D9AE60();
    if (!v1)
    {
      atomic_store(v0, &qword_280350930);
    }
  }
}

uint64_t sub_269D0CF7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_269D10820(0, &unk_280351880, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = sub_269D9A900();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_269D9A8E0();
  v13 = a1;

  v14 = sub_269D9A8D0();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = a1;
  v15[5] = a3;
  v15[6] = a4;
  v15[7] = a5;
  sub_269C79F94(0, 0, v11, &unk_269DA7410, v15);
}

uint64_t sub_269D0D0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_269D9A8E0();
  v7[6] = sub_269D9A8D0();
  v9 = sub_269D9A880();

  return MEMORY[0x2822009F8](sub_269D0D168, v9, v8);
}

id sub_269D0D168()
{
  v27 = v0;
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    result = [v2 sharedBehavior];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v5 = result;

    v6 = [v5 isAppleWatch];

    if (v6)
    {
      v7 = [v3 goodMorningAlertNotificationEnabled];
    }

    else
    {
      v7 = [v3 goodMorningScreenEnabled];
    }

    if (v7)
    {
      v16 = 1;
    }

    else
    {
      if (qword_28034D738 != -1)
      {
        swift_once();
      }

      v17 = sub_269D98250();
      __swift_project_value_buffer(v17, qword_280351208);
      v18 = sub_269D98230();
      v19 = sub_269D9AB80();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v26 = v21;
        *v20 = 136446210;
        v22 = sub_269D9B4D0();
        v24 = sub_269C2EACC(v22, v23, &v26);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_269C18000, v18, v19, "[%{public}s] good morning disabled, not prefetching", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        MEMORY[0x26D652460](v21, -1, -1);
        MEMORY[0x26D652460](v20, -1, -1);
      }

      v16 = 0;
    }

    (*(v0 + 24))(v16);
  }

  else
  {

    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v8 = sub_269D98250();
    __swift_project_value_buffer(v8, qword_280351208);
    v9 = sub_269D98230();
    v10 = sub_269D9AB60();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v26 = v12;
      *v11 = 136446210;
      v13 = sub_269D9B4D0();
      v15 = sub_269C2EACC(v13, v14, &v26);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_269C18000, v9, v10, "[%{public}s] failed to fetch model, not prefetching", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x26D652460](v12, -1, -1);
      MEMORY[0x26D652460](v11, -1, -1);
    }

    (*(v0 + 24))(0);
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_269D0D4C0()
{
  ObjectType = swift_getObjectType();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = ObjectType;
  v3 = *&v0[OBJC_IVAR____TtC13SleepHealthUI24WeatherPrefetchScheduler_sleepStore];
  v4 = swift_allocObject();
  v4[2] = sub_269D10F80;
  v4[3] = v2;
  v4[4] = ObjectType;
  v8[4] = sub_269D1118C;
  v8[5] = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_269C4D5F0;
  v8[3] = &block_descriptor_62;
  v5 = _Block_copy(v8);
  v6 = v0;

  [v3 sleepScheduleModelWithCompletion_];
  _Block_release(v5);
}

void sub_269D0D5F4(char a1, char *a2, uint64_t a3)
{
  v6 = sub_269D97580();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v11 = sub_269D98250();
    __swift_project_value_buffer(v11, qword_280351208);
    v12 = sub_269D98230();
    v13 = sub_269D9AB80();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock[0] = v15;
      *v14 = 136446210;
      v16 = sub_269D9B4D0();
      v26 = v7;
      v18 = sub_269C2EACC(v16, v17, aBlock);
      v7 = v26;

      *(v14 + 4) = v18;
      _os_log_impl(&dword_269C18000, v12, v13, "[%{public}s] scheduling next prefetch date", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x26D652460](v15, -1, -1);
      MEMORY[0x26D652460](v14, -1, -1);
    }

    v19 = *&a2[OBJC_IVAR____TtC13SleepHealthUI24WeatherPrefetchScheduler_sleepStore];
    v20 = *MEMORY[0x277D621E0];
    sub_269D97550();
    v21 = sub_269D974B0();
    (*(v7 + 8))(v10, v6);
    v22 = swift_allocObject();
    *(v22 + 16) = a2;
    *(v22 + 24) = a3;
    aBlock[4] = sub_269D10F88;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_269D0E134;
    aBlock[3] = &block_descriptor_69;
    v23 = _Block_copy(aBlock);
    v24 = a2;

    [v19 nextEventWithIdentifier:v20 dueAfterDate:v21 completion:v23];
    _Block_release(v23);
  }

  else
  {
    v25 = *&a2[OBJC_IVAR____TtC13SleepHealthUI24WeatherPrefetchScheduler_lockedTimer];
    MEMORY[0x28223BE20](v8);
    *(&v26 - 2) = a2;
    os_unfair_lock_lock((v25 + 24));
    sub_269D11174((v25 + 16));
    os_unfair_lock_unlock((v25 + 24));
    sub_269CB9E90();
    sub_269D10F38(&qword_2803509C8, sub_269CB9E90);
    sub_269D98830();
  }
}

uint64_t sub_269D0D990(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_269D10820(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = &v23 - v10;
  sub_269D10820(0, &unk_280351880, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v23 - v13;
  v15 = sub_269D9A900();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_269D0CAE0(a1, v11);
  sub_269D9A8E0();
  v16 = a3;
  v17 = sub_269D9A8D0();
  v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v19 = (v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  *(v20 + 16) = v17;
  *(v20 + 24) = v21;
  sub_269D10F90(v11, v20 + v18);
  *(v20 + v19) = v16;
  *(v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)) = a4;
  sub_269C79F94(0, 0, v14, &unk_269DA7420, v20);
}

uint64_t sub_269D0DBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_269D10820(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  v6[5] = swift_task_alloc();
  v7 = sub_269D97580();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  sub_269D9A8E0();
  v6[10] = sub_269D9A8D0();
  v9 = sub_269D9A880();

  return MEMORY[0x2822009F8](sub_269D0DD00, v9, v8);
}

uint64_t sub_269D0DD00()
{
  v42 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = v0[2];

  sub_269D0CAE0(v4, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_269C67C78(v0[5]);
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v5 = sub_269D98250();
    __swift_project_value_buffer(v5, qword_280351208);
    v6 = sub_269D98230();
    v7 = sub_269D9AB80();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v41 = v9;
      *v8 = 136446210;
      v10 = sub_269D9B4D0();
      v12 = sub_269C2EACC(v10, v11, &v41);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_269C18000, v6, v7, "[%{public}s] no next wake up date, not prefetching", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x26D652460](v9, -1, -1);
      MEMORY[0x26D652460](v8, -1, -1);
    }
  }

  else
  {
    (*(v0[7] + 32))(v0[9], v0[5], v0[6]);
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v13 = v0[8];
    v14 = v0[9];
    v15 = v0[6];
    v16 = v0[7];
    v17 = sub_269D98250();
    __swift_project_value_buffer(v17, qword_280351208);
    (*(v16 + 16))(v13, v14, v15);
    v18 = sub_269D98230();
    v19 = sub_269D9AB80();
    v20 = os_log_type_enabled(v18, v19);
    v22 = v0[7];
    v21 = v0[8];
    v23 = v0[6];
    if (v20)
    {
      v39 = v0[6];
      v24 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = v40;
      *v24 = 136446466;
      v25 = sub_269D9B4D0();
      v27 = sub_269C2EACC(v25, v26, &v41);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2080;
      v28 = sub_269D974B0();
      v29 = [v28 hkspDescription];

      v30 = sub_269D9A630();
      v32 = v31;

      v33 = *(v22 + 8);
      v33(v21, v39);
      v34 = sub_269C2EACC(v30, v32, &v41);

      *(v24 + 14) = v34;
      _os_log_impl(&dword_269C18000, v18, v19, "[%{public}s] next wake up is %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v40, -1, -1);
      MEMORY[0x26D652460](v24, -1, -1);
    }

    else
    {

      v33 = *(v22 + 8);
      v33(v21, v23);
    }

    v35 = v0[9];
    v36 = v0[6];
    sub_269D0E288(v35);
    v33(v35, v36);
  }

  v37 = v0[1];

  return v37();
}

uint64_t sub_269D0E134(uint64_t a1, uint64_t a2, void *a3)
{
  sub_269D10820(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_269D97540();
    v10 = sub_269D97580();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_269D97580();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_269C67C78(v8);
}

void sub_269D0E288(uint64_t a1)
{
  v2 = v1;
  v59[1] = swift_getObjectType();
  v4 = sub_269D97580();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v64 = v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v65 = v59 - v9;
  MEMORY[0x28223BE20](v8);
  v59[0] = v59 - v10;
  sub_269D10DD0();
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D10820(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v61 = v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v59 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = v59 - v21;
  v62 = v5[2];
  v63 = a1;
  v62(v59 - v21, a1, v4);
  v60 = v5[7];
  v60(v22, 0, 1, v4);
  v23 = OBJC_IVAR____TtC13SleepHealthUI24WeatherPrefetchScheduler_lastWakeUp;
  swift_beginAccess();
  v24 = *(v12 + 56);
  sub_269D0CAE0(v22, v14);
  v67 = v2;
  sub_269D0CAE0(v2 + v23, &v14[v24]);
  v66 = v5;
  v25 = v5[6];
  if (v25(v14, 1, v4) == 1)
  {
    sub_269C67C78(v22);
    if (v25(&v14[v24], 1, v4) == 1)
    {
      sub_269C67C78(v14);
LABEL_14:
      if (qword_28034D738 != -1)
      {
        swift_once();
      }

      v51 = sub_269D98250();
      __swift_project_value_buffer(v51, qword_280351208);
      v52 = sub_269D98230();
      v53 = sub_269D9AB80();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v68[0] = v55;
        *v54 = 136446210;
        v56 = sub_269D9B4D0();
        v58 = sub_269C2EACC(v56, v57, v68);

        *(v54 + 4) = v58;
        _os_log_impl(&dword_269C18000, v52, v53, "[%{public}s] reschedule not needed, next wake up unchanged", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v55);
        MEMORY[0x26D652460](v55, -1, -1);
        MEMORY[0x26D652460](v54, -1, -1);
      }

      return;
    }

    goto LABEL_6;
  }

  sub_269D0CAE0(v14, v20);
  if (v25(&v14[v24], 1, v4) == 1)
  {
    sub_269C67C78(v22);
    (v66[1])(v20, v4);
LABEL_6:
    sub_269D10E50(v14);
    v26 = v64;
    goto LABEL_7;
  }

  v48 = v66;
  (v66[4])(v59[0], &v14[v24], v4);
  sub_269D10F38(&qword_2803509D8, MEMORY[0x277CC9578]);
  v49 = sub_269D9A560();
  v50 = v48[1];
  v50(v59[0], v4);
  sub_269C67C78(v22);
  v50(v20, v4);
  sub_269C67C78(v14);
  v26 = v64;
  if (v49)
  {
    goto LABEL_14;
  }

LABEL_7:
  v27 = v61;
  v28 = v62;
  v62(v61, v63, v4);
  v60(v27, 0, 1, v4);
  v29 = v67;
  swift_beginAccess();
  sub_269CB9F30(v27, v29 + v23);
  swift_endAccess();
  sub_269D10EAC(0x20000000000001uLL);
  v30 = v65;
  sub_269D974A0();
  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v31 = sub_269D98250();
  __swift_project_value_buffer(v31, qword_280351208);
  v28(v26, v30, v4);
  v32 = sub_269D98230();
  v33 = sub_269D9AB80();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v68[0] = v64;
    *v34 = 136446466;
    v35 = sub_269D9B4D0();
    v37 = sub_269C2EACC(v35, v36, v68);

    *(v34 + 4) = v37;
    *(v34 + 12) = 2080;
    v38 = sub_269D974B0();
    v39 = [v38 hkspDescription];

    v40 = sub_269D9A630();
    v41 = v26;
    v43 = v42;

    v44 = v66[1];
    v44(v41, v4);
    v45 = sub_269C2EACC(v40, v43, v68);

    *(v34 + 14) = v45;
    _os_log_impl(&dword_269C18000, v32, v33, "[%{public}s] scheduling prefetch for %s", v34, 0x16u);
    v46 = v64;
    swift_arrayDestroy();
    MEMORY[0x26D652460](v46, -1, -1);
    v47 = v34;
    v30 = v65;
    MEMORY[0x26D652460](v47, -1, -1);
  }

  else
  {

    v44 = v66[1];
    v44(v26, v4);
  }

  sub_269D0EC20(v30);
  v44(v30, v4);
}

uint64_t sub_269D0EA70()
{
  ObjectType = swift_getObjectType();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = *&v0[OBJC_IVAR____TtC13SleepHealthUI24WeatherPrefetchScheduler_sleepStore];
  v4 = swift_allocObject();
  v4[2] = sub_269D10CE8;
  v4[3] = v2;
  v4[4] = ObjectType;
  v8[4] = sub_269D10CF0;
  v8[5] = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_269C4D5F0;
  v8[3] = &block_descriptor_48;
  v5 = _Block_copy(v8);
  v6 = v0;

  [v3 sleepScheduleModelWithCompletion_];
  _Block_release(v5);
}

uint64_t sub_269D0EBA4(uint64_t result)
{
  if (result)
  {
    sub_269CB9E90();
    sub_269D10F38(&qword_2803509C8, sub_269CB9E90);
    return sub_269D98830();
  }

  return result;
}

void sub_269D0EC20(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_269D97580();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI24WeatherPrefetchScheduler_lockedTimer);
  v24 = v1;
  v25 = a1;
  v26 = ObjectType;
  os_unfair_lock_lock((v8 + 24));
  sub_269D10C8C((v8 + 16));
  os_unfair_lock_unlock((v8 + 24));
  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v9 = sub_269D98250();
  __swift_project_value_buffer(v9, qword_280351208);
  (*(v5 + 16))(v7, a1, v4);
  v10 = sub_269D98230();
  v11 = sub_269D9AB80();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27[0] = v13;
    *v12 = 136446466;
    v14 = sub_269D9B4D0();
    v16 = sub_269C2EACC(v14, v15, v27);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v17 = sub_269D974B0();
    v18 = [v17 hkspDescription];

    v19 = sub_269D9A630();
    v21 = v20;

    (*(v5 + 8))(v7, v4);
    v22 = sub_269C2EACC(v19, v21, v27);

    *(v12 + 14) = v22;
    _os_log_impl(&dword_269C18000, v10, v11, "[%{public}s] prefetch scheduled for %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v13, -1, -1);
    MEMORY[0x26D652460](v12, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }
}

void sub_269D0EEFC(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_269D0F424(a1);
  v6 = objc_allocWithZone(MEMORY[0x277D6C0A8]);
  v7 = sub_269D9A5F0();
  v8 = [v6 initWithIdentifier_];

  *a1 = v8;
  if (v8)
  {
    v9 = sub_269D974B0();
    sub_269C1B0B8(0, &qword_280C0AEB0);
    v10 = sub_269D9AC40();
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = a4;
    v14[4] = sub_269D10CAC;
    v14[5] = v12;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_269CECE18;
    v14[3] = &block_descriptor_26;
    v13 = _Block_copy(v14);

    [v8 scheduleForDate:v9 leewayInterval:v10 queue:v13 handler:20.0];
    _Block_release(v13);
  }
}

uint64_t sub_269D0F0BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269D9A8E0();
  v6[2] = a2;
  v6[3] = a3;
  return sub_269C71EBC(sub_269D10CCC, v6);
}

void sub_269D0F138()
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v1 = sub_269D98250();
  __swift_project_value_buffer(v1, qword_280351208);
  v2 = sub_269D98230();
  v3 = sub_269D9AB80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14[0] = v5;
    *v4 = 136446210;
    v6 = sub_269D9B4D0();
    v8 = sub_269C2EACC(v6, v7, v14);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_269C18000, v2, v3, "[%{public}s] prefetch timer fired", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x26D652460](v5, -1, -1);
    MEMORY[0x26D652460](v4, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(Strong + OBJC_IVAR____TtC13SleepHealthUI24WeatherPrefetchScheduler_lockedTimer);
    MEMORY[0x28223BE20](Strong);
    os_unfair_lock_lock((v11 + 24));
    sub_269D11174((v11 + 16));
    if (v0)
    {
      os_unfair_lock_unlock((v11 + 24));
      __break(1u);
      return;
    }

    os_unfair_lock_unlock((v11 + 24));
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;

    sub_269CB9E90();
    sub_269D10F38(&qword_2803509C8, sub_269CB9E90);
    sub_269D98830();
  }
}

void sub_269D0F424(void **a1)
{
  swift_getObjectType();
  v2 = *a1;
  if (*a1)
  {
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v3 = sub_269D98250();
    __swift_project_value_buffer(v3, qword_280351208);
    v4 = sub_269D98230();
    v5 = sub_269D9AB80();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136446210;
      v8 = sub_269D9B4D0();
      v10 = sub_269C2EACC(v8, v9, &v11);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_269C18000, v4, v5, "[%{public}s] cancelling existing prefetch timer", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x26D652460](v7, -1, -1);
      MEMORY[0x26D652460](v6, -1, -1);
    }

    [v2 invalidate];
  }

  *a1 = 0;
}

id WeatherPrefetchScheduler.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC13SleepHealthUI24WeatherPrefetchScheduler_lockedTimer];
  os_unfair_lock_lock((v1 + 24));
  sub_269D107F4((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
  v3.receiver = v0;
  v3.super_class = type metadata accessor for WeatherPrefetchScheduler();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id WeatherPrefetchScheduler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t WeatherPrefetchScheduler.sleepStore(_:sleepScheduleModelDidChange:)()
{
  ObjectType = swift_getObjectType();
  sub_269D10820(0, &unk_280351880, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_269D9A900();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_269D9A8E0();
  v6 = v0;
  v7 = sub_269D9A8D0();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  v8[5] = ObjectType;
  sub_269C79F94(0, 0, v4, &unk_269DA7388, v8);
}

uint64_t sub_269D0F950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_269D9A8E0();
  v5[4] = sub_269D9A8D0();
  v7 = sub_269D9A880();

  return MEMORY[0x2822009F8](sub_269D0F9E8, v7, v6);
}

uint64_t sub_269D0F9E8()
{
  v12 = v0;

  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v1 = sub_269D98250();
  __swift_project_value_buffer(v1, qword_280351208);
  v2 = sub_269D98230();
  v3 = sub_269D9AB80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v6 = sub_269D9B4D0();
    v8 = sub_269C2EACC(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_269C18000, v2, v3, "[%{public}s] schedule model changed, rescheduling prefetch", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x26D652460](v5, -1, -1);
    MEMORY[0x26D652460](v4, -1, -1);
  }

  sub_269D0D4C0();
  v9 = *(v0 + 8);

  return v9();
}

uint64_t WeatherPrefetchScheduler.sleepStore(_:sleepScheduleStateDidChange:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_269D10820(0, &unk_280351880, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_269D9A900();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_269D9A8E0();
  v9 = v2;
  v10 = sub_269D9A8D0();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = a2;
  v11[5] = v9;
  v11[6] = ObjectType;
  sub_269C79F94(0, 0, v7, &unk_269DA7398, v11);
}

uint64_t sub_269D0FE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_269D9A8E0();
  v6[5] = sub_269D9A8D0();
  v8 = sub_269D9A880();

  return MEMORY[0x2822009F8](sub_269D0FEB8, v8, v7);
}

uint64_t sub_269D0FEB8()
{
  v19 = v0;
  v1 = *(v0 + 16);

  if (v1 == 6 || v1 == 1)
  {
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v3 = sub_269D98250();
    __swift_project_value_buffer(v3, qword_280351208);
    v4 = sub_269D98230();
    v5 = sub_269D9AB80();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v18 = v7;
      *v6 = 136446466;
      v8 = sub_269D9B4D0();
      v10 = sub_269C2EACC(v8, v9, &v18);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2080;
      v11 = NSStringFromHKSPSleepScheduleState();
      v12 = sub_269D9A630();
      v14 = v13;

      v15 = sub_269C2EACC(v12, v14, &v18);

      *(v6 + 14) = v15;
      _os_log_impl(&dword_269C18000, v4, v5, "[%{public}s] schedule state changed to %s, scheduling next prefetch", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v7, -1, -1);
      MEMORY[0x26D652460](v6, -1, -1);
    }

    sub_269D0D4C0();
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t WeatherPrefetchScheduler.sleepStore(_:sleepEventDidOccur:)(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  sub_269D10820(0, &unk_280351880, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_269D9A900();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_269D9A8E0();
  v9 = a2;
  v10 = v2;
  v11 = sub_269D9A8D0();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v9;
  v12[5] = v10;
  v12[6] = ObjectType;
  sub_269C79F94(0, 0, v7, &unk_269DA73A8, v12);
}

uint64_t sub_269D1036C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_269D9A8E0();
  v6[5] = sub_269D9A8D0();
  v8 = sub_269D9A880();

  return MEMORY[0x2822009F8](sub_269D10408, v8, v7);
}

uint64_t sub_269D10408()
{
  v20 = v0;
  v1 = *(v0 + 16);

  v2 = [v1 identifier];
  v3 = sub_269D9A630();
  v5 = v4;
  if (v3 == sub_269D9A630() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_269D9B280();

    if ((v8 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v9 = sub_269D98250();
  __swift_project_value_buffer(v9, qword_280351208);
  v10 = sub_269D98230();
  v11 = sub_269D9AB80();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136446210;
    v14 = sub_269D9B4D0();
    v16 = sub_269C2EACC(v14, v15, &v19);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_269C18000, v10, v11, "[%{public}s] wake detection notification posted, prefetching immediately", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x26D652460](v13, -1, -1);
    MEMORY[0x26D652460](v12, -1, -1);
  }

  sub_269D0EA70();
LABEL_13:
  v17 = *(v0 + 8);

  return v17();
}

uint64_t type metadata accessor for WeatherPrefetchScheduler()
{
  result = qword_280350948;
  if (!qword_280350948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269D10820(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_269D10874(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_269C80D04;

  return sub_269D0F950(a1, v4, v5, v7, v6);
}

uint64_t sub_269D10934(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_269C80D04;

  return sub_269D0FE1C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_269D109FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_269C80D04;

  return sub_269D1036C(a1, v4, v5, v6, v7, v8);
}

void sub_269D10ACC()
{
  sub_269D10820(319, &qword_280C0BB60, MEMORY[0x277CC9578]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t objectdestroy_7Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_3Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_269D10CFC(uint64_t a1)
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

  return sub_269D0D0CC(a1, v4, v5, v6, v7, v9, v8);
}

void sub_269D10DD0()
{
  if (!qword_2803509D0)
  {
    sub_269D10820(255, &qword_280C0BB60, MEMORY[0x277CC9578]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2803509D0);
    }
  }
}

uint64_t sub_269D10E50(uint64_t a1)
{
  sub_269D10DD0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_269D10EAC(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x26D652470](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x26D652470](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_269D10F38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_269D10F90(uint64_t a1, uint64_t a2)
{
  sub_269D10820(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269D11010(uint64_t a1)
{
  v3 = v2;
  sub_269D10820(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  v6 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v7 = (*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_269C71C08;

  return sub_269D0DBB4(a1, v8, v9, v1 + v6, v10, v11);
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_269D111E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 200);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_269D11228(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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
      *(result + 200) = (a2 - 1);
      return result;
    }

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_269D112D0@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v6, a1, sizeof(v6));
  v5[344] = 0;
  memcpy(a2, a1, 0x158uLL);
  *(a2 + 344) = 0;
  *(a2 + 352) = 0;
  sub_269D13C34(a1, v5, sub_269D13110);
  sub_269D13C34(v6, v5, sub_269D13110);
  sub_269D14198(__dst, sub_269D13110);
}

uint64_t sub_269D113F8()
{
  v1 = *(v0 + 208);
  Text.ViewModel.hash(into:)();
  Text.ViewModel.hash(into:)();
  Text.ViewModel.hash(into:)();
  sub_269D9A6A0();
  return MEMORY[0x26D6515B0](v1);
}

uint64_t sub_269D114A4()
{
  v1 = *(v0 + 208);
  sub_269D9B350();
  Text.ViewModel.hash(into:)();
  Text.ViewModel.hash(into:)();
  Text.ViewModel.hash(into:)();
  sub_269D9A6A0();
  MEMORY[0x26D6515B0](v1);
  return sub_269D9B390();
}

uint64_t sub_269D11568()
{
  v1 = *(v0 + 208);
  sub_269D9B350();
  Text.ViewModel.hash(into:)();
  Text.ViewModel.hash(into:)();
  Text.ViewModel.hash(into:)();
  sub_269D9A6A0();
  MEMORY[0x26D6515B0](v1);
  return sub_269D9B390();
}

void *sub_269D11624@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[13];
  v22[12] = v1[12];
  v22[13] = v3;
  v22[14] = v1[14];
  v4 = v1[9];
  v22[8] = v1[8];
  v22[9] = v4;
  v5 = v1[11];
  v22[10] = v1[10];
  v22[11] = v5;
  v6 = v1[5];
  v22[4] = v1[4];
  v22[5] = v6;
  v7 = v1[7];
  v22[6] = v1[6];
  v22[7] = v7;
  v8 = v1[1];
  v22[0] = *v1;
  v22[1] = v8;
  v9 = v1[3];
  v22[2] = v1[2];
  v22[3] = v9;
  v10 = sub_269D99080();
  v16[328] = 0;
  sub_269D11808(v22, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v24, __src, sizeof(v24));
  sub_269D13C34(__dst, v25, sub_269D12A58);
  sub_269D14198(v24, sub_269D12A58);
  memcpy(&v16[7], __dst, 0x140uLL);
  v19[0] = v10;
  v19[1] = 0x4028000000000000;
  v20 = 0;
  memcpy(v21, v16, sizeof(v21));
  v11 = sub_269D99090();
  v18 = 0;
  sub_269D112D0(v19, v15);
  memcpy(v25, v15, 0x161uLL);
  memcpy(__src, v15, 0x161uLL);
  sub_269D13C34(v25, v14, sub_269D13074);
  sub_269D14198(__src, sub_269D13074);
  sub_269D14198(v19, sub_269D13110);
  memcpy(&v17[7], v25, 0x161uLL);
  v12 = v18;
  *a1 = v11;
  *(a1 + 8) = 0;
  *(a1 + 16) = v12;
  return memcpy((a1 + 17), v17, 0x168uLL);
}

uint64_t sub_269D11808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v56 = *(a1 + 216);
  *&v57 = *(a1 + 232);
  sub_269D131A4(0, &qword_280350A90, &qword_280350A98, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
  sub_269D99E70();
  sub_269D9A180();
  sub_269D98AC0();
  v4 = *(a1 + 176);
  v84 = *(a1 + 160);
  v85 = v4;
  v86 = *(a1 + 192);
  v87 = *(a1 + 208);
  v5 = *(a1 + 112);
  v80 = *(a1 + 96);
  v81 = v5;
  v6 = *(a1 + 144);
  v82 = *(a1 + 128);
  v83 = v6;
  v7 = *(a1 + 48);
  v76 = *(a1 + 32);
  v77 = v7;
  v8 = *(a1 + 80);
  v78 = *(a1 + 64);
  v79 = v8;
  v9 = *(a1 + 16);
  v74 = *a1;
  v75 = v9;
  if ((v87 & 4) != 0)
  {
    *&__src[0] = v88;
    *(&__src[0] + 1) = v89;
    *&__src[1] = v90;
    *(&__src[1] + 1) = v91;
    __src[2] = v92;
    LOBYTE(__src[3]) = 1;
    sub_269D13B7C(0, &qword_2803509F8, &type metadata for ScheduleComponentView.VerticalBar, MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    sub_269D1320C();
  }

  else
  {
    sub_269D13B7C(0, &qword_2803509F8, &type metadata for ScheduleComponentView.VerticalBar, MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    sub_269D1320C();
    memset(__src, 0, 49);
  }

  sub_269D992D0();
  v25 = v56;
  v26 = v57;
  v10 = v58;
  v11 = v59;
  __src[10] = v84;
  __src[11] = v85;
  __src[12] = v86;
  *&__src[13] = v87;
  __src[6] = v80;
  __src[7] = v81;
  __src[8] = v82;
  __src[9] = v83;
  __src[2] = v76;
  __src[3] = v77;
  __src[4] = v78;
  __src[5] = v79;
  __src[0] = v74;
  __src[1] = v75;
  v12 = swift_allocObject();
  v13 = *(a1 + 208);
  v12[13] = *(a1 + 192);
  v12[14] = v13;
  v12[15] = *(a1 + 224);
  v14 = *(a1 + 144);
  v12[9] = *(a1 + 128);
  v12[10] = v14;
  v15 = *(a1 + 176);
  v12[11] = *(a1 + 160);
  v12[12] = v15;
  v16 = *(a1 + 80);
  v12[5] = *(a1 + 64);
  v12[6] = v16;
  v17 = *(a1 + 112);
  v12[7] = *(a1 + 96);
  v12[8] = v17;
  v18 = *(a1 + 16);
  v12[1] = *a1;
  v12[2] = v18;
  v19 = *(a1 + 48);
  v12[3] = *(a1 + 32);
  v12[4] = v19;
  sub_269D1338C(a1, &v56);
  v20 = sub_269D9A180();
  v22 = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_269D1330C;
  *(v23 + 24) = v12;
  v45[10] = __src[10];
  v45[11] = __src[11];
  v45[12] = __src[12];
  *&v46 = *&__src[13];
  v45[6] = __src[6];
  v45[7] = __src[7];
  v45[8] = __src[8];
  v45[9] = __src[9];
  v45[2] = __src[2];
  v45[3] = __src[3];
  v45[4] = __src[4];
  v45[5] = __src[5];
  v45[0] = __src[0];
  v45[1] = __src[1];
  *(&v46 + 1) = sub_269D48D78;
  *&v47 = 0;
  *(&v47 + 1) = v20;
  v48 = v22;
  v41 = __src[12];
  v42 = v46;
  v43 = v47;
  v44 = v22;
  v37 = __src[8];
  v38 = __src[9];
  v39 = __src[10];
  v40 = __src[11];
  v33 = __src[4];
  v34 = __src[5];
  v35 = __src[6];
  v36 = __src[7];
  v29 = __src[0];
  v30 = __src[1];
  v31 = __src[2];
  v32 = __src[3];
  v49[10] = __src[10];
  v49[11] = __src[11];
  v49[12] = __src[12];
  v49[6] = __src[6];
  v49[7] = __src[7];
  v49[8] = __src[8];
  v49[9] = __src[9];
  v49[2] = __src[2];
  v49[3] = __src[3];
  v49[4] = __src[4];
  v49[5] = __src[5];
  v49[0] = __src[0];
  v49[1] = __src[1];
  v50 = *&__src[13];
  v51 = sub_269D48D78;
  v52 = 0;
  v53 = v20;
  v54 = v22;
  sub_269D133CC(&v74, &v56);
  sub_269D13C34(v45, &v56, sub_269D12BD0);
  sub_269D14198(v49, sub_269D12BD0);
  v28[272] = v11;
  __src[12] = v41;
  __src[13] = v42;
  __src[14] = v43;
  *&__src[15] = v22;
  __src[8] = v37;
  __src[9] = v38;
  __src[10] = v39;
  __src[11] = v40;
  __src[4] = v33;
  __src[5] = v34;
  __src[6] = v35;
  __src[7] = v36;
  __src[0] = v29;
  __src[1] = v30;
  __src[2] = v31;
  __src[3] = v32;
  *(&__src[15] + 1) = sub_269D133C4;
  *&__src[16] = v23;
  memcpy(&v28[7], __src, 0x108uLL);
  *a2 = v25;
  *(a2 + 16) = v26;
  *(a2 + 32) = v10;
  *(a2 + 48) = v11;
  memcpy((a2 + 49), v28, 0x10FuLL);
  v68 = v41;
  v69 = v42;
  v70 = v43;
  v64 = v37;
  v65 = v38;
  v66 = v39;
  v67 = v40;
  v60 = v33;
  v61 = v34;
  v62 = v35;
  v63 = v36;
  v56 = v29;
  v57 = v30;
  v58 = v31;
  v59 = v32;
  v71 = v44;
  v72 = sub_269D133C4;
  v73 = v23;
  sub_269D13C34(__src, v27, sub_269D12B88);
  sub_269D14198(&v56, sub_269D12B88);
}

uint64_t sub_269D11E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  sub_269D1385C(0);
  v4 = v3;
  v44 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v43 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v45 = &v38 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - v12;
  sub_269D13828(0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v40 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v38 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v38 - v23;
  sub_269D9A8E0();
  v41 = sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25 = *(a1 + 208);
  if (v25)
  {
    sub_269D122E4();
    sub_269D13BD0(v13, v24);
    v26 = *(v44 + 7);
    v26(v24, 0, 1, v4);
  }

  else
  {
    v26 = *(v44 + 7);
    v26(v24, 1, 1, v4);
  }

  sub_269D124EC();
  sub_269D126F4();
  if (v25)
  {
    v27 = 1;
  }

  else
  {
    sub_269D122E4();
    sub_269D13BD0(v13, v22);
    v27 = 0;
  }

  v26(v22, v27, 1, v4);
  v28 = v24;
  sub_269D13C34(v24, v19, sub_269D13828);
  sub_269D13C34(v11, v13, sub_269D1385C);
  v29 = v45;
  v30 = v43;
  sub_269D13C34(v45, v43, sub_269D1385C);
  v31 = v40;
  sub_269D13C34(v22, v40, sub_269D13828);
  v32 = v19;
  v44 = v19;
  v39 = v11;
  v33 = v29;
  v34 = v42;
  sub_269D13C34(v32, v42, sub_269D13828);
  sub_269D137A4();
  v36 = v35;
  sub_269D13C34(v13, v34 + *(v35 + 48), sub_269D1385C);
  sub_269D13C34(v30, v34 + *(v36 + 64), sub_269D1385C);
  sub_269D13C34(v31, v34 + *(v36 + 80), sub_269D13828);
  sub_269D14198(v22, sub_269D13828);
  sub_269D14198(v33, sub_269D1385C);
  sub_269D14198(v39, sub_269D1385C);
  sub_269D14198(v28, sub_269D13828);
  sub_269D14198(v31, sub_269D13828);
  sub_269D14198(v30, sub_269D1385C);
  sub_269D14198(v13, sub_269D1385C);
  sub_269D14198(v44, sub_269D13828);
}

uint64_t sub_269D122E4()
{
  sub_269D138A4();
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + 144);
  v5 = *(v0 + 176);
  v20 = *(v0 + 160);
  v21 = v5;
  v6 = *(v0 + 176);
  v22 = *(v0 + 192);
  v7 = *(v0 + 112);
  v18[6] = *(v0 + 96);
  v18[7] = v7;
  v8 = *(v0 + 144);
  v19[0] = *(v0 + 128);
  v19[1] = v8;
  v9 = *(v0 + 48);
  v18[2] = *(v0 + 32);
  v18[3] = v9;
  v10 = *(v0 + 80);
  v18[4] = *(v0 + 64);
  v18[5] = v10;
  v11 = *(v0 + 16);
  v18[0] = *v0;
  v18[1] = v11;
  v13 = v19[0];
  v14 = v4;
  v23 = *(v0 + 208);
  v15 = v20;
  v16 = v6;
  sub_269D13C9C(v19, v24);
  static Text.create(_:)(&v13, v3);
  v24[0] = v13;
  v24[1] = v14;
  v24[2] = v15;
  v24[3] = v16;
  sub_269D13CF8(v24);
  v17 = v22;
  sub_269D133CC(v18, &v13);

  MEMORY[0x26D650930](46, 0xE100000000000000);
  v13 = v17;

  MEMORY[0x26D650930](0x74786554796144, 0xE700000000000000);

  sub_269D13D4C(v18);
  sub_269D14090(&qword_280350B38, sub_269D138A4, sub_269D13D7C);
  sub_269D99BB0();

  return sub_269D14198(v3, sub_269D138A4);
}

uint64_t sub_269D124EC()
{
  sub_269D138A4();
  MEMORY[0x28223BE20](v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + 176);
  v5 = *(v0 + 192);
  v6 = *(v0 + 144);
  v29 = *(v0 + 160);
  v30 = v4;
  v31 = v5;
  v7 = *(v0 + 112);
  v8 = *(v0 + 128);
  v9 = *(v0 + 80);
  v25 = *(v0 + 96);
  v26 = v7;
  v27 = v8;
  v28 = v6;
  v10 = *(v0 + 16);
  v11 = *(v0 + 48);
  v21 = *(v0 + 32);
  v22 = v11;
  v12 = *(v0 + 48);
  v23 = *(v0 + 64);
  v24 = v9;
  v13 = *(v0 + 16);
  v20[0] = *v0;
  v20[1] = v13;
  v15 = v20[0];
  v16 = v10;
  v32 = *(v0 + 208);
  v17 = v21;
  v18 = v12;
  sub_269D13C9C(v20, v33);
  static Text.create(_:)(&v15, v3);
  v33[0] = v15;
  v33[1] = v16;
  v33[2] = v17;
  v33[3] = v18;
  sub_269D13CF8(v33);
  v19 = v31;
  sub_269D133CC(v20, &v15);

  MEMORY[0x26D650930](46, 0xE100000000000000);
  v15 = v19;

  MEMORY[0x26D650930](0x786554656C746954, 0xE900000000000074);

  sub_269D13D4C(v20);
  sub_269D14090(&qword_280350B38, sub_269D138A4, sub_269D13D7C);
  sub_269D99BB0();

  return sub_269D14198(v3, sub_269D138A4);
}

uint64_t sub_269D126F4()
{
  sub_269D138A4();
  MEMORY[0x28223BE20](v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + 176);
  v5 = *(v0 + 192);
  v6 = *(v0 + 144);
  v25 = *(v0 + 160);
  v26 = v4;
  v27 = v5;
  v7 = *(v0 + 80);
  v8 = *(v0 + 112);
  v21 = *(v0 + 96);
  v22 = v8;
  v9 = *(v0 + 112);
  v23 = *(v0 + 128);
  v24 = v6;
  v10 = *(v0 + 48);
  v19[2] = *(v0 + 32);
  v19[3] = v10;
  v11 = *(v0 + 80);
  v20[0] = *(v0 + 64);
  v20[1] = v11;
  v12 = *(v0 + 16);
  v19[0] = *v0;
  v19[1] = v12;
  v14 = v20[0];
  v15 = v7;
  v28 = *(v0 + 208);
  v16 = v21;
  v17 = v9;
  sub_269D13C9C(v20, v29);
  static Text.create(_:)(&v14, v3);
  v29[0] = v14;
  v29[1] = v15;
  v29[2] = v16;
  v29[3] = v17;
  sub_269D13CF8(v29);
  v18 = v27;
  sub_269D133CC(v19, &v14);

  MEMORY[0x26D650930](46, 0xE100000000000000);
  v14 = v18;

  MEMORY[0x26D650930](0x74786554656D6954, 0xE800000000000000);

  sub_269D13D4C(v19);
  sub_269D14090(&qword_280350B38, sub_269D138A4, sub_269D13D7C);
  sub_269D99BB0();

  return sub_269D14198(v3, sub_269D138A4);
}

uint64_t sub_269D128FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 176);
  v11[10] = *(v1 + 160);
  v11[11] = v3;
  v11[12] = *(v1 + 192);
  v12 = *(v1 + 208);
  v4 = *(v1 + 112);
  v11[6] = *(v1 + 96);
  v11[7] = v4;
  v5 = *(v1 + 144);
  v11[8] = *(v1 + 128);
  v11[9] = v5;
  v6 = *(v1 + 48);
  v11[2] = *(v1 + 32);
  v11[3] = v6;
  v7 = *(v1 + 80);
  v11[4] = *(v1 + 64);
  v11[5] = v7;
  v8 = *(v1 + 16);
  v11[0] = *v1;
  v11[1] = v8;
  *a1 = sub_269D991A0();
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = 0;
  sub_269D13708();
  return sub_269D11E8C(v11, a1 + *(v9 + 44));
}

void sub_269D1298C(char *a1@<X8>)
{
  v2 = *(sub_269D98DB0() + 20);
  v3 = *MEMORY[0x277CE0118];
  v4 = sub_269D99120();
  (*(*(v4 - 8) + 104))(&a1[v2], v3, v4);
  __asm { FMOV            V0.2D, #2.0 }

  *a1 = _Q0;
  v10 = [objc_opt_self() systemGray4Color];
  v11 = sub_269D99CC0();
  sub_269D13658();
  *&a1[*(v12 + 52)] = v11;
  *&a1[*(v12 + 56)] = 256;
}

void sub_269D12A8C()
{
  if (!qword_2803509E8)
  {
    sub_269D12AFC();
    sub_269D12B88(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2803509E8);
    }
  }
}

void sub_269D12AFC()
{
  if (!qword_2803509F0)
  {
    sub_269D13B7C(255, &qword_2803509F8, &type metadata for ScheduleComponentView.VerticalBar, MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    v0 = sub_269D992E0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803509F0);
    }
  }
}

void sub_269D12BF8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_269D12C5C()
{
  if (!qword_280350A10)
  {
    sub_269D12CF0();
    sub_269D144F0(&qword_280350A48, sub_269D12CF0);
    v0 = sub_269D992B0();
    if (!v1)
    {
      atomic_store(v0, &qword_280350A10);
    }
  }
}

void sub_269D12CF0()
{
  if (!qword_280350A18)
  {
    sub_269D12BF8(255, &qword_280350A20, sub_269D12D78);
    sub_269D12E28();
    v0 = sub_269D98C00();
    if (!v1)
    {
      atomic_store(v0, &qword_280350A18);
    }
  }
}

void sub_269D12D78()
{
  if (!qword_280350A28)
  {
    sub_269D12DD4();
    v0 = sub_269D99470();
    if (!v1)
    {
      atomic_store(v0, &qword_280350A28);
    }
  }
}

unint64_t sub_269D12DD4()
{
  result = qword_280350A30;
  if (!qword_280350A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350A30);
  }

  return result;
}

unint64_t sub_269D12E28()
{
  result = qword_280350A38;
  if (!qword_280350A38)
  {
    sub_269D12BF8(255, &qword_280350A20, sub_269D12D78);
    sub_269D144F0(&qword_280350A40, sub_269D12D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350A38);
  }

  return result;
}

void sub_269D12EFC()
{
  if (!qword_280350A50)
  {
    sub_269D12DD4();
    sub_269D14090(&qword_280350A58, sub_269D12FA8, sub_269D13040);
    v0 = sub_269D99410();
    if (!v1)
    {
      atomic_store(v0, &qword_280350A50);
    }
  }
}

void sub_269D12FDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269D130A8()
{
  if (!qword_280350A78)
  {
    sub_269D13110();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280350A78);
    }
  }
}

void sub_269D13110()
{
  if (!qword_280350A80)
  {
    sub_269D12A58(255);
    sub_269D144F0(&qword_280350A88, sub_269D12A58);
    v0 = sub_269D99F00();
    if (!v1)
    {
      atomic_store(v0, &qword_280350A80);
    }
  }
}

void sub_269D131A4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_269C51E10(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_269D1320C()
{
  result = qword_280350AA0;
  if (!qword_280350AA0)
  {
    sub_269D13B7C(255, &qword_2803509F8, &type metadata for ScheduleComponentView.VerticalBar, MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    sub_269D132B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350AA0);
  }

  return result;
}

unint64_t sub_269D132B8()
{
  result = qword_280350AA8;
  if (!qword_280350AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350AA8);
  }

  return result;
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_269D13468(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 200);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_269D134B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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
      *(result + 200) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_269D13534()
{
  if (!qword_280350AB8)
  {
    sub_269D13074(255);
    sub_269D144F0(&qword_280350AC0, sub_269D13074);
    v0 = sub_269D99F00();
    if (!v1)
    {
      atomic_store(v0, &qword_280350AB8);
    }
  }
}

unint64_t sub_269D135CC()
{
  result = qword_280350AC8;
  if (!qword_280350AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350AC8);
  }

  return result;
}

void sub_269D13658()
{
  if (!qword_280350AD0)
  {
    sub_269D98DB0();
    sub_269D144F0(&qword_28034E2F8, MEMORY[0x277CDFC08]);
    v0 = sub_269D989D0();
    if (!v1)
    {
      atomic_store(v0, &qword_280350AD0);
    }
  }
}

void sub_269D13708()
{
  if (!qword_280350AD8)
  {
    sub_269D13770(255);
    v0 = sub_269D98BB0();
    if (!v1)
    {
      atomic_store(v0, &qword_280350AD8);
    }
  }
}

void sub_269D137A4()
{
  if (!qword_280350AE8)
  {
    sub_269D13828(255);
    sub_269D1385C(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_280350AE8);
    }
  }
}

void sub_269D138A4()
{
  if (!qword_280350B00)
  {
    sub_269D13A78(255, &qword_280350B08, sub_269D13940, sub_269D139A0, MEMORY[0x277CE0338]);
    v0 = sub_269D9AE60();
    if (!v1)
    {
      atomic_store(v0, &qword_280350B00);
    }
  }
}

void sub_269D13940()
{
  if (!qword_280350B10)
  {
    sub_269D139A0();
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_280350B10);
    }
  }
}

void sub_269D139A0()
{
  if (!qword_280350B18)
  {
    sub_269D13A78(255, &qword_280350B20, sub_269D13AFC, sub_269C51E5C, MEMORY[0x277CDFAB8]);
    sub_269D131A4(255, &qword_28034E088, &qword_28034E090, MEMORY[0x277CE0AE0], MEMORY[0x277CE0860]);
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_280350B18);
    }
  }
}

void sub_269D13A78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_269D13AFC()
{
  if (!qword_280350B28)
  {
    sub_269D13B7C(255, &qword_280350B30, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BD8], MEMORY[0x277CE0338]);
    v0 = sub_269D99D50();
    if (!v1)
    {
      atomic_store(v0, &qword_280350B28);
    }
  }
}

void sub_269D13B7C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_269D13BD0(uint64_t a1, uint64_t a2)
{
  sub_269D1385C(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269D13C34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_269D13D7C()
{
  result = qword_280350B40;
  if (!qword_280350B40)
  {
    sub_269D13A78(255, &qword_280350B08, sub_269D13940, sub_269D139A0, MEMORY[0x277CE0338]);
    sub_269D13E84(&qword_280350B48, sub_269D13940, sub_269D13F10, sub_269C419C0);
    sub_269D13F10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350B40);
  }

  return result;
}

uint64_t sub_269D13E84(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_269D13F58()
{
  result = qword_280350B58;
  if (!qword_280350B58)
  {
    sub_269D13A78(255, &qword_280350B20, sub_269D13AFC, sub_269C51E5C, MEMORY[0x277CDFAB8]);
    sub_269D14090(&qword_280350B60, sub_269D13AFC, sub_269D14100);
    sub_269D144F0(&qword_28034E0D8, sub_269C51E5C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350B58);
  }

  return result;
}

uint64_t sub_269D14090(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_269D14100()
{
  result = qword_280350B68;
  if (!qword_280350B68)
  {
    sub_269D13B7C(255, &qword_280350B30, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BD8], MEMORY[0x277CE0338]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350B68);
  }

  return result;
}

uint64_t sub_269D14198(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_269D141F8(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v59[0] = *a1;
  v59[1] = v2;
  v3 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  v6 = v3;
  v60 = a1[2];
  v61 = v3;
  v7 = a1[5];
  v8 = a1[6];
  v62 = a1[4];
  v63 = v7;
  v9 = a1[7];
  v10 = a1[8];
  v64 = v8;
  v65 = v9;
  v11 = a1[9];
  v12 = a1[11];
  v68 = a1[10];
  v69 = v12;
  v66 = v10;
  v67 = v11;
  v13 = a2[1];
  v70[0] = *a2;
  v70[1] = v13;
  v14 = a2[3];
  v16 = *a2;
  v15 = a2[1];
  v70[2] = a2[2];
  v70[3] = v14;
  v17 = a2[5];
  v18 = a2[7];
  v19 = a2[8];
  v73 = a2[6];
  v74 = v18;
  v20 = a2[2];
  v21 = a2[3];
  v71 = a2[4];
  v72 = v17;
  v22 = a2[11];
  v23 = a2[9];
  v77 = a2[10];
  v78 = v22;
  v75 = v19;
  v76 = v23;
  v55 = v5;
  v56 = v4;
  v57 = v60;
  v58 = v6;
  v24 = *(a1 + 24);
  v25 = *(a1 + 25);
  v26 = *(a1 + 26);
  v27 = *(a2 + 24);
  v28 = *(a2 + 25);
  v29 = *(a2 + 26);
  v51 = v16;
  v52 = v15;
  v53 = v20;
  v54 = v21;
  sub_269D13C9C(v59, v80);
  sub_269D13C9C(v70, v80);
  v30 = _s7SwiftUI4TextV011SleepHealthB0E9ViewModelV2eeoiySbAF_AFtFZ_0(&v55, &v51);
  v79[0] = v51;
  v79[1] = v52;
  v79[2] = v53;
  v79[3] = v54;
  sub_269D13CF8(v79);
  v80[0] = v55;
  v80[1] = v56;
  v80[2] = v57;
  v80[3] = v58;
  sub_269D13CF8(v80);
  if (v30 && (v47 = v62, v48 = v63, v49 = v64, v50 = v65, v43 = v71, v44 = v72, v45 = v73, v46 = v74, sub_269D13C9C(&v62, &v39), sub_269D13C9C(&v71, &v39), v31 = _s7SwiftUI4TextV011SleepHealthB0E9ViewModelV2eeoiySbAF_AFtFZ_0(&v47, &v43), v51 = v43, v52 = v44, v53 = v45, v54 = v46, sub_269D13CF8(&v51), v55 = v47, v56 = v48, v57 = v49, v58 = v50, sub_269D13CF8(&v55), v31) && (v39 = v66, v40 = v67, v41 = v68, v42 = v69, v35 = v75, v36 = v76, v37 = v77, v38 = v78, sub_269D13C9C(&v66, v34), sub_269D13C9C(&v75, v34), v32 = _s7SwiftUI4TextV011SleepHealthB0E9ViewModelV2eeoiySbAF_AFtFZ_0(&v39, &v35), v43 = v35, v44 = v36, v45 = v37, v46 = v38, sub_269D13CF8(&v43), v47 = v39, v48 = v40, v49 = v41, v50 = v42, sub_269D13CF8(&v47), v32) && (v24 == v27 && v25 == v28 || (sub_269D9B280() & 1) != 0))
  {
    return v26 == v29;
  }

  else
  {
    return 0;
  }
}

void sub_269D1445C()
{
  if (!qword_280350B80)
  {
    sub_269D13770(255);
    sub_269D144F0(&qword_280350B88, sub_269D13770);
    v0 = sub_269D99FC0();
    if (!v1)
    {
      atomic_store(v0, &qword_280350B80);
    }
  }
}

uint64_t sub_269D144F0(unint64_t *a1, void (*a2)(uint64_t))
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

UIFontDescriptor __swiftcall UIFontDescriptor.addingSmallCapsAttributes()()
{
  isa = UIFontDescriptor.addingLowercaseSmallCapsAttributes()().super.isa;
  v1 = UIFontDescriptor.addingUppercaseSmallCapsAttributes()().super.isa;

  return v1;
}

id sub_269D14584(uint64_t a1)
{
  sub_269D14878(0, &unk_2803505B0, &qword_28034DEC0, type metadata accessor for AttributeName);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269D9EBE0;
  v2 = *MEMORY[0x277D74338];
  *(inited + 32) = *MEMORY[0x277D74338];
  sub_269D14818(0, &qword_280350B90, MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_269D9EBE0;
  sub_269D14878(0, &qword_280350B98, &qword_280350BA0, type metadata accessor for FeatureKey);
  v4 = swift_initStackObject();
  v5 = *MEMORY[0x277D76908];
  *(v4 + 32) = *MEMORY[0x277D76908];
  v6 = MEMORY[0x277D76900];
  *(v4 + 16) = xmmword_269D9EBF0;
  v7 = *v6;
  *(v4 + 40) = a1;
  *(v4 + 48) = v7;
  *(v4 + 56) = 1;
  v8 = v2;
  v9 = v5;
  v10 = v7;
  v11 = sub_269C44388(v4);
  swift_setDeallocating();
  sub_269D148D4(0, &qword_280350BA0, type metadata accessor for FeatureKey);
  swift_arrayDestroy();
  *(v3 + 32) = v11;
  sub_269D14818(0, &qword_2803505C0, MEMORY[0x277D83940]);
  *(inited + 64) = v12;
  *(inited + 40) = v3;
  sub_269C44468(inited);
  swift_setDeallocating();
  sub_269D14940(inited + 32);
  type metadata accessor for AttributeName(0);
  sub_269D149C4(&qword_28034DBF8, type metadata accessor for AttributeName);
  v13 = sub_269D9A480();

  v14 = [v17 fontDescriptorByAddingAttributes_];

  return v14;
}

void sub_269D14818(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_269D02144();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_269D14878(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_269D148D4(255, a3, a4);
    v5 = sub_269D9B240();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_269D148D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_269D14940(uint64_t a1)
{
  sub_269D148D4(0, &qword_28034DEC0, type metadata accessor for AttributeName);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269D149C4(unint64_t *a1, void (*a2)(uint64_t))
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

id RelativeWeekdayFormatter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_269D14A40()
{
  result = [objc_allocWithZone(type metadata accessor for RelativeWeekdayFormatter()) init];
  qword_280350BA8 = result;
  return result;
}

id static RelativeWeekdayFormatter.shared.getter()
{
  if (qword_28034D6B0 != -1)
  {
    swift_once();
  }

  v1 = qword_280350BA8;

  return v1;
}

id sub_269D14ACC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_269D97650();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_269D977A0();
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v37 - v10;
  v12 = sub_269D15040();
  v13 = sub_269D974B0();
  v14 = [v12 stringFromDate_];

  v15 = sub_269D9A630();
  v17 = v16;

  v18 = sub_269D150DC();
  v19 = sub_269D974B0();
  v20 = [v18 stringFromDate_];

  v21 = sub_269D9A630();
  v23 = v22;

  if (v15 == v21 && v17 == v23 || (sub_269D9B280() & 1) != 0)
  {

    v24 = sub_269D151B0();
    v25 = sub_269D974B0();
    v26 = [v24 stringFromDate_];

    v27 = sub_269D9A630();
    return v27;
  }

  result = [v2 calendar];
  if (result)
  {
    v29 = result;
    sub_269D97710();

    LOBYTE(v29) = sub_269D976A0();
    v30 = *(v40 + 8);
    v31 = v11;
    v32 = v41;
    v30(v31, v41);
    if ((v29 & 1) == 0)
    {
      goto LABEL_12;
    }

    result = [v2 calendar];
    if (result)
    {
      v33 = result;

      sub_269D97710();

      v34 = v37;
      sub_269D97630();
      v35 = Calendar.dayPeriod(for:in:)(a1);
      (*(v38 + 8))(v34, v39);
      v30(v9, v32);
      BSDayPeriod.simplified.getter(v35, &v42);
      if (v42 != 2)
      {
        return v15;
      }

      if (qword_280C0AE70 != -1)
      {
        swift_once();
      }

      v36 = qword_280C0D990;
      v15 = sub_269D972C0();

LABEL_12:

      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_269D15040()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI24RelativeWeekdayFormatter____lazy_storage___relativeDateFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI24RelativeWeekdayFormatter____lazy_storage___relativeDateFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI24RelativeWeekdayFormatter____lazy_storage___relativeDateFormatter);
  }

  else
  {
    v4 = sub_269D15240();
    [v4 setDateStyle_];
    [v4 setFormattingContext_];
    [v4 setDoesRelativeDateFormatting_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_269D150DC()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI24RelativeWeekdayFormatter____lazy_storage___nonRelativeDateFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI24RelativeWeekdayFormatter____lazy_storage___nonRelativeDateFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI24RelativeWeekdayFormatter____lazy_storage___nonRelativeDateFormatter);
  }

  else
  {
    v4 = sub_269D15040();
    [v4 copy];

    sub_269D9AED0();
    swift_unknownObjectRelease();
    sub_269D158FC();
    swift_dynamicCast();
    [v8 setDoesRelativeDateFormatting_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_269D151B0()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI24RelativeWeekdayFormatter____lazy_storage___weekdayFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI24RelativeWeekdayFormatter____lazy_storage___weekdayFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI24RelativeWeekdayFormatter____lazy_storage___weekdayFormatter);
  }

  else
  {
    v4 = sub_269D15240();
    v5 = sub_269D9A5F0();
    [v4 setLocalizedDateFormatFromTemplate_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_269D15240()
{
  v1 = v0;
  sub_269D158A8(0, &qword_280C0B3E0, MEMORY[0x277CC9788]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - v3;
  sub_269D158A8(0, &unk_280C0BB50, MEMORY[0x277CC99E8]);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = sub_269D977A0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v16 = [v1 calendar];
  if (v16)
  {
    v17 = v16;
    sub_269D97710();

    v18 = sub_269D976E0();
    (*(v12 + 8))(v14, v11);
  }

  else
  {
    v18 = 0;
  }

  [v15 setCalendar_];

  v19 = [v1 calendar];
  if (v19)
  {
    v20 = v19;
    sub_269D97710();

    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  (*(v12 + 56))(v8, v21, 1, v11);
  sub_269CAF89C(v8, v10);
  result = (*(v12 + 48))(v10, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_269D97750();
    (*(v12 + 8))(v10, v11);
    v23 = sub_269D97650();
    v24 = *(v23 - 8);
    v25 = 0;
    if ((*(v24 + 48))(v4, 1, v23) != 1)
    {
      v25 = sub_269D97610();
      (*(v24 + 8))(v4, v23);
    }

    [v15 setLocale_];

    return v15;
  }

  return result;
}

id RelativeWeekdayFormatter.init()()
{
  *&v0[OBJC_IVAR____TtC13SleepHealthUI24RelativeWeekdayFormatter____lazy_storage___relativeDateFormatter] = 0;
  *&v0[OBJC_IVAR____TtC13SleepHealthUI24RelativeWeekdayFormatter____lazy_storage___nonRelativeDateFormatter] = 0;
  *&v0[OBJC_IVAR____TtC13SleepHealthUI24RelativeWeekdayFormatter____lazy_storage___weekdayFormatter] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RelativeWeekdayFormatter();
  return objc_msgSendSuper2(&v2, sel_init);
}

id RelativeWeekdayFormatter.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id RelativeWeekdayFormatter.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC13SleepHealthUI24RelativeWeekdayFormatter____lazy_storage___relativeDateFormatter] = 0;
  *&v1[OBJC_IVAR____TtC13SleepHealthUI24RelativeWeekdayFormatter____lazy_storage___nonRelativeDateFormatter] = 0;
  *&v1[OBJC_IVAR____TtC13SleepHealthUI24RelativeWeekdayFormatter____lazy_storage___weekdayFormatter] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for RelativeWeekdayFormatter();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id RelativeWeekdayFormatter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RelativeWeekdayFormatter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_269D158A8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_269D158FC()
{
  result = qword_280C0BF28;
  if (!qword_280C0BF28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C0BF28);
  }

  return result;
}

void sub_269D1598C(uint64_t a1)
{
  v28 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_269D9AF50();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v34 = MEMORY[0x277D84F90];
    sub_269C75568(0, v2 & ~(v2 >> 63), 0);
    v29 = v34;
    if (v28)
    {
      v3 = sub_269D9AF10();
    }

    else
    {
      v3 = sub_269D9AF00();
      v4 = *(a1 + 36);
    }

    v31 = v3;
    v32 = v4;
    v33 = v28 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v27 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v31;
        v9 = v32;
        v10 = v33;
        sub_269D19908(v31, v32, v33, a1);
        v12 = v11;
        v13 = [v11 integerValue];

        v14 = v29;
        v34 = v29;
        v16 = *(v29 + 16);
        v15 = *(v29 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_269C75568((v15 > 1), v16 + 1, 1);
          v14 = v34;
        }

        *(v14 + 16) = v16 + 1;
        *(v14 + 8 * v16 + 32) = v13;
        v29 = v14;
        if (v28)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          if (sub_269D9AF20())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v27;
          sub_269D1A530();
          v6 = sub_269D9A980();
          sub_269D9AF70();
          v6(v30, 0);
          if (v5 == v27)
          {
LABEL_32:
            sub_269D1A5A4(v31, v32, v33);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v17 = 1 << *(a1 + 32);
          if (v8 >= v17)
          {
            goto LABEL_36;
          }

          v18 = v8 >> 6;
          v19 = *(a1 + 56 + 8 * (v8 >> 6));
          if (((v19 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(a1 + 36) != v9)
          {
            goto LABEL_38;
          }

          v20 = v19 & (-2 << (v8 & 0x3F));
          if (v20)
          {
            v17 = __clz(__rbit64(v20)) | v8 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v21 = v18 << 6;
            v22 = v18 + 1;
            v23 = (a1 + 64 + 8 * v18);
            while (v22 < (v17 + 63) >> 6)
            {
              v25 = *v23++;
              v24 = v25;
              v21 += 64;
              ++v22;
              if (v25)
              {
                sub_269D1A5A4(v8, v9, 0);
                v17 = __clz(__rbit64(v24)) + v21;
                goto LABEL_31;
              }
            }

            sub_269D1A5A4(v8, v9, 0);
          }

LABEL_31:
          v26 = *(a1 + 36);
          v31 = v17;
          v32 = v26;
          v33 = 0;
          v2 = v27;
          if (v5 == v27)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t SleepDayModel.SegmentModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269D975C0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SleepDayModel.SegmentModel.init(relativeInterval:absoluteInterval:preceedingGapDuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  sub_269D975B0();
  v10 = type metadata accessor for SleepDayModel.SegmentModel(0);
  v11 = (a2 + v10[6]);
  *v11 = a3;
  v11[1] = a4;
  v12 = v10[5];
  v13 = sub_269D97010();
  result = (*(*(v13 - 8) + 32))(a2 + v12, a1, v13);
  *(a2 + v10[7]) = a5;
  return result;
}

uint64_t sub_269D15F20@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269D975C0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void *SleepDayModel.sleepMetrics.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel_sleepMetrics);
  v2 = v1;
  return v1;
}

uint64_t sub_269D15FE4(uint64_t a1, uint64_t *a2)
{
  sub_269D169A0(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C40CD0(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D169C0(a1, v11, sub_269C40CD0);
  v12 = *a2;
  sub_269D1A4C8(v11, v6, sub_269C40CD0);
  (*(v9 + 56))(v6, 0, 1, v8);
  v13 = OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___sleepInterval;
  swift_beginAccess();
  sub_269D16A28(v6, v12 + v13);
  return swift_endAccess();
}

uint64_t sub_269D16170@<X0>(unint64_t a1@<X8>)
{
  sub_269D169A0(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v14[-v7];
  v9 = OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___sleepInterval;
  swift_beginAccess();
  sub_269D169C0(v1 + v9, v8, sub_269D169A0);
  sub_269C40CD0(0);
  v11 = v10;
  v12 = *(v10 - 8);
  if ((*(v12 + 48))(v8, 1, v10) != 1)
  {
    return sub_269D1A4C8(v8, a1, sub_269C40CD0);
  }

  sub_269D1A604(v8, sub_269D169A0);
  sub_269CDE604(*(v1 + OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel_segmentModels), a1);
  sub_269D169C0(a1, v6, sub_269C40CD0);
  (*(v12 + 56))(v6, 0, 1, v11);
  swift_beginAccess();
  sub_269D16A28(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_269D16368(uint64_t a1)
{
  sub_269D169A0(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D1A4C8(a1, v5, sub_269C40CD0);
  sub_269C40CD0(0);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___sleepInterval;
  swift_beginAccess();
  sub_269D16A28(v5, v1 + v7);
  return swift_endAccess();
}

void (*sub_269D1646C(uint64_t *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  sub_269D169A0(0);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v5[7] = v8;
  sub_269C40CD0(0);
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  if (v3)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v10 + 64));
  }

  v5[10] = v11;
  sub_269D16170(v11);
  return sub_269D16580;
}

void sub_269D16580(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = ((*a1)[9] + 56);
  v4 = (*a1)[10];
  v5 = (*a1)[7];
  v6 = (*a1)[8];
  v7 = (*a1)[6];
  if (a2)
  {
    sub_269D169C0(v2[10], v2[7], sub_269C40CD0);
    (*v3)(v5, 0, 1, v6);
    v8 = OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___sleepInterval;
    swift_beginAccess();
    sub_269D16A28(v5, v7 + v8);
    swift_endAccess();
    sub_269D1A604(v4, sub_269C40CD0);
  }

  else
  {
    sub_269D1A4C8(v2[10], v2[7], sub_269C40CD0);
    (*v3)(v5, 0, 1, v6);
    v9 = OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___sleepInterval;
    swift_beginAccess();
    sub_269D16A28(v5, v7 + v9);
    swift_endAccess();
  }

  free(v4);
  free(v5);

  free(v2);
}

double sub_269D166F8()
{
  v1 = (v0 + OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___sleepDuration);
  if ((*(v0 + OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___sleepDuration + 8) & 1) == 0)
  {
    return *v1;
  }

  result = sub_269CDF6B8(*(v0 + OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel_segmentModels));
  *v1 = result;
  v1[8] = 0;
  return result;
}

void sub_269D16748(double a1)
{
  v2 = v1 + OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___sleepDuration;
  *v2 = a1;
  *(v2 + 8) = 0;
}

void *(*sub_269D16760(uint64_t a1))(void *result)
{
  *(a1 + 8) = v1;
  *a1 = sub_269D166F8();
  return sub_269D167A8;
}

void *sub_269D167A8(void *result)
{
  v1 = result[1] + OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___sleepDuration;
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

id SleepDayModel.init(segmentModels:sleepMetrics:)(uint64_t a1, void *a2)
{
  v5 = &v2[OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel_currentDateProvider];
  v6 = HKSPCurrentDateProvider();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *v5 = sub_269C79AA4;
  v5[1] = v7;
  v8 = OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___sleepInterval;
  sub_269C40CD0(0);
  (*(*(v9 - 8) + 56))(&v2[v8], 1, 1, v9);
  v10 = &v2[OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___sleepDuration];
  *v10 = 0;
  v10[8] = 1;
  *&v2[OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel_significantTimeChangeObserver] = 0;
  *&v2[OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___timeFormatter] = 0;
  *&v2[OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___dateRangeWithYearFormatter] = 0;
  *&v2[OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___dateRangeWithoutYearFormatter] = 0;
  *&v2[OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___durationFormatter] = 0;
  *&v2[OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel_segmentModels] = a1;
  *&v2[OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel_sleepMetrics] = a2;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for SleepDayModel(0);
  v11 = a2;
  v12 = objc_msgSendSuper2(&v16, sel_init);
  v13 = qword_280C0AEF8;
  v14 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  [qword_280C0D998 registerObserver_];

  return v14;
}

uint64_t sub_269D169C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269D16A28(uint64_t a1, uint64_t a2)
{
  sub_269D169A0(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_269D16AAC()
{
  swift_getObjectType();
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v0 = sub_269D98250();
  __swift_project_value_buffer(v0, qword_280C0B728);
  v1 = sub_269D98230();
  v2 = sub_269D9AB80();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446210;
    v5 = sub_269D9B4D0();
    v7 = sub_269C2EACC(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_269C18000, v1, v2, "[%{public}s] significant time changed", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x26D652460](v4, -1, -1);
    MEMORY[0x26D652460](v3, -1, -1);
  }

  type metadata accessor for SleepDayModel(0);
  sub_269D1A418(&unk_280C0B810, type metadata accessor for SleepDayModel);
  sub_269D98770();
  sub_269D98810();
}

id sub_269D16C74()
{
  v1 = v0;
  v2 = sub_269D97650();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___timeFormatter;
  v7 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___timeFormatter);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___timeFormatter);
  }

  else
  {
    sub_269D97630();
    v9 = HKSPIsRemoveSpacesForTimeFormatEnabled();
    v10 = objc_opt_self();
    v11 = sub_269D9A5F0();
    v12 = sub_269D97610();
    v13 = [v10 dateFormatFromTemplate:v11 options:0 locale:v12];

    if (v13)
    {
      v14 = sub_269D9A630();
      v16 = v15;
    }

    else
    {
      v16 = 0xE500000000000000;
      v14 = 0x616D6D3A68;
    }

    v17 = sub_269D62560(v14, v16, v5, v9);

    (*(v3 + 8))(v5, v2);
    v18 = *(v1 + v6);
    *(v1 + v6) = v17;
    v8 = v17;

    v7 = 0;
  }

  v19 = v7;
  return v8;
}

id sub_269D16E5C(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
LABEL_5:
    v8 = v4;
    return v5;
  }

  result = [objc_opt_self() *a2];
  if (result)
  {
    v7 = *(v2 + v3);
    *(v2 + v3) = result;
    v5 = result;

    v4 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_269D16EDC()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___durationFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___durationFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___durationFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
    [v4 setAllowedUnits_];
    [v4 setUnitsStyle_];
    [v4 setFormattingContext_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_269D16FD4(void (*a1)(void))
{
  v2 = sub_269D97580();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C40CD0(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_269D97010();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D16170(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_269D1A604(v8, sub_269C40CD0);
    return 0;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v14 = sub_269D16C74();
    a1();
    v15 = sub_269D974B0();
    (*(v3 + 8))(v5, v2);
    v16 = [v14 stringFromDate_];

    v17 = sub_269D9A630();
    (*(v10 + 8))(v12, v9);
    return v17;
  }
}

void sub_269D17274(void (*a1)(void))
{
  a1();
  v1 = sub_269D16C74();
  sub_269D9A710();
}

id sub_269D172E8()
{
  sub_269C40CD0(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_269D97010();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D16170(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v7 = 2957357;
    sub_269D1A604(v2, sub_269C40CD0);
    return v7;
  }

  (*(v4 + 32))(v6, v2, v3);
  result = [objc_opt_self() hk_hourMinuteOnlyDateIntervalFormatter];
  if (result)
  {
    v9 = result;
    v10 = sub_269D96F70();
    v11 = [v9 stringFromDateInterval_];

    if (v11)
    {
      v7 = sub_269D9A630();
    }

    else
    {
      v7 = 2957357;
    }

    (*(v4 + 8))(v6, v3);
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_269D1750C()
{
  v1 = v0;
  v2 = sub_269D97780();
  v46 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269D97580();
  v44 = *(v5 - 8);
  v45 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v43 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v38 - v8;
  v10 = sub_269D977A0();
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C40CD0(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_269D97010();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D16170(v15);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    v39 = v16;
    v40 = v2;
    (*(v17 + 32))(v19, v15, v16);
    v21 = sub_269D16E48();
    v22 = sub_269D96F70();
    v23 = [v21 stringFromDateInterval_];

    if (v23)
    {
      v38[0] = sub_269D9A630();
      v25 = v24;
    }

    else
    {
      v38[0] = 0;
      v25 = 0;
    }

    sub_269D97770();
    sub_269D96FD0();
    v38[1] = v1;
    v26 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel_currentDateProvider);

    v28 = v43;
    v26(v27);

    v29 = v46;
    v30 = v40;
    (*(v46 + 104))(v4, *MEMORY[0x277CC9988], v40);
    v31 = sub_269D97760();
    (*(v29 + 8))(v4, v30);
    v32 = v45;
    v33 = *(v44 + 8);
    v33(v28, v45);
    v33(v9, v32);
    (*(v41 + 8))(v12, v42);
    if (v31)
    {

      v34 = sub_269D16E34();
      v35 = sub_269D96F70();
      v36 = [v34 stringFromDateInterval_];

      if (v36)
      {
        v20 = sub_269D9A630();

LABEL_10:
        (*(v17 + 8))(v19, v39);
        return v20;
      }
    }

    else
    {
      v20 = v38[0];
      if (v25)
      {
        goto LABEL_10;
      }
    }

    v20 = 2957357;
    (*(v17 + 8))(v19, v39);

    return v20;
  }

  v20 = 2957357;
  sub_269D1A604(v15, sub_269C40CD0);
  return v20;
}

void sub_269D17A24()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel_sleepMetrics);
  if (v1)
  {
    v2 = [v1 averageSleepDuration];
    if (v2)
    {
      v3 = v2;
      [v2 _value];
      v5 = v4;

      if (v5 > 0.0)
      {
        v6 = sub_269D16EDC();
        v7 = [v6 stringFromTimeInterval_];

        if (v7)
        {
          sub_269D9A630();
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

void sub_269D17AF4()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel_sleepMetrics);
  if (v1)
  {
    v2 = [v1 averageSleepDuration];
    if (v2)
    {
      v3 = v2;
      [v2 _value];
      v5 = v4;

      if (v5 > 0.0)
      {
        v6 = sub_269D16EDC();
        v7 = [v6 stringFromTimeInterval_];

        if (!v7)
        {
          __break(1u);
          return;
        }

        sub_269D9A630();
      }
    }
  }

  sub_269D9A700();
}

id SleepDayModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SleepDayModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepDayModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269D17DE8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SleepDayModel(0);
  result = sub_269D98770();
  *a1 = result;
  return result;
}

id HKSleepDaySummary.sleepDayModel.getter()
{
  v1 = sub_269D17F0C();
  v2 = objc_opt_self();
  sub_269C4E764();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_269DA2A30;
  *(v3 + 32) = v0;
  sub_269C1B0B8(0, &qword_280C0AED8);
  v4 = v0;
  v5 = sub_269D9A7D0();

  v6 = [v2 sleepMetricsForDaySummaries_];

  v7 = objc_allocWithZone(type metadata accessor for SleepDayModel(0));
  return SleepDayModel.init(segmentModels:sleepMetrics:)(v1, v6);
}

void *sub_269D17F0C()
{
  v117 = type metadata accessor for SleepDayModel.SegmentModel(0);
  v111 = *(v117 - 8);
  v1 = MEMORY[0x28223BE20](v117);
  v110 = &v94 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v109 = &v94 - v4;
  v5 = MEMORY[0x28223BE20](v3);
  v104 = &v94 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v103 = &v94 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v94 - v9;
  v108 = sub_269D97580();
  v11 = *(v108 - 8);
  v12 = MEMORY[0x28223BE20](v108);
  v14 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v115 = &v94 - v15;
  sub_269C40CD0(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_269D97010();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v114 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v94 - v23;
  sub_269D18C3C(v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_269D1A604(v18, sub_269C40CD0);
    return MEMORY[0x277D84F90];
  }

  v112 = v14;
  v94 = v20;
  v25 = *(v20 + 32);
  v107 = v24;
  v26 = v19;
  v25(v24, v18, v19);
  v27 = HKCategoryValueSleepAnalysisAsleepValues();
  sub_269C1B0B8(0, &qword_28034DF10);
  sub_269D1A460();
  v28 = sub_269D9A960();

  sub_269D1598C(v28);
  v30 = v29;

  v31 = sub_269CF21A0(v30);

  v32 = [v0 periods];
  sub_269C1B0B8(0, &qword_280C0B4C8);
  v33 = sub_269D9A7E0();

  v97 = v33;
  if (v33 >> 62)
  {
    goto LABEL_57;
  }

  v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v35 = v26;
  if (v34)
  {
    v113 = v10;
    v99 = v97 & 0xC000000000000001;
    v96 = v97 & 0xFFFFFFFFFFFFFF8;
    v95 = v97 + 32;
    v10 = (v31 + 56);
    v121 = (v94 + 8);
    v106 = (v11 + 8);
    v11 = 0;
    v124 = MEMORY[0x277D84F90];
    v36 = &selRef_textContainer;
    v98 = v34;
    v116 = v26;
    v105 = v31;
    while (1)
    {
      if (v99)
      {
        v37 = MEMORY[0x26D651260](v11, v97);
      }

      else
      {
        if (v11 >= *(v96 + 16))
        {
          goto LABEL_56;
        }

        v37 = *(v95 + 8 * v11);
      }

      v101 = v37;
      v38 = __OFADD__(v11++, 1);
      if (v38)
      {
        goto LABEL_55;
      }

      v100 = v11;
      v39 = [v101 segments];
      sub_269C1B0B8(0, &qword_280C0B4C0);
      v40 = sub_269D9A7E0();

      if (v40 >> 62)
      {
        break;
      }

      v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v122 = v40;
      if (v41)
      {
        goto LABEL_15;
      }

LABEL_7:

      v11 = v100;
      if (v100 == v98)
      {
        goto LABEL_50;
      }
    }

    v41 = sub_269D9AF50();
    v122 = v40;
    if (!v41)
    {
      goto LABEL_7;
    }

LABEL_15:
    v42 = v41;
    v11 = 0;
    v125 = v122 & 0xC000000000000001;
    v119 = v122 & 0xFFFFFFFFFFFFFF8;
    v118 = v122 + 32;
    v123 = v41;
    while (1)
    {
      if (v125)
      {
        v43 = MEMORY[0x26D651260](v11, v122);
        v38 = __OFADD__(v11++, 1);
        if (v38)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v11 >= *(v119 + 16))
        {
          goto LABEL_53;
        }

        v43 = *(v118 + 8 * v11);
        v38 = __OFADD__(v11++, 1);
        if (v38)
        {
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          v34 = sub_269D9AF50();
          goto LABEL_5;
        }
      }

      v44 = v43;
      v45 = [v43 v36[159]];
      if (*(v31 + 16))
      {
        v46 = v45;
        v126 = v44;
        sub_269D9B350();
        MEMORY[0x26D6515B0](v46);
        v47 = sub_269D9B390();
        v42 = v123;
        v48 = -1 << *(v31 + 32);
        v49 = v47 & ~v48;
        if ((*&v10[(v49 >> 3) & 0xFFFFFFFFFFFFFF8] >> v49))
        {
          v50 = ~v48;
          while (*(*(v31 + 48) + 8 * v49) != v46)
          {
            v49 = (v49 + 1) & v50;
            if (((*&v10[(v49 >> 3) & 0xFFFFFFFFFFFFFF8] >> v49) & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          v51 = [v126 dateInterval];
          v52 = v114;
          sub_269D96F90();

          v31 = v115;
          sub_269D96FD0();
          v120 = *v121;
          v120(v52, v35);
          v53 = v112;
          sub_269D96FD0();
          sub_269D97490();
          v55 = v54;
          v56 = *v106;
          v57 = v108;
          (*v106)(v53, v108);
          v56(v31, v57);
          sub_269D96FF0();
          v59 = v55 / v58;
          v60 = [v126 dateInterval];
          sub_269D96F90();

          sub_269D96FA0();
          v61 = v52;
          v26 = v116;
          (v120)(v61);
          sub_269D96FD0();
          sub_269D97490();
          v63 = v62;
          v56(v53, v57);
          v56(v31, v57);
          sub_269D96FF0();
          v64 = v124[2];
          v66 = v63 / v65;
          if (v64)
          {
            v67 = (*(v111 + 80) + 32) & ~*(v111 + 80);
            v68 = *(v111 + 72);
            v69 = v113;
            sub_269D169C0(v124 + v67 + v68 * (v64 - 1), v113, type metadata accessor for SleepDayModel.SegmentModel);
            v70 = v69 + *(v117 + 24);
            v71 = *(v70 + 8);
            if (v71 == v59)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v124 = sub_269D198F4(v124);
              }

              v72 = v124[2];
              if (!v72)
              {
                goto LABEL_54;
              }

              v73 = v117;
              v74 = v72 - 1;
              v102 = v67;
              v75 = v124;
              sub_269D1A604(v124 + v67 + (v72 - 1) * v68, type metadata accessor for SleepDayModel.SegmentModel);
              v75[2] = v74;
              v76 = *v70;
              v77 = [v126 dateInterval];
              v78 = v114;
              sub_269D96F90();

              v26 = v113;
              sub_269D96FD0();
              sub_269D96FA0();
              v79 = v103;
              sub_269D96FB0();
              v35 = v116;
              v120(v78, v116);
              v80 = *(v26 + *(v73 + 28));
              sub_269D975B0();
              v81 = v79 + *(v73 + 24);
              *v81 = v76;
              *(v81 + 8) = v66;
              *(v79 + *(v73 + 28)) = v80;
              sub_269D169C0(v79, v104, type metadata accessor for SleepDayModel.SegmentModel);
              v83 = v75[2];
              v82 = v75[3];
              if (v83 >= v82 >> 1)
              {
                v124 = sub_269D623E8(v82 > 1, v83 + 1, 1, v124);
              }

              v31 = v105;

              sub_269D1A604(v103, type metadata accessor for SleepDayModel.SegmentModel);
              sub_269D1A604(v113, type metadata accessor for SleepDayModel.SegmentModel);
              v84 = v124;
              v124[2] = v83 + 1;
              sub_269D1A4C8(v104, v84 + v102 + v83 * v68, type metadata accessor for SleepDayModel.SegmentModel);
              v36 = &selRef_textContainer;
              goto LABEL_46;
            }

            sub_269D1A604(v69, type metadata accessor for SleepDayModel.SegmentModel);
            v85 = v59 - v71;
            v35 = v116;
          }

          else
          {
            v85 = 0.0;
            v35 = v26;
          }

          v31 = v105;
          v36 = &selRef_textContainer;
          v86 = [v126 dateInterval];
          v87 = v117;
          v88 = v109;
          sub_269D96F90();

          sub_269D975B0();
          v89 = (v88 + *(v87 + 24));
          *v89 = v59;
          v89[1] = v66;
          *(v88 + *(v87 + 28)) = v85;
          sub_269D169C0(v88, v110, type metadata accessor for SleepDayModel.SegmentModel);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v124 = sub_269D623E8(0, v124[2] + 1, 1, v124);
          }

          v91 = v124[2];
          v90 = v124[3];
          if (v91 >= v90 >> 1)
          {
            v124 = sub_269D623E8(v90 > 1, v91 + 1, 1, v124);
          }

          sub_269D1A604(v109, type metadata accessor for SleepDayModel.SegmentModel);
          v92 = v124;
          v124[2] = v91 + 1;
          sub_269D1A4C8(v110, v92 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v91, type metadata accessor for SleepDayModel.SegmentModel);
LABEL_46:
          v42 = v123;
          goto LABEL_17;
        }

LABEL_16:
      }

      else
      {
      }

LABEL_17:
      if (v11 == v42)
      {
        goto LABEL_7;
      }
    }
  }

  v124 = MEMORY[0x277D84F90];
LABEL_50:

  (*(v94 + 8))(v107, v35);
  return v124;
}

uint64_t sub_269D18C3C@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v2 = sub_269D97580();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v82 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v81 = &v79 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v80 = &v79 - v9;
  MEMORY[0x28223BE20](v8);
  v84 = &v79 - v10;
  v105 = sub_269D97010();
  v88 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v104 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CB9A74(0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v83 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v86 = &v79 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v103 = &v79 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v97 = &v79 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v79 - v22;
  MEMORY[0x28223BE20](v21);
  v106 = &v79 - v24;
  v87 = v3;
  v25 = *(v3 + 56);
  v25();
  v99 = v23;
  v98 = v2;
  v101 = v25;
  v102 = v3 + 56;
  (v25)(v23, 1, 1, v2);
  v26 = HKCategoryValueSleepAnalysisAsleepValues();
  sub_269C1B0B8(0, &qword_28034DF10);
  sub_269D1A460();
  v27 = sub_269D9A960();

  sub_269D1598C(v27);
  v29 = v28;

  v30 = sub_269CF21A0(v29);

  v31 = [v1 periods];
  sub_269C1B0B8(0, &qword_280C0B4C8);
  v32 = sub_269D9A7E0();

  v91 = v32;
  if (v32 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_269D9AF50())
  {
    v34 = 0;
    v93 = v91 & 0xC000000000000001;
    v90 = v91 & 0xFFFFFFFFFFFFFF8;
    v89 = v91 + 32;
    v35 = v30 + 56;
    v96 = (v87 + 48);
    v100 = (v88 + 8);
    v36 = &selRef_textContainer;
    v92 = i;
    while (1)
    {
      if (v93)
      {
        v37 = MEMORY[0x26D651260](v34, v91);
      }

      else
      {
        if (v34 >= *(v90 + 16))
        {
          goto LABEL_34;
        }

        v37 = *(v89 + 8 * v34);
      }

      v38 = v37;
      v39 = __OFADD__(v34, 1);
      v40 = v34 + 1;
      if (v39)
      {
        break;
      }

      v41 = [v37 segments];
      sub_269C1B0B8(0, &qword_280C0B4C0);
      v42 = sub_269D9A7E0();

      v109 = v42;
      v95 = v40;
      v94 = v38;
      if (v42 >> 62)
      {
        v43 = sub_269D9AF50();
        if (v43)
        {
LABEL_12:
          v44 = 0;
          v45 = v109 & 0xC000000000000001;
          v107 = v109 + 32;
          v108 = v109 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v45)
            {
              v46 = MEMORY[0x26D651260](v44, v109);
            }

            else
            {
              if (v44 >= *(v108 + 16))
              {
                goto LABEL_32;
              }

              v46 = *(v107 + 8 * v44);
            }

            v47 = v46;
            v39 = __OFADD__(v44++, 1);
            if (v39)
            {
              break;
            }

            v48 = [v46 v36[159]];
            if (*(v30 + 16) && (v49 = v48, sub_269D9B350(), MEMORY[0x26D6515B0](v49), v50 = sub_269D9B390(), v51 = -1 << *(v30 + 32), v52 = v50 & ~v51, ((*(v35 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) != 0))
            {
              v53 = ~v51;
              while (*(*(v30 + 48) + 8 * v52) != v49)
              {
                v52 = (v52 + 1) & v53;
                if (((*(v35 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
                {
                  goto LABEL_13;
                }
              }

              v54 = v97;
              sub_269D169C0(v106, v97, sub_269CB9A74);
              v55 = v98;
              v56 = (*v96)(v54, 1, v98);
              sub_269D1A604(v54, sub_269CB9A74);
              if (v56 == 1)
              {
                v57 = [v47 dateInterval];
                v58 = v104;
                sub_269D96F90();

                v59 = v103;
                sub_269D96FD0();
                (*v100)(v58, v105);
                v60 = v106;
                sub_269D1A604(v106, sub_269CB9A74);
                (v101)(v59, 0, 1, v55);
                sub_269D1A4C8(v59, v60, sub_269CB9A74);
              }

              v61 = [v47 dateInterval];
              v62 = v104;
              sub_269D96F90();

              v63 = v103;
              sub_269D96FA0();

              (*v100)(v62, v105);
              v64 = v99;
              sub_269D1A604(v99, sub_269CB9A74);
              (v101)(v63, 0, 1, v55);
              sub_269D1A4C8(v63, v64, sub_269CB9A74);
              v36 = &selRef_textContainer;
              if (v44 == v43)
              {
                goto LABEL_4;
              }
            }

            else
            {
LABEL_13:

              if (v44 == v43)
              {
                goto LABEL_4;
              }
            }
          }

          __break(1u);
LABEL_32:
          __break(1u);
          break;
        }
      }

      else
      {
        v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v43)
        {
          goto LABEL_12;
        }
      }

LABEL_4:

      v34 = v95;
      if (v95 == v92)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

LABEL_36:

  v65 = v106;
  v66 = v86;
  sub_269D169C0(v106, v86, sub_269CB9A74);
  v67 = v87;
  v68 = *(v87 + 48);
  v69 = v98;
  if (v68(v66, 1, v98) != 1)
  {
    v70 = v67[4];
    v71 = v84;
    v70(v84, v66, v69);
    v66 = v83;
    sub_269D169C0(v99, v83, sub_269CB9A74);
    if (v68(v66, 1, v69) != 1)
    {
      v75 = v80;
      v70(v80, v66, v69);
      v76 = v67[2];
      v76(v81, v71, v69);
      v76(v82, v75, v69);
      v72 = v85;
      v66 = v106;
      sub_269D96FB0();
      v77 = v67[1];
      v77(v75, v69);
      v77(v71, v69);
      v73 = 0;
      v74 = v99;
      goto LABEL_41;
    }

    (v67[1])(v71, v69);
  }

  v72 = v85;
  sub_269D1A604(v99, sub_269CB9A74);
  v73 = 1;
  v74 = v65;
LABEL_41:
  sub_269D1A604(v74, sub_269CB9A74);
  sub_269D1A604(v66, sub_269CB9A74);
  return (*(v88 + 56))(v72, v73, 1, v105);
}

uint64_t sub_269D19864@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SleepDayModel.SegmentModel(0) + 20);
  v4 = sub_269D97010();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_269D19908(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x26D6511B0](a1, a2, v7);
      sub_269C1B0B8(0, &qword_28034DF10);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_269C1B0B8(0, &qword_28034DF10);
    if (sub_269D9AF30() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_269D9AF40();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_269D9ADC0();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_269D9ADD0();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

uint64_t sub_269D19B2C(uint64_t a1)
{
  swift_getObjectType();
  v3 = sub_269D97050();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v7 = sub_269D98250();
  __swift_project_value_buffer(v7, qword_280C0B728);
  (*(v4 + 16))(v6, a1, v3);
  v8 = sub_269D98230();
  v9 = sub_269D9AB80();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v28[1] = v1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v29 = v12;
    *v11 = 136446466;
    v13 = sub_269D9B4D0();
    v15 = sub_269C2EACC(v13, v14, &v29);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    v28[2] = sub_269D97030();
    type metadata accessor for Name(0);
    v16 = sub_269D9A660();
    v18 = v17;
    (*(v4 + 8))(v6, v3);
    v19 = sub_269C2EACC(v16, v18, &v29);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_269C18000, v8, v9, "[%{public}s] date cache updated: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v12, -1, -1);
    MEMORY[0x26D652460](v11, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  v20 = sub_269D97030();
  v21 = sub_269D9A630();
  v23 = v22;
  if (v21 == sub_269D9A630() && v23 == v24)
  {

    return sub_269D16AAC();
  }

  v26 = sub_269D9B280();

  if (v26)
  {
    return sub_269D16AAC();
  }

  return result;
}

void sub_269D19EAC()
{
  sub_269D169A0(319);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_269D1A318()
{
  sub_269D975C0();
  if (v0 <= 0x3F)
  {
    sub_269D97010();
    if (v1 <= 0x3F)
    {
      sub_269D1A3BC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_269D1A3BC()
{
  if (!qword_280C0AF28)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280C0AF28);
    }
  }
}

uint64_t sub_269D1A418(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_269D1A460()
{
  result = qword_280350C60;
  if (!qword_280350C60)
  {
    sub_269C1B0B8(255, &qword_28034DF10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350C60);
  }

  return result;
}

uint64_t sub_269D1A4C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_269D1A530()
{
  if (!qword_280350C68)
  {
    sub_269C1B0B8(255, &qword_28034DF10);
    sub_269D1A460();
    v0 = sub_269D9A990();
    if (!v1)
    {
      atomic_store(v0, &qword_280350C68);
    }
  }
}

uint64_t sub_269D1A5A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_269D1A5B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_269D1A604(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id TonePickerStyleProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TonePickerStyleProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TonePickerStyleProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TonePickerStyleProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TonePickerStyleProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id TonePickerStyleProvider.vibrationPickerCellTextFont.getter()
{
  v0 = [objc_opt_self() preferredFontForTextStyle_];

  return v0;
}

void *static UILabel.makeDynamicLabel(textStyle:textColor:traits:rounded:monospaced:numberOfLines:weight:textAlignment:sizingRule:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  v20 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v21 = v20;
  if (a2)
  {
    [v20 setTextColor_];
  }

  sub_269C1B0B8(0, &qword_28034E5F0);
  v22 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(a1, a3, a4 & 1, 0, 0, 0, a5 & 1, a7, a8 & 1);
  [v21 setFont_];

  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  [v21 setAdjustsFontForContentSizeCategory_];
  [v21 setLineBreakMode_];
  [v21 setNumberOfLines_];
  if ((a12 & 1) == 0)
  {
    [v21 setSizingRule_];
  }

  if ((a10 & 1) == 0)
  {
    [v21 setTextAlignment_];
  }

  return v21;
}

void __swiftcall UILabel.init(textColor:textAlignment:)(UILabel *__return_ptr retstr, UIColor textColor, NSTextAlignment_optional textAlignment)
{
  is_nil = textAlignment.is_nil;
  value = textAlignment.value;
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v6 setTextColor_];
  if (!is_nil)
  {
    [v6 setTextAlignment_];
  }
}

void __swiftcall UILabel.init(textStyle:textColor:traits:rounded:monospaced:weight:)(UILabel *__return_ptr retstr, UIFontTextStyle textStyle, UIColor_optional textColor, UIFontDescriptorSymbolicTraits traits, Swift::Bool rounded, Swift::Bool monospaced, UIFontWeight_optional weight)
{
  is_nil = weight.is_nil;
  v8 = monospaced;
  v10 = traits;
  v11 = *&textColor.is_nil;
  isa = textColor.value.super.isa;
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = v14;
  if (isa)
  {
    [v14 setTextColor_];
  }

  sub_269C1B0B8(0, &qword_28034E5F0);
  v16 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(textStyle, v11, v10 & 1, 0, 0, 0, rounded, v8, is_nil);
  [v15 setFont_];
}

NSMutableAttributedString_optional __swiftcall UILabel.mutableAttributedString()()
{
  v1 = [v0 attributedText];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  }

  else
  {
    v7 = [v0 text];
    if (!v7)
    {
      v4 = 0;
      goto LABEL_4;
    }

    v2 = v7;
    v8 = [v0 font];

    if (v8)
    {
      sub_269D1AE60();
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_269D9EBE0;
      v10 = *MEMORY[0x277D740A8];
      *(inited + 32) = *MEMORY[0x277D740A8];
      *(inited + 64) = sub_269C1B0B8(0, &qword_28034E5F0);
      *(inited + 40) = v8;
      v11 = v10;
      v12 = v8;
      sub_269C44B18(inited);
      swift_setDeallocating();
      sub_269D1B488(inited + 32);
      v13 = objc_allocWithZone(MEMORY[0x277CCAB48]);
      type metadata accessor for Key(0);
      sub_269CEB82C();
      v14 = sub_269D9A480();

      v4 = [v13 initWithString:v2 attributes:v14];

      goto LABEL_4;
    }

    v3 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithString_];
  }

  v4 = v3;

LABEL_4:
  v6 = v4;
  result.value.super.super.isa = v6;
  result.is_nil = v5;
  return result;
}

void sub_269D1AE60()
{
  if (!qword_280350108)
  {
    sub_269CEB7C0();
    v0 = sub_269D9B240();
    if (!v1)
    {
      atomic_store(v0, &qword_280350108);
    }
  }
}

uint64_t UILabel.ViewModel.text.getter()
{
  v1 = *v0;

  return v1;
}

void *UILabel.ViewModel.font.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *UILabel.ViewModel.textColor.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t UILabel.ViewModel.accessibilityLabel.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t UILabel.ViewModel.init(text:font:textColor:hidden:accessibilityLabel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t UILabel.ViewModel.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[6];
  if (v0[1])
  {
    sub_269D9B370();
    sub_269D9A6A0();
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_269D9B370();
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_269D9B370();
  if (!v1)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_269D9B370();
  v4 = v1;
  sub_269D9ADE0();

  if (v2)
  {
LABEL_4:
    sub_269D9B370();
    v5 = v2;
    sub_269D9ADE0();

    goto LABEL_8;
  }

LABEL_7:
  sub_269D9B370();
LABEL_8:
  sub_269D9B370();
  if (!v3)
  {
    return sub_269D9B370();
  }

  sub_269D9B370();

  return sub_269D9A6A0();
}

uint64_t UILabel.ViewModel.hashValue.getter()
{
  sub_269D9B350();
  UILabel.ViewModel.hash(into:)();
  return sub_269D9B390();
}

uint64_t sub_269D1B130()
{
  sub_269D9B350();
  UILabel.ViewModel.hash(into:)();
  return sub_269D9B390();
}

uint64_t sub_269D1B190()
{
  sub_269D9B350();
  UILabel.ViewModel.hash(into:)();
  return sub_269D9B390();
}

void UILabel.update(viewModel:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  if (*(a1 + 8))
  {
    v6 = sub_269D9A5F0();
  }

  else
  {
    v6 = 0;
  }

  [v1 setText_];

  [v1 setFont_];
  [v1 setTextColor_];
  [v1 setHidden_];
  if (v5)
  {
    v7 = sub_269D9A5F0();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v1 setAccessibilityLabel_];
}

BOOL _sSo7UILabelC13SleepHealthUIE9ViewModelV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v14 = *(a2 + 40);
  v13 = *(a2 + 48);
  if (v3)
  {
    if (!v9 || (*a1 != *a2 || v3 != v9) && (sub_269D9B280() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v4)
  {
    if (!v10)
    {
      return 0;
    }

    v22 = v7;
    sub_269C1B0B8(0, &qword_28034E5F0);
    v15 = v10;
    v16 = v4;
    v17 = sub_269D9ADD0();

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v22 = v7;
    if (v10)
    {
      return 0;
    }
  }

  if (!v5)
  {
    result = 0;
    if (v11)
    {
      return result;
    }

LABEL_18:
    if ((v6 ^ v12))
    {
      return result;
    }

    if (v8)
    {
      return v13 && (v22 == v14 && v8 == v13 || (sub_269D9B280() & 1) != 0);
    }

    return !v13;
  }

  if (!v11)
  {
    return 0;
  }

  sub_269C1B0B8(0, &qword_280350120);
  v18 = v11;
  v19 = v5;
  v20 = sub_269D9ADD0();

  result = 0;
  if (v20)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_269D1B488(uint64_t a1)
{
  sub_269CEB7C0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_269D1B4E8()
{
  result = qword_280350C70;
  if (!qword_280350C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350C70);
  }

  return result;
}

uint64_t sub_269D1B53C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_269D1B598(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

id sub_269D1B7C0()
{
  v1 = objc_allocWithZone(MEMORY[0x277D75348]);
  aBlock[4] = sub_269CC7C58;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_269CC7F6C;
  aBlock[3] = &block_descriptor_27;
  v2 = _Block_copy(aBlock);
  v3 = [v1 initWithDynamicProvider_];
  _Block_release(v2);

  [v0 setBackgroundColor_];

  v4 = *&v0[OBJC_IVAR____TtC13SleepHealthUI42ScheduleOccurrenceAlarmVolumeTableViewCell_slider];
  v5 = sub_269D9A5F0();
  v6 = objc_opt_self();
  v7 = [v6 systemImageNamed_];

  if (v7)
  {
    v8 = [v7 imageWithTintColor:*&v0[OBJC_IVAR____TtC13SleepHealthUI42ScheduleOccurrenceAlarmVolumeTableViewCell_configuration + 8] renderingMode:1];
  }

  else
  {
    v8 = 0;
  }

  [v4 setMinimumValueImage_];

  v9 = sub_269D9A5F0();
  v10 = [v6 systemImageNamed_];

  if (v10)
  {
    v11 = [v10 imageWithTintColor:*&v0[OBJC_IVAR____TtC13SleepHealthUI42ScheduleOccurrenceAlarmVolumeTableViewCell_configuration + 8] renderingMode:1];
  }

  else
  {
    v11 = 0;
  }

  [v4 setMaximumValueImage_];

  v12 = [v0 contentView];
  [v12 addSubview_];

  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v35 = objc_opt_self();
  sub_269C4E764();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_269DA0E10;
  v14 = [v4 topAnchor];
  v15 = [v0 contentView];
  v16 = [v15 topAnchor];

  v17 = *&v0[OBJC_IVAR____TtC13SleepHealthUI42ScheduleOccurrenceAlarmVolumeTableViewCell_configuration + 16];
  v18 = [v14 constraintEqualToAnchor:v16 constant:v17];

  *(v13 + 32) = v18;
  v19 = [v4 leadingAnchor];
  v20 = [v0 contentView];
  v21 = [v20 layoutMarginsGuide];

  v22 = [v21 leadingAnchor];
  v23 = [v19 constraintEqualToAnchor_];

  *(v13 + 40) = v23;
  v24 = [v0 contentView];
  v25 = [v24 layoutMarginsGuide];

  v26 = [v25 trailingAnchor];
  v27 = [v4 trailingAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(v13 + 48) = v28;
  v29 = [v0 contentView];
  v30 = [v29 bottomAnchor];

  v31 = [v4 bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:v17];

  *(v13 + 56) = v32;
  sub_269C1B0B8(0, &qword_28034E1C0);
  v33 = sub_269D9A7D0();

  [v35 activateConstraints_];

  return [v4 addTarget:0 action:sel_scheduleOccurrenceAlarmVolumeEditingDidEnd_ forControlEvents:4096];
}

id ScheduleOccurrenceAlarmVolumeTableViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScheduleOccurrenceAlarmVolumeTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ScheduleOccurrenceAlarmVolumeTableViewCell.apply(_:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI42ScheduleOccurrenceAlarmVolumeTableViewCell_slider);
  v3 = [*(a1 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) alarmConfiguration];
  [v3 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034D9C0);
  swift_dynamicCast();
  v4 = [v9 soundVolume];

  if (v4)
  {
    [v4 floatValue];
    v7 = v6;
  }

  else
  {
    v7 = *MEMORY[0x277D61FF8];
  }

  LODWORD(v5) = v7;
  return [v2 setValue:0 animated:v5];
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_269D1BF84(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC13SleepHealthUI42ScheduleOccurrenceAlarmVolumeTableViewCell_configuration];
  v5 = objc_allocWithZone(MEMORY[0x277D75348]);
  aBlock[4] = sub_269CC7C58;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_269CC7F6C;
  aBlock[3] = &block_descriptor_7;
  v6 = _Block_copy(aBlock);
  v7 = [v5 initWithDynamicProvider_];
  _Block_release(v6);

  v8 = [objc_opt_self() secondaryLabelColor];
  *v4 = v7;
  *(v4 + 1) = v8;
  *(v4 + 2) = 0x4010000000000000;
  v9 = OBJC_IVAR____TtC13SleepHealthUI42ScheduleOccurrenceAlarmVolumeTableViewCell_slider;
  *&v2[v9] = [objc_allocWithZone(MEMORY[0x277D75A30]) init];
  if (a2)
  {
    v10 = sub_269D9A5F0();
  }

  else
  {
    v10 = 0;
  }

  v14.receiver = v2;
  v14.super_class = type metadata accessor for ScheduleOccurrenceAlarmVolumeTableViewCell();
  v11 = objc_msgSendSuper2(&v14, sel_initWithStyle_reuseIdentifier_, 0, v10);

  v12 = v11;
  sub_269D1B7C0();

  return v12;
}

void sub_269D1C11C()
{
  v1 = (v0 + OBJC_IVAR____TtC13SleepHealthUI42ScheduleOccurrenceAlarmVolumeTableViewCell_configuration);
  v2 = objc_allocWithZone(MEMORY[0x277D75348]);
  aBlock[4] = sub_269CC7C58;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_269CC7F6C;
  aBlock[3] = &block_descriptor_4;
  v3 = _Block_copy(aBlock);
  v4 = [v2 initWithDynamicProvider_];
  _Block_release(v3);

  v5 = [objc_opt_self() secondaryLabelColor];
  *v1 = v4;
  v1[1] = v5;
  v1[2] = 0x4010000000000000;
  v6 = OBJC_IVAR____TtC13SleepHealthUI42ScheduleOccurrenceAlarmVolumeTableViewCell_slider;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x277D75A30]) init];
  sub_269D9B100();
  __break(1u);
}

double sub_269D1C288@<D0>(uint64_t a1@<X8>)
{
  sub_269D1D970();
  sub_269D99050();
  result = v5;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  return result;
}

uint64_t sub_269D1C2E8()
{
  sub_269D1D970();

  return sub_269D99060();
}

uint64_t SleepScoreVisualization.init(model:animationTrigger:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_269D97C70();
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = type metadata accessor for SleepScoreVisualization();
  v8 = a3 + *(v7 + 24);
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  *(v8 + 33) = 0u;
  result = sub_269D1C464(a1, a3);
  *(a3 + *(v7 + 20)) = v5;
  return result;
}

uint64_t type metadata accessor for SleepScoreVisualization()
{
  result = qword_280C0B398;
  if (!qword_280C0B398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269D1C464(uint64_t a1, uint64_t a2)
{
  sub_269D1C7C4(0, &qword_280350C88, MEMORY[0x277D62600]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SleepScoreVisualization.init(model:animationTrigger:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_269D1C7C4(0, &qword_280350C90, type metadata accessor for SleepScoreModel);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19[-v7];
  sub_269D1C7C4(0, &qword_280350C88, MEMORY[0x277D62600]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19[-v10];
  v20 = *a2;
  v12 = sub_269D97C70();
  v13 = *(*(v12 - 8) + 56);
  v13(a3, 1, 1, v12);
  v14 = type metadata accessor for SleepScoreVisualization();
  v15 = a3 + *(v14 + 24);
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  *(v15 + 33) = 0u;
  sub_269D1D484(a1, v8, &qword_280350C90, type metadata accessor for SleepScoreModel);
  v16 = type metadata accessor for SleepScoreModel(0);
  if ((*(*(v16 - 8) + 48))(v8, 1, v16) == 1)
  {
    sub_269D1D4F0(a1, &qword_280350C90, type metadata accessor for SleepScoreModel);
    sub_269D1D4F0(v8, &qword_280350C90, type metadata accessor for SleepScoreModel);
    v17 = 1;
  }

  else
  {
    sub_269D97C40();
    sub_269D1D4F0(a1, &qword_280350C90, type metadata accessor for SleepScoreModel);
    sub_269D1D428(v8);
    v17 = 0;
  }

  v13(v11, v17, 1, v12);
  result = sub_269D1C464(v11, a3);
  *(a3 + *(v14 + 20)) = v20;
  return result;
}

void sub_269D1C7C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

double SleepScoreVisualization.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_269D1C7C4(0, &qword_280350C88, MEMORY[0x277D62600]);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v89 = (&v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v86 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v86 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v86 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v86 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v86 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v86 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v86 - v25;
  v27 = *(v2 + *(type metadata accessor for SleepScoreVisualization() + 20));
  if (v27 == 2)
  {
    sub_269D1D484(v2, v26, &qword_280350C88, MEMORY[0x277D62600]);
    v28 = sub_269D97C70();
    v29 = *(v28 - 8);
    v89 = *(v29 + 48);
    v30 = v89(v26, 1, v28);
    v88 = v29;
    if (v30 == 1)
    {
      sub_269D1D4F0(v26, &qword_280350C88, MEMORY[0x277D62600]);
      v31 = 0.0;
    }

    else
    {
      sub_269D97C30();
      v37 = v36;
      (*(v29 + 8))(v26, v28);
      v31 = v37;
    }

    sub_269D1D114(v31);
    v39 = v38;
    sub_269D1D484(v2, v24, &qword_280350C88, MEMORY[0x277D62600]);
    if (v89(v24, 1, v28) == 1)
    {
      sub_269D1D4F0(v24, &qword_280350C88, MEMORY[0x277D62600]);
      v40 = 0.0;
    }

    else
    {
      sub_269D97C60();
      v50 = v49;
      (*(v88 + 8))(v24, v28);
      v40 = v50;
    }

    sub_269D1D114(v40);
    v52 = v51;
    sub_269D1D484(v2, v21, &qword_280350C88, MEMORY[0x277D62600]);
    if (v89(v21, 1, v28) == 1)
    {
      sub_269D1D4F0(v21, &qword_280350C88, MEMORY[0x277D62600]);
      v53 = 0.0;
      v54 = v88;
    }

    else
    {
      sub_269D97C50();
      v62 = v61;
      v54 = v88;
      (*(v88 + 8))(v21, v28);
      v53 = v62;
    }

    sub_269D1D114(v53);
    v64 = v63;
    sub_269D1D484(v2, v18, &qword_280350C88, MEMORY[0x277D62600]);
    v65 = v89(v18, 1, v28);
    if (v65 == 1)
    {
      sub_269D1D4F0(v18, &qword_280350C88, MEMORY[0x277D62600]);
      v66 = 0;
    }

    else
    {
      v66 = sub_269D97C20();
      (*(v54 + 8))(v18, v28);
    }

    LOBYTE(v110) = v65 == 1;
    KeyPath = swift_getKeyPath();
    *&v100 = v39;
    *(&v100 + 1) = 0x3FF0000000000000;
    *&v101 = v52;
    *(&v101 + 1) = 0x3FF0000000000000;
    *&v102 = v64;
    *(&v102 + 1) = 0x3FF0000000000000;
    *&v103 = v66;
    BYTE8(v103) = v110;
    __asm { FMOV            V0.2D, #1.0 }

    v104 = _Q0;
    v105 = _Q0;
    *(v106 + 8) = 0u;
    *(&v106[1] + 8) = 0u;
    *&v106[0] = KeyPath;
    *(&v106[2] + 1) = 0;
    LOBYTE(v107) = 0;
    sub_269D1D5AC(&v100);
  }

  else
  {
    v87 = v27;
    sub_269D1D484(v2, v15, &qword_280350C88, MEMORY[0x277D62600]);
    v32 = sub_269D97C70();
    v33 = *(v32 - 8);
    v86 = *(v33 + 48);
    v34 = v86(v15, 1, v32);
    v88 = v33;
    if (v34 == 1)
    {
      sub_269D1D4F0(v15, &qword_280350C88, MEMORY[0x277D62600]);
      v35 = 0.0;
    }

    else
    {
      sub_269D97C30();
      v42 = v41;
      (*(v33 + 8))(v15, v32);
      v35 = v42;
    }

    sub_269D1D114(v35);
    v44 = v43;
    sub_269D1D484(v2, v12, &qword_280350C88, MEMORY[0x277D62600]);
    v45 = v86;
    v46 = v86(v12, 1, v32);
    v47 = v89;
    if (v46 == 1)
    {
      sub_269D1D4F0(v12, &qword_280350C88, MEMORY[0x277D62600]);
      v48 = 0.0;
    }

    else
    {
      sub_269D97C60();
      v56 = v55;
      (*(v88 + 8))(v12, v32);
      v48 = v56;
    }

    sub_269D1D114(v48);
    v58 = v57;
    sub_269D1D484(v2, v9, &qword_280350C88, MEMORY[0x277D62600]);
    if (v45(v9, 1, v32) == 1)
    {
      sub_269D1D4F0(v9, &qword_280350C88, MEMORY[0x277D62600]);
      v59 = 0.0;
      v60 = v88;
    }

    else
    {
      sub_269D97C50();
      v68 = v67;
      v60 = v88;
      (*(v88 + 8))(v9, v32);
      v59 = v68;
    }

    sub_269D1D114(v59);
    v70 = v69;
    sub_269D1D484(v2, v47, &qword_280350C88, MEMORY[0x277D62600]);
    v71 = v45(v47, 1, v32);
    if (v71 == 1)
    {
      sub_269D1D4F0(v47, &qword_280350C88, MEMORY[0x277D62600]);
      v72 = 0;
    }

    else
    {
      v72 = sub_269D97C20();
      (*(v60 + 8))(v47, v32);
    }

    v109 = v71 == 1;
    v79 = v87 & 1;
    v80 = swift_getKeyPath();
    v108 = 0;
    *&v100 = v44;
    *(&v100 + 1) = v58;
    *&v101 = v70;
    *(&v101 + 1) = v72;
    LOBYTE(v102) = v109;
    BYTE1(v102) = v79;
    *(&v102 + 1) = v80;
    v103 = 0u;
    v104 = 0u;
    *&v105 = 0;
    BYTE8(v105) = 0;
    sub_269D1D54C(&v100);
  }

  v96 = v106[0];
  v97 = v106[1];
  v98 = v106[2];
  v99 = v107;
  v92 = v102;
  v93 = v103;
  v94 = v104;
  v95 = v105;
  v90 = v100;
  v91 = v101;
  sub_269CB1DB0();
  sub_269D1D558();
  sub_269D992D0();
  v81 = v117;
  *(a1 + 96) = v116;
  *(a1 + 112) = v81;
  *(a1 + 128) = v118;
  *(a1 + 144) = v119;
  v82 = v113;
  *(a1 + 32) = v112;
  *(a1 + 48) = v82;
  v83 = v115;
  *(a1 + 64) = v114;
  *(a1 + 80) = v83;
  result = *&v110;
  v85 = v111;
  *a1 = v110;
  *(a1 + 16) = v85;
  return result;
}

uint64_t sub_269D1D114(double a1)
{
  v3 = sub_269D99040();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(type metadata accessor for SleepScoreVisualization() + 24));
  v9 = *v7;
  v8 = *(v7 + 1);
  v11 = *(v7 + 2);
  v10 = v7[3];
  v12 = v7[4];
  v13 = *(v7 + 5);
  v14 = *(v7 + 48);
  v28 = v4;
  if (v14 == 1)
  {
    v29 = v9;
    v30 = v8;
    v31 = v11;
    v32 = v10;
    v15 = v10;
    v33 = v12;
    v34 = v13;
  }

  else
  {
    v27 = v12;

    sub_269D9AB70();
    v16 = v3;
    v17 = sub_269D99590();
    sub_269D98200();

    v3 = v16;
    sub_269D99030();
    swift_getAtKeyPath();
    sub_269C95034();
    (*(v28 + 8))(v6, v16);
    v15 = v32;
  }

  v18 = *(v7 + 1);
  v20 = *(v7 + 2);
  v19 = v7[3];
  v22 = v7[4];
  v21 = *(v7 + 5);
  if (*(v7 + 48) == 1)
  {
    v29 = *v7;
    v30 = v18;
    v31 = v20;
    v32 = v19;
    v23 = v22;
    v33 = v22;
    v34 = v21;
  }

  else
  {

    sub_269D9AB70();
    v24 = v3;
    v25 = sub_269D99590();
    sub_269D98200();

    sub_269D99030();
    swift_getAtKeyPath();
    sub_269C95034();
    (*(v28 + 8))(v6, v24);
    v23 = v33;
  }

  if (a1 != 0.0 && v15 < a1 && a1 < 1.0 && 1.0 - v23 < 0.0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_269D1D428(uint64_t a1)
{
  v2 = type metadata accessor for SleepScoreModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269D1D484(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_269D1C7C4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_269D1D4F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_269D1C7C4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_269D1D558()
{
  result = qword_280350C98;
  if (!qword_280350C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350C98);
  }

  return result;
}

void sub_269D1D5F8()
{
  sub_269D1C7C4(319, &qword_280350C88, MEMORY[0x277D62600]);
  if (v0 <= 0x3F)
  {
    sub_269D1D6A0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_269D1D6A0()
{
  if (!qword_280350CA0)
  {
    v0 = sub_269D98A10();
    if (!v1)
    {
      atomic_store(v0, &qword_280350CA0);
    }
  }
}

uint64_t getEnumTagSinglePayload for SleepScoreVisualization.AnimationTrigger(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SleepScoreVisualization.AnimationTrigger(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_269D1D854(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_269D1D870(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_269D1D898()
{
  result = qword_280350CA8;
  if (!qword_280350CA8)
  {
    sub_269D1D918();
    sub_269CB1DB0();
    sub_269D1D558();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350CA8);
  }

  return result;
}

void sub_269D1D918()
{
  if (!qword_280350CB0)
  {
    v0 = sub_269D992E0();
    if (!v1)
    {
      atomic_store(v0, &qword_280350CB0);
    }
  }
}

unint64_t sub_269D1D970()
{
  result = qword_280350CB8;
  if (!qword_280350CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350CB8);
  }

  return result;
}

Swift::Void __swiftcall UIViewController.addAndLinkChild(_:usesAutoLayout:)(UIViewController *_, Swift::Bool usesAutoLayout)
{
  [v2 addChildViewController_];
  v5 = [(UIViewController *)_ view];
  if (v5)
  {
    v6 = v5;
    v7 = [v2 view];
    if (v7)
    {
      v8 = v7;
      [v7 addSubview_];

      if (usesAutoLayout)
      {
LABEL_6:

        goto LABEL_7;
      }

      v9 = [v2 view];
      if (v9)
      {
        v10 = v9;
        [v9 bounds];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;

        [(UIView *)v6 setFrame:v12, v14, v16, v18];
        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_7:

  [(UIViewController *)_ didMoveToParentViewController:v2];
}

uint64_t HKSPSleepScheduleOccurrence.scheduleIssues.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v3 = sub_269D971F0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v37 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v37 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  v16 = [v2 bedtimeComponents];
  v39 = v15;
  sub_269D97120();

  v17 = [v2 wakeUpComponents];
  v18 = v13;
  sub_269D97120();

  v19 = *(v4 + 16);
  v19(v10, v15, v3);
  v20 = sub_269D97150();
  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v20;
  }

  v38 = v22;
  v23 = sub_269D971A0();
  v25 = v24;
  v26 = *(v4 + 8);
  v26(v10, v3);
  if (v25)
  {
    v23 = 0;
  }

  v19(v7, v18, v3);
  v27 = sub_269D97150();
  if (v28)
  {
    v29 = 0;
  }

  else
  {
    v29 = v27;
  }

  v30 = sub_269D971A0();
  v32 = v31;
  v26(v7, v3);
  if (v32)
  {
    v33 = 0;
  }

  else
  {
    v33 = v30;
  }

  sub_269C679CC(v38, v23, v29, v33);
  if (v34 < 3600.0)
  {
    v35 = (8 * (v34 > 72000.0)) | 4;
  }

  else
  {
    v35 = 8 * (v34 > 72000.0);
  }

  *v40 = v35;
  v26(v18, v3);
  return (v26)(v39, v3);
}

uint64_t HKSPSleepScheduleOccurrence.id.getter()
{
  [v0 weekdays];
  v1 = NSStringFromHKSPWeekdays();
  v2 = sub_269D9A630();

  return v2;
}

void sub_269D1DDF0(uint64_t *a1@<X8>)
{
  [*v1 weekdays];
  v3 = NSStringFromHKSPWeekdays();
  v4 = sub_269D9A630();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t WatchOnboardingCapabilitiesProvider.watchOnboardingCapabilities.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = (*(a2 + 8))();
  v7 = result;
  if (result)
  {
    if ((*(a2 + 16))(a1, a2))
    {
      v8 = 16;
    }

    else
    {
      v8 = 0;
    }

    if ((*(a2 + 24))(a1, a2))
    {
      v8 |= 2uLL;
    }

    v9 = v8 & 0xFFFFFFFFFFFFFFFELL | (*(a2 + 32))(a1, a2) & 1;
    if ((*(a2 + 40))(a1, a2))
    {
      v9 |= 4uLL;
    }

    result = (*(a2 + 48))(a1, a2);
    v10 = v9 | 8;
    if ((result & 1) == 0)
    {
      v10 = v9;
    }
  }

  else
  {
    v10 = 0;
  }

  *a3 = v10;
  *(a3 + 8) = (v7 & 1) == 0;
  return result;
}

unint64_t sub_269D1DFC8()
{
  result = qword_280350CC0;
  if (!qword_280350CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350CC0);
  }

  return result;
}

unint64_t sub_269D1E020()
{
  result = qword_280350CC8;
  if (!qword_280350CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350CC8);
  }

  return result;
}

unint64_t sub_269D1E078()
{
  result = qword_280350CD0;
  if (!qword_280350CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350CD0);
  }

  return result;
}

unint64_t sub_269D1E0D0()
{
  result = qword_280350CD8;
  if (!qword_280350CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350CD8);
  }

  return result;
}

uint64_t sub_269D1E1AC()
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v0 = qword_280C0D990;
  v1 = sub_269D972C0();

  return v1;
}

uint64_t sub_269D1E284()
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v0 = qword_280C0D990;
  v1 = sub_269D972C0();

  return v1;
}

uint64_t sub_269D1E35C()
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v0 = qword_280C0D990;
  v1 = sub_269D972C0();

  return v1;
}

uint64_t sub_269D1E438()
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v0 = qword_280C0D990;
  v1 = sub_269D972C0();

  return v1;
}

uint64_t sub_269D1E514()
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v0 = qword_280C0D990;
  v1 = sub_269D972C0();

  return v1;
}

uint64_t sub_269D1E5F0()
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v0 = qword_280C0D990;
  v1 = sub_269D972C0();

  return v1;
}

__n128 __swift_memcpy43_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 27) = *(a2 + 27);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_269D1E6DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 43))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 41);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_269D1E730(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 43) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 43) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 1;
    }
  }

  return result;
}

void sub_269D1E794(double a1)
{
  v3 = MEMORY[0x277D83D88];
  sub_269D1FD28(0, &unk_28034D9A0, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - v5;
  sub_269D1FD28(0, &unk_280C0BB50, MEMORY[0x277CC99E8], v3);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v13 - v8;
  v10 = vmulq_f64(vcvtq_f64_s64(*v1), vdupq_n_s64(0x404E000000000000uLL));
  sub_269D225A8(v13, round((60.0 * v10.f64[0] + v10.f64[1]) / a1) * a1);
  if (v13[1] == 60 && __OFADD__(v13[0], 1))
  {
    __break(1u);
  }

  else
  {
    v11 = sub_269D977A0();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    v12 = sub_269D97810();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    sub_269D971D0();
  }
}

void sub_269D1EA14(double a1)
{
  v3 = MEMORY[0x277D83D88];
  sub_269D1FD28(0, &unk_28034D9A0, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - v5;
  sub_269D1FD28(0, &unk_280C0BB50, MEMORY[0x277CC99E8], v3);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v13 - v8;
  v10 = vmulq_f64(vcvtq_f64_s64(v1[1]), vdupq_n_s64(0x404E000000000000uLL));
  sub_269D225A8(v13, round((60.0 * v10.f64[0] + v10.f64[1]) / a1) * a1);
  if (v13[1] == 60 && __OFADD__(v13[0], 1))
  {
    __break(1u);
  }

  else
  {
    v11 = sub_269D977A0();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    v12 = sub_269D97810();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    sub_269D971D0();
  }
}

uint64_t sub_269D1EC94(double a1)
{
  v2 = sub_269D971F0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - v7;
  sub_269D1E794(a1);
  sub_269D1EA14(a1);
  v9 = sub_269D97150();
  v11 = v10;
  v12 = sub_269D97150();
  v14 = sub_269D68570(v12, v13 & 1, v9, v11 & 1);
  v16 = v15;
  v17 = sub_269D971A0();
  v19 = v18;
  v20 = sub_269D971A0();
  v22 = sub_269D68570(v20, v21 & 1, v17, v19 & 1);
  v24 = v23;
  sub_269D1FD28(0, &qword_280350900, type metadata accessor for ComparisonResult, MEMORY[0x277D83D88]);
  if ((v16 & 1) == 0)
  {
    if (v14 == 1)
    {
      v29 = *(v3 + 8);
      v29(v6, v2);
      v29(v8, v2);
      LOBYTE(v28) = 1;
      return v28 & 1;
    }

    if (v14)
    {
      if (v14 != -1)
      {
        goto LABEL_17;
      }

      v30 = *(v3 + 8);
      v30(v6, v2);
      v30(v8, v2);
LABEL_14:
      LOBYTE(v28) = 0;
      return v28 & 1;
    }
  }

  v25 = *(v3 + 8);
  v25(v6, v2);
  v25(v8, v2);
  if (v24 & 1) != 0 && (v16)
  {
    goto LABEL_14;
  }

  if (v24)
  {
    v26 = v14;
  }

  else
  {
    v26 = v22;
  }

  v27 = v26 + 1;
  if (v27 < 3)
  {
    v28 = 4u >> (v27 & 7);
    return v28 & 1;
  }

  sub_269D9B270();
  __break(1u);
LABEL_17:
  result = sub_269D9B270();
  __break(1u);
  return result;
}

uint64_t sub_269D1EF20()
{
  v1 = (*(v0 + 24) / 60.0 + *(v0 + 16)) / 24.0 * 6.28318531;
  if (qword_28034D638 != -1)
  {
    result = swift_once();
  }

    ;
  }

    ;
  }

  return result;
}

uint64_t sub_269D1EFD8(double a1)
{
    ;
  }

    ;
  }

  if (qword_28034D638 != -1)
  {
    v5 = a1;
    result = swift_once();
    a1 = v5;
  }

    ;
  }

    ;
  }

  v2 = i / 6.28318531 * 24.0;
  v3 = floor(v2);
  if (v3 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v4 = round((v2 - v3) * 60.0);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v4 < 9.22337204e18)
  {
    return v3;
  }

LABEL_22:
  __break(1u);
  return result;
}

void sub_269D1F15C(double a1, double a2, double a3)
{
  *v3 = sub_269D1EFD8(a1);
  v3[1] = v7;
  sub_269C67AF0();
  if (v8 >= a2)
  {
    sub_269C67AF0();
    if (v10 <= a3)
    {
      return;
    }

      ;
    }

      ;
    }
  }

  else
  {
      ;
    }

      ;
    }
  }

  v3[2] = sub_269D1EFD8(i);
  v3[3] = v11;
}

BOOL sub_269D1F2A4(double a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = (v1[1] / 60.0 + *v1) / 24.0 * 6.28318531;
  if (qword_28034D638 != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v5 = v4 + *&qword_28035E4B0;
  v6 = v4 + *&qword_28035E4B0;
  if (v4 + *&qword_28035E4B0 < 0.0)
  {
    v6 = v4 + *&qword_28035E4B0;
    do
    {
      v6 = v6 + 6.28318531;
    }

    while (v6 < 0.0);
  }

    ;
  }

  v7 = (v3 / 60.0 + v2) / 24.0 * 6.28318531 + *&qword_28035E4B0;
  v8 = v7;
  if (v7 < 0.0)
  {
    v8 = (v3 / 60.0 + v2) / 24.0 * 6.28318531 + *&qword_28035E4B0;
    do
    {
      v8 = v8 + 6.28318531;
    }

    while (v8 < 0.0);
  }

    ;
  }

  if (v6 >= v8)
  {
    while (v5 < 0.0)
    {
      v5 = v5 + 6.28318531;
    }

      ;
    }

    if (a1 <= 6.28318531 && v5 <= a1)
    {
      return 1;
    }

    if (a1 < 0.0)
    {
      return 0;
    }

      ;
    }

      ;
    }
  }

  else
  {
      ;
    }

      ;
    }

    if (v5 > a1)
    {
      return 0;
    }

      ;
    }

      ;
    }
  }

  return v7 >= a1;
}

unint64_t sub_269D1F4CC()
{
  v1 = v0[2];
  v2 = *v0;
  result = v1 - *v0;
  if (__OFSUB__(v1, *v0))
  {
    __break(1u);
    goto LABEL_25;
  }

  v4 = v0[1];
  v5 = v0[3];
  v6 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  v8 = -60;
  if (v6 > 0xFFFFFFFFFFFFFFC4)
  {
    v8 = v5 - v4;
  }

  v9 = v4 + v8;
  if (v9 == v5)
  {
    v10 = v0[3];
  }

  else
  {
    v10 = v5 + 1;
  }

  v11 = v9 == v5;
  v12 = (v9 - v10) / 0x3CuLL;
  if (!v11)
  {
    ++v12;
  }

  if ((v1 ^ 0x8000000000000000) - v2 <= v12)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  result = v1 + ~v2 - v12;
  if ((result & 0x8000000000000000) == 0)
  {
LABEL_5:
    if (result >= 0x18)
    {
      v7 = result - 47;
      if (result < 0x2F)
      {
        v7 = 0;
      }

      return result + (v7 + 23) % 0x18 - (v7 + 23) - 24;
    }

    return result;
  }

LABEL_19:
  v13 = -24 - result;
  if (result > 0xFFFFFFFFFFFFFFE8)
  {
    v13 = 0;
  }

  v14 = ((__PAIR128__(v13, result) - 0xFFFFFFFFFFFFFFE8) >> 64) / 0x18;
  if (result < 0xFFFFFFFFFFFFFFE8)
  {
    ++v14;
  }

  result += 24 * v14 + 24;
  return result;
}

__n128 sub_269D1F5E0@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 sub_269D1F5EC@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

uint64_t sub_269D1F5F8()
{
  v12 = *v0;
  *v13 = v0[1];
  *&v13[11] = *(v0 + 27);
  v1 = sub_269D1F4CC();
  v3 = v2;
  sub_269D1FD28(0, &qword_28034E6B0, sub_269C716C8, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_269DA7DB0;
  sub_269D1F748();
  v5 = sub_269D9A660();
  v7 = v6;
  *(v4 + 56) = MEMORY[0x277D837D0];
  v8 = sub_269C7172C();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  v9 = MEMORY[0x277D83B88];
  v10 = MEMORY[0x277D83C10];
  *(v4 + 96) = MEMORY[0x277D83B88];
  *(v4 + 104) = v10;
  *(v4 + 64) = v8;
  *(v4 + 72) = v12;
  *(v4 + 136) = v9;
  *(v4 + 144) = v10;
  *(v4 + 112) = *(&v12 + 1);
  *(v4 + 176) = v9;
  *(v4 + 184) = v10;
  *(v4 + 152) = *v13;
  *(v4 + 216) = v9;
  *(v4 + 224) = v10;
  *(v4 + 192) = *&v13[8];
  *(v4 + 256) = v9;
  *(v4 + 264) = v10;
  *(v4 + 232) = v1;
  *(v4 + 296) = v9;
  *(v4 + 304) = v10;
  *(v4 + 272) = v3;
  return sub_269D9A640();
}

unint64_t sub_269D1F748()
{
  result = qword_280350CE0;
  if (!qword_280350CE0)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280350CE0);
  }

  return result;
}

uint64_t sub_269D1F790(uint64_t a1)
{
  v2 = v1;
  v4 = sub_269D971F0();
  v20 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D97150();
  if (v7 & 1) != 0 || (sub_269D971A0(), (v8))
  {
    v9 = *(v20 + 8);

    return v9(a1, v4);
  }

  else
  {
    (*(v20 + 16))(v6, a1, v4);
    v11 = sub_269D97150();
    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = v11;
    }

    v14 = sub_269D971A0();
    v16 = v15;
    v17 = *(v20 + 8);
    v20 += 8;
    v17(a1, v4);
    result = (v17)(v6, v4);
    if (v16)
    {
      v18 = 0;
    }

    else
    {
      v18 = v14;
    }

    *v2 = v13;
    v2[1] = v18;
  }

  return result;
}

uint64_t sub_269D1F92C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_269D971F0();
  v20 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D97150();
  if (v7 & 1) != 0 || (sub_269D971A0(), (v8))
  {
    v9 = *(v20 + 8);

    return v9(a1, v4);
  }

  else
  {
    (*(v20 + 16))(v6, a1, v4);
    v11 = sub_269D97150();
    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = v11;
    }

    v14 = sub_269D971A0();
    v16 = v15;
    v17 = *(v20 + 8);
    v20 += 8;
    v17(a1, v4);
    result = (v17)(v6, v4);
    if (v16)
    {
      v18 = 0;
    }

    else
    {
      v18 = v14;
    }

    *(v2 + 16) = v13;
    *(v2 + 24) = v18;
  }

  return result;
}

uint64_t sub_269D1FAC8(double a1, double a2)
{
  sub_269C67AF0();
  if (v5 < a1)
  {
    sub_269D1EF20();
      ;
    }

      ;
    }

LABEL_12:
    *v2 = sub_269D1EFD8(i);
    v2[1] = v10;
    return 1;
  }

  sub_269C67AF0();
  if (v8 > a2)
  {
    sub_269D1EF20();
      ;
    }

      ;
    }

    goto LABEL_12;
  }

  return 0;
}

uint64_t sub_269D1FC18(uint64_t result, uint64_t a2)
{
  if ((a2 | result) < 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v3 = *v2;
  v4 = *v2 + result;
  if (__OFADD__(*v2, result))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    v6 = -24;
    if (v4 > 0xFFFFFFFFFFFFFFE8)
    {
      v6 = *v2 + result;
    }

    if (v4 >= 0xFFFFFFFFFFFFFFE8)
    {
      v7 = *v2 + result;
    }

    else
    {
      v7 = v4 + 1;
    }

    v8 = __CFADD__(v4, 24);
    v9 = v3 + result;
    v10 = (v6 - v7) / 0x18;
    if (!v8)
    {
      ++v10;
    }

    v4 = v9 + 24 * v10 + 24;
  }

  else if (v4 >= 0x18)
  {
    v5 = v3 + result;
    if (v4 >= 0x2F)
    {
      v4 = 47;
    }

    v4 = (v5 - v4 + 23) % 0x18 - (23 - v4) - 24;
  }

  v11 = v2[1];
  v12 = v11 + a2;
  if (__OFADD__(v11, a2))
  {
    goto LABEL_25;
  }

  if (v12 < 60)
  {
LABEL_22:
    v2[2] = v4;
    v2[3] = v12;
    return result;
  }

  v13 = v11 + a2;
  if (v12 >= 0x77)
  {
    v12 = 119;
  }

  v14 = (v13 - v12 + 59) / 0x3CuLL;
  if ((v4 ^ 0x7FFFFFFFFFFFFFFFLL) > v14)
  {
    v15 = v4 + v14;
    v12 = v13 - 60 * v14 - 60;
    v4 = v15 + 1;
    goto LABEL_22;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_269D1FD28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269D1FDAC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC13SleepHealthUI21SleepScheduleProvider_currentDateProvider);

  return v1;
}

uint64_t SleepScheduleProviderWrapper.__allocating_init(sleepStore:)(void *a1)
{
  v2 = swift_allocObject();
  type metadata accessor for SleepScheduleProvider();
  *(v2 + 16) = SleepScheduleProvider.__allocating_init(sleepStore:)(a1);
  return v2;
}

uint64_t SleepScheduleProviderWrapper.init(sleepStore:)(void *a1)
{
  v2 = v1;
  type metadata accessor for SleepScheduleProvider();
  *(v2 + 16) = SleepScheduleProvider.__allocating_init(sleepStore:)(a1);
  return v2;
}

uint64_t SleepScheduleProviderWrapper.__allocating_init(sleepStore:schedule:currentDateProvider:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = objc_allocWithZone(type metadata accessor for SleepScheduleProvider());
  *(v8 + 16) = SleepScheduleProvider.init(sleepStore:schedule:currentDateProvider:)(a1, a2, a3, a4);
  return v8;
}

uint64_t SleepScheduleProviderWrapper.init(sleepStore:schedule:currentDateProvider:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(type metadata accessor for SleepScheduleProvider());
  *(v5 + 16) = SleepScheduleProvider.init(sleepStore:schedule:currentDateProvider:)(a1, a2, a3, a4);
  return v5;
}

uint64_t SleepScheduleProviderWrapper.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_269D2009C()
{
  v1 = *(*(*v0 + 16) + OBJC_IVAR____TtC13SleepHealthUI21SleepScheduleProvider_currentDateProvider);

  return v1;
}

id sub_269D20308()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI21SleepScheduleProvider_sleepStore);
  v8[0] = 0;
  v2 = [v1 sleepScheduleModelWithError_];
  if (v2)
  {
    v3 = v2;
    v4 = v8[0];
    return v3;
  }

  else
  {
    v6 = v8[0];
    v7 = sub_269D97360();

    swift_willThrow();
    return [objc_allocWithZone(MEMORY[0x277D62500]) init];
  }
}

id ScheduleOccurrenceViewControllerRepresentation.init(sleepStore:provenanceSource:isEditingSchedule:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 16) = a2;
  type metadata accessor for SleepScheduleProvider();
  result = SleepScheduleProvider.__allocating_init(sleepStore:)(a1);
  *(a6 + 8) = result;
  *(a6 + 24) = a3;
  *(a6 + 32) = a4;
  *(a6 + 40) = a5;
  return result;
}

id ScheduleOccurrenceViewControllerRepresentation.makeUIViewController(context:)(uint64_t a1)
{
  v55 = a1;
  v2 = sub_269D97580();
  v56 = *(v2 - 8);
  v57 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_269D977A0();
  v5 = *(v59 - 8);
  v6 = MEMORY[0x28223BE20](v59);
  v58 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v48 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v48 - v11;
  v13 = *(v1 + 8);
  v14 = sub_269D20B30();
  v15 = sub_269D20308();
  v16 = [objc_opt_self() hk_gregorianCalendar];
  sub_269D97710();

  sub_269D97570();
  v17 = sub_269D974B0();
  v18 = sub_269D976E0();
  v53 = v15;
  v54 = v14;
  v19 = [v15 generateOverrideOccurrenceFromTemplateForCurrentDate:v17 gregorianCalendar:v18 schedule:v14];

  result = [objc_opt_self() sharedBehavior];
  if (!result)
  {
    goto LABEL_8;
  }

  v21 = result;
  v22 = [result hksp_activePairedDeviceSupportsSleep];

  v52 = v5;
  v23 = *(v5 + 16);
  v24 = v59;
  v23(v10, v12, v59);
  v61[3] = type metadata accessor for SleepScheduleProvider();
  v61[4] = &protocol witness table for SleepScheduleProvider;
  v61[0] = v13;
  v25 = v19;
  v26 = v13;
  result = [v25 isSingleDayOverride];
  if (!result)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v27 = v10;
  v50 = v12;
  v51 = v4;
  v28 = v22;
  v29 = *&v26[OBJC_IVAR____TtC13SleepHealthUI21SleepScheduleProvider_currentGoalPublisher];
  v30 = *&v26[OBJC_IVAR____TtC13SleepHealthUI21SleepScheduleProvider_currentSchedulePublisher];
  v31 = v58;
  v49 = v27;
  (v23)(v58);
  type metadata accessor for ScheduleOccurrenceEditModel();
  v32 = swift_allocObject();
  v48 = v23;
  v33 = v32;
  sub_269C2D3B8();
  swift_allocObject();
  v34 = v25;

  *(v33 + 16) = sub_269D98790();
  sub_269C661F4(0, &qword_28034D820, type metadata accessor for ScheduleOccurrenceEditModel, MEMORY[0x277CBCE10]);
  swift_allocObject();
  *(v33 + 24) = sub_269D98790();
  sub_269C2D498();
  swift_allocObject();
  *(v33 + 32) = sub_269D98790();
  v60[0] = 0;
  sub_269C661F4(0, &qword_28034D830, sub_269C662B4, MEMORY[0x277CBCE30]);
  swift_allocObject();
  *(v33 + 40) = sub_269D987F0();
  *(v33 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_showAlarmSnoozeDurationPicker) = 0;
  [v34 copy];
  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034E050);
  swift_dynamicCast();
  *(v33 + 48) = v60[5];
  *(v33 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) = v34;
  *(v33 + 56) = 257;
  v35 = v34;
  [v35 weekdays];
  *(v33 + 64) = 0;
  *(v33 + 72) = v29;
  *(v33 + 80) = v30;
  *(v33 + 88) = v28;
  v48(v33 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_gregorianCalendar, v31, v24);

  sub_269D987C0();
  v36 = v60[0];
  if (v60[0])
  {
    v37 = *(v33 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence);
    v38 = sub_269D976E0();
    v39 = [v36 allowableRangeForModifiedOccurrence:v37 gregorianCalendar:v38];
  }

  else
  {
    v39 = 0;
  }

  v60[0] = v39;
  sub_269D987D0();

  v40 = *(v52 + 8);
  v41 = v59;
  v40(v58, v59);
  sub_269C2DB5C(v61, v60);
  v42 = objc_allocWithZone(type metadata accessor for ScheduleOccurrenceViewController());
  sub_269C2F0A4(v33, 0, v60);
  v44 = v43;

  v40(v49, v41);
  __swift_destroy_boxed_opaque_existential_1Tm(v61);
  sub_269D2148C();
  sub_269D99570();
  v45 = v60[0];
  v46 = &v44[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_delegate];
  swift_beginAccess();
  *(v46 + 1) = &protocol witness table for ScheduleOccurrenceViewControllerRepresentation.Coordinator;
  swift_unknownObjectWeakAssign();

  v47 = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];
  (*(v56 + 8))(v51, v57);
  v40(v50, v41);
  return v47;
}

id sub_269D20B30()
{
  sub_269D987C0();
  if (v1 && ([v1 mutableCopy], v1, sub_269D9AED0(), swift_unknownObjectRelease(), sub_269C1B0B8(0, &qword_28034E978), (swift_dynamicCast() & 1) != 0))
  {
    return v1;
  }

  else
  {
    return [objc_allocWithZone(MEMORY[0x277D62488]) init];
  }
}

id ScheduleOccurrenceViewControllerRepresentation.makeCoordinator()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = type metadata accessor for ScheduleOccurrenceViewControllerRepresentation.Coordinator();
  v8 = objc_allocWithZone(v7);
  swift_unknownObjectWeakInit();
  v9 = &v8[OBJC_IVAR____TtCV13SleepHealthUI46ScheduleOccurrenceViewControllerRepresentation11Coordinator_parent];
  *v9 = v1;
  *(v9 + 1) = v2;
  *(v9 + 2) = v4;
  *(v9 + 3) = v3;
  *(v9 + 4) = v5;
  v9[40] = v6;
  v14.receiver = v8;
  v14.super_class = v7;
  v10 = v1;
  v11 = v2;
  v12 = v4;

  return objc_msgSendSuper2(&v14, sel_init);
}

id ScheduleOccurrenceViewControllerRepresentation.Coordinator.__allocating_init(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v8 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectWeakInit();
  v6 = &v3[OBJC_IVAR____TtCV13SleepHealthUI46ScheduleOccurrenceViewControllerRepresentation11Coordinator_parent];
  *v6 = *a1;
  *(v6 + 1) = v8;
  *(v6 + 4) = v4;
  v6[40] = v5;
  v9.receiver = v3;
  v9.super_class = v1;
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_269D20D5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtCV13SleepHealthUI46ScheduleOccurrenceViewControllerRepresentation11Coordinator_parent;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 24);
  v12 = *(v3 + 16);
  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v12;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;

  v9 = v4;
  v10 = v5;

  return v12;
}

uint64_t sub_269D20E04(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *a2 + OBJC_IVAR____TtCV13SleepHealthUI46ScheduleOccurrenceViewControllerRepresentation11Coordinator_parent;
  swift_beginAccess();
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);
  v15 = *v8;
  *v8 = v2;
  *(v8 + 8) = v3;
  *(v8 + 16) = v5;
  *(v8 + 24) = v4;
  *(v8 + 32) = v6;
  *(v8 + 40) = v7;

  v11 = v2;
  v12 = v3;
  v13 = v5;
}

id sub_269D20ED8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtCV13SleepHealthUI46ScheduleOccurrenceViewControllerRepresentation11Coordinator_parent;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 24);
  v12 = *(v3 + 16);
  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v12;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;

  v9 = v4;
  v10 = v5;

  return v12;
}

uint64_t sub_269D20F7C(uint64_t a1)
{
  v10 = *(a1 + 16);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v1 + OBJC_IVAR____TtCV13SleepHealthUI46ScheduleOccurrenceViewControllerRepresentation11Coordinator_parent;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  *v5 = *a1;
  *(v5 + 16) = v10;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
}

id ScheduleOccurrenceViewControllerRepresentation.Coordinator.init(_:)(uint64_t a1)
{
  v7 = *(a1 + 16);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  swift_unknownObjectWeakInit();
  v5 = &v1[OBJC_IVAR____TtCV13SleepHealthUI46ScheduleOccurrenceViewControllerRepresentation11Coordinator_parent];
  *v5 = *a1;
  *(v5 + 1) = v7;
  *(v5 + 4) = v3;
  v5[40] = v4;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ScheduleOccurrenceViewControllerRepresentation.Coordinator();
  return objc_msgSendSuper2(&v8, sel_init);
}

id ScheduleOccurrenceViewControllerRepresentation.Coordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ScheduleOccurrenceViewControllerRepresentation.Coordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScheduleOccurrenceViewControllerRepresentation.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_269D212CC@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = type metadata accessor for ScheduleOccurrenceViewControllerRepresentation.Coordinator();
  v10 = objc_allocWithZone(v9);
  swift_unknownObjectWeakInit();
  v11 = &v10[OBJC_IVAR____TtCV13SleepHealthUI46ScheduleOccurrenceViewControllerRepresentation11Coordinator_parent];
  *v11 = v3;
  *(v11 + 1) = v4;
  *(v11 + 2) = v6;
  *(v11 + 3) = v5;
  *(v11 + 4) = v7;
  v11[40] = v8;
  v16.receiver = v10;
  v16.super_class = v9;
  v12 = v3;
  v13 = v4;
  v14 = v6;

  result = objc_msgSendSuper2(&v16, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_269D2139C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269D214E8();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_269D21400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269D214E8();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_269D21464()
{
  sub_269D214E8();
  sub_269D99510();
  __break(1u);
}

void sub_269D2148C()
{
  if (!qword_280350CE8)
  {
    sub_269D214E8();
    v0 = sub_269D99580();
    if (!v1)
    {
      atomic_store(v0, &qword_280350CE8);
    }
  }
}

unint64_t sub_269D214E8()
{
  result = qword_280350CF0;
  if (!qword_280350CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350CF0);
  }

  return result;
}

void sub_269D21560(uint64_t a1, char a2)
{
  v3 = v2;
  swift_getObjectType();
  if (qword_28034D640 != -1)
  {
    swift_once();
  }

  v6 = sub_269D98250();
  __swift_project_value_buffer(v6, qword_28035E4B8);
  v7 = sub_269D98230();
  v8 = sub_269D9AB80();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock = v10;
    *v9 = 136446210;
    v11 = sub_269D9B4D0();
    v13 = v6;
    v14 = a2;
    v15 = sub_269C2EACC(v11, v12, &aBlock);

    *(v9 + 4) = v15;
    a2 = v14;
    v6 = v13;
    _os_log_impl(&dword_269C18000, v7, v8, "[%{public}s] Did modify", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D652460](v10, -1, -1);
    MEMORY[0x26D652460](v9, -1, -1);
  }

  v16 = v3 + OBJC_IVAR____TtCV13SleepHealthUI46ScheduleOccurrenceViewControllerRepresentation11Coordinator_parent;
  swift_beginAccess();
  v17 = *(v16 + 8);
  v18 = sub_269D20B30();

  if (a2)
  {
    v19 = [v18 overrideOccurrence];
    if (v19)
    {
      v20 = v19;
      if (qword_280C0B720 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v6, qword_280C0B728);
      v21 = sub_269D98230();
      v22 = sub_269D9AB80();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        aBlock = v24;
        *v23 = 136446210;
        v25 = sub_269D9B4D0();
        v27 = sub_269C2EACC(v25, v26, &aBlock);

        *(v23 + 4) = v27;
        _os_log_impl(&dword_269C18000, v21, v22, "[%{public}s] Removing override", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        MEMORY[0x26D652460](v24, -1, -1);
        MEMORY[0x26D652460](v23, -1, -1);
      }

      [v18 removeOccurrence_];
    }
  }

  [v18 saveOccurrence_];
  v28 = *v16;
  v38 = nullsub_1;
  v39 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v35 = 1107296256;
  v36 = sub_269C7A600;
  v37 = &block_descriptor_8;
  v29 = _Block_copy(&aBlock);
  v30 = v28;
  v31 = v18;
  [v30 saveCurrentSleepSchedule:v31 completion:v29];
  _Block_release(v29);

  v32 = *(v16 + 32);
  v33 = *(v16 + 40);
  aBlock = *(v16 + 24);
  v35 = v32;
  LOBYTE(v36) = v33;
  sub_269D22020();

  sub_269D9A010();
}

void sub_269D21978(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_28034D640 != -1)
  {
    swift_once();
  }

  v4 = sub_269D98250();
  __swift_project_value_buffer(v4, qword_28035E4B8);
  v5 = sub_269D98230();
  v6 = sub_269D9AB80();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    aBlock = v8;
    *v7 = 136446210;
    v9 = sub_269D9B4D0();
    v11 = sub_269C2EACC(v9, v10, &aBlock);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_269C18000, v5, v6, "[%{public}s] Did finish by deleting", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D652460](v8, -1, -1);
    MEMORY[0x26D652460](v7, -1, -1);
  }

  v12 = v2 + OBJC_IVAR____TtCV13SleepHealthUI46ScheduleOccurrenceViewControllerRepresentation11Coordinator_parent;
  swift_beginAccess();
  v13 = *(v12 + 8);
  v14 = sub_269D20B30();

  [v14 removeOccurrence_];
  v15 = *v12;
  v25 = nullsub_1;
  v26 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_269C7A600;
  v24 = &block_descriptor_28;
  v16 = _Block_copy(&aBlock);
  v17 = v15;
  v18 = v14;
  [v17 saveCurrentSleepSchedule:v18 completion:v16];
  _Block_release(v16);

  v19 = *(v12 + 32);
  v20 = *(v12 + 40);
  aBlock = *(v12 + 24);
  v22 = v19;
  LOBYTE(v23) = v20;
  sub_269D22020();

  sub_269D9A010();
}

uint64_t sub_269D21C18()
{
  swift_getObjectType();
  if (qword_28034D640 != -1)
  {
    swift_once();
  }

  v0 = sub_269D98250();
  __swift_project_value_buffer(v0, qword_28035E4B8);
  v1 = sub_269D98230();
  v2 = sub_269D9AB80();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9[0] = v4;
    *v3 = 136446210;
    v5 = sub_269D9B4D0();
    v7 = sub_269C2EACC(v5, v6, v9);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_269C18000, v1, v2, "[%{public}s] Did cancel", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x26D652460](v4, -1, -1);
    MEMORY[0x26D652460](v3, -1, -1);
  }

  swift_beginAccess();
  sub_269D22020();
  return sub_269D9A010();
}

unint64_t sub_269D21DC4()
{
  result = qword_280350D08;
  if (!qword_280350D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350D08);
  }

  return result;
}

uint64_t sub_269D21E18(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_269D21E60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_269D22020()
{
  if (!qword_28034E338)
  {
    v0 = sub_269D9A040();
    if (!v1)
    {
      atomic_store(v0, &qword_28034E338);
    }
  }
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t TimeOfDay.init(dateComponents:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_269D97150();
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  v7 = sub_269D971A0();
  v9 = v8;
  v10 = sub_269D971F0();
  result = (*(*(v10 - 8) + 8))(a1, v10);
  if (v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v7;
  }

  *a2 = v6;
  a2[1] = v12;
  return result;
}

SleepHealthUI::TimeOfDay __swiftcall TimeOfDay.rounded(toIncrement:)(Swift::Double toIncrement)
{
  v3 = vmulq_f64(vcvtq_f64_s64(*v2), vdupq_n_s64(0x404E000000000000uLL));
  sub_269D225A8(v1, round((60.0 * v3.f64[0] + v3.f64[1]) / toIncrement) * toIncrement);
  result.minute = v5;
  result.hour = v4;
  return result;
}

uint64_t TimeOfDay.dateComponents.getter()
{
  v1 = MEMORY[0x277D83D88];
  sub_269D2278C(0, &unk_28034D9A0, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  sub_269D2278C(0, &unk_280C0BB50, MEMORY[0x277CC99E8], v1);
  result = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v11 - v7;
  if (v0[1] == 60 && __OFADD__(*v0, 1))
  {
    __break(1u);
  }

  else
  {
    v9 = sub_269D977A0();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = sub_269D97810();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
    return sub_269D971D0();
  }

  return result;
}

SleepHealthUI::TimeOfDay __swiftcall TimeOfDay.init(hour:minute:)(Swift::Int hour, Swift::Int minute)
{
  *v2 = hour;
  v2[1] = minute;
  result.minute = minute;
  result.hour = hour;
  return result;
}

Swift::Void __swiftcall TimeOfDay.round(toIncrement:)(Swift::Double toIncrement)
{
  v2 = vmulq_f64(vcvtq_f64_s64(*v1), vdupq_n_s64(0x404E000000000000uLL));
  sub_269D225A8(v3.i64, round((60.0 * v2.f64[0] + v2.f64[1]) / toIncrement) * toIncrement);
  *v1 = v3;
}

void sub_269D2245C()
{
  v0 = *MEMORY[0x277D62008];
  qword_280350D10 = *MEMORY[0x277D62000];
  *algn_280350D18 = v0;
}

void sub_269D224A8()
{
  v0 = *MEMORY[0x277D62350];
  qword_280350D20 = *MEMORY[0x277D62348];
  *algn_280350D28 = v0;
}

__n128 sub_269D224F4@<Q0>(void *a1@<X0>, __n128 *a2@<X1>, __n128 *a3@<X8>)
{
  if (*a1 != -1)
  {
    v4 = a2;
    v5 = a3;
    swift_once();
    a3 = v5;
    a2 = v4;
  }

  result = *a2;
  *a3 = *a2;
  return result;
}

void sub_269D225A8(uint64_t *a1@<X8>, double a2@<D0>)
{
  v2 = floor(a2 / 60.0 / 60.0);
  if (v2 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v3 = floor((a2 - v2 * 60.0 * 60.0) / 60.0);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_10;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v3 < 9.22337204e18)
  {
    *a1 = v2 % 24;
    a1[1] = v3;
    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t TimeOfDay.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  sub_269D2278C(0, &qword_28034E6B0, sub_269C716C8, MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_269DA0D60;
  sub_269D227F0();
  v4 = sub_269D9A660();
  v6 = v5;
  *(v3 + 56) = MEMORY[0x277D837D0];
  v7 = sub_269C7172C();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  v8 = MEMORY[0x277D83B88];
  v9 = MEMORY[0x277D83C10];
  *(v3 + 96) = MEMORY[0x277D83B88];
  *(v3 + 104) = v9;
  *(v3 + 64) = v7;
  *(v3 + 72) = v2;
  *(v3 + 136) = v8;
  *(v3 + 144) = v9;
  *(v3 + 112) = v1;
  return sub_269D9A640();
}

void sub_269D2278C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_269D227F0()
{
  result = qword_280350D30;
  if (!qword_280350D30)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280350D30);
  }

  return result;
}

uint64_t DateComponents.init(timeOfDay:)()
{
  v0 = MEMORY[0x277D83D88];
  sub_269D2278C(0, &unk_28034D9A0, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  sub_269D2278C(0, &unk_280C0BB50, MEMORY[0x277CC99E8], v0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_269D977A0();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = sub_269D97810();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  return sub_269D971D0();
}

uint64_t DateComponents.applying(timeOfDay:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_269D971F0();
  (*(*(v4 - 8) + 16))(a1, v2, v4);
  sub_269D97160();
  return sub_269D971B0();
}

_WORD *Text.ViewModel.init(leadingSymbol:text:font:textColor:hidden:accessibilityLabel:)@<X0>(_WORD *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = *result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

uint64_t static Text.create(_:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_269D23074(0, &qword_280350D38, sub_269D13940, sub_269D139A0, MEMORY[0x277CE0330]);
  MEMORY[0x28223BE20](v4);
  v6 = &v40 - v5;
  sub_269D13940();
  v8 = v7;
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D139A0();
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D23074(0, &qword_280350B08, sub_269D13940, sub_269D139A0, MEMORY[0x277CE0338]);
  v16 = v15;
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - v18;
  v20 = a1[1];
  v51 = *a1;
  v52 = v20;
  v21 = a1[3];
  v53 = a1[2];
  v54 = v21;
  if (v20)
  {
    v46 = v8;
    v47 = v17;
    v48 = a2;
    v22 = sub_269D2347C(*(&v51 + 1), v52, v53, v54, *(&v54 + 1));
    v42 = v23;
    v43 = v24;
    v44 = v22;
    v45 = v25;
    sub_269D2362C(&v51, v22, v24, v23 & 1, v49);
    v26 = v50;
    sub_269D2302C(0);
    v28 = v27;
    sub_269C51E5C();
    v30 = v29;
    v31 = sub_269D99DB0();
    v41 = v49[0];
    v40 = v49[1];
    v32 = &v14[*(v28 + 36)];
    (*(*(v31 - 8) + 104))(v32 + *(v30 + 28), *MEMORY[0x277CE1050], v31);
    *v32 = swift_getKeyPath();
    v33 = v40;
    *v14 = v41;
    *(v14 + 1) = v33;
    v14[32] = v26;
    v34 = *(&v52 + 1);
    KeyPath = swift_getKeyPath();
    v36 = &v14[*(v12 + 36)];
    *v36 = KeyPath;
    v36[1] = v34;
    if (BYTE8(v53))
    {
      sub_269D23B10(v14, v10, sub_269D139A0);
      sub_269D23B10(v10, v6, sub_269D13940);
      swift_storeEnumTagMultiPayload();
      sub_269D239E8();
      sub_269D13F10();

      sub_269D992D0();
      sub_269D23B78(v10, sub_269D13940);
    }

    else
    {
      sub_269D23B10(v14, v6, sub_269D139A0);
      swift_storeEnumTagMultiPayload();
      sub_269D239E8();
      sub_269D13F10();

      sub_269D992D0();
    }

    sub_269C41568(v44, v43, v42 & 1);

    sub_269D23B78(v14, sub_269D139A0);
    v39 = v48;
    sub_269D23A68(v19, v48);
    return (*(v47 + 56))(v39, 0, 1, v16);
  }

  else
  {
    v37 = *(v17 + 56);

    return v37(a2, 1, 1, v16);
  }
}

void sub_269D23074(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t Text.init(_:table:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = a5[1];
  if (v5)
  {
    v6 = a5[2];
    v7 = *a5;

    v8 = v6;
    sub_269D23BD8(v7, v5, v6);
  }

  return sub_269D99940();
}

uint64_t Text.ViewModel.text.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t Text.ViewModel.accessibilityLabel.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t Text.ViewModel.hash(into:)()
{
  v1 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[7];
  if ((~*v0 & 0xFCFC) != 0)
  {
    sub_269D9B370();
    Symbol.hash(into:)();
    if (v1)
    {
LABEL_3:
      sub_269D9B370();
      sub_269D9A6A0();
      if (v3)
      {
        goto LABEL_4;
      }

LABEL_8:
      sub_269D9B370();
      if (v2)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else
  {
    sub_269D9B370();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  sub_269D9B370();
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_269D9B370();
  sub_269D996E0();
  if (v2)
  {
LABEL_5:
    sub_269D9B370();
    sub_269D99CF0();
    goto LABEL_10;
  }

LABEL_9:
  sub_269D9B370();
LABEL_10:
  sub_269D9B370();
  if (!v4)
  {
    return sub_269D9B370();
  }

  sub_269D9B370();

  return sub_269D9A6A0();
}

uint64_t Text.ViewModel.hashValue.getter()
{
  sub_269D9B350();
  Text.ViewModel.hash(into:)();
  return sub_269D9B390();
}

uint64_t sub_269D233F8()
{
  sub_269D9B350();
  Text.ViewModel.hash(into:)();
  return sub_269D9B390();
}

uint64_t sub_269D2343C()
{
  sub_269D9B350();
  Text.ViewModel.hash(into:)();
  return sub_269D9B390();
}

uint64_t sub_269D2347C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    sub_269C3EEE8();

    v5 = sub_269D99960();
    v7 = v6;
    v9 = v8;
    v10 = sub_269D998F0();
    v12 = v11;
    v14 = v13;
    sub_269C41568(v5, v7, v9 & 1);

    v15 = sub_269D99900();
    sub_269C41568(v10, v12, v14 & 1);
  }

  else
  {
    sub_269C3EEE8();

    v16 = sub_269D99960();
    v18 = v17;
    v20 = v19;
    v15 = sub_269D998F0();
    sub_269C41568(v16, v18, v20 & 1);
  }

  return v15;
}

uint64_t sub_269D2362C@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v9 = sub_269D990F0();
  MEMORY[0x28223BE20](v9 - 8);
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *a1;
  if ((~v10 & 0xFCFC) != 0)
  {
    sub_269D990E0();
    sub_269D990D0();
    LOWORD(v29) = v10;
    Symbol.systemName.getter();
    sub_269D99D90();
    v15 = sub_269D99970();
    v17 = v16;
    v19 = v18;
    v27 = a5;
    if ((v10 & 0xF000) == 0x1000 && (v10 & 1) == 0)
    {
      if (qword_28034D620 != -1)
      {
        swift_once();
      }

      v21 = qword_28034E060;
    }

    else
    {
      v20 = [objc_opt_self() hk_sleepKeyColor];
    }

    sub_269D99CC0();
    v22 = sub_269D998F0();
    v24 = v23;
    v26 = v25;
    sub_269C41568(v15, v17, v19 & 1);

    sub_269D990B0();
    sub_269C41568(v22, v24, v26 & 1);

    sub_269D990D0();
    sub_269D990B0();
    sub_269D990D0();
    sub_269D990B0();
    sub_269D990D0();
    sub_269D99110();
    sub_269D99940();
    sub_269D992D0();

    v12 = v29;
    v13 = v30;
    v14 = v31;
    a5 = v27;
  }

  else
  {
    sub_269C41668(a2, a3, a4 & 1);

    sub_269D992D0();

    v12 = v29;
    v13 = v30;
    v14 = v31;
  }

  *a5 = v12;
  *(a5 + 16) = v13;
  *(a5 + 32) = v14;
  return result;
}

unint64_t sub_269D239E8()
{
  result = qword_280350B48;
  if (!qword_280350B48)
  {
    sub_269D13940();
    sub_269D13F10();
    sub_269C419C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350B48);
  }

  return result;
}

uint64_t sub_269D23A68(uint64_t a1, uint64_t a2)
{
  sub_269D23074(0, &qword_280350B08, sub_269D13940, sub_269D139A0, MEMORY[0x277CE0338]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269D23B10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269D23B78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_269D23BD8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

BOOL _s7SwiftUI4TextV011SleepHealthB0E9ViewModelV2eeoiySbAF_AFtFZ_0(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *a2;
  v10 = *(a2 + 1);
  v11 = *(a2 + 2);
  v12 = *(a2 + 3);
  v13 = *(a2 + 4);
  v14 = *(a2 + 40);
  v16 = *(a2 + 6);
  v15 = *(a2 + 7);
  v39 = *a1;
  v40 = v9;
  if ((~v39 & 0xFCFC) != 0)
  {
    v38 = v39;
    if ((~v9 & 0xFCFC) == 0)
    {
      return 0;
    }

    v36 = v5;
    v37 = v4;
    v35 = v13;
    v34 = v14;
    v17 = v6;
    v18 = v16;
    v19 = v15;
    v20 = v8;
    v21 = v7;
    v22 = v12;
    v23 = v2;
    v24 = v10;
    v25 = _s13SleepHealthUI6SymbolO2eeoiySbAC_ACtFZ_0(&v38, &v40);
    v10 = v24;
    v2 = v23;
    v12 = v22;
    v7 = v21;
    v8 = v20;
    v15 = v19;
    v16 = v18;
    v6 = v17;
    v14 = v34;
    v13 = v35;
    v5 = v36;
    v4 = v37;
    if (!v25)
    {
      return 0;
    }
  }

  else if ((~v9 & 0xFCFC) != 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v11)
    {
      return 0;
    }

    if (v2 != v10 || v3 != v11)
    {
      v26 = v7;
      v27 = v12;
      v28 = sub_269D9B280();
      v12 = v27;
      v7 = v26;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v4)
  {
    if (!v12)
    {
      return 0;
    }

    v29 = v7;

    v30 = sub_269D996B0();

    v7 = v29;
    if ((v30 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (v5)
  {
    if (!v13)
    {
      return 0;
    }

    v31 = v7;

    v32 = sub_269D99CD0();

    result = 0;
    if ((v32 & 1) == 0)
    {
      return result;
    }

    v7 = v31;
    if ((v6 ^ v14))
    {
      return result;
    }

    goto LABEL_25;
  }

  result = 0;
  if (!v13 && ((v6 ^ v14) & 1) == 0)
  {
LABEL_25:
    if (v8)
    {
      return v15 && (v7 == v16 && v8 == v15 || (sub_269D9B280() & 1) != 0);
    }

    return !v15;
  }

  return result;
}

unint64_t sub_269D23E48()
{
  result = qword_280350D40;
  if (!qword_280350D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350D40);
  }

  return result;
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

uint64_t sub_269D23EB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_269D23F0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_269D23F80(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

uint64_t sub_269D23FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269D255B0(0, &qword_28034F148, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_269D973D0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = [objc_opt_self() internalHealthSettingsURLString];
  sub_269D9A630();

  sub_269D973C0();

  result = (*(v9 + 48))(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;
    sub_269C255A8(a2);
    DeepLinkOpener.open(url:completion:)(v11, sub_269D257E8, v14);

    (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_269D24284(uint64_t a1, void (*a2)(void))
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a2)
  {
    a2(0);
  }
}

id sub_269D2433C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = _Block_copy(a5);
  v7 = sub_269D9A630();
  v9 = v8;
  v10 = sub_269D9A630();
  v12 = v11;
  if (v6)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v6;
    v6 = sub_269D257A8;
  }

  else
  {
    v13 = 0;
  }

  v14 = _sSo17UIAlertControllerC13SleepHealthUIE026notificationsWontFireAlertB014localizedTitle0J7Dismiss10completionABSS_SSySbcSgtFZ_0(v7, v9, v10, v12, v6, v13);
  sub_269C93228(v6);

  return v14;
}

uint64_t sub_269D24494@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v44 = a2;
  sub_269D255B0(0, &qword_28034F148, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v36 - v4;
  v6 = sub_269D973D0();
  v45 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v46 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *v2;
  v50 = *(v2 + 16);
  sub_269D22020();
  sub_269D9A020();
  v42 = *(&v53 + 1);
  v43 = v53;
  v41 = v54;
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v8 = qword_280C0D990;
  v39 = sub_269D972C0();
  v40 = v9;

  v10 = v8;
  v34 = 0xE000000000000000;
  v11 = sub_269D972C0();

  v12 = [objc_opt_self() internalHealthSettingsURLString];
  sub_269D9A630();

  sub_269D973C0();

  v13 = v45;
  result = (*(v45 + 48))(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v53 = *(v2 + 24);
    v15 = (*(v13 + 32))();
    v38 = &v36;
    v51 = &type metadata for DeepLinkOpener;
    v52 = &protocol witness table for DeepLinkOpener;
    v48 = v53;
    MEMORY[0x28223BE20](v15);
    v36 = &v36 - 12;
    v37 = v6;
    *(&v36 - 10) = v47;
    *(&v36 - 9) = v11;
    MEMORY[0x28223BE20](v16);
    sub_269D25554();
    v18 = v17;
    sub_269D255B0(0, &qword_28034F1D0, sub_269C9D7DC, MEMORY[0x277CE14B8]);
    v19 = v13;
    v21 = v20;
    sub_269D25674(0, &qword_28034F208, &type metadata for ClearTextCaseFromEnvironment, MEMORY[0x277CDFAB8]);
    v23 = v22;
    v24 = sub_269D256C8();
    v25 = sub_269C3EEE8();
    v26 = sub_269D25720();
    v27 = sub_269C9DA98();
    v34 = v26;
    v35 = v27;
    v32 = v24;
    v33 = v25;
    v30 = v21;
    v31 = v23;
    v28 = v18;
    v29 = MEMORY[0x277D837D0];
    sub_269D99BF0();

    __swift_destroy_boxed_opaque_existential_1Tm(&v49);
    return (*(v19 + 8))(v46, v37);
  }

  return result;
}