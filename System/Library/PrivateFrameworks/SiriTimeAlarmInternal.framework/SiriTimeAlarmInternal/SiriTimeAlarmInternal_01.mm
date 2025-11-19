void sub_269289244(char *a1, void (*a2)(char *))
{
  v4 = [a1 createdAlarm];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  v6 = OBJC_IVAR___CreateAlarmIntentResponse_code;
  swift_beginAccess();
  if (*&a1[v6] != 4)
  {

LABEL_5:
    v7 = [objc_allocWithZone(type metadata accessor for ChangeAlarmStatusIntentResponse()) init];
    v12 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
    swift_beginAccess();
    *&v7[v12] = 5;
    [v7 setUserActivity_];
    a2(v7);
    goto LABEL_6;
  }

  v7 = [objc_allocWithZone(type metadata accessor for ChangeAlarmStatusIntentResponse()) init];
  v8 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
  swift_beginAccess();
  *&v7[v8] = 4;
  [v7 setUserActivity_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2692C9430;
  *(v9 + 32) = v5;
  type metadata accessor for SiriAlarm();
  v10 = v5;
  v11 = sub_2692C7910();

  [v7 setModifiedAlarms_];

  a2(v7);
LABEL_6:
}

void sub_26928941C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(char *))
{
  v8 = sub_2692C77A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v43[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *a1;
  v15 = *(a1 + 8);
  sub_2692C7A10();
  v16 = *(a2 + OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_osLogObject);
  sub_2692C7790();
  sub_2692C7780();
  (*(v9 + 8))(v13, v8);
  if (v15)
  {
    if (qword_280302AD8 != -1)
    {
      swift_once();
    }

    v17 = sub_2692C77C0();
    __swift_project_value_buffer(v17, qword_280302D28);
    v18 = sub_2692C77B0();
    v19 = sub_2692C79F0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v44[0] = v21;
      *v20 = 136315138;
      v43[7] = v14;
      v22 = sub_2692C7840();
      v24 = sub_26927C4DC(v22, v23, v44);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_269270000, v18, v19, "Failed to dismiss alarms, error: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x26D6368E0](v21, -1, -1);
      MEMORY[0x26D6368E0](v20, -1, -1);
    }

    v25 = sub_2692C7760();
    v44[3] = v25;
    v44[4] = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
    sub_269280704();
    v27 = swift_allocError();
    *v28 = v14;
    *boxed_opaque_existential_1 = sub_2692C7320();
    v29 = *MEMORY[0x277D61838];
    v30 = sub_2692C76A0();
    (*(*(v30 - 8) + 104))(boxed_opaque_existential_1, v29, v30);
    (*(*(v25 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618F0], v25);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v44);

    v31 = [objc_allocWithZone(type metadata accessor for ChangeAlarmStatusIntentResponse()) init];
    v32 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
    swift_beginAccess();
    *&v31[v32] = 5;
    [v31 setUserActivity_];
    a4(v31);
  }

  else
  {
    if (qword_280302AD8 != -1)
    {
      swift_once();
    }

    v33 = sub_2692C77C0();
    __swift_project_value_buffer(v33, qword_280302D28);

    v34 = sub_2692C77B0();
    v35 = sub_2692C7A00();
    sub_2692743E4(v14, 0);
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v44[0] = v37;
      *v36 = 136315138;
      v38 = type metadata accessor for SiriAlarm();
      v39 = MEMORY[0x26D635E70](v14, v38);
      v41 = sub_26927C4DC(v39, v40, v44);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_269270000, v34, v35, "Successfully dismiss alarms: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x26D6368E0](v37, -1, -1);
      MEMORY[0x26D6368E0](v36, -1, -1);
    }

    type metadata accessor for SiriAlarm();
    v42 = sub_2692C7910();
    [a3 setModifiedAlarms_];

    a4(a3);
  }
}

void sub_269289928(uint64_t a1, char *a2, uint64_t a3, void *a4, void (*a5)(char *), uint64_t a6, void *a7)
{
  v45 = a7;
  v46 = a4;
  v47 = a5;
  v48 = a6;
  v10 = sub_2692C77A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = *(a1 + 8);
  sub_2692C7A10();
  v18 = *&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_osLogObject];
  sub_2692C7790();
  sub_2692C7780();
  v19 = *(v11 + 8);
  v19(v15, v10);
  if (v17)
  {
    v20 = sub_2692C7760();
    v50 = v20;
    v51 = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
    sub_269280704();
    v22 = swift_allocError();
    *v23 = v16;
    *boxed_opaque_existential_1 = sub_2692C7320();
    v24 = *MEMORY[0x277D61838];
    v25 = sub_2692C76A0();
    (*(*(v25 - 8) + 104))(boxed_opaque_existential_1, v24, v25);
    (*(*(v20 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618F0], v20);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v49);

    v26 = [objc_allocWithZone(type metadata accessor for ChangeAlarmStatusIntentResponse()) init];
    v27 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
    swift_beginAccess();
    *&v26[v27] = 5;
    [v26 setUserActivity_];
    v47(v26);
  }

  else
  {
    v28 = v16;
    sub_269289E00(v16, (a3 + 16), sub_26928E8BC);
    if (v46)
    {
      v29 = v46;
      sub_2692C7A20();
      sub_2692C7790();
      sub_2692C7780();
      v19(v15, v10);
      sub_269275A6C(&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager], v49);
      v30 = v50;
      v31 = v51;
      __swift_project_boxed_opaque_existential_1(v49, v50);
      v32 = swift_allocObject();
      v32[2] = a2;
      v32[3] = v29;
      v33 = v47;
      v32[4] = v28;
      v32[5] = v33;
      v32[6] = v48;
      v34 = *(v31 + 80);
      v35 = v29;
      v36 = a2;
      sub_26928E7E4(v28, 0);

      v34(sub_26928E8B4, v32, v30, v31);

      __swift_destroy_boxed_opaque_existential_1Tm(v49);
    }

    else
    {
      type metadata accessor for SiriAlarm();
      v37 = sub_2692C7910();
      v38 = v45;
      [v45 setModifiedAlarms_];

      if (qword_280302AD8 != -1)
      {
        swift_once();
      }

      v39 = sub_2692C77C0();
      __swift_project_value_buffer(v39, qword_280302D28);
      v40 = sub_2692C77B0();
      v41 = sub_2692C7A00();
      v42 = os_log_type_enabled(v40, v41);
      v43 = v47;
      if (v42)
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_269270000, v40, v41, "Handle Enabled only normal alarms.", v44, 2u);
        MEMORY[0x26D6368E0](v44, -1, -1);
      }

      v43(v38);
    }
  }
}

void sub_269289E00(unint64_t a1, uint64_t *a2, uint64_t (*a3)(void *))
{
  v20 = a3;
  v21 = a2;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2692C7C60())
  {
    swift_beginAccess();
    if (!i)
    {
      break;
    }

    v5 = 0;
    v22 = a1 & 0xFFFFFFFFFFFFFF8;
    v23 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v23)
      {
        v6 = MEMORY[0x26D6360D0](v5, a1);
      }

      else
      {
        if (v5 >= *(v22 + 16))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v6 identifier];
      if (v9)
      {
        v10 = v9;
        v11 = sub_2692C7830();
        v13 = v12;

        v14 = *v21;
        v24[0] = v11;
        v24[1] = v13;
        MEMORY[0x28223BE20](v15, v16);
        v19[2] = v24;

        v17 = v25;
        LOBYTE(v11) = sub_26928515C(v20, v19, v14);
        v25 = v17;

        if (v11)
        {
          v18 = sub_2692C7980();
          [v7 setUndoable_];

          v7 = v18;
        }
      }

      ++v5;
      if (v8 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

void sub_269289FD0(uint64_t a1, char *a2, uint64_t a3, void *a4, void (*a5)(char *), uint64_t a6, void *a7)
{
  v45 = a7;
  v46 = a4;
  v47 = a5;
  v48 = a6;
  v10 = sub_2692C77A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = *(a1 + 8);
  sub_2692C7A10();
  v18 = *&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_osLogObject];
  sub_2692C7790();
  sub_2692C7780();
  v19 = *(v11 + 8);
  v19(v15, v10);
  if (v17)
  {
    v20 = sub_2692C7760();
    v50 = v20;
    v51 = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
    sub_269280704();
    v22 = swift_allocError();
    *v23 = v16;
    *boxed_opaque_existential_1 = sub_2692C7320();
    v24 = *MEMORY[0x277D61838];
    v25 = sub_2692C76A0();
    (*(*(v25 - 8) + 104))(boxed_opaque_existential_1, v24, v25);
    (*(*(v20 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618F0], v20);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v49);

    v26 = [objc_allocWithZone(type metadata accessor for ChangeAlarmStatusIntentResponse()) init];
    v27 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
    swift_beginAccess();
    *&v26[v27] = 5;
    [v26 setUserActivity_];
    v47(v26);
  }

  else
  {
    v28 = v16;
    sub_269289E00(v16, (a3 + 16), sub_26928E8BC);
    if (v46)
    {
      v29 = v46;
      sub_2692C7A20();
      sub_2692C7790();
      sub_2692C7780();
      v19(v15, v10);
      sub_269275A6C(&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager], v49);
      v30 = v50;
      v31 = v51;
      __swift_project_boxed_opaque_existential_1(v49, v50);
      v32 = swift_allocObject();
      v32[2] = a2;
      v32[3] = v29;
      v33 = v47;
      v32[4] = v28;
      v32[5] = v33;
      v32[6] = v48;
      v34 = *(v31 + 88);
      v35 = v29;
      v36 = a2;
      sub_26928E7E4(v28, 0);

      v34(sub_26928E8B8, v32, v30, v31);

      __swift_destroy_boxed_opaque_existential_1Tm(v49);
    }

    else
    {
      type metadata accessor for SiriAlarm();
      v37 = sub_2692C7910();
      v38 = v45;
      [v45 setModifiedAlarms_];

      if (qword_280302AD8 != -1)
      {
        swift_once();
      }

      v39 = sub_2692C77C0();
      __swift_project_value_buffer(v39, qword_280302D28);
      v40 = sub_2692C77B0();
      v41 = sub_2692C7A00();
      v42 = os_log_type_enabled(v40, v41);
      v43 = v47;
      if (v42)
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_269270000, v40, v41, "ChangeAlarmStatusIntent.disable handled alarms.", v44, 2u);
        MEMORY[0x26D6368E0](v44, -1, -1);
      }

      v43(v38);
    }
  }
}

void sub_26928A4C0(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

id ChangeAlarmStatusIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChangeAlarmStatusIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_26928A5E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302D58, &qword_2692C97C0);
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

void (*sub_26928A6EC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26D6360D0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_26928A76C;
  }

  __break(1u);
  return result;
}

void (*sub_26928A774(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26D6360D0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_26928E8A0;
  }

  __break(1u);
  return result;
}

id sub_26928A7F4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a3;
  v14[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v8 = OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_osLogObject;
  if (qword_280302B50 != -1)
  {
    swift_once();
  }

  v9 = qword_280303380;
  *&a2[v8] = qword_280303380;
  sub_269275A6C(v14, &a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager]);
  v13.receiver = a2;
  v13.super_class = type metadata accessor for ChangeAlarmStatusIntentHandler();
  v10 = v9;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return v11;
}

id sub_26928A8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(type metadata accessor for ChangeAlarmStatusIntentHandler());
  (*(v7 + 16))(v10, a1, a3);
  return sub_26928A7F4(v10, v11, a3, a4);
}

void sub_26928AA1C(uint64_t *a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = sub_2692C77A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = swift_allocObject();
  *(v64 + 16) = a3;
  _Block_copy(a3);
  v12 = &off_279C54000;
  v13 = [a1 operation];
  v14 = [a1 alarms];
  if (!v14)
  {
LABEL_24:
    if (v13 == 2)
    {
      sub_269275A6C(a2 + OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager, v66);
      v26 = v67;
      v27 = v68;
      __swift_project_boxed_opaque_existential_1(v66, v67);
      v28 = swift_allocObject();
      v29 = v64;
      v28[2] = sub_26928E73C;
      v28[3] = v29;
      v28[4] = a1;
      v28[5] = 2;
      v30 = *(v27 + 56);

      v31 = a1;
      v30(0, sub_26928E89C, v28, v26, v27);

      __swift_destroy_boxed_opaque_existential_1Tm(v66);
LABEL_31:

      return;
    }

    v32 = [a1 alarmSearch];
    if (!v32)
    {
      if (qword_280302AD8 != -1)
      {
        swift_once();
      }

      v52 = sub_2692C77C0();
      __swift_project_value_buffer(v52, qword_280302D28);
      v53 = a1;
      v54 = sub_2692C77B0();
      v55 = sub_2692C79F0();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *v56 = 138412290;
        *(v56 + 4) = v53;
        *v57 = v53;
        v58 = v53;
        _os_log_impl(&dword_269270000, v54, v55, "No alarmSearch found for intent: %@", v56, 0xCu);
        sub_26927CEA8(v57, &qword_280302D50, &qword_2692CAB70);
        MEMORY[0x26D6368E0](v57, -1, -1);
        MEMORY[0x26D6368E0](v56, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_2692C9430;
      type metadata accessor for ChangeAlarmStatusAlarmsResolutionResult();
      *(v59 + 32) = sub_2692BE64C(1);
      v63 = sub_2692C7910();
      a3[2](a3, v63);

      goto LABEL_37;
    }

    v16 = v32;
    if (qword_280302AD8 == -1)
    {
LABEL_28:
      v33 = sub_2692C77C0();
      __swift_project_value_buffer(v33, qword_280302D28);
      v34 = a1;
      v35 = sub_2692C77B0();
      v36 = sub_2692C7A00();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v63 = v16;
        v66[0] = v62;
        *v37 = 136315138;
        v65 = [v34 v12[233]];
        v38 = sub_2692C7840();
        HIDWORD(v61) = v36;
        v40 = a2;
        v41 = v12;
        v42 = sub_26927C4DC(v38, v39, v66);

        *(v37 + 4) = v42;
        v12 = v41;
        a2 = v40;
        _os_log_impl(&dword_269270000, v35, BYTE4(v61), "This is not dismiss request, try to do %s", v37, 0xCu);
        v43 = v62;
        __swift_destroy_boxed_opaque_existential_1Tm(v62);
        v16 = v63;
        MEMORY[0x26D6368E0](v43, -1, -1);
        MEMORY[0x26D6368E0](v37, -1, -1);
      }

      v44 = [v34 v12[233]];
      sub_2692C7A20();
      v45 = *(a2 + OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_osLogObject);
      sub_2692C7790();
      sub_2692C7780();
      (*(v7 + 8))(v11, v6);
      sub_269275A6C(a2 + OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager, v66);
      v46 = v67;
      v47 = v68;
      __swift_project_boxed_opaque_existential_1(v66, v67);
      v48 = swift_allocObject();
      v48[2] = a2;
      v48[3] = v16;
      v48[4] = v44;
      v48[5] = sub_26928E73C;
      v48[6] = v64;
      v49 = *(v47 + 56);

      v50 = a2;
      v51 = v16;
      v49(v16, sub_26928E8B0, v48, v46, v47);

      __swift_destroy_boxed_opaque_existential_1Tm(v66);
      goto LABEL_31;
    }

LABEL_41:
    swift_once();
    goto LABEL_28;
  }

  v15 = v14;
  v16 = v7;
  type metadata accessor for SiriAlarm();
  v7 = sub_2692C7930();

  v12 = (v7 >> 62);
  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_23;
  }

  if (!sub_2692C7C60())
  {
LABEL_23:

    v7 = v16;
    v12 = &off_279C54000;
    goto LABEL_24;
  }

LABEL_4:
  if (qword_280302AD8 != -1)
  {
    swift_once();
  }

  v17 = sub_2692C77C0();
  __swift_project_value_buffer(v17, qword_280302D28);

  v18 = sub_2692C77B0();
  v19 = sub_2692C7A00();
  if (os_log_type_enabled(v18, v19))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    if (v12)
    {
      v20 = sub_2692C7C60();
    }

    else
    {
      v20 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v6 + 4) = v20;

    _os_log_impl(&dword_269270000, v18, v19, "ChangeAlarmStatusIntentHandler: Using %ld alarms on intent for resolution", v6, 0xCu);
    MEMORY[0x26D6368E0](v6, -1, -1);

    v21 = v7 & 0xFFFFFFFFFFFFFF8;
    if (!v12)
    {
LABEL_20:
      a2 = *(v21 + 16);
      if (!a2)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }
  }

  else
  {

    v21 = v7 & 0xFFFFFFFFFFFFFF8;
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  a2 = sub_2692C7C60();
  if (a2)
  {
LABEL_11:
    v66[0] = MEMORY[0x277D84F90];
    a1 = v66;
    sub_2692C7C10();
    if ((a2 & 0x8000000000000000) == 0)
    {
      type metadata accessor for ChangeAlarmStatusAlarmsResolutionResult();
      v22 = 0;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x26D6360D0](v22, v7);
        }

        else
        {
          v23 = *(v7 + 8 * v22 + 32);
        }

        v24 = v23;
        ++v22;
        sub_2692C42D8(v23);

        sub_2692C7BF0();
        v25 = *(v66[0] + 16);
        sub_2692C7C20();
        sub_2692C7C30();
        sub_2692C7C00();
      }

      while (a2 != v22);
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_41;
  }

LABEL_21:

  type metadata accessor for ChangeAlarmStatusAlarmsResolutionResult();
  v63 = sub_2692C7910();
  a3[2](a3, v63);

LABEL_37:

  v60 = v63;
}

uint64_t sub_26928B2EC(uint64_t a1, NSObject *a2, _DWORD *a3, void (*a4)(uint64_t), unint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  v15 = &v137 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v13, v16);
  MEMORY[0x28223BE20](v17, v18);
  v21 = *a1;
  if (*(a1 + 8))
  {
    if (a3 == 1)
    {
      v22 = [a2 time];
      if (v22)
      {
        v23 = v22;
        sub_2692C7280();

        v24 = sub_2692C7310();
        (*(*(v24 - 8) + 56))(v15, 0, 1, v24);
        sub_26927CEA8(v15, &qword_280302C48, &qword_2692C9780);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_2692C9430;
        type metadata accessor for ChangeAlarmStatusAlarmsResolutionResult();
        v26 = [swift_getObjCClassFromMetadata() notRequired];
LABEL_161:
        *(v25 + 32) = v26;
        v133 = v25;
LABEL_162:
        a4(v133);
      }

      v44 = sub_2692C7310();
      (*(*(v44 - 8) + 56))(v15, 1, 1, v44);
      sub_26927CEA8(v15, &qword_280302C48, &qword_2692C9780);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_2692C9430;
    type metadata accessor for ChangeAlarmStatusAlarmsResolutionResult();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (v21 == 12)
    {
      v26 = [ObjCClassFromMetadata resolutionResultUnsupportedWithReason_];
    }

    else
    {
      v26 = [ObjCClassFromMetadata resolutionResultUnsupportedWithReason_];
    }

    goto LABEL_161;
  }

  v137 = v20;
  v138 = &v137 - v19;
  if (qword_280302AD8 != -1)
  {
    goto LABEL_150;
  }

  while (1)
  {
    v27 = sub_2692C77C0();
    v28 = __swift_project_value_buffer(v27, qword_280302D28);
    v29 = a2;
    v30 = sub_2692C77B0();
    a2 = sub_2692C7A00();

    v31 = os_log_type_enabled(v30, a2);
    v143 = a4;
    v144 = v29;
    v141 = a3;
    v142 = a5;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v146 = v33;
      *v32 = 136315138;
      v34 = v29;
      v35 = [v34 description];
      v36 = sub_2692C7830();
      v38 = v37;

      v39 = v36;
      v29 = v144;
      v40 = sub_26927C4DC(v39, v38, &v146);
      a3 = v141;

      *(v32 + 4) = v40;
      _os_log_impl(&dword_269270000, v30, a2, "Using alarmSearch for filtering: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x26D6368E0](v33, -1, -1);
      MEMORY[0x26D6368E0](v32, -1, -1);
    }

    if ([v29 alarmReferenceType]== 3)
    {
      v41 = 0;
      v145 = 1;
      goto LABEL_25;
    }

    if (!a3)
    {
      v145 = 1;
      v41 = 0;
      goto LABEL_25;
    }

    if (a3 == 2)
    {
      a2 = v28;
      v42 = sub_2692C77B0();
      v43 = sub_2692C7A00();
      if (!os_log_type_enabled(v42, v43))
      {
        v41 = 1;
        goto LABEL_24;
      }

      a2 = swift_slowAlloc();
      LOWORD(a2->isa) = 0;
      _os_log_impl(&dword_269270000, v42, v43, "Overriding alarmSearch to filter for enabled alarms", a2, 2u);
      v41 = 1;
    }

    else
    {
      if (a3 != 1)
      {
        goto LABEL_171;
      }

      a2 = v28;
      v42 = sub_2692C77B0();
      v46 = sub_2692C7A00();
      v41 = 2;
      if (!os_log_type_enabled(v42, v46))
      {
        goto LABEL_24;
      }

      a2 = swift_slowAlloc();
      LOWORD(a2->isa) = 0;
      _os_log_impl(&dword_269270000, v42, v46, "Overriding alarmSearch to filter for disabled alarms", a2, 2u);
    }

    MEMORY[0x26D6368E0](a2, -1, -1);
LABEL_24:

    v145 = 0;
LABEL_25:
    v146 = MEMORY[0x277D84F90];
    v140 = v21 >> 62;
    a4 = v21 >> 62 ? sub_2692C7C60() : *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v47 = MEMORY[0x277D84F90];
    if (a4)
    {
      v139 = v28;
      a5 = 0;
      do
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v48 = MEMORY[0x26D6360D0](a5, v21);
        }

        else
        {
          if (a5 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_147;
          }

          v48 = *(v21 + 8 * a5 + 32);
        }

        a3 = v48;
        v49 = (a5 + 1);
        if (__OFADD__(a5, 1))
        {
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        a2 = v48;
        if (SiriAlarm.matches(alarmSearch:searchStatusOverride:)(v29, v41, v145))
        {
          a2 = &v146;
          sub_2692C7BF0();
          v50 = *(v146 + 16);
          sub_2692C7C20();
          v29 = v144;
          sub_2692C7C30();
          sub_2692C7C00();
        }

        else
        {
        }

        ++a5;
      }

      while (v49 != a4);
      v51 = v146;
      v47 = MEMORY[0x277D84F90];
      if ((v146 & 0x8000000000000000) == 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v51 = MEMORY[0x277D84F90];
      if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
      {
LABEL_41:
        if ((v51 & 0x4000000000000000) == 0)
        {
          v52 = *(v51 + 16);
          goto LABEL_43;
        }
      }
    }

    v52 = sub_2692C7C60();
LABEL_43:
    v53 = v145;
    if (v52)
    {
      v53 = 1;
    }

    if (v53)
    {
      goto LABEL_61;
    }

    a2 = sub_2692C77B0();
    v54 = sub_2692C7A00();
    if (os_log_type_enabled(a2, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_269270000, a2, v54, "[ChangeAlarmStatusIntentHandler.processSearchResult] Found zero alarms with statusOverride; retrying without override.", v55, 2u);
      v56 = v55;
      v29 = v144;
      MEMORY[0x26D6368E0](v56, -1, -1);
    }

    v146 = v47;
    if (!a4)
    {
      break;
    }

    v139 = v52;
    a5 = 0;
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v57 = MEMORY[0x26D6360D0](a5, v21);
      }

      else
      {
        if (a5 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_149;
        }

        v57 = *(v21 + 8 * a5 + 32);
      }

      a3 = v57;
      v58 = (a5 + 1);
      if (__OFADD__(a5, 1))
      {
        break;
      }

      a2 = v57;
      if (SiriAlarm.matches(alarmSearch:searchStatusOverride:)(v29, 0, 1))
      {
        a2 = &v146;
        sub_2692C7BF0();
        v59 = *(v146 + 16);
        sub_2692C7C20();
        v29 = v144;
        sub_2692C7C30();
        sub_2692C7C00();
      }

      else
      {
      }

      ++a5;
      if (v58 == a4)
      {
        v51 = v146;
        v47 = MEMORY[0x277D84F90];
        v52 = v139;
        goto LABEL_61;
      }
    }

LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    swift_once();
  }

  v51 = v47;
LABEL_61:

  sub_26928E7E4(v21, 0);
  v60 = sub_2692C77B0();
  v61 = sub_2692C7A00();
  v62 = v51 >> 62;
  if (os_log_type_enabled(v60, v61))
  {
    a3 = swift_slowAlloc();
    *a3 = 134218240;
    if (v62)
    {
      v63 = sub_2692C7C60();
    }

    else
    {
      v63 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(a3 + 1) = v63;

    *(a3 + 6) = 2048;
    if (v140)
    {
      v64 = sub_2692C7C60();
    }

    else
    {
      v64 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(a3 + 14) = v64;
    sub_2692743E4(v21, 0);
    _os_log_impl(&dword_269270000, v60, v61, "ChangeAlarmStatusIntentHandler resolveAlarms(), count=%ld, from alarms=%ld.", a3, 0x16u);
    MEMORY[0x26D6368E0](a3, -1, -1);

    if (v52)
    {
LABEL_79:

      goto LABEL_80;
    }
  }

  else
  {
    sub_2692743E4(v21, 0);

    if (v52)
    {
      goto LABEL_79;
    }
  }

  if (v62)
  {
    v65 = sub_2692C7C60();
  }

  else
  {
    v65 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v66 = v145;
  if (!v65)
  {
    v66 = 1;
  }

  if (v66)
  {
LABEL_80:
    if (v62)
    {
      if (sub_2692C7C60())
      {
LABEL_82:
        if ([v144 alarmReferenceType]== 3)
        {
          v71 = sub_2692C77B0();
          v72 = sub_2692C7A00();
          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            *v73 = 0;
            _os_log_impl(&dword_269270000, v71, v72, "ChangeAlarmStatusIntentHandler alarmReferenceType all", v73, 2u);
            MEMORY[0x26D6368E0](v73, -1, -1);
          }

          if (v62)
          {
            v74 = sub_2692C7C60();
            if (!v74)
            {
              goto LABEL_122;
            }
          }

          else
          {
            v74 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v74)
            {
LABEL_122:

              v98 = MEMORY[0x277D84F90];
LABEL_123:
              v143(v98);
LABEL_124:
            }
          }

          v146 = v47;
          sub_2692C7C10();
          if ((v74 & 0x8000000000000000) == 0)
          {
            type metadata accessor for ChangeAlarmStatusAlarmsResolutionResult();
            v76 = 0;
            do
            {
              if ((v51 & 0xC000000000000001) != 0)
              {
                v77 = MEMORY[0x26D6360D0](v76, v51);
              }

              else
              {
                v77 = *(v51 + 8 * v76 + 32);
              }

              v78 = v77;
              ++v76;
              sub_2692C42D8(v77);

              sub_2692C7BF0();
              v79 = *(v146 + 16);
              sub_2692C7C20();
              sub_2692C7C30();
              sub_2692C7C00();
            }

            while (v74 != v76);
            goto LABEL_121;
          }

          __break(1u);
          goto LABEL_168;
        }

        if (v62)
        {
          v75 = sub_2692C7C60();
        }

        else
        {
          v75 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v80 = v144;
        if (v75 == 1)
        {
          if ((v51 & 0xC000000000000001) == 0)
          {
            if (!*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_170;
            }

            v81 = *(v51 + 32);
            goto LABEL_102;
          }

LABEL_168:
          v81 = MEMORY[0x26D6360D0](0, v51);
LABEL_102:
          v82 = v81;

          v83 = sub_2692C77B0();
          v84 = sub_2692C7A00();
          if (os_log_type_enabled(v83, v84))
          {
            v85 = swift_slowAlloc();
            *v85 = 0;
            _os_log_impl(&dword_269270000, v83, v84, "ChangeAlarmStatusIntentHandler success single alarm", v85, 2u);
            MEMORY[0x26D6368E0](v85, -1, -1);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
          v86 = swift_allocObject();
          *(v86 + 16) = xmmword_2692C9430;
          type metadata accessor for ChangeAlarmStatusAlarmsResolutionResult();
          *(v86 + 32) = sub_2692C42D8(v82);
          v143(v86);

          goto LABEL_124;
        }

        if (v75 < 2)
        {
          goto LABEL_133;
        }

        if (sub_269283398(v51))
        {
          v87 = sub_2692C77B0();
          v88 = sub_2692C7A00();
          if (os_log_type_enabled(v87, v88))
          {
            v89 = swift_slowAlloc();
            *v89 = 0;
            _os_log_impl(&dword_269270000, v87, v88, "ChangeAlarmStatusIntentHandler success multiple identical alarms", v89, 2u);
            MEMORY[0x26D6368E0](v89, -1, -1);
          }

          v146 = v47;
          sub_2692C7C10();
          type metadata accessor for ChangeAlarmStatusAlarmsResolutionResult();
          v90 = 0;
          do
          {
            if ((v51 & 0xC000000000000001) != 0)
            {
              v91 = MEMORY[0x26D6360D0](v90, v51);
            }

            else
            {
              v91 = *(v51 + 8 * v90 + 32);
            }

            v92 = v91;
            ++v90;
            sub_2692C42D8(v91);

            sub_2692C7BF0();
            v93 = *(v146 + 16);
            sub_2692C7C20();
            sub_2692C7C30();
            sub_2692C7C00();
          }

          while (v75 != v90);
LABEL_121:

          v98 = v146;
          goto LABEL_123;
        }

        v100 = [v80 time];
        if (v100)
        {
          v101 = v137;
          v102 = v100;
          sub_2692C7280();

          v103 = sub_2692C7310();
          (*(*(v103 - 8) + 56))(v101, 0, 1, v103);
          sub_26927CEA8(v101, &qword_280302C48, &qword_2692C9780);
        }

        else
        {
          v104 = sub_2692C7310();
          v105 = v137;
          (*(*(v104 - 8) + 56))(v137, 1, 1, v104);
          sub_26927CEA8(v105, &qword_280302C48, &qword_2692C9780);
          v106 = [v80 timeRange];
          if (!v106)
          {
LABEL_133:
            v111 = sub_2692C77B0();
            v112 = sub_2692C7A00();
            if (os_log_type_enabled(v111, v112))
            {
              v113 = swift_slowAlloc();
              *v113 = 0;
              _os_log_impl(&dword_269270000, v111, v112, "ChangeAlarmStatusIntentHandler unclear search result – disambiguate", v113, 2u);
              MEMORY[0x26D6368E0](v113, -1, -1);
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
            v114 = swift_allocObject();
            *(v114 + 16) = xmmword_2692C9430;
            type metadata accessor for ChangeAlarmStatusAlarmsResolutionResult();
            v115 = sub_2692C433C(v51);

            *(v114 + 32) = v115;
LABEL_136:
            v143(v114);
          }
        }

        v107 = [v80 isMeridianInferred];
        sub_2692822D8();
        v108 = sub_2692C7A50();
        v109 = v108;
        if (v107)
        {
          v110 = sub_2692C7A70();

          if (v110)
          {
            goto LABEL_133;
          }
        }

        else
        {
        }

        v116 = sub_2692C77B0();
        v117 = sub_2692C7A00();
        if (os_log_type_enabled(v116, v117))
        {
          v118 = swift_slowAlloc();
          *v118 = 0;
          _os_log_impl(&dword_269270000, v116, v117, "ChangeAlarmStatusIntentHandler multiple matches with meridian-inferred explicit time", v118, 2u);
          MEMORY[0x26D6368E0](v118, -1, -1);
        }

        v146 = v47;
        sub_2692C7C10();
        type metadata accessor for ChangeAlarmStatusAlarmsResolutionResult();
        v119 = 0;
        do
        {
          if ((v51 & 0xC000000000000001) != 0)
          {
            v120 = MEMORY[0x26D6360D0](v119, v51);
          }

          else
          {
            v120 = *(v51 + 8 * v119 + 32);
          }

          v121 = v120;
          ++v119;
          sub_2692C42D8(v120);

          sub_2692C7BF0();
          v122 = *(v146 + 16);
          sub_2692C7C20();
          sub_2692C7C30();
          sub_2692C7C00();
        }

        while (v75 != v119);

        v114 = v146;
        goto LABEL_136;
      }
    }

    else if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_82;
    }

    v123 = sub_2692C77B0();
    v124 = sub_2692C7A00();
    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      *v125 = 0;
      _os_log_impl(&dword_269270000, v123, v124, "ChangeAlarmStatusIntentHandler filtered alarms empty", v125, 2u);
      MEMORY[0x26D6368E0](v125, -1, -1);
    }

    a4 = v143;
    if (v141 == 1)
    {
      v126 = [v144 time];
      if (v126)
      {
        v127 = v138;
        v128 = v126;
        sub_2692C7280();

        v129 = sub_2692C7310();
        (*(*(v129 - 8) + 56))(v127, 0, 1, v129);
        sub_26927CEA8(v127, &qword_280302C48, &qword_2692C9780);
        v130 = sub_2692C77B0();
        v131 = sub_2692C7A00();
        if (os_log_type_enabled(v130, v131))
        {
          v132 = swift_slowAlloc();
          *v132 = 0;
          _os_log_impl(&dword_269270000, v130, v131, "ChangeAlarmStatusIntentHandler marking response as .notRequired, as this was an enable request; will attempt creation", v132, 2u);
          MEMORY[0x26D6368E0](v132, -1, -1);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_2692C9430;
        type metadata accessor for ChangeAlarmStatusAlarmsResolutionResult();
        v26 = [swift_getObjCClassFromMetadata() notRequired];
        goto LABEL_161;
      }

      v134 = sub_2692C7310();
      v135 = v138;
      (*(*(v134 - 8) + 56))(v138, 1, 1, v134);
      sub_26927CEA8(v135, &qword_280302C48, &qword_2692C9780);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
    v136 = swift_allocObject();
    *(v136 + 16) = xmmword_2692C9430;
    type metadata accessor for ChangeAlarmStatusAlarmsResolutionResult();
    *(v136 + 32) = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
    v133 = v136;
    goto LABEL_162;
  }

  v67 = sub_2692C77B0();
  v68 = sub_2692C7A00();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&dword_269270000, v67, v68, "ChangeAlarmStatusIntentHandler has no candidate alarms to act on - do nothing, and do not disambiguate", v69, 2u);
    MEMORY[0x26D6368E0](v69, -1, -1);
  }

  if (v62)
  {
    v70 = sub_2692C7C60();
    if (!v70)
    {
      goto LABEL_122;
    }
  }

  else
  {
    v70 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v70)
    {
      goto LABEL_122;
    }
  }

  v146 = v47;
  sub_2692C7C10();
  if ((v70 & 0x8000000000000000) == 0)
  {
    type metadata accessor for ChangeAlarmStatusAlarmsResolutionResult();
    v94 = 0;
    do
    {
      if ((v51 & 0xC000000000000001) != 0)
      {
        v95 = MEMORY[0x26D6360D0](v94, v51);
      }

      else
      {
        v95 = *(v51 + 8 * v94 + 32);
      }

      v96 = v95;
      ++v94;
      sub_2692C42D8(v95);

      sub_2692C7BF0();
      v97 = *(v146 + 16);
      sub_2692C7C20();
      sub_2692C7C30();
      sub_2692C7C00();
    }

    while (v70 != v94);
    goto LABEL_121;
  }

LABEL_170:
  __break(1u);
LABEL_171:
  v146 = a3;
  result = sub_2692C7D80();
  __break(1u);
  return result;
}

void sub_26928C750(uint64_t a1, void *a2, uint64_t a3, char *a4, void (**a5)(void, void))
{
  v10 = sub_2692C77A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v42[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  _Block_copy(a5);
  if (a1 == 1)
  {
    sub_2692C7A20();
    v24 = *&a4[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_osLogObject];
    sub_2692C7790();
    sub_2692C7780();
    (*(v11 + 8))(v15, v10);
    sub_269275A6C(&a4[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager], v42);
    v25 = v43;
    v26 = v44;
    __swift_project_boxed_opaque_existential_1(v42, v43);
    v27 = swift_allocObject();
    v27[2] = a4;
    v27[3] = a2;
    v27[4] = a3;
    v27[5] = sub_2692808C4;
    v27[6] = v16;
    v28 = *(v26 + 80);
    v29 = a4;
    v30 = a2;

    v28(sub_26928E5D0, v27, v25, v26);
    goto LABEL_5;
  }

  if (a1 == 2)
  {
    sub_2692C7A20();
    v17 = *&a4[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_osLogObject];
    sub_2692C7790();
    sub_2692C7780();
    (*(v11 + 8))(v15, v10);
    sub_269275A6C(&a4[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager], v42);
    v18 = v43;
    v19 = v44;
    __swift_project_boxed_opaque_existential_1(v42, v43);
    v20 = swift_allocObject();
    v20[2] = a4;
    v20[3] = a2;
    v20[4] = a3;
    v20[5] = sub_2692808C4;
    v20[6] = v16;
    v21 = *(v19 + 88);
    v22 = a4;
    v23 = a2;

    v21(sub_26928E5E8, v20, v18, v19);
LABEL_5:

    __swift_destroy_boxed_opaque_existential_1Tm(v42);

    return;
  }

  if (qword_280302AD8 != -1)
  {
    swift_once();
  }

  v31 = sub_2692C77C0();
  __swift_project_value_buffer(v31, qword_280302D28);
  v32 = sub_2692C77B0();
  v33 = sub_2692C79F0();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_269270000, v32, v33, "Only support .enable, .disable here.", v34, 2u);
    MEMORY[0x26D6368E0](v34, -1, -1);
  }

  v35 = sub_2692C7760();
  v43 = v35;
  v44 = MEMORY[0x277D61908];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
  v37 = *MEMORY[0x277D61890];
  v38 = sub_2692C7710();
  (*(*(v38 - 8) + 104))(boxed_opaque_existential_1, v37, v38);
  (*(*(v35 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v35);
  sub_2692C76B0();
  __swift_destroy_boxed_opaque_existential_1Tm(v42);
  v39 = [objc_allocWithZone(type metadata accessor for ChangeAlarmStatusIntentResponse()) init];
  v40 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
  swift_beginAccess();
  *&v39[v40] = 5;
  [v39 setUserActivity_];
  (a5)[2](a5, v39);
}

void sub_26928CC68(char *a1, uint64_t a2)
{
  v4 = [a1 createdAlarm];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  v6 = OBJC_IVAR___CreateAlarmIntentResponse_code;
  swift_beginAccess();
  if (*&a1[v6] != 4)
  {

LABEL_5:
    v7 = [objc_allocWithZone(type metadata accessor for ChangeAlarmStatusIntentResponse()) init];
    v12 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
    swift_beginAccess();
    *&v7[v12] = 5;
    [v7 setUserActivity_];
    (*(a2 + 16))(a2, v7);
    goto LABEL_6;
  }

  v7 = [objc_allocWithZone(type metadata accessor for ChangeAlarmStatusIntentResponse()) init];
  v8 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
  swift_beginAccess();
  *&v7[v8] = 4;
  [v7 setUserActivity_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2692C9430;
  *(v9 + 32) = v5;
  type metadata accessor for SiriAlarm();
  v10 = v5;
  v11 = sub_2692C7910();

  [v7 setModifiedAlarms_];

  (*(a2 + 16))(a2, v7);
LABEL_6:
}

void sub_26928CE4C(void *a1, char *a2, void (**a3)(void, void))
{
  v6 = sub_2692C77A0();
  isa = v6[-1].isa;
  v8 = isa[8];
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v150 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v17 = &v150 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v150 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  _Block_copy(a3);
  _Block_copy(a3);
  _Block_copy(a3);
  v22 = [a1 alarms];
  if (!v22)
  {
LABEL_92:
    v92 = [a1 alarmSearch];
    if (v92)
    {
      v93 = v92;
      v94 = [v92 time];

      if (v94)
      {
        sub_2692C7280();

        v95 = sub_2692C7310();
        (*(*(v95 - 8) + 56))(v17, 0, 1, v95);
      }

      else
      {
        v95 = sub_2692C7310();
        (*(*(v95 - 8) + 56))(v17, 1, 1, v95);
      }

      sub_26928E660(v17, v20, &qword_280302C48, &qword_2692C9780);
      sub_2692C7310();
      if ((*(*(v95 - 8) + 48))(v20, 1, v95) != 1)
      {
        sub_26927CEA8(v20, &qword_280302C48, &qword_2692C9780);
        v100 = sub_269290E5C();
        if (v100)
        {
          v101 = v100;
          sub_269275A6C(&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager], v163);
          AlarmIntentHandler = type metadata accessor for CreateAlarmIntentHandler();
          v103 = objc_allocWithZone(AlarmIntentHandler);
          v104 = OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_osLogObject;
          if (qword_280302B50 != -1)
          {
            swift_once();
          }

          v105 = qword_280303380;
          *&v103[v104] = qword_280303380;
          sub_269275A6C(v163, &v103[OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_siriAlarmManager]);
          v162.receiver = v103;
          v162.super_class = AlarmIntentHandler;
          v106 = v105;
          v107 = objc_msgSendSuper2(&v162, sel_init);
          __swift_destroy_boxed_opaque_existential_1Tm(v163);
          _Block_copy(a3);

          sub_2692A620C(v101, v107, a3);
          _Block_release(a3);

          goto LABEL_100;
        }

        goto LABEL_99;
      }
    }

    else
    {
      v96 = sub_2692C7310();
      (*(*(v96 - 8) + 56))(v20, 1, 1, v96);
    }

    sub_26927CEA8(v20, &qword_280302C48, &qword_2692C9780);
LABEL_99:
    v97 = [objc_allocWithZone(type metadata accessor for ChangeAlarmStatusIntentResponse()) init];
    v98 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
    swift_beginAccess();
    *&v97[v98] = 5;
    [v97 setUserActivity_];
    (a3)[2](a3, v97);

    goto LABEL_100;
  }

  v23 = v22;
  v160 = isa;
  v161 = a2;
  v24 = v21;
  v159 = v11;
  type metadata accessor for SiriAlarm();
  v25 = sub_2692C7930();

  if (v25 >> 62)
  {
    goto LABEL_90;
  }

  v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
LABEL_91:

    a2 = v161;
    goto LABEL_92;
  }

  while (1)
  {
    v158 = v6;
    v155 = type metadata accessor for ChangeAlarmStatusIntentResponse();
    v27 = [objc_allocWithZone(v155) init];
    v28 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
    swift_beginAccess();
    *&v27[v28] = 4;
    v157 = v27;
    [v27 setUserActivity_];
    if (ChangeAlarmStatusIntent.isDismissRequest(alarms:)(v25))
    {
      break;
    }

    if (qword_280302AD8 != -1)
    {
      swift_once();
    }

    v44 = sub_2692C77C0();
    v20 = __swift_project_value_buffer(v44, qword_280302D28);
    v6 = sub_2692C77B0();
    v45 = sub_2692C7A00();
    if (os_log_type_enabled(v6, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_269270000, v6, v45, "Intent is enable/disable alarm intent(not dismiss), trying to handle().", v46, 2u);
      MEMORY[0x26D6368E0](v46, -1, -1);
    }

    v156 = swift_allocObject();
    *(v156 + 16) = MEMORY[0x277D84F90];
    v47 = [a1 operation];
    v153 = v24;
    v154 = a3;
    v150 = a1;
    v151 = v20;
    if (v47 == 1)
    {
      v6 = 0;
      a1 = (v25 & 0xC000000000000001);
      v24 = v25 & 0xFFFFFFFFFFFFFF8;
      v152 = MEMORY[0x277D84F90];
      while (2)
      {
        v17 = v6;
        while (2)
        {
          if (a1)
          {
            v60 = MEMORY[0x26D6360D0](v17, v25);
          }

          else
          {
            if (v17 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_89;
            }

            v60 = *(v25 + 8 * v17 + 32);
          }

          v61 = v60;
          v6 = (v17 + 1);
          if (__OFADD__(v17, 1))
          {
            goto LABEL_86;
          }

          v62 = [v60 enabled];
          v20 = sub_2692822D8();
          v63 = sub_2692C7A50();
          a3 = v63;
          if (v62)
          {
            v20 = sub_2692C7A70();

            if (v20)
            {
LABEL_38:

              ++v17;
              if (v6 == v26)
              {
                goto LABEL_52;
              }

              continue;
            }
          }

          else
          {
          }

          break;
        }

        v59 = [v61 identifier];
        if (v59)
        {
          v64 = v59;
          v20 = sub_2692C7830();
          v17 = v65;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v152 = sub_26928A5E0(0, *(v152 + 16) + 1, 1, v152);
          }

          v67 = *(v152 + 16);
          v66 = *(v152 + 24);
          if (v67 >= v66 >> 1)
          {
            v152 = sub_26928A5E0((v66 > 1), v67 + 1, 1, v152);
          }

          v68 = v152;
          *(v152 + 16) = v67 + 1;
          v69 = v68 + 16 * v67;
          *(v69 + 32) = v20;
          *(v69 + 40) = v17;
          if (v6 == v26)
          {
LABEL_52:
            v70 = *(v156 + 16);
            *(v156 + 16) = v152;

            goto LABEL_56;
          }

          continue;
        }

        goto LABEL_38;
      }
    }

    if (v47 == 2)
    {
      a1 = (v25 & 0xC000000000000001);
      v24 = v25 & 0xFFFFFFFFFFFFFF8;
      v152 = MEMORY[0x277D84F90];
      v48 = 0;
      if ((v25 & 0xC000000000000001) != 0)
      {
LABEL_33:
        v49 = MEMORY[0x26D6360D0](v48, v25);
        goto LABEL_23;
      }

      while (1)
      {
        if (v48 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_88;
        }

        v49 = *(v25 + 8 * v48 + 32);
LABEL_23:
        v17 = v49;
        v6 = (&v48->isa + 1);
        if (__OFADD__(v48, 1))
        {
          goto LABEL_87;
        }

        v50 = [v49 enabled];
        v20 = sub_2692822D8();
        v51 = sub_2692C7A50();
        a3 = v51;
        if (v50)
        {
          v20 = sub_2692C7A70();

          if (v20)
          {
            v52 = [v17 identifier];
            if (v52)
            {
              v53 = v52;
              v20 = sub_2692C7830();
              v55 = v54;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v152 = sub_26928A5E0(0, *(v152 + 16) + 1, 1, v152);
              }

              v17 = *(v152 + 16);
              v56 = *(v152 + 24);
              if (v17 >= v56 >> 1)
              {
                v152 = sub_26928A5E0((v56 > 1), v17 + 1, 1, v152);
              }

              v57 = v152;
              *(v152 + 16) = v17 + 1;
              v58 = v57 + 16 * v17;
              *(v58 + 32) = v20;
              *(v58 + 40) = v55;
              if (v6 == v26)
              {
                goto LABEL_52;
              }

              v48 = v6;
              if (a1)
              {
                goto LABEL_33;
              }

              continue;
            }
          }
        }

        else
        {
        }

        v48 = (v48 + 1);
        if (v6 == v26)
        {
          goto LABEL_52;
        }

        if (a1)
        {
          goto LABEL_33;
        }
      }
    }

    v20 = sub_2692C77B0();
    v71 = sub_2692C79F0();
    if (os_log_type_enabled(v20, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_269270000, v20, v71, "Unsupported operation when getting undoable alarms in .handle(), expected enable/disable.", v72, 2u);
      MEMORY[0x26D6368E0](v72, -1, -1);
    }

LABEL_56:
    v73 = 0;
    v163[0] = MEMORY[0x277D84F90];
    v24 = v25 & 0xC000000000000001;
    a1 = (v25 & 0xFFFFFFFFFFFFFF8);
    v6 = &off_279C54000;
    while (1)
    {
      if (v24)
      {
        v74 = MEMORY[0x26D6360D0](v73, v25);
      }

      else
      {
        if (v73 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_83;
        }

        v74 = *(v25 + 8 * v73 + 32);
      }

      v17 = v74;
      a3 = (v73 + 1);
      if (__OFADD__(v73, 1))
      {
        break;
      }

      v75 = [v74 sleepAlarmAttribute];
      if (v75)
      {

        v20 = v163;
        sub_2692C7BF0();
        v76 = *(v163[0] + 16);
        sub_2692C7C20();
        sub_2692C7C30();
        sub_2692C7C00();
      }

      else
      {
      }

      ++v73;
      if (a3 == v26)
      {
        v17 = 0;
        v152 = v163[0];
        v163[0] = MEMORY[0x277D84F90];
        do
        {
          if (v24)
          {
            v77 = MEMORY[0x26D6360D0](v17, v25);
          }

          else
          {
            if (v17 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_85;
            }

            v77 = *(v25 + 8 * v17 + 32);
          }

          v78 = v77;
          v79 = (v17 + 1);
          if (__OFADD__(v17, 1))
          {
            goto LABEL_84;
          }

          v80 = [v77 sleepAlarmAttribute];
          if (v80)
          {
            v20 = v80;
          }

          else
          {
            v20 = v163;
            sub_2692C7BF0();
            a3 = *(v163[0] + 16);
            sub_2692C7C20();
            sub_2692C7C30();
            sub_2692C7C00();
          }

          ++v17;
        }

        while (v79 != v26);

        v81 = v163[0];
        v82 = v152;
        if ((v152 & 0x8000000000000000) != 0 || (v152 & 0x4000000000000000) != 0)
        {
          v108 = sub_2692C7C60();
          v84 = v154;
          v85 = v161;
          v86 = v158;
          if (v108 <= 1)
          {
            v83 = sub_2692C7C60();
            goto LABEL_108;
          }

LABEL_79:

          v87 = sub_2692C77B0();
          v88 = sub_2692C79F0();
          if (os_log_type_enabled(v87, v88))
          {
            v89 = swift_slowAlloc();
            *v89 = 0;
            _os_log_impl(&dword_269270000, v87, v88, "Can NOT enable multiple sleep alarms, should only handle upcoming one.\nCheck the resolveAlarms method and make sure it returns at most 1 sleep alarm.", v89, 2u);
            MEMORY[0x26D6368E0](v89, -1, -1);
          }

          v90 = [objc_allocWithZone(v155) init];
          v91 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
          swift_beginAccess();
          *&v90[v91] = 5;
          [v90 setUserActivity_];
          (v84)[2](v84, v90);

          goto LABEL_134;
        }

        v83 = *(v152 + 16);
        v84 = v154;
        v85 = v161;
        v86 = v158;
        if (v83 >= 2)
        {
          goto LABEL_79;
        }

LABEL_108:
        if (v83)
        {
          if ((v82 & 0xC000000000000001) != 0)
          {
            v109 = MEMORY[0x26D6360D0](0, v82);
            goto LABEL_112;
          }

          if (*(v82 + 16))
          {
            v109 = *(v82 + 32);
LABEL_112:
            v17 = v109;

            v79 = v17;
            v110 = [v79 identifier];
            if (v110)
            {
              v111 = v110;
              v112 = sub_2692C7830();
              v114 = v113;

              v115 = *(v156 + 16);
              v163[0] = v112;
              v163[1] = v114;
              MEMORY[0x28223BE20](v116, v117);
              *(&v150 - 2) = v163;

              LOBYTE(v112) = sub_26928515C(sub_26928E8BC, (&v150 - 4), v115);

              v86 = v158;
              if (v112)
              {
                v118 = sub_2692C7980();
                [v79 setUndoable_];
              }
            }

            if ((v81 & 0x8000000000000000) == 0 && (v81 & 0x4000000000000000) == 0)
            {
              if (*(v81 + 16))
              {
                goto LABEL_118;
              }

LABEL_131:

              v146 = sub_2692C77B0();
              v147 = sub_2692C7A00();
              if (os_log_type_enabled(v146, v147))
              {
                v148 = swift_slowAlloc();
                *v148 = 0;
                _os_log_impl(&dword_269270000, v146, v147, "Only found sleep alarm.", v148, 2u);
                MEMORY[0x26D6368E0](v148, -1, -1);
              }

              v149 = [v150 operation];
              _Block_copy(v84);
              sub_26928C750(v149, v79, MEMORY[0x277D84F90], v85, v84);
              _Block_release(v84);

              goto LABEL_134;
            }
          }

          else
          {
            __break(1u);
          }

          if (!sub_2692C7C60())
          {
            goto LABEL_131;
          }

LABEL_118:
        }

        else
        {

          v17 = 0;
        }

        v119 = [v150 operation];
        if (v119 == 2)
        {
          sub_2692C7A20();
          v129 = *&v85[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_osLogObject];
          v130 = v159;
          sub_2692C7790();
          sub_2692C7780();
          (*(v160 + 1))(v130, v86);
          sub_269275A6C(&v85[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager], v163);
          v131 = v164;
          v132 = v165;
          v161 = __swift_project_boxed_opaque_existential_1(v163, v164);
          v133 = swift_allocObject();
          v135 = v156;
          v134 = v157;
          v133[2] = v85;
          v133[3] = v135;
          v133[4] = v17;
          v133[5] = sub_26928062C;
          v133[6] = v153;
          v133[7] = v134;
          v159 = *(v132 + 24);
          v160 = v17;

          v136 = v85;
          v128 = v134;

          v159(v81, sub_26928E8A4, v133, v131, v132);
        }

        else
        {
          if (v119 != 1)
          {

            v137 = sub_2692C77B0();
            v138 = sub_2692C79F0();
            if (os_log_type_enabled(v137, v138))
            {
              v139 = swift_slowAlloc();
              *v139 = 0;
              _os_log_impl(&dword_269270000, v137, v138, "Operation is empty: don't know what to do with the alarm, return failure response.", v139, 2u);
              MEMORY[0x26D6368E0](v139, -1, -1);
            }

            v140 = sub_2692C7760();
            v164 = v140;
            v165 = MEMORY[0x277D61908];
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v163);
            v142 = *MEMORY[0x277D61890];
            v143 = sub_2692C7710();
            (*(*(v143 - 8) + 104))(boxed_opaque_existential_1, v142, v143);
            (*(*(v140 - 1) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v140);
            sub_2692C76B0();
            __swift_destroy_boxed_opaque_existential_1Tm(v163);
            v144 = [objc_allocWithZone(v155) init];
            v145 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
            swift_beginAccess();
            *&v144[v145] = 5;
            [v144 setUserActivity_];
            (v84)[2](v84, v144);

            goto LABEL_134;
          }

          sub_2692C7A20();
          v120 = *&v85[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_osLogObject];
          v121 = v159;
          sub_2692C7790();
          sub_2692C7780();
          (*(v160 + 1))(v121, v86);
          sub_269275A6C(&v85[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager], v163);
          v122 = v164;
          v123 = v165;
          v161 = __swift_project_boxed_opaque_existential_1(v163, v164);
          v124 = swift_allocObject();
          v126 = v156;
          v125 = v157;
          v124[2] = v85;
          v124[3] = v126;
          v124[4] = v17;
          v124[5] = sub_26928062C;
          v124[6] = v153;
          v124[7] = v125;
          v159 = *(v123 + 16);
          v160 = v17;

          v127 = v85;
          v128 = v125;

          v159(v81, sub_26928E8A8, v124, v122, v123);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v163);

LABEL_134:
        _Block_release(v84);
        v99 = v84;
        goto LABEL_101;
      }
    }

    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    v26 = sub_2692C7C60();
    if (!v26)
    {
      goto LABEL_91;
    }
  }

  v29 = v158;
  if (qword_280302AD8 != -1)
  {
    swift_once();
  }

  v30 = sub_2692C77C0();
  __swift_project_value_buffer(v30, qword_280302D28);
  v31 = sub_2692C77B0();
  v32 = sub_2692C7A00();
  v33 = os_log_type_enabled(v31, v32);
  v34 = v159;
  if (v33)
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_269270000, v31, v32, "Intent is dismiss firing alarm intent, trying to handle().", v35, 2u);
    MEMORY[0x26D6368E0](v35, -1, -1);
  }

  sub_2692C7A20();
  v36 = v161;
  v37 = *&v161[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_osLogObject];
  sub_2692C7790();
  sub_2692C7780();
  (*(v160 + 1))(v34, v29);
  sub_269275A6C(&v36[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager], v163);
  v38 = v165;
  v160 = v164;
  __swift_project_boxed_opaque_existential_1(v163, v164);
  v39 = swift_allocObject();
  v40 = v157;
  v39[2] = v36;
  v39[3] = v40;
  v39[4] = sub_26928062C;
  v39[5] = v24;
  v41 = *(v38 + 40);

  v42 = v36;
  v43 = v40;
  v41(v25, sub_26928E898, v39, v160, v38);

  __swift_destroy_boxed_opaque_existential_1Tm(v163);

LABEL_100:
  _Block_release(a3);
  v99 = a3;
LABEL_101:
  _Block_release(v99);
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroy_14Tm()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

id sub_26928E654(id result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return result;
  }

  return result;
}

uint64_t sub_26928E660(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_54Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26928E7E4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t objectdestroy_45Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26928E840(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2692C7D60() & 1;
  }
}

BOOL Optional<A>.isRecurrent.getter(_BOOL8 result)
{
  if (result)
  {
    if (result >> 62)
    {
      v1 = sub_2692C7C60();
    }

    else
    {
      v1 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v1 != 0;
  }

  return result;
}

uint64_t sub_26928E91C()
{
  v0 = sub_2692C77C0();
  __swift_allocate_value_buffer(v0, qword_280302D60);
  v1 = __swift_project_value_buffer(v0, qword_280302D60);
  if (qword_280302B48 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280307B80);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_26928E9E4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v48 = a1;
  v47 = sub_2692C7360();
  v5 = *(v47 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v47, v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
LABEL_24:
    v10 = sub_2692C7C60();
    v11 = a2;
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = a2;
    if (v10)
    {
LABEL_3:
      v12 = 0;
      v45 = a3 & 0xFFFFFFFFFFFFFF8;
      v46 = a3 & 0xC000000000000001;
      v13 = (v5 + 1);
      v44 = v10;
      while (1)
      {
        if (v46)
        {
          v14 = MEMORY[0x26D6360D0](v12, a3);
        }

        else
        {
          if (v12 >= *(v45 + 16))
          {
            goto LABEL_23;
          }

          v14 = *(a3 + 8 * v12 + 32);
        }

        v15 = v14;
        v16 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v17 = [v14 alarmURL];
        sub_2692C7340();

        v18 = sub_2692C7330();
        v20 = v19;
        (*v13)(v9, v47);
        if (v18 == v48 && v20 == a2)
        {
          goto LABEL_10;
        }

        v21 = sub_2692C7D60();

        if (v21)
        {
          goto LABEL_12;
        }

        v23 = [v15 alarmIDString];
        v24 = sub_2692C7830();
        v5 = v25;

        if (v24 == v48 && v5 == v11)
        {
LABEL_10:
        }

        else
        {
          v26 = sub_2692C7D60();

          if ((v26 & 1) == 0)
          {

            goto LABEL_13;
          }
        }

LABEL_12:
        v5 = &v49;
        sub_2692C7BF0();
        v22 = *(v49 + 16);
        sub_2692C7C20();
        sub_2692C7C30();
        sub_2692C7C00();
LABEL_13:
        ++v12;
        a2 = v11;
        if (v16 == v44)
        {
          v27 = v49;
          if ((v49 & 0x8000000000000000) == 0)
          {
            goto LABEL_26;
          }

LABEL_31:
          while (1)
          {
            v29 = sub_2692C7C60();
            v28 = sub_2692C7C60();
            if (v29 != 1)
            {
              break;
            }

            if (!v28)
            {

              return 0;
            }

LABEL_28:
            if ((v27 & 0xC000000000000001) != 0)
            {
              goto LABEL_49;
            }

            if (*(v27 + 16))
            {
              goto LABEL_42;
            }

            __break(1u);
          }

          a2 = v11;
          goto LABEL_35;
        }
      }
    }
  }

  v27 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

LABEL_26:
  if ((v27 & 0x4000000000000000) != 0)
  {
    goto LABEL_31;
  }

  v28 = *(v27 + 16);
  if (v28 == 1)
  {
    goto LABEL_28;
  }

LABEL_35:
  if (v28)
  {
    if (qword_280302AE0 != -1)
    {
      swift_once();
    }

    v31 = sub_2692C77C0();
    __swift_project_value_buffer(v31, qword_280302D60);

    v32 = sub_2692C77B0();
    v33 = sub_2692C79F0();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = a2;
      a2 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v49 = v35;
      *a2 = 136315138;
      *(a2 + 4) = sub_26927C4DC(v48, v34, &v49);
      _os_log_impl(&dword_269270000, v32, v33, "Multiple alarms found by alarm id %s", a2, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x26D6368E0](v35, -1, -1);
      MEMORY[0x26D6368E0](a2, -1, -1);
    }

    if ((v27 & 0xC000000000000001) != 0)
    {
LABEL_49:
      v36 = MEMORY[0x26D6360D0](0, v27);
      goto LABEL_43;
    }

    if (*(v27 + 16))
    {
LABEL_42:
      v36 = *(v27 + 32);
LABEL_43:
      v30 = v36;

      return v30;
    }

    __break(1u);
    goto LABEL_51;
  }

  if (qword_280302AE0 != -1)
  {
LABEL_51:
    swift_once();
  }

  v38 = sub_2692C77C0();
  __swift_project_value_buffer(v38, qword_280302D60);

  v39 = sub_2692C77B0();
  v40 = sub_2692C79F0();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = a2;
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v49 = v43;
    *v42 = 136315138;
    *(v42 + 4) = sub_26927C4DC(v48, v41, &v49);
    _os_log_impl(&dword_269270000, v39, v40, "No alarm found by alarm id %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x26D6368E0](v43, -1, -1);
    MEMORY[0x26D6368E0](v42, -1, -1);
  }

  return 0;
}

void sub_26928EF70(char *a1, uint64_t a2, uint64_t a3)
{
  v80 = a3;
  v104 = a2;
  v82 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302CB0, &qword_2692C9718);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v97 = v78 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302CB8, &qword_2692C9720);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v96 = v78 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C60, &qword_2692C96E0);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8, v13);
  v84 = v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v106 = v78 - v17;
  v85 = sub_2692C73E0();
  v86 = *(v85 - 8);
  v18 = *(v86 + 64);
  v20 = MEMORY[0x28223BE20](v85, v19);
  v83 = v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v102 = v78 - v24;
  MEMORY[0x28223BE20](v23, v25);
  v101 = v78 - v26;
  v100 = sub_2692C7310();
  v90 = *(v100 - 8);
  v27 = *(v90 + 64);
  v29 = MEMORY[0x28223BE20](v100, v28);
  v103 = v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29, v31);
  v81 = v78 - v33;
  MEMORY[0x28223BE20](v32, v34);
  v36 = v78 - v35;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C68, &unk_2692CAA00);
  v37 = sub_2692C74E0();
  v38 = *(v37 - 8);
  v39 = *(v38 + 72);
  v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_2692C9680;
  v42 = *(v38 + 104);
  (v42)(v41 + v40, *MEMORY[0x277CC9980], v37);
  (v42)(v41 + v40 + v39, *MEMORY[0x277CC99A0], v37);
  v99 = (2 * v39);
  (v42)(v41 + v40 + 2 * v39, *MEMORY[0x277CC99B8], v37);
  v94 = 3 * v39;
  LODWORD(v98) = *MEMORY[0x277CC9988];
  v42(v41 + v40 + 3 * v39);
  LODWORD(v95) = *MEMORY[0x277CC9998];
  v42(v41 + v40 + 4 * v39);
  LODWORD(v93) = *MEMORY[0x277CC9968];
  v42(v41 + v40 + 5 * v39);
  sub_2692A5EEC(v41);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2692C7460();

  v79 = v36;
  v43 = sub_2692C72E0();
  if (v44)
  {
    v45 = 1;
  }

  else
  {
    v45 = v43;
  }

  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_2692C97D0;
  (v42)(v46 + v40, v93, v37);
  (v42)(v46 + v40 + v39, v95, v37);
  (v42)(v99 + v46 + v40, v98, v37);
  v47 = v86;
  v48 = v85;
  sub_2692A5EEC(v46);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2692C7460();

  sub_2692C72A0();
  sub_2692C72C0();
  v49 = v106;
  sub_2692C7480();
  v94 = *(v47 + 48);
  v95 = v47 + 48;
  if ((v94)(v49, 1, v48) != 1)
  {
    v51 = *(v47 + 32);
    v50 = v47 + 32;
    v89 = v51;
    v51(v101, v49, v48);
    v52 = 0;
    v93 = sub_2692C74F0();
    v53 = *(v93 - 8);
    v54 = *(v53 + 56);
    v91 = v53 + 56;
    v92 = v54;
    v55 = v80;
    v56 = v80 & 0xFFFFFFFFFFFFFF8;
    if (v80 < 0)
    {
      v57 = v80;
    }

    else
    {
      v57 = v80 & 0xFFFFFFFFFFFFFF8;
    }

    v78[1] = v57;
    v106 = (v80 & 0xC000000000000001);
    v58 = v50;
    v98 = (v50 - 24);
    v99 = (v90 + 8);
    v90 = v45;
    v87 = (v50 - 16);
    v88 = 0x8000000000000000 - v45;
    v59 = v84;
    v60 = v83;
    v86 = v58;
    while (1)
    {
      v92(v96, 1, 1, v93);
      v61 = sub_2692C7500();
      (*(*(v61 - 8) + 56))(v97, 1, 1, v61);
      sub_2692C72F0();
      sub_2692C7490();
      if ((v94)(v59, 1, v48) == 1)
      {
        break;
      }

      v89(v102, v59, v48);
      if (__OFADD__(v90, v52))
      {
        goto LABEL_36;
      }

      if (v52 == v88)
      {
        goto LABEL_37;
      }

      v105 = v52;
      v107 = MEMORY[0x277D84F90];
      if (v55 >> 62)
      {
        v62 = sub_2692C7C60();
        v63 = &off_279C54000;
        if (v62)
        {
LABEL_14:
          v64 = 0;
          while (1)
          {
            if (v106)
            {
              v67 = MEMORY[0x26D6360D0](v64, v55);
            }

            else
            {
              if (v64 >= *(v56 + 16))
              {
                goto LABEL_35;
              }

              v67 = *(v55 + 8 * v64 + 32);
            }

            v68 = v67;
            v69 = v64 + 1;
            if (__OFADD__(v64, 1))
            {
              break;
            }

            v70 = [v67 v63[253]];
            if ((MTAlarmRepeatScheduleFromDay() & ~v70) != 0 && [v68 v63[253]])
            {
            }

            else
            {
              sub_2692C7BF0();
              v65 = v55;
              v66 = *(v107 + 16);
              sub_2692C7C20();
              v55 = v65;
              v63 = &off_279C54000;
              sub_2692C7C30();
              sub_2692C7C00();
            }

            ++v64;
            if (v69 == v62)
            {
              v71 = v107;
              v59 = v84;
              v48 = v85;
              v60 = v83;
              goto LABEL_28;
            }
          }

          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          break;
        }
      }

      else
      {
        v62 = *(v56 + 16);
        v63 = &off_279C54000;
        if (v62)
        {
          goto LABEL_14;
        }
      }

      v71 = MEMORY[0x277D84F90];
LABEL_28:
      v72 = *v87;
      if (v105)
      {
        v73 = v102;
        v72(v60, v102, v48);
      }

      else
      {
        v72(v60, v82, v48);
        v73 = v102;
      }

      v74 = sub_26928FA40(v60, v104, v71);

      v75 = *v98;
      (*v98)(v60, v48);
      v75(v73, v48);
      v76 = *v99;
      (*v99)(v103, v100);
      if (!v74)
      {
        v52 = v105 + 1;
        if (v105 != 6)
        {
          continue;
        }
      }

      v75(v101, v48);
      v77 = v100;
      v76(v81, v100);
      v76(v79, v77);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_26928FA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v98 = a3;
  v113 = a2;
  v111 = a1;
  v3 = sub_2692C74E0();
  v4 = *(v3 - 8);
  v5 = v4;
  v6 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v7);
  v96 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302CB0, &qword_2692C9718);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v104 = &v92 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302CB8, &qword_2692C9720);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v102 = &v92 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C60, &qword_2692C96E0);
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v17 - 8, v19);
  v95 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v103 = &v92 - v24;
  MEMORY[0x28223BE20](v23, v25);
  v107 = (&v92 - v26);
  v110 = sub_2692C7310();
  v112 = *(v110 - 8);
  v27 = *(v112 + 64);
  v29 = MEMORY[0x28223BE20](v110, v28);
  v101 = &v92 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v92 - v32;
  v106 = sub_2692C73E0();
  v34 = *(v106 - 8);
  v35 = *(v34 + 64);
  v37 = MEMORY[0x28223BE20](v106, v36);
  v100 = &v92 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v37, v39);
  v109 = &v92 - v41;
  MEMORY[0x28223BE20](v40, v42);
  v43 = *(v34 + 16);
  v108 = &v92 - v44;
  v43();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C68, &unk_2692CAA00);
  v45 = *(v4 + 72);
  v46 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_2692C97E0;
  v48 = v47 + v46;
  v49 = *MEMORY[0x277CC9988];
  v97 = v5;
  v50 = *(v5 + 104);
  v50(v48, v49, v3);
  v50(v48 + v45, *MEMORY[0x277CC9998], v3);
  v50(v48 + 2 * v45, *MEMORY[0x277CC9968], v3);
  v51 = v34;
  v52 = v107;
  v50(v48 + 3 * v45, *MEMORY[0x277CC9980], v3);
  v94 = *MEMORY[0x277CC99A0];
  (v50)(v48 + 4 * v45);
  sub_2692A5EEC(v47);
  swift_setDeallocating();
  v99 = v3;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2692C7460();

  sub_2692C72A0();
  sub_2692C72C0();
  sub_2692C72D0();
  v105 = v33;
  v53 = v106;
  sub_2692C7480();
  v54 = *(v51 + 48);
  if (v54(v52, 1, v53) == 1)
  {
    v55 = v53;
    v56 = v110;
LABEL_5:
    sub_269290A58(v52);
    if (qword_280302AE0 != -1)
    {
      swift_once();
    }

    v65 = sub_2692C77C0();
    __swift_project_value_buffer(v65, qword_280302D60);
    v66 = sub_2692C77B0();
    v67 = sub_2692C79F0();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v114 = v69;
      *v68 = 136315138;
      v70 = v105;
      swift_beginAccess();
      sub_269290AC0();
      v71 = sub_2692C7D30();
      v73 = sub_26927C4DC(v71, v72, &v114);

      *(v68 + 4) = v73;
      _os_log_impl(&dword_269270000, v66, v67, "Unable to determine date from components: %s", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v69);
      MEMORY[0x26D6368E0](v69, -1, -1);
      MEMORY[0x26D6368E0](v68, -1, -1);

      (*(v112 + 8))(v70, v56);
    }

    else
    {

      (*(v112 + 8))(v105, v56);
    }

    v74 = 0;
    v75 = v108;
    goto LABEL_15;
  }

  v92 = v51;
  v57 = *(v51 + 32);
  v93 = v54;
  v107 = v57;
  v57(v109, v52, v53);
  v58 = sub_2692C74F0();
  (*(*(v58 - 8) + 56))(v102, 1, 1, v58);
  v59 = sub_2692C7500();
  (*(*(v59 - 8) + 56))(v104, 1, 1, v59);
  LOBYTE(v91) = 1;
  v90 = 0;
  v89 = 1;
  v88 = 0;
  v60 = v101;
  sub_2692C72F0();
  v61 = v103;
  v62 = v93;
  sub_2692C7490();
  v63 = *(v112 + 8);
  v64 = v110;
  v104 = (v112 + 8);
  v102 = v63;
  (v63)(v60, v110);
  v52 = v61;
  if (v62(v61, 1, v53) == 1)
  {
    v56 = v64;
    v51 = v92;
    v55 = v53;
    (*(v92 + 8))(v109, v53);
    goto LABEL_5;
  }

  v107(v100, v61, v53);
  sub_2692C7380();
  v51 = v92;
  v75 = v108;
  if (v76 != 0.0)
  {
LABEL_14:

    v81 = sub_269290B18(v80, v75);

    MEMORY[0x28223BE20](v82, v83);
    v84 = v100;
    v90 = v75;
    v91 = v100;
    v85 = sub_2692AC078(sub_269290E3C, &v88, v81);
    sub_2692906A0(v85, v75);
    v74 = v86;
    v87 = *(v51 + 8);
    v87(v109, v53);

    v55 = v53;
    v87(v84, v53);
    (v102)(v105, v110);
LABEL_15:
    (*(v51 + 8))(v75, v55);
    return v74;
  }

  v77 = v96;
  v50(v96, v94, v99);
  v78 = v95;
  sub_2692C74A0();
  (*(v97 + 8))(v77, v99);
  result = (v62)(v78, 1, v53);
  if (result != 1)
  {
    (*(v51 + 40))(v75, v78, v53);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_269290504(void **a1, uint64_t a2)
{
  v4 = sub_2692C73E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v18 - v12;
  v14 = *a1;
  (*(v5 + 16))(&v18 - v12, a2, v4);
  v15 = sub_2692C7390();
  v16 = *(v5 + 8);
  v16(v13, v4);
  v17 = [v14 nextFireDateAfterDate_];

  if (v17)
  {
    sub_2692C73C0();

    sub_2692C73D0();
    v16(v10, v4);
  }

  else
  {
    __break(1u);
  }
}

void sub_2692906A0(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v43 = sub_2692C73E0();
  v6 = *(v43 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v43, v8);
  v42 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = v34 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = v34 - v16;
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2692C7C60())
  {
    v41 = a1 & 0xC000000000000001;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x26D6360D0](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        return;
      }

      v19 = *(a1 + 32);
    }

    v44 = v19;
    v34[1] = v3;
    if (i == 1)
    {
      return;
    }

    v35 = a1 & 0xFFFFFFFFFFFFFF8;
    v36 = a1;
    v20 = (v6 + 16);
    v21 = (v6 + 8);
    v3 = 1;
    v6 = 0x1FAA82000uLL;
    v38 = i;
    v39 = a2;
    v37 = v20;
    v40 = v14;
    while (v41)
    {
      v22 = MEMORY[0x26D6360D0](v3, a1);
      v23 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_22;
      }

LABEL_15:
      v45 = v3;
      v46 = v23;
      v24 = v6;
      v25 = v22;
      v14 = v43;
      v48 = *v20;
      v48(v17, a2, v43);
      v26 = sub_2692C7390();
      v49 = *v21;
      v49(v17, v14);
      v47 = v25;
      v27 = [v25 (v24 + 3551)];

      if (!v27)
      {
        goto LABEL_29;
      }

      v28 = v40;
      sub_2692C73C0();

      v48(v17, a2, v14);
      v29 = sub_2692C7390();
      v30 = v49;
      v49(v17, v14);
      v31 = [v44 (v24 + 3551)];

      if (!v31)
      {
        goto LABEL_30;
      }

      v32 = v42;
      sub_2692C73C0();

      v33 = sub_2692C73D0();
      v30(v32, v14);
      v30(v28, v14);
      a1 = v36;
      if (v33 == -1)
      {

        v44 = v47;
        v3 = v46;
        a2 = v39;
        v20 = v37;
        v6 = 0x1FAA82000;
        if (v46 == v38)
        {
          return;
        }
      }

      else
      {

        v3 = v45 + 1;
        a2 = v39;
        v20 = v37;
        v6 = 0x1FAA82000;
        if (v46 == v38)
        {
          return;
        }
      }
    }

    if ((v3 & 0x8000000000000000) != 0)
    {
      goto LABEL_23;
    }

    if (v3 >= *(v35 + 16))
    {
      goto LABEL_24;
    }

    v22 = *(a1 + 8 * v3 + 32);
    v23 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_15;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }
}

uint64_t sub_269290A58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C60, &qword_2692C96E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_269290AC0()
{
  result = qword_280302C78;
  if (!qword_280302C78)
  {
    sub_2692C7310();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302C78);
  }

  return result;
}

uint64_t sub_269290B18(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v33 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C60, &qword_2692C96E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v32 = v25 - v8;
  v9 = sub_2692C73E0();
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v9, v12);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2692C7C60())
  {
    v16 = 0;
    v30 = a1 & 0xFFFFFFFFFFFFFF8;
    v31 = a1 & 0xC000000000000001;
    v28 = (v10 + 1);
    v29 = (v10 + 2);
    v25[1] = v3;
    v26 = (v10 + 4);
    v27 = (v10 + 7);
    while (1)
    {
      if (v31)
      {
        v17 = MEMORY[0x26D6360D0](v16, a1);
      }

      else
      {
        if (v16 >= *(v30 + 16))
        {
          goto LABEL_15;
        }

        v17 = *(a1 + 8 * v16 + 32);
      }

      v10 = v17;
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v19 = a1;
      (*v29)(v14, v33, v9);
      v20 = sub_2692C7390();
      (*v28)(v14, v9);
      v21 = [v10 nextFireDateAfterDate_];

      if (v21)
      {
        sub_2692C73C0();

        v22 = v32;
        (*v26)(v32, v14, v9);
        (*v27)(v22, 0, 1, v9);
        sub_269290A58(v22);
        v3 = &v34;
        sub_2692C7BF0();
        v23 = *(v34 + 16);
        sub_2692C7C20();
        sub_2692C7C30();
        sub_2692C7C00();
      }

      else
      {
        v3 = v32;
        (*v27)(v32, 1, 1, v9);
        sub_269290A58(v3);
      }

      a1 = v19;
      ++v16;
      if (v18 == i)
      {
        return v34;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_269290E3C(void **a1)
{
  v2 = *(v1 + 24);
  sub_269290504(a1, *(v1 + 16));
  return v3 & 1;
}

id sub_269290E5C()
{
  v1 = v0;
  v2 = sub_2692C75B0();
  v117 = *(v2 - 8);
  v118 = v2;
  v3 = *(v117 + 64);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v114 = v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v115 = v112 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302D90, &unk_2692C97F0);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9 - 8, v11);
  v116 = v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v113 = v112 - v16;
  MEMORY[0x28223BE20](v15, v17);
  v120 = v112 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  v20 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v19 - 8, v21);
  v119 = v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v121 = v112 - v26;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v30 = v112 - v29;
  v32 = MEMORY[0x28223BE20](v28, v31);
  v34 = v112 - v33;
  v36 = MEMORY[0x28223BE20](v32, v35);
  v122 = v112 - v37;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v41 = v112 - v40;
  MEMORY[0x28223BE20](v39, v42);
  v44 = v112 - v43;
  v45 = [objc_allocWithZone(type metadata accessor for CreateAlarmIntent()) init];
  v46 = [v1 alarmSearch];
  if (!v46 || (v47 = v46, v48 = [v46 label], v47, !v48))
  {
    v48 = 0;
  }

  [v45 setLabel_];

  v49 = [v1 alarmSearch];
  if (v49)
  {
    v50 = v49;
    v51 = [v49 time];

    if (v51)
    {
      sub_2692C7280();

      v52 = sub_2692C7310();
      (*(*(v52 - 8) + 56))(v41, 0, 1, v52);
    }

    else
    {
      v52 = sub_2692C7310();
      (*(*(v52 - 8) + 56))(v41, 1, 1, v52);
    }

    sub_26928E660(v41, v44, &qword_280302C48, &qword_2692C9780);
    sub_2692C7310();
    v55 = *(v52 - 8);
    v54 = 0;
    if ((*(v55 + 48))(v44, 1, v52) != 1)
    {
      v54 = sub_2692C7270();
      (*(v55 + 8))(v44, v52);
    }
  }

  else
  {
    v53 = sub_2692C7310();
    (*(*(v53 - 8) + 56))(v44, 1, 1, v53);
    v54 = 0;
  }

  [v45 setTime_];

  v56 = [v1 alarmSearch];
  if (v56)
  {
    v57 = v56;
    v58 = [v56 &off_279C545F8];

    if (v58)
    {
      sub_2692C7280();

      v59 = 0;
    }

    else
    {
      v59 = 1;
    }

    v61 = sub_2692C7310();
    (*(*(v61 - 8) + 56))(v34, v59, 1, v61);
    sub_26928E660(v34, v122, &qword_280302C48, &qword_2692C9780);
  }

  else
  {
    v60 = sub_2692C7310();
    (*(*(v60 - 8) + 56))(v122, 1, 1, v60);
  }

  v62 = [v1 alarmSearch];
  if (!v62 || (v63 = v62, v64 = [v62 isMeridianInferred], v63, !v64))
  {
    sub_2692822D8();
    v64 = sub_2692C7A40();
  }

  sub_26927CE40(v122, v30, &qword_280302C48, &qword_2692C9780);
  v65 = sub_2692C7310();
  v66 = *(v65 - 8);
  v67 = *(v66 + 48);
  if (v67(v30, 1, v65) == 1)
  {
    goto LABEL_21;
  }

  v68 = sub_2692C7290();
  v70 = v69;
  v71 = *(v66 + 8);
  v71(v30, v65);
  if (v70)
  {
    goto LABEL_23;
  }

  v30 = v121;
  sub_26927CE40(v122, v121, &qword_280302C48, &qword_2692C9780);
  if (v67(v30, 1, v65) == 1)
  {
LABEL_21:
    sub_26927CEA8(v30, &qword_280302C48, &qword_2692C9780);
LABEL_23:
    if (qword_280302AE8 != -1)
    {
      swift_once();
    }

    v72 = sub_2692C77C0();
    __swift_project_value_buffer(v72, qword_280302D78);
    v73 = sub_2692C77B0();
    v74 = sub_2692C7A00();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_269270000, v73, v74, "AlarmSearch contained invalid time - unable to produce CreateAlarmIntent from ChangeAlarmStatusIntent", v75, 2u);
      MEMORY[0x26D6368E0](v75, -1, -1);
    }

    else
    {
    }

LABEL_28:
    sub_26927CEA8(v122, &qword_280302C48, &qword_2692C9780);
    return 0;
  }

  v77 = v30;
  v112[1] = sub_2692C72B0();
  v79 = v78;
  v71(v77, v65);
  if (v79)
  {
    goto LABEL_23;
  }

  v80 = [v64 BOOLValue];
  v112[0] = v68;
  if (v80 && v68 < 13)
  {
    v81 = v117;
    v82 = v118;
    v83 = v120;
    (*(v117 + 56))(v120, 1, 1, v118);
  }

  else
  {
    v81 = v117;
    v84 = MEMORY[0x277D56298];
    if (v68 >= 12)
    {
      v84 = MEMORY[0x277D562A0];
    }

    v85 = v113;
    v82 = v118;
    (*(v117 + 104))(v113, *v84, v118);
    (*(v81 + 56))(v85, 0, 1, v82);
    v86 = v85;
    v83 = v120;
    sub_26928E660(v86, v120, &qword_280302D90, &unk_2692C97F0);
  }

  v87 = v83;
  v88 = v116;
  sub_26927CE40(v87, v116, &qword_280302D90, &unk_2692C97F0);
  if ((*(v81 + 48))(v88, 1, v82) == 1)
  {
    sub_26927CEA8(v88, &qword_280302D90, &unk_2692C97F0);
    v89 = sub_2692C75E0();
    v90 = *(v89 + 48);
    v91 = *(v89 + 52);
    swift_allocObject();
    sub_2692C75D0();
    v92 = sub_2692C7600();
    v93 = *(v92 + 48);
    v94 = *(v92 + 52);
    swift_allocObject();
    sub_2692C75A0();
  }

  else
  {
    v95 = v82;
    v96 = v115;
    v97 = v95;
    (*(v81 + 32))(v115);
    (*(v81 + 16))(v114, v96, v97);
    v98 = sub_2692C75E0();
    v99 = *(v98 + 48);
    v100 = *(v98 + 52);
    swift_allocObject();
    sub_2692C75C0();
    v101 = sub_2692C7600();
    v102 = *(v101 + 48);
    v103 = *(v101 + 52);
    swift_allocObject();
    sub_2692C75A0();
    (*(v117 + 8))(v96, v118);
  }

  v104 = sub_2692C7620();

  if (!v104)
  {
    if (qword_280302AE8 != -1)
    {
      swift_once();
    }

    v107 = sub_2692C77C0();
    __swift_project_value_buffer(v107, qword_280302D78);
    v108 = sub_2692C77B0();
    v109 = sub_2692C7A00();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      *v110 = 0;
      _os_log_impl(&dword_269270000, v108, v109, "Inference unable to provide inferred time to convert ChangeAlarmStatusIntent to CreateAlarmIntent", v110, 2u);
      MEMORY[0x26D6368E0](v110, -1, -1);
    }

    sub_26927CEA8(v120, &qword_280302D90, &unk_2692C97F0);
    goto LABEL_28;
  }

  sub_2692C75F0();
  v105 = v119;
  if (v67(v119, 1, v65) == 1)
  {
    v106 = 0;
  }

  else
  {
    v111 = v105;
    v106 = sub_2692C7270();
    v71(v111, v65);
  }

  [v45 setTime_];

  [v45 setIsMeridianInferred_];

  sub_26927CEA8(v120, &qword_280302D90, &unk_2692C97F0);
  sub_26927CEA8(v122, &qword_280302C48, &qword_2692C9780);
  return v45;
}

Swift::Bool __swiftcall ChangeAlarmStatusIntent.isDismissRequest(alarms:)(Swift::OpaquePointer alarms)
{
  v19 = MEMORY[0x277D84F90];
  v3 = alarms._rawValue >> 62;
  if (alarms._rawValue >> 62)
  {
LABEL_19:
    v4 = sub_2692C7C60();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((alarms._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v3 = alarms._rawValue & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((alarms._rawValue & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x26D6360D0](v5, alarms._rawValue);
        }

        else
        {
          if (v5 >= *((alarms._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v6 = *(alarms._rawValue + v5 + 4);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        v9 = [v6 firing];
        v1 = sub_2692822D8();
        v10 = sub_2692C7A50();
        v11 = v10;
        if (v9)
        {
          v1 = sub_2692C7A70();

          if (v1)
          {
            sub_2692C7BF0();
            v12 = *(v19 + 16);
            sub_2692C7C20();
            sub_2692C7C30();
            v1 = &v19;
            sub_2692C7C00();
            goto LABEL_6;
          }
        }

        else
        {
        }

LABEL_6:
        ++v5;
        if (v8 == v4)
        {
          v3 = v18;
          v13 = v19;
          v1 = v17;
          if ((v19 & 0x8000000000000000) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_30;
        }
      }
    }
  }

  v13 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_30;
  }

LABEL_21:
  if ((v13 & 0x4000000000000000) != 0)
  {
LABEL_30:
    v14 = sub_2692C7C60();
  }

  else
  {
    v14 = *(v13 + 16);
  }

  if ([v1 operation] != 2)
  {
    return 0;
  }

  if (v3)
  {
    v15 = sub_2692C7C60();
  }

  else
  {
    v15 = *((alarms._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v14 == v15;
}

uint64_t sub_269291C8C()
{
  v0 = sub_2692C77C0();
  __swift_allocate_value_buffer(v0, qword_280302D78);
  v1 = __swift_project_value_buffer(v0, qword_280302D78);
  if (qword_280302B48 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280307B80);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_269291D54()
{
  v0 = sub_2692C77C0();
  __swift_allocate_value_buffer(v0, qword_280302D98);
  v1 = __swift_project_value_buffer(v0, qword_280302D98);
  if (qword_280302B40 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280303368);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id SnoozeAlarmIntentHandler.__allocating_init(manager:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_269294C7C(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

id SnoozeAlarmIntentHandler.init(manager:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v5, v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = sub_269294B80(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v10;
}

id SnoozeAlarmIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SnoozeAlarmIntentHandler.init()()
{
  if (qword_280302AF0 != -1)
  {
    swift_once();
  }

  v0 = sub_2692C77C0();
  __swift_project_value_buffer(v0, qword_280302D98);
  v1 = sub_2692C77B0();
  v2 = sub_2692C7A00();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_269270000, v1, v2, "SnoozeAlarmIntentHandler init().", v3, 2u);
    MEMORY[0x26D6368E0](v3, -1, -1);
  }

  if (qword_280302B28 != -1)
  {
    swift_once();
  }

  sub_269275A6C(&qword_280303238, &v18);
  v4 = type metadata accessor for SiriAlarmManagerImpl();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  sub_2692C7610();
  sub_2692C74B0();
  v8 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_sleepAlarmManager;
  type metadata accessor for SiriSleepAlarmManager();
  v9 = swift_allocObject();
  *(v7 + v8) = v9;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  v10 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_osLogObject;
  if (qword_280302B50 != -1)
  {
    swift_once();
  }

  v11 = qword_280303380;
  *(v7 + v10) = qword_280303380;
  sub_269275A30(&v18, v7 + OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_alarmManager);
  v12 = type metadata accessor for SnoozeAlarmIntentHandler();
  v13 = objc_allocWithZone(v12);
  v19 = v4;
  v20 = &protocol witness table for SiriAlarmManagerImpl;
  *&v18 = v7;
  *&v13[OBJC_IVAR____TtC21SiriTimeAlarmInternal24SnoozeAlarmIntentHandler_osLogObject] = v11;
  sub_269275A6C(&v18, &v13[OBJC_IVAR____TtC21SiriTimeAlarmInternal24SnoozeAlarmIntentHandler_siriAlarmManager]);
  v17.receiver = v13;
  v17.super_class = v12;
  v14 = v11;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(&v18);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v15;
}

void sub_269292224(void *a1, void (*a2)(char *))
{
  if (qword_280302AF0 != -1)
  {
    swift_once();
  }

  v4 = sub_2692C77C0();
  __swift_project_value_buffer(v4, qword_280302D98);
  v5 = sub_2692C77B0();
  v6 = sub_2692C7A00();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_269270000, v5, v6, "Calling SnoozeAlarmIntentHandler.confirm().", v7, 2u);
    MEMORY[0x26D6368E0](v7, -1, -1);
  }

  v8 = [a1 remoteDeviceId];
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = v8;
  v10 = sub_2692C7830();
  v12 = v11;

  v13 = [a1 skipConfirmation];
  sub_26927CC94(0, &qword_280302CC0, 0x277CCABB0);
  v14 = sub_2692C7A50();
  v15 = v14;
  if (!v13)
  {

    goto LABEL_11;
  }

  v16 = sub_2692C7A70();

  if ((v16 & 1) == 0)
  {
LABEL_11:

LABEL_12:
    v22 = [objc_allocWithZone(type metadata accessor for SnoozeAlarmHalIntentResponse()) init];
    v23 = OBJC_IVAR___SnoozeAlarmHalIntentResponse_code;
    swift_beginAccess();
    v24 = 4;
    goto LABEL_13;
  }

  v17 = sub_2692C77B0();
  v18 = sub_2692C7A00();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25 = v20;
    *v19 = 136315138;
    v21 = sub_26927C4DC(v10, v12, &v25);

    *(v19 + 4) = v21;
    _os_log_impl(&dword_269270000, v17, v18, "SnoozeAlarmHalIntentHandler returning needs confirm intent since the firing alarm is on remote device %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x26D6368E0](v20, -1, -1);
    MEMORY[0x26D6368E0](v19, -1, -1);
  }

  else
  {
  }

  v22 = [objc_allocWithZone(type metadata accessor for SnoozeAlarmHalIntentResponse()) init];
  v23 = OBJC_IVAR___SnoozeAlarmHalIntentResponse_code;
  swift_beginAccess();
  v24 = 3;
LABEL_13:
  *&v22[v23] = v24;
  [v22 setUserActivity_];
  a2(v22);
}

uint64_t sub_2692925DC(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  v3 = sub_2692C77A0();
  v2[31] = v3;
  v4 = *(v3 - 8);
  v2[32] = v4;
  v5 = *(v4 + 64) + 15;
  v2[33] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C50, &unk_2692C96A0) - 8) + 64) + 15;
  v2[34] = swift_task_alloc();
  v7 = sub_2692C7360();
  v2[35] = v7;
  v8 = *(v7 - 8);
  v2[36] = v8;
  v9 = *(v8 + 64) + 15;
  v2[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269292730, 0, 0);
}

uint64_t sub_269292730()
{
  v91 = v0;
  if (qword_280302AF0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 232);
  v2 = sub_2692C77C0();
  *(v0 + 304) = __swift_project_value_buffer(v2, qword_280302D98);
  v3 = v1;
  v4 = sub_2692C77B0();
  v5 = sub_2692C7A00();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 232);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v90 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_2692C7830();
    v13 = v12;

    v14 = sub_26927C4DC(v11, v13, &v90);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_269270000, v4, v5, "Calling SnoozeAlarmIntentHandler.handle() for intent: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D6368E0](v8, -1, -1);
    MEMORY[0x26D6368E0](v7, -1, -1);
  }

  v15 = [*(v0 + 232) remoteExecutionId];
  v16 = *(v0 + 232);
  if (v15)
  {
    v17 = v15;
    v18 = sub_2692C7830();
    v20 = v19;

    *(v0 + 312) = v18;
    *(v0 + 320) = v20;
    v21 = [v16 alarmId];
    if (!v21)
    {

      goto LABEL_14;
    }

    v22 = *(v0 + 280);
    v23 = *(v0 + 288);
    v24 = *(v0 + 272);
    v25 = v21;
    sub_2692C7830();

    sub_2692C7350();

    if ((*(v23 + 48))(v24, 1, v22) == 1)
    {
      v26 = *(v0 + 272);

      sub_269294D94(v26);
LABEL_14:
      v56 = sub_2692C77B0();
      v57 = sub_2692C79F0();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_269270000, v56, v57, "Failed to get a valid alarmId or alarmURL for SAAlarmSnooze command", v58, 2u);
        MEMORY[0x26D6368E0](v58, -1, -1);
      }

      v59 = sub_2692C7760();
      v60 = MEMORY[0x277D61908];
      *(v0 + 40) = v59;
      *(v0 + 48) = v60;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      *boxed_opaque_existential_1 = 0x4120657A6F6F6E53;
      boxed_opaque_existential_1[1] = 0xEF4449206D72616CLL;
      v62 = *MEMORY[0x277D61878];
      v63 = sub_2692C7710();
      (*(*(v63 - 8) + 104))(boxed_opaque_existential_1, v62, v63);
      (*(*(v59 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v59);
      sub_2692C76B0();
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
      v64 = [objc_allocWithZone(type metadata accessor for SnoozeAlarmHalIntentResponse()) init];
      v65 = OBJC_IVAR___SnoozeAlarmHalIntentResponse_code;
      swift_beginAccess();
      *&v64[v65] = 5;
      [v64 setUserActivity_];
      v66 = *(v0 + 296);
      v68 = *(v0 + 264);
      v67 = *(v0 + 272);

      v69 = *(v0 + 8);

      return v69(v64);
    }

    v72 = *(v0 + 288);
    v71 = *(v0 + 296);
    v73 = *(v0 + 280);
    (*(v72 + 32))(v71, *(v0 + 272), v73);
    v74 = [objc_allocWithZone(MEMORY[0x277D47168]) init];
    *(v0 + 328) = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302DC0, &qword_2692C9820);
    v75 = *(v72 + 72);
    v76 = (*(v72 + 80) + 32) & ~*(v72 + 80);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_2692C9800;
    (*(v72 + 16))(v77 + v76, v71, v73);
    v78 = sub_2692C7910();

    [v74 setAlarmIds_];

    sub_2692C7580();
    v79 = *(v0 + 80);
    v80 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v79);
    v81 = *(MEMORY[0x277D5BFA8] + 4);
    v82 = swift_task_alloc();
    *(v0 + 336) = v82;
    v83 = sub_26927CC94(0, &qword_280302DC8, 0x277D471B0);
    *v82 = v0;
    v82[1] = sub_2692930E8;

    return MEMORY[0x2821BB680](v74, v18, v20, v79, v83, v80);
  }

  else
  {
    v27 = [*(v0 + 232) alarmId];
    if (v27)
    {
      v28 = v27;
      v29 = *(v0 + 232);
      v30 = sub_2692C77B0();
      v31 = sub_2692C7A00();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = *(v0 + 232);
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v90 = v34;
        *v33 = 136315138;
        v35 = [v32 description];
        v36 = sub_2692C7830();
        v38 = v37;

        v39 = sub_26927C4DC(v36, v38, &v90);

        *(v33 + 4) = v39;
        _os_log_impl(&dword_269270000, v30, v31, "Found a remote firing alarm: %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        MEMORY[0x26D6368E0](v34, -1, -1);
        MEMORY[0x26D6368E0](v33, -1, -1);
      }

      v41 = *(v0 + 256);
      v40 = *(v0 + 264);
      v43 = *(v0 + 240);
      v42 = *(v0 + 248);
      type metadata accessor for SiriAlarm();
      v44 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v45 = sub_2692C7820();
      v46 = [v44 initWithIdentifier:v28 displayString:v45];
      *(v0 + 352) = v46;

      sub_2692C7A20();
      v47 = *(v43 + OBJC_IVAR____TtC21SiriTimeAlarmInternal24SnoozeAlarmIntentHandler_osLogObject);
      sub_2692C7790();
      sub_2692C7780();
      (*(v41 + 8))(v40, v42);
      v48 = swift_task_alloc();
      *(v0 + 360) = v48;
      *(v48 + 16) = v43;
      *(v48 + 24) = v46;
      v49 = *(MEMORY[0x277D859E0] + 4);
      v50 = swift_task_alloc();
      *(v0 + 368) = v50;
      v51 = type metadata accessor for SnoozeAlarmHalIntentResponse();
      *v50 = v0;
      v50[1] = sub_26929340C;
      v52 = sub_269294D8C;
      v53 = 0x6C41657A6F6F6E73;
      v54 = 0xEF293A5F286D7261;
      v55 = v0 + 216;
    }

    else
    {
      v84 = sub_2692C77B0();
      v85 = sub_2692C7A00();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        *v86 = 0;
        _os_log_impl(&dword_269270000, v84, v85, "There's no remote alarm to snooze, try to find it locally.", v86, 2u);
        MEMORY[0x26D6368E0](v86, -1, -1);
      }

      v87 = *(v0 + 240);

      v48 = swift_task_alloc();
      *(v0 + 376) = v48;
      *(v48 + 16) = v87;
      v88 = *(MEMORY[0x277D859E0] + 4);
      v89 = swift_task_alloc();
      *(v0 + 384) = v89;
      v51 = type metadata accessor for SnoozeAlarmHalIntentResponse();
      *v89 = v0;
      v89[1] = sub_2692935B0;
      v52 = sub_269294D84;
      v53 = 0x6928656C646E6168;
      v54 = 0xEF293A746E65746ELL;
      v55 = v0 + 208;
    }

    return MEMORY[0x2822007B8](v55, 0, 0, v53, v54, v52, v48, v51);
  }
}

uint64_t sub_2692930E8(void *a1)
{
  v4 = *(*v2 + 336);
  v7 = *v2;
  *(*v2 + 344) = v1;

  if (v1)
  {
    v5 = sub_26929374C;
  }

  else
  {

    v5 = sub_269293204;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_269293204()
{
  v23 = v0;
  v1 = v0[40];
  v2 = v0[38];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);

  v3 = sub_2692C77B0();
  v4 = sub_2692C7A00();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[40];
  if (v5)
  {
    v7 = v0[39];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315138;
    v10 = sub_26927C4DC(v7, v6, &v22);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_269270000, v3, v4, "Execute SAAlarmSnooze on remote device %s succeeded!", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x26D6368E0](v9, -1, -1);
    MEMORY[0x26D6368E0](v8, -1, -1);
  }

  else
  {
  }

  v11 = v0[41];
  v13 = v0[36];
  v12 = v0[37];
  v14 = v0[35];
  v15 = [objc_allocWithZone(type metadata accessor for SnoozeAlarmHalIntentResponse()) init];
  v16 = OBJC_IVAR___SnoozeAlarmHalIntentResponse_code;
  swift_beginAccess();
  *&v15[v16] = 4;
  [v15 setUserActivity_];

  (*(v13 + 8))(v12, v14);
  v17 = v0[37];
  v18 = v0[33];
  v19 = v0[34];

  v20 = v0[1];

  return v20(v15);
}

uint64_t sub_26929340C()
{
  v1 = *(*v0 + 368);
  v2 = *(*v0 + 360);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_269293524, 0, 0);
}

uint64_t sub_269293524()
{
  v1 = *(v0 + 216);

  v2 = *(v0 + 296);
  v4 = *(v0 + 264);
  v3 = *(v0 + 272);

  v5 = *(v0 + 8);

  return v5(v1);
}

uint64_t sub_2692935B0()
{
  v1 = *(*v0 + 384);
  v2 = *(*v0 + 376);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2692936C8, 0, 0);
}

uint64_t sub_2692936C8()
{
  v1 = v0[26];
  v2 = v0[37];
  v4 = v0[33];
  v3 = v0[34];

  v5 = v0[1];

  return v5(v1);
}

uint64_t sub_26929374C()
{
  v36 = v0;
  v1 = v0[43];
  v2 = v0[40];
  v3 = v0[38];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);

  v4 = v1;
  v5 = sub_2692C77B0();
  v6 = sub_2692C79F0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[43];
    v9 = v0[39];
    v8 = v0[40];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v35 = v11;
    *v10 = 136315394;
    v12 = sub_26927C4DC(v9, v8, &v35);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2080;
    v0[28] = v7;
    v13 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302DD0, &qword_2692C9828);
    v14 = sub_2692C7840();
    v16 = sub_26927C4DC(v14, v15, &v35);

    *(v10 + 14) = v16;
    _os_log_impl(&dword_269270000, v5, v6, "Execute SAAlarmSnooze on remote device %s failed with error %s!", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6368E0](v11, -1, -1);
    MEMORY[0x26D6368E0](v10, -1, -1);
  }

  else
  {
    v17 = v0[40];
  }

  v18 = v0[43];
  v19 = v0[41];
  v21 = v0[36];
  v20 = v0[37];
  v22 = v0[35];
  v23 = sub_2692C7760();
  v24 = MEMORY[0x277D61908];
  v0[15] = v23;
  v0[16] = v24;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 12);
  *boxed_opaque_existential_1 = sub_2692C7320();
  v26 = *MEMORY[0x277D618D0];
  v27 = sub_2692C7750();
  (*(*(v27 - 8) + 104))(boxed_opaque_existential_1, v26, v27);
  (*(*(v23 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D61900], v23);
  sub_2692C76B0();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v28 = [objc_allocWithZone(type metadata accessor for SnoozeAlarmHalIntentResponse()) init];
  v29 = OBJC_IVAR___SnoozeAlarmHalIntentResponse_code;
  swift_beginAccess();
  *&v28[v29] = 5;
  [v28 setUserActivity_];

  (*(v21 + 8))(v20, v22);
  v30 = v0[37];
  v31 = v0[33];
  v32 = v0[34];

  v33 = v0[1];

  return v33(v28);
}

uint64_t sub_269293AA8(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302DE0, &unk_2692C9890);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v15[-1] - v8;
  sub_269275A6C(a2 + OBJC_IVAR____TtC21SiriTimeAlarmInternal24SnoozeAlarmIntentHandler_siriAlarmManager, v15);
  (*(v5 + 16))(v9, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v9, v4);
  *(v11 + ((v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v12 = a2;
  static AlarmIntentHandlerUtils.getFiringAlarms(alarmManager:completion:)(v15, sub_26929573C, v11);

  return __swift_destroy_boxed_opaque_existential_1Tm(v15);
}

uint64_t sub_269293C28(unint64_t a1, uint64_t a2, char *a3)
{
  v6 = sub_2692C77A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302DE0, &unk_2692C9890);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v39 - v16;
  if (a1 >> 62)
  {
    if (sub_2692C7C60())
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v40 = v6;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v18 = a3;
      v19 = MEMORY[0x26D6360D0](0, a1);
      goto LABEL_6;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v18 = a3;
      v19 = *(a1 + 32);
LABEL_6:
      v20 = v19;
      (*(v13 + 16))(v17, a2, v12);
      v21 = (*(v13 + 80) + 16) & ~*(v13 + 80);
      v22 = swift_allocObject();
      (*(v13 + 32))(v22 + v21, v17, v12);
      sub_2692C7A20();
      v23 = v18;
      v24 = *&v18[OBJC_IVAR____TtC21SiriTimeAlarmInternal24SnoozeAlarmIntentHandler_osLogObject];
      sub_2692C7790();
      sub_2692C7780();
      (*(v7 + 8))(v11, v40);
      sub_269275A6C(&v18[OBJC_IVAR____TtC21SiriTimeAlarmInternal24SnoozeAlarmIntentHandler_siriAlarmManager], v42);
      v25 = v43;
      v26 = v44;
      __swift_project_boxed_opaque_existential_1(v42, v43);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_2692C9430;
      *(v27 + 32) = v20;
      v28 = swift_allocObject();
      v28[2] = v23;
      v28[3] = sub_2692958F0;
      v28[4] = v22;
      v28[5] = v20;
      v29 = *(v26 + 48);
      v30 = v20;
      v31 = v23;

      v29(v27, sub_2692958E8, v28, v25, v26);

      return __swift_destroy_boxed_opaque_existential_1Tm(v42);
    }

    __break(1u);
    goto LABEL_14;
  }

  if (qword_280302AF0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v33 = sub_2692C77C0();
  __swift_project_value_buffer(v33, qword_280302D98);
  v34 = sub_2692C77B0();
  v35 = sub_2692C7A00();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_269270000, v34, v35, "No firing alarm to snooze when handle().", v36, 2u);
    MEMORY[0x26D6368E0](v36, -1, -1);
  }

  v37 = [objc_allocWithZone(type metadata accessor for SnoozeAlarmHalIntentResponse()) init];
  v38 = OBJC_IVAR___SnoozeAlarmHalIntentResponse_code;
  swift_beginAccess();
  *&v37[v38] = 100;
  [v37 setUserActivity_];
  v41 = v37;
  return sub_2692C79A0();
}

uint64_t sub_26929424C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_269294310;

  return sub_2692925DC(v6);
}

uint64_t sub_269294310(void *a1)
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

void sub_269294474(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, void *a5)
{
  v9 = sub_2692C77A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 8);
  sub_2692C7A10();
  v16 = *(a2 + OBJC_IVAR____TtC21SiriTimeAlarmInternal24SnoozeAlarmIntentHandler_osLogObject);
  sub_2692C7790();
  sub_2692C7780();
  (*(v10 + 8))(v14, v9);
  if (v15)
  {
    if (qword_280302AF0 != -1)
    {
      swift_once();
    }

    v17 = sub_2692C77C0();
    __swift_project_value_buffer(v17, qword_280302D98);
    v18 = a5;
    v19 = sub_2692C77B0();
    v20 = sub_2692C79F0();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v33 = v22;
      *v21 = 136315138;
      v23 = v18;
      v24 = [v23 description];
      v25 = sub_2692C7830();
      v27 = v26;

      v28 = sub_26927C4DC(v25, v27, &v33);

      *(v21 + 4) = v28;
      _os_log_impl(&dword_269270000, v19, v20, "Can NOT handle Snooze alarm: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x26D6368E0](v22, -1, -1);
      MEMORY[0x26D6368E0](v21, -1, -1);
    }

    v29 = [objc_allocWithZone(type metadata accessor for SnoozeAlarmHalIntentResponse()) init];
    v30 = OBJC_IVAR___SnoozeAlarmHalIntentResponse_code;
    swift_beginAccess();
    v31 = 5;
  }

  else
  {
    v29 = [objc_allocWithZone(type metadata accessor for SnoozeAlarmHalIntentResponse()) init];
    v30 = OBJC_IVAR___SnoozeAlarmHalIntentResponse_code;
    swift_beginAccess();
    v31 = 4;
  }

  *&v29[v30] = v31;
  [v29 setUserActivity_];
  a3(v29);
}

uint64_t sub_2692947A4(uint64_t a1, char *a2, void *a3)
{
  v29 = a3;
  v5 = sub_2692C77A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v30[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302DE0, &unk_2692C9890);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v30[-1] - v15;
  (*(v12 + 16))(&v30[-1] - v15, a1, v11);
  v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v18 = swift_allocObject();
  (*(v12 + 32))(v18 + v17, v16, v11);
  sub_2692C7A20();
  v19 = *&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24SnoozeAlarmIntentHandler_osLogObject];
  sub_2692C7790();
  sub_2692C7780();
  (*(v6 + 8))(v10, v5);
  sub_269275A6C(&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24SnoozeAlarmIntentHandler_siriAlarmManager], v30);
  v20 = v31;
  v21 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2692C9430;
  v23 = v29;
  *(v22 + 32) = v29;
  v24 = swift_allocObject();
  v24[2] = a2;
  v24[3] = sub_26929572C;
  v24[4] = v18;
  v24[5] = v23;
  v25 = *(v21 + 48);
  v26 = v23;
  v27 = a2;

  v25(v22, sub_269295730, v24, v20, v21);

  return __swift_destroy_boxed_opaque_existential_1Tm(v30);
}

uint64_t sub_269294AB0(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302DE0, &unk_2692C9890);
  return sub_2692C79A0();
}

id SnoozeAlarmIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SnoozeAlarmIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_269294B80(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a3;
  v14[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v8 = OBJC_IVAR____TtC21SiriTimeAlarmInternal24SnoozeAlarmIntentHandler_osLogObject;
  if (qword_280302B50 != -1)
  {
    swift_once();
  }

  v9 = qword_280303380;
  *&a2[v8] = qword_280303380;
  sub_269275A6C(v14, &a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24SnoozeAlarmIntentHandler_siriAlarmManager]);
  v13.receiver = a2;
  v13.super_class = type metadata accessor for SnoozeAlarmIntentHandler();
  v10 = v9;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return v11;
}

id sub_269294C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(type metadata accessor for SnoozeAlarmIntentHandler());
  (*(v7 + 16))(v10, a1, a3);
  return sub_269294B80(v10, v11, a3, a4);
}

uint64_t sub_269294D94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C50, &unk_2692C96A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of SnoozeAlarmIntentHandler.handle(intent:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_269294F8C;

  return v8(a1);
}

uint64_t sub_269294F8C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_269295088()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26929513C;

  return sub_26929424C(v2, v3, v4);
}

uint64_t sub_26929513C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_269295230()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2692958EC;

  return sub_2692AAE34(v2, v3, v5);
}

uint64_t objectdestroy_13Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_269295330(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2692958EC;

  return sub_2692AAF1C(a1, v4, v5, v7);
}

void sub_2692953FC(void *a1, uint64_t a2)
{
  if (qword_280302AF0 != -1)
  {
    swift_once();
  }

  v4 = sub_2692C77C0();
  __swift_project_value_buffer(v4, qword_280302D98);
  v5 = sub_2692C77B0();
  v6 = sub_2692C7A00();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_269270000, v5, v6, "Calling SnoozeAlarmIntentHandler.confirm().", v7, 2u);
    MEMORY[0x26D6368E0](v7, -1, -1);
  }

  v8 = [a1 remoteDeviceId];
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = v8;
  v10 = sub_2692C7830();
  v12 = v11;

  v13 = [a1 skipConfirmation];
  sub_26927CC94(0, &qword_280302CC0, 0x277CCABB0);
  v14 = sub_2692C7A50();
  v15 = v14;
  if (!v13)
  {

    goto LABEL_11;
  }

  v16 = sub_2692C7A70();

  if ((v16 & 1) == 0)
  {
LABEL_11:

LABEL_12:
    v22 = [objc_allocWithZone(type metadata accessor for SnoozeAlarmHalIntentResponse()) init];
    v23 = OBJC_IVAR___SnoozeAlarmHalIntentResponse_code;
    swift_beginAccess();
    v24 = 4;
    goto LABEL_13;
  }

  v17 = sub_2692C77B0();
  v18 = sub_2692C7A00();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25 = v20;
    *v19 = 136315138;
    v21 = sub_26927C4DC(v10, v12, &v25);

    *(v19 + 4) = v21;
    _os_log_impl(&dword_269270000, v17, v18, "SnoozeAlarmHalIntentHandler returning needs confirm intent since the firing alarm is on remote device %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x26D6368E0](v20, -1, -1);
    MEMORY[0x26D6368E0](v19, -1, -1);
  }

  else
  {
  }

  v22 = [objc_allocWithZone(type metadata accessor for SnoozeAlarmHalIntentResponse()) init];
  v23 = OBJC_IVAR___SnoozeAlarmHalIntentResponse_code;
  swift_beginAccess();
  v24 = 3;
LABEL_13:
  *&v22[v23] = v24;
  [v22 setUserActivity_];
  (*(a2 + 16))(a2, v22);
}

uint64_t sub_26929573C(unint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302DE0, &unk_2692C9890) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_269293C28(a1, v1 + v4, v5);
}

uint64_t objectdestroy_22Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302DE0, &unk_2692C9890);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

SiriTimeAlarmInternal::AlarmNLv4Constants::AlarmVerb_optional __swiftcall AlarmNLv4Constants.AlarmVerb.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2692C7C70();

  v5 = 15;
  if (v3 < 0xF)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AlarmNLv4Constants.AlarmVerb.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x6978456B63656863;
      break;
    case 2:
      result = 0x657461657263;
      break;
    case 3:
      result = 0x6574656C6564;
      break;
    case 4:
      result = 0x656C6261736964;
      break;
    case 5:
      result = 0x656C62616E65;
      break;
    case 6:
      result = 1684104562;
      break;
    case 7:
      result = 0x74736575716572;
      break;
    case 8:
      result = 0x657A6F6F6E73;
      break;
    case 9:
      result = 0x736972616D6D7573;
      break;
    case 0xA:
      result = 0x657461647075;
      break;
    case 0xB:
      result = 0x627265566F6ELL;
      break;
    case 0xC:
      result = 0x65736F6C63;
      break;
    case 0xD:
      result = 0x656D75736572;
      break;
    case 0xE:
      result = 1886352499;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_269295ABC(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = AlarmNLv4Constants.AlarmVerb.rawValue.getter();
  v4 = v3;
  if (v2 == AlarmNLv4Constants.AlarmVerb.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2692C7D60();
  }

  return v7 & 1;
}

unint64_t sub_269295B5C()
{
  result = qword_280302DE8;
  if (!qword_280302DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302DE8);
  }

  return result;
}

uint64_t sub_269295BB0()
{
  v1 = *v0;
  sub_2692C7DE0();
  AlarmNLv4Constants.AlarmVerb.rawValue.getter();
  sub_2692C7890();

  return sub_2692C7E00();
}

uint64_t sub_269295C18()
{
  v2 = *v0;
  AlarmNLv4Constants.AlarmVerb.rawValue.getter();
  sub_2692C7890();
}

uint64_t sub_269295C7C()
{
  v1 = *v0;
  sub_2692C7DE0();
  AlarmNLv4Constants.AlarmVerb.rawValue.getter();
  sub_2692C7890();

  return sub_2692C7E00();
}

uint64_t sub_269295CEC@<X0>(uint64_t *a1@<X8>)
{
  result = AlarmNLv4Constants.AlarmVerb.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_269295D18()
{
  result = qword_280302DF0;
  if (!qword_280302DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280302DF8, &qword_2692C9940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302DF0);
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

uint64_t getEnumTagSinglePayload for AlarmNLv4Constants.AlarmVerb(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlarmNLv4Constants.AlarmVerb(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_269295FF4(uint64_t a1)
{
  v2 = sub_2692969EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_269296030(uint64_t a1)
{
  v2 = sub_2692969EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26929606C(uint64_t a1)
{
  v2 = sub_269296BA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2692960A8(uint64_t a1)
{
  v2 = sub_269296BA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2692960E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2692C7D60();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_269296164(uint64_t a1)
{
  v2 = sub_269296AA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2692961A0(uint64_t a1)
{
  v2 = sub_269296AA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2692961DC()
{
  v1 = 0x6C65536D72616C61;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C754D6D72616C61;
  }
}

uint64_t sub_26929624C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26929EF5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_269296280(uint64_t a1)
{
  v2 = sub_269296998();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2692962BC(uint64_t a1)
{
  v2 = sub_269296998();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriAlarmSnippetModels.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302E00, &qword_2692C99F0);
  v54 = *(v2 - 8);
  v55 = v2;
  v3 = *(v54 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v53 = &v45 - v5;
  v51 = type metadata accessor for AlarmConfirmationModel(0);
  v6 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51, v7);
  v52 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302E08, &qword_2692C99F8);
  v49 = *(v9 - 8);
  v50 = v9;
  v10 = *(v49 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v48 = &v45 - v12;
  v47 = type metadata accessor for AlarmSelectorModel(0);
  v13 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47, v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302E10, &qword_2692C9A00);
  v46 = *(v17 - 8);
  v18 = *(v46 + 64);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v45 - v20;
  v22 = type metadata accessor for SiriAlarmSnippetModels(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22, v24);
  v26 = (&v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302E18, &qword_2692C9A08);
  v57 = *(v27 - 8);
  v58 = v27;
  v28 = *(v57 + 64);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v45 - v30;
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_269296998();
  sub_2692C7E20();
  sub_26929A474(v56, v26, type metadata accessor for SiriAlarmSnippetModels);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_269296A40(v26, v16, type metadata accessor for AlarmSelectorModel);
      v61 = 1;
      sub_269296AA8();
      v34 = v48;
      v35 = v58;
      sub_2692C7CE0();
      sub_269296AFC(&qword_280302E40, type metadata accessor for AlarmSelectorModel);
      v36 = v50;
      sub_2692C7D10();
      (*(v49 + 8))(v34, v36);
      v37 = type metadata accessor for AlarmSelectorModel;
      v38 = v16;
    }

    else
    {
      v42 = v52;
      sub_269296A40(v26, v52, type metadata accessor for AlarmConfirmationModel);
      v62 = 2;
      sub_2692969EC();
      v43 = v53;
      v35 = v58;
      sub_2692C7CE0();
      sub_269296AFC(&qword_280302E30, type metadata accessor for AlarmConfirmationModel);
      v44 = v55;
      sub_2692C7D10();
      (*(v54 + 8))(v43, v44);
      v37 = type metadata accessor for AlarmConfirmationModel;
      v38 = v42;
    }

    sub_269296B44(v38, v37);
    return (*(v57 + 8))(v31, v35);
  }

  else
  {
    v39 = *v26;
    v60 = 0;
    sub_269296BA4();
    v40 = v58;
    sub_2692C7CE0();
    v59 = v39;
    sub_269296BF8();
    sub_2692C7D10();
    (*(v46 + 8))(v21, v17);
    (*(v57 + 8))(v31, v40);
  }
}

unint64_t sub_269296998()
{
  result = qword_280302E20;
  if (!qword_280302E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302E20);
  }

  return result;
}

unint64_t sub_2692969EC()
{
  result = qword_280302E28;
  if (!qword_280302E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302E28);
  }

  return result;
}

uint64_t sub_269296A40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_269296AA8()
{
  result = qword_280302E38;
  if (!qword_280302E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302E38);
  }

  return result;
}

uint64_t sub_269296AFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_269296B44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_269296BA4()
{
  result = qword_280302E48;
  if (!qword_280302E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302E48);
  }

  return result;
}

unint64_t sub_269296BF8()
{
  result = qword_280302E50;
  if (!qword_280302E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302E50);
  }

  return result;
}

uint64_t SiriAlarmSnippetModels.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302E58, &qword_2692C9A10);
  v4 = *(v3 - 8);
  v84 = v3;
  v85 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v88 = &v74 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302E60, &qword_2692C9A18);
  v9 = *(v8 - 8);
  v82 = v8;
  v83 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v87 = &v74 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302E68, &qword_2692C9A20);
  v14 = *(v13 - 8);
  v80 = v13;
  v81 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v86 = &v74 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302E70, &qword_2692C9A28);
  v90 = *(v18 - 8);
  v91 = v18;
  v19 = *(v90 + 64);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v74 - v21;
  v23 = type metadata accessor for SiriAlarmSnippetModels(0);
  v24 = *(*(v23 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v28 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v26, v29);
  v32 = &v74 - v31;
  v34 = MEMORY[0x28223BE20](v30, v33);
  v36 = &v74 - v35;
  MEMORY[0x28223BE20](v34, v37);
  v39 = &v74 - v38;
  v41 = a1[3];
  v40 = a1[4];
  v93 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v41);
  sub_269296998();
  v42 = v92;
  sub_2692C7E10();
  if (!v42)
  {
    v75 = v36;
    v76 = v32;
    v43 = v86;
    v44 = v87;
    v77 = v28;
    v78 = v39;
    v46 = v88;
    v45 = v89;
    v79 = 0;
    v92 = v23;
    v47 = v91;
    v48 = sub_2692C7CD0();
    v49 = v48;
    v50 = *(v48 + 16);
    if (!v50 || ((v51 = *(v48 + 32), v50 == 1) ? (v52 = v51 == 3) : (v52 = 1), v52))
    {
      v53 = sub_2692C7BD0();
      swift_allocError();
      v54 = v22;
      v56 = v55;
      v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302E78, &qword_2692C9A30) + 48);
      *v56 = v92;
      sub_2692C7C90();
      sub_2692C7BC0();
      (*(*(v53 - 8) + 104))(v56, *MEMORY[0x277D84160], v53);
      swift_willThrow();
      (*(v90 + 8))(v54, v47);
LABEL_17:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1Tm(v93);
    }

    if (*(v48 + 32))
    {
      if (v51 == 1)
      {
        v96 = 1;
        sub_269296AA8();
        v58 = v44;
        v59 = v79;
        sub_2692C7C80();
        if (v59)
        {
          goto LABEL_16;
        }

        v65 = v45;
        type metadata accessor for AlarmSelectorModel(0);
        sub_269296AFC(&qword_280302E88, type metadata accessor for AlarmSelectorModel);
        v68 = v76;
        v69 = v82;
        sub_2692C7CC0();
        v70 = v90;
        (*(v83 + 8))(v58, v69);
        (*(v70 + 8))(v22, v47);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v73 = v68;
        goto LABEL_21;
      }

      v97 = 2;
      sub_2692969EC();
      v66 = v79;
      sub_2692C7C80();
      if (!v66)
      {
        v65 = v45;
        v87 = v49;
        type metadata accessor for AlarmConfirmationModel(0);
        sub_269296AFC(&qword_280302E80, type metadata accessor for AlarmConfirmationModel);
        v71 = v77;
        v72 = v84;
        sub_2692C7CC0();
        (*(v85 + 8))(v46, v72);
        (*(v90 + 8))(v22, v91);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v73 = v71;
LABEL_21:
        v64 = v78;
        sub_269296A40(v73, v78, type metadata accessor for SiriAlarmSnippetModels);
        goto LABEL_22;
      }
    }

    else
    {
      v95 = 0;
      sub_269296BA4();
      v60 = v79;
      sub_2692C7C80();
      if (!v60)
      {
        sub_2692974EC();
        v61 = v80;
        sub_2692C7CC0();
        (*(v81 + 8))(v43, v61);
        (*(v90 + 8))(v22, v47);
        swift_unknownObjectRelease();
        v62 = v75;
        *v75 = v94;
        swift_storeEnumTagMultiPayload();
        v63 = v62;
        v64 = v78;
        sub_269296A40(v63, v78, type metadata accessor for SiriAlarmSnippetModels);
        v65 = v45;
LABEL_22:
        sub_269296A40(v64, v65, type metadata accessor for SiriAlarmSnippetModels);
        return __swift_destroy_boxed_opaque_existential_1Tm(v93);
      }
    }

LABEL_16:
    (*(v90 + 8))(v22, v47);
    goto LABEL_17;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v93);
}

unint64_t sub_2692974EC()
{
  result = qword_280302E90;
  if (!qword_280302E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302E90);
  }

  return result;
}

uint64_t AlarmSnippetModel.alarms.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_2692975F4()
{
  sub_2692C7DE0();
  MEMORY[0x26D636320](0);
  return sub_2692C7E00();
}

uint64_t sub_269297638()
{
  sub_2692C7DE0();
  MEMORY[0x26D636320](0);
  return sub_2692C7E00();
}

uint64_t sub_26929768C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736D72616C61 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2692C7D60();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_269297710(uint64_t a1)
{
  v2 = sub_269297934();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26929774C(uint64_t a1)
{
  v2 = sub_269297934();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AlarmSnippetModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302E98, &qword_2692C9A38);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_269297934();

  sub_2692C7E20();
  v12[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EA8, &qword_2692C9A40);
  sub_269297B60(&qword_280302EB0, &qword_280302EB8);
  sub_2692C7D10();

  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_269297934()
{
  result = qword_280302EA0;
  if (!qword_280302EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302EA0);
  }

  return result;
}

uint64_t AlarmSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EC0, &qword_2692C9A48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_269297934();
  sub_2692C7E10();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EA8, &qword_2692C9A40);
    sub_269297B60(&qword_280302EC8, &qword_280302ED0);
    sub_2692C7CC0();
    (*(v6 + 8))(v10, v5);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_269297B60(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280302EA8, &qword_2692C9A40);
    sub_269296AFC(a2, type metadata accessor for SiriAlarmSnippetModel);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SiriAlarmSnippetModel.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SiriAlarmSnippetModel.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SiriAlarmSnippetModel.isSleepAlarm.getter()
{
  v0 = *(type metadata accessor for SiriAlarmSnippetModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302ED8, &qword_2692C9A50);
  sub_2692C7540();
  return v2;
}

uint64_t sub_269297D08@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(type metadata accessor for SiriAlarmSnippetModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302ED8, &qword_2692C9A50);
  result = sub_2692C7540();
  *a1 = v4;
  return result;
}

uint64_t sub_269297D70(char *a1)
{
  v3 = *a1;
  v1 = *(type metadata accessor for SiriAlarmSnippetModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302ED8, &qword_2692C9A50);
  return sub_2692C7550();
}

uint64_t SiriAlarmSnippetModel.isSleepAlarm.setter()
{
  v0 = *(type metadata accessor for SiriAlarmSnippetModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302ED8, &qword_2692C9A50);
  return sub_2692C7550();
}

uint64_t (*SiriAlarmSnippetModel.isSleepAlarm.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for SiriAlarmSnippetModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302ED8, &qword_2692C9A50);
  *(v3 + 32) = sub_2692C7530();
  return sub_26929F7A4;
}

uint64_t SiriAlarmSnippetModel.formattedTimeString.getter()
{
  v0 = *(type metadata accessor for SiriAlarmSnippetModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  sub_2692C7540();
  return v2;
}

uint64_t sub_269297F18@<X0>(void *a1@<X8>)
{
  v2 = *(type metadata accessor for SiriAlarmSnippetModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  result = sub_2692C7540();
  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t sub_269297F80(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for SiriAlarmSnippetModel(0) + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  return sub_2692C7550();
}

uint64_t SiriAlarmSnippetModel.formattedTimeString.setter()
{
  v0 = *(type metadata accessor for SiriAlarmSnippetModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  return sub_2692C7550();
}

uint64_t (*SiriAlarmSnippetModel.formattedTimeString.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for SiriAlarmSnippetModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  *(v3 + 32) = sub_2692C7530();
  return sub_26929F7A4;
}

uint64_t SiriAlarmSnippetModel.alarmDate.getter()
{
  v0 = *(type metadata accessor for SiriAlarmSnippetModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE8, &unk_2692C9A60);
  return sub_2692C7540();
}

uint64_t sub_269298138()
{
  v0 = *(type metadata accessor for SiriAlarmSnippetModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE8, &unk_2692C9A60);
  return sub_2692C7540();
}

uint64_t sub_269298190(uint64_t a1)
{
  v2 = sub_2692C73E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v3 + 16);
  v12(&v14 - v10, a1, v2);
  v12(v8, v11, v2);
  LODWORD(a1) = *(type metadata accessor for SiriAlarmSnippetModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE8, &unk_2692C9A60);
  sub_2692C7550();
  return (*(v3 + 8))(v11, v2);
}

uint64_t SiriAlarmSnippetModel.alarmDate.setter(uint64_t a1)
{
  v2 = sub_2692C73E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v7 = *(type metadata accessor for SiriAlarmSnippetModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE8, &unk_2692C9A60);
  sub_2692C7550();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SiriAlarmSnippetModel.alarmDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for SiriAlarmSnippetModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE8, &unk_2692C9A60);
  *(v3 + 32) = sub_2692C7530();
  return sub_26929F7A4;
}

uint64_t SiriAlarmSnippetModel.enabled.getter()
{
  v0 = *(type metadata accessor for SiriAlarmSnippetModel(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302ED8, &qword_2692C9A50);
  sub_2692C7540();
  return v2;
}

uint64_t sub_2692984EC@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(type metadata accessor for SiriAlarmSnippetModel(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302ED8, &qword_2692C9A50);
  result = sub_2692C7540();
  *a1 = v4;
  return result;
}

uint64_t sub_269298554(char *a1)
{
  v3 = *a1;
  v1 = *(type metadata accessor for SiriAlarmSnippetModel(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302ED8, &qword_2692C9A50);
  return sub_2692C7550();
}

uint64_t SiriAlarmSnippetModel.enabled.setter()
{
  v0 = *(type metadata accessor for SiriAlarmSnippetModel(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302ED8, &qword_2692C9A50);
  return sub_2692C7550();
}

uint64_t (*SiriAlarmSnippetModel.enabled.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for SiriAlarmSnippetModel(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302ED8, &qword_2692C9A50);
  *(v3 + 32) = sub_2692C7530();
  return sub_26929F7A4;
}

uint64_t SiriAlarmSnippetModel.labelForSnippetWithRecurrence.getter()
{
  v1 = (v0 + *(type metadata accessor for SiriAlarmSnippetModel(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SiriAlarmSnippetModel.labelForSnippetWithRecurrence.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SiriAlarmSnippetModel(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SiriAlarmSnippetModel.sleepWakeUpLabel.getter()
{
  v1 = (v0 + *(type metadata accessor for SiriAlarmSnippetModel(0) + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SiriAlarmSnippetModel.sleepWakeUpLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SiriAlarmSnippetModel(0) + 40));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SiriAlarmSnippetModel.sleepDisabledLabel.getter()
{
  v1 = (v0 + *(type metadata accessor for SiriAlarmSnippetModel(0) + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SiriAlarmSnippetModel.sleepDisabledLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SiriAlarmSnippetModel(0) + 44));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SiriAlarmSnippetModel.nonSpecificDateTimeDescriptive.getter()
{
  v1 = (v0 + *(type metadata accessor for SiriAlarmSnippetModel(0) + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SiriAlarmSnippetModel.nonSpecificDateTimeDescriptive.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SiriAlarmSnippetModel(0) + 48));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SiriAlarmSnippetModel.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SiriAlarmSnippetModel(0) + 52);
  v4 = sub_2692C7430();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SiriAlarmSnippetModel.locale.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SiriAlarmSnippetModel(0) + 52);
  v4 = sub_2692C7430();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SiriAlarmSnippetModel.punchoutURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SiriAlarmSnippetModel(0) + 56);

  return sub_269298B6C(v3, a1);
}

uint64_t sub_269298B6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C50, &unk_2692C96A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SiriAlarmSnippetModel.punchoutURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SiriAlarmSnippetModel(0) + 56);

  return sub_269298C20(a1, v3);
}

uint64_t sub_269298C20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C50, &unk_2692C96A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SiriAlarmSnippetModel.init(id:isSleepAlarm:formattedTimeString:alarmDate:enabled:labelForSnippetWithRecurrence:sleepWakeUpLabel:sleepDisabledLabel:nonSpecificDateTimeDescriptive:locale:punchoutURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v58 = a7;
  v54 = a5;
  v55 = a6;
  v53 = a4;
  v66 = a17;
  v67 = a18;
  v64 = a8;
  v65 = a16;
  v62 = a14;
  v63 = a15;
  v60 = a12;
  v61 = a13;
  v59 = a11;
  v57 = a10;
  v22 = sub_2692C73E0();
  v23 = *(v22 - 8);
  v24 = v23[8];
  v26 = MEMORY[0x28223BE20](v22, v25);
  v28 = &v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v53 - v30;
  v32 = type metadata accessor for SiriAlarmSnippetModel(0);
  v33 = v32[14];
  v56 = v33;
  v34 = sub_2692C7360();
  (*(*(v34 - 8) + 56))(&a9[v33], 1, 1, v34);
  *a9 = a1;
  *(a9 + 1) = a2;
  v35 = v32[5];
  LOBYTE(v68) = a3;
  sub_2692C7520();
  v36 = v32[6];
  v68 = v53;
  v69 = v54;
  sub_2692C7520();
  v37 = v23[2];
  v38 = v55;
  v37(v31, v55, v22);
  v39 = v32[7];
  v37(v28, v31, v22);
  sub_2692C7520();
  v40 = v23[1];
  v40(v31, v22);
  v41 = v32[8];
  LOBYTE(v68) = v58;
  sub_2692C7520();
  v40(v38, v22);
  v42 = &a9[v32[9]];
  v43 = v57;
  *v42 = v64;
  *(v42 + 1) = v43;
  v44 = &a9[v32[10]];
  v45 = v60;
  *v44 = v59;
  *(v44 + 1) = v45;
  v46 = &a9[v32[11]];
  v47 = v62;
  *v46 = v61;
  *(v46 + 1) = v47;
  v48 = &a9[v32[12]];
  v49 = v65;
  *v48 = v63;
  *(v48 + 1) = v49;
  v50 = v32[13];
  v51 = sub_2692C7430();
  (*(*(v51 - 8) + 32))(&a9[v50], v66, v51);
  return sub_269298C20(v67, &a9[v56]);
}

uint64_t sub_269298FC4(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 25705;
    v7 = 0xD000000000000013;
    v8 = 0x7461446D72616C61;
    if (a1 != 3)
    {
      v8 = 0x64656C62616E65;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x417065656C537369;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD00000000000001ELL;
    v2 = 0x656C61636F6CLL;
    if (a1 != 9)
    {
      v2 = 0x74756F68636E7570;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD00000000000001DLL;
    v4 = 0xD000000000000010;
    if (a1 != 6)
    {
      v4 = 0xD000000000000012;
    }

    if (a1 != 5)
    {
      v3 = v4;
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

uint64_t sub_269299144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26929F08C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_269299178(uint64_t a1)
{
  v2 = sub_269299674();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2692991B4(uint64_t a1)
{
  v2 = sub_269299674();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriAlarmSnippetModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EF0, &qword_2692C9A70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v35 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_269299674();
  sub_2692C7E20();
  v12 = *v3;
  v13 = v3[1];
  v46 = 0;
  sub_2692C7D00();
  if (!v2)
  {
    v14 = type metadata accessor for SiriAlarmSnippetModel(0);
    v15 = *(v14 + 20);
    v45 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302ED8, &qword_2692C9A50);
    sub_26929A330(&qword_280302F00);
    sub_2692C7D10();
    v35 = v14;
    v16 = *(v14 + 24);
    v44 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
    sub_2692996C8(&qword_280302F08);
    sub_2692C7D10();
    v17 = v35[7];
    v43 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE8, &unk_2692C9A60);
    sub_26929A3A0(&qword_280302F10);
    sub_2692C7D10();
    v18 = v35;
    v19 = v35[8];
    v42 = 4;
    sub_2692C7D10();
    v20 = (v3 + v18[9]);
    v21 = *v20;
    v22 = v20[1];
    v41 = 5;
    sub_2692C7D00();
    v23 = (v3 + v18[10]);
    v24 = *v23;
    v25 = v23[1];
    v40 = 6;
    sub_2692C7D00();
    v26 = (v3 + v18[11]);
    v27 = *v26;
    v28 = v26[1];
    v39 = 7;
    sub_2692C7D00();
    v29 = (v3 + v18[12]);
    v30 = *v29;
    v31 = v29[1];
    v38 = 8;
    sub_2692C7D00();
    v32 = v18[13];
    v37 = 9;
    sub_2692C7430();
    sub_269296AFC(&qword_280302F28, MEMORY[0x277CC9788]);
    sub_2692C7D10();
    v33 = v35[14];
    v36 = 10;
    sub_2692C7360();
    sub_269296AFC(&qword_280302F30, MEMORY[0x277CC9260]);
    sub_2692C7CF0();
  }

  return (*(v6 + 8))(v10, v5);
}

unint64_t sub_269299674()
{
  result = qword_280302EF8;
  if (!qword_280302EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302EF8);
  }

  return result;
}

uint64_t sub_2692996C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280302EE0, &qword_2692C9A58);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SiriAlarmSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C50, &unk_2692C96A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v79 = v72 - v6;
  v7 = sub_2692C7430();
  v86 = *(v7 - 8);
  v87 = v7;
  v8 = *(v86 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v80 = v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE8, &unk_2692C9A60);
  v82 = *(v84 - 8);
  v11 = *(v82 + 64);
  MEMORY[0x28223BE20](v84, v12);
  v81 = v72 - v13;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  v83 = *(v85 - 8);
  v14 = *(v83 + 64);
  MEMORY[0x28223BE20](v85, v15);
  v90 = v72 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302ED8, &qword_2692C9A50);
  v88 = *(v17 - 8);
  v89 = v17;
  v18 = *(v88 + 64);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = v72 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302F38, &qword_2692C9A78);
  v91 = *(v26 - 8);
  v92 = v26;
  v27 = *(v91 + 64);
  MEMORY[0x28223BE20](v26, v28);
  v30 = v72 - v29;
  v31 = type metadata accessor for SiriAlarmSnippetModel(0);
  v32 = *(*(v31 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v31, v33);
  v36 = (v72 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = *(v34 + 56);
  v38 = sub_2692C7360();
  v39 = *(*(v38 - 8) + 56);
  v95 = v37;
  v96 = v36;
  v39(v36 + v37, 1, 1, v38);
  v40 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_269299674();
  v93 = v30;
  v41 = v94;
  sub_2692C7E10();
  if (v41)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_269294D94(v96 + v95);
  }

  else
  {
    v42 = v25;
    v43 = v90;
    v76 = v22;
    v75 = v38;
    v94 = a1;
    v77 = v31;
    v107 = 0;
    v44 = sub_2692C7CB0();
    v45 = v96;
    *v96 = v44;
    v45[1] = v46;
    v106 = 1;
    v47 = sub_26929A330(&qword_280302F40);
    v48 = v42;
    v49 = v89;
    sub_2692C7CC0();
    v74 = v47;
    v50 = v45 + v77[5];
    v73 = *(v88 + 32);
    v73(v50, v48, v49);
    v105 = 2;
    sub_2692996C8(&qword_280302F48);
    v51 = v43;
    v52 = v85;
    sub_2692C7CC0();
    v72[1] = 0;
    v53 = v77;
    (*(v83 + 32))(v96 + v77[6], v51, v52);
    v104 = 3;
    sub_26929A3A0(&qword_280302F50);
    v54 = v81;
    v55 = v84;
    sub_2692C7CC0();
    v56 = v96;
    (*(v82 + 32))(v96 + v53[7], v54, v55);
    v103 = 4;
    v57 = v76;
    sub_2692C7CC0();
    v73(v56 + v53[8], v57, v49);
    v102 = 5;
    v58 = sub_2692C7CB0();
    v59 = (v56 + v53[9]);
    *v59 = v58;
    v59[1] = v60;
    v101 = 6;
    v61 = sub_2692C7CB0();
    v62 = (v56 + v53[10]);
    *v62 = v61;
    v62[1] = v63;
    v100 = 7;
    v64 = sub_2692C7CB0();
    LODWORD(v90) = 1;
    v65 = (v56 + v53[11]);
    *v65 = v64;
    v65[1] = v66;
    v99 = 8;
    v67 = sub_2692C7CB0();
    v68 = (v56 + v53[12]);
    *v68 = v67;
    v68[1] = v69;
    v98 = 9;
    sub_269296AFC(&qword_280302F58, MEMORY[0x277CC9788]);
    sub_2692C7CC0();
    (*(v86 + 32))(v96 + v77[13], v80, v87);
    v97 = 10;
    sub_269296AFC(&qword_280302F60, MEMORY[0x277CC9260]);
    sub_2692C7CA0();
    (*(v91 + 8))(v93, v92);
    v70 = v96;
    sub_269298C20(v79, v96 + v95);
    sub_26929A474(v70, v78, type metadata accessor for SiriAlarmSnippetModel);
    __swift_destroy_boxed_opaque_existential_1Tm(v94);
    return sub_269296B44(v70, type metadata accessor for SiriAlarmSnippetModel);
  }
}

uint64_t sub_26929A330(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280302ED8, &qword_2692C9A50);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26929A3A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280302EE8, &unk_2692C9A60);
    v3 = MEMORY[0x277CC9578];
    sub_269296AFC(&qword_280302F18, MEMORY[0x277CC9578]);
    sub_269296AFC(&qword_280302F20, v3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26929A474(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t AlarmSelectorModel.alarms.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t (*AlarmSelectorModel.header.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for AlarmSelectorModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  *(v3 + 32) = sub_2692C7530();
  return sub_26929A62C;
}

uint64_t AlarmSelectorModel.init(alarms:header:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v2 = *(type metadata accessor for AlarmSelectorModel(0) + 20);
  return sub_2692C7520();
}

uint64_t sub_26929A6A8()
{
  v1 = *v0;
  sub_2692C7DE0();
  MEMORY[0x26D636320](v1);
  return sub_2692C7E00();
}

uint64_t sub_26929A6F0()
{
  v1 = *v0;
  sub_2692C7DE0();
  MEMORY[0x26D636320](v1);
  return sub_2692C7E00();
}

uint64_t sub_26929A734()
{
  if (*v0)
  {
    return 0x726564616568;
  }

  else
  {
    return 0x736D72616C61;
  }
}

uint64_t sub_26929A760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736D72616C61 && a2 == 0xE600000000000000;
  if (v6 || (sub_2692C7D60() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726564616568 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2692C7D60();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_26929A840(uint64_t a1)
{
  v2 = sub_26929AACC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26929A87C(uint64_t a1)
{
  v2 = sub_26929AACC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AlarmSelectorModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302F68, &qword_2692C9A80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v14[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26929AACC();
  sub_2692C7E20();
  v15 = *v3;
  v14[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302F78, &qword_2692C9A88);
  sub_26929AB20(&qword_280302F80, &qword_280302F88);
  sub_2692C7D10();
  if (!v2)
  {
    v12 = *(type metadata accessor for AlarmSelectorModel(0) + 20);
    v14[6] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
    sub_2692996C8(&qword_280302F08);
    sub_2692C7D10();
  }

  return (*(v6 + 8))(v10, v5);
}

unint64_t sub_26929AACC()
{
  result = qword_280302F70;
  if (!qword_280302F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302F70);
  }

  return result;
}

uint64_t sub_26929AB20(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280302F78, &qword_2692C9A88);
    sub_269296AFC(a2, type metadata accessor for SiriAlarmItemModel);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26929ABDC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AlarmSelectorModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  v29 = *(v32 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v32, v5);
  v7 = &v25 - v6;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302F90, &qword_2692C9A90);
  v31 = *(v33 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v33, v9);
  v11 = &v25 - v10;
  v12 = type metadata accessor for AlarmSelectorModel(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26929AACC();
  sub_2692C7E10();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v28 = a1;
  v18 = v16;
  v20 = v31;
  v19 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302F78, &qword_2692C9A88);
  v35 = 0;
  sub_26929AB20(&qword_280302F98, &qword_280302FA0);
  v21 = v33;
  sub_2692C7CC0();
  v26 = v18;
  v27 = v36;
  *v18 = v36;
  v34 = 1;
  sub_2692996C8(&qword_280302F48);
  sub_2692C7CC0();
  (*(v20 + 8))(v11, v21);
  v22 = *(v12 + 20);
  v23 = v26;
  (*(v29 + 32))(&v26[v22], v7, v19);
  sub_26929A474(v23, v30, type metadata accessor for AlarmSelectorModel);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  return sub_269296B44(v23, type metadata accessor for AlarmSelectorModel);
}

uint64_t sub_26929B014(uint64_t (*a1)(void))
{
  v1 = *(a1(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  sub_2692C7540();
  return v3;
}

uint64_t sub_26929B070@<X0>(uint64_t (*a1)(void)@<X3>, void *a2@<X8>)
{
  v3 = *(a1(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  result = sub_2692C7540();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_26929B0DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = *a1;
  v8 = a1[1];
  v5 = *(a5(0) + 20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  return sub_2692C7550();
}

uint64_t sub_26929B168(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = *(a3(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  return sub_2692C7550();
}

uint64_t (*SiriAlarmItemModel.formattedTimeString.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for SiriAlarmItemModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  *(v3 + 32) = sub_2692C7530();
  return sub_26929F7A4;
}

uint64_t SiriAlarmItemModel.alarmDate.getter()
{
  v0 = *(type metadata accessor for SiriAlarmItemModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE8, &unk_2692C9A60);
  return sub_2692C7540();
}

uint64_t sub_26929B2B4()
{
  v0 = *(type metadata accessor for SiriAlarmItemModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE8, &unk_2692C9A60);
  return sub_2692C7540();
}

uint64_t sub_26929B30C(uint64_t a1)
{
  v2 = sub_2692C73E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v3 + 16);
  v12(&v14 - v10, a1, v2);
  v12(v8, v11, v2);
  LODWORD(a1) = *(type metadata accessor for SiriAlarmItemModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE8, &unk_2692C9A60);
  sub_2692C7550();
  return (*(v3 + 8))(v11, v2);
}

uint64_t SiriAlarmItemModel.alarmDate.setter(uint64_t a1)
{
  v2 = sub_2692C73E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v7 = *(type metadata accessor for SiriAlarmItemModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE8, &unk_2692C9A60);
  sub_2692C7550();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SiriAlarmItemModel.alarmDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for SiriAlarmItemModel(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE8, &unk_2692C9A60);
  *(v3 + 32) = sub_2692C7530();
  return sub_26929F7A4;
}

uint64_t SiriAlarmItemModel.labelForSnippetWithRecurrence.getter()
{
  v1 = (v0 + *(type metadata accessor for SiriAlarmItemModel(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SiriAlarmItemModel.labelForSnippetWithRecurrence.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SiriAlarmItemModel(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SiriAlarmItemModel.invocationVerbValue.getter()
{
  v1 = (v0 + *(type metadata accessor for SiriAlarmItemModel(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SiriAlarmItemModel.invocationVerbValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SiriAlarmItemModel(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SiriAlarmItemModel.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SiriAlarmItemModel(0) + 36);
  v4 = sub_2692C7430();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SiriAlarmItemModel.locale.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SiriAlarmItemModel(0) + 36);
  v4 = sub_2692C7430();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SiriAlarmItemModel.init(id:formattedTimeString:alarmDate:labelForSnippetWithRecurrence:invocationVerbValue:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v42 = a7;
  v43 = a8;
  v44 = a11;
  v40 = a10;
  v41 = a6;
  v17 = sub_2692C73E0();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v39 - v25;
  *a9 = a1;
  *(a9 + 1) = a2;
  v27 = type metadata accessor for SiriAlarmItemModel(0);
  v28 = v27[5];
  v45 = a3;
  v46 = a4;
  sub_2692C7520();
  v29 = v18[2];
  v29(v26, a5, v17);
  v30 = v27[6];
  v29(v23, v26, v17);
  sub_2692C7520();
  v31 = v18[1];
  v31(a5, v17);
  v31(v26, v17);
  v32 = &a9[v27[7]];
  v33 = v42;
  *v32 = v41;
  *(v32 + 1) = v33;
  v34 = &a9[v27[8]];
  v35 = v40;
  *v34 = v43;
  *(v34 + 1) = v35;
  v36 = v27[9];
  v37 = sub_2692C7430();
  return (*(*(v37 - 8) + 32))(&a9[v36], v44, v37);
}

unint64_t sub_26929BB00()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD00000000000001DLL;
  v4 = 0xD000000000000013;
  if (v1 != 4)
  {
    v4 = 0x656C61636F6CLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v1 != 1)
  {
    v5 = 0x7461446D72616C61;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_26929BBC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26929F40C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26929BBF4(uint64_t a1)
{
  v2 = sub_26929BF60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26929BC30(uint64_t a1)
{
  v2 = sub_26929BF60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriAlarmItemModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302FA8, &qword_2692C9A98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v25[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26929BF60();
  sub_2692C7E20();
  v12 = *v3;
  v13 = v3[1];
  v25[15] = 0;
  sub_2692C7D00();
  if (!v2)
  {
    v14 = type metadata accessor for SiriAlarmItemModel(0);
    v15 = v14[5];
    v25[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
    sub_2692996C8(&qword_280302F08);
    sub_2692C7D10();
    v16 = v14[6];
    v25[13] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE8, &unk_2692C9A60);
    sub_26929A3A0(&qword_280302F10);
    sub_2692C7D10();
    v17 = (v3 + v14[7]);
    v18 = *v17;
    v19 = v17[1];
    v25[12] = 3;
    sub_2692C7D00();
    v20 = (v3 + v14[8]);
    v21 = *v20;
    v22 = v20[1];
    v25[11] = 4;
    sub_2692C7D00();
    v23 = v14[9];
    v25[10] = 5;
    sub_2692C7430();
    sub_269296AFC(&qword_280302F28, MEMORY[0x277CC9788]);
    sub_2692C7D10();
  }

  return (*(v6 + 8))(v10, v5);
}

unint64_t sub_26929BF60()
{
  result = qword_280302FB0;
  if (!qword_280302FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302FB0);
  }

  return result;
}

uint64_t SiriAlarmItemModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v46 = sub_2692C7430();
  v44 = *(v46 - 8);
  v3 = *(v44 + 64);
  MEMORY[0x28223BE20](v46, v4);
  v47 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE8, &unk_2692C9A60);
  v48 = *(v52 - 8);
  v6 = *(v48 + 64);
  MEMORY[0x28223BE20](v52, v7);
  v50 = &v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  v49 = *(v9 - 8);
  v10 = *(v49 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v42 - v12;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302FB8, &qword_2692C9AA0);
  v51 = *(v54 - 8);
  v14 = *(v51 + 64);
  MEMORY[0x28223BE20](v54, v15);
  v17 = &v42 - v16;
  v18 = type metadata accessor for SiriAlarmItemModel(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18, v20);
  v22 = (&v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26929BF60();
  v53 = v17;
  v24 = v55;
  sub_2692C7E10();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v25 = v50;
  v55 = v18;
  v43 = v22;
  v26 = v52;
  v61 = 0;
  v27 = sub_2692C7CB0();
  v28 = v43;
  *v43 = v27;
  v28[1] = v29;
  v60 = 1;
  sub_2692996C8(&qword_280302F48);
  sub_2692C7CC0();
  (*(v49 + 32))(v43 + v55[5], v13, v9);
  v59 = 2;
  sub_26929A3A0(&qword_280302F50);
  v30 = v26;
  sub_2692C7CC0();
  v31 = v55;
  (*(v48 + 32))(v43 + v55[6], v25, v30);
  v58 = 3;
  v32 = sub_2692C7CB0();
  v33 = (v43 + v31[7]);
  *v33 = v32;
  v33[1] = v34;
  v57 = 4;
  v35 = sub_2692C7CB0();
  v36 = (v43 + v31[8]);
  *v36 = v35;
  v36[1] = v37;
  v56 = 5;
  sub_269296AFC(&qword_280302F58, MEMORY[0x277CC9788]);
  v38 = v46;
  v39 = v47;
  sub_2692C7CC0();
  (*(v51 + 8))(v53, v54);
  v40 = v43;
  (*(v44 + 32))(v43 + v31[9], v39, v38);
  sub_26929A474(v40, v45, type metadata accessor for SiriAlarmItemModel);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_269296B44(v40, type metadata accessor for SiriAlarmItemModel);
}

uint64_t AlarmConfirmationModel.yesLabel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  sub_2692C7540();
  return v1;
}

uint64_t sub_26929C718(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  return sub_2692C7550();
}

uint64_t (*AlarmConfirmationModel.yesLabel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  *(v3 + 32) = sub_2692C7530();
  return sub_26929F7A4;
}

uint64_t (*AlarmConfirmationModel.noLabel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for AlarmConfirmationModel(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  *(v3 + 32) = sub_2692C7530();
  return sub_26929F7A4;
}

uint64_t AlarmConfirmationModel.invocationVerbValue.getter()
{
  v1 = (v0 + *(type metadata accessor for AlarmConfirmationModel(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AlarmConfirmationModel.invocationVerbValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AlarmConfirmationModel(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AlarmConfirmationModel.text.getter()
{
  v0 = *(type metadata accessor for AlarmConfirmationModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  sub_2692C7540();
  return v2;
}

uint64_t sub_26929CA28@<X0>(void *a1@<X8>)
{
  v2 = *(type metadata accessor for AlarmConfirmationModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  result = sub_2692C7540();
  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t sub_26929CA90(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for AlarmConfirmationModel(0) + 28);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  return sub_2692C7550();
}

uint64_t AlarmConfirmationModel.text.setter()
{
  v0 = *(type metadata accessor for AlarmConfirmationModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  return sub_2692C7550();
}

uint64_t (*AlarmConfirmationModel.text.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for AlarmConfirmationModel(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  *(v3 + 32) = sub_2692C7530();
  return sub_26929F7A4;
}

void sub_26929CBF4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t AlarmConfirmationModel.init(yesLabel:noLabel:invocationVerbValue:text:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  sub_2692C7520();
  v6 = type metadata accessor for AlarmConfirmationModel(0);
  v7 = v6[5];
  sub_2692C7520();
  v8 = (a3 + v6[6]);
  *v8 = a1;
  v8[1] = a2;
  v9 = v6[7];
  return sub_2692C7520();
}

unint64_t sub_26929CD00()
{
  v1 = 0x6C6562614C736579;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 1954047348;
  }

  if (*v0)
  {
    v1 = 0x6C6562614C6F6ELL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26929CD78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26929F610(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26929CDAC(uint64_t a1)
{
  v2 = sub_26929D04C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26929CDE8(uint64_t a1)
{
  v2 = sub_26929D04C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AlarmConfirmationModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302FC0, &qword_2692C9AA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26929D04C();
  sub_2692C7E20();
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  sub_2692996C8(&qword_280302F08);
  sub_2692C7D10();
  if (!v2)
  {
    v12 = type metadata accessor for AlarmConfirmationModel(0);
    v13 = v12[5];
    v22 = 1;
    sub_2692C7D10();
    v14 = (v3 + v12[6]);
    v15 = *v14;
    v16 = v14[1];
    v21 = 2;
    sub_2692C7D00();
    v17 = v12[7];
    v20 = 3;
    sub_2692C7D10();
  }

  return (*(v6 + 8))(v10, v5);
}

unint64_t sub_26929D04C()
{
  result = qword_280302FC8;
  if (!qword_280302FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302FC8);
  }

  return result;
}

uint64_t AlarmConfirmationModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  v5 = MEMORY[0x28223BE20](v48, v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v41 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v47 = &v41 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302FD0, &qword_2692C9AB0);
  v49 = *(v14 - 8);
  v50 = v14;
  v15 = *(v49 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v41 - v17;
  v19 = type metadata accessor for AlarmConfirmationModel(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26929D04C();
  v51 = v18;
  v25 = v52;
  sub_2692C7E10();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v26 = v11;
  v42 = v7;
  v43 = v19;
  v52 = a1;
  v44 = v23;
  v56 = 0;
  v27 = sub_2692996C8(&qword_280302F48);
  v29 = v47;
  v28 = v48;
  v30 = v50;
  sub_2692C7CC0();
  v31 = *(v46 + 32);
  v31(v44, v29, v28);
  v55 = 1;
  v32 = v26;
  sub_2692C7CC0();
  v41 = v27;
  v33 = v44;
  v31(&v44[*(v43 + 20)], v32, v28);
  v54 = 2;
  v47 = 0;
  v34 = sub_2692C7CB0();
  v35 = v31;
  v36 = v42;
  v37 = v43;
  v38 = (v33 + *(v43 + 24));
  *v38 = v34;
  v38[1] = v39;
  v53 = 3;
  sub_2692C7CC0();
  (*(v49 + 8))(v51, v30);
  v35(v33 + *(v37 + 28), v36, v28);
  sub_26929A474(v33, v45, type metadata accessor for AlarmConfirmationModel);
  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  return sub_269296B44(v33, type metadata accessor for AlarmConfirmationModel);
}

uint64_t sub_26929D918()
{
  result = type metadata accessor for AlarmSelectorModel(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AlarmConfirmationModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26929D9A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_26929D9EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_26929DA60()
{
  sub_26929DBD8(319, &qword_280303008);
  if (v0 <= 0x3F)
  {
    sub_26929DBD8(319, &qword_280303010);
    if (v1 <= 0x3F)
    {
      sub_26929DC24(319, &qword_280303018, MEMORY[0x277CC9578], MEMORY[0x277D637C8]);
      if (v2 <= 0x3F)
      {
        sub_2692C7430();
        if (v3 <= 0x3F)
        {
          sub_26929DC24(319, &qword_280303020, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26929DBD8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2692C7560();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_26929DC24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_26929DCB0()
{
  sub_26929DC24(319, &qword_280303038, type metadata accessor for SiriAlarmItemModel, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_26929DBD8(319, &qword_280303010);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26929DD9C()
{
  sub_26929DBD8(319, &qword_280303010);
  if (v0 <= 0x3F)
  {
    sub_26929DC24(319, &qword_280303018, MEMORY[0x277CC9578], MEMORY[0x277D637C8]);
    if (v1 <= 0x3F)
    {
      sub_2692C7430();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26929DEB4()
{
  sub_26929DBD8(319, &qword_280303010);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for AlarmConfirmationModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlarmConfirmationModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriAlarmItemModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SiriAlarmItemModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AlarmSelectorModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AlarmSelectorModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SiriAlarmSnippetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SiriAlarmSnippetModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SiriAlarmSnippetModels.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriAlarmSnippetModels.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26929E618()
{
  result = qword_280303060;
  if (!qword_280303060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303060);
  }

  return result;
}

unint64_t sub_26929E670()
{
  result = qword_280303068;
  if (!qword_280303068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303068);
  }

  return result;
}

unint64_t sub_26929E6C8()
{
  result = qword_280303070;
  if (!qword_280303070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303070);
  }

  return result;
}

unint64_t sub_26929E720()
{
  result = qword_280303078;
  if (!qword_280303078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303078);
  }

  return result;
}

unint64_t sub_26929E778()
{
  result = qword_280303080;
  if (!qword_280303080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303080);
  }

  return result;
}

unint64_t sub_26929E7D0()
{
  result = qword_280303088;
  if (!qword_280303088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303088);
  }

  return result;
}

unint64_t sub_26929E828()
{
  result = qword_280303090;
  if (!qword_280303090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303090);
  }

  return result;
}

unint64_t sub_26929E880()
{
  result = qword_280303098;
  if (!qword_280303098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303098);
  }

  return result;
}

unint64_t sub_26929E8D8()
{
  result = qword_2803030A0;
  if (!qword_2803030A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803030A0);
  }

  return result;
}

unint64_t sub_26929E930()
{
  result = qword_2803030A8;
  if (!qword_2803030A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803030A8);
  }

  return result;
}

unint64_t sub_26929E988()
{
  result = qword_2803030B0;
  if (!qword_2803030B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803030B0);
  }

  return result;
}

unint64_t sub_26929E9E0()
{
  result = qword_2803030B8;
  if (!qword_2803030B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803030B8);
  }

  return result;
}

unint64_t sub_26929EA38()
{
  result = qword_2803030C0;
  if (!qword_2803030C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803030C0);
  }

  return result;
}

unint64_t sub_26929EA90()
{
  result = qword_2803030C8;
  if (!qword_2803030C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803030C8);
  }

  return result;
}

unint64_t sub_26929EAE8()
{
  result = qword_2803030D0;
  if (!qword_2803030D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803030D0);
  }

  return result;
}

unint64_t sub_26929EB40()
{
  result = qword_2803030D8;
  if (!qword_2803030D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803030D8);
  }

  return result;
}

unint64_t sub_26929EB98()
{
  result = qword_2803030E0;
  if (!qword_2803030E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803030E0);
  }

  return result;
}

unint64_t sub_26929EBF0()
{
  result = qword_2803030E8;
  if (!qword_2803030E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803030E8);
  }

  return result;
}

unint64_t sub_26929EC48()
{
  result = qword_2803030F0;
  if (!qword_2803030F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803030F0);
  }

  return result;
}

unint64_t sub_26929ECA0()
{
  result = qword_2803030F8;
  if (!qword_2803030F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803030F8);
  }

  return result;
}

unint64_t sub_26929ECF8()
{
  result = qword_280303100;
  if (!qword_280303100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303100);
  }

  return result;
}

unint64_t sub_26929ED50()
{
  result = qword_280303108;
  if (!qword_280303108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303108);
  }

  return result;
}

unint64_t sub_26929EDA8()
{
  result = qword_280303110;
  if (!qword_280303110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303110);
  }

  return result;
}

unint64_t sub_26929EE00()
{
  result = qword_280303118;
  if (!qword_280303118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303118);
  }

  return result;
}

unint64_t sub_26929EE58()
{
  result = qword_280303120;
  if (!qword_280303120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303120);
  }

  return result;
}

unint64_t sub_26929EEB0()
{
  result = qword_280303128;
  if (!qword_280303128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303128);
  }

  return result;
}

unint64_t sub_26929EF08()
{
  result = qword_280303130;
  if (!qword_280303130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303130);
  }

  return result;
}

uint64_t sub_26929EF5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C754D6D72616C61 && a2 == 0xEA00000000006974;
  if (v4 || (sub_2692C7D60() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C65536D72616C61 && a2 == 0xED0000726F746365 || (sub_2692C7D60() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002692CD020 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_2692C7D60();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_26929F08C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2692C7D60() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x417065656C537369 && a2 == 0xEC0000006D72616CLL || (sub_2692C7D60() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002692CD040 == a2 || (sub_2692C7D60() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461446D72616C61 && a2 == 0xE900000000000065 || (sub_2692C7D60() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64656C62616E65 && a2 == 0xE700000000000000 || (sub_2692C7D60() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000002692CD060 == a2 || (sub_2692C7D60() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002692CD080 == a2 || (sub_2692C7D60() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002692CD0A0 == a2 || (sub_2692C7D60() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000002692CD0C0 == a2 || (sub_2692C7D60() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_2692C7D60() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x74756F68636E7570 && a2 == 0xEB000000004C5255)
  {

    return 10;
  }

  else
  {
    v6 = sub_2692C7D60();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_26929F40C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2692C7D60() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002692CD040 == a2 || (sub_2692C7D60() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461446D72616C61 && a2 == 0xE900000000000065 || (sub_2692C7D60() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000002692CD060 == a2 || (sub_2692C7D60() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002692CD0E0 == a2 || (sub_2692C7D60() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_2692C7D60();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_26929F610(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562614C736579 && a2 == 0xE800000000000000;
  if (v4 || (sub_2692C7D60() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6562614C6F6ELL && a2 == 0xE700000000000000 || (sub_2692C7D60() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002692CD0E0 == a2 || (sub_2692C7D60() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_2692C7D60();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_26929F7C0(char a1)
{
  result = MEMORY[0x277D84F90];
  v38 = MEMORY[0x277D84F90];
  if (a1)
  {
    type metadata accessor for AlarmRepeatSchedule();
    v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v4 = sub_2692C7820();
    v5 = [v3 initWithIdentifier:0 displayString:v4];

    [v5 setRepeatSchedule_];
    v6 = v5;
    MEMORY[0x26D635E30]();
    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v32 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2692C7950();
    }

    sub_2692C7960();

    result = v38;
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  type metadata accessor for AlarmRepeatSchedule();
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8 = sub_2692C7820();
  v9 = [v7 initWithIdentifier:0 displayString:v8];

  [v9 setRepeatSchedule_];
  v10 = v9;
  MEMORY[0x26D635E30]();
  if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v33 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_2692C7950();
  }

  sub_2692C7960();

  result = v38;
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_15:
  type metadata accessor for AlarmRepeatSchedule();
  v11 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v12 = sub_2692C7820();
  v13 = [v11 initWithIdentifier:0 displayString:v12];

  [v13 setRepeatSchedule_];
  v14 = v13;
  MEMORY[0x26D635E30]();
  if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v34 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_2692C7950();
  }

  sub_2692C7960();

  result = v38;
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_18:
  type metadata accessor for AlarmRepeatSchedule();
  v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v16 = sub_2692C7820();
  v17 = [v15 initWithIdentifier:0 displayString:v16];

  [v17 setRepeatSchedule_];
  v18 = v17;
  MEMORY[0x26D635E30]();
  if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v35 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_2692C7950();
  }

  sub_2692C7960();

  result = v38;
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_21:
  type metadata accessor for AlarmRepeatSchedule();
  v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v20 = sub_2692C7820();
  v21 = [v19 initWithIdentifier:0 displayString:v20];

  [v21 setRepeatSchedule_];
  v22 = v21;
  MEMORY[0x26D635E30]();
  if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v36 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_2692C7950();
  }

  sub_2692C7960();

  result = v38;
  if ((a1 & 0x20) == 0)
  {
LABEL_7:
    if ((a1 & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_27;
  }

LABEL_24:
  type metadata accessor for AlarmRepeatSchedule();
  v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v24 = sub_2692C7820();
  v25 = [v23 initWithIdentifier:0 displayString:v24];

  [v25 setRepeatSchedule_];
  v26 = v25;
  MEMORY[0x26D635E30]();
  if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v37 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_2692C7950();
  }

  sub_2692C7960();

  result = v38;
  if ((a1 & 0x40) != 0)
  {
LABEL_27:
    type metadata accessor for AlarmRepeatSchedule();
    v27 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v28 = sub_2692C7820();
    v29 = [v27 initWithIdentifier:0 displayString:v28];

    [v29 setRepeatSchedule_];
    v30 = v29;
    MEMORY[0x26D635E30]();
    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v31 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2692C7950();
    }

    sub_2692C7960();

    return v38;
  }

  return result;
}

uint64_t static AlarmIntentHandlerUtils.getFiringAlarms(alarmManager:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_280302AF8 != -1)
  {
    swift_once();
  }

  v6 = sub_2692C77C0();
  __swift_project_value_buffer(v6, qword_280303138);
  v7 = sub_2692C77B0();
  v8 = sub_2692C7A00();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_269270000, v7, v8, "Trying to get local firing alarm through alarmSearch.", v9, 2u);
    MEMORY[0x26D6368E0](v9, -1, -1);
  }

  v10 = objc_allocWithZone(type metadata accessor for AlarmSearch());
  v11 = sub_2692C7820();
  v12 = [v10 initWithIdentifier:0 displayString:v11 pronunciationHint:0];

  [v12 setAlarmSearchStatus_];
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v16 = *(v14 + 56);
  v17 = v12;

  v16(v12, sub_2692A1438, v15, v13, v14);
}

uint64_t sub_26929FF04()
{
  v0 = sub_2692C77C0();
  __swift_allocate_value_buffer(v0, qword_280303138);
  v1 = __swift_project_value_buffer(v0, qword_280303138);
  if (qword_280302B40 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280303368);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *static AlarmIntentHandlerUtils.getAllAlarms(fromSearchResponse:)(uint64_t a1)
{
  v1 = *a1;
  v2 = qword_280302AF8;
  if (*(a1 + 8))
  {
    if (qword_280302AF8 != -1)
    {
      swift_once();
    }

    v3 = sub_2692C77C0();
    __swift_project_value_buffer(v3, qword_280303138);
    v4 = sub_2692C77B0();
    v5 = sub_2692C7A00();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v38 = v7;
      *v6 = 136315138;
      v8 = sub_2692C7840();
      v10 = sub_26927C4DC(v8, v9, &v38);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_269270000, v4, v5, "Can NOT find any alarms, error: %s.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x26D6368E0](v7, -1, -1);
      MEMORY[0x26D6368E0](v6, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  v11 = *a1;

  if (v2 != -1)
  {
    swift_once();
  }

  v12 = sub_2692C77C0();
  __swift_project_value_buffer(v12, qword_280303138);

  v13 = sub_2692C77B0();
  v14 = sub_2692C7A00();
  sub_2692743E4(v1, 0);
  if (!os_log_type_enabled(v13, v14))
  {
LABEL_26:

    return v1;
  }

  v15 = swift_slowAlloc();
  v36 = swift_slowAlloc();
  v38 = v36;
  *v15 = 136315138;
  if (v1 >> 62)
  {
    v16 = sub_2692C7C60();
  }

  else
  {
    v16 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = MEMORY[0x277D84F90];
  if (!v16)
  {
LABEL_25:
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C28, &unk_2692C9690);
    v31 = MEMORY[0x26D635E70](v17, v30);
    v33 = v32;

    v34 = sub_26927C4DC(v31, v33, &v38);

    *(v15 + 4) = v34;
    _os_log_impl(&dword_269270000, v13, v14, "Found all alarms: %s.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x26D6368E0](v36, -1, -1);
    MEMORY[0x26D6368E0](v15, -1, -1);
    goto LABEL_26;
  }

  v35 = v15;
  v37 = MEMORY[0x277D84F90];
  result = sub_2692A0A8C(0, v16 & ~(v16 >> 63), 0);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v19 = 0;
    v17 = v37;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x26D6360D0](v19, v1);
      }

      else
      {
        v20 = *(v1 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = [v20 identifier];
      if (v22)
      {
        v23 = v22;
        v24 = sub_2692C7830();
        v26 = v25;
      }

      else
      {

        v24 = 0;
        v26 = 0;
      }

      v28 = *(v37 + 16);
      v27 = *(v37 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_2692A0A8C((v27 > 1), v28 + 1, 1);
      }

      ++v19;
      *(v37 + 16) = v28 + 1;
      v29 = v37 + 16 * v28;
      *(v29 + 32) = v24;
      *(v29 + 40) = v26;
    }

    while (v16 != v19);
    v15 = v35;
    goto LABEL_25;
  }

  __break(1u);
  return result;
}