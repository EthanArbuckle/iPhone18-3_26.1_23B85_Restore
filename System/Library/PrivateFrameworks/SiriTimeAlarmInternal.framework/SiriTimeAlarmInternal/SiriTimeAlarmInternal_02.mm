id static AlarmIntentHandlerUtils.selectIntentHandlers(from:)(void *a1)
{
  if (qword_280302AF8 != -1)
  {
    swift_once();
  }

  v2 = sub_2692C77C0();
  __swift_project_value_buffer(v2, qword_280303138);
  v3 = a1;
  v4 = sub_2692C77B0();
  v5 = sub_2692C7A00();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_269270000, v4, v5, "AlarmIntentHandlerUtils selecting intentHandler from: %@", v6, 0xCu);
    sub_2692A14A0(v7);
    MEMORY[0x26D6368E0](v7, -1, -1);
    MEMORY[0x26D6368E0](v6, -1, -1);
  }

  v9 = [v3 _metadata];
  if (qword_280302B28 != -1)
  {
    swift_once();
  }

  sub_269275A6C(&qword_280303238, &v60);
  v10 = type metadata accessor for SiriAlarmManagerImpl();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  sub_2692C7610();
  sub_2692C74B0();
  v14 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_sleepAlarmManager;
  type metadata accessor for SiriSleepAlarmManager();
  v15 = swift_allocObject();
  *(v13 + v14) = v15;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  v16 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_osLogObject;
  if (qword_280302B50 != -1)
  {
    swift_once();
  }

  v17 = qword_280303380;
  *(v13 + v16) = qword_280303380;
  sub_269275A30(&v60, v13 + OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_alarmManager);
  type metadata accessor for CreateAlarmIntent();
  if (swift_dynamicCastClass())
  {
    AlarmIntentHandler = type metadata accessor for CreateAlarmIntentHandler();
    v19 = objc_allocWithZone(AlarmIntentHandler);
    v61 = v10;
    v62 = &protocol witness table for SiriAlarmManagerImpl;
    *&v60 = v13;
    *&v19[OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_osLogObject] = v17;
    sub_269275A6C(&v60, &v19[OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_siriAlarmManager]);
    v52.receiver = v19;
    v52.super_class = AlarmIntentHandler;
    v20 = v17;
    v21 = objc_msgSendSuper2(&v52, sel_init);
  }

  else
  {
    type metadata accessor for DeleteAlarmIntent();
    if (swift_dynamicCastClass())
    {
      v22 = type metadata accessor for DeleteAlarmIntentHandler();
      v23 = objc_allocWithZone(v22);
      v61 = v10;
      v62 = &protocol witness table for SiriAlarmManagerImpl;
      *&v60 = v13;
      *&v23[OBJC_IVAR____TtC21SiriTimeAlarmInternal24DeleteAlarmIntentHandler_osLogObject] = v17;
      sub_269275A6C(&v60, &v23[OBJC_IVAR____TtC21SiriTimeAlarmInternal24DeleteAlarmIntentHandler_siriAlarmManager]);
      v53.receiver = v23;
      v53.super_class = v22;
      v24 = v17;
      v21 = objc_msgSendSuper2(&v53, sel_init);
    }

    else
    {
      type metadata accessor for SearchAlarmIntent();
      if (swift_dynamicCastClass())
      {
        v25 = type metadata accessor for SearchAlarmIntentHandler();
        v26 = objc_allocWithZone(v25);
        v61 = v10;
        v62 = &protocol witness table for SiriAlarmManagerImpl;
        *&v60 = v13;
        *&v26[OBJC_IVAR____TtC21SiriTimeAlarmInternal24SearchAlarmIntentHandler_osLogObject] = v17;
        sub_269275A6C(&v60, &v26[OBJC_IVAR____TtC21SiriTimeAlarmInternal24SearchAlarmIntentHandler_siriAlarmManager]);
        v54.receiver = v26;
        v54.super_class = v25;
        v27 = v17;
        v21 = objc_msgSendSuper2(&v54, sel_init);
      }

      else
      {
        type metadata accessor for ChangeAlarmStatusIntent();
        if (swift_dynamicCastClass())
        {
          v28 = type metadata accessor for ChangeAlarmStatusIntentHandler();
          v29 = objc_allocWithZone(v28);
          v61 = v10;
          v62 = &protocol witness table for SiriAlarmManagerImpl;
          *&v60 = v13;
          *&v29[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_osLogObject] = v17;
          sub_269275A6C(&v60, &v29[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager]);
          v55.receiver = v29;
          v55.super_class = v28;
          v30 = v17;
          v21 = objc_msgSendSuper2(&v55, sel_init);
        }

        else
        {
          type metadata accessor for UpdateAlarmIntent();
          if (swift_dynamicCastClass())
          {
            updated = type metadata accessor for UpdateAlarmIntentHandler();
            v32 = objc_allocWithZone(updated);
            v61 = v10;
            v62 = &protocol witness table for SiriAlarmManagerImpl;
            *&v60 = v13;
            *&v32[OBJC_IVAR____TtC21SiriTimeAlarmInternal24UpdateAlarmIntentHandler_osLogObject] = v17;
            sub_269275A6C(&v60, &v32[OBJC_IVAR____TtC21SiriTimeAlarmInternal24UpdateAlarmIntentHandler_siriAlarmManager]);
            v56.receiver = v32;
            v56.super_class = updated;
            v33 = v17;
            v21 = objc_msgSendSuper2(&v56, sel_init);
          }

          else
          {
            type metadata accessor for SnoozeAlarmHalIntent();
            if (swift_dynamicCastClass())
            {
              v34 = type metadata accessor for SnoozeAlarmIntentHandler();
              v35 = objc_allocWithZone(v34);
              v61 = v10;
              v62 = &protocol witness table for SiriAlarmManagerImpl;
              *&v60 = v13;
              *&v35[OBJC_IVAR____TtC21SiriTimeAlarmInternal24SnoozeAlarmIntentHandler_osLogObject] = v17;
              sub_269275A6C(&v60, &v35[OBJC_IVAR____TtC21SiriTimeAlarmInternal24SnoozeAlarmIntentHandler_siriAlarmManager]);
              v57.receiver = v35;
              v57.super_class = v34;
              v36 = v17;
              v21 = objc_msgSendSuper2(&v57, sel_init);
            }

            else
            {
              type metadata accessor for DismissAlarmHalIntent();
              if (swift_dynamicCastClass())
              {
                v37 = type metadata accessor for DismissAlarmHalIntentHandler();
                v38 = objc_allocWithZone(v37);
                v61 = v10;
                v62 = &protocol witness table for SiriAlarmManagerImpl;
                *&v60 = v13;
                *&v38[OBJC_IVAR____TtC21SiriTimeAlarmInternal28DismissAlarmHalIntentHandler_osLogObject] = v17;
                sub_269275A6C(&v60, &v38[OBJC_IVAR____TtC21SiriTimeAlarmInternal28DismissAlarmHalIntentHandler_siriAlarmManager]);
                v58.receiver = v38;
                v58.super_class = v37;
                v39 = v17;
                v21 = objc_msgSendSuper2(&v58, sel_init);
              }

              else
              {
                v40 = v3;
                v41 = v17;
                v42 = sub_2692C77B0();
                v43 = sub_2692C79F0();

                if (os_log_type_enabled(v42, v43))
                {
                  v44 = swift_slowAlloc();
                  v45 = swift_slowAlloc();
                  *v44 = 138412290;
                  *(v44 + 4) = v40;
                  *v45 = v40;
                  v46 = v40;
                  _os_log_impl(&dword_269270000, v42, v43, "Unable to recognize the alarm intent %@. Returning CreateAlarmIntentHandler anyways.", v44, 0xCu);
                  sub_2692A14A0(v45);
                  MEMORY[0x26D6368E0](v45, -1, -1);
                  MEMORY[0x26D6368E0](v44, -1, -1);
                }

                v47 = type metadata accessor for CreateAlarmIntentHandler();
                v48 = objc_allocWithZone(v47);
                v61 = v10;
                v62 = &protocol witness table for SiriAlarmManagerImpl;
                *&v60 = v13;
                *&v48[OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_osLogObject] = v41;
                sub_269275A6C(&v60, &v48[OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_siriAlarmManager]);
                v59.receiver = v48;
                v59.super_class = v47;
                v49 = v41;
                v21 = objc_msgSendSuper2(&v59, sel_init);
              }
            }
          }
        }
      }
    }
  }

  v50 = v21;
  __swift_destroy_boxed_opaque_existential_1Tm(&v60);
  return v50;
}

void *sub_2692A0A8C(void *a1, int64_t a2, char a3)
{
  result = sub_2692A0AEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2692A0AAC(size_t a1, int64_t a2, char a3)
{
  result = sub_2692A0C20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2692A0ACC(char *a1, int64_t a2, char a3)
{
  result = sub_2692A0E10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2692A0AEC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280303158, &qword_2692CA980);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C28, &unk_2692C9690);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2692A0C20(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280303150, &unk_2692CA970);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C50, &unk_2692C96A0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C50, &unk_2692C96A0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_2692A0E10(char *result, int64_t a2, char a3, char *a4)
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

void *_s21SiriTimeAlarmInternal0C18IntentHandlerUtilsO15getFiringAlarms18fromSearchResponseSayAA0aC0CGs6ResultOyAhA0C14OperationErrorOG_tFZ_0(unint64_t *a1)
{
  v1 = *a1;
  if (a1[1])
  {
    if (qword_280302AF8 != -1)
    {
      goto LABEL_23;
    }

    goto LABEL_3;
  }

  v50 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
    v11 = sub_2692C7C60();
    if (v11)
    {
      goto LABEL_8;
    }

LABEL_25:
    v10 = MEMORY[0x277D84F90];
LABEL_26:
    v21 = qword_280302AF8;

    if (v21 != -1)
    {
      swift_once();
    }

    v22 = sub_2692C77C0();
    __swift_project_value_buffer(v22, qword_280303138);
    v23 = sub_2692C77B0();
    v24 = sub_2692C7A00();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v50 = v26;
      *v25 = 136315138;
      if (v10 < 0 || (v10 & 0x4000000000000000) != 0)
      {
        v46 = v26;
        v27 = sub_2692C7C60();
        v26 = v46;
      }

      else
      {
        v27 = *(v10 + 16);
      }

      v28 = MEMORY[0x277D84F90];
      v48 = v26;
      if (v27)
      {
        v47 = v25;
        v49 = MEMORY[0x277D84F90];
        result = sub_2692A0A8C(0, v27 & ~(v27 >> 63), 0);
        if (v27 < 0)
        {
          __break(1u);
          return result;
        }

        v30 = 0;
        v28 = v49;
        do
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v31 = MEMORY[0x26D6360D0](v30, v10);
          }

          else
          {
            v31 = *(v10 + 8 * v30 + 32);
          }

          v32 = v31;
          v33 = [v31 identifier];
          if (v33)
          {
            v34 = v33;
            v35 = sub_2692C7830();
            v37 = v36;
          }

          else
          {

            v35 = 0;
            v37 = 0;
          }

          v39 = *(v49 + 16);
          v38 = *(v49 + 24);
          if (v39 >= v38 >> 1)
          {
            sub_2692A0A8C((v38 > 1), v39 + 1, 1);
          }

          ++v30;
          *(v49 + 16) = v39 + 1;
          v40 = v49 + 16 * v39;
          *(v40 + 32) = v35;
          *(v40 + 40) = v37;
        }

        while (v27 != v30);
        v25 = v47;
      }

      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C28, &unk_2692C9690);
      v42 = MEMORY[0x26D635E70](v28, v41);
      v44 = v43;

      v45 = sub_26927C4DC(v42, v44, &v50);

      *(v25 + 4) = v45;
      _os_log_impl(&dword_269270000, v23, v24, "Found firing alarms: %s.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x26D6368E0](v48, -1, -1);
      MEMORY[0x26D6368E0](v25, -1, -1);
    }

    return v10;
  }

  v11 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_25;
  }

LABEL_8:
  v12 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x26D6360D0](v12, v1);
    }

    else
    {
      if (v12 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v13 = *(v1 + 8 * v12 + 32);
    }

    v14 = v13;
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    v16 = [v13 firing];
    sub_2692822D8();
    v17 = sub_2692C7A50();
    v18 = v17;
    if (v16)
    {
      v19 = sub_2692C7A70();

      if (v19)
      {
        sub_2692C7BF0();
        v20 = *(v50 + 16);
        sub_2692C7C20();
        sub_2692C7C30();
        sub_2692C7C00();
        goto LABEL_11;
      }
    }

    else
    {
    }

LABEL_11:
    ++v12;
    if (v15 == v11)
    {
      v10 = v50;
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  swift_once();
LABEL_3:
  v2 = sub_2692C77C0();
  __swift_project_value_buffer(v2, qword_280303138);
  v3 = sub_2692C77B0();
  v4 = sub_2692C7A00();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v50 = v6;
    *v5 = 136315138;
    v7 = sub_2692C7840();
    v9 = sub_26927C4DC(v7, v8, &v50);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_269270000, v3, v4, "Can NOT find firing alarm, error: %s.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D6368E0](v6, -1, -1);
    MEMORY[0x26D6368E0](v5, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2692A1438(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(a1 + 8);
  v6 = *a1;
  v7 = v4;
  _s21SiriTimeAlarmInternal0C18IntentHandlerUtilsO15getFiringAlarms18fromSearchResponseSayAA0aC0CGs6ResultOyAhA0C14OperationErrorOG_tFZ_0(&v6);
  v3();
}

uint64_t sub_2692A14A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302D50, &qword_2692CAB70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2692A1518()
{
  v0 = sub_2692C77C0();
  __swift_allocate_value_buffer(v0, qword_280303160);
  v1 = __swift_project_value_buffer(v0, qword_280303160);
  if (qword_280302B48 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280307B80);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_2692A15E0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
    v4 = sub_2692C7820();
    [v3 setSourceBundleIdentifier_];

    [v3 resume];
    v5 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

id sub_2692A16A0()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = sub_2692A15E0();
    v4 = [objc_allocWithZone(MEMORY[0x277D62528]) initWithHealthStore_];

    v5 = *(v0 + 24);
    *(v0 + 24) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

void sub_2692A174C(char a1, id a2, void (*a3)(uint64_t *, id))
{
  if (a1)
  {
    LOWORD(v28[0]) = 0;
LABEL_14:
    a3(v28, a2);
    return;
  }

  if (!a2)
  {
    if (qword_280302B00 != -1)
    {
      swift_once();
    }

    v20 = sub_2692C77C0();
    __swift_project_value_buffer(v20, qword_280303160);
    v21 = sub_2692C77B0();
    v22 = sub_2692C79F0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_269270000, v21, v22, "Enable next wake up alarm failed without reason", v23, 2u);
      MEMORY[0x26D6368E0](v23, -1, -1);
    }

    v24 = sub_2692C7760();
    v29 = v24;
    v30 = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
    *boxed_opaque_existential_1 = 0xD000000000000012;
    boxed_opaque_existential_1[1] = 0x80000002692CD1F0;
    v26 = *MEMORY[0x277D61878];
    v27 = sub_2692C7710();
    (*(*(v27 - 8) + 104))(boxed_opaque_existential_1, v26, v27);
    (*(*(v24 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v24);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    LOWORD(v28[0]) = 265;
    goto LABEL_14;
  }

  v5 = a2;
  if (qword_280302B00 != -1)
  {
    swift_once();
  }

  v6 = sub_2692C77C0();
  __swift_project_value_buffer(v6, qword_280303160);
  v7 = a2;
  v8 = sub_2692C77B0();
  v9 = sub_2692C79F0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28[0] = v11;
    *v10 = 136315138;
    v12 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302DD0, &qword_2692C9828);
    v13 = sub_2692C7840();
    v15 = sub_26927C4DC(v13, v14, v28);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_269270000, v8, v9, "Enable next wake up alarm failed with reason: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x26D6368E0](v11, -1, -1);
    MEMORY[0x26D6368E0](v10, -1, -1);
  }

  v16 = sub_2692C7760();
  v29 = v16;
  v30 = MEMORY[0x277D61908];
  v17 = __swift_allocate_boxed_opaque_existential_1(v28);
  *v17 = sub_2692C7320();
  v18 = *MEMORY[0x277D61838];
  v19 = sub_2692C76A0();
  (*(*(v19 - 8) + 104))(v17, v18, v19);
  (*(*(v16 - 8) + 104))(v17, *MEMORY[0x277D618E0], v16);
  sub_2692C76B0();
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  LOWORD(v28[0]) = 265;
  (a3)(v28);
}

void sub_2692A1B80(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2692A1C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v12 = sub_2692A16A0();
  v13 = sub_2692C7390();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v16[4] = a5;
  v16[5] = v14;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_2692A1B80;
  v16[3] = a6;
  v15 = _Block_copy(v16);

  [v12 setUpcomingWakeUpAlarmEnabled:a7 & 1 date:v13 completion:v15];
  _Block_release(v15);
}

void sub_2692A1D50(char a1, id a2, void (*a3)(uint64_t *, id))
{
  if (a1)
  {
    LOWORD(v28[0]) = 0;
LABEL_14:
    a3(v28, a2);
    return;
  }

  if (!a2)
  {
    if (qword_280302B00 != -1)
    {
      swift_once();
    }

    v20 = sub_2692C77C0();
    __swift_project_value_buffer(v20, qword_280303160);
    v21 = sub_2692C77B0();
    v22 = sub_2692C79F0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_269270000, v21, v22, "Disable next wake up alarm failed with unknown reason", v23, 2u);
      MEMORY[0x26D6368E0](v23, -1, -1);
    }

    v24 = sub_2692C7760();
    v29 = v24;
    v30 = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
    *boxed_opaque_existential_1 = 0xD000000000000013;
    boxed_opaque_existential_1[1] = 0x80000002692CD1D0;
    v26 = *MEMORY[0x277D61878];
    v27 = sub_2692C7710();
    (*(*(v27 - 8) + 104))(boxed_opaque_existential_1, v26, v27);
    (*(*(v24 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v24);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    LOWORD(v28[0]) = 266;
    goto LABEL_14;
  }

  v5 = a2;
  if (qword_280302B00 != -1)
  {
    swift_once();
  }

  v6 = sub_2692C77C0();
  __swift_project_value_buffer(v6, qword_280303160);
  v7 = a2;
  v8 = sub_2692C77B0();
  v9 = sub_2692C79F0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28[0] = v11;
    *v10 = 136315138;
    v12 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302DD0, &qword_2692C9828);
    v13 = sub_2692C7840();
    v15 = sub_26927C4DC(v13, v14, v28);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_269270000, v8, v9, "Disable next wake up alarm failed with reason: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x26D6368E0](v11, -1, -1);
    MEMORY[0x26D6368E0](v10, -1, -1);
  }

  v16 = sub_2692C7760();
  v29 = v16;
  v30 = MEMORY[0x277D61908];
  v17 = __swift_allocate_boxed_opaque_existential_1(v28);
  *v17 = sub_2692C7320();
  v18 = *MEMORY[0x277D61838];
  v19 = sub_2692C76A0();
  (*(*(v19 - 8) + 104))(v17, v18, v19);
  (*(*(v16 - 8) + 104))(v17, *MEMORY[0x277D618E0], v16);
  sub_2692C76B0();
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  LOWORD(v28[0]) = 266;
  (a3)(v28);
}

void sub_2692A2184(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v62 = a3;
  v63 = a4;
  v58 = a2;
  v5 = sub_2692C7310();
  v59 = *(v5 - 8);
  v60 = v5;
  v6 = *(v59 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v56 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2692C7500();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v57 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2692C7440();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_2692C74F0();
  v19 = *(v55 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x28223BE20](v55, v21);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v55 - v26;
  v61 = v4;
  v28 = sub_2692A16A0();
  v29 = sub_2692C7390();
  v30 = [v28 upcomingResolvedScheduleOccurrenceAfterDate:v29 error:0];

  v64 = v30;
  if (v30)
  {
    v31 = sub_2692C7390();
    (*(v14 + 104))(v18, *MEMORY[0x277CC9830], v13);
    sub_2692C7450();
    (*(v14 + 8))(v18, v13);
    sub_2692C74B0();
    sub_2692C74C0();
    v32 = *(v19 + 8);
    v33 = v55;
    v32(v24, v55);
    sub_2692C74D0();
    v34 = sub_2692C7470();
    v32(v27, v33);
    v35 = [v64 generateOverrideOccurrenceForCurrentDate:v31 gregorianCalendar:v34];

    sub_2692C7290();
    v36 = [v35 wakeUpComponents];
    v37 = v56;
    sub_2692C7280();

    sub_2692C72A0();
    v38 = sub_2692C7270();
    v39 = v60;
    v40 = *(v59 + 8);
    v40(v37, v60);
    [v35 setWakeUpComponents_];

    sub_2692C72B0();
    v41 = [v35 wakeUpComponents];
    sub_2692C7280();

    sub_2692C72C0();
    v42 = sub_2692C7270();
    v40(v37, v39);
    [v35 setWakeUpComponents_];

    v43 = v61;
    v44 = *(v61 + 24);
    v45 = swift_allocObject();
    v46 = v63;
    v45[2] = v62;
    v45[3] = v46;
    v45[4] = v35;
    v45[5] = v43;
    aBlock[4] = sub_2692A3290;
    aBlock[5] = v45;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2692A319C;
    aBlock[3] = &block_descriptor_12;
    v47 = _Block_copy(aBlock);
    v48 = v44;

    v49 = v35;

    [v48 currentSleepScheduleWithCompletion_];
    _Block_release(v47);
  }

  else
  {
    v50 = v62;
    if (qword_280302B00 != -1)
    {
      swift_once();
    }

    v51 = sub_2692C77C0();
    __swift_project_value_buffer(v51, qword_280303160);
    v52 = sub_2692C77B0();
    v53 = sub_2692C79F0();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_269270000, v52, v53, "Call sleepStore.upcomingResolvedScheduleOccurrence failed.", v54, 2u);
      MEMORY[0x26D6368E0](v54, -1, -1);
    }

    LOWORD(aBlock[0]) = 267;
    v50(aBlock);
  }
}

uint64_t sub_2692A2790(void *a1, void *a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    [a1 mutableCopy];
    sub_2692C7AD0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v59, 0, sizeof(v59));
  }

  sub_2692A3344(v59, aBlock);
  if (v54)
  {
    sub_26927CC94(0, &qword_280303178, 0x277D62488);
    if (swift_dynamicCast())
    {
      v9 = v57[0];
      if (a2)
      {
        aBlock[0] = a2;
        v10 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302DD0, &qword_2692C9828);
        sub_26927CC94(0, &qword_280303190, 0x277CCA9B8);
        if (swift_dynamicCast())
        {
          v11 = v57[0];
          v12 = sub_2692C7760();
          v54 = v12;
          v55 = MEMORY[0x277D61908];
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(aBlock);
          *boxed_opaque_existential_1 = v11;
          v14 = *MEMORY[0x277D61838];
          v15 = sub_2692C76A0();
          (*(*(v15 - 8) + 104))(boxed_opaque_existential_1, v14, v15);
          (*(*(v12 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618E0], v12);
          sub_2692C76B0();
          __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
        }
      }

      [v9 saveOccurrence_];
      if (qword_280302B00 != -1)
      {
        swift_once();
      }

      v16 = sub_2692C77C0();
      __swift_project_value_buffer(v16, qword_280303160);
      v17 = v9;
      v18 = sub_2692C77B0();
      v19 = sub_2692C7A00();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v52 = a3;
        aBlock[0] = swift_slowAlloc();
        v21 = aBlock[0];
        *v20 = 136315138;
        v22 = [v17 occurrences];
        v23 = sub_26927CC94(0, &qword_280303188, 0x277D62508);
        v24 = sub_2692C7930();

        v25 = MEMORY[0x26D635E70](v24, v23);
        v27 = v26;

        v28 = sub_26927C4DC(v25, v27, aBlock);

        *(v20 + 4) = v28;
        _os_log_impl(&dword_269270000, v18, v19, "mutableSleepSchedule.occurrences: %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        v29 = v21;
        a3 = v52;
        MEMORY[0x26D6368E0](v29, -1, -1);
        MEMORY[0x26D6368E0](v20, -1, -1);
      }

      v30 = v17;
      v31 = sub_2692C77B0();
      v32 = sub_2692C7A00();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        aBlock[0] = v34;
        *v33 = 136315138;
        v57[0] = [v30 overrideOccurrence];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280303180, &unk_2692CA9E0);
        v35 = sub_2692C7840();
        v37 = sub_26927C4DC(v35, v36, aBlock);

        *(v33 + 4) = v37;
        _os_log_impl(&dword_269270000, v31, v32, "mutableSleepSchedule.overrideOccurrence: %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        MEMORY[0x26D6368E0](v34, -1, -1);
        MEMORY[0x26D6368E0](v33, -1, -1);
      }

      v38 = sub_2692A16A0();
      v39 = swift_allocObject();
      *(v39 + 16) = a3;
      *(v39 + 24) = a4;
      v55 = sub_2692A341C;
      v56 = v39;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2692A1B80;
      v54 = &block_descriptor_25;
      v40 = _Block_copy(aBlock);
      v41 = v30;

      [v38 saveCurrentSleepSchedule:v41 completion:v40];
      _Block_release(v40);

      return sub_2692A33B4(v59);
    }
  }

  else
  {
    sub_2692A33B4(aBlock);
  }

  if (qword_280302B00 != -1)
  {
    swift_once();
  }

  v42 = sub_2692C77C0();
  __swift_project_value_buffer(v42, qword_280303160);
  sub_2692A3344(v59, aBlock);
  v43 = sub_2692C77B0();
  v44 = sub_2692C79F0();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v58 = v46;
    *v45 = 136315138;
    sub_2692A3344(aBlock, v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302CD0, &unk_2692CAE00);
    v47 = sub_2692C7840();
    v49 = v48;
    sub_2692A33B4(aBlock);
    v50 = sub_26927C4DC(v47, v49, &v58);

    *(v45 + 4) = v50;
    _os_log_impl(&dword_269270000, v43, v44, "Retrive sleep schedule failed for schedule: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    MEMORY[0x26D6368E0](v46, -1, -1);
    MEMORY[0x26D6368E0](v45, -1, -1);
  }

  else
  {

    sub_2692A33B4(aBlock);
  }

  LOWORD(aBlock[0]) = 263;
  a3(aBlock);
  return sub_2692A33B4(v59);
}

void sub_2692A2E8C(char a1, id a2, void (*a3)(uint64_t *))
{
  if (a2 && (v20[0] = a2, v5 = a2, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302DD0, &qword_2692C9828), sub_26927CC94(0, &qword_280303190, 0x277CCA9B8), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v20[5];
    v7 = sub_2692C7760();
    v20[3] = v7;
    v20[4] = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
    *boxed_opaque_existential_1 = v6;
    v9 = *MEMORY[0x277D61838];
    v10 = sub_2692C76A0();
    (*(*(v10 - 8) + 104))(boxed_opaque_existential_1, v9, v10);
    (*(*(v7 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618E0], v7);
    v11 = v6;
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    if (qword_280302B00 != -1)
    {
      swift_once();
    }

    v12 = sub_2692C77C0();
    __swift_project_value_buffer(v12, qword_280303160);
    v13 = sub_2692C77B0();
    v14 = sub_2692C79F0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_269270000, v13, v14, "Change sleep alarm time failed when calling sleepStore.saveCurrentSleepSchedule().", v15, 2u);
      MEMORY[0x26D6368E0](v15, -1, -1);
    }

    LOWORD(v20[0]) = 263;
    a3(v20);
  }

  else
  {
    if (qword_280302B00 != -1)
    {
      swift_once();
    }

    v16 = sub_2692C77C0();
    __swift_project_value_buffer(v16, qword_280303160);
    v17 = sub_2692C77B0();
    v18 = sub_2692C7A00();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 67109120;
      *(v19 + 4) = a1 & 1;
      _os_log_impl(&dword_269270000, v17, v18, "Change sleep alarm time successfully: %{BOOL}d", v19, 8u);
      MEMORY[0x26D6368E0](v19, -1, -1);
    }

    LOWORD(v20[0]) = 0;
    a3(v20);
  }
}

void sub_2692A319C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t SiriSleepAlarmManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2692A3344(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302CD0, &unk_2692CAE00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2692A33B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302CD0, &unk_2692CAE00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id CreateAlarmIntentHandler.__allocating_init(manager:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_2692A6A58(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

uint64_t sub_2692A3490()
{
  v0 = sub_2692C77C0();
  __swift_allocate_value_buffer(v0, qword_280303198);
  v1 = __swift_project_value_buffer(v0, qword_280303198);
  if (qword_280302B40 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280303368);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id CreateAlarmIntentHandler.init(manager:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v5, v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = sub_2692A5DF0(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v10;
}

id CreateAlarmIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CreateAlarmIntentHandler.init()()
{
  if (qword_280302B28 != -1)
  {
    swift_once();
  }

  sub_269275A6C(&qword_280303238, &v14);
  v0 = type metadata accessor for SiriAlarmManagerImpl();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_2692C7610();
  sub_2692C74B0();
  v4 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_sleepAlarmManager;
  type metadata accessor for SiriSleepAlarmManager();
  v5 = swift_allocObject();
  *(v3 + v4) = v5;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  v6 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_osLogObject;
  if (qword_280302B50 != -1)
  {
    swift_once();
  }

  v7 = qword_280303380;
  *(v3 + v6) = qword_280303380;
  sub_269275A30(&v14, v3 + OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_alarmManager);
  AlarmIntentHandler = type metadata accessor for CreateAlarmIntentHandler();
  v9 = objc_allocWithZone(AlarmIntentHandler);
  v15 = v0;
  v16 = &protocol witness table for SiriAlarmManagerImpl;
  *&v14 = v3;
  *&v9[OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_osLogObject] = v7;
  sub_269275A6C(&v14, &v9[OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_siriAlarmManager]);
  v13.receiver = v9;
  v13.super_class = AlarmIntentHandler;
  v10 = v7;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(&v14);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v11;
}

void sub_2692A3854(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_2692C74F0();
  v93 = *(v6 - 8);
  v7 = *(v93 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v91 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2692C7310();
  v94 = *(v10 - 8);
  v95 = v10;
  v11 = *(v94 + 64);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v89 - v17;
  v19 = sub_2692C73E0();
  v92 = *(v19 - 8);
  v20 = *(v92 + 64);
  MEMORY[0x28223BE20](v19, v21);
  v96 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280302B08 != -1)
  {
    swift_once();
  }

  v23 = sub_2692C77C0();
  __swift_project_value_buffer(v23, qword_280303198);
  v24 = a1;
  v25 = sub_2692C77B0();
  v26 = sub_2692C7A00();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v89 = v19;
    v90 = v18;
    v28 = v6;
    v29 = v15;
    v30 = a2;
    v31 = v27;
    v32 = a3;
    v33 = swift_slowAlloc();
    *v31 = 138412290;
    *(v31 + 4) = v24;
    *v33 = v24;
    v34 = v24;
    _os_log_impl(&dword_269270000, v25, v26, "Resolving time for intent: %@.", v31, 0xCu);
    sub_2692A14A0(v33);
    v35 = v33;
    a3 = v32;
    MEMORY[0x26D6368E0](v35, -1, -1);
    v36 = v31;
    a2 = v30;
    v15 = v29;
    v6 = v28;
    v19 = v89;
    v18 = v90;
    MEMORY[0x26D6368E0](v36, -1, -1);
  }

  v37 = [v24 relativeOffsetInMinutes];
  if (v37)
  {
    v38 = v37;
    [v37 doubleValue];
    v40 = v39;

    if (v40 <= 1.0 || v40 < 1440.0)
    {
      sub_2692C73B0();
      v41 = v91;
      sub_2692C74B0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C68, &unk_2692CAA00);
      v42 = sub_2692C74E0();
      v43 = *(v42 - 8);
      v44 = v43;
      v90 = a2;
      v45 = *(v43 + 72);
      v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_2692CA9F0;
      v48 = v47 + v46;
      v49 = *MEMORY[0x277CC9980];
      v89 = a3;
      v50 = *(v44 + 104);
      v50(v48, v49, v42);
      v50(v48 + v45, *MEMORY[0x277CC99A0], v42);
      sub_2692A5EEC(v47);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v51 = v96;
      sub_2692C7460();

      (*(v93 + 8))(v41, v6);
      v52 = objc_opt_self();
      v53 = sub_2692C7270();
      v54 = [v52 successWithResolvedDateComponents_];

      (v90)(v54);
      (*(v94 + 8))(v18, v95);
      (*(v92 + 8))(v51, v19);
      return;
    }

    v67 = sub_2692C77B0();
    v68 = sub_2692C7A00();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_269270000, v67, v68, "Duration too long, relativeOffsetInMinutes=offset, unsupported().", v69, 2u);
      MEMORY[0x26D6368E0](v69, -1, -1);
    }

    sub_26927CC94(0, &qword_280302C38, 0x277CD3B80);
    v70 = [swift_getObjCClassFromMetadata() unsupported];
    goto LABEL_23;
  }

  v55 = [v24 time];
  if (v55)
  {
    v56 = v55;
    sub_2692C7280();

    v57 = sub_2692C7290();
    if (v58 & 1) != 0 || (v59 = v57, v60 = sub_2692C72B0(), (v61))
    {
      v62 = sub_2692C77B0();
      v63 = sub_2692C7A00();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_269270000, v62, v63, "intent has no time element, needsValue().", v64, 2u);
        MEMORY[0x26D6368E0](v64, -1, -1);
      }

      sub_26927CC94(0, &qword_280302C38, 0x277CD3B80);
      v65 = [swift_getObjCClassFromMetadata() needsValue];
    }

    else
    {
      if (v59 > 0x17 || v60 > 0x3B)
      {
        v84 = sub_2692C77B0();
        v85 = sub_2692C7A00();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          *v86 = 0;
          _os_log_impl(&dword_269270000, v84, v85, "intent time is illegal, unsupported().", v86, 2u);
          MEMORY[0x26D6368E0](v86, -1, -1);
        }
      }

      else
      {
        if ((sub_2692A6B60(v15) & 1) != 0 || (v75 = [v24 repeatSchedule]) != 0 && ((v76 = v75, type metadata accessor for AlarmRepeatSchedule(), v77 = sub_2692C7930(), v76, v77 >> 62) ? (v78 = sub_2692C7C60()) : (v78 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v78))
        {
          v79 = sub_2692C77B0();
          v80 = sub_2692C7A00();
          if (os_log_type_enabled(v79, v80))
          {
            v81 = swift_slowAlloc();
            *v81 = 0;
            _os_log_impl(&dword_269270000, v79, v80, "Time resolved successfully.", v81, 2u);
            MEMORY[0x26D6368E0](v81, -1, -1);
          }

          v82 = objc_opt_self();
          v83 = sub_2692C7270();
          v66 = [v82 successWithResolvedDateComponents_];

          goto LABEL_16;
        }

        v84 = sub_2692C77B0();
        v87 = sub_2692C7A00();
        if (os_log_type_enabled(v84, v87))
        {
          v88 = swift_slowAlloc();
          *v88 = 0;
          _os_log_impl(&dword_269270000, v84, v87, "intent time is more than one day ahead and not repeating, unsupported().", v88, 2u);
          MEMORY[0x26D6368E0](v88, -1, -1);
        }
      }

      sub_26927CC94(0, &qword_280302C38, 0x277CD3B80);
      v65 = [swift_getObjCClassFromMetadata() unsupported];
    }

    v66 = v65;
LABEL_16:
    a2();

    (*(v94 + 8))(v15, v95);
    return;
  }

  v71 = sub_2692C77B0();
  v72 = sub_2692C7A00();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&dword_269270000, v71, v72, "Intent has no time or relativeOffsetInMinutes, needsValue().", v73, 2u);
    MEMORY[0x26D6368E0](v73, -1, -1);
  }

  sub_26927CC94(0, &qword_280302C38, 0x277CD3B80);
  v70 = [swift_getObjCClassFromMetadata() needsValue];
LABEL_23:
  v96 = v70;
  a2();
  v74 = v96;
}

void sub_2692A42EC(uint64_t a1, void (*a2)(char *))
{
  if (CreateAlarmIntent.eligibleForTimerReformation.getter())
  {
    if (qword_280302B08 != -1)
    {
      swift_once();
    }

    v3 = sub_2692C77C0();
    __swift_project_value_buffer(v3, qword_280303198);
    v4 = sub_2692C77B0();
    v5 = sub_2692C7A00();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_269270000, v4, v5, "Alarm2Timer: Confirming intent with reformation semantics", v6, 2u);
      MEMORY[0x26D6368E0](v6, -1, -1);
    }

    v7 = [objc_allocWithZone(type metadata accessor for CreateAlarmIntentResponse()) init];
    v8 = OBJC_IVAR___CreateAlarmIntentResponse_code;
    swift_beginAccess();
    *&v7[v8] = 100;
  }

  else
  {
    if (qword_280302B08 != -1)
    {
      swift_once();
    }

    v9 = sub_2692C77C0();
    __swift_project_value_buffer(v9, qword_280303198);
    v10 = sub_2692C77B0();
    v11 = sub_2692C7A00();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_269270000, v10, v11, "Alarm2Timer: Confirming intent normally", v12, 2u);
      MEMORY[0x26D6368E0](v12, -1, -1);
    }

    v7 = [objc_allocWithZone(type metadata accessor for CreateAlarmIntentResponse()) init];
    v13 = OBJC_IVAR___CreateAlarmIntentResponse_code;
    swift_beginAccess();
    *&v7[v13] = 1;
  }

  [v7 setUserActivity_];
  a2(v7);
}

void sub_2692A455C(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void sub_2692A45EC(void *a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v8 = sub_2692C77A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v33[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (CreateAlarmIntent.eligibleForTimerReformation.getter())
  {
    if (qword_280302B08 != -1)
    {
      swift_once();
    }

    v14 = sub_2692C77C0();
    __swift_project_value_buffer(v14, qword_280303198);
    v15 = sub_2692C77B0();
    v16 = sub_2692C7A00();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_269270000, v15, v16, "Alarm2Timer: NOT handling intent with reformation semantics", v17, 2u);
      MEMORY[0x26D6368E0](v17, -1, -1);
    }

    v18 = [objc_allocWithZone(type metadata accessor for CreateAlarmIntentResponse()) init];
    v19 = OBJC_IVAR___CreateAlarmIntentResponse_code;
    swift_beginAccess();
    *&v18[v19] = 100;
    [v18 setUserActivity_];
    a2(v18);
  }

  else
  {
    if (qword_280302B08 != -1)
    {
      swift_once();
    }

    v20 = sub_2692C77C0();
    __swift_project_value_buffer(v20, qword_280303198);
    v21 = sub_2692C77B0();
    v22 = sub_2692C7A00();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_269270000, v21, v22, "Handling create alarm intent.", v23, 2u);
      MEMORY[0x26D6368E0](v23, -1, -1);
    }

    sub_2692C7A20();
    v24 = *&v4[OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_osLogObject];
    sub_2692C7790();
    sub_2692C7780();
    (*(v9 + 8))(v13, v8);
    sub_269275A6C(&v4[OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_siriAlarmManager], v33);
    v25 = v34;
    v26 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    Alarm = CreateAlarmIntent.alarmSearch.getter();
    v28 = swift_allocObject();
    v28[2] = v4;
    v28[3] = a1;
    v28[4] = a2;
    v28[5] = a3;
    v29 = *(v26 + 56);
    v30 = v4;
    v31 = a1;

    v29(Alarm, sub_2692A7328, v28, v25, v26);

    __swift_destroy_boxed_opaque_existential_1Tm(v33);
  }
}

void sub_2692A49A4(uint64_t a1, char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v97 = a3;
  v9 = sub_2692C77A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = *(a1 + 8);
  sub_2692C7A10();
  v17 = *&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_osLogObject];
  sub_2692C7790();
  v96 = v17;
  sub_2692C7780();
  v18 = *(v10 + 8);
  v18(v14, v9);
  if (v16)
  {
    if (v15 != 12)
    {
      if (qword_280302B08 != -1)
      {
        swift_once();
      }

      v34 = sub_2692C77C0();
      __swift_project_value_buffer(v34, qword_280303198);
      v20 = sub_2692C77B0();
      v21 = sub_2692C79F0();
      if (!os_log_type_enabled(v20, v21))
      {
        goto LABEL_25;
      }

      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "Search Error happens in alarm create, create an new alarm anyways!";
      goto LABEL_24;
    }

    if (qword_280302B08 == -1)
    {
LABEL_4:
      v19 = sub_2692C77C0();
      __swift_project_value_buffer(v19, qword_280303198);
      v20 = sub_2692C77B0();
      v21 = sub_2692C7A00();
      if (!os_log_type_enabled(v20, v21))
      {
LABEL_25:

        sub_2692C7A20();
        sub_2692C7790();
        sub_2692C7780();
        v18(v14, v9);
        sub_269275A6C(&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_siriAlarmManager], v98);
        v35 = v99;
        v36 = v100;
        __swift_project_boxed_opaque_existential_1(v98, v99);
        v37 = swift_allocObject();
        v37[2] = a2;
        v37[3] = a4;
        v37[4] = a5;
        v38 = *(v36 + 72);
        v39 = a2;

        v40 = sub_2692A85F4;
LABEL_52:
        v38(v97, v40, v37, v35, v36);

LABEL_53:
        __swift_destroy_boxed_opaque_existential_1Tm(v98);
        return;
      }

      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "No alarm was found, create one.";
LABEL_24:
      _os_log_impl(&dword_269270000, v20, v21, v23, v22, 2u);
      MEMORY[0x26D6368E0](v22, -1, -1);
      goto LABEL_25;
    }

LABEL_56:
    swift_once();
    goto LABEL_4;
  }

  v95 = a4;
  a4 = v15 & 0xFFFFFFFFFFFFFF8;
  if (!(v15 >> 62))
  {
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

LABEL_51:
    sub_2692C7A20();
    sub_2692C7790();
    sub_2692C7780();
    v18(v14, v9);
    sub_269275A6C(&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_siriAlarmManager], v98);
    v35 = v99;
    v36 = v100;
    __swift_project_boxed_opaque_existential_1(v98, v99);
    v37 = swift_allocObject();
    v75 = v95;
    v37[2] = a2;
    v37[3] = v75;
    v37[4] = a5;
    v38 = *(v36 + 72);
    v76 = a2;

    v40 = sub_2692A8698;
    goto LABEL_52;
  }

  if (!sub_2692C7C60())
  {
    goto LABEL_51;
  }

LABEL_8:
  v92 = a5;
  v93 = v15 & 0xC000000000000001;
  if ((v15 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x26D6360D0](0, v15);
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_56;
    }

    v24 = *(v15 + 32);
  }

  v25 = [v24 repeatSchedule];
  v94 = v18;
  if (v25)
  {
    v26 = v25;
    type metadata accessor for AlarmRepeatSchedule();
    v27 = sub_2692C7930();

    v28 = v27 >> 62 ? sub_2692C7C60() : *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);

    v18 = v94;
    if (v28)
    {
      v29 = [v97 repeatSchedule];
      if (!v29)
      {
        goto LABEL_60;
      }

      v30 = v29;
      v31 = sub_2692C7930();

      if (v31 >> 62)
      {
        goto LABEL_59;
      }

      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v32)
      {
LABEL_60:
        if (qword_280302B08 != -1)
        {
          swift_once();
        }

        v78 = sub_2692C77C0();
        __swift_project_value_buffer(v78, qword_280303198);
        v79 = sub_2692C77B0();
        v80 = sub_2692C7A00();
        v81 = os_log_type_enabled(v79, v80);
        v82 = v92;
        v83 = v95;
        if (v81)
        {
          v84 = swift_slowAlloc();
          *v84 = 0;
          _os_log_impl(&dword_269270000, v79, v80, "Recurrent alarm found, create a non-recurrent alarm.", v84, 2u);
          v85 = v84;
          v18 = v94;
          MEMORY[0x26D6368E0](v85, -1, -1);
        }

        sub_2692C7A20();
        sub_2692C7790();
        sub_2692C7780();
        v18(v14, v9);
        sub_269275A6C(&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_siriAlarmManager], v98);
        v86 = v99;
        v87 = v100;
        __swift_project_boxed_opaque_existential_1(v98, v99);
        v88 = swift_allocObject();
        v88[2] = a2;
        v88[3] = v83;
        v88[4] = v82;
        v89 = *(v87 + 72);
        v90 = a2;

        v89(v97, sub_2692A8698, v88, v86, v87);

        goto LABEL_53;
      }
    }
  }

  while (1)
  {

    if (v93)
    {
      v33 = MEMORY[0x26D6360D0](0, v15);
      goto LABEL_28;
    }

    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    __break(1u);
LABEL_59:
    v77 = sub_2692C7C60();

    if (!v77)
    {
      goto LABEL_60;
    }
  }

  v33 = *(v15 + 32);
LABEL_28:
  v41 = v33;
  v42 = [v33 enabled];
  sub_26927CC94(0, &qword_280302CC0, 0x277CCABB0);
  v43 = sub_2692C7A50();
  v44 = v43;
  if (!v42)
  {

LABEL_36:
    if (v93)
    {
      v15 = MEMORY[0x26D6360D0](0, v15);
      v54 = v94;
      a4 = v95;
    }

    else
    {
      v54 = v94;
      if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_66;
      }

      v15 = *(v15 + 32);
      a4 = v95;
    }

    v55 = [v15 sleepAlarmAttribute];
    if (v55)
    {
      v56 = v55;

      if (qword_280302B08 != -1)
      {
        swift_once();
      }

      v57 = sub_2692C77C0();
      __swift_project_value_buffer(v57, qword_280303198);
      v58 = sub_2692C77B0();
      v59 = sub_2692C79F0();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_269270000, v58, v59, "Found existing alarm, but it's nil. Create an new alarm anyways!", v60, 2u);
        v61 = v60;
        v54 = v94;
        MEMORY[0x26D6368E0](v61, -1, -1);
      }

      sub_2692C7A20();
      sub_2692C7790();
      sub_2692C7780();
      v54(v14, v9);
      sub_269275A6C(&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_siriAlarmManager], v98);
      v35 = v99;
      v36 = v100;
      __swift_project_boxed_opaque_existential_1(v98, v99);
      v37 = swift_allocObject();
      v37[2] = a2;
      v37[3] = a4;
      v37[4] = v92;
      v38 = *(v36 + 72);
      v62 = a2;

      v40 = sub_2692A8698;
      goto LABEL_52;
    }

    if (qword_280302B08 == -1)
    {
LABEL_47:
      v63 = sub_2692C77C0();
      __swift_project_value_buffer(v63, qword_280303198);
      v64 = sub_2692C77B0();
      v65 = sub_2692C7A00();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_269270000, v64, v65, "Found disabled identical alarm, enable it.", v66, 2u);
        v67 = v66;
        v54 = v94;
        MEMORY[0x26D6368E0](v67, -1, -1);
      }

      sub_2692C7A20();
      sub_2692C7790();
      sub_2692C7780();
      v54(v14, v9);
      sub_269275A6C(&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_siriAlarmManager], v98);
      v68 = v99;
      v69 = v100;
      __swift_project_boxed_opaque_existential_1(v98, v99);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_2692C9430;
      *(v70 + 32) = v15;
      v71 = swift_allocObject();
      v71[2] = a2;
      v71[3] = a4;
      v71[4] = v92;
      v72 = *(v69 + 16);
      v73 = a2;

      v74 = v15;
      v72(v70, sub_2692A8600, v71, v68, v69);

      goto LABEL_53;
    }

LABEL_66:
    swift_once();
    goto LABEL_47;
  }

  v45 = sub_2692C7A70();

  if ((v45 & 1) == 0)
  {
    goto LABEL_36;
  }

  v46 = [objc_allocWithZone(type metadata accessor for CreateAlarmIntentResponse()) init];
  v47 = OBJC_IVAR___CreateAlarmIntentResponse_code;
  swift_beginAccess();
  *&v46[v47] = 4;
  [v46 setUserActivity_];
  if (qword_280302B08 != -1)
  {
    swift_once();
  }

  v48 = sub_2692C77C0();
  __swift_project_value_buffer(v48, qword_280303198);
  v49 = sub_2692C77B0();
  v50 = sub_2692C7A00();
  v51 = os_log_type_enabled(v49, v50);
  v52 = v95;
  if (v51)
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_269270000, v49, v50, "Found enabled identical alarm, do nothing.", v53, 2u);
    MEMORY[0x26D6368E0](v53, -1, -1);
  }

  [v46 setCreatedAlarm_];
  [v46 setSuccessCode_];
  v52(v46);
}

void sub_2692A5708(uint64_t *a1, uint64_t a2, void (*a3)(char *))
{
  v6 = sub_2692C77A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v25[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(a1 + 8);
  sub_2692C7A10();
  v14 = *(a2 + OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_osLogObject);
  sub_2692C7790();
  sub_2692C7780();
  (*(v7 + 8))(v11, v6);
  if (v13)
  {
    v15 = sub_2692C7760();
    v25[3] = v15;
    v25[4] = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
    sub_269280704();
    v17 = swift_allocError();
    *v18 = v12;
    *boxed_opaque_existential_1 = sub_2692C7320();
    v19 = *MEMORY[0x277D61838];
    v20 = sub_2692C76A0();
    (*(*(v20 - 8) + 104))(boxed_opaque_existential_1, v19, v20);
    (*(*(v15 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618F0], v15);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v25);

    v21 = [objc_allocWithZone(type metadata accessor for CreateAlarmIntentResponse()) init];
    v22 = OBJC_IVAR___CreateAlarmIntentResponse_code;
    swift_beginAccess();
    *&v21[v22] = 5;
    [v21 setUserActivity_];
  }

  else
  {
    v21 = [objc_allocWithZone(type metadata accessor for CreateAlarmIntentResponse()) init];
    v23 = OBJC_IVAR___CreateAlarmIntentResponse_code;
    swift_beginAccess();
    *&v21[v23] = 4;
    [v21 setUserActivity_];
    [v21 setCreatedAlarm_];
    [v21 setSuccessCode_];
  }

  a3(v21);
}

void sub_2692A5A0C(unint64_t *a1, uint64_t a2, void (*a3)(char *))
{
  v6 = sub_2692C77A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v27[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(a1 + 8);
  sub_2692C7A10();
  v14 = *(a2 + OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_osLogObject);
  sub_2692C7790();
  sub_2692C7780();
  (*(v7 + 8))(v11, v6);
  if (v13)
  {
    v15 = sub_2692C7760();
    v27[3] = v15;
    v27[4] = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
    sub_269280704();
    v17 = swift_allocError();
    *v18 = v12;
    *boxed_opaque_existential_1 = sub_2692C7320();
    v19 = *MEMORY[0x277D61838];
    v20 = sub_2692C76A0();
    (*(*(v20 - 8) + 104))(boxed_opaque_existential_1, v19, v20);
    (*(*(v15 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618F0], v15);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v27);

    v21 = [objc_allocWithZone(type metadata accessor for CreateAlarmIntentResponse()) init];
    v22 = OBJC_IVAR___CreateAlarmIntentResponse_code;
    swift_beginAccess();
    *&v21[v22] = 5;
    [v21 setUserActivity_];
LABEL_12:
    a3(v21);

    return;
  }

  v21 = [objc_allocWithZone(type metadata accessor for CreateAlarmIntentResponse()) init];
  v23 = OBJC_IVAR___CreateAlarmIntentResponse_code;
  swift_beginAccess();
  *&v21[v23] = 4;
  [v21 setUserActivity_];
  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:
    v25 = 0;
    goto LABEL_11;
  }

  if (!sub_2692C7C60())
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x26D6360D0](0, v12);
    goto LABEL_8;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v24 = *(v12 + 32);
LABEL_8:
    v25 = v24;
LABEL_11:
    [v21 setCreatedAlarm_];

    [v21 setSuccessCode_];
    goto LABEL_12;
  }

  __break(1u);
}

id CreateAlarmIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CreateAlarmIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2692A5DF0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a3;
  v14[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v8 = OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_osLogObject;
  if (qword_280302B50 != -1)
  {
    swift_once();
  }

  v9 = qword_280303380;
  *&a2[v8] = qword_280303380;
  sub_269275A6C(v14, &a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_siriAlarmManager]);
  v13.receiver = a2;
  v13.super_class = type metadata accessor for CreateAlarmIntentHandler();
  v10 = v9;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return v11;
}

uint64_t sub_2692A5EEC(uint64_t a1)
{
  v2 = sub_2692C74E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v41 = &v34 - v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803031D0, &qword_2692CAA48);
    v12 = sub_2692C7B60();
    v13 = 0;
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v39 = v15;
    v40 = v12 + 56;
    v16 = *(v14 + 64);
    v36 = v11;
    v37 = a1 + ((v16 + 32) & ~v16);
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    v35 = (v14 + 16);
    while (1)
    {
      v38 = v13;
      v39(v41, v37 + v17 * v13, v2);
      v19 = *(v12 + 40);
      sub_2692A864C(&qword_2803031D8, MEMORY[0x277CC99D0]);
      v20 = sub_2692C77F0();
      v21 = ~(-1 << *(v12 + 32));
      v22 = v20 & v21;
      v23 = (v20 & v21) >> 6;
      v24 = *(v40 + 8 * v23);
      v25 = 1 << (v20 & v21);
      if ((v25 & v24) != 0)
      {
        while (1)
        {
          v26 = v14;
          v39(v8, *(v12 + 48) + v22 * v17, v2);
          sub_2692A864C(&qword_2803031E0, MEMORY[0x277CC99D0]);
          v27 = sub_2692C7810();
          v28 = *v18;
          (*v18)(v8, v2);
          if (v27)
          {
            break;
          }

          v22 = (v22 + 1) & v21;
          v23 = v22 >> 6;
          v24 = *(v40 + 8 * (v22 >> 6));
          v25 = 1 << v22;
          v14 = v26;
          if (((1 << v22) & v24) == 0)
          {
            goto LABEL_8;
          }
        }

        v28(v41, v2);
        v14 = v26;
      }

      else
      {
LABEL_8:
        v29 = v41;
        *(v40 + 8 * v23) = v25 | v24;
        result = (*v35)(*(v12 + 48) + v22 * v17, v29, v2);
        v31 = *(v12 + 16);
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          __break(1u);
          return result;
        }

        *(v12 + 16) = v33;
      }

      v13 = v38 + 1;
      if (v38 + 1 == v36)
      {
        return v12;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_2692A620C(void *a1, char *a2, const void *a3)
{
  v6 = sub_2692C77A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_2692A84A8;
  *(v13 + 24) = v12;
  _Block_copy(a3);

  if (CreateAlarmIntent.eligibleForTimerReformation.getter())
  {
    if (qword_280302B08 != -1)
    {
      swift_once();
    }

    v14 = sub_2692C77C0();
    __swift_project_value_buffer(v14, qword_280303198);
    v15 = sub_2692C77B0();
    v16 = sub_2692C7A00();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_269270000, v15, v16, "Alarm2Timer: NOT handling intent with reformation semantics", v17, 2u);
      MEMORY[0x26D6368E0](v17, -1, -1);
    }

    v18 = [objc_allocWithZone(type metadata accessor for CreateAlarmIntentResponse()) init];
    v19 = OBJC_IVAR___CreateAlarmIntentResponse_code;
    swift_beginAccess();
    *&v18[v19] = 100;
    [v18 setUserActivity_];
    _Block_copy(a3);
    sub_26928CC68(v18, a3);
    _Block_release(a3);
  }

  else
  {
    v20 = a1;
    if (qword_280302B08 != -1)
    {
      swift_once();
    }

    v36 = v13;
    v37 = v12;
    v21 = sub_2692C77C0();
    __swift_project_value_buffer(v21, qword_280303198);
    v22 = sub_2692C77B0();
    v23 = sub_2692C7A00();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_269270000, v22, v23, "Handling create alarm intent.", v24, 2u);
      MEMORY[0x26D6368E0](v24, -1, -1);
    }

    sub_2692C7A20();
    v25 = *&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_osLogObject];
    sub_2692C7790();
    sub_2692C7780();
    (*(v7 + 8))(v11, v6);
    sub_269275A6C(&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_siriAlarmManager], v38);
    v27 = v39;
    v26 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    v28 = v20;
    Alarm = CreateAlarmIntent.alarmSearch.getter();
    v30 = swift_allocObject();
    v30[2] = a2;
    v30[3] = v20;
    v31 = v36;
    v30[4] = sub_2692A84B0;
    v30[5] = v31;
    v32 = *(v26 + 56);
    v33 = a2;
    v34 = v28;

    v32(Alarm, sub_2692A8694, v30, v27, v26);

    __swift_destroy_boxed_opaque_existential_1Tm(v38);
  }
}

void sub_2692A665C(void *a1, char *a2, void (*a3)(char *), uint64_t a4)
{
  v8 = sub_2692C77A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v35[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;

  if (CreateAlarmIntent.eligibleForTimerReformation.getter())
  {
    if (qword_280302B08 != -1)
    {
      swift_once();
    }

    v15 = sub_2692C77C0();
    __swift_project_value_buffer(v15, qword_280303198);
    v16 = sub_2692C77B0();
    v17 = sub_2692C7A00();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_269270000, v16, v17, "Alarm2Timer: NOT handling intent with reformation semantics", v18, 2u);
      MEMORY[0x26D6368E0](v18, -1, -1);
    }

    v19 = [objc_allocWithZone(type metadata accessor for CreateAlarmIntentResponse()) init];
    v20 = OBJC_IVAR___CreateAlarmIntentResponse_code;
    swift_beginAccess();
    *&v19[v20] = 100;
    [v19 setUserActivity_];
    sub_269289244(v19, a3);
  }

  else
  {
    if (qword_280302B08 != -1)
    {
      swift_once();
    }

    v21 = sub_2692C77C0();
    __swift_project_value_buffer(v21, qword_280303198);
    v22 = sub_2692C77B0();
    v23 = sub_2692C7A00();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_269270000, v22, v23, "Handling create alarm intent.", v24, 2u);
      MEMORY[0x26D6368E0](v24, -1, -1);
    }

    sub_2692C7A20();
    v25 = *&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_osLogObject];
    sub_2692C7790();
    sub_2692C7780();
    (*(v9 + 8))(v13, v8);
    sub_269275A6C(&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_siriAlarmManager], v35);
    v26 = v36;
    v27 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    Alarm = CreateAlarmIntent.alarmSearch.getter();
    v29 = swift_allocObject();
    v29[2] = a2;
    v29[3] = a1;
    v29[4] = sub_2692A869C;
    v29[5] = v14;
    v30 = a2;
    v31 = *(v27 + 56);
    v32 = v30;
    v33 = a1;

    v31(Alarm, sub_2692A8694, v29, v26, v27);

    __swift_destroy_boxed_opaque_existential_1Tm(v35);
  }
}

id sub_2692A6A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(type metadata accessor for CreateAlarmIntentHandler());
  (*(v7 + 16))(v10, a1, a3);
  return sub_2692A5DF0(v10, v11, a3, a4);
}

uint64_t sub_2692A6B60(uint64_t a1)
{
  v83 = a1;
  v1 = sub_2692C74E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_2692C74F0();
  v7 = *(v84 - 8);
  isa = v7[8].isa;
  MEMORY[0x28223BE20](v84, v9);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C60, &qword_2692C96E0);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v81 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v79 - v18;
  v20 = sub_2692C73E0();
  v21 = *(v20 - 8);
  v22 = v21[8];
  v24 = MEMORY[0x28223BE20](v20, v23);
  v80 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v89 = &v79 - v28;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v79 = &v79 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v88 = &v79 - v34;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v38 = &v79 - v37;
  MEMORY[0x28223BE20](v36, v39);
  v41 = &v79 - v40;
  sub_2692C7610();
  sub_2692C74B0();
  (*(v2 + 104))(v6, *MEMORY[0x277CC9968], v1);
  v87 = v41;
  sub_2692C74A0();
  (*(v2 + 8))(v6, v1);
  v42 = v7[1].isa;
  v43 = v84;
  v82 = v7 + 1;
  v42(v11);
  v44 = v21[6];
  result = v44(v19, 1, v20);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_13;
  }

  v85 = v38;
  v86 = v21;
  v46 = v21[4];
  v46(v38, v19, v20);
  sub_2692C74B0();
  v47 = v81;
  sub_2692C7480();
  (v42)(v11, v43);
  result = v44(v47, 1, v20);
  if (result == 1)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v48 = v88;
  v46(v88, v47, v20);
  v49 = v87;
  v51 = v79;
  v50 = v80;
  v52 = v89;
  if (qword_280302B08 != -1)
  {
    swift_once();
  }

  v53 = sub_2692C77C0();
  __swift_project_value_buffer(v53, qword_280303198);
  v54 = v86;
  v55 = v86[2];
  v55(v51, v48, v20);
  v55(v52, v49, v20);
  v56 = v51;
  v57 = v85;
  v55(v50, v85, v20);
  v58 = sub_2692C77B0();
  v59 = sub_2692C7A00();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    LODWORD(v83) = v59;
    v61 = v60;
    v84 = swift_slowAlloc();
    v90 = v84;
    *v61 = 136315650;
    sub_2692A864C(&qword_280302C70, MEMORY[0x277CC9578]);
    v82 = v58;
    v62 = sub_2692C7D30();
    v64 = v63;
    v65 = v54[1];
    v65(v56, v20);
    v66 = sub_26927C4DC(v62, v64, &v90);

    *(v61 + 4) = v66;
    *(v61 + 12) = 2080;
    v67 = v89;
    v68 = sub_2692C7D30();
    v70 = v69;
    v65(v67, v20);
    v71 = sub_26927C4DC(v68, v70, &v90);

    *(v61 + 14) = v71;
    *(v61 + 22) = 2080;
    v49 = v87;
    v72 = sub_2692C7D30();
    v74 = v73;
    v65(v50, v20);
    v48 = v88;
    v75 = sub_26927C4DC(v72, v74, &v90);
    v57 = v85;

    *(v61 + 24) = v75;
    v76 = v82;
    _os_log_impl(&dword_269270000, v82, v83, "alarmDate: %s, now: %s, oneDayLater: %s", v61, 0x20u);
    v77 = v84;
    swift_arrayDestroy();
    MEMORY[0x26D6368E0](v77, -1, -1);
    MEMORY[0x26D6368E0](v61, -1, -1);
  }

  else
  {

    v65 = v54[1];
    v65(v50, v20);
    v65(v89, v20);
    v65(v56, v20);
  }

  sub_2692A864C(&qword_2803031C8, MEMORY[0x277CC9578]);
  if (sub_2692C7800())
  {
    v78 = 0;
  }

  else
  {
    v78 = sub_2692C73A0();
  }

  v65(v48, v20);
  v65(v57, v20);
  v65(v49, v20);
  return v78 & 1;
}

void sub_2692A73FC(void *a1, uint64_t a2)
{
  v4 = sub_2692C74F0();
  v84 = *(v4 - 8);
  v85 = v4;
  v5 = *(v84 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2692C73E0();
  v86 = *(v9 - 8);
  v87 = v9;
  v10 = *(v86 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2692C7310();
  v88 = *(v14 - 8);
  v89 = v14;
  v15 = *(v88 + 64);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v82 - v21;
  if (qword_280302B08 != -1)
  {
    swift_once();
  }

  v23 = sub_2692C77C0();
  __swift_project_value_buffer(v23, qword_280303198);
  v24 = a1;
  v25 = sub_2692C77B0();
  v26 = sub_2692C7A00();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v83 = v8;
    v28 = a2;
    v29 = v27;
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v24;
    *v30 = v24;
    v31 = v24;
    _os_log_impl(&dword_269270000, v25, v26, "Resolving time for intent: %@.", v29, 0xCu);
    sub_2692A14A0(v30);
    MEMORY[0x26D6368E0](v30, -1, -1);
    v32 = v29;
    a2 = v28;
    v8 = v83;
    MEMORY[0x26D6368E0](v32, -1, -1);
  }

  v33 = [v24 relativeOffsetInMinutes];
  if (v33)
  {
    v34 = v33;
    [v33 doubleValue];
    v36 = v35;

    if (v36 <= 1.0 || v36 < 1440.0)
    {
      sub_2692C73B0();
      sub_2692C74B0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C68, &unk_2692CAA00);
      v37 = sub_2692C74E0();
      v38 = a2;
      v39 = *(v37 - 8);
      v40 = *(v39 + 72);
      v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_2692CA9F0;
      v43 = v42 + v41;
      v44 = *(v39 + 104);
      v44(v43, *MEMORY[0x277CC9980], v37);
      v44(v43 + v40, *MEMORY[0x277CC99A0], v37);
      sub_2692A5EEC(v42);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_2692C7460();

      (*(v84 + 8))(v8, v85);
      v45 = objc_opt_self();
      v46 = sub_2692C7270();
      v47 = [v45 successWithResolvedDateComponents_];

      (*(v38 + 16))(v38, v47);
      (*(v88 + 8))(v19, v89);
      (*(v86 + 8))(v13, v87);
      return;
    }

    v60 = sub_2692C77B0();
    v61 = sub_2692C7A00();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_269270000, v60, v61, "Duration too long, relativeOffsetInMinutes=offset, unsupported().", v62, 2u);
      MEMORY[0x26D6368E0](v62, -1, -1);
    }

    sub_26927CC94(0, &qword_280302C38, 0x277CD3B80);
    v63 = [swift_getObjCClassFromMetadata() unsupported];
    goto LABEL_23;
  }

  v48 = [v24 time];
  if (v48)
  {
    v49 = v48;
    sub_2692C7280();

    v50 = sub_2692C7290();
    if (v51 & 1) != 0 || (v52 = v50, v53 = sub_2692C72B0(), (v54))
    {
      v55 = sub_2692C77B0();
      v56 = sub_2692C7A00();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_269270000, v55, v56, "intent has no time element, needsValue().", v57, 2u);
        MEMORY[0x26D6368E0](v57, -1, -1);
      }

      sub_26927CC94(0, &qword_280302C38, 0x277CD3B80);
      v58 = [swift_getObjCClassFromMetadata() needsValue];
    }

    else
    {
      if (v52 > 0x17 || v53 >= 0x3C)
      {
        v77 = sub_2692C77B0();
        v78 = sub_2692C7A00();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          *v79 = 0;
          _os_log_impl(&dword_269270000, v77, v78, "intent time is illegal, unsupported().", v79, 2u);
          MEMORY[0x26D6368E0](v79, -1, -1);
        }
      }

      else
      {
        if ((sub_2692A6B60(v22) & 1) != 0 || (v68 = [v24 repeatSchedule]) != 0 && ((v69 = v68, type metadata accessor for AlarmRepeatSchedule(), v70 = sub_2692C7930(), v69, v70 >> 62) ? (v71 = sub_2692C7C60()) : (v71 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v71))
        {
          v72 = sub_2692C77B0();
          v73 = sub_2692C7A00();
          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            *v74 = 0;
            _os_log_impl(&dword_269270000, v72, v73, "Time resolved successfully.", v74, 2u);
            MEMORY[0x26D6368E0](v74, -1, -1);
          }

          v75 = objc_opt_self();
          v76 = sub_2692C7270();
          v59 = [v75 successWithResolvedDateComponents_];

          goto LABEL_16;
        }

        v77 = sub_2692C77B0();
        v80 = sub_2692C7A00();
        if (os_log_type_enabled(v77, v80))
        {
          v81 = swift_slowAlloc();
          *v81 = 0;
          _os_log_impl(&dword_269270000, v77, v80, "intent time is more than one day ahead and not repeating, unsupported().", v81, 2u);
          MEMORY[0x26D6368E0](v81, -1, -1);
        }
      }

      sub_26927CC94(0, &qword_280302C38, 0x277CD3B80);
      v58 = [swift_getObjCClassFromMetadata() unsupported];
    }

    v59 = v58;
LABEL_16:
    (*(a2 + 16))(a2, v59);

    (*(v88 + 8))(v22, v89);
    return;
  }

  v64 = sub_2692C77B0();
  v65 = sub_2692C7A00();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_269270000, v64, v65, "Intent has no time or relativeOffsetInMinutes, needsValue().", v66, 2u);
    MEMORY[0x26D6368E0](v66, -1, -1);
  }

  sub_26927CC94(0, &qword_280302C38, 0x277CD3B80);
  v63 = [swift_getObjCClassFromMetadata() needsValue];
LABEL_23:
  v89 = v63;
  (*(a2 + 16))(a2, v89);
  v67 = v89;
}

void sub_2692A7E5C(uint64_t a1, uint64_t a2)
{
  if (CreateAlarmIntent.eligibleForTimerReformation.getter())
  {
    if (qword_280302B08 != -1)
    {
      swift_once();
    }

    v3 = sub_2692C77C0();
    __swift_project_value_buffer(v3, qword_280303198);
    v4 = sub_2692C77B0();
    v5 = sub_2692C7A00();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_269270000, v4, v5, "Alarm2Timer: Confirming intent with reformation semantics", v6, 2u);
      MEMORY[0x26D6368E0](v6, -1, -1);
    }

    v7 = [objc_allocWithZone(type metadata accessor for CreateAlarmIntentResponse()) init];
    v8 = OBJC_IVAR___CreateAlarmIntentResponse_code;
    swift_beginAccess();
    *&v7[v8] = 100;
  }

  else
  {
    if (qword_280302B08 != -1)
    {
      swift_once();
    }

    v9 = sub_2692C77C0();
    __swift_project_value_buffer(v9, qword_280303198);
    v10 = sub_2692C77B0();
    v11 = sub_2692C7A00();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_269270000, v10, v11, "Alarm2Timer: Confirming intent normally", v12, 2u);
      MEMORY[0x26D6368E0](v12, -1, -1);
    }

    v7 = [objc_allocWithZone(type metadata accessor for CreateAlarmIntentResponse()) init];
    v13 = OBJC_IVAR___CreateAlarmIntentResponse_code;
    swift_beginAccess();
    *&v7[v13] = 1;
  }

  [v7 setUserActivity_];
  (*(a2 + 16))(a2, v7);
}

void sub_2692A80AC(void *a1, char *a2, void (**a3)(void, void))
{
  v6 = sub_2692C77A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v33[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  _Block_copy(a3);
  if (CreateAlarmIntent.eligibleForTimerReformation.getter())
  {
    if (qword_280302B08 != -1)
    {
      swift_once();
    }

    v13 = sub_2692C77C0();
    __swift_project_value_buffer(v13, qword_280303198);
    v14 = sub_2692C77B0();
    v15 = sub_2692C7A00();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_269270000, v14, v15, "Alarm2Timer: NOT handling intent with reformation semantics", v16, 2u);
      MEMORY[0x26D6368E0](v16, -1, -1);
    }

    v17 = [objc_allocWithZone(type metadata accessor for CreateAlarmIntentResponse()) init];
    v18 = OBJC_IVAR___CreateAlarmIntentResponse_code;
    swift_beginAccess();
    *&v17[v18] = 100;
    [v17 setUserActivity_];
    (a3)[2](a3, v17);
  }

  else
  {
    if (qword_280302B08 != -1)
    {
      swift_once();
    }

    v19 = sub_2692C77C0();
    __swift_project_value_buffer(v19, qword_280303198);
    v20 = sub_2692C77B0();
    v21 = sub_2692C7A00();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_269270000, v20, v21, "Handling create alarm intent.", v22, 2u);
      MEMORY[0x26D6368E0](v22, -1, -1);
    }

    sub_2692C7A20();
    v23 = *&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_osLogObject];
    sub_2692C7790();
    sub_2692C7780();
    (*(v7 + 8))(v11, v6);
    sub_269275A6C(&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_siriAlarmManager], v33);
    v24 = v34;
    v25 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    Alarm = CreateAlarmIntent.alarmSearch.getter();
    v27 = swift_allocObject();
    v27[2] = a2;
    v27[3] = a1;
    v27[4] = sub_26928062C;
    v27[5] = v12;
    v28 = a2;
    v29 = *(v25 + 56);
    v30 = v28;
    v31 = a1;

    v29(Alarm, sub_2692A8694, v27, v24, v25);

    __swift_destroy_boxed_opaque_existential_1Tm(v33);
  }
}

uint64_t sub_2692A84B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803031C0, &qword_2692CAA40);
    v3 = sub_2692C7B60();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      v11 = *(v3 + 40);
      sub_2692C7DE0();
      MEMORY[0x26D636320](v10);
      result = sub_2692C7E00();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t objectdestroy_27Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2692A864C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2692A86A0(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_14:
  v2 = sub_2692C7C60();
  if (!v2)
  {
    return 0;
  }

LABEL_3:
  v3 = 0;
  v4 = 0;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D6360D0](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v8 = [v5 repeatSchedule];
    if (v8 > 6)
    {
      break;
    }

    v9 = qword_2692CAA50[v8];

    v4 |= v9;
    ++v3;
    if (v7 == v2)
    {
      return v4;
    }
  }

  result = sub_2692C7D80();
  __break(1u);
  return result;
}

uint64_t sub_2692A87CC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
LABEL_24:
    v11 = a1;
    v3 = sub_2692C7C60();
    a1 = v11;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v15 = a1 & 0x10;
      v16 = a1 & 0x40;
      v18 = a1 & 8;
      v19 = a1 & 0x20;
      v17 = a1 & 2;
      v13 = a1 & 1;
      v14 = a1 & 4;
      LODWORD(v5) = 1;
      while (1)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          a1 = MEMORY[0x26D6360D0](v4, a2);
        }

        else
        {
          if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          a1 = *(a2 + 8 * v4 + 32);
        }

        v8 = a1;
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v10 = [a1 repeatSchedule];
        if (v10 <= 2)
        {
          if (v10)
          {
            v6 = v17;
            if (v10 != 1)
            {
              v6 = v14;
              if (v10 != 2)
              {
LABEL_27:
                result = sub_2692C7D80();
                __break(1u);
                return result;
              }
            }
          }

          else
          {
            v6 = v13;
          }
        }

        else if (v10 > 4)
        {
          v6 = v19;
          if (v10 != 5)
          {
            v6 = v16;
            if (v10 != 6)
            {
              goto LABEL_27;
            }
          }
        }

        else
        {
          v6 = v18;
          if (v10 != 3)
          {
            v6 = v15;
          }
        }

        v7 = v6 != 0;

        v5 = v7 & v5;
        ++v4;
        if (v9 == v3)
        {
          return v5;
        }
      }
    }
  }

  return 1;
}

id sub_2692A89C8(uint64_t a1)
{
  type metadata accessor for AlarmRepeatSchedule();
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_2692C7820();
  v4 = [v2 initWithIdentifier:0 displayString:v3];

  [v4 setRepeatSchedule_];
  return v4;
}

id DismissAlarmHalIntentHandler.__allocating_init(manager:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_2692AB5DC(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

uint64_t sub_2692A8AB0()
{
  v0 = sub_2692C77C0();
  __swift_allocate_value_buffer(v0, qword_2803031E8);
  v1 = __swift_project_value_buffer(v0, qword_2803031E8);
  if (qword_280302B40 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280303368);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id DismissAlarmHalIntentHandler.init(manager:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v5, v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = sub_2692AB4E0(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v10;
}

void sub_2692A8C64(void *a1, void (*a2)(char *))
{
  if (qword_280302B10 != -1)
  {
    swift_once();
  }

  v4 = sub_2692C77C0();
  __swift_project_value_buffer(v4, qword_2803031E8);
  v5 = sub_2692C77B0();
  v6 = sub_2692C7A00();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_269270000, v5, v6, "Calling DismissAlarmHalIntentHandler.confirm().", v7, 2u);
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
    v22 = [objc_allocWithZone(type metadata accessor for DismissAlarmHalIntentResponse()) init];
    v23 = OBJC_IVAR___DismissAlarmHalIntentResponse_code;
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
    _os_log_impl(&dword_269270000, v17, v18, "DismissAlarmHalIntentHandler returning needs confirm intent since the firing alarm is on remote device %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x26D6368E0](v20, -1, -1);
    MEMORY[0x26D6368E0](v19, -1, -1);
  }

  else
  {
  }

  v22 = [objc_allocWithZone(type metadata accessor for DismissAlarmHalIntentResponse()) init];
  v23 = OBJC_IVAR___DismissAlarmHalIntentResponse_code;
  swift_beginAccess();
  v24 = 3;
LABEL_13:
  *&v22[v23] = v24;
  [v22 setUserActivity_];
  a2(v22);
}

uint64_t sub_2692A901C(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C50, &unk_2692C96A0) - 8) + 64) + 15;
  v2[30] = swift_task_alloc();
  v4 = sub_2692C7360();
  v2[31] = v4;
  v5 = *(v4 - 8);
  v2[32] = v5;
  v6 = *(v5 + 64) + 15;
  v2[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2692A9114, 0, 0);
}

uint64_t sub_2692A9114()
{
  v59 = v0;
  if (qword_280302B10 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 224);
  v2 = sub_2692C77C0();
  *(v0 + 272) = __swift_project_value_buffer(v2, qword_2803031E8);
  v3 = v1;
  v4 = sub_2692C77B0();
  v5 = sub_2692C7A00();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 224);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v58 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_2692C7830();
    v13 = v12;

    v14 = sub_26927C4DC(v11, v13, &v58);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_269270000, v4, v5, "Calling DismissAlarmHalIntentHandler.handle() for intent: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D6368E0](v8, -1, -1);
    MEMORY[0x26D6368E0](v7, -1, -1);
  }

  v15 = [*(v0 + 224) remoteExecutionId];
  if (v15)
  {
    v16 = *(v0 + 224);
    v17 = v15;
    v18 = sub_2692C7830();
    v20 = v19;

    *(v0 + 280) = v18;
    *(v0 + 288) = v20;
    v21 = [v16 alarmId];
    if (!v21)
    {

      goto LABEL_13;
    }

    v22 = *(v0 + 248);
    v23 = *(v0 + 256);
    v24 = *(v0 + 240);
    v25 = v21;
    sub_2692C7830();

    sub_2692C7350();

    if ((*(v23 + 48))(v24, 1, v22) == 1)
    {
      v26 = *(v0 + 240);

      sub_26927CEA8(v26, &qword_280302C50, &unk_2692C96A0);
LABEL_13:
      v31 = sub_2692C77B0();
      v32 = sub_2692C79F0();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_269270000, v31, v32, "Failed to get a valid alarmId or alarmURL for SAAlarmDismiss command", v33, 2u);
        MEMORY[0x26D6368E0](v33, -1, -1);
      }

      v34 = sub_2692C7760();
      v35 = MEMORY[0x277D61908];
      *(v0 + 40) = v34;
      *(v0 + 48) = v35;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      *boxed_opaque_existential_1 = 0xD000000000000010;
      boxed_opaque_existential_1[1] = 0x80000002692CD3A0;
      v37 = *MEMORY[0x277D61878];
      v38 = sub_2692C7710();
      (*(*(v38 - 8) + 104))(boxed_opaque_existential_1, v37, v38);
      (*(*(v34 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v34);
      sub_2692C76B0();
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
      v39 = [objc_allocWithZone(type metadata accessor for DismissAlarmHalIntentResponse()) init];
      v40 = OBJC_IVAR___DismissAlarmHalIntentResponse_code;
      swift_beginAccess();
      *&v39[v40] = 5;
      [v39 setUserActivity_];
      v41 = *(v0 + 264);
      v42 = *(v0 + 240);

      v43 = *(v0 + 8);

      return v43(v39);
    }

    v45 = *(v0 + 256);
    v44 = *(v0 + 264);
    v46 = *(v0 + 248);
    (*(v45 + 32))(v44, *(v0 + 240), v46);
    v47 = [objc_allocWithZone(MEMORY[0x277D47160]) init];
    *(v0 + 296) = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302DC0, &qword_2692C9820);
    v48 = *(v45 + 72);
    v49 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_2692C9800;
    (*(v45 + 16))(v50 + v49, v44, v46);
    v51 = sub_2692C7910();

    [v47 setAlarmIds_];

    sub_2692C7580();
    v52 = *(v0 + 80);
    v53 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v52);
    v54 = *(MEMORY[0x277D5BFA8] + 4);
    v55 = swift_task_alloc();
    *(v0 + 304) = v55;
    v56 = sub_26927CC94(0, &qword_280302DC8, 0x277D471B0);
    *v55 = v0;
    v55[1] = sub_2692A97F0;

    return MEMORY[0x2821BB680](v47, v18, v20, v52, v56, v53);
  }

  else
  {
    v27 = swift_task_alloc();
    *(v0 + 320) = v27;
    v27[1] = vextq_s8(*(v0 + 224), *(v0 + 224), 8uLL);
    v28 = *(MEMORY[0x277D859E0] + 4);
    v29 = swift_task_alloc();
    *(v0 + 328) = v29;
    v30 = type metadata accessor for DismissAlarmHalIntentResponse();
    *v29 = v0;
    v29[1] = sub_2692A9B0C;

    return MEMORY[0x2822007B8](v0 + 208, 0, 0, 0x6928656C646E6168, 0xEF293A746E65746ELL, sub_2692AB6C0, v27, v30);
  }
}

uint64_t sub_2692A97F0(void *a1)
{
  v4 = *(*v2 + 304);
  v7 = *v2;
  *(*v2 + 312) = v1;

  if (v1)
  {
    v5 = sub_2692A9C98;
  }

  else
  {

    v5 = sub_2692A990C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2692A990C()
{
  v22 = v0;
  v1 = v0[36];
  v2 = v0[34];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);

  v3 = sub_2692C77B0();
  v4 = sub_2692C7A00();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[36];
  if (v5)
  {
    v7 = v0[35];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315138;
    v10 = sub_26927C4DC(v7, v6, &v21);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_269270000, v3, v4, "Execute SAAlarmDismiss on remote device %s succeeded!", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x26D6368E0](v9, -1, -1);
    MEMORY[0x26D6368E0](v8, -1, -1);
  }

  else
  {
  }

  v11 = v0[37];
  v13 = v0[32];
  v12 = v0[33];
  v14 = v0[31];
  v15 = [objc_allocWithZone(type metadata accessor for DismissAlarmHalIntentResponse()) init];
  v16 = OBJC_IVAR___DismissAlarmHalIntentResponse_code;
  swift_beginAccess();
  *&v15[v16] = 4;
  [v15 setUserActivity_];

  (*(v13 + 8))(v12, v14);
  v17 = v0[33];
  v18 = v0[30];

  v19 = v0[1];

  return v19(v15);
}

uint64_t sub_2692A9B0C()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 320);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2692A9C24, 0, 0);
}

uint64_t sub_2692A9C24()
{
  v1 = v0[26];
  v2 = v0[33];
  v3 = v0[30];

  v4 = v0[1];

  return v4(v1);
}

uint64_t sub_2692A9C98()
{
  v35 = v0;
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[34];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);

  v4 = v1;
  v5 = sub_2692C77B0();
  v6 = sub_2692C79F0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[39];
    v9 = v0[35];
    v8 = v0[36];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v34 = v11;
    *v10 = 136315394;
    v12 = sub_26927C4DC(v9, v8, &v34);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2080;
    v0[27] = v7;
    v13 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302DD0, &qword_2692C9828);
    v14 = sub_2692C7840();
    v16 = sub_26927C4DC(v14, v15, &v34);

    *(v10 + 14) = v16;
    _os_log_impl(&dword_269270000, v5, v6, "Execute SAAlarmDismiss on remote device %s failed with error %s!", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6368E0](v11, -1, -1);
    MEMORY[0x26D6368E0](v10, -1, -1);
  }

  else
  {
    v17 = v0[36];
  }

  v18 = v0[39];
  v19 = v0[37];
  v21 = v0[32];
  v20 = v0[33];
  v22 = v0[31];
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
  v28 = [objc_allocWithZone(type metadata accessor for DismissAlarmHalIntentResponse()) init];
  v29 = OBJC_IVAR___DismissAlarmHalIntentResponse_code;
  swift_beginAccess();
  *&v28[v29] = 5;
  [v28 setUserActivity_];

  (*(v21 + 8))(v20, v22);
  v30 = v0[33];
  v31 = v0[30];

  v32 = v0[1];

  return v32(v28);
}

uint64_t sub_2692A9FEC(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280303210, &unk_2692CAB58);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v18[-1] - v10;
  sub_269275A6C(a2 + OBJC_IVAR____TtC21SiriTimeAlarmInternal28DismissAlarmHalIntentHandler_siriAlarmManager, v18);
  (*(v7 + 16))(v11, a1, v6);
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a2;
  (*(v7 + 32))(v13 + v12, v11, v6);
  v14 = a3;
  v15 = a2;
  static AlarmIntentHandlerUtils.getFiringAlarms(alarmManager:completion:)(v18, sub_2692ABE40, v13);

  return __swift_destroy_boxed_opaque_existential_1Tm(v18);
}

uint64_t sub_2692AA168(unint64_t a1, void *a2, char *a3, uint64_t a4)
{
  v38 = a4;
  v7 = sub_2692C77A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280303210, &unk_2692CAB58);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v37 - v17;
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v39 = v7;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_7:
    type metadata accessor for SiriAlarm();
    v21 = [a2 alarmId];
    if (v21)
    {
      v22 = v21;
      v37 = sub_2692C7830();

      v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v24 = sub_2692C7820();
    }

    else
    {
      v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v24 = 0;
    }

    v25 = sub_2692C7820();

    v20 = [v23 initWithIdentifier:v24 displayString:v25];

    goto LABEL_11;
  }

  result = sub_2692C7C60();
  v39 = v7;
  if (!result)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x26D6360D0](0, a1);
    goto LABEL_11;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(a1 + 32);
LABEL_11:
    (*(v14 + 16))(v18, v38, v13);
    v26 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v27 = swift_allocObject();
    (*(v14 + 32))(v27 + v26, v18, v13);
    v28 = v20;
    sub_2692C7A20();
    v29 = *&a3[OBJC_IVAR____TtC21SiriTimeAlarmInternal28DismissAlarmHalIntentHandler_osLogObject];
    sub_2692C7790();
    sub_2692C7780();
    (*(v8 + 8))(v12, v39);
    sub_269275A6C(&a3[OBJC_IVAR____TtC21SiriTimeAlarmInternal28DismissAlarmHalIntentHandler_siriAlarmManager], v40);
    v30 = v41;
    v31 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_2692C9430;
    *(v32 + 32) = v28;
    v33 = swift_allocObject();
    v33[2] = a3;
    v33[3] = sub_2692ABEC0;
    v33[4] = v27;
    v33[5] = v28;
    v34 = *(v31 + 40);
    v35 = v28;
    v36 = a3;

    v34(v32, sub_2692ABF3C, v33, v30, v31);

    return __swift_destroy_boxed_opaque_existential_1Tm(v40);
  }

  __break(1u);
  return result;
}

uint64_t sub_2692AA598(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280303210, &unk_2692CAB58);
  return sub_2692C79A0();
}

uint64_t sub_2692AA770(void *a1, void *aBlock, void *a3)
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

  return sub_2692A901C(v6);
}

void sub_2692AA834(uint64_t *a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5)
{
  v9 = sub_2692C77A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v45[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = *(a1 + 8);
  sub_2692C7A10();
  v17 = *(a2 + OBJC_IVAR____TtC21SiriTimeAlarmInternal28DismissAlarmHalIntentHandler_osLogObject);
  sub_2692C7790();
  sub_2692C7780();
  (*(v10 + 8))(v14, v9);
  if (v16 == 1)
  {
    if (qword_280302B10 != -1)
    {
      swift_once();
    }

    v18 = sub_2692C77C0();
    __swift_project_value_buffer(v18, qword_2803031E8);
    v19 = a5;
    v20 = sub_2692C77B0();
    v21 = sub_2692C79F0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45[0] = v44;
      *v22 = 136315138;
      v23 = v19;
      v24 = [v23 description];
      v25 = sub_2692C7830();
      v26 = a3;
      v28 = v27;

      v29 = sub_26927C4DC(v25, v28, v45);
      a3 = v26;

      *(v22 + 4) = v29;
      _os_log_impl(&dword_269270000, v20, v21, "Can NOT handle Dismiss alarm: %s", v22, 0xCu);
      v30 = v44;
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x26D6368E0](v30, -1, -1);
      MEMORY[0x26D6368E0](v22, -1, -1);
    }

    v31 = sub_2692C7760();
    v45[3] = v31;
    v45[4] = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
    sub_269280704();
    v33 = swift_allocError();
    *v34 = v15;
    *boxed_opaque_existential_1 = sub_2692C7320();
    v35 = *MEMORY[0x277D61838];
    v36 = sub_2692C76A0();
    (*(*(v36 - 8) + 104))(boxed_opaque_existential_1, v35, v36);
    (*(*(v31 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618F0], v31);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v45);

    v37 = [objc_allocWithZone(type metadata accessor for DismissAlarmHalIntentResponse()) init];
    v38 = OBJC_IVAR___DismissAlarmHalIntentResponse_code;
    swift_beginAccess();
    v39 = 5;
  }

  else
  {
    if (qword_280302B10 != -1)
    {
      swift_once();
    }

    v40 = sub_2692C77C0();
    __swift_project_value_buffer(v40, qword_2803031E8);
    v41 = sub_2692C77B0();
    v42 = sub_2692C7A00();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_269270000, v41, v42, "Alarm dismissed successfully", v43, 2u);
      MEMORY[0x26D6368E0](v43, -1, -1);
    }

    v37 = [objc_allocWithZone(type metadata accessor for DismissAlarmHalIntentResponse()) init];
    v38 = OBJC_IVAR___DismissAlarmHalIntentResponse_code;
    swift_beginAccess();
    v39 = 4;
  }

  *&v37[v38] = v39;
  [v37 setUserActivity_];
  a3(v37);
}

id DismissAlarmHalIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DismissAlarmHalIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DismissAlarmHalIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2692AAE34(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2692958EC;

  return v7();
}

uint64_t sub_2692AAF1C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_26929513C;

  return v8();
}

uint64_t sub_2692AB004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302DD8, &qword_2692C9868);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v26 - v12;
  sub_2692AB930(a3, v26 - v12);
  v14 = sub_2692C79C0();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_26927CEA8(v13, &qword_280302DD8, &qword_2692C9868);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2692C79B0();
  (*(v15 + 8))(v13, v14);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v16 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v17 = sub_2692C7990();
  v19 = v18;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v20 = sub_2692C7860() + 32;
    v21 = swift_allocObject();
    *(v21 + 16) = a4;
    *(v21 + 24) = a5;

    if (v19 | v17)
    {
      v27[0] = 0;
      v27[1] = 0;
      v22 = v27;
      v27[2] = v17;
      v27[3] = v19;
    }

    else
    {
      v22 = 0;
    }

    v26[1] = 7;
    v26[2] = v22;
    v26[3] = v20;
    v24 = swift_task_create();

    sub_26927CEA8(a3, &qword_280302DD8, &qword_2692C9868);

    return v24;
  }

LABEL_8:
  sub_26927CEA8(a3, &qword_280302DD8, &qword_2692C9868);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_2692AB2F0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2692AB3E8;

  return v7(a1);
}

uint64_t sub_2692AB3E8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id sub_2692AB4E0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a3;
  v14[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v8 = OBJC_IVAR____TtC21SiriTimeAlarmInternal28DismissAlarmHalIntentHandler_osLogObject;
  if (qword_280302B50 != -1)
  {
    swift_once();
  }

  v9 = qword_280303380;
  *&a2[v8] = qword_280303380;
  sub_269275A6C(v14, &a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal28DismissAlarmHalIntentHandler_siriAlarmManager]);
  v13.receiver = a2;
  v13.super_class = type metadata accessor for DismissAlarmHalIntentHandler();
  v10 = v9;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return v11;
}

id sub_2692AB5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(type metadata accessor for DismissAlarmHalIntentHandler());
  (*(v7 + 16))(v10, a1, a3);
  return sub_2692AB4E0(v10, v11, a3, a4);
}

uint64_t dispatch thunk of DismissAlarmHalIntentHandler.handle(intent:)(uint64_t a1)
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

uint64_t sub_2692AB87C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26929513C;

  return sub_2692AA770(v2, v3, v4);
}

uint64_t sub_2692AB930(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302DD8, &qword_2692C9868);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2692AB9A0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2692958EC;

  return sub_2692AB2F0(a1, v5);
}

uint64_t sub_2692ABA58(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26929513C;

  return sub_2692AB2F0(a1, v5);
}

void sub_2692ABB10(void *a1, uint64_t a2)
{
  if (qword_280302B10 != -1)
  {
    swift_once();
  }

  v4 = sub_2692C77C0();
  __swift_project_value_buffer(v4, qword_2803031E8);
  v5 = sub_2692C77B0();
  v6 = sub_2692C7A00();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_269270000, v5, v6, "Calling DismissAlarmHalIntentHandler.confirm().", v7, 2u);
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
    v22 = [objc_allocWithZone(type metadata accessor for DismissAlarmHalIntentResponse()) init];
    v23 = OBJC_IVAR___DismissAlarmHalIntentResponse_code;
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
    _os_log_impl(&dword_269270000, v17, v18, "DismissAlarmHalIntentHandler returning needs confirm intent since the firing alarm is on remote device %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x26D6368E0](v20, -1, -1);
    MEMORY[0x26D6368E0](v19, -1, -1);
  }

  else
  {
  }

  v22 = [objc_allocWithZone(type metadata accessor for DismissAlarmHalIntentResponse()) init];
  v23 = OBJC_IVAR___DismissAlarmHalIntentResponse_code;
  swift_beginAccess();
  v24 = 3;
LABEL_13:
  *&v22[v23] = v24;
  [v22 setUserActivity_];
  (*(a2 + 16))(a2, v22);
}

uint64_t sub_2692ABE40(unint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280303210, &unk_2692CAB58) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_2692AA168(a1, v4, v5, v6);
}

uint64_t sub_2692ABEC0(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280303210, &unk_2692CAB58) - 8) + 80);

  return sub_2692AA598(a1);
}

uint64_t SiriAlarmManagerImpl.__allocating_init(endpointUUID:)()
{

  if (qword_280302B28 != -1)
  {
    swift_once();
  }

  sub_269275A6C(&qword_280303238, v10);
  v0 = type metadata accessor for SiriAlarmManagerImpl();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_2692C7610();
  sub_2692C74B0();
  v4 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_sleepAlarmManager;
  type metadata accessor for SiriSleepAlarmManager();
  v5 = swift_allocObject();
  *(v3 + v4) = v5;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  v6 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_osLogObject;
  if (qword_280302B50 != -1)
  {
    swift_once();
  }

  v7 = qword_280303380;
  *(v3 + v6) = qword_280303380;
  sub_269275A30(v10, v3 + OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_alarmManager);
  v8 = v7;
  return v3;
}

uint64_t sub_2692AC078(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v23 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2692C7C60())
  {
    v8 = 0;
    v20 = v4 & 0xFFFFFFFFFFFFFF8;
    v21 = v4 & 0xC000000000000001;
    v19 = v4;
    while (1)
    {
      if (v21)
      {
        v9 = MEMORY[0x26D6360D0](v8, v4);
      }

      else
      {
        if (v8 >= *(v20 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v22 = v9;
      v12 = a2;
      v13 = a1(&v22);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_2692C7BF0();
        v14 = i;
        v15 = a1;
        v16 = a2;
        v17 = *(v23 + 16);
        sub_2692C7C20();
        a2 = v16;
        a1 = v15;
        i = v14;
        v4 = v19;
        sub_2692C7C30();
        sub_2692C7C00();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v23;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:

  return v12;
}

id sub_2692AC224(int a1)
{
  v32 = a1;
  v1 = sub_2692C77C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_2692C7640();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v31[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = sub_2692C7660();
  v13 = *(v34 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v34, v15);
  v17 = &v31[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v31[-v19];
  (*(v8 + 104))(v12, *MEMORY[0x277D617F8], v7);
  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v1, qword_280303218);
  (*(v2 + 16))(v6, v21, v1);
  mach_absolute_time();
  sub_2692C7670();
  v22 = [v33 alarmsIncludingSleepAlarm_];
  v23 = v34;
  if (!v22)
  {
    goto LABEL_5;
  }

  v24 = v22;
  (*(v13 + 16))(v17, v20, v34);
  v25 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v26 = swift_allocObject();
  (*(v13 + 32))(v26 + v25, v17, v23);
  aBlock[4] = sub_2692B54DC;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2692B54D8;
  aBlock[3] = &block_descriptor_92;
  v27 = _Block_copy(aBlock);

  v28 = [v24 addCompletionBlock_];
  _Block_release(v27);

  if (!v28)
  {
LABEL_5:
    sub_26927CC94(0, &qword_2803032E8, 0x277CBEA60);
    v29 = MEMORY[0x26D635F60](MEMORY[0x277D84F90]);
    v28 = [objc_opt_self() futureWithResult_];
  }

  (*(v13 + 8))(v20, v23);
  return v28;
}

id sub_2692AC630(uint64_t a1)
{
  v31 = a1;
  v1 = sub_2692C77C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2692C7640();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2692C7660();
  v13 = *(v32 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v32, v15);
  v17 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v20 = v30 - v19;
  (*(v8 + 104))(v12, *MEMORY[0x277D617F0], v7);
  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v1, qword_280303218);
  (*(v2 + 16))(v6, v21, v1);
  mach_absolute_time();
  sub_2692C7670();
  v22 = [v30[1] addAlarm_];
  v23 = v32;
  if (!v22)
  {
    goto LABEL_5;
  }

  v24 = v22;
  (*(v13 + 16))(v17, v20, v32);
  v25 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v26 = swift_allocObject();
  (*(v13 + 32))(v26 + v25, v17, v23);
  aBlock[4] = sub_2692B5148;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2692B54D8;
  aBlock[3] = &block_descriptor_86;
  v27 = _Block_copy(aBlock);

  v28 = [v24 addCompletionBlock_];
  _Block_release(v27);

  if (!v28)
  {
LABEL_5:
    v28 = [objc_opt_self() futureWithNoResult];
  }

  (*(v13 + 8))(v20, v23);
  return v28;
}

id sub_2692AC9FC(uint64_t a1)
{
  v31 = a1;
  v1 = sub_2692C77C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2692C7640();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2692C7660();
  v13 = *(v32 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v32, v15);
  v17 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v20 = v30 - v19;
  (*(v8 + 104))(v12, *MEMORY[0x277D61810], v7);
  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v1, qword_280303218);
  (*(v2 + 16))(v6, v21, v1);
  mach_absolute_time();
  sub_2692C7670();
  v22 = [v30[1] updateAlarm_];
  v23 = v32;
  if (!v22)
  {
    goto LABEL_5;
  }

  v24 = v22;
  (*(v13 + 16))(v17, v20, v32);
  v25 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v26 = swift_allocObject();
  (*(v13 + 32))(v26 + v25, v17, v23);
  aBlock[4] = sub_2692B54DC;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2692B54D8;
  aBlock[3] = &block_descriptor_80;
  v27 = _Block_copy(aBlock);

  v28 = [v24 addCompletionBlock_];
  _Block_release(v27);

  if (!v28)
  {
LABEL_5:
    v28 = [objc_opt_self() futureWithNoResult];
  }

  (*(v13 + 8))(v20, v23);
  return v28;
}

id sub_2692ACDC8(uint64_t a1)
{
  v31 = a1;
  v1 = sub_2692C77C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2692C7640();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2692C7660();
  v13 = *(v32 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v32, v15);
  v17 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v20 = v30 - v19;
  (*(v8 + 104))(v12, *MEMORY[0x277D61800], v7);
  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v1, qword_280303218);
  (*(v2 + 16))(v6, v21, v1);
  mach_absolute_time();
  sub_2692C7670();
  v22 = [v30[1] removeAlarm_];
  v23 = v32;
  if (!v22)
  {
    goto LABEL_5;
  }

  v24 = v22;
  (*(v13 + 16))(v17, v20, v32);
  v25 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v26 = swift_allocObject();
  (*(v13 + 32))(v26 + v25, v17, v23);
  aBlock[4] = sub_2692B54DC;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2692B54D8;
  aBlock[3] = &block_descriptor_74;
  v27 = _Block_copy(aBlock);

  v28 = [v24 addCompletionBlock_];
  _Block_release(v27);

  if (!v28)
  {
LABEL_5:
    v28 = [objc_opt_self() futureWithNoResult];
  }

  (*(v13 + 8))(v20, v23);
  return v28;
}

id sub_2692AD194(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v31 = a1;
  v2 = sub_2692C77C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2692C7640();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_2692C7660();
  v14 = *(v34 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v34, v16);
  v18 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v31 - v20;
  (*(v9 + 104))(v13, *MEMORY[0x277D61818], v8);
  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v2, qword_280303218);
  (*(v3 + 16))(v7, v22, v2);
  mach_absolute_time();
  sub_2692C7670();
  v23 = sub_2692C7820();
  v24 = [v33 dismissAlarmWithIdentifier_];

  v25 = v34;
  if (!v24)
  {
    goto LABEL_5;
  }

  (*(v14 + 16))(v18, v21, v34);
  v26 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v27 = swift_allocObject();
  (*(v14 + 32))(v27 + v26, v18, v25);
  aBlock[4] = sub_2692B54DC;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2692B54D8;
  aBlock[3] = &block_descriptor_68;
  v28 = _Block_copy(aBlock);

  v29 = [v24 addCompletionBlock_];
  _Block_release(v28);

  if (!v29)
  {
LABEL_5:
    v29 = [objc_opt_self() futureWithNoResult];
  }

  (*(v14 + 8))(v21, v25);
  return v29;
}

id sub_2692AD578(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v31 = a1;
  v2 = sub_2692C77C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2692C7640();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_2692C7660();
  v14 = *(v34 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v34, v16);
  v18 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v31 - v20;
  (*(v9 + 104))(v13, *MEMORY[0x277D61808], v8);
  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v2, qword_280303218);
  (*(v3 + 16))(v7, v22, v2);
  mach_absolute_time();
  sub_2692C7670();
  v23 = sub_2692C7820();
  v24 = [v33 snoozeAlarmWithIdentifier_];

  v25 = v34;
  if (!v24)
  {
    goto LABEL_5;
  }

  (*(v14 + 16))(v18, v21, v34);
  v26 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v27 = swift_allocObject();
  (*(v14 + 32))(v27 + v26, v18, v25);
  aBlock[4] = sub_2692B54DC;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2692B54D8;
  aBlock[3] = &block_descriptor_62;
  v28 = _Block_copy(aBlock);

  v29 = [v24 addCompletionBlock_];
  _Block_release(v28);

  if (!v29)
  {
LABEL_5:
    v29 = [objc_opt_self() futureWithNoResult];
  }

  (*(v14 + 8))(v21, v25);
  return v29;
}

uint64_t sub_2692ADA34()
{
  v0 = sub_2692C77C0();
  __swift_allocate_value_buffer(v0, qword_280303218);
  v1 = __swift_project_value_buffer(v0, qword_280303218);
  if (qword_280302B48 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280307B80);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2692ADAFC()
{
  result = sub_2692A84B8(&unk_2879E27F0);
  qword_280303230 = result;
  return result;
}

uint64_t sub_2692ADB24()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D296D8]) init];
  result = sub_26927CC94(0, &qword_280303290, 0x277D296D8);
  qword_280303250 = result;
  unk_280303258 = &off_2879E3DE0;
  qword_280303238 = v0;
  return result;
}

uint64_t type metadata accessor for SiriAlarmManagerImpl()
{
  result = qword_2803032A8;
  if (!qword_2803032A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2692ADBE8(unint64_t a1, void (*a2)(uint64_t *), void (*a3)(uint64_t *), int a4)
{
  LODWORD(v5) = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v23 - v12;
  v28 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2692C7C60())
  {
    v23 = v13;
    v24 = a3;
    v25 = v5;
    v26 = a2;
    v27 = v4;
    v15 = 0;
    v5 = a1 & 0xC000000000000001;
    a3 = (a1 & 0xFFFFFFFFFFFFFF8);
    v13 = &off_279C54000;
    while (1)
    {
      if (v5)
      {
        v16 = MEMORY[0x26D6360D0](v15, a1);
      }

      else
      {
        if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v16 = *(a1 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v19 = [v16 sleepAlarmAttribute];
      if (v19)
      {
        v4 = v19;
      }

      else
      {
        v4 = &v28;
        sub_2692C7BF0();
        a2 = *(v28 + 16);
        sub_2692C7C20();
        sub_2692C7C30();
        sub_2692C7C00();
      }

      ++v15;
      if (v18 == i)
      {
        v20 = v28;
        a2 = v26;
        LODWORD(v5) = v25;
        v13 = v23;
        a3 = v24;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v20 = MEMORY[0x277D84F90];
LABEL_18:
  v21 = sub_2692C7310();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  sub_2692AED8C(v20, v5, 0, 0, v13, 0, 1, a2, a3);

  return sub_26927CEA8(v13, &qword_280302C48, &qword_2692C9780);
}

uint64_t sub_2692ADE2C(unint64_t a1, _UNKNOWN **a2, unint64_t a3, uint64_t a4, unint64_t a5, void *a6, void (*a7)(uint64_t *))
{
  v29 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_17:
    v13 = sub_2692C7C60();
    if (v13)
    {
LABEL_3:
      v23 = a2;
      v24 = a7;
      v25 = a3;
      v26 = a4;
      v14 = 0;
      a3 = a1 & 0xC000000000000001;
      a7 = (a1 & 0xFFFFFFFFFFFFFF8);
      a2 = &off_279C54000;
      do
      {
        if (a3)
        {
          v15 = MEMORY[0x26D6360D0](v14, a1);
        }

        else
        {
          if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v15 = *(a1 + 8 * v14 + 32);
        }

        a6 = v15;
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        v17 = [v15 sleepAlarmAttribute];
        if (v17)
        {
          v18 = v17;
        }

        else
        {
          sub_2692C7BF0();
          a4 = *(v29 + 16);
          sub_2692C7C20();
          sub_2692C7C30();
          sub_2692C7C00();
        }

        ++v14;
      }

      while (v16 != v13);
      v19 = v29;
      a6 = v27;
      a3 = v25;
      a4 = v26;
      a2 = v23;
      a7 = v24;
      v20 = a5;
      if (!a5)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_3;
    }
  }

  v19 = MEMORY[0x277D84F90];
  v20 = a5;
  if (a5)
  {
LABEL_14:
    v21 = sub_2692A86A0(v20);
    goto LABEL_20;
  }

LABEL_19:
  v21 = 0;
LABEL_20:
  sub_2692AED8C(v19, 5, a2, a3, a4, v21, v20 == 0, a6, a7);
}

uint64_t sub_2692AE014(unint64_t a1, void (*a2)(uint64_t *), void (*a3)(uint64_t *), int a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v15 - v11;
  v13 = sub_2692C7310();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_2692AED8C(a1, a4, 0, 0, v12, 0, 1, a2, a3);
  return sub_26927CEA8(v12, &qword_280302C48, &qword_2692C9780);
}

void sub_2692AE130(void (*a1)(uint64_t *), uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_alarmManager;
  sub_269275A6C(v2 + OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_alarmManager, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280303288, &qword_2692CAB68);
  sub_26927CC94(0, &qword_280303290, 0x277D296D8);
  if (swift_dynamicCast())
  {
    v7 = v34;
    v8 = [v34 nextSleepAlarm];
    if (v8)
    {
      v9 = v8;
      v10 = swift_allocObject();
      *(v10 + 16) = a1;
      *(v10 + 24) = a2;
      v32 = sub_2692B4BAC;
      v33 = v10;
      aBlock = MEMORY[0x277D85DD0];
      v29 = 1107296256;
      v30 = sub_2692B54D4;
      v31 = &block_descriptor_0;
      v11 = _Block_copy(&aBlock);

      v12 = [v9 addSuccessBlock_];
      _Block_release(v11);

      v13 = swift_allocObject();
      *(v13 + 16) = a1;
      *(v13 + 24) = a2;
      v32 = sub_2692B4BCC;
      v33 = v13;
      aBlock = MEMORY[0x277D85DD0];
      v29 = 1107296256;
      v30 = sub_2692AE9F8;
      v31 = &block_descriptor_6_0;
      v14 = _Block_copy(&aBlock);

      v15 = [v9 addFailureBlock_];
      _Block_release(v14);
    }

    else
    {
      if (qword_280302B18 != -1)
      {
        swift_once();
      }

      v24 = sub_2692C77C0();
      __swift_project_value_buffer(v24, qword_280303218);
      v25 = sub_2692C77B0();
      v26 = sub_2692C79F0();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_269270000, v25, v26, "Failed to search sleepAlarm in MTAlarmManager.", v27, 2u);
        MEMORY[0x26D6368E0](v27, -1, -1);
      }

      aBlock = 8;
      LOBYTE(v29) = 1;
      a1(&aBlock);
    }
  }

  else
  {
    if (qword_280302B18 != -1)
    {
      swift_once();
    }

    v16 = sub_2692C77C0();
    __swift_project_value_buffer(v16, qword_280303218);

    v17 = sub_2692C77B0();
    v18 = sub_2692C79F0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v34 = v20;
      *v19 = 136315138;
      sub_269275A6C(v3 + v6, &aBlock);
      __swift_project_boxed_opaque_existential_1(&aBlock, v31);
      swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
      v21 = sub_2692C7E50();
      v23 = sub_26927C4DC(v21, v22, &v34);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_269270000, v17, v18, "Failed to cast alarm manager of type %s to MTAlarmManager: unable to search upcoming sleep alarm.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x26D6368E0](v20, -1, -1);
      MEMORY[0x26D6368E0](v19, -1, -1);
    }

    aBlock = 8;
    LOBYTE(v29) = 1;
    a1(&aBlock);
  }
}

uint64_t sub_2692AE5C8(void *a1, void (*a2)(id *))
{
  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v4 = sub_2692C77C0();
  __swift_project_value_buffer(v4, qword_280303218);
  v5 = sub_2692C77B0();
  v6 = sub_2692C7A00();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_269270000, v5, v6, "SleepAlarmFuture success block called.", v7, 2u);
    MEMORY[0x26D6368E0](v7, -1, -1);
  }

  v32[3] = sub_26927CC94(0, &qword_2803032C0, 0x277D296D0);
  v32[0] = a1;
  sub_269280858(v32, &v30);
  sub_26927CC94(0, &qword_2803032F0, 0x277CBEB68);
  v8 = a1;
  if (swift_dynamicCast())
  {

    v9 = sub_2692C77B0();
    v10 = sub_2692C79F0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_269270000, v9, v10, "searchUpcomingSleepAlarm got NSNull from sleepAlarmFuture.", v11, 2u);
LABEL_14:
      MEMORY[0x26D6368E0](v11, -1, -1);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  sub_269280858(v32, &v30);
  if (!swift_dynamicCast())
  {
    v22 = v8;
    v9 = sub_2692C77B0();
    v23 = sub_2692C79F0();

    if (os_log_type_enabled(v9, v23))
    {
      v11 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30 = v24;
      *v11 = 136315138;
      swift_getObjectType();
      v25 = sub_2692C7E50();
      v27 = sub_26927C4DC(v25, v26, &v30);

      *(v11 + 4) = v27;
      _os_log_impl(&dword_269270000, v9, v23, "Cannot cast item of type %s to MTAlarm in SleepAlarmFuture SuccessBlock.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x26D6368E0](v24, -1, -1);
      goto LABEL_14;
    }

LABEL_15:

    v30 = 0;
    v31 = 0;
    a2(&v30);
    return __swift_destroy_boxed_opaque_existential_1Tm(v32);
  }

  v12 = v29;
  v13 = sub_2692C77B0();
  v14 = sub_2692C79D0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v30 = v16;
    *v15 = 136315138;
    v17 = [v12 alarmIDString];
    v18 = sub_2692C7830();
    v20 = v19;

    v21 = sub_26927C4DC(v18, v20, &v30);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_269270000, v13, v14, "AlarmManager got upcoming sleep alarm : %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x26D6368E0](v16, -1, -1);
    MEMORY[0x26D6368E0](v15, -1, -1);
  }

  v30 = sub_2692B54E0();
  v31 = 0;
  a2(&v30);

  sub_269274440(v30, v31);
  return __swift_destroy_boxed_opaque_existential_1Tm(v32);
}

void sub_2692AEA00(void *a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v6 = sub_2692BA26C();
  if (v6)
  {
    v14 = v6;
    sub_2692B1FE8(v6, a2, a3);
  }

  else
  {
    if (qword_280302B18 != -1)
    {
      swift_once();
    }

    v7 = sub_2692C77C0();
    __swift_project_value_buffer(v7, qword_280303218);
    v8 = a1;
    v9 = sub_2692C77B0();
    v10 = sub_2692C79F0();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&dword_269270000, v9, v10, "Cannot build the alarm to create from intent: %@", v11, 0xCu);
      sub_26927CEA8(v12, &qword_280302D50, &qword_2692CAB70);
      MEMORY[0x26D6368E0](v12, -1, -1);
      MEMORY[0x26D6368E0](v11, -1, -1);
    }

    v15 = 1;
    v16 = 1;
    a2(&v15);
  }
}

void sub_2692AEC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = *(v6 + OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_sleepAlarmManager);
  v13 = sub_2692A16A0();
  v14 = sub_2692C7390();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v17[4] = a4;
  v17[5] = v15;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_2692A1B80;
  v17[3] = a5;
  v16 = _Block_copy(v17);

  [v13 setUpcomingWakeUpAlarmEnabled:a6 & 1 date:v14 completion:v16];
  _Block_release(v16);
}

void sub_2692AED44(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v7 = v3 + OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_now;
  v8 = *(v3 + OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_sleepAlarmManager);
  sub_2692A2184(v7, a1, a2, a3);
}

uint64_t sub_2692AED8C(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void (*a8)(uint64_t *), void (*a9)(uint64_t *))
{
  v69 = a8;
  v66 = a7;
  v64 = a6;
  v65 = a3;
  v62 = a5;
  v67 = a4;
  v70 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  v60 = *(v10 - 8);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v63 = &v59 - v12;
  if (a1 >> 62)
  {
LABEL_42:
    v13 = sub_2692C7C60();
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = a1 & 0xC000000000000001;
  v15 = MEMORY[0x277D84F90];
  if (v13)
  {
    v16 = 0;
    while (2)
    {
      v17 = v16;
      while (1)
      {
        if (v14)
        {
          v18 = MEMORY[0x26D6360D0](v17, a1);
          v16 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (v17 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_39;
          }

          v18 = *(a1 + 8 * v17 + 32);
          v16 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }
        }

        v19 = v18;
        v20 = [v19 identifier];
        if (v20)
        {
          break;
        }

        ++v17;
        if (v16 == v13)
        {
          goto LABEL_20;
        }
      }

      v21 = v20;
      v22 = sub_2692C7830();
      v59 = v23;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_26928A5E0(0, *(v15 + 2) + 1, 1, v15);
      }

      v25 = *(v15 + 2);
      v24 = *(v15 + 3);
      if (v25 >= v24 >> 1)
      {
        v15 = sub_26928A5E0((v24 > 1), v25 + 1, 1, v15);
      }

      *(v15 + 2) = v25 + 1;
      v26 = &v15[16 * v25];
      v27 = v59;
      *(v26 + 4) = v22;
      *(v26 + 5) = v27;
      if (v16 != v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:
  v28 = 0;
  v29 = a9;
  while (1)
  {
    v30 = v28;
    if (v13 == v28)
    {
      break;
    }

    if (v14)
    {
      v31 = MEMORY[0x26D6360D0](v28, a1);
    }

    else
    {
      if (v28 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v31 = *(a1 + 8 * v28 + 32);
    }

    v32 = v31;
    if (__OFADD__(v30, 1))
    {
      goto LABEL_40;
    }

    v33 = [v31 sleepAlarmAttribute];

    v28 = v30 + 1;
    if (v33)
    {

      break;
    }
  }

  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v34 = sub_2692C77C0();
  __swift_project_value_buffer(v34, qword_280303218);

  v35 = sub_2692C77B0();
  v36 = sub_2692C7A00();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v59 = a9;
    v39 = v38;
    v72 = v38;
    *v37 = 136315394;
    v71 = v70;
    v40 = sub_2692C7840();
    v42 = sub_26927C4DC(v40, v41, &v72);

    *(v37 + 4) = v42;
    *(v37 + 12) = 2080;
    v43 = MEMORY[0x26D635E70](v15, MEMORY[0x277D837D0]);
    v45 = sub_26927C4DC(v43, v44, &v72);

    *(v37 + 14) = v45;
    _os_log_impl(&dword_269270000, v35, v36, "SiriAlarmManager: executing %s alarms: alarmIds = %s", v37, 0x16u);
    swift_arrayDestroy();
    v46 = v39;
    v29 = v59;
    MEMORY[0x26D6368E0](v46, -1, -1);
    MEMORY[0x26D6368E0](v37, -1, -1);
  }

  if (*(v15 + 2))
  {
    v47 = v13 != v30;
    v48 = v63;
    sub_26927CE40(v62, v63, &qword_280302C48, &qword_2692C9780);
    v49 = (*(v60 + 80) + 72) & ~*(v60 + 80);
    v50 = (v61 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v51 = swift_allocObject();
    *(v51 + 16) = v15;
    *(v51 + 24) = v70;
    v52 = v67;
    v53 = v64;
    *(v51 + 32) = v68;
    *(v51 + 40) = v53;
    *(v51 + 48) = v66 & 1;
    *(v51 + 56) = v65;
    *(v51 + 64) = v52;
    sub_269280640(v48, v51 + v49);
    v54 = (v51 + v50);
    *v54 = v69;
    v54[1] = v29;

    sub_2692B274C(v47, sub_2692B5250, v51);
  }

  else
  {

    v56 = sub_2692C77B0();
    v57 = sub_2692C7A00();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_269270000, v56, v57, "Should have a sleep alarm already been handled, do nothing in this method.", v58, 2u);
      MEMORY[0x26D6368E0](v58, -1, -1);
    }

    v72 = MEMORY[0x277D84F90];
    v73 = 0;
    v69(&v72);
    return sub_2692743E4(v72, v73);
  }
}

void sub_2692AF348(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, void *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t *), uint64_t a11)
{
  v191 = a8;
  v190 = a7;
  v189 = a6;
  v197 = a4;
  v198 = a3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8, v16);
  v19 = &v174 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v188 = &v174 - v21;
  v22 = sub_2692C7420();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22, v25);
  v187 = &v174 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803032B8, "$8");
  v28 = *(*(v27 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v27 - 8, v29);
  v32 = &v174 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v33);
  v35 = &v174 - v34;
  if (*(a1 + 8))
  {
    if (qword_280302B18 != -1)
    {
      swift_once();
    }

    v36 = sub_2692C77C0();
    __swift_project_value_buffer(v36, qword_280303218);
    v37 = sub_2692C77B0();
    v38 = sub_2692C79F0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_269270000, v37, v38, "SiriAlarmManagerImpl.operateAlarmByIds() searchFailed", v39, 2u);
      MEMORY[0x26D6368E0](v39, -1, -1);
    }

    aBlock = 8;
    LOBYTE(v203) = 1;
    a10(&aBlock);
    return;
  }

  v193 = a2;
  v196 = v23;
  v180 = v22;
  v186 = v19;
  v40 = *a1;
  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v178 = sub_2692C77C0();
  v41 = __swift_project_value_buffer(v178, qword_280303218);

  v194 = v41;
  v42 = sub_2692C77B0();
  v43 = sub_2692C7A00();
  sub_2692743E4(v40, 0);
  v44 = os_log_type_enabled(v42, v43);
  v195 = v40;
  v183 = a11;
  v182 = a10;
  v177 = v35;
  v181 = a5;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    aBlock = v46;
    *v45 = 136315138;
    v47 = sub_26927CC94(0, &qword_2803032C0, 0x277D296D0);
    v48 = MEMORY[0x26D635E70](v40, v47);
    v50 = sub_26927C4DC(v48, v49, &aBlock);

    *(v45 + 4) = v50;
    _os_log_impl(&dword_269270000, v42, v43, "operateAlarmByIds(): alarmSearch success with alarms %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    MEMORY[0x26D6368E0](v46, -1, -1);
    MEMORY[0x26D6368E0](v45, -1, -1);
  }

  v52 = MEMORY[0x277D84F90];
  v208 = MEMORY[0x277D84F90];
  v209 = MEMORY[0x277D84F90];
  v53 = v193[2];
  if (!v53)
  {
LABEL_80:
    v138 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280303300, &qword_2692CADF8);
    v139 = sub_2692C7910();

    v140 = [v138 combineAllFutures:v139 ignoringErrors:0 scheduler:{objc_msgSend(objc_opt_self(), sel_globalAsyncScheduler)}];

    swift_unknownObjectRelease();
    v141 = v140;
    v142 = sub_2692C77B0();
    v143 = sub_2692C7A00();

    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      *v144 = 138412290;
      *(v144 + 4) = v141;
      *v145 = v141;
      v146 = v141;
      _os_log_impl(&dword_269270000, v142, v143, "CombinedFutures created: %@", v144, 0xCu);
      sub_26927CEA8(v145, &qword_280302D50, &qword_2692CAB70);
      MEMORY[0x26D6368E0](v145, -1, -1);
      MEMORY[0x26D6368E0](v144, -1, -1);
    }

    v147 = swift_allocObject();
    v148 = v182;
    v147[2] = v52;
    v147[3] = v148;
    v149 = v183;
    v147[4] = v183;
    v206 = sub_2692B5354;
    v207 = v147;
    aBlock = MEMORY[0x277D85DD0];
    v203 = 1107296256;
    v204 = sub_2692B54D4;
    v205 = &block_descriptor_116;
    v150 = _Block_copy(&aBlock);

    v151 = [v141 addSuccessBlock_];
    _Block_release(v150);

    v152 = swift_allocObject();
    *(v152 + 16) = v148;
    *(v152 + 24) = v149;
    v206 = sub_2692B5360;
    v207 = v152;
    aBlock = MEMORY[0x277D85DD0];
    v203 = 1107296256;
    v204 = sub_2692AE9F8;
    v205 = &block_descriptor_122;
    v153 = _Block_copy(&aBlock);

    v154 = [v141 addFailureBlock_];
    _Block_release(v153);

    return;
  }

  v174 = v32;
  v179 = (v196 + 8);
  v54 = v193 + 5;
  v192 = a9;
  v196 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_alarmManager;
  *&v51 = 138412290;
  v185 = v51;
  *&v51 = 136315138;
  v184 = v51;
  v55 = v195;
  while (1)
  {
    v57 = *(v54 - 1);
    v56 = *v54;
    if (v198 == 4)
    {
      sub_269275A6C(v197 + v196, &aBlock);
      v60 = v206;
      __swift_project_boxed_opaque_existential_1(&aBlock, v205);

      v61 = sub_2692C7880();
      v60[6](v61);
      goto LABEL_19;
    }

    if (v198 == 3)
    {
      sub_269275A6C(v197 + v196, &aBlock);
      v58 = v206;
      __swift_project_boxed_opaque_existential_1(&aBlock, v205);

      v59 = sub_2692C7880();
      v58[5](v59);
LABEL_19:

      MEMORY[0x26D635E30](v62);
      if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v135 = *((v209 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2692C7950();
      }

      sub_2692C7960();
      __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
      v55 = v195;
      goto LABEL_25;
    }

    v63 = *v54;

    v64 = sub_2692C77B0();
    v65 = sub_2692C79E0();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_269270000, v64, v65, "Not a dismiss or snooze alarm request", v66, 2u);
      MEMORY[0x26D6368E0](v66, -1, -1);
    }

LABEL_25:
    v67 = sub_26928E9E4(v57, v56, v55);
    if (v67)
    {
      break;
    }

LABEL_14:
    v54 += 2;
    if (!--v53)
    {
      goto LABEL_80;
    }
  }

  v68 = v67;
  if ([v67 isSleepAlarm])
  {
    if (qword_280302B20 != -1)
    {
      swift_once();
    }

    if (!sub_2692B0AF4(v198, qword_280303230))
    {

      v79 = v68;
      v80 = sub_2692C77B0();
      v81 = sub_2692C79F0();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        *v82 = v185;
        *(v82 + 4) = v79;
        *v83 = v68;
        v84 = v79;
        _os_log_impl(&dword_269270000, v80, v81, "Skipping operation for sleep alarm %@", v82, 0xCu);
        sub_26927CEA8(v83, &qword_280302D50, &qword_2692CAB70);
        v85 = v83;
        v55 = v195;
        MEMORY[0x26D6368E0](v85, -1, -1);
        MEMORY[0x26D6368E0](v82, -1, -1);
      }

      else
      {
      }

      goto LABEL_14;
    }
  }

  [v68 mutableCopy];
  sub_2692C7AD0();
  swift_unknownObjectRelease();
  sub_26927CE40(v201, &aBlock, &qword_280302CD0, &unk_2692CAE00);
  if (v205)
  {
    sub_26927CC94(0, &qword_280303308, 0x277D296F0);
    if (!swift_dynamicCast())
    {
      goto LABEL_84;
    }

    v69 = v199;
    if (v198 <= 1u)
    {
      if (v198)
      {
        if (v198 == 1)
        {
          if ([v199 isEnabled])
          {
            [v69 setEnabled_];
            goto LABEL_72;
          }

          v193 = v69;
          v105 = v69;
          v90 = sub_2692C77B0();
          v106 = sub_2692C79E0();

          if (os_log_type_enabled(v90, v106))
          {
            v92 = swift_slowAlloc();
            v176 = swift_slowAlloc();
            aBlock = v176;
            *v92 = v184;
            v107 = [v105 alarmID];
            v175 = v106;
            v108 = v187;
            sub_2692C7410();

            sub_2692B538C();
            v109 = v180;
            v110 = sub_2692C7D30();
            v112 = v111;
            (*v179)(v108, v109);
            v113 = sub_26927C4DC(v110, v112, &aBlock);

            *(v92 + 4) = v113;
            v100 = v175;
            v101 = v90;
            v102 = "Alarm %s already in disabled state – skipping update";
LABEL_54:
            _os_log_impl(&dword_269270000, v101, v100, v102, v92, 0xCu);
            v114 = v176;
            __swift_destroy_boxed_opaque_existential_1Tm(v176);
            MEMORY[0x26D6368E0](v114, -1, -1);
            v115 = v92;
            v55 = v195;
            MEMORY[0x26D6368E0](v115, -1, -1);
          }

          goto LABEL_55;
        }

LABEL_44:
        v86 = sub_2692C77B0();
        v87 = sub_2692C7A00();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          *v88 = 0;
          _os_log_impl(&dword_269270000, v86, v87, "Request is dismiss/snooze, handled at the beginning of the forLoop", v88, 2u);
          MEMORY[0x26D6368E0](v88, -1, -1);
        }

LABEL_76:
        v134 = v69;
        MEMORY[0x26D635E30]();
        if (*((v208 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v208 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v136 = *((v208 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2692C7950();
        }

        sub_2692C7960();

        sub_26927CEA8(v201, &qword_280302CD0, &unk_2692CAE00);
        v52 = v208;
        goto LABEL_14;
      }

      if ([v199 isEnabled])
      {
        v193 = v69;
        v89 = v69;
        v90 = sub_2692C77B0();
        v91 = sub_2692C79E0();

        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          v176 = swift_slowAlloc();
          aBlock = v176;
          *v92 = v184;
          v93 = [v89 alarmID];
          v175 = v91;
          v94 = v187;
          sub_2692C7410();

          sub_2692B538C();
          v95 = v180;
          v96 = sub_2692C7D30();
          v98 = v97;
          (*v179)(v94, v95);
          v99 = sub_26927C4DC(v96, v98, &aBlock);

          *(v92 + 4) = v99;
          v100 = v175;
          v101 = v90;
          v102 = "Alarm %s already in enabled state – skipping update";
          goto LABEL_54;
        }

LABEL_55:

        v69 = v193;
        goto LABEL_76;
      }

      [v69 setEnabled_];
LABEL_72:
      sub_269275A6C(v197 + v196, &aBlock);
      v132 = v205;
      v133 = v206;
      __swift_project_boxed_opaque_existential_1(&aBlock, v205);
      v133[3](v69, v132, v133);
LABEL_73:
      MEMORY[0x26D635E30]();
      if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v137 = *((v209 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2692C7950();
      }

      sub_2692C7960();
      __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
      goto LABEL_76;
    }

    if (v198 == 2)
    {
      sub_269275A6C(v197 + v196, &aBlock);
      v103 = v205;
      v104 = v206;
      __swift_project_boxed_opaque_existential_1(&aBlock, v205);
      v104[4](v68, v103, v104);
      goto LABEL_73;
    }

    if (v198 != 5)
    {
      goto LABEL_44;
    }

    if ((v189 & 1) == 0)
    {
      v70 = sub_2692C77B0();
      v71 = sub_2692C7A00();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v193 = swift_slowAlloc();
        aBlock = v193;
        *v72 = v184;
        v73 = v181;
        v199 = v181;
        type metadata accessor for MTAlarmRepeatSchedule();
        v74 = sub_2692C7840();
        v76 = v69;
        v77 = sub_26927C4DC(v74, v75, &aBlock);

        *(v72 + 4) = v77;
        v69 = v76;
        _os_log_impl(&dword_269270000, v70, v71, "Updating alarm repeatSchedule to %s", v72, 0xCu);
        v78 = v193;
        __swift_destroy_boxed_opaque_existential_1Tm(v193);
        MEMORY[0x26D6368E0](v78, -1, -1);
        MEMORY[0x26D6368E0](v72, -1, -1);
      }

      else
      {

        v73 = v181;
      }

      [v69 setRepeatSchedule_];
    }

    if (v191)
    {
LABEL_62:

      v118 = sub_2692C7820();
    }

    else
    {
      v116 = [v68 title];
      if (v116)
      {
        v117 = v116;
        sub_2692C7830();

        goto LABEL_62;
      }

      v118 = 0;
    }

    v193 = v69;
    [v69 setTitle_];

    v119 = v188;
    sub_26927CE40(v192, v188, &qword_280302C48, &qword_2692C9780);
    v120 = sub_2692C7310();
    v121 = *(v120 - 8);
    v122 = *(v121 + 48);
    if (v122(v119, 1, v120) == 1)
    {
      sub_26927CEA8(v119, &qword_280302C48, &qword_2692C9780);
      goto LABEL_66;
    }

    v123 = v119;
    v124 = sub_2692C7290();
    v126 = v125;
    (*(v121 + 8))(v123, v120);
    if (v126)
    {
LABEL_66:
      v124 = [v68 hour];
    }

    [v193 setHour_];
    v127 = v186;
    sub_26927CE40(v192, v186, &qword_280302C48, &qword_2692C9780);
    if (v122(v127, 1, v120) == 1)
    {
      sub_26927CEA8(v127, &qword_280302C48, &qword_2692C9780);
      v55 = v195;
      goto LABEL_70;
    }

    v128 = v127;
    v129 = sub_2692C72B0();
    v131 = v130;
    (*(v121 + 8))(v128, v120);
    v55 = v195;
    if (v131)
    {
LABEL_70:
      v129 = [v68 minute];
    }

    v69 = v193;
    [v193 setMinute_];
    goto LABEL_72;
  }

  sub_26927CEA8(&aBlock, &qword_280302CD0, &unk_2692CAE00);
LABEL_84:
  v155 = sub_2692C7760();
  v205 = v155;
  v206 = MEMORY[0x277D61908];
  v156 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
  v157 = *MEMORY[0x277D61888];
  v158 = sub_2692C7710();
  (*(*(v158 - 8) + 104))(v156, v157, v158);
  (*(*(v155 - 1) + 104))(v156, *MEMORY[0x277D618D8], v155);
  sub_2692C76B0();
  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  aBlock = 0;
  v203 = 0xE000000000000000;
  sub_2692C7B80();
  v199 = aBlock;
  v200 = v203;
  MEMORY[0x26D635DF0](0xD000000000000046, 0x80000002692CD6D0);
  sub_26927CE40(v201, &aBlock, &qword_280302CD0, &unk_2692CAE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302CD0, &unk_2692CAE00);
  v159 = sub_2692C7840();
  MEMORY[0x26D635DF0](v159);

  v160 = v199;
  v161 = v200;
  v162 = v178;
  v163 = *(v178 - 8);
  v164 = v177;
  (*(v163 + 16))(v177, v194, v178);
  (*(v163 + 56))(v164, 0, 1, v162);
  v165 = v164;
  v166 = v174;
  sub_26927CE40(v165, v174, &qword_2803032B8, "$8");
  LODWORD(v166) = (*(v163 + 48))(v166, 1, v162);

  if (v166 == 1)
  {
    sub_26927CEA8(v174, &qword_2803032B8, "$8");
  }

  else
  {

    v167 = sub_2692C77B0();
    v168 = sub_2692C79F0();

    if (os_log_type_enabled(v167, v168))
    {
      v169 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      aBlock = v170;
      *v169 = 136315650;
      v171 = sub_2692C7B90();
      v173 = sub_26927C4DC(v171, v172, &aBlock);

      *(v169 + 4) = v173;
      *(v169 + 12) = 2048;
      *(v169 + 14) = 450;
      *(v169 + 22) = 2080;
      *(v169 + 24) = sub_26927C4DC(v160, v161, &aBlock);
      _os_log_impl(&dword_269270000, v167, v168, "FatalError at %s:%lu - %s", v169, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D6368E0](v170, -1, -1);
      MEMORY[0x26D6368E0](v169, -1, -1);
    }

    (*(v163 + 8))(v174, v178);
  }

  sub_2692C7570();
  sub_2692C7C40();
  __break(1u);
}

BOOL sub_2692B0AF4(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = *(a2 + 40);
  sub_2692C7DE0();
  MEMORY[0x26D636320](v3);
  v5 = sub_2692C7E00();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + v7);
    result = v9 == v3;
    if (v9 == v3)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

void *sub_2692B0BC0(uint64_t a1, unint64_t a2, void (*a3)(void))
{
  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v6 = sub_2692C77C0();
  v7 = __swift_project_value_buffer(v6, qword_280303218);
  v8 = sub_2692C77B0();
  v9 = sub_2692C7A00();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_269270000, v8, v9, "CombinedFutures success block called", v10, 2u);
    MEMORY[0x26D6368E0](v10, -1, -1);
  }

  if (a2 >> 62)
  {
    v11 = sub_2692C7C60();
  }

  else
  {
    v11 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v42 = MEMORY[0x277D84F90];
    sub_2692C7C10();
    if (v11 < 0)
    {
      __break(1u);
LABEL_38:
      v17 = sub_2692C7C60();
      goto LABEL_18;
    }

    v13 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x26D6360D0](v13, a2);
      }

      else
      {
        v14 = *(a2 + 8 * v13 + 32);
      }

      v15 = v14;
      ++v13;
      sub_2692B54E0();

      sub_2692C7BF0();
      v16 = *(v42 + 16);
      sub_2692C7C20();
      sub_2692C7C30();
      sub_2692C7C00();
    }

    while (v11 != v13);
    v12 = v42;
  }

  a2 = sub_2692C77B0();
  v7 = sub_2692C7A00();

  if (!os_log_type_enabled(a2, v7))
  {

    goto LABEL_33;
  }

  v11 = swift_slowAlloc();
  v3 = swift_slowAlloc();
  v42 = v3;
  *v11 = 136315138;
  if (v12 >> 62)
  {
    goto LABEL_38;
  }

  v17 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_18:
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v41 = MEMORY[0x277D84F90];
    result = sub_2692A0A8C(0, v17 & ~(v17 >> 63), 0);
    if (v17 < 0)
    {
      __break(1u);
      return result;
    }

    v38 = v3;
    v39 = v7;
    v40 = a3;
    v20 = 0;
    v18 = v41;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x26D6360D0](v20, v12);
      }

      else
      {
        v21 = *(v12 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = [v21 identifier];
      if (v23)
      {
        v24 = v23;
        v25 = sub_2692C7830();
        v27 = v26;
      }

      else
      {

        v25 = 0;
        v27 = 0;
      }

      v29 = *(v41 + 16);
      v28 = *(v41 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_2692A0A8C((v28 > 1), v29 + 1, 1);
      }

      ++v20;
      *(v41 + 16) = v29 + 1;
      v30 = v41 + 16 * v29;
      *(v30 + 32) = v25;
      *(v30 + 40) = v27;
    }

    while (v17 != v20);
    a3 = v40;
    v7 = v39;
    v3 = v38;
  }

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C28, &unk_2692C9690);
  v32 = MEMORY[0x26D635E70](v18, v31);
  v34 = v33;

  v35 = sub_26927C4DC(v32, v34, &v42);

  *(v11 + 4) = v35;
  _os_log_impl(&dword_269270000, a2, v7, "Alarms operated successfully. allAlarms = %s", v11, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  MEMORY[0x26D6368E0](v3, -1, -1);
  MEMORY[0x26D6368E0](v11, -1, -1);

LABEL_33:
  v42 = v12;
  v43 = 0;
  a3(&v42);
  v36 = v42;
  v37 = v43;

  return sub_2692743E4(v36, v37);
}

uint64_t sub_2692B1004(void *a1, uint64_t (*a2)(void), uint64_t a3, const char *a4, uint64_t a5, char a6)
{
  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v11 = sub_2692C77C0();
  __swift_project_value_buffer(v11, qword_280303218);
  v12 = a1;
  v13 = sub_2692C77B0();
  v14 = sub_2692C79F0();

  if (os_log_type_enabled(v13, v14))
  {
    v28 = a5;
    v15 = a2;
    v16 = swift_slowAlloc();
    v17 = a4;
    v18 = swift_slowAlloc();
    v29 = v18;
    *v16 = 136315138;
    swift_getErrorValue();
    v19 = sub_2692C7D90();
    v21 = sub_26927C4DC(v19, v20, &v29);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_269270000, v13, v14, v17, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x26D6368E0](v18, -1, -1);
    v22 = v16;
    a2 = v15;
    a5 = v28;
    MEMORY[0x26D6368E0](v22, -1, -1);
  }

  v23 = sub_2692C7760();
  v31 = v23;
  v32 = MEMORY[0x277D61908];
  v24 = __swift_allocate_boxed_opaque_existential_1(&v29);
  *v24 = sub_2692C7320();
  v25 = *MEMORY[0x277D61838];
  v26 = sub_2692C76A0();
  (*(*(v26 - 8) + 104))(v24, v25, v26);
  (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D618E0], v23);
  sub_2692C76B0();
  __swift_destroy_boxed_opaque_existential_1Tm(&v29);
  v29 = a5;
  v30 = a6 & 1;
  return a2(&v29);
}

uint64_t sub_2692B1290(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v8 = sub_2692C77C0();
  __swift_project_value_buffer(v8, qword_280303218);
  v9 = a1;
  v10 = sub_2692C77B0();
  v11 = sub_2692C7A00();

  if (os_log_type_enabled(v10, v11))
  {
    v22 = a2;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    v14 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803032F8, &qword_2692CADF0);
    v15 = sub_2692C7840();
    v17 = sub_26927C4DC(v15, v16, &v23);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_269270000, v10, v11, "SiriAlarmManager: Searching alarm with alarmSearch: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x26D6368E0](v13, -1, -1);
    v18 = v12;
    a2 = v22;
    MEMORY[0x26D6368E0](v18, -1, -1);
  }

  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = a1;
  v19[5] = v4;
  v20 = v9;

  sub_2692B274C(1, sub_2692B5244, v19);
}

uint64_t sub_2692B1480(uint64_t a1, char *a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v10 = sub_2692C77A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8))
  {
    if (qword_280302B18 != -1)
    {
LABEL_88:
      swift_once();
    }

    v17 = sub_2692C77C0();
    __swift_project_value_buffer(v17, qword_280303218);
    v18 = sub_2692C77B0();
    v19 = sub_2692C7A00();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_269270000, v18, v19, "Alarm search: .searchFailed", v20, 2u);
      MEMORY[0x26D6368E0](v20, -1, -1);
    }

    v21 = 8;
    goto LABEL_93;
  }

  v22 = *a1;
  v23 = (*a1 >> 62);
  if (v23)
  {
    if (v22 < 0)
    {
      v87 = *a1;
    }

    v88 = v14;
    v24 = sub_2692C7C60();
    v14 = v88;
    if (v24)
    {
      goto LABEL_8;
    }

LABEL_92:
    v21 = 12;
LABEL_93:
    v98 = v21;
    v99 = 1;
    return (a2)(&v98);
  }

  v24 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v24)
  {
    goto LABEL_92;
  }

LABEL_8:
  v91 = v23;
  v96 = a3;
  v94 = v14;
  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v25 = sub_2692C77C0();
  v26 = __swift_project_value_buffer(v25, qword_280303218);

  v97 = v26;
  v27 = sub_2692C77B0();
  v28 = sub_2692C7A00();
  sub_2692743E4(v22, 0);
  v29 = os_log_type_enabled(v27, v28);
  v92 = v16;
  v93 = a5;
  v95 = v11;
  if (v29)
  {
    v30 = swift_slowAlloc();
    a5 = swift_slowAlloc();
    v98 = a5;
    *v30 = 136315138;
    v31 = sub_26927CC94(0, &qword_2803032C0, 0x277D296D0);
    v32 = MEMORY[0x26D635E70](v22, v31);
    v16 = a2;
    v34 = sub_26927C4DC(v32, v33, &v98);

    *(v30 + 4) = v34;
    a2 = v16;
    _os_log_impl(&dword_269270000, v27, v28, "Alarm search succeed with results: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(a5);
    MEMORY[0x26D6368E0](a5, -1, -1);
    MEMORY[0x26D6368E0](v30, -1, -1);
  }

  if (a4)
  {
    v16 = a4;
    v35 = sub_2692C77B0();
    v36 = sub_2692C7A00();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      *(v37 + 4) = v16;
      *v38 = a4;
      v39 = v16;
      _os_log_impl(&dword_269270000, v35, v36, "Filtering search results based on alarmSearch: %@", v37, 0xCu);
      sub_26927CEA8(v38, &qword_280302D50, &qword_2692CAB70);
      MEMORY[0x26D6368E0](v38, -1, -1);
      MEMORY[0x26D6368E0](v37, -1, -1);
    }

    v40 = [v16 alarmReferenceType];
    v41 = sub_2692C77B0();
    v42 = sub_2692C7A00();
    v43 = os_log_type_enabled(v41, v42);
    v90 = a2;
    if (v40 == 2)
    {
      v97 = v16;
      if (v43)
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_269270000, v41, v42, "Searching for .next alarm", v44, 2u);
        MEMORY[0x26D6368E0](v44, -1, -1);
      }

      v45 = 0;
      v98 = MEMORY[0x277D84F90];
      a2 = &off_279C54000;
      do
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v46 = MEMORY[0x26D6360D0](v45, v22);
        }

        else
        {
          if (v45 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_86;
          }

          v46 = *(v22 + 8 * v45 + 32);
        }

        v47 = v46;
        v48 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          __break(1u);
          goto LABEL_85;
        }

        if ([v46 isEnabled])
        {
          sub_2692C7BF0();
          v49 = *(v98 + 16);
          sub_2692C7C20();
          sub_2692C7C30();
          sub_2692C7C00();
        }

        else
        {
        }

        ++v45;
      }

      while (v48 != v24);
      v61 = v98;
      if (v98 < 0 || (v98 & 0x4000000000000000) != 0)
      {
        v62 = sub_2692C7C60();
      }

      else
      {
        v62 = *(v98 + 16);
      }

      v63 = v90;
      v64 = v97;
      v65 = v93;
      if (v62)
      {
        v66 = v61;
      }

      else
      {
        v66 = v22;
      }

      sub_26928EF70(v65 + OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_now, v65 + OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_calendar, v66);
      if (v67)
      {
        v68 = v67;
        v69 = sub_2692B54E0();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
        v70 = swift_allocObject();
        *(v70 + 16) = xmmword_2692C9430;
        v71 = v69;

        *(v70 + 32) = v71;
      }

      else
      {

        v71 = 0;
        v70 = MEMORY[0x277D84F90];
      }

      v98 = v70;
      v99 = 0;
      (v63)(&v98);
    }

    else
    {
      if (v43)
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_269270000, v41, v42, "Filtering alarms based on alarm search", v54, 2u);
        MEMORY[0x26D6368E0](v54, -1, -1);
      }

      sub_2692C7A20();
      v55 = v92;
      a5 = *(v93 + OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_osLogObject);
      sub_2692C7790();
      v93 = a5;
      sub_2692C7780();
      v56 = *(v95 + 8);
      v95 += 8;
      v91 = v56;
      v56(v55, v94);
      v57 = 0;
      v98 = MEMORY[0x277D84F90];
      a2 = (v22 & 0xFFFFFFFFFFFFFF8);
      do
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v58 = MEMORY[0x26D6360D0](v57, v22);
        }

        else
        {
          if (v57 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_87;
          }

          v58 = *(v22 + 8 * v57 + 32);
        }

        v59 = v58;
        v60 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        if (sub_2692B5AD8(v16))
        {
          sub_2692C7BF0();
          a5 = *(v98 + 16);
          sub_2692C7C20();
          sub_2692C7C30();
          sub_2692C7C00();
        }

        else
        {
        }

        ++v57;
      }

      while (v60 != v24);
      v22 = v98;
      sub_2692C7A10();
      v72 = v92;
      sub_2692C7790();
      sub_2692C7780();
      v91(v72, v94);

      v73 = sub_2692C77B0();
      v51 = sub_2692C7A00();
      if (!os_log_type_enabled(v73, v51))
      {

        v74 = v90;
        goto LABEL_58;
      }

      a5 = swift_slowAlloc();
      *a5 = 134217984;
      v74 = v90;
      if (v22 < 0 || (v22 & 0x4000000000000000) != 0)
      {
        goto LABEL_101;
      }

      for (i = *(v22 + 16); ; i = sub_2692C7C60())
      {
        *(a5 + 4) = i;

        _os_log_impl(&dword_269270000, v73, v51, "matchedAlarms.size = %ld", a5, 0xCu);
        MEMORY[0x26D6368E0](a5, -1, -1);

LABEL_58:
        if (v22 < 0 || (v22 & 0x4000000000000000) != 0)
        {
          v76 = sub_2692C7C60();
          if (!v76)
          {
LABEL_96:

            v81 = MEMORY[0x277D84F90];
            goto LABEL_97;
          }
        }

        else
        {
          v76 = *(v22 + 16);
          if (!v76)
          {
            goto LABEL_96;
          }
        }

        v98 = MEMORY[0x277D84F90];
        v73 = &v98;
        sub_2692C7C10();
        if ((v76 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_100:
        __break(1u);
LABEL_101:
        ;
      }

      v77 = 0;
      do
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v78 = MEMORY[0x26D6360D0](v77, v22);
        }

        else
        {
          v78 = *(v22 + 8 * v77 + 32);
        }

        v79 = v78;
        ++v77;
        sub_2692B54E0();

        sub_2692C7BF0();
        v80 = *(v98 + 16);
        sub_2692C7C20();
        sub_2692C7C30();
        sub_2692C7C00();
      }

      while (v76 != v77);

      v81 = v98;
LABEL_97:
      v98 = v81;
      v99 = 0;
      (v74)(&v98);
    }
  }

  else
  {

    v50 = sub_2692C77B0();
    v51 = sub_2692C7A00();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 134217984;
      if (v91)
      {
        v53 = sub_2692C7C60();
      }

      else
      {
        v53 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v52 + 4) = v53;
      sub_2692743E4(v22, 0);
      _os_log_impl(&dword_269270000, v50, v51, "No alarmSearch specified — bubbling %ld alarms up to completion", v52, 0xCu);
      MEMORY[0x26D6368E0](v52, -1, -1);
    }

    else
    {
      sub_2692743E4(v22, 0);
    }

    if (v91)
    {
      v74 = sub_2692C7C60();
    }

    else
    {
      v74 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v82 = MEMORY[0x277D84F90];
    if (v74)
    {
      v98 = MEMORY[0x277D84F90];
      v73 = &v98;
      sub_2692C7C10();
      if (v74 < 0)
      {
        __break(1u);
        goto LABEL_100;
      }

      v83 = 0;
      do
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v84 = MEMORY[0x26D6360D0](v83, v22);
        }

        else
        {
          v84 = *(v22 + 8 * v83 + 32);
        }

        v85 = v84;
        ++v83;
        sub_2692B54E0();

        sub_2692C7BF0();
        v86 = *(v98 + 16);
        sub_2692C7C20();
        sub_2692C7C30();
        sub_2692C7C00();
      }

      while (v74 != v83);
      v82 = v98;
    }

    v98 = v82;
    v99 = 0;
    (a2)(&v98);
  }

  return sub_2692743E4(v98, v99);
}

void sub_2692B1FE8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v8 = sub_2692C77C0();
  __swift_project_value_buffer(v8, qword_280303218);
  v9 = a1;
  v10 = sub_2692C77B0();
  v11 = sub_2692C7A00();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_269270000, v10, v11, "SiriAlarmManager: Creating alarm %@", v12, 0xCu);
    sub_26927CEA8(v13, &qword_280302D50, &qword_2692CAB70);
    MEMORY[0x26D6368E0](v13, -1, -1);
    MEMORY[0x26D6368E0](v12, -1, -1);
  }

  sub_269275A6C(v4 + OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_alarmManager, &v25);
  v15 = v28;
  v16 = v29;
  __swift_project_boxed_opaque_existential_1(&v25, v28);
  v17 = v16[2](v9, v15, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(&v25);
  v18 = swift_allocObject();
  v18[2] = v9;
  v18[3] = a2;
  v18[4] = a3;
  v29 = sub_2692B5230;
  v30 = v18;
  v25 = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_2692B54D4;
  v28 = &block_descriptor_98;
  v19 = _Block_copy(&v25);
  v20 = v9;

  v21 = [v17 addSuccessBlock_];
  _Block_release(v19);

  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  v29 = sub_2692B523C;
  v30 = v22;
  v25 = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_2692AE9F8;
  v28 = &block_descriptor_104;
  v23 = _Block_copy(&v25);

  v24 = [v17 addFailureBlock_];
  _Block_release(v23);
}

void sub_2692B2314(uint64_t a1, void *a2, void (*a3)(id *))
{
  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v5 = sub_2692C77C0();
  __swift_project_value_buffer(v5, qword_280303218);
  v6 = a2;
  v7 = sub_2692C77B0();
  v8 = sub_2692C7A00();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&dword_269270000, v7, v8, "AlarmCreateFuture success block called with alarm created: %@", v9, 0xCu);
    sub_26927CEA8(v10, &qword_280302D50, &qword_2692CAB70);
    MEMORY[0x26D6368E0](v10, -1, -1);
    MEMORY[0x26D6368E0](v9, -1, -1);
  }

  v14 = sub_2692B54E0();
  v15 = 0;
  a3(&v14);
  v12 = v14;
  v13 = v15;

  sub_269274440(v12, v13);
}

void sub_2692B24A4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_2692B2510(void *a1, uint64_t (*a2)(uint64_t *))
{
  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v4 = sub_2692C77C0();
  __swift_project_value_buffer(v4, qword_280303218);
  v5 = a1;
  v6 = sub_2692C77B0();
  v7 = sub_2692C7A00();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = sub_2692C7320();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_269270000, v6, v7, "AlarmCreateFuture failure block called with error: %@", v8, 0xCu);
    sub_26927CEA8(v9, &qword_280302D50, &qword_2692CAB70);
    MEMORY[0x26D6368E0](v9, -1, -1);
    MEMORY[0x26D6368E0](v8, -1, -1);
  }

  v11 = sub_2692C7760();
  v18 = v11;
  v19 = MEMORY[0x277D61908];
  v12 = __swift_allocate_boxed_opaque_existential_1(&v16);
  *v12 = sub_2692C7320();
  v13 = *MEMORY[0x277D61838];
  v14 = sub_2692C76A0();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277D618E0], v11);
  sub_2692C76B0();
  __swift_destroy_boxed_opaque_existential_1Tm(&v16);
  v16 = 1;
  v17 = 1;
  return a2(&v16);
}

void sub_2692B274C(char a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_alarmManager;
  sub_269275A6C(v3 + OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_alarmManager, &aBlock);
  v8 = v31;
  v9 = v32;
  __swift_project_boxed_opaque_existential_1(&aBlock, v31);
  v10 = v9[1](0, v8, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  sub_269275A6C(v3 + v7, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280303288, &qword_2692CAB68);
  sub_26927CC94(0, &qword_280303290, 0x277D296D8);
  if (!swift_dynamicCast())
  {
    if (qword_280302B18 != -1)
    {
      swift_once();
    }

    v18 = sub_2692C77C0();
    __swift_project_value_buffer(v18, qword_280303218);
    v19 = sub_2692C77B0();
    v20 = sub_2692C79F0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_269270000, v19, v20, "Failed to search sleepAlarm in MTAlarmManager.", v21, 2u);
      MEMORY[0x26D6368E0](v21, -1, -1);
    }

    goto LABEL_14;
  }

  v11 = v34;
  if ((a1 & 1) == 0)
  {

LABEL_14:
    v16 = 0;
    goto LABEL_15;
  }

  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v12 = sub_2692C77C0();
  __swift_project_value_buffer(v12, qword_280303218);
  v13 = sub_2692C77B0();
  v14 = sub_2692C79D0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_269270000, v13, v14, "allAlarms calling nextSleepAlarm()", v15, 2u);
    MEMORY[0x26D6368E0](v15, -1, -1);
  }

  v16 = [v11 nextSleepAlarm];
  v17 = v16;
LABEL_15:
  v22 = swift_allocObject();
  v22[2] = v16;
  v22[3] = a2;
  v22[4] = a3;
  v32 = sub_2692B50C8;
  v33 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_2692B54D4;
  v31 = &block_descriptor_38;
  v23 = _Block_copy(&aBlock);

  v24 = [v10 addSuccessBlock_];
  _Block_release(v23);

  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a3;
  v32 = sub_2692B50D4;
  v33 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_2692AE9F8;
  v31 = &block_descriptor_44;
  v26 = _Block_copy(&aBlock);

  v27 = [v10 addFailureBlock_];

  _Block_release(v26);
}

void sub_2692B2B64(void *a1, void *a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803032B8, "$8");
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v49 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v49 - v14;
  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v16 = sub_2692C77C0();
  v17 = __swift_project_value_buffer(v16, qword_280303218);
  v18 = sub_2692C77B0();
  v19 = sub_2692C79D0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_269270000, v18, v19, "AlarmSearchFuture success block called.", v20, 2u);
    MEMORY[0x26D6368E0](v20, -1, -1);
  }

  aBlock = 0;
  sub_26927CC94(0, &qword_2803032C0, 0x277D296D0);
  sub_2692C7920();
  v21 = aBlock;
  if (aBlock)
  {
    if (a2)
    {
      v22 = swift_allocObject();
      v22[2] = v21;
      v22[3] = a3;
      v22[4] = a4;
      v54 = sub_2692B50DC;
      v55 = v22;
      aBlock = MEMORY[0x277D85DD0];
      v51 = 1107296256;
      v52 = sub_2692B54D4;
      v53 = &block_descriptor_50;
      v23 = _Block_copy(&aBlock);
      v24 = a2;

      v25 = [v24 addSuccessBlock_];
      _Block_release(v23);

      v26 = swift_allocObject();
      v26[2] = v21;
      v26[3] = a3;
      v26[4] = a4;
      v54 = sub_2692B50E8;
      v55 = v26;
      aBlock = MEMORY[0x277D85DD0];
      v51 = 1107296256;
      v52 = sub_2692AE9F8;
      v53 = &block_descriptor_56;
      v27 = _Block_copy(&aBlock);

      v28 = [v24 addFailureBlock_];
      _Block_release(v27);
    }

    else
    {
      LOBYTE(v51) = 0;
      a3(&aBlock);
      sub_2692743E4(aBlock, v51);
    }
  }

  else
  {
    v29 = sub_2692C7760();
    v53 = v29;
    v54 = MEMORY[0x277D61908];
    v30 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
    v31 = *MEMORY[0x277D61888];
    v32 = sub_2692C7710();
    (*(*(v32 - 8) + 104))(v30, v31, v32);
    (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277D618D8], v29);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
    aBlock = 0;
    v51 = 0xE000000000000000;
    sub_2692C7B80();
    MEMORY[0x26D635DF0](0xD00000000000003BLL, 0x80000002692CD5A0);
    v33 = a1;
    v34 = [v33 description];
    v35 = sub_2692C7830();
    v37 = v36;

    MEMORY[0x26D635DF0](v35, v37);

    v38 = aBlock;
    v39 = v51;
    v40 = *(v16 - 8);
    (*(v40 + 16))(v15, v17, v16);
    (*(v40 + 56))(v15, 0, 1, v16);
    v41 = v49;
    sub_26927CE40(v15, v49, &qword_2803032B8, "$8");
    LODWORD(v41) = (*(v40 + 48))(v41, 1, v16);

    if (v41 == 1)
    {
      sub_26927CEA8(v49, &qword_2803032B8, "$8");
    }

    else
    {

      v42 = sub_2692C77B0();
      v43 = sub_2692C79F0();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v56 = v45;
        *v44 = 136315650;
        v46 = sub_2692C7B90();
        v48 = sub_26927C4DC(v46, v47, &v56);

        *(v44 + 4) = v48;
        *(v44 + 12) = 2048;
        *(v44 + 14) = 601;
        *(v44 + 22) = 2080;
        *(v44 + 24) = sub_26927C4DC(v38, v39, &v56);
        _os_log_impl(&dword_269270000, v42, v43, "FatalError at %s:%lu - %s", v44, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x26D6368E0](v45, -1, -1);
        MEMORY[0x26D6368E0](v44, -1, -1);
      }

      (*(v40 + 8))(v49, v16);
    }

    sub_2692C7570();
    sub_2692C7C40();
    __break(1u);
  }
}

char *sub_2692B3278(void *a1, unint64_t a2, void (*a3)(void))
{
  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v6 = sub_2692C77C0();
  __swift_project_value_buffer(v6, qword_280303218);
  v7 = sub_2692C77B0();
  v8 = sub_2692C79D0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_269270000, v7, v8, "SleepAlarmFuture success block called.", v9, 2u);
    MEMORY[0x26D6368E0](v9, -1, -1);
  }

  sub_26927CC94(0, &qword_2803032C0, 0x277D296D0);
  if (![a1 isKindOfClass_])
  {

    v40 = sub_2692C77B0();
    v41 = sub_2692C7A00();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 134217984;
      if (a2 >> 62)
      {
        v43 = sub_2692C7C60();
      }

      else
      {
        v43 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v42 + 4) = v43;

      _os_log_impl(&dword_269270000, v40, v41, "allAlarms got NSNull from sleepAlarmFuture. User has no sleep alarm set. Only return %ld alarms", v42, 0xCu);
      MEMORY[0x26D6368E0](v42, -1, -1);
    }

    else
    {
    }

    v44 = sub_2692C77B0();
    v45 = sub_2692C79E0();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v77 = v70;
      *v46 = 136315138;
      if (a2 >> 62)
      {
        v47 = sub_2692C7C60();
      }

      else
      {
        v47 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v48 = MEMORY[0x277D84F90];
      if (v47)
      {
        v68 = v45;
        v74 = a3;
        v76 = MEMORY[0x277D84F90];
        result = sub_2692A0ACC(0, v47 & ~(v47 >> 63), 0);
        if (v47 < 0)
        {
          goto LABEL_48;
        }

        v49 = 0;
        v48 = v76;
        do
        {
          if ((a2 & 0xC000000000000001) != 0)
          {
            v50 = MEMORY[0x26D6360D0](v49, a2);
          }

          else
          {
            v50 = *(a2 + 8 * v49 + 32);
          }

          v51 = v50;
          v52 = [v50 alarmIDString];
          v53 = sub_2692C7830();
          v55 = v54;

          v57 = *(v76 + 16);
          v56 = *(v76 + 24);
          if (v57 >= v56 >> 1)
          {
            sub_2692A0ACC((v56 > 1), v57 + 1, 1);
          }

          ++v49;
          *(v76 + 16) = v57 + 1;
          v58 = v76 + 16 * v57;
          *(v58 + 32) = v53;
          *(v58 + 40) = v55;
        }

        while (v47 != v49);
        a3 = v74;
        v45 = v68;
      }

      v63 = MEMORY[0x26D635E70](v48, MEMORY[0x277D837D0]);
      v65 = v64;

      v66 = sub_26927C4DC(v63, v65, &v77);

      *(v46 + 4) = v66;
      _os_log_impl(&dword_269270000, v44, v45, "AlarmManager got normal alarms: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      MEMORY[0x26D6368E0](v70, -1, -1);
      MEMORY[0x26D6368E0](v46, -1, -1);
    }

    v77 = a2;
    v78 = 0;

    goto LABEL_43;
  }

  v10 = a1;
  v11 = sub_2692C77B0();
  v12 = sub_2692C79D0();

  if (os_log_type_enabled(v11, v12))
  {
    v72 = a3;
    v13 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v77 = v71;
    *v13 = 136315138;
    v14 = [v10 alarmIDString];
    v15 = sub_2692C7830();
    v17 = v16;

    v18 = sub_26927C4DC(v15, v17, &v77);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_269270000, v11, v12, "allAlarms got sleep alarm, alarmId=%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
    MEMORY[0x26D6368E0](v71, -1, -1);
    v19 = v13;
    a3 = v72;
    MEMORY[0x26D6368E0](v19, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2692C9430;
  *(v20 + 32) = v10;
  v77 = v20;
  v21 = v10;

  sub_2692B46E4(v22, sub_2692B4A0C);
  v23 = v77;

  v24 = sub_2692C77B0();
  v25 = sub_2692C79E0();

  if (!os_log_type_enabled(v24, v25))
  {
    goto LABEL_40;
  }

  v26 = swift_slowAlloc();
  v69 = swift_slowAlloc();
  v77 = v69;
  *v26 = 136315138;
  if (v23 >> 62)
  {
    v27 = sub_2692C7C60();
  }

  else
  {
    v27 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = MEMORY[0x277D84F90];
  if (!v27)
  {
LABEL_39:
    v59 = MEMORY[0x26D635E70](v28, MEMORY[0x277D837D0]);
    v61 = v60;

    v62 = sub_26927C4DC(v59, v61, &v77);

    *(v26 + 4) = v62;
    _os_log_impl(&dword_269270000, v24, v25, "AlarmManager got mixed alarms: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v69);
    MEMORY[0x26D6368E0](v69, -1, -1);
    MEMORY[0x26D6368E0](v26, -1, -1);
LABEL_40:

    v77 = v23;
    v78 = 0;
LABEL_43:
    a3(&v77);
    return sub_2692743E4(v77, v78);
  }

  v67 = v25;
  v73 = a3;
  v75 = MEMORY[0x277D84F90];
  result = sub_2692A0ACC(0, v27 & ~(v27 >> 63), 0);
  if ((v27 & 0x8000000000000000) == 0)
  {
    v30 = 0;
    v28 = v75;
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x26D6360D0](v30, v23);
      }

      else
      {
        v31 = *(v23 + 8 * v30 + 32);
      }

      v32 = v31;
      v33 = [v31 alarmIDString];
      v34 = sub_2692C7830();
      v36 = v35;

      v38 = *(v75 + 16);
      v37 = *(v75 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_2692A0ACC((v37 > 1), v38 + 1, 1);
      }

      ++v30;
      *(v75 + 16) = v38 + 1;
      v39 = v75 + 16 * v38;
      *(v39 + 32) = v34;
      *(v39 + 40) = v36;
    }

    while (v27 != v30);
    a3 = v73;
    v25 = v67;
    goto LABEL_39;
  }

  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

char *sub_2692B3A54(void *a1, unint64_t a2, void (*a3)(uint64_t *))
{
  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v6 = sub_2692C77C0();
  __swift_project_value_buffer(v6, qword_280303218);
  v7 = a1;
  v8 = sub_2692C77B0();
  v9 = sub_2692C79F0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = sub_2692C7320();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&dword_269270000, v8, v9, "SleepAlarmFuture failure block called with error %@", v10, 0xCu);
    sub_26927CEA8(v11, &qword_280302D50, &qword_2692CAB70);
    MEMORY[0x26D6368E0](v11, -1, -1);
    MEMORY[0x26D6368E0](v10, -1, -1);
  }

  v13 = sub_2692C7760();
  v44 = v13;
  v45 = MEMORY[0x277D61908];
  v14 = __swift_allocate_boxed_opaque_existential_1(&v42);
  *v14 = sub_2692C7320();
  v15 = *MEMORY[0x277D61838];
  v16 = sub_2692C76A0();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  (*(*(v13 - 8) + 104))(v14, *MEMORY[0x277D618E0], v13);
  sub_2692C76B0();
  __swift_destroy_boxed_opaque_existential_1Tm(&v42);

  v17 = sub_2692C77B0();
  v18 = sub_2692C79E0();

  if (!os_log_type_enabled(v17, v18))
  {
    goto LABEL_19;
  }

  v19 = swift_slowAlloc();
  v40 = swift_slowAlloc();
  v42 = v40;
  *v19 = 136315138;
  if (a2 >> 62)
  {
    v20 = sub_2692C7C60();
  }

  else
  {
    v20 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = MEMORY[0x277D84F90];
  if (!v20)
  {
LABEL_18:
    v33 = MEMORY[0x26D635E70](v21, MEMORY[0x277D837D0]);
    v35 = v34;

    v36 = sub_26927C4DC(v33, v35, &v42);

    *(v19 + 4) = v36;
    _os_log_impl(&dword_269270000, v17, v18, "AlarmManager got normal alarms: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x26D6368E0](v40, -1, -1);
    MEMORY[0x26D6368E0](v19, -1, -1);
LABEL_19:

    v42 = a2;
    v43 = 0;

    a3(&v42);
    return sub_2692743E4(v42, v43);
  }

  v41 = MEMORY[0x277D84F90];
  result = sub_2692A0ACC(0, v20 & ~(v20 >> 63), 0);
  if ((v20 & 0x8000000000000000) == 0)
  {
    v37 = v19;
    v38 = v18;
    v39 = a3;
    v23 = 0;
    v21 = v41;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x26D6360D0](v23, a2);
      }

      else
      {
        v24 = *(a2 + 8 * v23 + 32);
      }

      v25 = v24;
      v26 = [v24 alarmIDString];
      v27 = sub_2692C7830();
      v29 = v28;

      v31 = *(v41 + 16);
      v30 = *(v41 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_2692A0ACC((v30 > 1), v31 + 1, 1);
      }

      ++v23;
      *(v41 + 16) = v31 + 1;
      v32 = v41 + 16 * v31;
      *(v32 + 32) = v27;
      *(v32 + 40) = v29;
    }

    while (v20 != v23);
    a3 = v39;
    v18 = v38;
    v19 = v37;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_2692B3EC0(void *a1, uint64_t (*a2)(uint64_t **))
{
  if (qword_280302B18 != -1)
  {
    swift_once();
  }

  v4 = sub_2692C77C0();
  __swift_project_value_buffer(v4, qword_280303218);
  v5 = a1;
  v6 = sub_2692C77B0();
  v7 = sub_2692C7A00();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    v10 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302DD0, &qword_2692C9828);
    v11 = sub_2692C7840();
    v13 = sub_26927C4DC(v11, v12, &v19);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_269270000, v6, v7, "AlarmSearchFuture failure block called with error %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x26D6368E0](v9, -1, -1);
    MEMORY[0x26D6368E0](v8, -1, -1);
  }

  v14 = sub_2692C7760();
  v21 = v14;
  v22 = MEMORY[0x277D61908];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  *boxed_opaque_existential_1 = sub_2692C7320();
  v16 = *MEMORY[0x277D61838];
  v17 = sub_2692C76A0();
  (*(*(v17 - 8) + 104))(boxed_opaque_existential_1, v16, v17);
  (*(*(v14 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618E0], v14);
  sub_2692C76B0();
  __swift_destroy_boxed_opaque_existential_1Tm(&v19);
  v19 = 0;
  v20 = 1;
  return a2(&v19);
}

uint64_t SiriAlarmManagerImpl.deinit()
{
  v1 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_now;
  v2 = sub_2692C73E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_calendar;
  v4 = sub_2692C74F0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_sleepAlarmManager);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_alarmManager));

  return v0;
}

uint64_t SiriAlarmManagerImpl.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_now;
  v2 = sub_2692C73E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_calendar;
  v4 = sub_2692C74F0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_sleepAlarmManager);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_alarmManager));

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2692B43A8(unint64_t a1, void (*a2)(uint64_t *), void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, int a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v19 - v14;
  v16 = *v6;
  v17 = sub_2692C7310();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_2692AED8C(a1, a6, 0, 0, v15, 0, 1, a2, a3);
  return sub_26927CEA8(v15, &qword_280302C48, &qword_2692C9780);
}

void sub_2692B4578(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_sleepAlarmManager);
  sub_2692A2184(v4 + OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_now, a1, a2, a3);
}

uint64_t AlarmOperationError.hashValue.getter()
{
  v1 = *v0;
  sub_2692C7DE0();
  MEMORY[0x26D636320](v1);
  return sub_2692C7E00();
}

uint64_t AlarmSearchError.hashValue.getter()
{
  sub_2692C7DE0();
  MEMORY[0x26D636320](0);
  return sub_2692C7E00();
}

uint64_t sub_2692B46E4(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_2692C7C60();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = sub_2692C7C60();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_2692B47DC(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2692B47DC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_2692C7C60();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_2692C7BB0();
  *v1 = result;
  return result;
}

uint64_t sub_2692B487C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2692C7C60();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2692C7C60();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2692B50F4(&qword_2803032E0, &qword_2803032D8, &qword_2692CADE8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803032D8, &qword_2692CADE8);
            v9 = sub_26928A6EC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for SiriAlarm();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2692B4A0C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2692C7C60();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2692C7C60();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2692B50F4(&qword_2803032D0, &qword_2803032C8, &qword_2692CADE0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803032C8, &qword_2692CADE0);
            v9 = sub_26928A774(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_26927CC94(0, &qword_2803032C0, 0x277D296D0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2692B4BFC()
{
  result = qword_280303298;
  if (!qword_280303298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303298);
  }

  return result;
}

unint64_t sub_2692B4C54()
{
  result = qword_2803032A0;
  if (!qword_2803032A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803032A0);
  }

  return result;
}

uint64_t sub_2692B4CB0()
{
  result = sub_2692C73E0();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_2692C74F0();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlarmOperationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlarmOperationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2692B50F4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t objectdestroy_58Tm()
{
  v1 = sub_2692C7660();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2692B51D4()
{
  v1 = *(sub_2692C7660() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_2692C7650();
}

void sub_2692B5250(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780) - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_2692AF348(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), v1 + v4, *(v1 + v5), *(v1 + v5 + 8));
}

uint64_t objectdestroy_46Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_2692B538C()
{
  result = qword_280303310;
  if (!qword_280303310)
  {
    sub_2692C7420();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303310);
  }

  return result;
}

unint64_t sub_2692B53F8()
{
  result = qword_280303318;
  if (!qword_280303318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303318);
  }

  return result;
}

id sub_2692B54E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302CB0, &qword_2692C9718);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v43 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302CB8, &qword_2692C9720);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v42 = &v42 - v9;
  v10 = sub_2692C7310();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2692C7360();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SiriAlarm();
  v22 = [v1 alarmURL];
  sub_2692C7340();

  sub_2692C7330();
  (*(v17 + 8))(v21, v16);
  v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v24 = sub_2692C7820();

  v25 = sub_2692C7820();
  v26 = [v23 initWithIdentifier:v24 displayString:v25];

  sub_2692B66C0();
  v27 = sub_2692C7270();
  v28 = *(v11 + 8);
  v28(v15, v10);
  [v26 setDateTime_];

  v29 = [v1 title];
  [v26 setLabel_];

  [v1 isFiring];
  v30 = sub_2692C7980();
  [v26 setFiring_];

  [v1 isEnabled];
  v31 = sub_2692C7980();
  [v26 setEnabled_];

  v32 = sub_2692C7980();
  [v26 setUndoable_];

  sub_26929F7C0([v1 repeatSchedule]);
  type metadata accessor for AlarmRepeatSchedule();
  v33 = sub_2692C7910();

  [v26 setRepeatSchedule_];

  if ([v1 isSleepAlarm])
  {
    type metadata accessor for SleepAlarmAttribute();
    v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v35 = sub_2692C7820();
    v36 = [v34 initWithIdentifier:0 displayString:v35];

    v37 = sub_2692C74F0();
    (*(*(v37 - 8) + 56))(v42, 1, 1, v37);
    v38 = sub_2692C7500();
    (*(*(v38 - 8) + 56))(v43, 1, 1, v38);
    sub_2692C72F0();
    [v1 bedtimeHour];
    sub_2692C72A0();
    [v1 bedtimeMinute];
    sub_2692C72C0();
    v39 = sub_2692C7270();
    v28(v15, v10);
    [v36 setBedtime_];

    [v1 sleepSchedule];
    v40 = sub_2692C7970();
    [v36 setOverride_];

    [v26 setSleepAlarmAttribute_];
  }

  return v26;
}

uint64_t sub_2692B5AD8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v128 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v129 = &v117 - v9;
  v11 = MEMORY[0x28223BE20](v8, v10);
  v130 = (&v117 - v12);
  MEMORY[0x28223BE20](v11, v13);
  v132 = (&v117 - v14);
  v15 = sub_2692C7310();
  v131 = *(v15 - 8);
  v16 = *(v131 + 64);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v117 - v23;
  v26 = MEMORY[0x28223BE20](v22, v25);
  v28 = &v117 - v27;
  v30 = MEMORY[0x28223BE20](v26, v29);
  v32 = &v117 - v31;
  MEMORY[0x28223BE20](v30, v33);
  v35 = &v117 - v34;
  v36 = sub_2692C7740();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36, v39);
  v41 = &v117 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = [a1 identifier];
  if (v42)
  {
    v43 = v42;
    v44 = sub_2692C7830();
    v46 = v45;

    LOBYTE(v43) = sub_2692B696C(v44, v46);

    return v43 & 1;
  }

  v121 = v20;
  v122 = v15;
  v124 = v37;
  v125 = v41;
  v126 = v36;
  v127 = a1;
  v118 = v32;
  v119 = v28;
  v120 = v35;
  v123 = v24;
  v48 = [a1 includeSleepAlarm];
  sub_2692822D8();
  v49 = sub_2692C7A50();
  v50 = v49;
  if (v48)
  {
    v51 = sub_2692C7A70();

    if (v51)
    {
      v52 = [v133 isSleepAlarm];
      return v52 & 1;
    }
  }

  else
  {
  }

  v53 = [v127 label];
  v54 = v133;
  if (v53)
  {
    v55 = v53;
    sub_2692C7830();
  }

  v56 = [v54 title];
  if (v56)
  {
    v57 = v56;
    sub_2692C7830();
  }

  v58 = v125;
  sub_2692C7720();

  v59 = v124;
  v60 = v126;
  v61 = (*(v124 + 88))(v58, v126);
  if (v61 != *MEMORY[0x277D618C8])
  {
    if (v61 != *MEMORY[0x277D61898])
    {
LABEL_71:
      v66 = sub_2692C7D50();
      __break(1u);
      goto LABEL_72;
    }

    goto LABEL_19;
  }

  (*(v59 + 96))(v58, v60);
  v62 = sub_2692C7730();
  v63 = (*(*(v62 - 8) + 88))(v58, v62);
  if (v63 != *MEMORY[0x277D618A8])
  {
    v64 = v63;
    if (v63 != *MEMORY[0x277D618B8] && v63 != *MEMORY[0x277D618C0])
    {
      v52 = 0;
      if (v64 == *MEMORY[0x277D618A0] || v64 == *MEMORY[0x277D618B0])
      {
        return v52 & 1;
      }

      goto LABEL_71;
    }
  }

  v65 = v127;
  v66 = [v127 alarmSearchStatus];
  if (v66 <= 1)
  {
    v67 = v123;
    v68 = v132;
    if (!v66)
    {
      goto LABEL_33;
    }

    if (v66 == 1)
    {
      v69 = [v54 isEnabled];
      goto LABEL_32;
    }
  }

  else
  {
    v67 = v123;
    v68 = v132;
    switch(v66)
    {
      case 2:
        if ([v54 isEnabled])
        {
          goto LABEL_19;
        }

LABEL_33:
        v70 = [v65 repeatSchedule];
        if (!v70)
        {
          goto LABEL_40;
        }

        v71 = v70;
        type metadata accessor for AlarmRepeatSchedule();
        v72 = sub_2692C7930();

        if (v72 >> 62)
        {
          if (sub_2692C7C60())
          {
LABEL_36:
            v73 = sub_2692A87CC([v54 repeatSchedule], v72);

            if (v73)
            {
LABEL_40:
              v74 = [v65 timeRange];
              if (v74)
              {
                v75 = v74;
                v76 = [v74 startDateComponents];

                if (v76)
                {
                  v77 = v130;
                  sub_2692C7280();

                  v78 = 0;
                }

                else
                {
                  v78 = 1;
                  v77 = v130;
                }

                v83 = v131;
                v84 = v122;
                v132 = *(v131 + 56);
                v132(v77, v78, 1, v122);
                sub_269280640(v77, v68);
                v85 = *(v83 + 48);
                if (v85(v68, 1, v84) == 1)
                {
                  v82 = v68;
                  v81 = v84;
                }

                else
                {
                  v86 = v68;
                  v87 = v120;
                  v130 = *(v83 + 32);
                  v130(v120, v86, v84);
                  v88 = [v65 timeRange];
                  if (v88)
                  {
                    v89 = v88;
                    v90 = [v88 endDateComponents];

                    if (v90)
                    {
                      v91 = v128;
                      sub_2692C7280();

                      v92 = 0;
                      v81 = v122;
                    }

                    else
                    {
                      v92 = 1;
                      v81 = v122;
                      v91 = v128;
                    }

                    v110 = v120;
                    v132(v91, v92, 1, v81);
                    v111 = v91;
                    v112 = v129;
                    sub_269280640(v111, v129);
                    v113 = v112;
                    if (v85(v112, 1, v81) != 1)
                    {
                      v114 = v118;
                      v130(v118, v112, v81);
                      v115 = v119;
                      sub_2692B66C0();
                      v109 = sub_26927607C();
                      v116 = *(v131 + 8);
                      v116(v115, v81);
                      v116(v114, v81);
                      v116(v110, v81);
LABEL_70:
                      v52 = v109;
                      return v52 & 1;
                    }

                    (*(v131 + 8))(v110, v81);
                    v67 = v123;
                    v65 = v127;
                    v94 = v121;
                    v82 = v113;
LABEL_52:
                    sub_2692B6904(v82);
                    v95 = [v65 time];
                    if (!v95)
                    {
LABEL_55:
                      v52 = 1;
                      return v52 & 1;
                    }

                    v96 = v95;
                    sub_2692C7280();

                    v97 = v131;
                    (*(v131 + 32))(v67, v94, v81);
                    v98 = sub_2692C7290();
                    if (v99)
                    {
                      (*(v97 + 8))(v67, v81);
                      goto LABEL_55;
                    }

                    v100 = v98;
                    v101 = sub_2692C72B0();
                    if (v102)
                    {
                      (*(v131 + 8))(v67, v81);
                      v52 = 1;
                      return v52 & 1;
                    }

                    v103 = v101;
                    v104 = [v65 isMeridianInferred];
                    v105 = sub_2692C7A50();
                    v106 = v105;
                    if (v104)
                    {
                      v107 = sub_2692C7A70();

                      if (v107)
                      {
                        v108 = v133;
                        if (v100 % 12 != [v133 hour] % 12)
                        {
LABEL_61:
                          v109 = 0;
LABEL_69:
                          (*(v131 + 8))(v67, v81);
                          goto LABEL_70;
                        }

LABEL_68:
                        v109 = v103 == [v108 minute];
                        goto LABEL_69;
                      }
                    }

                    else
                    {
                    }

                    v108 = v133;
                    if (v100 != [v133 hour])
                    {
                      goto LABEL_61;
                    }

                    goto LABEL_68;
                  }

                  (*(v83 + 8))(v87, v84);
                  v93 = v129;
                  v132(v129, 1, 1, v84);
                  v82 = v93;
                  v81 = v84;
                  v67 = v123;
                  v65 = v127;
                }
              }

              else
              {
                v79 = v68;
                v80 = v68;
                v81 = v122;
                (*(v131 + 56))(v79, 1, 1, v122);
                v82 = v80;
              }

              v94 = v121;
              goto LABEL_52;
            }

LABEL_19:
            v52 = 0;
            return v52 & 1;
          }
        }

        else if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        goto LABEL_40;
      case 3:
        v69 = [v54 isFiring];
        goto LABEL_32;
      case 4:
        v69 = [v54 isSnoozed];
LABEL_32:
        if ((v69 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_33;
    }
  }

LABEL_72:
  v134 = v66;
  result = sub_2692C7D80();
  __break(1u);
  return result;
}

uint64_t sub_2692B65F8()
{
  v0 = sub_2692C77C0();
  __swift_allocate_value_buffer(v0, qword_280303320);
  v1 = __swift_project_value_buffer(v0, qword_280303320);
  if (qword_280302B48 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280307B80);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2692B66C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302CB0, &qword_2692C9718);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302CB8, &qword_2692C9720);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v15 - v9;
  v11 = sub_2692C74F0();
  v12 = *(*(v11 - 8) + 56);
  v12(v10, 1, 1, v11);
  v13 = sub_2692C7500();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  sub_2692C72F0();
  [v0 hour];
  sub_2692C72A0();
  [v0 minute];
  sub_2692C72C0();
  sub_2692C74B0();
  v12(v10, 0, 1, v11);
  return sub_2692C7300();
}

uint64_t sub_2692B6904(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2692B696C(uint64_t a1, unint64_t a2)
{
  v5 = sub_2692C7420();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s21SiriTimeAlarmInternal0C2IDO9alarmUUID14fromIdentifierSSSgAF_tFZ_0(a1, a2);
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    v15 = [v2 alarmID];
    sub_2692C7410();

    v16 = sub_2692C7400();
    v18 = v17;
    (*(v6 + 8))(v10, v5);
    if (v16 == v13 && v14 == v18)
    {

      v20 = 1;
    }

    else
    {
      v20 = sub_2692C7D60();
    }
  }

  else
  {
    if (qword_280302B30 != -1)
    {
      swift_once();
    }

    v21 = sub_2692C77C0();
    __swift_project_value_buffer(v21, qword_280303320);

    v22 = sub_2692C77B0();
    v23 = sub_2692C79F0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v30 = v25;
      *v24 = 136315138;
      if (a2)
      {
        v26 = a2;
      }

      else
      {
        a1 = 0;
        v26 = 0xE000000000000000;
      }

      v27 = sub_26927C4DC(a1, v26, &v30);

      *(v24 + 4) = v27;
      _os_log_impl(&dword_269270000, v22, v23, "MTAlarm+Additions Bad alarm identifier: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x26D6368E0](v25, -1, -1);
      MEMORY[0x26D6368E0](v24, -1, -1);
    }

    v20 = 0;
  }

  return v20 & 1;
}

id DeleteAlarmIntentHandler.__allocating_init(manager:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_2692B8D0C(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

uint64_t sub_2692B6C70()
{
  v0 = sub_2692C77C0();
  __swift_allocate_value_buffer(v0, qword_280303338);
  v1 = __swift_project_value_buffer(v0, qword_280303338);
  if (qword_280302B40 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280303368);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id DeleteAlarmIntentHandler.init(manager:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v5, v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = sub_2692B8C10(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v10;
}

id DeleteAlarmIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeleteAlarmIntentHandler.init()()
{
  if (qword_280302B38 != -1)
  {
    swift_once();
  }

  v0 = sub_2692C77C0();
  __swift_project_value_buffer(v0, qword_280303338);
  v1 = sub_2692C77B0();
  v2 = sub_2692C7A00();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_269270000, v1, v2, "DeleteAlarmIntentHandler init().", v3, 2u);
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
  v12 = type metadata accessor for DeleteAlarmIntentHandler();
  v13 = objc_allocWithZone(v12);
  v19 = v4;
  v20 = &protocol witness table for SiriAlarmManagerImpl;
  *&v18 = v7;
  *&v13[OBJC_IVAR____TtC21SiriTimeAlarmInternal24DeleteAlarmIntentHandler_osLogObject] = v11;
  sub_269275A6C(&v18, &v13[OBJC_IVAR____TtC21SiriTimeAlarmInternal24DeleteAlarmIntentHandler_siriAlarmManager]);
  v17.receiver = v13;
  v17.super_class = v12;
  v14 = v11;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(&v18);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v15;
}

void sub_2692B70EC(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
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

      goto LABEL_12;
    }

    v3 = swift_slowAlloc();
    *v3 = 134217984;
    if (v13)
    {
      goto LABEL_27;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2692C7C60())
    {
      *(v3 + 4) = i;

      _os_log_impl(&dword_269270000, v11, v12, "DeleteAlarmIntentHandler: Using %ld alarms on intent for resolution", v3, 0xCu);
      MEMORY[0x26D6368E0](v3, -1, -1);

LABEL_12:
      if (v13)
      {
        v12 = sub_2692C7C60();
        if (!v12)
        {
LABEL_22:

          v19 = MEMORY[0x277D84F90];
          goto LABEL_23;
        }
      }

      else
      {
        v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v12)
        {
          goto LABEL_22;
        }
      }

      v21 = MEMORY[0x277D84F90];
      v11 = &v21;
      sub_2692C7C10();
      if ((v12 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_27:
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
      v18 = *(v21 + 16);
      sub_2692C7C20();
      sub_2692C7C30();
      sub_2692C7C00();
    }

    while (v12 != v15);

    v19 = v21;
LABEL_23:
    a2(v19);
  }

  else
  {
    v20 = [a1 alarmSearch];
    sub_2692B746C(v20, a2, a3);
  }
}

void sub_2692B7400(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DeleteAlarmAlarmsResolutionResult();
  v3 = sub_2692C7910();
  (*(a2 + 16))(a2, v3);
}

uint64_t sub_2692B746C(void *a1, uint64_t a2, uint64_t a3)
{
  v34 = a2;
  v35 = a3;
  v5 = sub_2692C77A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280302B38 != -1)
  {
    swift_once();
  }

  v11 = sub_2692C77C0();
  __swift_project_value_buffer(v11, qword_280303338);
  v12 = a1;
  v13 = sub_2692C77B0();
  v14 = sub_2692C7A00();
  v33 = v12;

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v32 = v5;
    v16 = v15;
    v17 = swift_slowAlloc();
    v36 = a1;
    v37[0] = v17;
    *v16 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803032F8, &qword_2692CADF0);
    v18 = sub_2692C7A80();
    v20 = sub_26927C4DC(v18, v19, v37);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_269270000, v13, v14, "resolveAlarms.alarmsearch: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x26D6368E0](v17, -1, -1);
    v21 = v16;
    v5 = v32;
    MEMORY[0x26D6368E0](v21, -1, -1);
  }

  sub_2692C7A20();
  v22 = *&v3[OBJC_IVAR____TtC21SiriTimeAlarmInternal24DeleteAlarmIntentHandler_osLogObject];
  sub_2692C7790();
  sub_2692C7780();
  (*(v6 + 8))(v10, v5);
  sub_269275A6C(&v3[OBJC_IVAR____TtC21SiriTimeAlarmInternal24DeleteAlarmIntentHandler_siriAlarmManager], v37);
  v23 = v38;
  v24 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  v25 = swift_allocObject();
  v26 = v34;
  v27 = v35;
  v25[2] = v3;
  v25[3] = v26;
  v25[4] = v27;
  v25[5] = a1;
  v28 = *(v24 + 56);
  v29 = v33;
  v30 = v3;

  v28(a1, sub_2692B9A8C, v25, v23, v24);

  return __swift_destroy_boxed_opaque_existential_1Tm(v37);
}

uint64_t sub_2692B7770(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void *a5)
{
  v9 = sub_2692C77A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = *(a1 + 8);
  sub_2692C7A10();
  v17 = *(a2 + OBJC_IVAR____TtC21SiriTimeAlarmInternal24DeleteAlarmIntentHandler_osLogObject);
  sub_2692C7790();
  sub_2692C7780();
  (*(v10 + 8))(v14, v9);
  if (v16)
  {
    if (v15 == 12)
    {
      if (qword_280302B38 != -1)
      {
        swift_once();
      }

      v18 = sub_2692C77C0();
      __swift_project_value_buffer(v18, qword_280303338);
      v19 = sub_2692C77B0();
      v20 = sub_2692C7A00();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_269270000, v19, v20, "No alarm exists on device.", v21, 2u);
        MEMORY[0x26D6368E0](v21, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_2692C9430;
      type metadata accessor for DeleteAlarmAlarmsResolutionResult();
      v23 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
    }

    else
    {
      if (qword_280302B38 != -1)
      {
        swift_once();
      }

      v35 = sub_2692C77C0();
      __swift_project_value_buffer(v35, qword_280303338);
      v36 = sub_2692C77B0();
      v37 = sub_2692C7A00();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_269270000, v36, v37, "No alarm found that user specified.", v38, 2u);
        MEMORY[0x26D6368E0](v38, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_2692C9430;
      type metadata accessor for DeleteAlarmAlarmsResolutionResult();
      v23 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
    }

    goto LABEL_42;
  }

  if (qword_280302B38 != -1)
  {
    swift_once();
  }

  v24 = sub_2692C77C0();
  __swift_project_value_buffer(v24, qword_280303338);

  v25 = sub_2692C77B0();
  v26 = sub_2692C7A00();
  sub_2692743E4(v15, 0);
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v49 = v28;
    *v27 = 136315138;
    v29 = type metadata accessor for SiriAlarm();
    v30 = MEMORY[0x26D635E70](v15, v29);
    v32 = sub_26927C4DC(v30, v31, &v49);

    *(v27 + 4) = v32;
    _os_log_impl(&dword_269270000, v25, v26, "Alarm search get a list of alarms %s.", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x26D6368E0](v28, -1, -1);
    MEMORY[0x26D6368E0](v27, -1, -1);
  }

  v33 = v15 >> 62;
  if (v15 >> 62)
  {
    if (sub_2692C7C60())
    {
      goto LABEL_14;
    }

LABEL_41:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_2692C9430;
    type metadata accessor for DeleteAlarmAlarmsResolutionResult();
    v23 = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
LABEL_42:
    v40 = v23;
    goto LABEL_43;
  }

  if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_41;
  }

LABEL_14:
  if (!a5 || [a5 alarmReferenceType] != 3)
  {
    if (v33)
    {
      result = sub_2692C7C60();
      if (result != 1)
      {
        goto LABEL_25;
      }
    }

    else
    {
      result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result != 1)
      {
LABEL_25:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_2692C9430;
        type metadata accessor for DeleteAlarmAlarmsResolutionResult();
        v40 = sub_2692C433C(v15);
LABEL_43:
        *(v22 + 32) = v40;
LABEL_44:
        a3(v22);
      }
    }

    if ((v15 & 0xC000000000000001) != 0)
    {
      v41 = MEMORY[0x26D6360D0](0, v15);
    }

    else
    {
      if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_48;
      }

      v41 = *(v15 + 32);
    }

    v42 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_2692C9430;
    type metadata accessor for DeleteAlarmAlarmsResolutionResult();
    *(v43 + 32) = sub_2692C42D8(v42);
    a3(v43);
  }

  if (v33)
  {
    v34 = sub_2692C7C60();
  }

  else
  {
    v34 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = MEMORY[0x277D84F90];
  if (!v34)
  {
    goto LABEL_44;
  }

  v49 = MEMORY[0x277D84F90];
  result = sub_2692C7C10();
  if ((v34 & 0x8000000000000000) == 0)
  {
    type metadata accessor for DeleteAlarmAlarmsResolutionResult();
    v44 = 0;
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x26D6360D0](v44, v15);
      }

      else
      {
        v45 = *(v15 + 8 * v44 + 32);
      }

      v46 = v45;
      ++v44;
      sub_2692C42D8(v45);

      sub_2692C7BF0();
      v47 = v49[2];
      sub_2692C7C20();
      sub_2692C7C30();
      sub_2692C7C00();
    }

    while (v34 != v44);
    v22 = v49;
    goto LABEL_44;
  }

LABEL_48:
  __break(1u);
  return result;
}

void sub_2692B7E64(void *a1, void (*a2)(char *))
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

  a2(v11);
}