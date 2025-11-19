void sub_2692B8218(void *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = sub_2692C77A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v47[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280302B38 != -1)
  {
    swift_once();
  }

  v14 = sub_2692C77C0();
  __swift_project_value_buffer(v14, qword_280303338);
  v15 = sub_2692C77B0();
  v16 = sub_2692C7A00();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v46 = v13;
    v18 = a1;
    v19 = v8;
    v20 = a3;
    v21 = a2;
    v22 = v17;
    *v17 = 0;
    _os_log_impl(&dword_269270000, v15, v16, "calling DeleteAlarmIntentHandler.handle().", v17, 2u);
    v23 = v22;
    a2 = v21;
    a3 = v20;
    v8 = v19;
    a1 = v18;
    v4 = v3;
    v13 = v46;
    MEMORY[0x26D6368E0](v23, -1, -1);
  }

  v24 = [a1 alarms];
  if (v24)
  {
    v25 = v24;
    type metadata accessor for SiriAlarm();
    v26 = sub_2692C7930();

    sub_2692C7A20();
    v27 = *&v4[OBJC_IVAR____TtC21SiriTimeAlarmInternal24DeleteAlarmIntentHandler_osLogObject];
    sub_2692C7790();
    sub_2692C7780();
    (*(v9 + 8))(v13, v8);
    sub_269275A6C(&v4[OBJC_IVAR____TtC21SiriTimeAlarmInternal24DeleteAlarmIntentHandler_siriAlarmManager], v47);
    v28 = v48;
    v29 = v49;
    __swift_project_boxed_opaque_existential_1(v47, v48);
    v30 = swift_allocObject();
    v30[2] = v4;
    v30[3] = a2;
    v30[4] = a3;
    v30[5] = a1;
    v31 = *(v29 + 8);
    v32 = v4;

    v33 = a1;
    v31(v26, sub_2692B8E14, v30, v28, v29);

    __swift_destroy_boxed_opaque_existential_1Tm(v47);
  }

  else
  {
    v34 = a1;
    v35 = sub_2692C77B0();
    v36 = sub_2692C79F0();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      *(v37 + 4) = v34;
      *v38 = v34;
      v39 = v34;
      _os_log_impl(&dword_269270000, v35, v36, "Can NOT handle delete, intent.alarms = nil, intent: %@", v37, 0xCu);
      sub_2692A14A0(v38);
      MEMORY[0x26D6368E0](v38, -1, -1);
      MEMORY[0x26D6368E0](v37, -1, -1);
    }

    v40 = sub_2692C7760();
    v48 = v40;
    v49 = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
    strcpy(boxed_opaque_existential_1, "Delete Alarm");
    *(boxed_opaque_existential_1 + 13) = 0;
    *(boxed_opaque_existential_1 + 7) = -5120;
    v42 = *MEMORY[0x277D61878];
    v43 = sub_2692C7710();
    (*(*(v43 - 8) + 104))(boxed_opaque_existential_1, v42, v43);
    (*(*(v40 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v40);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    v44 = [objc_allocWithZone(type metadata accessor for DeleteAlarmIntentResponse()) init];
    v45 = OBJC_IVAR___DeleteAlarmIntentResponse_code;
    swift_beginAccess();
    *&v44[v45] = 5;
    [v44 setUserActivity_];
    a2(v44);
  }
}

void sub_2692B870C(uint64_t *a1, uint64_t a2, void (*a3)(char *), uint64_t a4, void *a5)
{
  v9 = sub_2692C77A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v35[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = *(a1 + 8);
  sub_2692C7A10();
  v17 = *(a2 + OBJC_IVAR____TtC21SiriTimeAlarmInternal24DeleteAlarmIntentHandler_osLogObject);
  sub_2692C7790();
  sub_2692C7780();
  (*(v10 + 8))(v14, v9);
  if (v16 == 1)
  {
    if (qword_280302B38 != -1)
    {
      swift_once();
    }

    v18 = sub_2692C77C0();
    __swift_project_value_buffer(v18, qword_280303338);
    v19 = a5;
    v20 = sub_2692C77B0();
    v21 = sub_2692C79F0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v19;
      *v23 = v19;
      v24 = v19;
      _os_log_impl(&dword_269270000, v20, v21, "Can NOT handle delete alarm, intent: %@", v22, 0xCu);
      sub_2692A14A0(v23);
      MEMORY[0x26D6368E0](v23, -1, -1);
      MEMORY[0x26D6368E0](v22, -1, -1);
    }

    v25 = sub_2692C7760();
    v35[3] = v25;
    v35[4] = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
    sub_269280704();
    v27 = swift_allocError();
    *v28 = v15;
    *boxed_opaque_existential_1 = sub_2692C7320();
    v29 = *MEMORY[0x277D61838];
    v30 = sub_2692C76A0();
    (*(*(v30 - 8) + 104))(boxed_opaque_existential_1, v29, v30);
    (*(*(v25 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618F0], v25);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v35);

    v31 = [objc_allocWithZone(type metadata accessor for DeleteAlarmIntentResponse()) init];
    v32 = OBJC_IVAR___DeleteAlarmIntentResponse_code;
    swift_beginAccess();
    v33 = 5;
  }

  else
  {
    v31 = [objc_allocWithZone(type metadata accessor for DeleteAlarmIntentResponse()) init];
    v32 = OBJC_IVAR___DeleteAlarmIntentResponse_code;
    swift_beginAccess();
    v33 = 4;
  }

  *&v31[v32] = v33;
  [v31 setUserActivity_];
  a3(v31);
}

void sub_2692B8AFC(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

id DeleteAlarmIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeleteAlarmIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2692B8C10(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a3;
  v14[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v8 = OBJC_IVAR____TtC21SiriTimeAlarmInternal24DeleteAlarmIntentHandler_osLogObject;
  if (qword_280302B50 != -1)
  {
    swift_once();
  }

  v9 = qword_280303380;
  *&a2[v8] = qword_280303380;
  sub_269275A6C(v14, &a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24DeleteAlarmIntentHandler_siriAlarmManager]);
  v13.receiver = a2;
  v13.super_class = type metadata accessor for DeleteAlarmIntentHandler();
  v10 = v9;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return v11;
}

id sub_2692B8D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(type metadata accessor for DeleteAlarmIntentHandler());
  (*(v7 + 16))(v10, a1, a3);
  return sub_2692B8C10(v10, v11, a3, a4);
}

void sub_2692B8EE8(void *a1, uint64_t a2, void (**a3)(void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  v7 = [a1 alarms];
  if (v7)
  {
    v8 = v7;
    type metadata accessor for SiriAlarm();
    v9 = sub_2692C7930();

    if (qword_280302B38 != -1)
    {
      swift_once();
    }

    v10 = sub_2692C77C0();
    __swift_project_value_buffer(v10, qword_280303338);

    v11 = sub_2692C77B0();
    LOBYTE(v12) = sub_2692C7A00();
    v13 = v9 >> 62;
    if (!os_log_type_enabled(v11, v12))
    {

      goto LABEL_10;
    }

    v3 = swift_slowAlloc();
    *v3 = 134217984;
    if (v13)
    {
      goto LABEL_25;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2692C7C60())
    {
      *(v3 + 4) = i;

      _os_log_impl(&dword_269270000, v11, v12, "DeleteAlarmIntentHandler: Using %ld alarms on intent for resolution", v3, 0xCu);
      MEMORY[0x26D6368E0](v3, -1, -1);

LABEL_10:
      if (v13)
      {
        v12 = sub_2692C7C60();
        if (!v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v12)
        {
          goto LABEL_20;
        }
      }

      v20 = MEMORY[0x277D84F90];
      v11 = &v20;
      sub_2692C7C10();
      if ((v12 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_25:
      ;
    }

    type metadata accessor for DeleteAlarmAlarmsResolutionResult();
    v15 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x26D6360D0](v15, v9);
      }

      else
      {
        v16 = *(v9 + 8 * v15 + 32);
      }

      v17 = v16;
      ++v15;
      sub_2692C42D8(v16);

      sub_2692C7BF0();
      v18 = *(v20 + 16);
      sub_2692C7C20();
      sub_2692C7C30();
      sub_2692C7C00();
    }

    while (v12 != v15);
LABEL_20:

    type metadata accessor for DeleteAlarmAlarmsResolutionResult();
    v19 = sub_2692C7910();
    a3[2](a3);
  }

  else
  {
    v19 = [a1 alarmSearch];
    sub_2692B746C(v19, sub_2692B9A84, v6);
  }
}

void sub_2692B9220(void *a1, uint64_t a2)
{
  v4 = [a1 alarms];
  if (!v4)
  {
    v6 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_3;
    }

LABEL_13:
    v7 = sub_2692C7C60();
    goto LABEL_4;
  }

  v5 = v4;
  type metadata accessor for SiriAlarm();
  v6 = sub_2692C7930();

  if (v6 >> 62)
  {
    goto LABEL_13;
  }

LABEL_3:
  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  if (v7 > 1 || (v8 = [a1 alarmSearch]) != 0 && (v9 = v8, v10 = objc_msgSend(v8, sel_alarmReferenceType), v9, v10 == 3))
  {
    v11 = [objc_allocWithZone(type metadata accessor for DeleteAlarmIntentResponse()) init];
    v12 = OBJC_IVAR___DeleteAlarmIntentResponse_code;
    swift_beginAccess();
    *&v11[v12] = 3;
    [v11 setUserActivity_];
    if (qword_280302B38 != -1)
    {
      swift_once();
    }

    v13 = sub_2692C77C0();
    __swift_project_value_buffer(v13, qword_280303338);
    v14 = sub_2692C77B0();
    v15 = sub_2692C7A00();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_269270000, v14, v15, "In handler: confirm(), shouldConfirm = true", v16, 2u);
      MEMORY[0x26D6368E0](v16, -1, -1);
    }
  }

  else
  {
    if (qword_280302B38 != -1)
    {
      swift_once();
    }

    v17 = sub_2692C77C0();
    __swift_project_value_buffer(v17, qword_280303338);
    v18 = sub_2692C77B0();
    v19 = sub_2692C7A00();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_269270000, v18, v19, "Don't need confirm", v20, 2u);
      MEMORY[0x26D6368E0](v20, -1, -1);
    }

    v11 = [objc_allocWithZone(type metadata accessor for DeleteAlarmIntentResponse()) init];
    v21 = OBJC_IVAR___DeleteAlarmIntentResponse_code;
    swift_beginAccess();
    *&v11[v21] = 4;
    [v11 setUserActivity_];
  }

  (*(a2 + 16))(a2, v11);
}

void sub_2692B954C(void *a1, char *a2, void (**a3)(void, void))
{
  v6 = sub_2692C77A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v48[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  _Block_copy(a3);
  if (qword_280302B38 != -1)
  {
    swift_once();
  }

  v13 = sub_2692C77C0();
  __swift_project_value_buffer(v13, qword_280303338);
  v14 = sub_2692C77B0();
  v15 = sub_2692C7A00();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v47 = v11;
    v17 = v7;
    v18 = a2;
    v19 = a1;
    v20 = v6;
    v21 = a3;
    v22 = v12;
    v23 = v16;
    *v16 = 0;
    _os_log_impl(&dword_269270000, v14, v15, "calling DeleteAlarmIntentHandler.handle().", v16, 2u);
    v24 = v23;
    v12 = v22;
    a3 = v21;
    v6 = v20;
    a1 = v19;
    a2 = v18;
    v7 = v17;
    v11 = v47;
    MEMORY[0x26D6368E0](v24, -1, -1);
  }

  v25 = [a1 alarms];
  if (v25)
  {
    v26 = v25;
    type metadata accessor for SiriAlarm();
    v27 = sub_2692C7930();

    sub_2692C7A20();
    v28 = *&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24DeleteAlarmIntentHandler_osLogObject];
    sub_2692C7790();
    sub_2692C7780();
    (*(v7 + 8))(v11, v6);
    sub_269275A6C(&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24DeleteAlarmIntentHandler_siriAlarmManager], v48);
    v29 = v49;
    v30 = v50;
    __swift_project_boxed_opaque_existential_1(v48, v49);
    v31 = swift_allocObject();
    v31[2] = a2;
    v31[3] = sub_26928062C;
    v31[4] = v12;
    v31[5] = a1;
    v32 = *(v30 + 8);
    v33 = a2;

    v34 = a1;
    v32(v27, sub_2692B9A98, v31, v29, v30);

    __swift_destroy_boxed_opaque_existential_1Tm(v48);
  }

  else
  {
    v35 = a1;
    v36 = sub_2692C77B0();
    v37 = sub_2692C79F0();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      *(v38 + 4) = v35;
      *v39 = v35;
      v40 = v35;
      _os_log_impl(&dword_269270000, v36, v37, "Can NOT handle delete, intent.alarms = nil, intent: %@", v38, 0xCu);
      sub_2692A14A0(v39);
      MEMORY[0x26D6368E0](v39, -1, -1);
      MEMORY[0x26D6368E0](v38, -1, -1);
    }

    v41 = sub_2692C7760();
    v49 = v41;
    v50 = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
    strcpy(boxed_opaque_existential_1, "Delete Alarm");
    *(boxed_opaque_existential_1 + 13) = 0;
    *(boxed_opaque_existential_1 + 7) = -5120;
    v43 = *MEMORY[0x277D61878];
    v44 = sub_2692C7710();
    (*(*(v44 - 8) + 104))(boxed_opaque_existential_1, v43, v44);
    (*(*(v41 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v41);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    v45 = [objc_allocWithZone(type metadata accessor for DeleteAlarmIntentResponse()) init];
    v46 = OBJC_IVAR___DeleteAlarmIntentResponse_code;
    swift_beginAccess();
    *&v45[v46] = 5;
    [v45 setUserActivity_];
    (a3)[2](a3, v45);
  }
}

uint64_t AlarmInternalIdentifierPrefix.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2692C7C70();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_2692B9B14()
{
  result = qword_280303360;
  if (!qword_280303360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303360);
  }

  return result;
}

uint64_t sub_2692B9B68()
{
  sub_2692C7DE0();
  sub_2692C7890();
  return sub_2692C7E00();
}

uint64_t sub_2692B9BDC()
{
  sub_2692C7DE0();
  sub_2692C7890();
  return sub_2692C7E00();
}

uint64_t sub_2692B9C30@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2692C7C70();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_2692B9D98@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2692C77C0();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_2692B9E5C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2692C77C0();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_2692C7690();
}

uint64_t sub_2692B9EBC()
{
  result = sub_2692C7680();
  qword_280303380 = result;
  return result;
}

id static SiriTimeLog.alarmExtensionOSLogObject.getter()
{
  if (qword_280302B50 != -1)
  {
    swift_once();
  }

  v1 = qword_280303380;

  return v1;
}

BOOL CreateAlarmIntent.eligibleForTimerReformation.getter()
{
  v1 = [v0 relativeOffsetInMinutes];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  [v1 doubleValue];
  v4 = v3;
  v5 = objc_opt_self();
  [v5 minimumDuration];
  if (v6 >= v4 || ([v2 doubleValue], v8 = v7, objc_msgSend(v5, sel_maxReformationDuration), v8 > v9))
  {

    return 0;
  }

  v11 = [v0 repeatSchedule];
  if (v11)
  {
    v12 = v11;
    type metadata accessor for AlarmRepeatSchedule();
    v13 = sub_2692C7930();

    if (!(v13 >> 62))
    {
LABEL_8:
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_9;
    }
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_8;
    }
  }

  v14 = sub_2692C7C60();
LABEL_9:

  return !v14;
}

id CreateAlarmIntent.alarmSearch.getter()
{
  v1 = v0;
  v2 = sub_2692C7310();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AlarmSearch();
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = sub_2692C7820();
  v10 = [v8 initWithIdentifier:0 displayString:v9];

  v11 = [v1 time];
  if (v11)
  {
    v12 = v11;
    sub_2692C7280();

    v13 = sub_2692C7270();
    (*(v3 + 8))(v7, v2);
  }

  else
  {
    v13 = 0;
  }

  [v10 setTime_];

  v14 = [v1 label];
  [v10 setLabel_];

  v15 = [v1 repeatSchedule];
  [v10 setRepeatSchedule_];

  return v10;
}

id sub_2692BA26C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v42 - v10;
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v42 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v42 - v17;
  v19 = [objc_allocWithZone(MEMORY[0x277D296F0]) init];
  v20 = [v1 time];
  if (v20)
  {
    v21 = v20;
    sub_2692C7280();

    v22 = sub_2692C7310();
    (*(*(v22 - 8) + 56))(v15, 0, 1, v22);
  }

  else
  {
    v22 = sub_2692C7310();
    (*(*(v22 - 8) + 56))(v15, 1, 1, v22);
  }

  sub_269280640(v15, v18);
  sub_2692C7310();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  if (v24(v18, 1, v22))
  {
    goto LABEL_5;
  }

  v43 = v1;
  v42 = sub_2692C7290();
  v26 = v25;
  sub_2692B6904(v18);
  if (v26)
  {
    goto LABEL_7;
  }

  v32 = [v43 time];
  if (v32)
  {
    v33 = v32;
    sub_2692C7280();

    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  (*(v23 + 56))(v7, v34, 1, v22);
  sub_269280640(v7, v11);
  if (v24(v11, 1, v22))
  {
    v18 = v11;
LABEL_5:
    sub_2692B6904(v18);
LABEL_7:
    if (qword_280302B58 != -1)
    {
      swift_once();
    }

    v27 = sub_2692C77C0();
    __swift_project_value_buffer(v27, qword_280303388);
    v28 = sub_2692C77B0();
    v29 = sub_2692C79F0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_269270000, v28, v29, "SiriTimeInternalError: No alarm time to create!", v30, 2u);
      MEMORY[0x26D6368E0](v30, -1, -1);
    }

    return 0;
  }

  v35 = sub_2692C72B0();
  v37 = v36;
  sub_2692B6904(v11);
  if (v37)
  {
    goto LABEL_7;
  }

  [v19 setHour_];
  [v19 setMinute_];
  v38 = v43;
  v39 = [v43 label];
  [v19 setTitle_];

  v40 = [v38 repeatSchedule];
  if (v40)
  {
    type metadata accessor for AlarmRepeatSchedule();
    v41 = sub_2692C7930();

    v40 = sub_2692A86A0(v41);
  }

  [v19 setRepeatSchedule_];
  return v19;
}

uint64_t sub_2692BA6D0()
{
  v0 = sub_2692C77C0();
  __swift_allocate_value_buffer(v0, qword_280303388);
  v1 = __swift_project_value_buffer(v0, qword_280303388);
  if (qword_280302B48 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280307B80);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *DismissAlarmHalIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___DismissAlarmHalIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

void sub_2692BA82C(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2692C7830();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_2692BA890(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = *a1;
    v8 = sub_2692C7820();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v6 *a5];
}

id DismissAlarmHalIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DismissAlarmHalIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DismissAlarmHalIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DismissAlarmHalIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id DismissAlarmHalIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2692C7820();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id DismissAlarmHalIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_2692C7820();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for DismissAlarmHalIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_backingStore_, v5, a3);

  return v6;
}

id DismissAlarmHalIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2692C7820();

  v8 = sub_2692C7820();

  if (a5)
  {
    v9 = sub_2692C77D0();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9];

  return v10;
}

id DismissAlarmHalIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2692C7820();

  v8 = sub_2692C7820();

  if (a5)
  {
    v9 = sub_2692C77D0();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for DismissAlarmHalIntent();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_verb_parametersByName_, v7, v8, v9);

  return v10;
}

uint64_t sub_2692BAEC4()
{
  v1 = *v0;
  sub_2692C7DE0();
  MEMORY[0x26D636320](v1);
  return sub_2692C7E00();
}

uint64_t sub_2692BAF0C()
{
  v1 = *v0;
  sub_2692C7DE0();
  MEMORY[0x26D636320](v1);
  return sub_2692C7E00();
}

unint64_t sub_2692BAF50@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2692BB650(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2692BAFCC()
{
  v1 = OBJC_IVAR___DismissAlarmHalIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *DismissAlarmHalIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___DismissAlarmHalIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id DismissAlarmHalIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DismissAlarmHalIntentResponse.init()()
{
  *&v0[OBJC_IVAR___DismissAlarmHalIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DismissAlarmHalIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DismissAlarmHalIntentResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DismissAlarmHalIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___DismissAlarmHalIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DismissAlarmHalIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id DismissAlarmHalIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id DismissAlarmHalIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___DismissAlarmHalIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DismissAlarmHalIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2692BB3F4(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___DismissAlarmHalIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for DismissAlarmHalIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id DismissAlarmHalIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_2692C77D0();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id DismissAlarmHalIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___DismissAlarmHalIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_2692C77D0();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for DismissAlarmHalIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

id sub_2692BB618(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2692BB650(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2692BB688()
{
  result = qword_2803033A8;
  if (!qword_2803033A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803033A8);
  }

  return result;
}

char *SnoozeAlarmHalIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___SnoozeAlarmHalIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SnoozeAlarmHalIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SnoozeAlarmHalIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SnoozeAlarmHalIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SnoozeAlarmHalIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id SnoozeAlarmHalIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2692C7820();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id SnoozeAlarmHalIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_2692C7820();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for SnoozeAlarmHalIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_backingStore_, v5, a3);

  return v6;
}

id SnoozeAlarmHalIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2692C7820();

  v8 = sub_2692C7820();

  if (a5)
  {
    v9 = sub_2692C77D0();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9];

  return v10;
}

id SnoozeAlarmHalIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2692C7820();

  v8 = sub_2692C7820();

  if (a5)
  {
    v9 = sub_2692C77D0();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for SnoozeAlarmHalIntent();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_verb_parametersByName_, v7, v8, v9);

  return v10;
}

unint64_t sub_2692BBDC8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2692BC4C8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2692BBE44()
{
  v1 = OBJC_IVAR___SnoozeAlarmHalIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *SnoozeAlarmHalIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___SnoozeAlarmHalIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SnoozeAlarmHalIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SnoozeAlarmHalIntentResponse.init()()
{
  *&v0[OBJC_IVAR___SnoozeAlarmHalIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SnoozeAlarmHalIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SnoozeAlarmHalIntentResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SnoozeAlarmHalIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___SnoozeAlarmHalIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SnoozeAlarmHalIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id SnoozeAlarmHalIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id SnoozeAlarmHalIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___SnoozeAlarmHalIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SnoozeAlarmHalIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2692BC26C(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___SnoozeAlarmHalIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for SnoozeAlarmHalIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id SnoozeAlarmHalIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_2692C77D0();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id SnoozeAlarmHalIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___SnoozeAlarmHalIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_2692C77D0();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for SnoozeAlarmHalIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

id sub_2692BC490(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2692BC4C8(unint64_t result)
{
  if (result == 100)
  {
    v1 = 100;
  }

  else
  {
    v1 = 0;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_2692BC510()
{
  result = qword_2803033B8;
  if (!qword_2803033B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803033B8);
  }

  return result;
}

char *CreateAlarmIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___CreateAlarmIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

uint64_t sub_2692BC65C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 time];
  if (v3)
  {
    v4 = v3;
    sub_2692C7280();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_2692C7310();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_2692BC700(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v13 - v7;
  sub_2692BD7A8(a1, &v13 - v7);
  v9 = *a2;
  v10 = sub_2692C7310();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    v12 = sub_2692C7270();
    (*(v11 + 8))(v8, v10);
  }

  [v9 setTime_];
}

void sub_2692BC82C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 label];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2692C7830();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_2692BC894(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_2692C7820();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setLabel_];
}

void sub_2692BC904(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 repeatSchedule];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for AlarmRepeatSchedule();
    v5 = sub_2692C7930();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_2692BC974(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    type metadata accessor for AlarmRepeatSchedule();
    v3 = sub_2692C7910();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setRepeatSchedule_];
}

id CreateAlarmIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CreateAlarmIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CreateAlarmIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CreateAlarmIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id CreateAlarmIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2692C7820();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id CreateAlarmIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_2692C7820();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for CreateAlarmIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_backingStore_, v5, a3);

  return v6;
}

id CreateAlarmIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2692C7820();

  v8 = sub_2692C7820();

  if (a5)
  {
    v9 = sub_2692C77D0();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9];

  return v10;
}

id CreateAlarmIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2692C7820();

  v8 = sub_2692C7820();

  if (a5)
  {
    v9 = sub_2692C77D0();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for CreateAlarmIntent();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_verb_parametersByName_, v7, v8, v9);

  return v10;
}

uint64_t sub_2692BCFF8()
{
  v1 = OBJC_IVAR___CreateAlarmIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *CreateAlarmIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___CreateAlarmIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id CreateAlarmIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CreateAlarmIntentResponse.init()()
{
  *&v0[OBJC_IVAR___CreateAlarmIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CreateAlarmIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CreateAlarmIntentResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CreateAlarmIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___CreateAlarmIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CreateAlarmIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id CreateAlarmIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id CreateAlarmIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___CreateAlarmIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CreateAlarmIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2692BD420(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___CreateAlarmIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for CreateAlarmIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id CreateAlarmIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_2692C77D0();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id CreateAlarmIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___CreateAlarmIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_2692C77D0();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for CreateAlarmIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

id sub_2692BD644(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2692BD6A4()
{
  result = qword_2803033C8;
  if (!qword_2803033C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803033C8);
  }

  return result;
}

uint64_t sub_2692BD7A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *ChangeAlarmStatusIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id ChangeAlarmStatusIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ChangeAlarmStatusIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChangeAlarmStatusIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ChangeAlarmStatusIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ChangeAlarmStatusIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ChangeAlarmStatusIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id ChangeAlarmStatusIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2692C7820();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id ChangeAlarmStatusIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_2692C7820();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for ChangeAlarmStatusIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_backingStore_, v5, a3);

  return v6;
}

id ChangeAlarmStatusIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2692C7820();

  v8 = sub_2692C7820();

  if (a5)
  {
    v9 = sub_2692C77D0();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9];

  return v10;
}

id ChangeAlarmStatusIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2692C7820();

  v8 = sub_2692C7820();

  if (a5)
  {
    v9 = sub_2692C77D0();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for ChangeAlarmStatusIntent();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_verb_parametersByName_, v7, v8, v9);

  return v10;
}

void sub_2692BDEF4(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for SiriAlarm();
    v6 = sub_2692C7930();
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
}

void sub_2692BDF60(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (*a1)
  {
    type metadata accessor for SiriAlarm();
    v7 = sub_2692C7910();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

uint64_t sub_2692BE028()
{
  v1 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *ChangeAlarmStatusIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id ChangeAlarmStatusIntentResponse.init()()
{
  *&v0[OBJC_IVAR___ChangeAlarmStatusIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChangeAlarmStatusIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ChangeAlarmStatusIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___ChangeAlarmStatusIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ChangeAlarmStatusIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id ChangeAlarmStatusIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id ChangeAlarmStatusIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___ChangeAlarmStatusIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ChangeAlarmStatusIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2692BE3D8(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___ChangeAlarmStatusIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for ChangeAlarmStatusIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id ChangeAlarmStatusIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_2692C77D0();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id ChangeAlarmStatusIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___ChangeAlarmStatusIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_2692C77D0();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for ChangeAlarmStatusIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_2692BE618@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2692BE95C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_2692BE64C(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() unsupportedWithReason_];

  return v1;
}

id ChangeAlarmStatusAlarmsResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2692C77D0();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id ChangeAlarmStatusAlarmsResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2692C77D0();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for ChangeAlarmStatusAlarmsResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_2692BE900(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2692BE95C(uint64_t result)
{
  if ((result - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2692BE998()
{
  result = qword_2803033D8;
  if (!qword_2803033D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803033D8);
  }

  return result;
}

unint64_t sub_2692BE9F0()
{
  result = qword_2803033E0;
  if (!qword_2803033E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803033E0);
  }

  return result;
}

char *UpdateAlarmIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___UpdateAlarmIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

uint64_t sub_2692BEBC8@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 proposedTime];
  if (v3)
  {
    v4 = v3;
    sub_2692C7280();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_2692C7310();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_2692BEC6C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v13 - v7;
  sub_2692BD7A8(a1, &v13 - v7);
  v9 = *a2;
  v10 = sub_2692C7310();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    v12 = sub_2692C7270();
    (*(v11 + 8))(v8, v10);
  }

  [v9 setProposedTime_];
}

void sub_2692BED98(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 proposedLabel];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2692C7830();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_2692BEE00(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_2692C7820();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setProposedLabel_];
}

void sub_2692BEE70(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 proposedRecurrence];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for AlarmRepeatSchedule();
    v5 = sub_2692C7930();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_2692BEEE0(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    type metadata accessor for AlarmRepeatSchedule();
    v3 = sub_2692C7910();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setProposedRecurrence_];
}

id UpdateAlarmIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpdateAlarmIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id UpdateAlarmIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for UpdateAlarmIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id UpdateAlarmIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2692C7820();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id UpdateAlarmIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_2692C7820();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for UpdateAlarmIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_backingStore_, v5, a3);

  return v6;
}

id UpdateAlarmIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2692C7820();

  v8 = sub_2692C7820();

  if (a5)
  {
    v9 = sub_2692C77D0();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9];

  return v10;
}

id UpdateAlarmIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2692C7820();

  v8 = sub_2692C7820();

  if (a5)
  {
    v9 = sub_2692C77D0();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for UpdateAlarmIntent();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_verb_parametersByName_, v7, v8, v9);

  return v10;
}

uint64_t sub_2692BF564()
{
  v1 = OBJC_IVAR___UpdateAlarmIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *UpdateAlarmIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___UpdateAlarmIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id UpdateAlarmIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UpdateAlarmIntentResponse.init()()
{
  *&v0[OBJC_IVAR___UpdateAlarmIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpdateAlarmIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id UpdateAlarmIntentResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id UpdateAlarmIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___UpdateAlarmIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for UpdateAlarmIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id UpdateAlarmIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id UpdateAlarmIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___UpdateAlarmIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for UpdateAlarmIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2692BF98C(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___UpdateAlarmIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for UpdateAlarmIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id UpdateAlarmIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_2692C77D0();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id UpdateAlarmIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___UpdateAlarmIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_2692C77D0();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for UpdateAlarmIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t UpdateAlarmAlarmUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 4) < 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_2692BFBC4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result - 4;
  v4 = __CFADD__(v3, 3);
  v5 = v3 < 0xFFFFFFFFFFFFFFFDLL;
  if (!v4)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v5;
  return result;
}

id UpdateAlarmAlarmResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2692C77D0();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id UpdateAlarmAlarmResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2692C77D0();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for UpdateAlarmAlarmResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_2692BFE4C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2692BFED0()
{
  result = qword_2803033F0;
  if (!qword_2803033F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803033F0);
  }

  return result;
}

unint64_t sub_2692BFF28()
{
  result = qword_2803033F8;
  if (!qword_2803033F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803033F8);
  }

  return result;
}

char *DeleteAlarmIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___DeleteAlarmIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

void sub_2692C00FC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 alarms];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for SiriAlarm();
    v5 = sub_2692C7930();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_2692C016C(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    type metadata accessor for SiriAlarm();
    v3 = sub_2692C7910();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setAlarms_];
}

id DeleteAlarmIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeleteAlarmIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DeleteAlarmIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DeleteAlarmIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id DeleteAlarmIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2692C7820();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id DeleteAlarmIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_2692C7820();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for DeleteAlarmIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_backingStore_, v5, a3);

  return v6;
}

id DeleteAlarmIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2692C7820();

  v8 = sub_2692C7820();

  if (a5)
  {
    v9 = sub_2692C77D0();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9];

  return v10;
}

id DeleteAlarmIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2692C7820();

  v8 = sub_2692C7820();

  if (a5)
  {
    v9 = sub_2692C77D0();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for DeleteAlarmIntent();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_verb_parametersByName_, v7, v8, v9);

  return v10;
}

uint64_t sub_2692C07F0()
{
  v1 = OBJC_IVAR___DeleteAlarmIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *DeleteAlarmIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___DeleteAlarmIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id DeleteAlarmIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeleteAlarmIntentResponse.init()()
{
  *&v0[OBJC_IVAR___DeleteAlarmIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeleteAlarmIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DeleteAlarmIntentResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DeleteAlarmIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___DeleteAlarmIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DeleteAlarmIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id DeleteAlarmIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id DeleteAlarmIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___DeleteAlarmIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DeleteAlarmIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2692C0C18(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___DeleteAlarmIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for DeleteAlarmIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id DeleteAlarmIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_2692C77D0();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id DeleteAlarmIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___DeleteAlarmIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_2692C77D0();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for DeleteAlarmIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t DeleteAlarmAlarmsUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_2692C0E50@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result - 3;
  v4 = __CFADD__(v3, 2);
  v5 = v3 < 0xFFFFFFFFFFFFFFFELL;
  if (!v4)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v5;
  return result;
}

id DeleteAlarmAlarmsResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2692C77D0();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id DeleteAlarmAlarmsResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2692C77D0();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for DeleteAlarmAlarmsResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_2692C10D8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2692C115C()
{
  result = qword_280303408;
  if (!qword_280303408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303408);
  }

  return result;
}

unint64_t sub_2692C11B4()
{
  result = qword_280303410;
  if (!qword_280303410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303410);
  }

  return result;
}

char *SearchAlarmIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___SearchAlarmIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SearchAlarmIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchAlarmIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SearchAlarmIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SearchAlarmIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id SearchAlarmIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2692C7820();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id SearchAlarmIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_2692C7820();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for SearchAlarmIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_backingStore_, v5, a3);

  return v6;
}

id SearchAlarmIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2692C7820();

  v8 = sub_2692C7820();

  if (a5)
  {
    v9 = sub_2692C77D0();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9];

  return v10;
}

id SearchAlarmIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2692C7820();

  v8 = sub_2692C7820();

  if (a5)
  {
    v9 = sub_2692C77D0();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for SearchAlarmIntent();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_verb_parametersByName_, v7, v8, v9);

  return v10;
}

uint64_t sub_2692C194C()
{
  v1 = OBJC_IVAR___SearchAlarmIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *SearchAlarmIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___SearchAlarmIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SearchAlarmIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SearchAlarmIntentResponse.init()()
{
  *&v0[OBJC_IVAR___SearchAlarmIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchAlarmIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SearchAlarmIntentResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SearchAlarmIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___SearchAlarmIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SearchAlarmIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id SearchAlarmIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id SearchAlarmIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___SearchAlarmIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SearchAlarmIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2692C1D74(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___SearchAlarmIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for SearchAlarmIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id SearchAlarmIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_2692C77D0();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id SearchAlarmIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___SearchAlarmIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_2692C77D0();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for SearchAlarmIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t SearchAlarmAlarmsUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return result;
}

id SearchAlarmAlarmsResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2692C77D0();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id SearchAlarmAlarmsResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2692C77D0();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for SearchAlarmAlarmsResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_2692C2214(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2692C2298()
{
  result = qword_280303420;
  if (!qword_280303420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303420);
  }

  return result;
}

unint64_t sub_2692C22F0()
{
  result = qword_280303428;
  if (!qword_280303428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303428);
  }

  return result;
}

unint64_t sub_2692C2410@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2692C27A0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_2692C2444(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() successWithResolvedValue_];

  return v1;
}

id sub_2692C24D0(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm_];

  return v1;
}

id AlarmPeriodResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2692C77D0();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id AlarmPeriodResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2692C77D0();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for AlarmPeriodResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id AlarmPeriodResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlarmPeriodResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2692C27A0(unint64_t result)
{
  if (result > 8)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2692C27D8()
{
  result = qword_280303430;
  if (!qword_280303430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303430);
  }

  return result;
}

unint64_t ChangeAlarmStatusOperation.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_2692C2890@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id ChangeAlarmStatusOperationResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2692C77D0();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id ChangeAlarmStatusOperationResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2692C77D0();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for ChangeAlarmStatusOperationResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id ChangeAlarmStatusOperationResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChangeAlarmStatusOperationResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2692C2B98()
{
  result = qword_280303438;
  if (!qword_280303438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303438);
  }

  return result;
}

unint64_t UpdateAlarmOperation.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

id UpdateAlarmOperationResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2692C77D0();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id UpdateAlarmOperationResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2692C77D0();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for UpdateAlarmOperationResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id UpdateAlarmOperationResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpdateAlarmOperationResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2692C2F3C()
{
  result = qword_280303440;
  if (!qword_280303440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303440);
  }

  return result;
}

id AlarmSearchTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2692C77D0();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id AlarmSearchTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2692C77D0();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for AlarmSearchTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id AlarmSearchTypeResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlarmSearchTypeResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2692C32EC()
{
  result = qword_280303448;
  if (!qword_280303448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303448);
  }

  return result;
}

id RepeatScheduleResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2692C77D0();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id RepeatScheduleResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2692C77D0();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for RepeatScheduleResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id RepeatScheduleResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RepeatScheduleResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2692C369C()
{
  result = qword_280303450;
  if (!qword_280303450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303450);
  }

  return result;
}

unint64_t sub_2692C3760@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2692C3A58(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id AlarmReferenceTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2692C77D0();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id AlarmReferenceTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2692C77D0();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for AlarmReferenceTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id AlarmReferenceTypeResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlarmReferenceTypeResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2692C3A58(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2692C3A90()
{
  result = qword_280303458;
  if (!qword_280303458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303458);
  }

  return result;
}

unint64_t sub_2692C3B54@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2692C3E4C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id AlarmSearchStatusResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2692C77D0();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id AlarmSearchStatusResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2692C77D0();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for AlarmSearchStatusResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id AlarmSearchStatusResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlarmSearchStatusResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2692C3E4C(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2692C3E84()
{
  result = qword_280303460;
  if (!qword_280303460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303460);
  }

  return result;
}

id CreateAlarmSuccessCodeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2692C77D0();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id CreateAlarmSuccessCodeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2692C77D0();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for CreateAlarmSuccessCodeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id CreateAlarmSuccessCodeResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CreateAlarmSuccessCodeResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2692C4234()
{
  result = qword_280303468;
  if (!qword_280303468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303468);
  }

  return result;
}

id sub_2692C42D8(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___SiriAlarmResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_2692C433C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2692C4434();

    sub_2692C7C50();
  }

  else
  {

    sub_2692C7D70();
    sub_2692C4434();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_2692C4434();
  v2 = sub_2692C7910();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___SiriAlarmResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

unint64_t sub_2692C4434()
{
  result = qword_280303470;
  if (!qword_280303470)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280303470);
  }

  return result;
}

id sub_2692C4480(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___SiriAlarmResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

uint64_t sub_2692C44E4@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 dateTime];
  if (v3)
  {
    v4 = v3;
    sub_2692C7280();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_2692C7310();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_2692C4588(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v13 - v7;
  sub_2692BD7A8(a1, &v13 - v7);
  v9 = *a2;
  v10 = sub_2692C7310();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    v12 = sub_2692C7270();
    (*(v11 + 8))(v8, v10);
  }

  [v9 setDateTime_];
}

id SiriAlarm.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_2692C7820();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2692C7820();

  if (a6)
  {
    v10 = sub_2692C7820();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id SiriAlarm.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_2692C7820();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2692C7820();

  if (a6)
  {
    v10 = sub_2692C7820();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for SiriAlarm();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id SiriAlarm.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SiriAlarm.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SiriAlarm();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id SiriAlarmResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2692C77D0();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id SiriAlarmResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2692C77D0();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for SiriAlarmResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_2692C4EB4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2692C4F7C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 bedtime];
  if (v3)
  {
    v4 = v3;
    sub_2692C7280();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_2692C7310();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_2692C5020(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v13 - v7;
  sub_2692BD7A8(a1, &v13 - v7);
  v9 = *a2;
  v10 = sub_2692C7310();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    v12 = sub_2692C7270();
    (*(v11 + 8))(v8, v10);
  }

  [v9 setBedtime_];
}

id SleepAlarmAttribute.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_2692C7820();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2692C7820();

  if (a6)
  {
    v10 = sub_2692C7820();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id SleepAlarmAttribute.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_2692C7820();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2692C7820();

  if (a6)
  {
    v10 = sub_2692C7820();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for SleepAlarmAttribute();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id SleepAlarmAttribute.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SleepAlarmAttribute.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SleepAlarmAttribute();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2692C5504(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___SleepAlarmAttributeResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_2692C55B8(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2692C4434();

    sub_2692C7C50();
  }

  else
  {

    sub_2692C7D70();
    sub_2692C4434();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_2692C4434();
  v2 = sub_2692C7910();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___SleepAlarmAttributeResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_2692C571C(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___SleepAlarmAttributeResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id SleepAlarmAttributeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2692C77D0();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id SleepAlarmAttributeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2692C77D0();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for SleepAlarmAttributeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_2692C5B0C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id AlarmSearch.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_2692C7820();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2692C7820();

  if (a6)
  {
    v10 = sub_2692C7820();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

void sub_2692C5C84(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v13 - v7;
  sub_2692BD7A8(a1, &v13 - v7);
  v9 = *a2;
  v10 = sub_2692C7310();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    v12 = sub_2692C7270();
    (*(v11 + 8))(v8, v10);
  }

  [v9 setTime_];
}

id AlarmSearch.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_2692C7820();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2692C7820();

  if (a6)
  {
    v10 = sub_2692C7820();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for AlarmSearch();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id AlarmSearch.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id AlarmSearch.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AlarmSearch();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2692C6094(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___AlarmSearchResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_2692C6148(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2692C4434();

    sub_2692C7C50();
  }

  else
  {

    sub_2692C7D70();
    sub_2692C4434();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_2692C4434();
  v2 = sub_2692C7910();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___AlarmSearchResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_2692C62AC(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___AlarmSearchResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id AlarmSearchResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2692C77D0();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id AlarmSearchResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2692C77D0();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for AlarmSearchResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_2692C669C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id AlarmRepeatSchedule.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_2692C7820();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2692C7820();

  if (a6)
  {
    v10 = sub_2692C7820();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id AlarmRepeatSchedule.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_2692C7820();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2692C7820();

  if (a6)
  {
    v10 = sub_2692C7820();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for AlarmRepeatSchedule();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id AlarmRepeatSchedule.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id AlarmRepeatSchedule.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AlarmRepeatSchedule();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2692C6B1C(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___AlarmRepeatScheduleResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_2692C6BD0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2692C4434();

    sub_2692C7C50();
  }

  else
  {

    sub_2692C7D70();
    sub_2692C4434();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_2692C4434();
  v2 = sub_2692C7910();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___AlarmRepeatScheduleResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_2692C6D34(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___AlarmRepeatScheduleResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id AlarmRepeatScheduleResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_2692C77D0();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id AlarmRepeatScheduleResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_2692C77D0();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for AlarmRepeatScheduleResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_2692C7124(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}