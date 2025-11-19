uint64_t sub_261D6E014(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_261D86954();
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
      result = sub_261D86954();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_261D6E618(&qword_27FEF4558, &qword_27FEF42B0, qword_261D87C80);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF42B0, qword_261D87C80);
            v9 = sub_261D84D94(v13, i, a3);
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
        sub_261D597EC(0, &qword_27FEF41C0, 0x277D44660);
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

uint64_t sub_261D6E1B4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_261D86954();
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
      result = sub_261D86954();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_261D6E618(&qword_27FEF45A0, &qword_27FEF4598, &unk_261D87FE0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4598, &unk_261D87FE0);
            v9 = sub_261D84D94(v13, i, a3);
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
        sub_261D597EC(0, &unk_27FEF4440, 0x277D44750);
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

uint64_t sub_261D6E354(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_261D86954();
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
      result = sub_261D86954();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_261D6E618(&qword_27FEF4578, &qword_27FEF4570, &unk_261D87FC0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4570, &unk_261D87FC0);
            v9 = sub_261D84D94(v13, i, a3);
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
        sub_261D597EC(0, &unk_27FEF46E0, 0x277CD4228);
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

uint64_t sub_261D6E500()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261D6E538()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_261D6E56C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_261D6E594@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  return sub_261D6D548(a1, a2);
}

uint64_t sub_261D6E5B8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261D6E618(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_261D6E678()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_261D6E6B0()
{
  v0 = sub_261D864A4();
  __swift_allocate_value_buffer(v0, qword_27FEF45A8);
  v1 = __swift_project_value_buffer(v0, qword_27FEF45A8);
  if (qword_27FEF3F70 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FEF4D20);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_261D6E7B0(void *a1, uint64_t a2, void (**a3)(void, void), void *a4, uint64_t *a5, unint64_t *a6)
{
  v59 = a4;
  v60 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF45C0, &unk_261D880E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v61 = (v57 - v12);
  if (qword_27FEF3F98 != -1)
  {
    swift_once();
  }

  v13 = sub_261D864A4();
  v14 = __swift_project_value_buffer(v13, qword_27FEF45A8);
  v15 = a1;
  v16 = sub_261D86494();
  v17 = sub_261D866C4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v58 = a3;
    v57[0] = v19;
    v63 = v19;
    *v18 = 136315138;
    v20 = [v15 temporalEventTrigger];
    v57[1] = v14;
    v21 = a6;
    v22 = a5;
    v23 = v20;
    v62 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF45D0, &unk_261D880F0);
    v24 = sub_261D868D4();
    v26 = v25;

    a5 = v22;
    a6 = v21;
    v27 = sub_261D8464C(v24, v26, &v63);

    *(v18 + 4) = v27;
    _os_log_impl(&dword_261D56000, v16, v17, "SiriKit asked for resolving temporalEventTrigger {temporalEventTrigger: %s}", v18, 0xCu);
    v28 = v57[0];
    __swift_destroy_boxed_opaque_existential_0(v57[0]);
    a3 = v58;
    MEMORY[0x26671EBF0](v28, -1, -1);
    MEMORY[0x26671EBF0](v18, -1, -1);
  }

  v29 = v61;
  v30 = [v15 temporalEventTrigger];
  if (!v30)
  {
    v40 = sub_261D86494();
    v41 = sub_261D866C4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_261D56000, v40, v41, ".temporalEventTrigger is nil {result: .notRequired}", v42, 2u);
      MEMORY[0x26671EBF0](v42, -1, -1);
    }

    sub_261D597EC(0, a6, a5);
    v31 = [swift_getObjCClassFromMetadata() notRequired];
    (a3)[2](a3, v31);
    goto LABEL_27;
  }

  v31 = v30;
  v32 = v60 + *v59;
  sub_261D86784();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v43 = *v29;
    v44 = sub_261D86494();
    v45 = sub_261D866C4();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      *(v46 + 4) = v43;
      *v47 = v43;
      v48 = v43;
      _os_log_impl(&dword_261D56000, v44, v45, ".temporalEventTrigger resolved to a valid date {result: .success(with: %@)}", v46, 0xCu);
      sub_261D5968C(v47);
      MEMORY[0x26671EBF0](v47, -1, -1);
      MEMORY[0x26671EBF0](v46, -1, -1);
    }

    sub_261D597EC(0, a6, a5);
    v49 = [swift_getObjCClassFromMetadata() successWithResolvedTemporalEventTrigger_];
    (a3)[2](a3, v49);

    goto LABEL_26;
  }

  v33 = sub_261D86764();
  v34 = (*(*(v33 - 8) + 88))(v29, v33);
  if (v34 == *MEMORY[0x277D45EE8])
  {
    v35 = sub_261D86494();
    v36 = sub_261D866C4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_261D56000, v35, v36, ".temporalEventTrigger would create a due date in the past {result: .unsupported(.timeInPast)}", v37, 2u);
      MEMORY[0x26671EBF0](v37, -1, -1);
    }

    v38 = *a5;
    v39 = [objc_opt_self() unsupportedForReason_];
LABEL_25:
    v49 = v39;
    (a3)[2](a3, v49);
LABEL_26:

LABEL_27:
    return;
  }

  if (v34 == *MEMORY[0x277D45EF0])
  {
    v50 = sub_261D86494();
    v51 = sub_261D866C4();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_261D56000, v50, v51, ".temporalEventTrigger.recurrenceRule is not supported {result: .unsupported(.invalidRecurrence)}", v52, 2u);
      MEMORY[0x26671EBF0](v52, -1, -1);
    }

    v53 = *a5;
    v39 = [objc_opt_self() unsupportedForReason_];
    goto LABEL_25;
  }

  if (v34 == *MEMORY[0x277D45EF8])
  {
    v54 = sub_261D86494();
    v55 = sub_261D866C4();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_261D56000, v54, v55, ".temporalEventTrigger could not be converted into a dueDate, ignoring it {result: .notRequired}", v56, 2u);
      MEMORY[0x26671EBF0](v56, -1, -1);
    }

    sub_261D597EC(0, a6, a5);
    v39 = [swift_getObjCClassFromMetadata() notRequired];
    goto LABEL_25;
  }

  _Block_release(a3);
  sub_261D86B74();
  __break(1u);
}

uint64_t sub_261D6EE5C()
{
  v0 = sub_261D864A4();
  __swift_allocate_value_buffer(v0, qword_27FEF45E0);
  v1 = __swift_project_value_buffer(v0, qword_27FEF45E0);
  if (qword_27FEF3F70 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FEF4D20);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_261D6F104(unint64_t a1, void (*a2)(NSObject *))
{
  if (qword_27FEF3FA0 != -1)
  {
    swift_once();
  }

  v5 = sub_261D864A4();
  __swift_project_value_buffer(v5, qword_27FEF45E0);

  v6 = sub_261D86494();
  LOBYTE(v7) = sub_261D866C4();
  v8 = a1 >> 62;
  if (!os_log_type_enabled(v6, v7))
  {

    goto LABEL_8;
  }

  v2 = swift_slowAlloc();
  *v2 = 134217984;
  if (v8)
  {
    goto LABEL_35;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_261D86954())
  {
    *(v2 + 4) = i;

    _os_log_impl(&dword_261D56000, v6, v7, "Search dataSource returned %ld reminders", v2, 0xCu);
    MEMORY[0x26671EBF0](v2, -1, -1);

LABEL_8:
    if (v8)
    {
      if (sub_261D86954() <= 9)
      {
LABEL_10:
        sub_261D597EC(0, &qword_27FEF41D0, 0x277CD4220);
        a1 = sub_261D86814();
        goto LABEL_13;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 9)
    {
      goto LABEL_10;
    }

LABEL_13:
    if (a1 >> 62)
    {
      v7 = sub_261D86954();
      if (!v7)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        goto LABEL_24;
      }
    }

    v26 = MEMORY[0x277D84F90];
    v6 = &v26;
    sub_261D86A34();
    if ((v7 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_35:
    ;
  }

  sub_261D597EC(0, &qword_27FEF41D0, 0x277CD4220);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v10 = 0;
    do
    {
      v11 = v10 + 1;
      MEMORY[0x26671E4C0]();
      sub_261D86824();
      sub_261D86A14();
      v12 = *(v26 + 16);
      sub_261D86A44();
      sub_261D86A54();
      sub_261D86A24();
      v10 = v11;
    }

    while (v7 != v11);
  }

  else
  {
    v13 = 32;
    do
    {
      v14 = *(a1 + v13);
      sub_261D86824();
      sub_261D86A14();
      v15 = *(v26 + 16);
      sub_261D86A44();
      sub_261D86A54();
      sub_261D86A24();
      v13 += 8;
      --v7;
    }

    while (v7);
  }

LABEL_24:

  v16 = [objc_allocWithZone(MEMORY[0x277CD4060]) initWithCode:3 userActivity:0];
  sub_261D597EC(0, &qword_27FEF41D0, 0x277CD4220);
  v17 = sub_261D865C4();

  [v16 setTasks_];

  v25 = v16;
  v18 = sub_261D86494();
  v19 = sub_261D866C4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = -1;
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    v22 = [v25 tasks];
    if (v22)
    {
      v23 = v22;
      v24 = sub_261D865D4();

      if (v24 >> 62)
      {
        v20 = sub_261D86954();
      }

      else
      {
        v20 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    *(v21 + 4) = v20;

    _os_log_impl(&dword_261D56000, v18, v19, "Return success search result {tasksCount: %ld}", v21, 0xCu);
    MEMORY[0x26671EBF0](v21, -1, -1);
  }

  else
  {

    v18 = v25;
  }

  a2(v25);
}

void sub_261D6F590(uint64_t a1, uint64_t a2, void (*a3)(NSObject *))
{
  v4 = sub_261D86214();
  v5 = sub_261D861F4();
  if (qword_27FEF3FA0 != -1)
  {
    goto LABEL_52;
  }

LABEL_2:
  v6 = sub_261D864A4();
  v7 = __swift_project_value_buffer(v6, qword_27FEF45E0);

  v8 = sub_261D86494();
  v9 = sub_261D866C4();
  v10 = v4 >> 62;
  if (os_log_type_enabled(v8, v9))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    if (!v10)
    {
      v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  while (1)
  {

    v13 = sub_261D86494();
    v9 = sub_261D866C4();
    v14 = v5 >> 62;
    if (os_log_type_enabled(v13, v9))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      if (v14)
      {
        v16 = sub_261D86954();
      }

      else
      {
        v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v15 + 4) = v16;

      _os_log_impl(&dword_261D56000, v13, v9, "Search dataSource returned %ld smartLists", v15, 0xCu);
      MEMORY[0x26671EBF0](v15, -1, -1);
    }

    else
    {
    }

    if (v10)
    {
      v11 = sub_261D86954();
    }

    else
    {
      v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = MEMORY[0x277D84F90];
    v44 = v7;
    if (v11)
    {
      v50 = MEMORY[0x277D84F90];
      v8 = &v50;
      sub_261D86A34();
      if (v11 < 0)
      {
        __break(1u);
        goto LABEL_55;
      }

      v40 = v5 >> 62;
      v41 = v5;
      v17 = 0;
      v9 = OS_LOG_TYPE_DEFAULT;
      v18 = v4 & 0xC000000000000001;
      v19 = v4;
      v45 = (v4 & 0xFFFFFFFFFFFFFF8);
      do
      {
        v5 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
          goto LABEL_49;
        }

        if (v18)
        {
          v20 = MEMORY[0x26671E4C0](v17, v19);
        }

        else
        {
          if (v17 >= v45[2])
          {
            goto LABEL_50;
          }

          v20 = *(v19 + 8 * v17 + 32);
        }

        v21 = v20;
        v48 = v20;
        sub_261D6FBDC(&v48, a2, &v49);

        sub_261D86A14();
        v4 = *(v50 + 16);
        sub_261D86A44();
        sub_261D86A54();
        sub_261D86A24();
        ++v17;
      }

      while (v5 != v11);
      v22 = v50;
      v7 = v44;
      v5 = v41;
      v4 = v19;
      v10 = MEMORY[0x277D84F90];
      v23 = v41 & 0xFFFFFFFFFFFFFF8;
      if (v40)
      {
        break;
      }

      goto LABEL_24;
    }

    v9 = OS_LOG_TYPE_DEFAULT;
    v22 = MEMORY[0x277D84F90];
    v23 = v5 & 0xFFFFFFFFFFFFFF8;
    if (v14)
    {
      break;
    }

LABEL_24:
    v11 = *(v23 + 16);
    if (!v11)
    {
      goto LABEL_36;
    }

LABEL_25:
    v42 = v22;
    v50 = v10;
    v8 = &v50;
    sub_261D86A34();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v24 = 0;
      v25 = v5 & 0xC000000000000001;
      v26 = v5;
      v46 = (v5 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        v5 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v25)
        {
          v27 = MEMORY[0x26671E4C0](v24, v26);
        }

        else
        {
          if (v24 >= v46[2])
          {
            goto LABEL_51;
          }

          v27 = *(v26 + 8 * v24 + 32);
        }

        v28 = v27;
        v48 = v27;
        sub_261D70018(&v48, a2, &v49);

        sub_261D86A14();
        v4 = *(v50 + 16);
        sub_261D86A44();
        sub_261D86A54();
        sub_261D86A24();
        ++v24;
        if (v5 == v11)
        {

          v29 = v50;
          v22 = v42;
          goto LABEL_37;
        }
      }

LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      swift_once();
      goto LABEL_2;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    v12 = sub_261D86954();
LABEL_5:
    *(v11 + 4) = v12;

    _os_log_impl(&dword_261D56000, v8, v9, "Search dataSource returned %ld lists", v11, 0xCu);
    MEMORY[0x26671EBF0](v11, -1, -1);
  }

  v11 = sub_261D86954();
  if (v11)
  {
    goto LABEL_25;
  }

LABEL_36:

  v29 = MEMORY[0x277D84F90];
LABEL_37:
  v30 = [objc_allocWithZone(MEMORY[0x277CD4060]) initWithCode:3 userActivity:0];
  v50 = v22;
  sub_261D6DCC4(v29);
  sub_261D597EC(0, &unk_27FEF46E0, 0x277CD4228);
  v31 = sub_261D865C4();

  [v30 setTaskLists_];

  v47 = v30;
  v32 = sub_261D86494();
  v33 = sub_261D866C4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = -1;
    v35 = swift_slowAlloc();
    *v35 = 134217984;
    v36 = [v47 taskLists];
    if (v36)
    {
      v37 = v36;
      v38 = sub_261D865D4();

      if (v38 >> 62)
      {
        v34 = sub_261D86954();
      }

      else
      {
        v34 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v39 = a3;
    }

    else
    {
      v39 = a3;
    }

    *(v35 + 4) = v34;

    _os_log_impl(&dword_261D56000, v32, v33, "Return success search result {taskListsCount: %ld}", v35, 0xCu);
    MEMORY[0x26671EBF0](v35, -1, -1);
  }

  else
  {

    v32 = v47;
    v39 = a3;
  }

  v39(v47);
}

void sub_261D6FBDC(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4438, &qword_261D88170);
  v5 = sub_261D86194();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_261D88100;
  v10 = (v9 + v8);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF46F0, &qword_261D88178) + 48);
  *v10 = [v4 objectID];
  v12 = *MEMORY[0x277D44F58];
  v13 = sub_261D86184();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
  v14 = *(v6 + 104);
  v14(v10, *MEMORY[0x277D44F30], v5);
  v10[v7] = 0;
  v14(&v10[v7], *MEMORY[0x277D44EF0], v5);
  sub_261D86254();
  v15 = *(a2 + OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_store);
  v16 = [objc_opt_self() defaultFetchOptions];
  sub_261D86244();
  if (v32)
  {

    if (qword_27FEF3FA0 != -1)
    {
      swift_once();
    }

    v17 = sub_261D864A4();
    __swift_project_value_buffer(v17, qword_27FEF45E0);
    v18 = v4;
    v19 = v32;
    v20 = sub_261D86494();
    v21 = sub_261D866A4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v34 = v24;
      *v22 = 138412546;
      v25 = [v18 objectID];
      *(v22 + 4) = v25;
      *v23 = v25;
      *(v22 + 12) = 2080;
      swift_getErrorValue();
      v26 = sub_261D86BA4();
      v28 = sub_261D8464C(v26, v27, &v34);

      *(v22 + 14) = v28;
      _os_log_impl(&dword_261D56000, v20, v21, "Error fetching reminders for list {listID: %@, error: %s", v22, 0x16u);
      sub_261D646F8(v23, &qword_27FEF4200, &unk_261D878D0);
      MEMORY[0x26671EBF0](v23, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x26671EBF0](v24, -1, -1);
      MEMORY[0x26671EBF0](v22, -1, -1);
    }

    sub_261D597EC(0, &unk_27FEF46E0, 0x277CD4228);
    v29 = v18;
    v30 = sub_261D86654();
  }

  else
  {

    sub_261D597EC(0, &unk_27FEF46E0, 0x277CD4228);
    v31 = v4;
    v30 = sub_261D86664();
  }

  *a3 = v30;
}

void sub_261D70018(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  sub_261D86254();
  v7 = *(a2 + OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_store);
  sub_261D86234();
  if (v3)
  {
    if (qword_27FEF3FA0 != -1)
    {
      swift_once();
    }

    v8 = sub_261D864A4();
    __swift_project_value_buffer(v8, qword_27FEF45E0);
    v9 = v6;
    v10 = v3;
    v11 = sub_261D86494();
    v12 = sub_261D866A4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = v23;
      *v13 = 138412546;
      v15 = [v9 objectID];
      *(v13 + 4) = v15;
      *v14 = v15;
      *(v13 + 12) = 2080;
      swift_getErrorValue();
      v16 = sub_261D86BA4();
      v18 = a3;
      v19 = sub_261D8464C(v16, v17, &v24);

      *(v13 + 14) = v19;
      a3 = v18;
      _os_log_impl(&dword_261D56000, v11, v12, "Error fetching reminders for smartList {smartListID: %@, error: %s", v13, 0x16u);
      sub_261D646F8(v14, &qword_27FEF4200, &unk_261D878D0);
      MEMORY[0x26671EBF0](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x26671EBF0](v23, -1, -1);
      MEMORY[0x26671EBF0](v13, -1, -1);
    }

    sub_261D597EC(0, &unk_27FEF46E0, 0x277CD4228);
    v20 = v9;
    v21 = sub_261D86634();
  }

  else
  {
    sub_261D597EC(0, &unk_27FEF46E0, 0x277CD4228);
    v22 = v6;
    v21 = sub_261D86634();
  }

  *a3 = v21;
}

void sub_261D702DC(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

id sub_261D703A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRSearchForNotebookItemsIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_261D70458(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4700, &qword_261D88188);
    v3 = sub_261D86B34();
    v4 = a1 + 32;

    while (1)
    {
      sub_261D64690(v4, &v13, &qword_27FEF41F8, &qword_261D87DB0);
      v5 = v13;
      v6 = v14;
      result = sub_261D76DC8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_261D75950(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_261D70588(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF46F8, &qword_261D88180);
    v3 = sub_261D86B34();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_261D76DC8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_261D7068C(void *a1, uint64_t a2, void (**a3)(void, void))
{
  if (qword_27FEF3FA0 != -1)
  {
    swift_once();
  }

  v5 = sub_261D864A4();
  __swift_project_value_buffer(v5, qword_27FEF45E0);
  v6 = a1;
  v7 = sub_261D86494();
  v8 = sub_261D866C4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&dword_261D56000, v7, v8, "SiriKit asked for resolving itemType {intent: %@}", v9, 0xCu);
    sub_261D646F8(v10, &qword_27FEF4200, &unk_261D878D0);
    MEMORY[0x26671EBF0](v10, -1, -1);
    MEMORY[0x26671EBF0](v9, -1, -1);
  }

  v12 = [v6 itemType];
  if (v12 > 1)
  {
    if (v12 != 3)
    {
      if (v12 != 2)
      {
        goto LABEL_19;
      }

      if ((sub_261D867C4() & 1) == 0)
      {
        v13 = [objc_opt_self() successWithResolvedNotebookItemType_];
        goto LABEL_13;
      }
    }

LABEL_12:
    v13 = [objc_opt_self() successWithResolvedNotebookItemType_];
    goto LABEL_13;
  }

  if (!v12)
  {
    goto LABEL_12;
  }

  if (v12 != 1)
  {
LABEL_19:
    v19 = MEMORY[0x277D84F90];
    sub_261D70458(MEMORY[0x277D84F90]);
    sub_261D70458(v19);
    _Block_release(a3);
    sub_261D6751C("unknown item type", 17, 2);
    __break(1u);
    return;
  }

  sub_261D597EC(0, &unk_27FEF4710, 0x277CD3E10);
  v13 = [swift_getObjCClassFromMetadata() unsupported];
LABEL_13:
  v20 = v13;
  v14 = sub_261D86494();
  v15 = sub_261D866C4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v20;
    *v17 = v20;
    v18 = v20;
    _os_log_impl(&dword_261D56000, v14, v15, "Resolved itemType {result: %@}", v16, 0xCu);
    sub_261D646F8(v17, &qword_27FEF4200, &unk_261D878D0);
    MEMORY[0x26671EBF0](v17, -1, -1);
    MEMORY[0x26671EBF0](v16, -1, -1);
  }

  (a3)[2](a3, v20);
}

uint64_t sub_261D709EC(void *a1, char *a2, void (**a3)(void, void))
{
  v623 = a2;
  v598 = sub_261D85DC4();
  v597 = *(v598 - 8);
  v5 = *(v597 + 64);
  MEMORY[0x28223BE20](v598);
  v596 = &v557 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4680, &qword_261D88138);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v591 = &v557 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v562 = &v557 - v11;
  MEMORY[0x28223BE20](v12);
  v574 = &v557 - v13;
  MEMORY[0x28223BE20](v14);
  v573 = &v557 - v15;
  MEMORY[0x28223BE20](v16);
  v583 = &v557 - v17;
  v617 = sub_261D85C44();
  v630 = *(v617 - 8);
  v18 = *(v630 + 64);
  MEMORY[0x28223BE20](v617);
  v595 = &v557 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v584 = &v557 - v21;
  MEMORY[0x28223BE20](v22);
  v582 = &v557 - v23;
  v619 = sub_261D85D24();
  v620 = *(v619 - 8);
  v24 = *(v620 + 64);
  MEMORY[0x28223BE20](v619);
  v577 = &v557 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v590 = &v557 - v27;
  MEMORY[0x28223BE20](v28);
  v589 = &v557 - v29;
  MEMORY[0x28223BE20](v30);
  v559 = &v557 - v31;
  MEMORY[0x28223BE20](v32);
  v561 = &v557 - v33;
  MEMORY[0x28223BE20](v34);
  v572 = &v557 - v35;
  MEMORY[0x28223BE20](v36);
  v38 = &v557 - v37;
  MEMORY[0x28223BE20](v39);
  v609 = &v557 - v40;
  MEMORY[0x28223BE20](v41);
  v581 = &v557 - v42;
  MEMORY[0x28223BE20](v43);
  v633 = &v557 - v44;
  MEMORY[0x28223BE20](v45);
  v632 = &v557 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF4780, &unk_261D88140);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47 - 8);
  v600 = &v557 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v615 = &v557 - v51;
  v618 = sub_261D85DD4();
  v616 = *(v618 - 8);
  v52 = *(v616 + 64);
  MEMORY[0x28223BE20](v618);
  v621 = &v557 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF41B0, &unk_261D87DA0);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54 - 8);
  v599 = &v557 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v606 = (&v557 - v58);
  MEMORY[0x28223BE20](v59);
  v605 = &v557 - v60;
  MEMORY[0x28223BE20](v61);
  v604 = (&v557 - v62);
  MEMORY[0x28223BE20](v63);
  v631 = (&v557 - v64);
  MEMORY[0x28223BE20](v65);
  v603 = &v557 - v66;
  MEMORY[0x28223BE20](v67);
  v625 = &v557 - v68;
  MEMORY[0x28223BE20](v69);
  v614 = &v557 - v70;
  MEMORY[0x28223BE20](v71);
  v602 = &v557 - v72;
  MEMORY[0x28223BE20](v73);
  v629 = &v557 - v74;
  v571 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4688, &unk_261D88150);
  v75 = *(*(v571 - 8) + 64);
  MEMORY[0x28223BE20](v571);
  v612 = &v557 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v77);
  v576 = &v557 - v78;
  MEMORY[0x28223BE20](v79);
  v640 = &v557 - v80;
  MEMORY[0x28223BE20](v81);
  v570 = &v557 - v82;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF4690, &qword_261D87F08);
  v84 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83 - 8);
  v601 = &v557 - v85;
  v641 = sub_261D863C4();
  v636 = *(v641 - 8);
  v86 = *(v636 + 64);
  MEMORY[0x28223BE20](v641);
  v580 = &v557 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v88);
  v567 = &v557 - v89;
  MEMORY[0x28223BE20](v90);
  v579 = &v557 - v91;
  MEMORY[0x28223BE20](v92);
  v626 = &v557 - v93;
  v638 = sub_261D86194();
  v94 = *(v638 - 8);
  v95 = *(v94 + 64);
  MEMORY[0x28223BE20](v638);
  v593 = &v557 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v97);
  v588 = &v557 - v98;
  MEMORY[0x28223BE20](v99);
  v587 = &v557 - v100;
  MEMORY[0x28223BE20](v101);
  v575 = &v557 - v102;
  MEMORY[0x28223BE20](v103);
  v608 = &v557 - v104;
  MEMORY[0x28223BE20](v105);
  v607 = &v557 - v106;
  MEMORY[0x28223BE20](v107);
  v610 = &v557 - v108;
  MEMORY[0x28223BE20](v109);
  v611 = &v557 - v110;
  MEMORY[0x28223BE20](v111);
  v558 = &v557 - v112;
  MEMORY[0x28223BE20](v113);
  v586 = &v557 - v114;
  MEMORY[0x28223BE20](v115);
  v585 = &v557 - v116;
  MEMORY[0x28223BE20](v117);
  v594 = (&v557 - v118);
  MEMORY[0x28223BE20](v119);
  v635 = &v557 - v120;
  MEMORY[0x28223BE20](v121);
  v568 = (&v557 - v122);
  MEMORY[0x28223BE20](v123);
  v569 = (&v557 - v124);
  MEMORY[0x28223BE20](v125);
  v578 = &v557 - v126;
  MEMORY[0x28223BE20](v127);
  v628 = &v557 - v128;
  MEMORY[0x28223BE20](v129);
  v627 = &v557 - v130;
  v613 = swift_allocObject();
  *(v613 + 16) = a3;
  v592 = a3;
  _Block_copy(a3);
  if (qword_27FEF3FA0 != -1)
  {
    swift_once();
  }

  v131 = sub_261D864A4();
  v132 = __swift_project_value_buffer(v131, qword_27FEF45E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF41E8, &qword_261D87C30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_261D87AE0;
  *(inited + 32) = 0x746E65746E69;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = sub_261D597EC(0, &unk_27FEF46A0, 0x277CD4058);
  *(inited + 48) = a1;
  v134 = a1;
  sub_261D70458(inited);
  swift_setDeallocating();
  sub_261D646F8(inited + 32, &qword_27FEF41F8, &qword_261D87DB0);
  sub_261D67278();

  v135 = v134;
  v624 = v132;
  v136 = sub_261D86494();
  v137 = sub_261D866C4();

  if (os_log_type_enabled(v136, v137))
  {
    v138 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    *v138 = 138412290;
    *(v138 + 4) = v135;
    *v139 = v135;
    v140 = v135;
    _os_log_impl(&dword_261D56000, v136, v137, "SiriKit asked for handling search {intent: %@}", v138, 0xCu);
    sub_261D646F8(v139, &qword_27FEF4200, &unk_261D878D0);
    MEMORY[0x26671EBF0](v139, -1, -1);
    MEMORY[0x26671EBF0](v138, -1, -1);
  }

  v645 = MEMORY[0x277D84F90];
  v141 = [v135 title];
  if (v141)
  {
    v142 = v141;
    v143 = [v141 spokenPhrase];

    v144 = sub_261D86534();
    v146 = v145;
  }

  else
  {
    v144 = 0;
    v146 = 0;
  }

  v147 = [v135 content];
  if (v147)
  {
    v148 = v147;
    v149 = sub_261D86534();
    v151 = v150;
  }

  else
  {
    v149 = 0;
    v151 = 0;
  }

  v152 = v640;
  v634 = v94;
  v637 = v135;
  v560 = v38;
  if (!(v146 | v151))
  {
    v153 = MEMORY[0x277D84F90];
    v622 = MEMORY[0x277D84F90];
    v154 = v638;
    v155 = v94;
    v156 = v641;
    v157 = v636;
    goto LABEL_36;
  }

  v158 = 0;
  v642 = v144;
  v643[0] = v146;
  v643[1] = v149;
  v643[2] = v151;
  v159 = MEMORY[0x277D84F90];
LABEL_14:
  v160 = &v643[2 * v158];
  while (++v158 != 3)
  {
    v161 = v160 + 2;
    v162 = *v160;
    v160 += 2;
    if (v162)
    {
      v163 = *(v161 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v159 = sub_261D842B4(0, *(v159 + 2) + 1, 1, v159);
      }

      v165 = *(v159 + 2);
      v164 = *(v159 + 3);
      if (v165 >= v164 >> 1)
      {
        v159 = sub_261D842B4((v164 > 1), v165 + 1, 1, v159);
      }

      *(v159 + 2) = v165 + 1;
      v166 = &v159[16 * v165];
      *(v166 + 4) = v163;
      *(v166 + 5) = v162;
      goto LABEL_14;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF46C0, &qword_261D87BF0);
  swift_arrayDestroy();
  v644 = v159;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF46C8, &qword_261D88168);
  sub_261D758EC();
  v167 = sub_261D864F4();
  v168 = v94;
  v170 = v169;

  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4538, &qword_261D87F78);
  v172 = *(v171 + 48);
  v173 = v627;
  v622 = v167;
  *v627 = v167;
  *(v173 + 1) = v170;
  v174 = *MEMORY[0x277D45270];
  v175 = sub_261D862B4();
  v176 = *(*(v175 - 8) + 104);
  v176(&v173[v172], v174, v175);
  v177 = *MEMORY[0x277D44F10];
  v178 = *(v168 + 104);
  v566 = v168 + 104;
  v565 = v178;
  v178(v173, v177, v638);

  v639 = sub_261D8428C(0, 1, 1, MEMORY[0x277D84F90]);
  v180 = v639[2];
  v179 = v639[3];
  if (v180 >= v179 >> 1)
  {
    v639 = sub_261D8428C(v179 > 1, v180 + 1, 1, v639);
  }

  v181 = v639;
  v639[2] = v180 + 1;
  v182 = *(v634 + 32);
  v564 = (*(v634 + 80) + 32) & ~*(v634 + 80);
  v563 = *(v634 + 72);
  v183 = v181 + v564 + v563 * v180;
  v184 = v627;
  v154 = v638;
  v627 = v182;
  (v182)(v183, v184, v638);
  v645 = v181;
  v185 = *(v171 + 48);
  v186 = v628;
  *v628 = v622;
  *(v186 + 1) = v170;
  v176(&v186[v185], v174, v175);
  v565(v186, v177, v154);
  v187 = sub_261D8428C(0, 1, 1, MEMORY[0x277D84F90]);
  v189 = v187[2];
  v188 = v187[3];
  if (v189 >= v188 >> 1)
  {
    v187 = sub_261D8428C(v188 > 1, v189 + 1, 1, v187);
  }

  v152 = v640;
  v156 = v641;
  v157 = v636;
  v187[2] = v189 + 1;
  v622 = v187;
  (v627)(v187 + v564 + v189 * v563, v628, v154);
  v190 = [v637 title];
  v155 = v634;
  v153 = v639;
  if (v190)
  {
    v191 = v190;
    v192 = [v190 vocabularyIdentifier];

    if (v192)
    {
      v193 = sub_261D86534();
      v195 = v194;

      if (v193 == 0xD000000000000011 && 0x8000000261D8D570 == v195)
      {

        v153 = v639;
        v196 = v578;
LABEL_32:
        v198 = *MEMORY[0x277D45060];
        v199 = sub_261D861D4();
        (*(*(v199 - 8) + 104))(v196, v198, v199);
        v565(v196, *MEMORY[0x277D44F40], v154);
        v201 = v622[2];
        v200 = v622[3];
        if (v201 >= v200 >> 1)
        {
          v622 = sub_261D8428C(v200 > 1, v201 + 1, 1, v622);
        }

        v202 = v622;
        v622[2] = v201 + 1;
        (v627)(v202 + v564 + v201 * v563, v196, v154);
        goto LABEL_35;
      }

      v197 = sub_261D86B84();

      v153 = v639;
      v196 = v578;
      if (v197)
      {
        goto LABEL_32;
      }
    }
  }

LABEL_35:
  v135 = v637;
LABEL_36:
  v203 = [v135 notebookItemIdentifier];
  if (!v203)
  {
    v218 = v135;
    v219 = sub_261D86494();
    v220 = sub_261D866A4();

    if (os_log_type_enabled(v219, v220))
    {
      v221 = v152;
      v222 = v153;
      v223 = swift_slowAlloc();
      v224 = v155;
      v225 = swift_slowAlloc();
      *v223 = 138412290;
      *(v223 + 4) = v218;
      *v225 = v218;
      v226 = v218;
      _os_log_impl(&dword_261D56000, v219, v220, "[Announce Reminders] notebookIdentifier not found in intent: %@", v223, 0xCu);
      sub_261D646F8(v225, &qword_27FEF4200, &unk_261D878D0);
      v227 = v225;
      v155 = v224;
      MEMORY[0x26671EBF0](v227, -1, -1);
      v228 = v223;
      v153 = v222;
      v152 = v221;
      MEMORY[0x26671EBF0](v228, -1, -1);
    }

LABEL_65:
    v279 = [v135 status] == 2;
    v280 = v635;
    *v635 = v279;
    v281 = *MEMORY[0x277D44EF0];
    v282 = *(v155 + 104);
    v641 = v155 + 104;
    v282(v280, v281, v154);
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v153 = sub_261D8428C(0, *(v153 + 16) + 1, 1, v153);
    }

    v284 = *(v153 + 16);
    v283 = *(v153 + 24);
    if (v284 >= v283 >> 1)
    {
      v153 = sub_261D8428C(v283 > 1, v284 + 1, 1, v153);
    }

    *(v153 + 16) = v284 + 1;
    v285 = *(v155 + 32);
    v628 = ((*(v155 + 80) + 32) & ~*(v155 + 80));
    v627 = *(v155 + 72);
    v636 = v155 + 32;
    v635 = v285;
    (v285)(&v628[v153 + v627 * v284], v280, v154);
    v645 = v153;
    swift_endAccess();
    v286 = [v135 location];
    v626 = v282;
    if (v286 && (v287 = v286, v288 = [v286 name], v287, v288))
    {
      v289 = sub_261D86534();
      v291 = v290;

      if ([v135 locationSearchType] == 1)
      {
        v292 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4538, &qword_261D87F78) + 48);
        v293 = v594;
        *v594 = v289;
        v293[1] = v291;
        v294 = *MEMORY[0x277D45270];
        v295 = sub_261D862B4();
        (*(*(v295 - 8) + 104))(v293 + v292, v294, v295);
        v282(v293, *MEMORY[0x277D44F48], v154);
        swift_beginAccess();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v153 = sub_261D8428C(0, *(v153 + 16) + 1, 1, v153);
        }

        v297 = *(v153 + 16);
        v296 = *(v153 + 24);
        v155 = v634;
        if (v297 >= v296 >> 1)
        {
          v153 = sub_261D8428C(v296 > 1, v297 + 1, 1, v153);
        }

        *(v153 + 16) = v297 + 1;
        (v635)(&v628[v153 + v297 * v627], v594, v154);
        v298 = v153;
        v645 = v153;
        swift_endAccess();
      }

      else
      {
        v298 = v153;
      }
    }

    else
    {
      v298 = v153;
    }

    v300 = *(v155 + 56);
    v299 = (v155 + 56);
    v601 = v300;
    (v300)(v152, 1, 1, v154);
    v301 = [v135 temporalEventTriggerTypes];
    v302 = [v135 temporalEventTriggerTypes];
    v303 = (v302 & 2) == 0;
    v304 = [v135 temporalEventTriggerTypes];
    if (v301)
    {
      v305 = v617;
      v306 = v298;
      if ((v302 & 2) != 0)
      {
        if ((v304 & 4) == 0)
        {
          v309 = v299;
          v303 = 0;
          v308 = v626;
          goto LABEL_90;
        }

        goto LABEL_96;
      }

      if ((v304 & 4) != 0)
      {
        goto LABEL_96;
      }

      sub_261D646F8(v152, &qword_27FEF4688, &unk_261D88150);
    }

    else
    {
      v305 = v617;
      if ((v302 & 2) == 0)
      {
        v306 = v298;
        if ((v304 & 4) != 0)
        {
          sub_261D646F8(v152, &qword_27FEF4688, &unk_261D88150);
LABEL_87:
          *v152 = 1;
          v308 = v626;
          (v626)(v152, *MEMORY[0x277D44ED8], v154);
          v309 = v299;
          (v601)(v152, 0, 1, v154);
LABEL_90:
          v310 = v593;
          *v593 = v303;
          (v308)(v310, *MEMORY[0x277D44EF8], v154);
          swift_beginAccess();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v306 = sub_261D8428C(0, *(v306 + 16) + 1, 1, v306);
          }

          v311 = v614;
          v313 = *(v306 + 16);
          v312 = *(v306 + 24);
          if (v313 >= v312 >> 1)
          {
            v306 = sub_261D8428C(v312 > 1, v313 + 1, 1, v306);
          }

          *(v306 + 16) = v313 + 1;
          (v635)(&v628[v306 + v313 * v627], v310, v154);
          v645 = v306;
          swift_endAccess();
          v314 = v631;
          v299 = v309;
LABEL_97:
          v315 = [v135 dateTime];
          if (!v315)
          {
            goto LABEL_189;
          }

          v316 = v315;
          v317 = [v315 allDay];
          if (v317)
          {
            v318 = v316;
            v319 = v317;
            LODWORD(v594) = [v317 BOOLValue];

            v316 = v318;
          }

          else
          {
            LODWORD(v594) = 0;
          }

          v320 = v603;
          v614 = v316;
          v321 = [v316 startDateComponents];
          v639 = v306;
          if (v321)
          {
            v322 = v321;
            sub_261D85BE4();

            v323 = 0;
          }

          else
          {
            v323 = 1;
          }

          v593 = v299;
          v324 = v630;
          v325 = *(v630 + 56);
          v325(v311, v323, 1, v305);
          v326 = v602;
          sub_261D7587C(v311, v602);
          v327 = *(v324 + 48);
          v603 = (v324 + 48);
          v631 = v327;
          if (v327(v326, 1, v305) == 1)
          {
            sub_261D646F8(v326, &qword_27FEF41B0, &unk_261D87DA0);
            v328 = 1;
            v329 = v629;
          }

          else
          {
            v329 = v629;
            sub_261D85BC4();
            (*(v324 + 8))(v326, v305);
            v328 = 0;
          }

          v330 = v621;
          v331 = 1;
          v325(v329, v328, 1, v305);
          v332 = [v614 endDateComponents];
          if (v332)
          {
            v333 = v332;
            sub_261D85BE4();

            v331 = 0;
          }

          v325(v314, v331, 1, v305);
          sub_261D7587C(v314, v320);
          if (v631(v320, 1, v305) == 1)
          {
            sub_261D646F8(v320, &qword_27FEF41B0, &unk_261D87DA0);
            v334 = 1;
            v335 = v625;
          }

          else
          {
            v335 = v625;
            sub_261D85BC4();
            (*(v630 + 8))(v320, v305);
            v334 = 0;
          }

          v325(v335, v334, 1, v305);
          v336 = v604;
          sub_261D64690(v629, v604, &qword_27FEF41B0, &unk_261D87DA0);
          v337 = v631(v336, 1, v305);
          v338 = v615;
          if (v337 == 1)
          {
            sub_261D646F8(v336, &qword_27FEF41B0, &unk_261D87DA0);
            v339 = v616;
            v340 = v618;
            (*(v616 + 56))(v338, 1, 1, v618);
          }

          else
          {
            sub_261D85C34();
            v335 = v625;
            (*(v630 + 8))(v336, v305);
            v339 = v616;
            v340 = v618;
            if ((*(v616 + 48))(v338, 1, v618) != 1)
            {
              (*(v339 + 32))(v330, v338, v340);
              goto LABEL_125;
            }
          }

          v341 = v599;
          sub_261D64690(v335, v599, &qword_27FEF41B0, &unk_261D87DA0);
          if (v631(v341, 1, v305) == 1)
          {
            sub_261D646F8(v341, &qword_27FEF41B0, &unk_261D87DA0);
            v342 = v600;
            (*(v339 + 56))(v600, 1, 1, v340);
          }

          else
          {
            v342 = v600;
            sub_261D85C34();
            (*(v630 + 8))(v341, v305);
            v343 = *(v339 + 48);
            if (v343(v342, 1, v340) != 1)
            {
              (*(v339 + 32))(v330, v342, v340);
LABEL_123:
              v345 = v615;
              v346 = v343(v615, 1, v340);
              v335 = v625;
              if (v346 != 1)
              {
                sub_261D646F8(v345, &unk_27FEF4780, &unk_261D88140);
              }

LABEL_125:
              sub_261D85CA4();
              sub_261D85CB4();
              v347 = v605;
              sub_261D64690(v629, v605, &qword_27FEF41B0, &unk_261D87DA0);
              if (v631(v347, 1, v305) == 1)
              {
                sub_261D646F8(v347, &qword_27FEF41B0, &unk_261D87DA0);
                v348 = v620;
              }

              else
              {
                v349 = v630;
                v350 = *(v630 + 32);
                v351 = v582;
                v350(v582, v347, v305);
                if (v594)
                {
                  v352 = v584;
                  sub_261D85BB4();
                  (*(v349 + 8))(v351, v305);
                  v350(v351, v352, v305);
                }

                v353 = *&v623[OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_timeProvider + 32];
                __swift_project_boxed_opaque_existential_1(&v623[OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_timeProvider], *&v623[OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_timeProvider + 24]);
                v354 = v609;
                sub_261D85E74();
                v355 = v583;
                sub_261D85D94();
                v356 = v620;
                v357 = *(v620 + 8);
                v358 = v619;
                v357(v354, v619);
                v359 = *(v356 + 48);
                if (v359(v355, 1, v358) == 1)
                {
                  v360 = v581;
                  sub_261D85CA4();
                  (*(v630 + 8))(v351, v305);
                  v361 = v632;
                  v357(v632, v358);
                  v362 = v360;
                  v348 = v356;
                  if (v359(v355, 1, v358) != 1)
                  {
                    sub_261D646F8(v355, &qword_27FEF4680, &qword_261D88138);
                  }
                }

                else
                {
                  (*(v630 + 8))(v351, v305);
                  v361 = v632;
                  v357(v632, v358);
                  v362 = v581;
                  (*(v356 + 32))(v581, v355, v358);
                  v348 = v356;
                }

                (*(v348 + 32))(v361, v362, v358);
                v135 = v637;
                v335 = v625;
                v305 = v617;
              }

              v363 = v335;
              v364 = v606;
              sub_261D64690(v363, v606, &qword_27FEF41B0, &unk_261D87DA0);
              if (v631(v364, 1, v305) == 1)
              {
                sub_261D646F8(v364, &qword_27FEF41B0, &unk_261D87DA0);
                v152 = v640;
                v365 = v619;
                v366 = &qword_27FEF4000;
                goto LABEL_150;
              }

              v367 = v630;
              v368 = *(v630 + 32);
              v369 = v595;
              v368(v595, v364, v305);
              if (v594)
              {
                v370 = v584;
                sub_261D85BB4();
                v371 = *(v367 + 8);
                v371(v369, v305);
                v368(v369, v370, v305);
                v372 = *&v623[OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_timeProvider + 32];
                __swift_project_boxed_opaque_existential_1(&v623[OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_timeProvider], *&v623[OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_timeProvider + 24]);
                v373 = v609;
                sub_261D85E74();
                v374 = v573;
                sub_261D85D94();
                v375 = v620;
                v376 = v367 + 8;
                v377 = v619;
                v631 = *(v620 + 8);
                (v631)(v373, v619);
                v615 = *(v375 + 48);
                if ((v615)(v374, 1, v377) != 1)
                {
                  v606 = v371;
                  v630 = v376;
                  v393 = *(v375 + 32);
                  v394 = v560;
                  v605 = v375 + 32;
                  v604 = v393;
                  (v393)(v560, v374, v377);
                  v395 = v597;
                  v396 = v596;
                  v397 = v598;
                  (*(v597 + 104))(v596, *MEMORY[0x277CC9968], v598);
                  v398 = v562;
                  sub_261D85DB4();
                  v399 = v396;
                  v400 = v398;
                  (*(v395 + 8))(v399, v397);
                  if ((v615)(v398, 1, v377) == 1)
                  {
                    (v631)(v394, v377);
                    v606(v595, v617);
                    sub_261D646F8(v398, &qword_27FEF4680, &qword_261D88138);
                    v401 = v633;
                    v402 = v633;
                  }

                  else
                  {
                    v402 = v559;
                    sub_261D85CC4();
                    v403 = v631;
                    (v631)(v394, v377);
                    v606(v595, v617);
                    v401 = v633;
                    v403(v633, v377);
                    v403(v400, v377);
                  }

                  v152 = v640;
                  v135 = v637;
                  v366 = &qword_27FEF4000;
                  v404 = v561;
                  v405 = v604;
                  (v604)(v561, v402, v377);
                  v405(v401, v404, v377);
                  v365 = v377;
                  v348 = v620;
LABEL_150:
                  v406 = &v623[v366[194]];
                  if (sub_261D867C4())
                  {
                    v407 = v609;
                    sub_261D85CA4();
                    v408 = *(v348 + 8);
                    v409 = v632;
                    v408(v632, v365);
                    v631 = *(v348 + 32);
                    v631(v409, v407, v365);
                    v410 = *(v406 + 4);
                    __swift_project_boxed_opaque_existential_1(v406, *(v406 + 3));
                    v411 = v619;
                    sub_261D85E74();
                    v412 = v589;
                    sub_261D85D84();
                    v408(v407, v411);
                    v413 = v597;
                    v414 = v596;
                    v415 = v412;
                    v416 = v598;
                    (*(v597 + 104))(v596, *MEMORY[0x277CC9968], v598);
                    v417 = v591;
                    sub_261D85DB4();
                    (*(v413 + 8))(v414, v416);
                    v365 = v411;
                    v348 = v620;
                    if ((*(v620 + 48))(v417, 1, v365) == 1)
                    {
                      v408(v415, v365);
                      sub_261D646F8(v417, &qword_27FEF4680, &qword_261D88138);
                      v418 = v633;
                      v419 = v633;
                    }

                    else
                    {
                      v419 = v577;
                      sub_261D85CC4();
                      v408(v415, v365);
                      v418 = v633;
                      v408(v633, v365);
                      v408(v417, v365);
                    }

                    v420 = v590;
                    v421 = v631;
                    v631(v590, v419, v365);
                    v421(v418, v420, v365);
                    v152 = v640;
                    v135 = v637;
                  }

                  v422 = [v135 dateSearchType];
                  if (v422 <= 1)
                  {
                    v154 = v638;
                    v423 = v632;
                    if (!v422)
                    {

                      v424 = *(v348 + 8);
                      v424(v633, v365);
                      v424(v423, v365);
                      (*(v616 + 8))(v621, v618);
                      sub_261D646F8(v625, &qword_27FEF41B0, &unk_261D87DA0);
                      sub_261D646F8(v629, &qword_27FEF41B0, &unk_261D87DA0);
                      v425 = v634;
                      v426 = v611;
                      v306 = v639;
LABEL_196:
                      v503 = v612;
                      sub_261D64690(v152, v612, &qword_27FEF4688, &unk_261D88150);
                      if ((*(v425 + 48))(v503, 1, v154) == 1)
                      {
                        sub_261D646F8(v503, &qword_27FEF4688, &unk_261D88150);
                      }

                      else
                      {
                        (v635)(v426, v503, v154);
                        (*(v425 + 16))(v610, v426, v154);
                        swift_beginAccess();
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v306 = sub_261D8428C(0, *(v306 + 16) + 1, 1, v306);
                        }

                        v505 = *(v306 + 16);
                        v504 = *(v306 + 24);
                        if (v505 >= v504 >> 1)
                        {
                          v306 = sub_261D8428C(v504 > 1, v505 + 1, 1, v306);
                        }

                        *(v306 + 16) = v505 + 1;
                        (v635)(&v628[v306 + v505 * v627], v610, v154);
                        v645 = v306;
                        swift_endAccess();
                        (*(v425 + 8))(v426, v154);
                      }

                      v506 = v637;
                      v507 = [v637 taskPriority];
                      v508 = v622;
                      v509 = v626;
                      if (!v507)
                      {
LABEL_217:
                        v518 = [v506 itemType];
                        v519 = sub_261D86494();
                        if (v518 == 2)
                        {
                          v534 = sub_261D866C4();
                          if (os_log_type_enabled(v519, v534))
                          {
                            v535 = swift_slowAlloc();
                            v536 = swift_slowAlloc();
                            v644 = v536;
                            *v535 = 136315138;

                            v538 = MEMORY[0x26671E0C0](v537, v154);
                            v540 = v539;

                            v541 = sub_261D8464C(v538, v540, &v644);

                            *(v535 + 4) = v541;
                            _os_log_impl(&dword_261D56000, v519, v534, "Consulting Search datasource for lists {itemType: taskList, criteria: %s}", v535, 0xCu);
                            __swift_destroy_boxed_opaque_existential_0(v536);
                            MEMORY[0x26671EBF0](v536, -1, -1);
                            MEMORY[0x26671EBF0](v535, -1, -1);
                          }

                          v542 = v623;
                          v543 = *&v623[OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_dataSource + 24];
                          v544 = *&v623[OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_dataSource + 32];
                          __swift_project_boxed_opaque_existential_1(&v623[OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_dataSource], v543);
                          v545 = swift_allocObject();
                          v545[2] = v542;
                          v545[3] = sub_261D640E0;
                          v545[4] = v613;
                          v546 = *(v544 + 32);

                          v547 = v542;
                          v546(v508, sub_261D75830, v545, v543, v544);
                        }

                        else
                        {
                          if (v518 != 3)
                          {
                            v548 = sub_261D866B4();
                            if (os_log_type_enabled(v519, v548))
                            {
                              v549 = swift_slowAlloc();
                              *v549 = 0;
                              _os_log_impl(&dword_261D56000, v519, v548, "Unhandled itemType. Should have been cleaned up in resolve(). Return failure search result.", v549, 2u);
                              MEMORY[0x26671EBF0](v549, -1, -1);
                            }

                            v550 = [objc_allocWithZone(MEMORY[0x277CD4060]) initWithCode:4 userActivity:0];
                            (v592)[2](v592, v550);

                            goto LABEL_229;
                          }

                          v520 = v306;
                          v521 = sub_261D866C4();
                          if (os_log_type_enabled(v519, v521))
                          {
                            v522 = swift_slowAlloc();
                            v523 = swift_slowAlloc();
                            v644 = v523;
                            *v522 = 136315138;

                            v525 = MEMORY[0x26671E0C0](v524, v154);
                            v527 = v526;

                            v528 = sub_261D8464C(v525, v527, &v644);

                            *(v522 + 4) = v528;
                            _os_log_impl(&dword_261D56000, v519, v521, "Consulting Search datasource for reminders {itemType: task, criteria: %s}", v522, 0xCu);
                            __swift_destroy_boxed_opaque_existential_0(v523);
                            MEMORY[0x26671EBF0](v523, -1, -1);
                            MEMORY[0x26671EBF0](v522, -1, -1);
                          }

                          v529 = *&v623[OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_dataSource + 24];
                          v530 = *&v623[OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_dataSource + 32];
                          __swift_project_boxed_opaque_existential_1(&v623[OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_dataSource], v529);
                          v531 = swift_allocObject();
                          v532 = v613;
                          *(v531 + 16) = sub_261D640E0;
                          *(v531 + 24) = v532;
                          v533 = *(v530 + 24);

                          v533(v520, sub_261D75874, v531, v529, v530);
                        }

LABEL_229:
                        sub_261D646F8(v640, &qword_27FEF4688, &unk_261D88150);
                      }

                      if (v507 == 1)
                      {
                        *v608 = 0;
                        v510 = *MEMORY[0x277D44F80];
                        v509();
                        swift_beginAccess();
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v306 = sub_261D8428C(0, *(v306 + 16) + 1, 1, v306);
                        }

                        v512 = *(v306 + 16);
                        v511 = *(v306 + 24);
                        if (v512 >= v511 >> 1)
                        {
                          v306 = sub_261D8428C(v511 > 1, v512 + 1, 1, v306);
                        }

                        *(v306 + 16) = v512 + 1;
                        v513 = &v628[v306 + v512 * v627];
                        v514 = &v640;
LABEL_216:
                        (v635)(v513, *(v514 - 32), v154);
                        v645 = v306;
                        swift_endAccess();
                        goto LABEL_217;
                      }

                      if (v507 == 2)
                      {
                        *v607 = 1;
                        v515 = *MEMORY[0x277D44F80];
                        v509();
                        swift_beginAccess();
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v306 = sub_261D8428C(0, *(v306 + 16) + 1, 1, v306);
                        }

                        v517 = *(v306 + 16);
                        v516 = *(v306 + 24);
                        if (v517 >= v516 >> 1)
                        {
                          v306 = sub_261D8428C(v516 > 1, v517 + 1, 1, v306);
                        }

                        *(v306 + 16) = v517 + 1;
                        v513 = &v628[v306 + v517 * v627];
                        v514 = &v639;
                        goto LABEL_216;
                      }

                      v553 = MEMORY[0x277D84F90];
                      sub_261D70458(MEMORY[0x277D84F90]);
                      sub_261D70458(v553);

                      _Block_release(v592);
                      v554 = "unknown task priority";
                      v555 = 21;
                      goto LABEL_233;
                    }

                    v452 = v621;
                    if (v422 == 1)
                    {
                      v453 = v576;
                      sub_261D64690(v152, v576, &qword_27FEF4688, &unk_261D88150);
                      v425 = v634;
                      v154 = v638;
                      v454 = (*(v634 + 48))(v453, 1, v638);
                      v455 = v575;
                      v456 = v626;
                      v457 = v614;
                      if (v454 == 1)
                      {
                        sub_261D646F8(v453, &qword_27FEF4688, &unk_261D88150);
LABEL_191:
                        v491 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF46B0, &qword_261D88160) + 48);
                        v492 = *(v348 + 16);
                        v492(v455, v632, v365);
                        v493 = *(v348 + 56);
                        v493(v455, 0, 1, v365);
                        v492(&v455[v491], v633, v365);
                        v493(&v455[v491], 0, 1, v365);
                        v154 = v638;
                        (v456)(v455, *MEMORY[0x277D44F38], v638);
                        swift_beginAccess();
                        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                        v426 = v611;
                        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                        {
                          v639 = sub_261D8428C(0, v639[2] + 1, 1, v639);
                        }

                        v495 = v618;
                        v497 = v639[2];
                        v496 = v639[3];
                        v498 = v620;
                        if (v497 >= v496 >> 1)
                        {
                          v639 = sub_261D8428C(v496 > 1, v497 + 1, 1, v639);
                        }

                        v499 = v639;
                        v639[2] = v497 + 1;
                        (v635)(&v628[v499 + v497 * v627], v455, v154);
                        v645 = v499;
                        swift_endAccess();

                        v500 = *(v498 + 8);
                        v501 = v619;
                        v500(v633, v619);
                        v500(v632, v501);
                        v502 = v495;
                        v306 = v499;
                        (*(v616 + 8))(v621, v502);
                        sub_261D646F8(v625, &qword_27FEF41B0, &unk_261D87DA0);
                        sub_261D646F8(v629, &qword_27FEF41B0, &unk_261D87DA0);
                        goto LABEL_196;
                      }

                      if ((*(v425 + 88))(v453, v154) != *MEMORY[0x277D44ED8])
                      {
                        (*(v425 + 8))(v453, v154);
                        goto LABEL_191;
                      }

                      (*(v425 + 96))(v453, v154);
                      if ((*v453 & 1) == 0)
                      {

                        v552 = *(v348 + 8);
                        v552(v633, v365);
                        v552(v632, v365);
                        (*(v616 + 8))(v452, v618);
                        sub_261D646F8(v625, &qword_27FEF41B0, &unk_261D87DA0);
                        sub_261D646F8(v629, &qword_27FEF41B0, &unk_261D87DA0);
                        v425 = v634;
                        v426 = v611;
                        v306 = v639;
                        goto LABEL_196;
                      }

                      v479 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF46B0, &qword_261D88160) + 48);
                      v480 = *(v348 + 16);
                      v481 = v558;
                      v482 = v632;
                      v480(v558, v632, v365);
                      v483 = *(v348 + 56);
                      v483(v481, 0, 1, v365);
                      v480(&v481[v479], v633, v365);
                      v483(&v481[v479], 0, 1, v365);
                      v154 = v638;
                      (v456)(v481, *MEMORY[0x277D44F38], v638);
                      swift_beginAccess();
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v639 = sub_261D8428C(0, v639[2] + 1, 1, v639);
                      }

                      v484 = v618;
                      v486 = v639[2];
                      v485 = v639[3];
                      v487 = v620;
                      if (v486 >= v485 >> 1)
                      {
                        v639 = sub_261D8428C(v485 > 1, v486 + 1, 1, v639);
                      }

                      v488 = v639;
                      v639[2] = v486 + 1;
                      (v635)(&v628[v488 + v486 * v627], v481, v154);
                      v645 = v488;
                      swift_endAccess();

                      v489 = *(v487 + 8);
                      v489(v633, v365);
                      v489(v482, v365);
                      v490 = v484;
                      v306 = v488;
                      (*(v616 + 8))(v621, v490);
                      sub_261D646F8(v625, &qword_27FEF41B0, &unk_261D87DA0);
                      sub_261D646F8(v629, &qword_27FEF41B0, &unk_261D87DA0);
                      sub_261D646F8(v152, &qword_27FEF4688, &unk_261D88150);
                      (v601)(v152, 1, 1, v154);
LABEL_189:
                      v425 = v634;
                      v426 = v611;
                      goto LABEL_196;
                    }

LABEL_232:
                    v556 = MEMORY[0x277D84F90];
                    sub_261D70458(MEMORY[0x277D84F90]);
                    sub_261D70458(v556);

                    _Block_release(v592);
                    v554 = "unknown date search type";
                    v555 = 24;
LABEL_233:
                    sub_261D6751C(v554, v555, 2);
                    __break(1u);
                    goto LABEL_234;
                  }

                  v427 = v632;
                  if (v422 == 2)
                  {
                    v428 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF46B0, &qword_261D88160);
                    v429 = *(v428 + 48);
                    v430 = v365;
                    v431 = *(v348 + 16);
                    v432 = v585;
                    v431(v585, v427, v365);
                    v433 = *(v348 + 56);
                    v433(v432, 0, 1, v430);
                    v431(&v432[v429], v633, v430);
                    v433(&v432[v429], 0, 1, v430);
                    v434 = *MEMORY[0x277D44F08];
                    (v626)(v432, v434, v638);
                    swift_beginAccess();
                    v435 = v639;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v435 = sub_261D8428C(0, v435[2] + 1, 1, v435);
                    }

                    v639 = v435;
                    v437 = v435[2];
                    v436 = v435[3];
                    if (v437 >= v436 >> 1)
                    {
                      v639 = sub_261D8428C(v436 > 1, v437 + 1, 1, v639);
                    }

                    v438 = v639;
                    v639[2] = v437 + 1;
                    v439 = v638;
                    (v635)(&v628[v438 + v437 * v627], v585, v638);
                    v645 = v438;
                    swift_endAccess();
                    v440 = *(v428 + 48);
                    v441 = v587;
                    v442 = v619;
                    v431(v587, v632, v619);
                    v433(v441, 0, 1, v442);
                    v431(&v441[v440], v633, v442);
                    v154 = v439;
                    v433(&v441[v440], 0, 1, v442);
                    (v626)(v441, v434, v439);
                    v443 = v622;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v622 = sub_261D8428C(0, v443[2] + 1, 1, v443);
                    }

                    v444 = v640;
                    v425 = v634;
                    v426 = v611;
                    v445 = v629;
                    v447 = v622[2];
                    v446 = v622[3];
                    if (v447 >= v446 >> 1)
                    {
                      v622 = sub_261D8428C(v446 > 1, v447 + 1, 1, v622);
                    }

                    v448 = *(v620 + 8);
                    v448(v633, v442);
                    v448(v632, v442);
                    (*(v616 + 8))(v621, v618);
                    sub_261D646F8(v625, &qword_27FEF41B0, &unk_261D87DA0);
                    sub_261D646F8(v445, &qword_27FEF41B0, &unk_261D87DA0);
                    v449 = v622;
                    v622[2] = v447 + 1;
                    v450 = &v628[v449 + v447 * v627];
                    v451 = &v619;
                  }

                  else
                  {
                    if (v422 != 3)
                    {
                      goto LABEL_232;
                    }

                    v458 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF46B0, &qword_261D88160);
                    v459 = *(v458 + 48);
                    v460 = v365;
                    v461 = *(v348 + 16);
                    v462 = v586;
                    v461(v586, v427, v365);
                    v463 = *(v348 + 56);
                    v463(v462, 0, 1, v460);
                    v461(&v462[v459], v633, v460);
                    v463(&v462[v459], 0, 1, v460);
                    v464 = *MEMORY[0x277D44F00];
                    (v626)(v462, v464, v638);
                    swift_beginAccess();
                    v465 = v639;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v465 = sub_261D8428C(0, v465[2] + 1, 1, v465);
                    }

                    v639 = v465;
                    v467 = v465[2];
                    v466 = v465[3];
                    if (v467 >= v466 >> 1)
                    {
                      v639 = sub_261D8428C(v466 > 1, v467 + 1, 1, v639);
                    }

                    v468 = v639;
                    v639[2] = v467 + 1;
                    v469 = v638;
                    (v635)(&v628[v468 + v467 * v627], v586, v638);
                    v645 = v468;
                    swift_endAccess();
                    v470 = *(v458 + 48);
                    v471 = v588;
                    v472 = v619;
                    v461(v588, v427, v619);
                    v463(v471, 0, 1, v472);
                    v461(&v471[v470], v633, v472);
                    v154 = v469;
                    v463(&v471[v470], 0, 1, v472);
                    (v626)(v471, v464, v469);
                    v473 = v622;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v622 = sub_261D8428C(0, v473[2] + 1, 1, v473);
                    }

                    v444 = v640;
                    v425 = v634;
                    v426 = v611;
                    v474 = v629;
                    v476 = v622[2];
                    v475 = v622[3];
                    if (v476 >= v475 >> 1)
                    {
                      v622 = sub_261D8428C(v475 > 1, v476 + 1, 1, v622);
                    }

                    v477 = *(v620 + 8);
                    v477(v633, v472);
                    v477(v632, v472);
                    (*(v616 + 8))(v621, v618);
                    sub_261D646F8(v625, &qword_27FEF41B0, &unk_261D87DA0);
                    sub_261D646F8(v474, &qword_27FEF41B0, &unk_261D87DA0);
                    v478 = v622;
                    v622[2] = v476 + 1;
                    v450 = &v628[v478 + v476 * v627];
                    v451 = &v620;
                  }

                  (v635)(v450, *(v451 - 32), v154);
                  v306 = v639;
                  v152 = v444;
                  goto LABEL_196;
                }

                v371(v369, v305);
                sub_261D646F8(v374, &qword_27FEF4680, &qword_261D88138);
                v152 = v640;
                v365 = v377;
                v348 = v375;
                v135 = v637;
              }

              else
              {
                v378 = *&v623[OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_timeProvider + 32];
                __swift_project_boxed_opaque_existential_1(&v623[OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_timeProvider], *&v623[OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_timeProvider + 24]);
                v379 = v367;
                v380 = v609;
                sub_261D85E74();
                v381 = v574;
                sub_261D85D94();
                v382 = v620;
                v383 = *(v620 + 8);
                v384 = v380;
                v385 = v381;
                v386 = v619;
                v383(v384, v619);
                v387 = v305;
                v365 = v386;
                (*(v379 + 8))(v369, v387);
                v388 = *(v382 + 48);
                if (v388(v385, 1, v386) == 1)
                {
                  v389 = *(v382 + 32);
                  v390 = v572;
                  v389(v572, v633, v386);
                  v391 = v388(v385, 1, v386);
                  v152 = v640;
                  if (v391 != 1)
                  {
                    sub_261D646F8(v385, &qword_27FEF4680, &qword_261D88138);
                  }

                  v348 = v620;
                  v392 = v633;
                }

                else
                {
                  v392 = v633;
                  v383(v633, v365);
                  v389 = *(v382 + 32);
                  v390 = v572;
                  v389(v572, v385, v365);
                  v152 = v640;
                  v348 = v382;
                }

                v389(v392, v390, v365);
              }

              v366 = &qword_27FEF4000;
              goto LABEL_150;
            }
          }

          v344 = *&v623[OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_timeProvider + 32];
          __swift_project_boxed_opaque_existential_1(&v623[OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_timeProvider], *&v623[OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_timeProvider + 24]);
          v340 = v618;
          sub_261D85E84();
          v343 = *(v339 + 48);
          if (v343(v342, 1, v340) != 1)
          {
            sub_261D646F8(v342, &unk_27FEF4780, &unk_261D88140);
          }

          goto LABEL_123;
        }

LABEL_96:
        v314 = v631;
        v311 = v614;
        goto LABEL_97;
      }

      v307 = v304;
      sub_261D646F8(v152, &qword_27FEF4688, &unk_261D88150);
      v306 = v298;
      if ((v307 & 4) == 0)
      {
        goto LABEL_87;
      }
    }

    *v152 = !(v301 & 1);
    (v626)(v152, *MEMORY[0x277D44ED8], v154);
    (v601)(v152, 0, 1, v154);
    goto LABEL_96;
  }

  v204 = v203;
  v205 = sub_261D86534();
  v207 = v206;

  v208 = v601;
  sub_261D863B4();
  if ((*(v157 + 48))(v208, 1, v156) == 1)
  {
    v209 = v153;
    sub_261D646F8(v208, &unk_27FEF4690, &qword_261D87F08);

    v210 = sub_261D86494();
    v211 = sub_261D866A4();

    if (os_log_type_enabled(v210, v211))
    {
      v212 = swift_slowAlloc();
      v213 = v152;
      v214 = swift_slowAlloc();
      v644 = v214;
      *v212 = 136315138;
      v215 = sub_261D8464C(v205, v207, &v644);

      *(v212 + 4) = v215;
      _os_log_impl(&dword_261D56000, v210, v211, "[Announce Reminders] Unable to create itemIdentifier from %s", v212, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v214);
      v216 = v214;
      v152 = v213;
      MEMORY[0x26671EBF0](v216, -1, -1);
      v217 = v212;
      v155 = v634;
      MEMORY[0x26671EBF0](v217, -1, -1);
    }

    else
    {
    }

    v153 = v209;
    goto LABEL_65;
  }

  v229 = v208;
  v230 = v626;
  (*(v157 + 32))(v626, v229, v156);
  v231 = v157;
  v232 = *(v157 + 16);
  v233 = v579;
  v232(v579, v230, v156);
  v234 = sub_261D86494();
  v235 = sub_261D866C4();
  if (os_log_type_enabled(v234, v235))
  {
    v236 = swift_slowAlloc();
    v639 = v153;
    v237 = v236;
    v238 = swift_slowAlloc();
    v627 = v232;
    v239 = v238;
    v644 = v238;
    *v237 = 136446210;
    (v627)(v567, v233, v156);
    v240 = sub_261D86544();
    v242 = v241;
    v628 = *(v231 + 8);
    (v628)(v233, v641);
    v243 = sub_261D8464C(v240, v242, &v644);
    v244 = v640;

    *(v237 + 4) = v243;
    v152 = v244;
    v156 = v641;
    _os_log_impl(&dword_261D56000, v234, v235, "[Announce Reminders] requestIdentifier:%{public}s", v237, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v239);
    v245 = v239;
    v232 = v627;
    MEMORY[0x26671EBF0](v245, -1, -1);
    v246 = v237;
    v153 = v639;
    MEMORY[0x26671EBF0](v246, -1, -1);
  }

  else
  {

    v628 = *(v231 + 8);
    (v628)(v233, v156);
  }

  v247 = v580;
  v232(v580, v626, v156);
  v248 = (*(v231 + 88))(v247, v156);
  if (v248 == *MEMORY[0x277D45620])
  {

    (*(v231 + 96))(v247, v156);
    v249 = *v247;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF3FF0, &qword_261D87DD0);
    v250 = swift_allocObject();
    *(v250 + 16) = xmmword_261D877A0;
    *(v250 + 32) = v249;
    v251 = v569;
    *v569 = v250;
    v252 = v634;
    (*(v634 + 104))(v251, *MEMORY[0x277D44F50], v638);
    v253 = v249;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v153 = sub_261D8428C(0, *(v153 + 16) + 1, 1, v153);
    }

    v255 = *(v153 + 16);
    v254 = *(v153 + 24);
    v256 = v255 + 1;
    if (v255 >= v254 >> 1)
    {
      v153 = sub_261D8428C(v254 > 1, v255 + 1, 1, v153);
    }

LABEL_59:
    *(v153 + 16) = v256;
    v260 = v252;
    v261 = v252 + 32;
    v262 = *(v252 + 32);
    v263 = (v153 + ((*(v252 + 80) + 32) & ~*(v252 + 80)));
    v264 = *(v261 + 40);
    v262(&v263[v264 * v255], v251, v638);
    v645 = v153;
    v265 = sub_261D86494();
    v266 = sub_261D866C4();
    if (os_log_type_enabled(v265, v266))
    {
      v267 = swift_slowAlloc();
      v268 = swift_slowAlloc();
      v269 = v153;
      v270 = v268;
      v644 = v268;
      *v267 = 136446210;
      v639 = v269;
      v271 = v269[2];
      if (v271)
      {
        v272 = &v263[v264 * (v271 - 1)];
        v273 = v260;
        v274 = v570;
        v154 = v638;
        (*(v260 + 16))(v570, v272, v638);
        v275 = 0;
      }

      else
      {
        v275 = 1;
        v154 = v638;
        v273 = v260;
        v274 = v570;
      }

      (*(v273 + 56))(v274, v275, 1, v154);
      v276 = sub_261D86544();
      v278 = sub_261D8464C(v276, v277, &v644);
      v155 = v260;

      *(v267 + 4) = v278;
      _os_log_impl(&dword_261D56000, v265, v266, "[Announce Reminders] Added %{public}s to search criteria", v267, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v270);
      MEMORY[0x26671EBF0](v270, -1, -1);
      MEMORY[0x26671EBF0](v267, -1, -1);

      (v628)(v626, v641);
      v135 = v637;
      v153 = v639;
      v152 = v640;
    }

    else
    {

      (v628)(v626, v641);
      v154 = v638;
      v135 = v637;
      v155 = v260;
    }

    goto LABEL_65;
  }

  v257 = v638;
  v252 = v634;
  if (v248 == *MEMORY[0x277D45618])
  {

    (*(v231 + 96))(v247, v156);
    v258 = *(v247 + 1);
    v251 = v568;
    *v568 = *v247;
    v251[1] = v258;
    (*(v252 + 104))(v251, *MEMORY[0x277D44F28], v257);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v153 = sub_261D8428C(0, *(v153 + 16) + 1, 1, v153);
    }

    v255 = *(v153 + 16);
    v259 = *(v153 + 24);
    v256 = v255 + 1;
    if (v255 >= v259 >> 1)
    {
      v153 = sub_261D8428C(v259 > 1, v255 + 1, 1, v153);
    }

    goto LABEL_59;
  }

LABEL_234:

  _Block_release(v592);
  result = sub_261D86B74();
  __break(1u);
  return result;
}

uint64_t sub_261D757B8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261D757F0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261D7583C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261D7587C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF41B0, &unk_261D87DA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_261D758EC()
{
  result = qword_27FEF46D0;
  if (!qword_27FEF46D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEF46C8, &qword_261D88168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF46D0);
  }

  return result;
}

_OWORD *sub_261D75950(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_261D75960()
{
  v0 = sub_261D864A4();
  __swift_allocate_value_buffer(v0, qword_27FEF4720);
  v1 = __swift_project_value_buffer(v0, qword_27FEF4720);
  if (qword_27FEF3F70 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FEF4D20);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261D75A28(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = [a1 tasks];
  if (v7)
  {
    v8 = v7;
    sub_261D597EC(0, &qword_27FEF41D0, 0x277CD4220);
    v9 = sub_261D865D4();

    v10 = *(v3 + OBJC_IVAR____TtC25RemindersIntentsFramework27TTRSnoozeTasksIntentHandler_dataSource);
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a3;

    sub_261D68DCC(v9, sub_261D76DC0, v11);
  }

  else
  {
    v12 = *(v3 + OBJC_IVAR____TtC25RemindersIntentsFramework27TTRSnoozeTasksIntentHandler_dataSource);
    v13 = swift_allocObject();
    v13[2] = a2;
    v13[3] = a3;
    v13[4] = a1;
    v14 = v12[6];
    v15 = v12[7];
    __swift_project_boxed_opaque_existential_1(v12 + 3, v14);
    v16 = swift_allocObject();
    v16[2] = v12;
    v16[3] = sub_261D76D3C;
    v16[4] = v13;
    v17 = *(v15 + 8);

    v18 = a1;

    v17(sub_261D69598, v16, v14, v15);
  }
}

void sub_261D75BF4(unint64_t a1, void (*a2)(uint64_t))
{
  v4 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_32:
    if (qword_27FEF3FA8 != -1)
    {
      swift_once();
    }

    v29 = sub_261D864A4();
    __swift_project_value_buffer(v29, qword_27FEF4720);
    v30 = sub_261D86494();
    v31 = sub_261D86684();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_261D56000, v30, v31, "No reminders found for searchTerm {result: .unsupported(.noTasksFound)}", v32, 2u);
      MEMORY[0x26671EBF0](v32, -1, -1);
    }

    v28 = [objc_opt_self() unsupportedForReason_];
    goto LABEL_37;
  }

  if (!sub_261D86954())
  {
    goto LABEL_32;
  }

  v5 = sub_261D86954();
LABEL_3:
  if (v5 != 1)
  {
    if (qword_27FEF3FA8 != -1)
    {
      swift_once();
    }

    v14 = sub_261D864A4();
    __swift_project_value_buffer(v14, qword_27FEF4720);

    v15 = sub_261D86494();
    v16 = sub_261D86684();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      if (v4)
      {
        v18 = sub_261D86954();
      }

      else
      {
        v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v17 + 4) = v18;

      _os_log_impl(&dword_261D56000, v15, v16, "Found %ld reminders found for searchTerm {result: .disambiguation}", v17, 0xCu);
      MEMORY[0x26671EBF0](v17, -1, -1);
    }

    else
    {
    }

    if (v5)
    {
      v35 = MEMORY[0x277D84F90];
      sub_261D86A34();
      if (v5 < 0)
      {
LABEL_42:
        __break(1u);
        return;
      }

      sub_261D597EC(0, &qword_27FEF41D0, 0x277CD4220);
      if ((a1 & 0xC000000000000001) != 0)
      {
        v19 = 0;
        do
        {
          v20 = v19 + 1;
          MEMORY[0x26671E4C0]();
          sub_261D86824();
          sub_261D86A14();
          v21 = *(v35 + 16);
          sub_261D86A44();
          sub_261D86A54();
          sub_261D86A24();
          v19 = v20;
        }

        while (v5 != v20);
      }

      else
      {
        v22 = (a1 + 32);
        do
        {
          v23 = *v22++;
          v24 = v23;
          sub_261D86824();
          sub_261D86A14();
          v25 = *(v35 + 16);
          sub_261D86A44();
          sub_261D86A54();
          sub_261D86A24();
          --v5;
        }

        while (v5);
      }
    }

    v26 = objc_opt_self();
    sub_261D597EC(0, &qword_27FEF41D0, 0x277CD4220);
    v27 = sub_261D865C4();

    v13 = [v26 disambiguationWithTasksToDisambiguate_];

    goto LABEL_29;
  }

  if (qword_27FEF3FA8 != -1)
  {
    swift_once();
  }

  v6 = sub_261D864A4();
  __swift_project_value_buffer(v6, qword_27FEF4720);
  v7 = sub_261D86494();
  v8 = sub_261D86684();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_261D56000, v7, v8, "One reminder found for searchTerm {result: .success}", v9, 2u);
    MEMORY[0x26671EBF0](v9, -1, -1);
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26671E4C0](0, a1);
    goto LABEL_11;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_42;
  }

  v10 = *(a1 + 32);
LABEL_11:
  v11 = objc_opt_self();
  sub_261D597EC(0, &qword_27FEF41D0, 0x277CD4220);
  v12 = sub_261D86824();
  v13 = [v11 successWithResolvedTask_];

LABEL_29:
  v28 = [objc_allocWithZone(MEMORY[0x277CD4170]) initWithTaskResolutionResult_];

LABEL_37:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF3FF0, &qword_261D87DD0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_261D877A0;
  *(v33 + 32) = v28;
  v34 = v28;
  a2(v33);
}

uint64_t sub_261D76194(unint64_t a1, void (*a2)(uint64_t *), int a3, id a4)
{
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v56 = a4;
    if (sub_261D86954())
    {
      v57 = sub_261D86954();
      a4 = v56;
      v7 = v57;
      if (v57 == 1)
      {
        goto LABEL_6;
      }

      goto LABEL_4;
    }

LABEL_45:
    if (qword_27FEF3FA8 != -1)
    {
      swift_once();
    }

    v58 = sub_261D864A4();
    __swift_project_value_buffer(v58, qword_27FEF4720);
    v59 = sub_261D86494();
    v60 = sub_261D866C4();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_261D56000, v59, v60, "No reminders to snooze. {result: .unsupported(.noTasksFound)}", v61, 2u);
      MEMORY[0x26671EBF0](v61, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF3FF0, &qword_261D87DD0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_261D877A0;
    *(v26 + 32) = [objc_opt_self() unsupportedForReason_];
    goto LABEL_50;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_45;
  }

  if (v7 == 1)
  {
    goto LABEL_6;
  }

LABEL_4:
  v8 = [a4 all];
  if (!v8 || (v9 = v8, v10 = [v8 BOOLValue], v9, !v10))
  {
    if (qword_27FEF3FA8 == -1)
    {
LABEL_12:
      v17 = sub_261D864A4();
      __swift_project_value_buffer(v17, qword_27FEF4720);

      v18 = sub_261D86494();
      v19 = sub_261D866A4();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v65 = v21;
        *v20 = 136315138;
        v22 = sub_261D597EC(0, &unk_27FEF4440, 0x277D44750);
        v23 = MEMORY[0x26671E0C0](a1, v22);
        v25 = sub_261D8464C(v23, v24, &v65);

        *(v20 + 4) = v25;
        _os_log_impl(&dword_261D56000, v18, v19, "Multiple reminders match but user didn't say 'all'. Ask the user to disambiguate which reminder to snooze. {reminders: %s, result: .disambiguation}", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x26671EBF0](v21, -1, -1);
        MEMORY[0x26671EBF0](v20, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF3FF0, &qword_261D87DD0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_261D877A0;
      if (!v7)
      {
        goto LABEL_41;
      }

      v65 = MEMORY[0x277D84F90];
      result = sub_261D86A34();
      if ((v7 & 0x8000000000000000) == 0)
      {
        sub_261D597EC(0, &qword_27FEF41D0, 0x277CD4220);
        if ((a1 & 0xC000000000000001) != 0)
        {
          v28 = 0;
          do
          {
            v29 = v28 + 1;
            MEMORY[0x26671E4C0]();
            sub_261D86824();
            sub_261D86A14();
            v30 = v65[2];
            sub_261D86A44();
            sub_261D86A54();
            sub_261D86A24();
            v28 = v29;
          }

          while (v7 != v29);
        }

        else
        {
          v49 = (a1 + 32);
          do
          {
            v50 = *v49++;
            v51 = v50;
            sub_261D86824();
            sub_261D86A14();
            v52 = v65[2];
            sub_261D86A44();
            sub_261D86A54();
            sub_261D86A24();
            --v7;
          }

          while (v7);
        }

LABEL_41:
        sub_261D597EC(0, &qword_27FEF4758, 0x277CD4170);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        sub_261D597EC(0, &qword_27FEF41D0, 0x277CD4220);
        v54 = sub_261D865C4();

        v55 = [ObjCClassFromMetadata disambiguationWithTasksToDisambiguate_];

        *(v26 + 32) = v55;
        goto LABEL_50;
      }

      __break(1u);
LABEL_57:
      __break(1u);
      return result;
    }

LABEL_55:
    swift_once();
    goto LABEL_12;
  }

LABEL_6:
  if (qword_27FEF3FA8 != -1)
  {
    swift_once();
  }

  v11 = sub_261D864A4();
  __swift_project_value_buffer(v11, qword_27FEF4720);

  v12 = sub_261D86494();
  v13 = sub_261D866C4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v65 = v15;
    *v14 = 134218242;
    if (v6)
    {
      v16 = sub_261D86954();
    }

    else
    {
      v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v14 + 4) = v16;

    *(v14 + 12) = 2080;
    v31 = MEMORY[0x277D84F90];
    if (v7)
    {
      v62 = v15;
      v63 = v13;
      v64 = MEMORY[0x277D84F90];
      result = sub_261D86A34();
      if (v7 < 0)
      {
        goto LABEL_57;
      }

      v32 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v33 = MEMORY[0x26671E4C0](v32, a1);
        }

        else
        {
          v33 = *(a1 + 8 * v32 + 32);
        }

        v34 = v33;
        ++v32;
        v35 = [v33 objectID];

        sub_261D86A14();
        v36 = *(v64 + 16);
        sub_261D86A44();
        sub_261D86A54();
        sub_261D86A24();
      }

      while (v7 != v32);
      v31 = v64;
      v13 = v63;
      v15 = v62;
    }

    v37 = sub_261D597EC(0, &qword_27FEF44F0, 0x277D44700);
    v38 = MEMORY[0x26671E0C0](v31, v37);
    v40 = v39;

    v41 = sub_261D8464C(v38, v40, &v65);

    *(v14 + 14) = v41;
    _os_log_impl(&dword_261D56000, v12, v13, "Resolved %ld tasks to snooze. {reminderIDs: %s, result: .success}", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x26671EBF0](v15, -1, -1);
    MEMORY[0x26671EBF0](v14, -1, -1);
  }

  else
  {
  }

  v26 = MEMORY[0x277D84F90];
  if (v7)
  {
    v65 = MEMORY[0x277D84F90];
    sub_261D86A34();
    if ((v7 & 0x8000000000000000) == 0)
    {
      sub_261D597EC(0, &qword_27FEF4758, 0x277CD4170);
      v42 = swift_getObjCClassFromMetadata();
      sub_261D597EC(0, &qword_27FEF41D0, 0x277CD4220);
      v43 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v44 = MEMORY[0x26671E4C0](v43, a1);
        }

        else
        {
          v44 = *(a1 + 8 * v43 + 32);
        }

        ++v43;
        v45 = v44;
        v46 = sub_261D86824();
        v47 = [v42 successWithResolvedTask_];

        sub_261D86A14();
        v48 = v65[2];
        sub_261D86A44();
        sub_261D86A54();
        sub_261D86A24();
      }

      while (v7 != v43);
      a2(v65);
      goto LABEL_51;
    }

    __break(1u);
    goto LABEL_55;
  }

LABEL_50:
  a2(v26);
LABEL_51:
}

void sub_261D76A88(uint64_t a1, uint64_t a2)
{
  sub_261D597EC(0, &qword_27FEF4758, 0x277CD4170);
  v3 = sub_261D865C4();
  (*(a2 + 16))(a2, v3);
}

id sub_261D76C48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRSnoozeTasksIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_261D76CFC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261D76D48()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261D76D88()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_261D76DC8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_261D86BC4();
  sub_261D86574();
  v6 = sub_261D86BD4();

  return sub_261D76E84(a1, a2, v6);
}

unint64_t sub_261D76E40(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_261D86894();

  return sub_261D76F3C(a1, v5);
}

unint64_t sub_261D76E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_261D86B84())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_261D76F3C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_261D597EC(0, &qword_27FEF44F0, 0x277D44700);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_261D868A4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_261D77010(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (sub_261D86AA4() == *(a4 + 36))
    {
      sub_261D86AB4();
      sub_261D597EC(0, &qword_27FEF44F0, 0x277D44700);
      swift_dynamicCast();
      sub_261D76E40(v8);
      v6 = v5;

      if (v6)
      {
        sub_261D86A84();
        sub_261D86AD4();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_261D86924();
  v7 = *(a4 + 36);
}

void sub_261D77174(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_261D86AE4();
      sub_261D597EC(0, &unk_27FEF4440, 0x277D44750);
      swift_dynamicCast();
      return;
    }

    goto LABEL_20;
  }

  if ((a3 & 1) == 0)
  {
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == a2)
        {
          goto LABEL_12;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (sub_261D86AA4() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_261D86AB4();
  sub_261D597EC(0, &qword_27FEF44F0, 0x277D44700);
  swift_dynamicCast();
  v5 = sub_261D76E40(v10);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  a1 = v5;
LABEL_12:
  v8 = *(*(a4 + 56) + 8 * a1);

  v9 = v8;
}

uint64_t sub_261D77304(uint64_t a1, void *a2)
{
  v2 = a1;
  v26 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_261D86954();
    result = MEMORY[0x277D84F90];
    if (!v3)
    {
      return result;
    }

    v32 = MEMORY[0x277D84F90];
    sub_261D86A34();
    result = sub_261D86A64();
    v29 = result;
    v30 = v5;
    v31 = 1;
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v3 = *(v2 + 16);
  result = MEMORY[0x277D84F90];
  if (!v3)
  {
    return result;
  }

  v32 = MEMORY[0x277D84F90];
  sub_261D86A34();
  v6 = -1 << *(v2 + 32);
  result = sub_261D86914();
  v7 = *(v2 + 36);
  v29 = result;
  v30 = v7;
  v31 = 0;
LABEL_7:
  v8 = 0;
  v25 = v3;
  while (v8 < v3)
  {
    v15 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_20;
    }

    v17 = v29;
    v16 = v30;
    v18 = v31;
    sub_261D77174(v29, v30, v31, v2);
    v20 = v19;
    v21 = [a2 updateReminder_];

    sub_261D86A14();
    v22 = v2;
    v23 = *(v32 + 16);
    sub_261D86A44();
    sub_261D86A54();
    result = sub_261D86A24();
    if (v26)
    {
      if (!v18)
      {
        goto LABEL_21;
      }

      v2 = v22;
      if (sub_261D86A94())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v3 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4770, &qword_261D881B0);
      v24 = sub_261D864E4();
      sub_261D86B14();
      result = v24(v28, 0);
    }

    else
    {
      sub_261D77010(v17, v16, v18, v22);
      v10 = v9;
      v12 = v11;
      v14 = v13;
      result = sub_261D78A5C(v17, v16, v18);
      v29 = v10;
      v30 = v12;
      v31 = v14 & 1;
      v2 = v22;
      v3 = v25;
    }

    ++v8;
    if (v15 == v3)
    {
      sub_261D78A5C(v29, v30, v31);
      return v32;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_261D77588(void *a1, uint64_t a2)
{
  v113 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4778, &qword_261D881B8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v107 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF4780, &unk_261D88140);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v117 = &v107 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4680, &qword_261D88138);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v107 - v15;
  MEMORY[0x28223BE20](v17);
  v110 = &v107 - v18;
  MEMORY[0x28223BE20](v19);
  v111 = &v107 - v20;
  v120 = sub_261D85D24();
  v21 = *(v120 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v120);
  v109 = &v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v107 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v107 - v28;
  MEMORY[0x28223BE20](v30);
  v119 = &v107 - v31;
  if (qword_27FEF3FA8 != -1)
  {
    swift_once();
  }

  v32 = sub_261D864A4();
  v33 = __swift_project_value_buffer(v32, qword_27FEF4720);
  v34 = a1;
  v112 = v33;
  v35 = sub_261D86494();
  v36 = sub_261D866C4();

  v37 = os_log_type_enabled(v35, v36);
  v114 = v29;
  v118 = v6;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v122 = v116;
    *v38 = 136315138;
    v121 = [v34 nextTriggerTime];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF4790, &unk_261D881C0);
    v39 = sub_261D86544();
    v41 = v26;
    v42 = v34;
    v43 = v21;
    v44 = v16;
    v45 = v13;
    v46 = sub_261D8464C(v39, v40, &v122);

    *(v38 + 4) = v46;
    v13 = v45;
    v16 = v44;
    v21 = v43;
    v34 = v42;
    v26 = v41;
    _os_log_impl(&dword_261D56000, v35, v36, "Resolving nextTriggerTime {nextTriggerTime: %s}", v38, 0xCu);
    v47 = v116;
    __swift_destroy_boxed_opaque_existential_0(v116);
    v29 = v114;
    MEMORY[0x26671EBF0](v47, -1, -1);
    MEMORY[0x26671EBF0](v38, -1, -1);
  }

  sub_261D85D14();
  sub_261D85D14();
  sub_261D85CC4();
  v115 = *(v21 + 8);
  v116 = (v21 + 8);
  v115(v26, v120);
  v48 = [v34 nextTriggerTime];
  v49 = v111;
  if (v48)
  {
    v50 = v48;
    v51 = [v48 endDate];
    if (v51)
    {
      v52 = v51;
      sub_261D85D04();

      v53 = *(v21 + 32);
      v54 = v13;
      v55 = v110;
      v108 = v50;
      v56 = v29;
      v57 = v49;
      v58 = v120;
      v53(v110, v26, v120);
      v59 = *(v21 + 56);
      v59(v55, 0, 1, v58);
      v60 = v55;
      v13 = v54;
      v53(v57, v60, v58);
      v61 = v57;
      v62 = v58;
      v49 = v57;
      v29 = v56;
      v50 = v108;
      v59(v61, 0, 1, v62);
      v63 = v109;
      v64 = (*(v21 + 48))(v49, 1, v120);
    }

    else
    {
      v65 = *(v21 + 56);
      v66 = 1;
      v65(v110, 1, 1, v120);
      v67 = [v50 startDate];
      if (v67)
      {
        v68 = v67;
        sub_261D85D04();

        v66 = 0;
      }

      v63 = v109;
      v69 = v16;
      v70 = v66;
      v71 = v16;
      v72 = v120;
      v65(v69, v70, 1, v120);
      sub_261D78A68(v71, v49);
      v73 = *(v21 + 48);
      v74 = v110;
      if (v73(v110, 1, v72) != 1)
      {
        sub_261D646F8(v74, &qword_27FEF4680, &qword_261D88138);
      }

      v64 = v73(v49, 1, v120);
    }

    if (v64 == 1)
    {

      sub_261D646F8(v49, &qword_27FEF4680, &qword_261D88138);
    }

    else
    {
      v75 = *(v21 + 32);
      v75(v63, v49, v120);
      v76 = sub_261D85CE4();

      if (v76)
      {
        v77 = v120;
        v115(v29, v120);
        v75(v29, v63, v77);
      }

      else
      {
        v115(v63, v120);
      }
    }
  }

  v78 = v120;
  (*(v21 + 16))(v13, v29, v120);
  (*(v21 + 56))(v13, 0, 1, v78);
  v79 = sub_261D85DD4();
  v80 = v13;
  v81 = *(v79 - 8);
  (*(v81 + 56))(v117, 1, 1, v79);
  v82 = sub_261D85E04();
  v83 = *(v82 - 8);
  (*(v83 + 56))(v118, 1, 1, v82);
  v84 = sub_261D85CD4();
  v85 = 0;
  if ((*(v21 + 48))(v80, 1, v78) != 1)
  {
    v85 = sub_261D85CD4();
    v115(v80, v120);
  }

  v86 = v117;
  if ((*(v81 + 48))(v117, 1, v79) == 1)
  {
    v87 = 0;
  }

  else
  {
    v87 = sub_261D85DA4();
    (*(v81 + 8))(v86, v79);
  }

  v88 = v118;
  if ((*(v83 + 48))(v118, 1, v82) == 1)
  {
    v89 = 0;
  }

  else
  {
    v89 = sub_261D85DF4();
    (*(v83 + 8))(v88, v82);
  }

  v90 = [objc_allocWithZone(MEMORY[0x277CD3B68]) initWithStartDate:v84 endDate:v85 onCalendar:v87 inTimeZone:v89];

  v91 = v90;
  v92 = sub_261D86494();
  v93 = sub_261D866C4();

  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v122 = v95;
    *v94 = 136315138;
    v96 = v91;
    v97 = [v96 description];
    v98 = sub_261D86534();
    v100 = v99;

    v101 = sub_261D8464C(v98, v100, &v122);

    *(v94 + 4) = v101;
    _os_log_impl(&dword_261D56000, v92, v93, "Resolved nextTriggerTime. {nextTriggerTime: %s, result: .success", v94, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v95);
    MEMORY[0x26671EBF0](v95, -1, -1);
    MEMORY[0x26671EBF0](v94, -1, -1);
  }

  v102 = v114;
  v103 = [objc_opt_self() successWithResolvedDateComponentsRange_];
  (*(v113 + 16))(v113, v103);

  v104 = v120;
  v105 = v115;
  v115(v102, v120);
  return v105(v119, v104);
}

void sub_261D7802C(unint64_t a1, unint64_t a2, void *a3)
{
  v102[1] = *MEMORY[0x277D85DE8];
  v6 = sub_261D85D24();
  v100 = *(v6 - 8);
  v101 = v6;
  v7 = *(v100 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FEF3FA8 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v10 = sub_261D864A4();
    __swift_project_value_buffer(v10, qword_27FEF4720);
    v11 = a1;
    v12 = sub_261D86494();
    v13 = sub_261D866C4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = v9;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v11;
      *v16 = v11;
      v17 = v11;
      _os_log_impl(&dword_261D56000, v12, v13, "SiriKit asked for handling snooze tasks intent {intent: %@}", v15, 0xCu);
      sub_261D646F8(v16, &qword_27FEF4200, &unk_261D878D0);
      MEMORY[0x26671EBF0](v16, -1, -1);
      v18 = v15;
      v9 = v14;
      MEMORY[0x26671EBF0](v18, -1, -1);
    }

    v19 = [v11 tasks];
    if (!v19)
    {
      v34 = sub_261D86494();
      v35 = sub_261D866A4();
      if (!os_log_type_enabled(v34, v35))
      {
        goto LABEL_38;
      }

      v36 = swift_slowAlloc();
      *v36 = 0;
      v37 = "No .tasks to snooze. Should have resolved this in resolve stage. Giving up";
      goto LABEL_37;
    }

    v20 = v19;
    sub_261D597EC(0, &qword_27FEF41D0, 0x277CD4220);
    v21 = sub_261D865D4();
    v22 = [v11 nextTriggerTime];
    if (!v22)
    {

      goto LABEL_35;
    }

    v23 = v22;
    v24 = [v22 endDate];
    if (!v24)
    {
      break;
    }

    v94 = v23;
    v96 = a3;
    v25 = v24;
    sub_261D85D04();

    sub_261D85CF4();
    v27 = v26;
    v28 = *(a2 + OBJC_IVAR____TtC25RemindersIntentsFramework27TTRSnoozeTasksIntentHandler_store);
    v29 = objc_allocWithZone(MEMORY[0x277D447D8]);
    v97 = v28;
    v98 = [v29 initWithStore_];
    v102[0] = MEMORY[0x277D84F90];
    v95 = v9;
    a3 = (v21 & 0xFFFFFFFFFFFFFF8);
    if (v21 >> 62)
    {
      v30 = sub_261D86954();
    }

    else
    {
      v30 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a1 = 0;
    v93 = 0;
    v99 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v30 == a1)
      {

        v38 = sub_261D597EC(0, &qword_27FEF44F0, 0x277D44700);
        v39 = v99;
        v40 = sub_261D865C4();
        v102[0] = 0;
        v41 = [v97 fetchRemindersWithObjectIDs:v40 error:v102];

        v42 = v102[0];
        if (v41)
        {
          sub_261D597EC(0, &unk_27FEF4440, 0x277D44750);
          sub_261D6C624();
          v43 = sub_261D864C4();
          v44 = v42;

          v45 = v98;
          v46 = sub_261D77304(v43, v45);

          v92 = v38;
          v97 = v45;
          if (v46 >> 62)
          {
            a1 = sub_261D86954();
            if (a1)
            {
LABEL_25:
              a2 = 0;
              v9 = (v46 & 0xC000000000000001);
              a3 = &_swift_FORCE_LOAD___swiftCallKit___RemindersIntentsFramework;
              do
              {
                if (v9)
                {
                  v47 = MEMORY[0x26671E4C0](a2, v46);
                }

                else
                {
                  if (a2 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_45;
                  }

                  v47 = *(v46 + 8 * a2 + 32);
                }

                v48 = v47;
                v49 = a2 + 1;
                if (__OFADD__(a2, 1))
                {
                  goto LABEL_44;
                }

                [v47 snoozeFromNowForTimeInterval_];

                ++a2;
              }

              while (v49 != a1);
            }
          }

          else
          {
            a1 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (a1)
            {
              goto LABEL_25;
            }
          }

          v102[0] = 0;
          v55 = v97;
          v56 = [v97 saveSynchronouslyWithError_];
          v42 = v102[0];
          if (v56)
          {
            sub_261D85EB4();
            v57 = v42;
            sub_261D85EA4();
            sub_261D85E94();

            v58 = v99;

            v59 = sub_261D86494();
            v60 = sub_261D866C4();

            v61 = os_log_type_enabled(v59, v60);
            v62 = v96;
            v63 = v92;
            if (v61)
            {
              v64 = swift_slowAlloc();
              v65 = swift_slowAlloc();
              v102[0] = v65;
              *v64 = 136315138;
              v66 = MEMORY[0x26671E0C0](v58, v63);
              v68 = v67;

              v69 = sub_261D8464C(v66, v68, v102);

              *(v64 + 4) = v69;
              _os_log_impl(&dword_261D56000, v59, v60, "Successfully snoozed reminders. {reminderIDs: %s}", v64, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v65);
              MEMORY[0x26671EBF0](v65, -1, -1);
              MEMORY[0x26671EBF0](v64, -1, -1);
            }

            else
            {
            }

            v86 = v100;
            v85 = v101;
            v88 = v94;
            v87 = v95;
            v89 = [objc_allocWithZone(MEMORY[0x277CD4168]) initWithCode:3 userActivity:0];
            [v89 setSnoozedTasks_];

            (v62[2])(v62, v89);
            (*(v86 + 8))(v87, v85);
LABEL_59:
            v90 = *MEMORY[0x277D85DE8];
            return;
          }

          v54 = v96;
          v39 = v99;
          v38 = v92;
        }

        else
        {
          v54 = v96;
        }

        v70 = v42;

        v71 = sub_261D85C64();
        swift_willThrow();

        v72 = sub_261D86494();
        v73 = sub_261D866A4();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v102[0] = v75;
          *v74 = 136315138;
          v76 = MEMORY[0x26671E0C0](v39, v38);
          v78 = v77;

          v79 = sub_261D8464C(v76, v78, v102);

          *(v74 + 4) = v79;
          _os_log_impl(&dword_261D56000, v72, v73, "Error snoozing reminders {reminderIDs: %s}", v74, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v75);
          MEMORY[0x26671EBF0](v75, -1, -1);
          MEMORY[0x26671EBF0](v74, -1, -1);
        }

        else
        {
        }

        v81 = v100;
        v80 = v101;
        v83 = v94;
        v82 = v95;
        v84 = [objc_allocWithZone(MEMORY[0x277CD4168]) initWithCode:4 userActivity:0];
        (v54[2])(v54, v84);

        (*(v81 + 8))(v82, v80);
        goto LABEL_59;
      }

      if ((v21 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x26671E4C0](a1, v21);
      }

      else
      {
        if (a1 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v31 = *(v21 + 8 * a1 + 32);
      }

      v32 = v31;
      a2 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      v9 = sub_261D867E4();

      ++a1;
      if (v9)
      {
        MEMORY[0x26671E090]();
        if (*((v102[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v33 = *((v102[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_261D865F4();
        }

        sub_261D86604();
        v99 = v102[0];
        a1 = a2;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
  }

LABEL_35:
  v34 = sub_261D86494();
  v35 = sub_261D866A4();
  if (!os_log_type_enabled(v34, v35))
  {
    goto LABEL_38;
  }

  v36 = swift_slowAlloc();
  *v36 = 0;
  v37 = "No nextTriggerTime.endDate. Should have resolved this in resolve stage. Giving up.";
LABEL_37:
  _os_log_impl(&dword_261D56000, v34, v35, v37, v36, 2u);
  MEMORY[0x26671EBF0](v36, -1, -1);
LABEL_38:

  v50 = [objc_allocWithZone(MEMORY[0x277CD4168]) initWithCode:4 userActivity:0];
  v51 = a3[2];
  v101 = v50;
  v51(a3);
  v52 = *MEMORY[0x277D85DE8];
  v53 = v101;
}

uint64_t sub_261D78A5C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_261D78A68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4680, &qword_261D88138);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_261D78AD8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261D78B18()
{
  v0 = sub_261D864A4();
  __swift_allocate_value_buffer(v0, qword_27FEF47A0);
  v1 = __swift_project_value_buffer(v0, qword_27FEF47A0);
  if (qword_27FEF3F70 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FEF4D20);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_261D78BE0()
{
  v1 = OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler____lazy_storage___contactStore;
  v2 = *(v0 + OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler____lazy_storage___contactStore);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler____lazy_storage___contactStore);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id TTRIntentHandler.handler(for:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  if (qword_27FEF3FB0 != -1)
  {
    swift_once();
  }

  v5 = sub_261D864A4();
  __swift_project_value_buffer(v5, qword_27FEF47A0);
  v6 = a1;
  v7 = sub_261D86494();
  v8 = sub_261D86694();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&dword_261D56000, v7, v8, "SiriKit asks for handler for intent: %@", v9, 0xCu);
    sub_261D5968C(v10);
    MEMORY[0x26671EBF0](v10, -1, -1);
    MEMORY[0x26671EBF0](v9, -1, -1);
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v12 = &OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler____lazy_storage___addTasksHandler;
    v13 = sub_261D792E0;
LABEL_11:
    v14 = sub_261D78FA4(v12, v13);
LABEL_12:
    v15 = v14;
    result = swift_getObjectType();
LABEL_13:
    a2[3] = result;
    *a2 = v15;
    return result;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v12 = &OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler____lazy_storage___setTaskAttributeHandler;
    v13 = sub_261D796D0;
    goto LABEL_11;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v12 = &OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler____lazy_storage___snoozeTasksHandler;
    v13 = sub_261D799C8;
    goto LABEL_11;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v14 = sub_261D7900C();
    goto LABEL_12;
  }

  sub_261D861A4();
  if (swift_dynamicCastClass())
  {
    v15 = sub_261D79138();
    result = type metadata accessor for ConfigurationIntentHandler();
    goto LABEL_13;
  }

  v17 = v6;
  v18 = sub_261D86494();
  v19 = sub_261D866B4();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v17;
    *v21 = v17;
    v22 = v17;
    _os_log_impl(&dword_261D56000, v18, v19, "TTRIntentHandler does not know how to handle intent of class: %@", v20, 0xCu);
    sub_261D5968C(v21);
    MEMORY[0x26671EBF0](v21, -1, -1);
    MEMORY[0x26671EBF0](v20, -1, -1);
  }

  a2[3] = ObjectType;
  *a2 = v23;

  return v23;
}

uint64_t sub_261D78FA4(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    v6 = *(v2 + v3);
    *(v2 + v3) = v5;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v5;
}

id sub_261D7900C()
{
  v1 = OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler____lazy_storage___searchForNotebookItemsHandler;
  if (*(v0 + OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler____lazy_storage___searchForNotebookItemsHandler))
  {
    v2 = *(v0 + OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler____lazy_storage___searchForNotebookItemsHandler);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler_store);
    v4 = *(v0 + OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler_queue);
    type metadata accessor for TTRIntentsHandlerStoreDataSource();
    swift_allocObject();
    v5 = v3;
    v6 = v0;
    v7 = sub_261D699F8(v5);
    type metadata accessor for TTRIntentsHandlerSpotlightDataSource();
    v8 = swift_allocObject();
    v9 = v5;
    v10 = v4;
    v11 = sub_261D79D3C(v9, v10, v7, v8);
    v12 = sub_261D86054();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = v9;
    v16 = v10;
    v17 = sub_261D86044();
    v2 = sub_261D7A11C(v15, v16, v11, v17);
    v18 = *(v6 + v1);
    *(v6 + v1) = v2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

id sub_261D79138()
{
  v1 = OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler____lazy_storage___widgetListHandler;
  v2 = *(v0 + OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler____lazy_storage___widgetListHandler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler____lazy_storage___widgetListHandler);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler_store);
    v5 = *(v0 + OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler_queue);
    type metadata accessor for TTRIntentsHandlerStoreDataSource();
    swift_allocObject();
    v6 = v4;
    v7 = v0;
    v8 = sub_261D699F8(v6);
    type metadata accessor for TTRIntentsHandlerSpotlightDataSource();
    v9 = swift_allocObject();
    v10 = v6;
    v11 = v5;
    v12 = sub_261D79D3C(v10, v11, v8, v9);
    v13 = objc_allocWithZone(type metadata accessor for ConfigurationIntentHandler());
    v14 = sub_261D79F88(v10, v11, v12, v13);
    v15 = *(v7 + v1);
    *(v7 + v1) = v14;
    v3 = v14;

    v2 = 0;
  }

  v16 = v2;
  return v3;
}

id sub_261D792E0(char *a1)
{
  v2 = sub_261D86114();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261D86104();
  v7 = *&a1[OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler_store];
  v8 = *&a1[OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler_queue];
  type metadata accessor for TTRIntentsHandlerStoreDataSource();
  swift_allocObject();
  v9 = v7;
  v10 = sub_261D699F8(v9);
  v11 = type metadata accessor for TTRIntentsHandlerSpotlightDataSource();
  v12 = swift_allocObject();
  v13 = v9;

  v14 = v8;
  v15 = sub_261D79D3C(v13, v14, v10, v12);
  v46[3] = v11;
  v46[4] = &off_28744B808;

  v46[0] = v15;
  sub_261D64534(v46, v45);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  v17 = sub_261D86054();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = a1;
  v21 = sub_261D86044();
  v43 = &type metadata for TTRContactRepresentationResolver;
  v44 = &off_28744B0E0;
  v42[0] = sub_261D79E98;
  v42[1] = v16;
  v41[3] = v2;
  v41[4] = MEMORY[0x277D45DE8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
  (*(v3 + 16))(boxed_opaque_existential_1, v6, v2);
  v40[3] = v17;
  v40[4] = MEMORY[0x277D45D48];
  v40[0] = v21;
  v23 = type metadata accessor for TTRAddTasksIntentHandler();
  v24 = objc_allocWithZone(v23);
  v25 = v43;
  v26 = __swift_mutable_project_boxed_opaque_existential_1(v42, v43);
  v27 = *(v25[-1].Description + 8);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = (&v36 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30, v28);
  v38 = &type metadata for TTRContactRepresentationResolver;
  v39 = &off_28744B0E0;
  v37 = *v30;
  v24[OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_didNotSpecifyTargetList] = 0;
  sub_261D64534(v40, &v24[OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_timeProvider]);
  *&v24[OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_store] = v13;
  *&v24[OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_queue] = v14;
  sub_261D64534(v45, &v24[OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_dataSource]);
  sub_261D64534(&v37, &v24[OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_contactRepresentationResolver]);
  sub_261D64534(v41, &v24[OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_userActivityProvider]);
  v36.receiver = v24;
  v36.super_class = v23;
  v32 = v13;
  v33 = v14;
  v34 = objc_msgSendSuper2(&v36, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v45);
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_0(v40);
  __swift_destroy_boxed_opaque_existential_0(v41);
  __swift_destroy_boxed_opaque_existential_0(&v37);
  __swift_destroy_boxed_opaque_existential_0(v42);
  __swift_destroy_boxed_opaque_existential_0(v46);
  return v34;
}

id sub_261D796D0(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler_store];
  v3 = *&a1[OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler_queue];
  type metadata accessor for TTRIntentsHandlerStoreDataSource();
  swift_allocObject();
  v4 = v2;
  v5 = sub_261D699F8(v4);
  v6 = type metadata accessor for TTRIntentsHandlerSpotlightDataSource();
  v7 = swift_allocObject();
  v8 = v4;

  v9 = v3;
  v10 = sub_261D79D3C(v8, v9, v5, v7);
  v36[3] = v6;
  v36[4] = &off_28744B808;

  v36[0] = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  sub_261D64534(v36, v35);
  v12 = sub_261D86054();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = a1;
  v16 = sub_261D86044();
  v34[3] = &type metadata for TTRContactRepresentationResolver;
  v34[4] = &off_28744B0E0;
  v34[0] = sub_261D7A244;
  v34[1] = v11;
  v33[3] = v12;
  v33[4] = MEMORY[0x277D45D48];
  v33[0] = v16;
  v17 = type metadata accessor for TTRSetTaskAttributeIntentHandler();
  v18 = objc_allocWithZone(v17);
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v34, &type metadata for TTRContactRepresentationResolver);
  size = off_28744B0C0->size;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = (&v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23, v21);
  v31 = &type metadata for TTRContactRepresentationResolver;
  v32 = &off_28744B0E0;
  v30 = *v23;
  *&v18[OBJC_IVAR____TtC25RemindersIntentsFramework32TTRSetTaskAttributeIntentHandler_store] = v8;
  *&v18[OBJC_IVAR____TtC25RemindersIntentsFramework32TTRSetTaskAttributeIntentHandler_queue] = v9;
  sub_261D64534(&v30, &v18[OBJC_IVAR____TtC25RemindersIntentsFramework32TTRSetTaskAttributeIntentHandler_contactRepresentationResolver]);
  sub_261D64534(v35, &v18[OBJC_IVAR____TtC25RemindersIntentsFramework32TTRSetTaskAttributeIntentHandler_dataSource]);
  sub_261D64534(v33, &v18[OBJC_IVAR____TtC25RemindersIntentsFramework32TTRSetTaskAttributeIntentHandler_timeProvider]);
  v29.receiver = v18;
  v29.super_class = v17;
  v25 = v8;
  v26 = v9;
  v27 = objc_msgSendSuper2(&v29, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v35);
  __swift_destroy_boxed_opaque_existential_0(v33);
  __swift_destroy_boxed_opaque_existential_0(&v30);
  __swift_destroy_boxed_opaque_existential_0(v34);
  __swift_destroy_boxed_opaque_existential_0(v36);
  return v27;
}

id sub_261D799C8(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CE2028]) initWithBundleIdentifier_];
  v3 = *(a1 + OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler_store);
  v13 = sub_261D597EC(0, &unk_27FEF4870, 0x277CE2028);
  v14 = &off_28744B0F0;
  *&v12 = v2;
  type metadata accessor for TTRIntentsHandlerNotificationCenterDataSource();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  sub_261D79F70(&v12, v4 + 24);
  v5 = *(a1 + OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler_queue);
  v6 = type metadata accessor for TTRSnoozeTasksIntentHandler();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC25RemindersIntentsFramework27TTRSnoozeTasksIntentHandler_store] = v3;
  *&v7[OBJC_IVAR____TtC25RemindersIntentsFramework27TTRSnoozeTasksIntentHandler_queue] = v5;
  *&v7[OBJC_IVAR____TtC25RemindersIntentsFramework27TTRSnoozeTasksIntentHandler_dataSource] = v4;
  v11.receiver = v7;
  v11.super_class = v6;
  v8 = v3;
  v9 = v5;
  return objc_msgSendSuper2(&v11, sel_init);
}

id TTRIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRIntentHandler.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler_store;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277D44850]) initUserInteractive_];
  v4 = OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler_queue;
  sub_261D597EC(0, &qword_27FEF47D0, 0x277D85C78);
  *&v1[v4] = sub_261D86744();
  *&v1[OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler____lazy_storage___contactStore] = 0;
  *&v1[OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler____lazy_storage___addTasksHandler] = 0;
  *&v1[OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler____lazy_storage___setTaskAttributeHandler] = 0;
  *&v1[OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler____lazy_storage___snoozeTasksHandler] = 0;
  *&v1[OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler____lazy_storage___searchForNotebookItemsHandler] = 0;
  *&v1[OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler____lazy_storage___widgetListHandler] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

id TTRIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_261D79D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = type metadata accessor for TTRIntentsHandlerStoreDataSource();
  v15 = &off_28744B1C8;
  *&v13 = a3;
  if (qword_27FEF3FC0 != -1)
  {
    swift_once();
  }

  v8 = sub_261D864A4();
  __swift_project_value_buffer(v8, qword_27FEF4918);
  v9 = sub_261D86494();
  v10 = sub_261D866C4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_261D56000, v9, v10, "[TTRIntentsHandlerSpotlightDataSource] Using the Spotlight intents handler data source", v11, 2u);
    MEMORY[0x26671EBF0](v11, -1, -1);
  }

  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  sub_261D79F70(&v13, a4 + 32);
  return a4;
}

uint64_t sub_261D79E60()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_261D79F70(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id sub_261D79F88(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  ObjectType = swift_getObjectType();
  v16[3] = type metadata accessor for TTRIntentsHandlerSpotlightDataSource();
  v16[4] = &off_28744B808;
  v16[0] = a3;
  *&a4[OBJC_IVAR____TtC25RemindersIntentsFramework26ConfigurationIntentHandler_badgeSize] = vdupq_n_s64(0x4040000000000000uLL);
  if (qword_27FEF3FB8 != -1)
  {
    swift_once();
  }

  v9 = sub_261D864A4();
  __swift_project_value_buffer(v9, qword_27FEF4898);
  v10 = sub_261D86494();
  v11 = sub_261D866C4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_261D56000, v10, v11, "ConfigurationIntentHandler Created", v12, 2u);
    MEMORY[0x26671EBF0](v12, -1, -1);
  }

  *&a4[OBJC_IVAR____TtC25RemindersIntentsFramework26ConfigurationIntentHandler_store] = a1;
  *&a4[OBJC_IVAR____TtC25RemindersIntentsFramework26ConfigurationIntentHandler_queue] = a2;
  sub_261D64534(v16, &a4[OBJC_IVAR____TtC25RemindersIntentsFramework26ConfigurationIntentHandler_dataSource]);
  v15.receiver = a4;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v16);
  return v13;
}

id sub_261D7A11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v15[3] = type metadata accessor for TTRIntentsHandlerSpotlightDataSource();
  v15[4] = &off_28744B808;
  v15[0] = a3;
  v14[3] = v8;
  v14[4] = MEMORY[0x277D45D48];
  v14[0] = a4;
  v9 = type metadata accessor for TTRSearchForNotebookItemsIntentHandler();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_store] = a1;
  *&v10[OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_queue] = a2;
  sub_261D64534(v15, &v10[OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_dataSource]);
  sub_261D64534(v14, &v10[OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_timeProvider]);
  v13.receiver = v10;
  v13.super_class = v9;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v15);
  __swift_destroy_boxed_opaque_existential_0(v14);
  return v11;
}

uint64_t sub_261D7A248(uint64_t a1, unint64_t a2)
{
  v86 = sub_261D861D4();
  v4 = *(v86 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v86);
  v85 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v84 = &v69 - v8;
  v9 = sub_261D86194();
  v10 = *(v9 - 1);
  v11 = *(v10 + 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v74 = &v69 - v15;
  MEMORY[0x28223BE20](v16);
  v87 = &v69 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v69 - v19;
  v21 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_51;
  }

  v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v23 = MEMORY[0x277D84F90];
  if (v22 < 2)
  {
    goto LABEL_13;
  }

  v70 = v21;
  v71 = v13;
  v73 = a1;
  v24 = *(a1 + 16);
  v75 = a2;

  v72 = v24;
  v25 = v87;
  if (!v24)
  {
LABEL_11:

LABEL_12:
    v23 = MEMORY[0x277D84F90];
LABEL_13:
    if (v23 >> 62 && sub_261D86954())
    {
      sub_261D7BF9C(MEMORY[0x277D84F90]);
    }

    else
    {
      v40 = MEMORY[0x277D84FA0];
    }

    v96[0] = v40;

    v42 = sub_261D7C268(v41, v96);

LABEL_16:

    return v42;
  }

  v27 = *(v10 + 2);
  v26 = v10 + 16;
  v93 = v27;
  v28 = v73 + ((v26[64] + 32) & ~v26[64]);
  v90 = *(v26 + 7);
  v92 = (v26 + 72);
  v29 = *MEMORY[0x277D44F40];
  v83 = (v26 + 80);
  v80 = (v4 + 32);
  v79 = *MEMORY[0x277D45060];
  v78 = (v4 + 104);
  v77 = (v4 + 8);
  v91 = v26 - 8;
  v69 = v28;
  v30 = v28;
  v31 = v72;
  v81 = v20;
  v82 = v26;
  while (1)
  {
    v33 = v93;
    v93(v20, v30, v9);
    v33(v25, v20, v9);
    v34 = *v92;
    if ((*v92)(v25, v9) == v29)
    {
      break;
    }

    v32 = *v91;
    (*v91)(v25, v9);
LABEL_7:
    v32(v20, v9);
    v30 += v90;
    if (!--v31)
    {
      goto LABEL_11;
    }
  }

  v88 = v34;
  v76 = *v83;
  v76(v25, v9);
  v35 = v84;
  v36 = v25;
  v37 = v86;
  (*v80)(v84, v36, v86);
  v38 = v85;
  (*v78)(v85, v79, v37);
  v89 = sub_261D861C4();
  v39 = *v77;
  (*v77)(v38, v37);
  v39(v35, v37);
  v32 = *v91;
  if ((v89 & 1) == 0)
  {
    v20 = v81;
    v25 = v87;
    goto LABEL_7;
  }

  v10 = v9;
  v32(v81, v9);

  v21 = *MEMORY[0x277D44F10];
  v44 = v74;
  v45 = v69;
  v46 = v72;
  v47 = v76;
  while (1)
  {
    v93(v44, v45, v10);
    if (v88(v44, v10) == v21)
    {
      break;
    }

    v32(v44, v10);
    v45 += v90;
    if (!--v46)
    {
      goto LABEL_11;
    }
  }

  v47(v44, v10);
  v90 = *(v44 + 1);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4538, &qword_261D87F78);
  v20 = v45;
  v49 = *(v48 + 48);
  v50 = sub_261D862B4();
  v51 = *(*(v50 - 8) + 8);
  v51(&v44[v49], v50);

  v52 = v71;
  v93(v71, v20, v10);
  if (v88(v52, v10) == v21)
  {
    v76(v52, v10);
    v53 = *(v52 + 1);
    v92 = *v52;
    v93 = v53;
    v51(&v52[*(v48 + 48)], v50);

    v97 = MEMORY[0x277D84F90];
    a2 = v75;
    if (v70)
    {
      v4 = sub_261D86954();
    }

    else
    {
      v4 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v54 = MEMORY[0x277D84F90];
    if (v4)
    {
      v13 = 0;
      v55 = a2 & 0xC000000000000001;
      a1 = a2 & 0xFFFFFFFFFFFFFF8;
      v9 = &_swift_FORCE_LOAD___swiftCallKit___RemindersIntentsFramework;
      v56 = &_swift_FORCE_LOAD___swiftCallKit___RemindersIntentsFramework;
      v91 = v4;
      while (1)
      {
        if (v55)
        {
          v57 = MEMORY[0x26671E4C0](v13, a2);
        }

        else
        {
          if (v13 >= *(a1 + 16))
          {
            goto LABEL_50;
          }

          v57 = *(a2 + 8 * v13 + 32);
        }

        v21 = v57;
        v10 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          v22 = sub_261D86954();
          goto LABEL_3;
        }

        v58 = [v57 *(v9 + 155)];
        if (v58)
        {
          v20 = v58;
          if ([v58 v56[156]])
          {
            v59 = a1;
            v60 = v55;
            v61 = v9;
            v62 = [v21 name];
            v63 = sub_261D86534();
            v65 = v64;

            v96[0] = v63;
            v96[1] = v65;
            v94 = v92;
            v95 = v93;
            sub_261D7C3F0();
            v66 = sub_261D868E4();

            if (v66)
            {
            }

            else
            {
              sub_261D86A14();
              v20 = *(v97 + 16);
              sub_261D86A44();
              sub_261D86A54();
              sub_261D86A24();
            }

            a2 = v75;
            v9 = v61;
            v55 = v60;
            a1 = v59;
            v4 = v91;
            v56 = &_swift_FORCE_LOAD___swiftCallKit___RemindersIntentsFramework;
            goto LABEL_29;
          }
        }

LABEL_29:
        ++v13;
        if (v10 == v4)
        {
          v67 = v97;
          v54 = MEMORY[0x277D84F90];
          goto LABEL_43;
        }
      }
    }

    v67 = MEMORY[0x277D84F90];
LABEL_43:

    if ((v67 & 0x8000000000000000) != 0 || (v67 & 0x4000000000000000) != 0)
    {
      if (sub_261D86954())
      {
LABEL_46:
        if (v54 >> 62 && sub_261D86954())
        {
          sub_261D7BF9C(MEMORY[0x277D84F90]);
        }

        else
        {
          v68 = MEMORY[0x277D84FA0];
        }

        v96[0] = v68;
        v42 = sub_261D7C268(v67, v96);

        goto LABEL_16;
      }
    }

    else if (*(v67 + 16))
    {
      goto LABEL_46;
    }

    goto LABEL_12;
  }

  result = (v32)(v52, v10);
  __break(1u);
  return result;
}

uint64_t sub_261D7AB70(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_261D86BC4();
  sub_261D86574();
  v9 = sub_261D86BD4();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_261D86B84() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_261D7B5C4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_261D7ACC0(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_261D86964();

    if (v9)
    {

      sub_261D7C444();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_261D86954();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_261D7AED8(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_261D7B318(v22 + 1);
    }

    v20 = v8;
    sub_261D7B540(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_261D7C444();
  v11 = *(v6 + 40);
  v12 = sub_261D86894();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_261D7B744(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_261D868A4();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_261D7AED8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4888, &qword_261D882B8);
    v2 = sub_261D869A4();
    v16 = v2;
    sub_261D86944();
    if (sub_261D86974())
    {
      sub_261D7C444();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_261D7B318(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_261D86894();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_261D86974());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_261D7B0B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4890, &unk_261D882C0);
  result = sub_261D86994();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_261D86BC4();
      sub_261D86574();
      result = sub_261D86BD4();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_261D7B318(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4888, &qword_261D882B8);
  result = sub_261D86994();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_261D86894();
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
      *(*(v6 + 48) + 8 * v14) = v18;
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

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_261D7B540(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_261D86894();
  v5 = -1 << *(a2 + 32);
  result = sub_261D86934();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_261D7B5C4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_261D7B0B8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_261D7B8A4();
      goto LABEL_16;
    }

    sub_261D7BB50(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_261D86BC4();
  sub_261D86574();
  result = sub_261D86BD4();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_261D86B84();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_261D86B94();
  __break(1u);
  return result;
}

void sub_261D7B744(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_261D7B318(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_261D7BA00();
      goto LABEL_12;
    }

    sub_261D7BD88(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_261D86894();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_261D7C444();
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_261D868A4();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_261D86B94();
  __break(1u);
}

void *sub_261D7B8A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4890, &unk_261D882C0);
  v2 = *v0;
  v3 = sub_261D86984();
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

id sub_261D7BA00()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4888, &qword_261D882B8);
  v2 = *v0;
  v3 = sub_261D86984();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

uint64_t sub_261D7BB50(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4890, &unk_261D882C0);
  result = sub_261D86994();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_261D86BC4();

      sub_261D86574();
      result = sub_261D86BD4();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_261D7BD88(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4888, &qword_261D882B8);
  result = sub_261D86994();
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
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_261D86894();
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
      *(*(v6 + 48) + 8 * v13) = v18;
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

void sub_261D7BF9C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_261D86954())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4888, &qword_261D882B8);
      v3 = sub_261D869B4();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_261D86954();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v39 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v37 = v1;
    while (1)
    {
      v8 = MEMORY[0x26671E4C0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_261D86894();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_261D7C444();
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_261D868A4();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v37;
            v5 = v39;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v37;
        v5 = v39;
        if (v7 == v39)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v38 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v38)
    {
      v24 = *(v3 + 40);
      v25 = *(v1 + 32 + 8 * v23);
      v26 = sub_261D86894();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_261D7C444();
        while (1)
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_261D868A4();

          if (v34)
          {
            break;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
          if (((1 << v28) & v30) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v29) = v31 | v30;
        *(*(v3 + 48) + 8 * v28) = v25;
        v35 = *(v3 + 16);
        v9 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v36;
      }

      if (++v23 == v39)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_261D7C268(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v20 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_16:
    v4 = sub_261D86954();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v6 = v3 & 0xC000000000000001;
      v7 = v3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v6)
        {
          v8 = MEMORY[0x26671E4C0](v5, v3);
          v9 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_13:
            __break(1u);
            return v20;
          }
        }

        else
        {
          if (v5 >= *(v7 + 16))
          {
            __break(1u);
            goto LABEL_16;
          }

          v8 = *(v3 + 8 * v5 + 32);
          v9 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_13;
          }
        }

        v10 = v8;
        v11 = sub_261D7ACC0(&v19, v10);

        if (v11)
        {
          sub_261D86A14();
          v12 = v6;
          v13 = v4;
          v14 = v3;
          v15 = a2;
          v16 = *(v20 + 16);
          sub_261D86A44();
          a2 = v15;
          v3 = v14;
          v4 = v13;
          v6 = v12;
          v7 = v18;
          sub_261D86A54();
          sub_261D86A24();
        }

        else
        {
        }

        ++v5;
        if (v9 == v4)
        {
          return v20;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_261D7C3F0()
{
  result = qword_27FEF4880;
  if (!qword_27FEF4880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF4880);
  }

  return result;
}

unint64_t sub_261D7C444()
{
  result = qword_27FEF41C0;
  if (!qword_27FEF41C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FEF41C0);
  }

  return result;
}

void sub_261D7C490(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = a1;
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (v7 < *(a3 + 16))
    {
      v15 = *(a3 + 8 * v7 + 32);
      v9 = v15;
      v10 = v6(&v15);
      if (v3)
      {

        return;
      }

      if (v10)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_261D8041C(0, *(v8 + 16) + 1, 1);
          v8 = v16;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_261D8041C((v12 > 1), v13 + 1, 1);
          v8 = v16;
        }

        *(v8 + 16) = v13 + 1;
        *(v8 + 8 * v13 + 32) = v9;
        v6 = a1;
      }

      else
      {
      }

      if (v5 == ++v7)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
  }
}

uint64_t sub_261D7C5F0()
{
  v0 = sub_261D864A4();
  __swift_allocate_value_buffer(v0, qword_27FEF4898);
  v1 = __swift_project_value_buffer(v0, qword_27FEF4898);
  if (qword_27FEF3F78 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FEF4D38);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_261D7C740(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_27FEF3FB8 != -1)
  {
    swift_once();
  }

  v11 = sub_261D864A4();
  __swift_project_value_buffer(v11, qword_27FEF4898);

  v12 = a1;
  v13 = sub_261D86494();
  v14 = sub_261D866C4();

  if (os_log_type_enabled(v13, v14))
  {
    v41 = a4;
    v15 = swift_slowAlloc();
    v40 = v6;
    v16 = swift_slowAlloc();
    v43 = v16;
    *v15 = 136315394;
    v17 = v12;
    v18 = [v17 description];
    v19 = sub_261D86534();
    v21 = v20;

    v22 = sub_261D8464C(v19, v21, &v43);

    *(v15 + 4) = v22;
    *(v15 + 12) = 2080;
    v23 = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF46C0, &qword_261D87BF0);
    v24 = sub_261D86544();
    v26 = sub_261D8464C(v24, v25, &v43);

    *(v15 + 14) = v26;
    _os_log_impl(&dword_261D56000, v13, v14, "Widget provideListOptions {intent: %s, searchTerm: %s}", v15, 0x16u);
    swift_arrayDestroy();
    v27 = v16;
    v6 = v40;
    MEMORY[0x26671EBF0](v27, -1, -1);
    v28 = v15;
    a4 = v41;
    MEMORY[0x26671EBF0](v28, -1, -1);
  }

  else
  {

    v23 = a2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF48D8, &unk_261D88328);
  v29 = &v6[OBJC_IVAR____TtC25RemindersIntentsFramework26ConfigurationIntentHandler_dataSource];
  v30 = *&v6[OBJC_IVAR____TtC25RemindersIntentsFramework26ConfigurationIntentHandler_dataSource + 24];
  v31 = *&v6[OBJC_IVAR____TtC25RemindersIntentsFramework26ConfigurationIntentHandler_dataSource + 32];
  __swift_project_boxed_opaque_existential_1(&v6[OBJC_IVAR____TtC25RemindersIntentsFramework26ConfigurationIntentHandler_dataSource], v30);
  sub_261D6D990(v30, v31);
  v32 = *(v29 + 3);
  v33 = *(v29 + 4);
  __swift_project_boxed_opaque_existential_1(v29, v32);
  sub_261D6D8B4(v32, v33);
  sub_261D86424();

  v34 = swift_allocObject();
  v34[2] = a4;
  v34[3] = a5;
  v34[4] = v6;
  v34[5] = v23;
  v34[6] = a3;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_261D80344;
  *(v35 + 24) = v34;

  v36 = v6;
  v37 = sub_261D863F4();
  sub_261D86434();

  v38 = swift_allocObject();
  *(v38 + 16) = a4;
  *(v38 + 24) = a5;

  v39 = sub_261D863F4();
  sub_261D86444();
}

void sub_261D7CC00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_261D85C54();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_261D7CC70(uint64_t a1, uint64_t a2, uint64_t (*a3)(id, void), uint64_t a4, void *a5, unint64_t a6, uint64_t a7)
{
  v162 = a6;
  v163 = a7;
  v144 = a4;
  v145 = a3;
  v147 = sub_261D86354();
  v151 = *(v147 - 8);
  v10 = *(v151 + 64);
  MEMORY[0x28223BE20](v147);
  v160 = v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF48E8, &unk_261D88340);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v161 = v137 - v14;
  v150 = sub_261D85C94();
  v15 = *(v150 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v150);
  v149 = v137 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF48D0, &qword_261D88320);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = v137 - v20;
  v142 = sub_261D860C4();
  v141 = *(v142 - 8);
  v22 = *(v141 + 64);
  MEMORY[0x28223BE20](v142);
  v143 = v137 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4528, &qword_261D87F70);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = v137 - v26;
  v28 = sub_261D86374();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = v137 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v146 = v137 - v34;
  if (!a1)
  {
LABEL_4:
    if (qword_27FEF3FB8 == -1)
    {
LABEL_5:
      v35 = sub_261D864A4();
      __swift_project_value_buffer(v35, qword_27FEF4898);
      v36 = sub_261D86494();
      v37 = sub_261D866A4();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_261D56000, v36, v37, "Widget provideListOptions failed no data", v38, 2u);
        MEMORY[0x26671EBF0](v38, -1, -1);
      }

      return v145(0, 0);
    }

LABEL_44:
    swift_once();
    goto LABEL_5;
  }

  sub_261D80670(a2, v27);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_261D646F8(v27, &qword_27FEF4528, &qword_261D87F70);
    goto LABEL_4;
  }

  v159 = v15;
  v40 = v146;
  (*(v29 + 32))(v146, v27, v28);
  if (qword_27FEF3FB8 != -1)
  {
    swift_once();
  }

  v41 = sub_261D864A4();
  v42 = __swift_project_value_buffer(v41, qword_27FEF4898);
  (*(v29 + 16))(v32, v40, v28);

  v43 = v29;
  v137[1] = v42;
  v44 = sub_261D86494();
  v45 = sub_261D866C4();
  v46 = os_log_type_enabled(v44, v45);
  v140 = v28;
  v139 = v29;
  if (v46)
  {
    v47 = swift_slowAlloc();
    *v47 = 134218240;
    *(v47 + 4) = *(a1 + 16);

    *(v47 + 12) = 2048;
    v48 = *(sub_261D86364() + 16);

    v138 = *(v43 + 8);
    v138(v32, v28);
    *(v47 + 14) = v48;
    _os_log_impl(&dword_261D56000, v44, v45, "Widget provideListOptions smartListTypes: %ld, accounts %ld ", v47, 0x16u);
    MEMORY[0x26671EBF0](v47, -1, -1);
  }

  else
  {
    v138 = *(v29 + 8);
    v138(v32, v28);
  }

  v49 = MEMORY[0x277D84F90];
  v170 = MEMORY[0x277D84F90];
  sub_261D860E4();
  v50 = v143;
  v51 = sub_261D860D4();
  MEMORY[0x28223BE20](v51);
  v135 = v50;

  sub_261D7C490(sub_261D806E0, &v137[-4], a1);
  v157 = 0;
  v158 = a5;
  v53 = *(v52 + 16);
  v54 = v159;
  if (v53)
  {
    v164 = v49;
    v55 = v52;
    sub_261D86A34();
    sub_261D86164();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v155 = sub_261D800A0();
    v56 = v55;
    v148 = (v54 + 8);
    v154 = v168;
    v57 = 4;
    v153 = v21;
    v152 = v55;
    v58 = v158;
    while (1)
    {
      v60 = v56[v57];
      sub_261D862A4();
      v61 = sub_261D86294();
      v62 = *(v61 - 8);
      v63 = (*(v62 + 48))(v21, 1, v61);
      v159 = v53;
      if (v63 == 1)
      {
        sub_261D646F8(v21, &qword_27FEF48D0, &qword_261D88320);
        v64 = 0;
      }

      else
      {
        v65 = v149;
        sub_261D86284();
        (*(v62 + 8))(v21, v61);
        sub_261D85C74();
        v64 = v66;
        (*v148)(v65, v150);
      }

      sub_261D86734();
      if (v64)
      {
        v67 = sub_261D86504();
      }

      else
      {
        v67 = 0;
      }

      v68 = objc_allocWithZone(ObjCClassFromMetadata);
      v69 = sub_261D86504();

      v70 = [v68 initWithIdentifier:v67 displayString:v69];

      v169 = 0;
      v71 = sub_261D86744();
      v72 = swift_allocObject();
      v72[2] = v60;
      v72[3] = v58;
      v72[4] = &v169;
      v73 = swift_allocObject();
      *(v73 + 16) = sub_261D80E0C;
      *(v73 + 24) = v72;
      v168[2] = sub_261D80DFC;
      v168[3] = v73;
      aBlock = MEMORY[0x277D85DD0];
      v167 = 1107296256;
      v168[0] = sub_261D7FE50;
      v168[1] = &block_descriptor_38;
      v74 = _Block_copy(&aBlock);
      v75 = v60;
      v76 = v58;

      dispatch_sync(v71, v74);

      _Block_release(v74);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        break;
      }

      v78 = v169;

      if (v78)
      {
        v79 = v78;
        v80 = v70;
        [v80 setDisplayImage_];
      }

      sub_261D86A14();
      v59 = *(v164 + 16);
      sub_261D86A44();
      sub_261D86A54();
      sub_261D86A24();
      ++v57;
      v53 = v159 - 1;
      v21 = v153;
      v56 = v152;
      if (v159 == 1)
      {

        v81 = v164;
        a5 = v158;
        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

  v81 = MEMORY[0x277D84F90];
LABEL_27:
  v82 = v147;
  if (v163)
  {
    v169 = MEMORY[0x277D84F90];
    if (v81 >> 62)
    {
      v83 = sub_261D86954();
      if (v83)
      {
LABEL_30:
        v84 = 0;
        v159 = v81 & 0xC000000000000001;
        while (1)
        {
          if (v159)
          {
            v86 = MEMORY[0x26671E4C0](v84, v81);
          }

          else
          {
            if (v84 >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v86 = *(v81 + 8 * v84 + 32);
          }

          v87 = v86;
          v88 = v84 + 1;
          if (__OFADD__(v84, 1))
          {
            break;
          }

          v89 = [v86 displayString];
          v90 = sub_261D86534();
          v92 = v91;

          aBlock = v90;
          v167 = v92;
          v164 = v162;
          v165 = v163;
          v93 = sub_261D85D74();
          v94 = v161;
          (*(*(v93 - 8) + 56))(v161, 1, 1, v93);
          v135 = sub_261D7C3F0();
          v136 = v135;
          sub_261D868F4();
          LOBYTE(v89) = v95;
          sub_261D646F8(v94, &qword_27FEF48E8, &unk_261D88340);

          if (v89)
          {
          }

          else
          {
            sub_261D86A14();
            v96 = v169[2];
            sub_261D86A44();
            sub_261D86A54();
            sub_261D86A24();
          }

          ++v84;
          v85 = v88 == v83;
          a5 = v158;
          if (v85)
          {
            goto LABEL_46;
          }
        }

LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }
    }

    else
    {
      v83 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v83)
      {
        goto LABEL_30;
      }
    }

LABEL_46:

    v82 = v147;
  }

  v97 = 0x277CD3000uLL;
  v98 = objc_allocWithZone(MEMORY[0x277CD3E30]);
  v99 = sub_261D86164();
  v100 = sub_261D865C4();

  v101 = [v98 initWithTitle:0 items:v100];

  v102 = v101;
  MEMORY[0x26671E090]();
  if (*((v170 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v170 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_82;
  }

  while (1)
  {
    v149 = v102;
    sub_261D86604();
    v103 = v170;
    v104 = sub_261D86364();
    ObjCClassFromMetadata = *(v104 + 16);
    if (!ObjCClassFromMetadata)
    {
      break;
    }

    v102 = 0;
    v155 = v104 + ((*(v151 + 80) + 32) & ~*(v151 + 80));
    v154 = (v151 + 16);
    v152 = (v151 + 8);
    v150 = v99;
    v153 = v104;
    while (v102 < *(v104 + 16))
    {
      v105 = *(v151 + 72);
      v159 = v102;
      (*(v151 + 16))(v160, v155 + v105 * v102, v82);
      v106 = sub_261D86314();
      v107 = a5;
      v108 = v157;
      v109 = sub_261D80740(v106, v107);
      v157 = v108;

      if (v163)
      {
        v169 = MEMORY[0x277D84F90];
        if (v109 >> 62)
        {
          v102 = sub_261D86954();
          if (v102)
          {
LABEL_54:
            v99 = 0;
            v82 = v109 & 0xC000000000000001;
            a5 = (v109 & 0xFFFFFFFFFFFFFF8);
            while (1)
            {
              if (v82)
              {
                v110 = MEMORY[0x26671E4C0](v99, v109);
              }

              else
              {
                if (v99 >= *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_80;
                }

                v110 = *(v109 + 8 * v99 + 32);
              }

              v111 = v110;
              v97 = v99 + 1;
              if (__OFADD__(v99, 1))
              {
                break;
              }

              v112 = [v110 displayString];
              v113 = sub_261D86534();
              v115 = v114;

              aBlock = v113;
              v167 = v115;
              v164 = v162;
              v165 = v163;
              v116 = sub_261D85D74();
              v117 = v161;
              (*(*(v116 - 8) + 56))(v161, 1, 1, v116);
              v135 = sub_261D7C3F0();
              v136 = v135;
              sub_261D868F4();
              LOBYTE(v112) = v118;
              sub_261D646F8(v117, &qword_27FEF48E8, &unk_261D88340);

              if (v112)
              {
              }

              else
              {
                sub_261D86A14();
                v119 = v169[2];
                sub_261D86A44();
                sub_261D86A54();
                sub_261D86A24();
              }

              ++v99;
              if (v97 == v102)
              {
                a5 = v158;
                v82 = v147;
                v97 = 0x277CD3000;
                v99 = v150;
                goto LABEL_66;
              }
            }

            __break(1u);
LABEL_80:
            __break(1u);
            break;
          }
        }

        else
        {
          v102 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v102)
          {
            goto LABEL_54;
          }
        }

LABEL_66:
      }

      v120 = sub_261D86334();
      v121 = [v120 displayName];

      if (!v121)
      {
        sub_261D86534();
        v121 = sub_261D86504();
      }

      v122 = objc_allocWithZone(*(v97 + 3632));
      v123 = sub_261D865C4();

      v124 = [v122 initWithTitle:v121 items:v123];

      v125 = v124;
      MEMORY[0x26671E090]();
      if (*((v170 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v170 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v126 = *((v170 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_261D865F4();
      }

      v102 = v159 + 1;
      sub_261D86604();

      (*v152)(v160, v82);
      v104 = v153;
      if (v102 == ObjCClassFromMetadata)
      {
        v103 = v170;
        goto LABEL_73;
      }
    }

    __break(1u);
LABEL_82:
    sub_261D865F4();
  }

LABEL_73:

  v127 = sub_261D86494();
  v128 = sub_261D866C4();
  if (os_log_type_enabled(v127, v128))
  {
    v129 = swift_slowAlloc();
    *v129 = 134217984;
    if (v103 >> 62)
    {
      v130 = sub_261D86954();
    }

    else
    {
      v130 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v129 + 4) = v130;

    _os_log_impl(&dword_261D56000, v127, v128, "Widget provideListOptions sections %ld ", v129, 0xCu);
    MEMORY[0x26671EBF0](v129, -1, -1);
  }

  else
  {
  }

  v131 = objc_allocWithZone(MEMORY[0x277CD3E28]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF48F0, &qword_261D88350);
  v132 = sub_261D865C4();

  v133 = [v131 initWithSections_];

  v134 = v133;
  v145(v133, 0);

  v138(v146, v140);
  return (*(v141 + 8))(v143, v142);
}

uint64_t sub_261D7DF78(uint64_t *a1)
{
  v2 = sub_261D860C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *MEMORY[0x277D44BC0];
  v9 = sub_261D86534();
  v11 = v10;
  if (v9 == sub_261D86534() && v11 == v12)
  {
    goto LABEL_14;
  }

  v14 = sub_261D86B84();

  if ((v14 & 1) == 0)
  {
    v16 = *MEMORY[0x277D44BA0];
    v17 = sub_261D86534();
    v19 = v18;
    if (v17 == sub_261D86534() && v19 == v20)
    {
    }

    else
    {
      v22 = sub_261D86B84();

      if ((v22 & 1) == 0)
      {
        v23 = *MEMORY[0x277D44BA8];
        v24 = sub_261D86534();
        v26 = v25;
        if (v24 == sub_261D86534() && v26 == v27)
        {
LABEL_14:

          v15 = 1;
          return v15 & 1;
        }

        v29 = sub_261D86B84();

        if (v29)
        {
          goto LABEL_6;
        }

        v30 = *MEMORY[0x277D44B80];
        v31 = sub_261D86534();
        v33 = v32;
        if (v31 == sub_261D86534() && v33 == v34)
        {
LABEL_22:

LABEL_24:
          v15 = 0;
          return v15 & 1;
        }

        v35 = sub_261D86B84();

        if (v35)
        {
          goto LABEL_24;
        }

        v36 = *MEMORY[0x277D44B88];
        v37 = sub_261D86534();
        v39 = v38;
        if (v37 == sub_261D86534() && v39 == v40)
        {
        }

        else
        {
          v41 = sub_261D86B84();

          if ((v41 & 1) == 0)
          {
            v42 = *MEMORY[0x277D44BB0];
            v43 = sub_261D86534();
            v45 = v44;
            if (v43 != sub_261D86534() || v45 != v46)
            {
              v47 = sub_261D86B84();

              if (v47)
              {
                goto LABEL_24;
              }

              v48 = *MEMORY[0x277D44BB8];
              v49 = sub_261D86534();
              v51 = v50;
              if (v49 != sub_261D86534() || v51 != v52)
              {
                sub_261D86B84();
              }
            }

            goto LABEL_22;
          }
        }

        sub_261D860B4();
LABEL_17:
        sub_261D80AD4();
        v15 = sub_261D86904();
        (*(v3 + 8))(v6, v2);
        return v15 & 1;
      }
    }

    sub_261D860A4();
    goto LABEL_17;
  }

LABEL_6:
  v15 = 1;
  return v15 & 1;
}

id sub_261D7E39C(void *a1)
{
  v2 = sub_261D85C94();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF48D0, &qword_261D88320);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - v9;
  v11 = a1;
  sub_261D862A4();
  v12 = sub_261D86294();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_261D646F8(v10, &qword_27FEF48D0, &qword_261D88320);
    v14 = 0;
  }

  else
  {
    sub_261D86284();
    (*(v13 + 8))(v10, v12);
    sub_261D85C74();
    v14 = v15;
    (*(v3 + 8))(v6, v2);
  }

  sub_261D86734();
  if (v14)
  {
    v16 = sub_261D86504();
  }

  else
  {
    v16 = 0;
  }

  sub_261D86164();
  v17 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v18 = sub_261D86504();

  v19 = [v17 initWithIdentifier:v16 displayString:v18];

  v20 = sub_261D7F6F4(v11);
  if (v20)
  {
    v21 = v20;
    [v19 setDisplayImage_];
  }

  return v19;
}

void sub_261D7E64C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_261D862F4();
  v54 = *(v7 - 8);
  v8 = *(v54 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v55 = &v41 - v12;
  v13 = sub_261D86324();
  v45 = *(v13 - 8);
  v46 = v13;
  v14 = *(v45 + 64);
  MEMORY[0x28223BE20](v13);
  v44 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_261D86304();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = (&v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v21, a1, v16, v19);
  v22 = (*(v17 + 88))(v21, v16);
  if (v22 == *MEMORY[0x277D452F8])
  {
    (*(v17 + 96))(v21, v16);
    v23 = *v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF3FF0, &qword_261D87DD0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_261D877A0;
    v25 = sub_261D7EBE0(v23);
LABEL_5:
    *(v24 + 32) = v25;

LABEL_6:
    *a3 = v24;
    return;
  }

  if (v22 == *MEMORY[0x277D452F0])
  {
    (*(v17 + 96))(v21, v16);
    v23 = *v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF3FF0, &qword_261D87DD0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_261D877A0;
    v25 = sub_261D7EF24(v23);
    goto LABEL_5;
  }

  if (v22 == *MEMORY[0x277D45300])
  {
    (*(v17 + 96))(v21, v16);
    v26 = v45;
    v27 = v44;
    v28 = v46;
    (*(v45 + 32))();
    v29 = sub_261D86314();
    v30 = *(v29 + 16);
    if (!v30)
    {

      (*(v26 + 8))(v27, v28);
      v24 = MEMORY[0x277D84F90];
      goto LABEL_6;
    }

    v51 = a2;
    v42 = a3;
    v43 = v3;
    v56 = MEMORY[0x277D84F90];
    v52 = v30;
    sub_261D86A34();
    v31 = 0;
    v32 = *(v54 + 80);
    v53 = v29;
    v50 = v29 + ((v32 + 32) & ~v32);
    v49 = v54 + 88;
    v48 = *MEMORY[0x277D452E8];
    v47 = *MEMORY[0x277D452E0];
    v33 = (v54 + 96);
    v34 = (v54 + 8);
    while (v31 < *(v53 + 16))
    {
      v37 = v54;
      v38 = v55;
      v39 = *(v54 + 16);
      v39(v55, v50 + *(v54 + 72) * v31, v7);
      v39(v10, v38, v7);
      v40 = (*(v37 + 88))(v10, v7);
      if (v40 == v48)
      {
        (*v33)(v10, v7);
        v35 = *v10;
        sub_261D7EBE0(*v10);
      }

      else
      {
        if (v40 != v47)
        {
          goto LABEL_19;
        }

        (*v33)(v10, v7);
        v35 = *v10;
        sub_261D7EF24(*v10);
      }

      ++v31;

      (*v34)(v55, v7);
      sub_261D86A14();
      v36 = *(v56 + 16);
      sub_261D86A44();
      sub_261D86A54();
      sub_261D86A24();
      if (v52 == v31)
      {
        (*(v45 + 8))(v44, v46);

        v24 = v56;
        a3 = v42;
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_19:
    sub_261D86B74();
    __break(1u);
  }

  sub_261D86B74();
  __break(1u);
}

id sub_261D7EBE0(void *a1)
{
  v2 = sub_261D85EE4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261D85C94();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 objectID];
  v14 = [v13 urlRepresentation];

  sub_261D85C84();
  sub_261D85C74();
  (*(v8 + 8))(v12, v7);
  v15 = [a1 displayName];
  if (!v15)
  {
    sub_261D86534();
    v15 = sub_261D86504();
  }

  sub_261D86164();
  v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v17 = sub_261D86504();

  v18 = [v16 initWithIdentifier:v17 displayString:v15];

  v19 = [a1 appearanceContext];
  v20 = [v19 badge];

  v21 = [a1 color];
  (*(v3 + 104))(v6, *MEMORY[0x277D45CC0], v2);
  v22 = sub_261D7F87C(v20, v21, v6);

  (*(v3 + 8))(v6, v2);
  if (v22)
  {
    [v18 setDisplayImage_];
  }

  v23 = v18;
  v24 = [a1 sharingStatusText];
  [v23 setSubtitleString_];

  return v23;
}

id sub_261D7EF24(void *a1)
{
  v2 = sub_261D85EE4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261D85C94();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 objectID];
  v14 = [v13 urlRepresentation];

  sub_261D85C84();
  sub_261D85C74();
  (*(v8 + 8))(v12, v7);
  v15 = [a1 name];
  if (!v15)
  {
    sub_261D86534();
    v15 = sub_261D86504();
  }

  sub_261D86164();
  v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v17 = sub_261D86504();

  v18 = [v16 initWithIdentifier:v17 displayString:v15];

  v19 = [a1 customContext];
  v20 = [v19 badge];
  v21 = [v19 color];

  sub_261D85ED4();
  v22 = sub_261D7F87C(v20, v21, v6);

  (*(v3 + 8))(v6, v2);
  if (v22)
  {
    [v18 setDisplayImage_];
  }

  [v18 setSubtitleString_];
  return v18;
}

uint64_t sub_261D7F224(void *a1, uint64_t (*a2)(void, void *))
{
  if (qword_27FEF3FB8 != -1)
  {
    swift_once();
  }

  v4 = sub_261D864A4();
  __swift_project_value_buffer(v4, qword_27FEF4898);
  v5 = a1;
  v6 = sub_261D86494();
  v7 = sub_261D866A4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_261D86BA4();
    v12 = sub_261D8464C(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_261D56000, v6, v7, "Widget provideListOptions failed error %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26671EBF0](v9, -1, -1);
    MEMORY[0x26671EBF0](v8, -1, -1);
  }

  return a2(0, a1);
}

id sub_261D7F490(void *a1)
{
  v2 = v1;
  if (qword_27FEF3FB8 != -1)
  {
    swift_once();
  }

  v4 = sub_261D864A4();
  __swift_project_value_buffer(v4, qword_27FEF4898);
  v5 = a1;
  v6 = sub_261D86494();
  v7 = sub_261D866C4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315138;
    v10 = v5;
    v11 = [v10 description];
    v12 = sub_261D86534();
    v14 = v13;

    v15 = sub_261D8464C(v12, v14, &v22);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_261D56000, v6, v7, "Widget defaultList {intent: %s}", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26671EBF0](v9, -1, -1);
    MEMORY[0x26671EBF0](v8, -1, -1);
  }

  v16 = *(v2 + OBJC_IVAR____TtC25RemindersIntentsFramework26ConfigurationIntentHandler_dataSource + 24);
  v17 = *(v2 + OBJC_IVAR____TtC25RemindersIntentsFramework26ConfigurationIntentHandler_dataSource + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC25RemindersIntentsFramework26ConfigurationIntentHandler_dataSource), v16);
  v18 = (*(v17 + 72))(v16, v17);
  if (!v18)
  {
    return sub_261D7E39C(*MEMORY[0x277D44BC0]);
  }

  v19 = v18;
  v20 = sub_261D7EBE0(v18);

  return v20;
}

uint64_t sub_261D7F6F4(void *a1)
{
  v2 = v1;
  v13 = 0;
  sub_261D800A0();
  v4 = sub_261D86744();
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = v2;
  v5[4] = &v13;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_261D802A0;
  *(v6 + 24) = v5;
  aBlock[4] = sub_261D80DFC;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_261D7FE50;
  aBlock[3] = &block_descriptor_15;
  v7 = _Block_copy(aBlock);
  v8 = a1;
  v9 = v2;

  dispatch_sync(v4, v7);

  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v11 = v13;

    return v11;
  }

  return result;
}

uint64_t sub_261D7F87C(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_261D85EE4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v23 = 0;
  sub_261D800A0();
  v11 = sub_261D86744();
  (*(v9 + 16))(&aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v8);
  v12 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = v4;
  *(v13 + 3) = a1;
  *(v13 + 4) = a2;
  (*(v9 + 32))(&v13[v12], &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *&v13[(v10 + v12 + 7) & 0xFFFFFFFFFFFFFFF8] = &v23;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_261D801CC;
  *(v14 + 24) = v13;
  aBlock[4] = sub_261D80260;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_261D7FE50;
  aBlock[3] = &block_descriptor_2;
  v15 = _Block_copy(aBlock);
  v16 = a2;

  v17 = v4;
  v18 = a1;

  dispatch_sync(v11, v15);

  _Block_release(v15);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  else
  {
    v20 = v23;

    return v20;
  }

  return result;
}

void sub_261D7FAE8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void **a5)
{
  v34 = a5;
  v35 = a4;
  v7 = sub_261D85EE4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_261D85E34();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_allocWithZone(sub_261D85F24()) initWithFrame_];
  if (!a2)
  {
    goto LABEL_7;
  }

  v18 = [a2 emoji];
  if (!v18)
  {
    v22 = [a2 emblem];
    if (v22)
    {
      v23 = v22;
      sub_261D86754();

      goto LABEL_8;
    }

LABEL_7:
    v24 = *MEMORY[0x277D44960];
    sub_261D86754();
LABEL_8:
    sub_261D85F04();
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v19 = v18;
  sub_261D86534();
  v33 = v12;

  v12 = v33;
  sub_261D85EF4();
  sub_261D85EC4();
  if (!a3)
  {
LABEL_4:
    sub_261D85E44();
    v20 = v17;
    sub_261D85E14();
    v21 = sub_261D85E24();
    (*(v13 + 8))(v16, v12);
    goto LABEL_10;
  }

LABEL_9:
  v25 = v17;
  v21 = sub_261D868B4();
LABEL_10:
  [v17 setTintColor_];

  (*(v8 + 16))(v11, v35, v7);
  sub_261D85F14();
  sub_261D86844();
  [v17 layoutIfNeeded];
  v26 = sub_261D86834();
  if (v26)
  {
    v27 = v26;
    v28 = [objc_opt_self() imageWithUIImage_];
    v29 = v34;
    v30 = *v34;
    *v34 = v28;

    if (*v29)
    {
      v31 = *v29;
      [v31 _setRenderingMode_];
    }

    v17 = v27;
  }
}

void sub_261D7FE78(uint64_t a1, uint64_t a2, id *a3)
{
  v4 = sub_261D86724();
  if (v4)
  {
    v5 = v4;
    v6 = sub_261D86714();
    if (v6)
    {
      v7 = v6;
      v8 = [objc_allocWithZone(sub_261D85F24()) initWithFrame_];
      v15 = v5;
      sub_261D85F04();
      [v8 setTintColor_];
      v9 = sub_261D86834();
      if (v9)
      {
        v10 = v9;
        v11 = [objc_opt_self() imageWithUIImage_];
        v12 = *a3;
        *a3 = v11;

        if (*a3)
        {
          v13 = *a3;
          [v13 _setRenderingMode_];
        }
      }

      else
      {
        v10 = v15;
        v15 = v8;
      }

      v14 = v15;
    }

    else
    {
      v14 = v5;
    }
  }
}

id sub_261D7FFF4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_261D800A0()
{
  result = qword_27FEF47D0;
  if (!qword_27FEF47D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FEF47D0);
  }

  return result;
}

uint64_t sub_261D800EC()
{
  v1 = sub_261D85EE4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void sub_261D801CC()
{
  v1 = *(sub_261D85EE4() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = v0[4];

  sub_261D7FAE8(v3, v4, v6, v0 + v2, v5);
}

uint64_t sub_261D80260()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_261D802BC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261D802FC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_261D80354()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261D8038C(char *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF48E0, &qword_261D88338);
  return v4(v5, &a1[*(v6 + 48)]);
}

char *sub_261D803FC(char *a1, int64_t a2, char a3)
{
  result = sub_261D8043C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_261D8041C(void *a1, int64_t a2, char a3)
{
  result = sub_261D80548(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_261D8043C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4910, &qword_261D88360);
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

void *sub_261D80548(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4520, &qword_261D87F68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for REMSmartListType(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_261D80670(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4528, &qword_261D87F70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261D80700()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261D80740(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v34 = *(a1 + 16);
  if (!v34)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = 0;
  v6 = *(sub_261D86304() - 8);
  v33 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v7 = MEMORY[0x277D84F90];
  v32 = *(v6 + 72);
  while (1)
  {
    v9 = v3;
    sub_261D7E64C(v33 + v32 * v5, a2, &v39);
    if (v3)
    {

      return v7;
    }

    v10 = v39;
    v11 = v39 >> 62;
    v12 = v39 >> 62 ? sub_261D86954() : *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = v7 >> 62;
    if (v7 >> 62)
    {
      v30 = sub_261D86954();
      v15 = v30 + v12;
      if (__OFADD__(v30, v12))
      {
LABEL_35:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v14 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v15 = v14 + v12;
      if (__OFADD__(v14, v12))
      {
        goto LABEL_35;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v37 = v12;
    if (result)
    {
      if (v13)
      {
        goto LABEL_17;
      }

      v16 = v7 & 0xFFFFFFFFFFFFFF8;
      if (v15 <= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v13)
      {
LABEL_17:
        sub_261D86954();
        goto LABEL_18;
      }

      v16 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v17 = *(v16 + 16);
LABEL_18:
    result = sub_261D869F4();
    v7 = result;
    v16 = result & 0xFFFFFFFFFFFFFF8;
LABEL_19:
    v18 = *(v16 + 16);
    v19 = *(v16 + 24);
    if (v11)
    {
      break;
    }

    v20 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_3;
    }

LABEL_23:
    if (((v19 >> 1) - v18) < v37)
    {
      goto LABEL_40;
    }

    v36 = v7;
    v22 = v16 + 8 * v18 + 32;
    v31 = v16;
    if (v11)
    {
      if (v20 < 1)
      {
        goto LABEL_42;
      }

      sub_261D80A6C();
      for (i = 0; i != v20; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF48F8, &qword_261D88358);
        v24 = sub_261D84EB4(v38, i, v10);
        v26 = *v25;
        (v24)(v38, 0);
        *(v22 + 8 * i) = v26;
      }
    }

    else
    {
      sub_261D86164();
      swift_arrayInitWithCopy();
    }

    v3 = v9;
    v7 = v36;
    if (v37 >= 1)
    {
      v27 = *(v31 + 16);
      v28 = __OFADD__(v27, v37);
      v29 = v27 + v37;
      if (v28)
      {
        goto LABEL_41;
      }

      *(v31 + 16) = v29;
    }

LABEL_4:
    if (++v5 == v34)
    {
      return v7;
    }
  }

  v21 = v16;
  result = sub_261D86954();
  v16 = v21;
  v20 = result;
  if (result)
  {
    goto LABEL_23;
  }

LABEL_3:

  if (v37 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

unint64_t sub_261D80A6C()
{
  result = qword_27FEF4900;
  if (!qword_27FEF4900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEF48F8, &qword_261D88358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF4900);
  }

  return result;
}

unint64_t sub_261D80AD4()
{
  result = qword_27FEF4908;
  if (!qword_27FEF4908)
  {
    sub_261D860C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF4908);
  }

  return result;
}

void sub_261D80B2C(void *a1, uint64_t a2)
{
  sub_261D863E4();
  v4 = sub_261D863D4();
  v5 = [a1 list];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 identifier];
  }

  else
  {
    v7 = 0;
  }

  [v4 setList_];

  if (qword_27FEF3FB8 != -1)
  {
    swift_once();
  }

  v8 = sub_261D864A4();
  __swift_project_value_buffer(v8, qword_27FEF4898);
  v9 = a1;
  v26 = v4;
  v10 = sub_261D86494();
  v11 = sub_261D866C4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v12 = 136315394;
    v14 = v9;
    v15 = [v14 description];
    v16 = sub_261D86534();
    v18 = v17;

    v19 = sub_261D8464C(v16, v18, &v27);

    *(v12 + 4) = v19;
    *(v12 + 12) = 2080;
    v20 = v26;
    v21 = [v20 description];
    v22 = sub_261D86534();
    v24 = v23;

    v25 = sub_261D8464C(v22, v24, &v27);

    *(v12 + 14) = v25;
    _os_log_impl(&dword_261D56000, v10, v11, "Widget handle {intent: %s, response: %s}", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671EBF0](v13, -1, -1);
    MEMORY[0x26671EBF0](v12, -1, -1);
  }

  (*(a2 + 16))(a2, v26);
}

uint64_t sub_261D80E10(void (*a1)(void **__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_261D86954())
  {
    result = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v16 = MEMORY[0x277D84F90];
    sub_261D86A34();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x26671E4C0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(a3 + 8 * j + 32);
      }

      v4 = v11;
      v14 = v11;
      a1(&v15, &v14);
      if (v5)
      {
        goto LABEL_19;
      }

      v5 = 0;

      v4 = v15;
      sub_261D86A14();
      v12 = *(v16 + 16);
      sub_261D86A44();
      sub_261D86A54();
      sub_261D86A24();
      if (v10 == i)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

uint64_t sub_261D80F9C(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v14 = MEMORY[0x277D84F90];
    sub_261D86A34();
    v9 = *(sub_261D86194() - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v13, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_261D86A14();
      v12 = *(v14 + 16);
      sub_261D86A44();
      sub_261D86A54();
      sub_261D86A24();
      v10 += v11;
      if (!--v6)
      {
        return v14;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_261D81114(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t))
{
  v9[2] = &v10;
  v6 = sub_261D80F9C(a4, v9, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4930, &qword_261D883D0);
  v9[3] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4938, &unk_261D883D8);
  sub_261D854C4();
  sub_261D86414();

  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;

  v8 = sub_261D863F4();
  sub_261D86434();
}

uint64_t sub_261D81230()
{
  v0 = sub_261D864A4();
  __swift_allocate_value_buffer(v0, qword_27FEF4918);
  v1 = __swift_project_value_buffer(v0, qword_27FEF4918);
  if (qword_27FEF3F70 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FEF4D20);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261D812F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_261D86194();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10.n128_f64[0] = MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    v25 = v5;
    v26 = a2;
    v16 = *(v5 + 16);
    v14 = v5 + 16;
    v15 = v16;
    v28 = *MEMORY[0x277D44F30];
    v17 = (v14 - 8);
    v18 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v27 = *(v14 + 56);
    while (1)
    {
      v15(v12, v18, v4, v10);
      (v15)(v8, v12, v4);
      v19 = (*(v14 + 72))(v8, v4);
      if (v19 == v28)
      {
        break;
      }

      v20 = *v17;
      (*v17)(v8, v4);
      v20(v12, v4);
      v18 += v27;
      if (!--v13)
      {
        v21 = 1;
        v5 = v25;
        a2 = v26;
        return (*(v5 + 56))(a2, v21, 1, v4);
      }
    }

    v5 = v25;
    (*(v25 + 96))(v8, v4);

    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF46F0, &qword_261D88178) + 48);
    v23 = sub_261D86184();
    (*(*(v23 - 8) + 8))(v8 + v22, v23);
    a2 = v26;
    (*(v5 + 32))(v26, v12, v4);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  return (*(v5 + 56))(a2, v21, 1, v4);
}

void sub_261D8157C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (sub_261D8575C(a1))
  {
    if (qword_27FEF3FC0 != -1)
    {
      swift_once();
    }

    v8 = sub_261D864A4();
    __swift_project_value_buffer(v8, qword_27FEF4918);

    v9 = sub_261D86494();
    v10 = sub_261D866C4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v33 = v12;
      *v11 = 136315138;
      v13 = sub_261D86194();
      v14 = MEMORY[0x26671E0C0](a1, v13);
      v16 = sub_261D8464C(v14, v15, &v33);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_261D56000, v9, v10, "Querying Spotlight for reminders {criteria: %s}", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x26671EBF0](v12, -1, -1);
      MEMORY[0x26671EBF0](v11, -1, -1);
    }

    sub_261D86094();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4948, &qword_261D883E8);
    v17 = sub_261D861B4();
    v18 = *(v17 - 8);
    v19 = *(v18 + 72);
    v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_261D87AE0;
    (*(v18 + 104))(v21 + v20, *MEMORY[0x277D45058], v17);
    sub_261D597EC(0, &qword_27FEF47D0, 0x277D85C78);
    v22 = sub_261D86744();
    sub_261D86084();

    v23 = swift_allocObject();
    v23[2] = a1;
    v23[3] = v4;
    v23[4] = a2;
    v23[5] = a3;

    v24 = sub_261D863F4();
    sub_261D86434();

    v25 = swift_allocObject();
    v25[2] = a1;
    v25[3] = a2;
    v25[4] = a3;

    v32 = sub_261D863F4();
    sub_261D86444();
  }

  else
  {
    if (qword_27FEF3FC0 != -1)
    {
      swift_once();
    }

    v26 = sub_261D864A4();
    __swift_project_value_buffer(v26, qword_27FEF4918);
    v27 = sub_261D86494();
    v28 = sub_261D866C4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_261D56000, v27, v28, "Criteria does not contain a text search, using fallback data source", v29, 2u);
      MEMORY[0x26671EBF0](v29, -1, -1);
    }

    v30 = v4[7];
    v31 = v4[8];
    __swift_project_boxed_opaque_existential_1(v4 + 4, v30);
    (*(v31 + 24))(a1, a2, a3, v30, v31);
  }
}

uint64_t sub_261D81A18(uint64_t *a1, unint64_t a2, void *a3, void (*a4)(unint64_t), unint64_t a5)
{
  v6 = v5;
  v103 = a4;
  v112[1] = *MEMORY[0x277D85DE8];
  v111 = sub_261D86184();
  v99 = *(v111 - 8);
  v11 = v99[8];
  MEMORY[0x28223BE20](v111);
  v13 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v98 = &v96 - v15;
  MEMORY[0x28223BE20](v16);
  v110 = &v96 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4688, &unk_261D88150);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v96 - v20;
  v109 = sub_261D86194();
  v107 = *(v109 - 8);
  v22 = *(v107 + 64);
  MEMORY[0x28223BE20](v109);
  v100 = (&v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v102 = &v96 - v25;
  v26 = *a1;

  v28 = sub_261D84CE4(v27);

  if (qword_27FEF3FC0 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v29 = sub_261D864A4();
    v30 = __swift_project_value_buffer(v29, qword_27FEF4918);

    v101 = v30;
    v31 = sub_261D86494();
    v32 = sub_261D866C4();

    v33 = os_log_type_enabled(v31, v32);
    v104 = a5;
    v105 = a3;
    v106 = a2;
    if (v33)
    {
      v108 = v13;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v112[0] = v35;
      *v34 = 134218498;
      v97 = v6;
      if ((v28 & 0x8000000000000000) != 0 || (v28 & 0x4000000000000000) != 0)
      {
        v36 = sub_261D86954();
      }

      else
      {
        v36 = *(v28 + 16);
      }

      *(v34 + 4) = v36;

      *(v34 + 12) = 2080;
      v37 = MEMORY[0x26671E0C0](a2, v109);
      v39 = sub_261D8464C(v37, v38, v112);

      *(v34 + 14) = v39;
      *(v34 + 22) = 2080;
      v40 = sub_261D597EC(0, &qword_27FEF44F0, 0x277D44700);
      v41 = MEMORY[0x26671E0C0](v28, v40);
      v43 = sub_261D8464C(v41, v42, v112);

      *(v34 + 24) = v43;
      _os_log_impl(&dword_261D56000, v31, v32, "Got %ld reminders from Spotlight {criteria: %s, reminderIDs: %s}", v34, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26671EBF0](v35, -1, -1);
      MEMORY[0x26671EBF0](v34, -1, -1);

      v6 = v97;
      a3 = v105;
      v13 = v108;
    }

    else
    {
    }

    v44 = a3[2];
    sub_261D597EC(0, &qword_27FEF44F0, 0x277D44700);
    v45 = sub_261D865C4();

    v112[0] = 0;
    v46 = [v44 fetchRemindersWithObjectIDs:v45 error:v112];

    v47 = v112[0];
    if (!v46)
    {
      v54 = v112[0];
      sub_261D85C64();

      result = swift_willThrow();
      goto LABEL_47;
    }

    v48 = v13;
    sub_261D597EC(0, &unk_27FEF4440, 0x277D44750);
    sub_261D6C624();
    v49 = sub_261D864C4();
    v50 = v47;

    v28 = sub_261D84C1C(v49, &unk_27FEF4440, 0x277D44750);

    v51 = v106;
    sub_261D812F8(v106, v21);
    v52 = v107;
    v53 = v109;
    if ((*(v107 + 48))(v21, 1, v109) == 1)
    {
      sub_261D85A30(v21);
      goto LABEL_34;
    }

    v56 = v102;
    (*(v52 + 32))(v102, v21, v53);
    v57 = v100;
    (*(v52 + 16))(v100, v56, v53);
    if ((*(v52 + 88))(v57, v53) != *MEMORY[0x277D44F30])
    {
      v72 = *(v52 + 8);
      v72(v56, v53);
      v72(v57, v53);
      goto LABEL_34;
    }

    (*(v52 + 96))(v57, v53);
    v108 = *v57;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF46F0, &qword_261D88178);
    v59 = v99;
    v60 = v57 + *(v58 + 48);
    a3 = v110;
    v21 = v111;
    (v99[4])(v110, v60, v111);
    v13 = v98;
    (v59[13])(v98, *MEMORY[0x277D44F58], v21);
    v61 = sub_261D86174();
    v62 = v59[1];
    v100 = (v59 + 1);
    v98 = v62;
    (v62)(v13, v21);
    if ((v61 & 1) == 0)
    {
      v73 = v48;
      (v59[2])(v48, a3, v21);
      v74 = sub_261D86494();
      v75 = a3;
      v76 = sub_261D866B4();
      if (os_log_type_enabled(v74, v76))
      {
        v77 = swift_slowAlloc();
        v78 = v73;
        v99 = swift_slowAlloc();
        v112[0] = v99;
        *v77 = 136315138;
        sub_261D85A98();
        v79 = sub_261D86B54();
        v80 = v21;
        v82 = v81;
        v83 = v98;
        (v98)(v78, v80);
        v84 = sub_261D8464C(v79, v82, v112);

        *(v77 + 4) = v84;
        _os_log_impl(&dword_261D56000, v74, v76, "Called with %s, but should only be .includeForSiri in TTRIntentsHandlerSpotlightDataSource.", v77, 0xCu);
        v85 = v99;
        __swift_destroy_boxed_opaque_existential_0(v99);
        MEMORY[0x26671EBF0](v85, -1, -1);
        v86 = v77;
        v51 = v106;
        MEMORY[0x26671EBF0](v86, -1, -1);

        (v83)(v110, v111);
      }

      else
      {

        v87 = v98;
        (v98)(v73, v21);
        (v87)(v75, v21);
      }

      (*(v107 + 8))(v102, v109);
LABEL_34:
      v88 = v104;
      if (v28 >> 62)
      {
        goto LABEL_43;
      }

      goto LABEL_35;
    }

    v63 = sub_261D86494();
    v64 = sub_261D866C4();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_261D56000, v63, v64, "Criteria had list id, filtering further", v65, 2u);
      MEMORY[0x26671EBF0](v65, -1, -1);
    }

    v97 = v6;

    v112[0] = MEMORY[0x277D84F90];

    v66 = *(v28 + 16);
    if (!v66)
    {
      goto LABEL_42;
    }

LABEL_19:
    a2 = 0;
    a5 = v28 & 0xC000000000000001;
    while (1)
    {
      if (a5)
      {
        v68 = MEMORY[0x26671E4C0](a2, v28);
      }

      else
      {
        if (a2 >= *(v28 + 16))
        {
          goto LABEL_38;
        }

        v68 = *(v28 + 8 * a2 + 32);
      }

      v13 = v68;
      a3 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        break;
      }

      sub_261D597EC(0, &qword_27FEF4960, 0x277D82BB8);
      v6 = [v13 list];
      v69 = [v6 objectID];

      v70 = sub_261D868A4();
      if (v70)
      {
        sub_261D86A14();
        v71 = *(v112[0] + 2);
        sub_261D86A44();
        sub_261D86A54();
        sub_261D86A24();
      }

      else
      {
      }

      ++a2;
      v67 = a3 == v66;
      a3 = v110;
      v21 = v111;
      if (v67)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
  }

  v66 = sub_261D86954();
  if (v66)
  {
    goto LABEL_19;
  }

LABEL_42:

  (v98)(a3, v21);
  (*(v107 + 8))(v102, v109);
  v28 = v112[0];
  v88 = v104;
  v51 = v106;
  if (v112[0] >> 62)
  {
LABEL_43:
    if (!sub_261D86954())
    {
      goto LABEL_44;
    }

LABEL_36:
    v103(v28);

    goto LABEL_47;
  }

LABEL_35:
  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_36;
  }

LABEL_44:
  v89 = v51;

  v90 = sub_261D86494();
  v91 = sub_261D866C4();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    *v92 = 0;
    _os_log_impl(&dword_261D56000, v90, v91, "Consulting fallbackDataSource since Spotlight result is empty.", v92, 2u);
    MEMORY[0x26671EBF0](v92, -1, -1);
  }

  v93 = v105[7];
  v94 = v105[8];
  __swift_project_boxed_opaque_existential_1(v105 + 4, v93);
  result = (*(v94 + 24))(v89, v103, v88, v93, v94);
LABEL_47:
  v95 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_261D825A4(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (qword_27FEF3FC0 != -1)
  {
    swift_once();
  }

  v6 = sub_261D864A4();
  __swift_project_value_buffer(v6, qword_27FEF4918);

  v7 = a1;
  v8 = sub_261D86494();
  v9 = sub_261D866A4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315394;
    v12 = sub_261D86194();
    v13 = MEMORY[0x26671E0C0](a2, v12);
    v15 = sub_261D8464C(v13, v14, &v20);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    swift_getErrorValue();
    v16 = sub_261D86BA4();
    v18 = sub_261D8464C(v16, v17, &v20);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_261D56000, v8, v9, "Error matching reminders from Spotlight {criteria: %s, error: %s}", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671EBF0](v11, -1, -1);
    MEMORY[0x26671EBF0](v10, -1, -1);
  }

  return a3(MEMORY[0x277D84F90]);
}

void sub_261D82794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16) < 2uLL)
  {
    v9 = v3;
    if (qword_27FEF3FC0 != -1)
    {
      swift_once();
    }

    v10 = sub_261D864A4();
    __swift_project_value_buffer(v10, qword_27FEF4918);

    v11 = sub_261D86494();
    v12 = sub_261D866C4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v29 = v14;
      *v13 = 136315138;
      v15 = sub_261D86194();
      v16 = MEMORY[0x26671E0C0](a1, v15);
      v18 = sub_261D8464C(v16, v17, &v29);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_261D56000, v11, v12, "Querying Spotlight for lists {criteria: %s}", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x26671EBF0](v14, -1, -1);
      MEMORY[0x26671EBF0](v13, -1, -1);
    }

    sub_261D86094();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4948, &qword_261D883E8);
    v19 = sub_261D861B4();
    v20 = *(v19 - 8);
    v21 = *(v20 + 72);
    v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_261D87AE0;
    (*(v20 + 104))(v23 + v22, *MEMORY[0x277D45050], v19);
    sub_261D597EC(0, &qword_27FEF47D0, 0x277D85C78);
    v24 = sub_261D86744();
    sub_261D86084();

    v25 = swift_allocObject();
    v25[2] = a1;
    v25[3] = v9;
    v25[4] = a2;
    v25[5] = a3;

    v26 = sub_261D863F4();
    sub_261D86434();

    v27 = swift_allocObject();
    v27[2] = a1;
    v27[3] = a2;
    v27[4] = a3;

    v28 = sub_261D863F4();
    sub_261D86444();
  }

  else
  {
    v7 = swift_allocObject();
    v7[2] = a2;
    v7[3] = a3;
    v7[4] = a1;

    sub_261D81114(v8, sub_261D856EC, v7, sub_261D85490);
  }
}

uint64_t sub_261D82BE0(unint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v8 = sub_261D86224();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261D7A248(a5, a1);

  sub_261D86204();
  a3(v12);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_261D82CF0(uint64_t *a1, uint64_t a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v55 = a3;
  v56[1] = *MEMORY[0x277D85DE8];
  v10 = sub_261D86224();
  v53 = *(v10 - 8);
  v54 = v10;
  v11 = *(v53 + 64);
  MEMORY[0x28223BE20](v10);
  v52 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;

  v15 = sub_261D84CE4(v14);

  if (qword_27FEF3FC0 != -1)
  {
    swift_once();
  }

  v16 = sub_261D864A4();
  v17 = __swift_project_value_buffer(v16, qword_27FEF4918);

  v51 = v17;
  v18 = sub_261D86494();
  v19 = sub_261D866C4();

  if (os_log_type_enabled(v18, v19))
  {
    v49 = a4;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v56[0] = v21;
    *v20 = 134218498;
    v50 = a5;
    v48 = v5;
    if ((v15 & 0x8000000000000000) != 0 || (v15 & 0x4000000000000000) != 0)
    {
      v22 = sub_261D86954();
    }

    else
    {
      v22 = *(v15 + 16);
    }

    *(v20 + 4) = v22;

    *(v20 + 12) = 2080;
    v23 = sub_261D86194();
    v24 = a2;
    v25 = MEMORY[0x26671E0C0](a2, v23);
    v27 = sub_261D8464C(v25, v26, v56);

    *(v20 + 14) = v27;
    *(v20 + 22) = 2080;
    v28 = sub_261D597EC(0, &qword_27FEF44F0, 0x277D44700);
    v29 = MEMORY[0x26671E0C0](v15, v28);
    v31 = sub_261D8464C(v29, v30, v56);

    *(v20 + 24) = v31;
    _os_log_impl(&dword_261D56000, v18, v19, "Got %ld lists from Spotlight {criteria: %s, listIDs: %s}", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26671EBF0](v21, -1, -1);
    MEMORY[0x26671EBF0](v20, -1, -1);

    a4 = v49;
    a5 = v50;
  }

  else
  {
    v24 = a2;
  }

  v32 = v55[2];
  sub_261D597EC(0, &qword_27FEF44F0, 0x277D44700);
  v33 = sub_261D865C4();

  v56[0] = 0;
  v34 = [v32 fetchListsWithObjectIDs:v33 error:v56];

  v35 = v56[0];
  if (!v34)
  {
    v41 = v56[0];
    sub_261D85C64();

    result = swift_willThrow();
    goto LABEL_18;
  }

  sub_261D597EC(0, &qword_27FEF41C0, 0x277D44660);
  sub_261D6C624();
  v36 = sub_261D864C4();
  v37 = v35;

  if ((v36 & 0xC000000000000001) != 0)
  {
    v38 = v24;
    if (sub_261D86954())
    {
LABEL_12:
      sub_261D84C1C(v36, &qword_27FEF41C0, 0x277D44660);

      v39 = v52;
      sub_261D86204();
      a4(v39);
      result = (*(v53 + 8))(v39, v54);
      goto LABEL_18;
    }
  }

  else
  {
    v38 = v24;
    if (*(v36 + 16))
    {
      goto LABEL_12;
    }
  }

  v42 = sub_261D86494();
  v43 = sub_261D866C4();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_261D56000, v42, v43, "Consulting fallbackDataSource for CSL or non-Spotlight-indexed list", v44, 2u);
    MEMORY[0x26671EBF0](v44, -1, -1);
  }

  v45 = v55[7];
  v46 = v55[8];
  __swift_project_boxed_opaque_existential_1(v55 + 4, v45);
  result = (*(v46 + 32))(v38, a4, a5, v45, v46);
LABEL_18:
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_261D83210(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v8 = sub_261D86224();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FEF3FC0 != -1)
  {
    swift_once();
  }

  v13 = sub_261D864A4();
  __swift_project_value_buffer(v13, qword_27FEF4918);

  v14 = a1;
  v15 = sub_261D86494();
  v16 = sub_261D866A4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30[1] = a4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v31 = a3;
    v20 = v19;
    v32 = v19;
    *v18 = 136315394;
    v21 = sub_261D86194();
    v22 = MEMORY[0x26671E0C0](a2, v21);
    v24 = sub_261D8464C(v22, v23, &v32);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2080;
    swift_getErrorValue();
    v25 = sub_261D86BA4();
    v27 = sub_261D8464C(v25, v26, &v32);

    *(v18 + 14) = v27;
    _os_log_impl(&dword_261D56000, v15, v16, "Error matching lists from Spotlight {criteria: %s, error: %s}", v18, 0x16u);
    swift_arrayDestroy();
    v28 = v20;
    a3 = v31;
    MEMORY[0x26671EBF0](v28, -1, -1);
    MEMORY[0x26671EBF0](v18, -1, -1);
  }

  sub_261D86204();
  a3(v12);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_261D834B0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v68 = sub_261D86194();
  v64 = *(v68 - 8);
  v6 = *(v64 + 64);
  MEMORY[0x28223BE20](v68);
  v58 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v51 - v9);
  result = swift_allocObject();
  v69 = result;
  v70 = MEMORY[0x277D84F90];
  *(result + 16) = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    result = sub_261D86954();
    v12 = result;
    v52 = a2;
    v53 = a3;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_31:
    v45 = MEMORY[0x277D84F90];
    v46 = MEMORY[0x277D84F90];
    if (!*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_32;
    }

LABEL_29:
    v47 = swift_allocObject();
    v48 = v53;
    v47[2] = v54;
    v47[3] = a1;
    v47[4] = v52;
    v47[5] = v48;
    v47[6] = v46;
    v47[7] = v69;

    sub_261D81114(v45, sub_261D84EA4, v47, sub_261D85490);
  }

  v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v52 = a2;
  v53 = a3;
  if (!v12)
  {
    goto LABEL_31;
  }

LABEL_3:
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = a1 & 0xC000000000000001;
    v60 = *MEMORY[0x277D45270];
    v59 = *MEMORY[0x277D44F10];
    v65 = v64 + 32;
    v66 = (v64 + 104);
    v57 = 0x8000000261D8D570;
    v56 = *MEMORY[0x277D45060];
    v67 = MEMORY[0x277D84F90];
    v55 = *MEMORY[0x277D44F40];
    v62 = v12;
    v63 = a1;
    v61 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v14)
      {
        v15 = MEMORY[0x26671E4C0](v13, a1);
      }

      else
      {
        v15 = *(a1 + 8 * v13 + 32);
      }

      v16 = v15;
      v17 = sub_261D86674();
      if (v17)
      {

        v18 = v16;
        MEMORY[0x26671E090]();
        if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v44 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_261D865F4();
        }

        sub_261D86604();

        v67 = v70;
      }

      else
      {
        v19 = [v16 title];
        v20 = [v19 spokenPhrase];

        v21 = sub_261D86534();
        v23 = v22;

        v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4538, &qword_261D87F78) + 48);
        *v10 = v21;
        v10[1] = v23;
        v25 = sub_261D862B4();
        (*(*(v25 - 8) + 104))(v10 + v24, v60, v25);
        v26 = *v66;
        (*v66)(v10, v59, v68);
        v27 = *(v69 + 16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_261D843E8(0, *(v27 + 2) + 1, 1, v27, &qword_27FEF4438, &qword_261D88170, MEMORY[0x277D44F90]);
          *(v69 + 16) = v27;
        }

        v29 = *(v27 + 2);
        v28 = *(v27 + 3);
        if (v29 >= v28 >> 1)
        {
          v27 = sub_261D843E8(v28 > 1, v29 + 1, 1, v27, &qword_27FEF4438, &qword_261D88170, MEMORY[0x277D44F90]);
        }

        *(v27 + 2) = v29 + 1;
        v30 = (*(v64 + 80) + 32) & ~*(v64 + 80);
        v31 = *(v64 + 72);
        v32 = *(v64 + 32);
        v32(&v27[v30 + v31 * v29], v10, v68);
        *(v69 + 16) = v27;
        v33 = [v16 title];
        v34 = [v33 vocabularyIdentifier];

        if (v34)
        {
          v35 = sub_261D86534();
          v37 = v36;

          if (v35 == 0xD000000000000011 && v57 == v37)
          {

LABEL_23:
            v39 = sub_261D861D4();
            v40 = v58;
            (*(*(v39 - 8) + 104))(v58, v56, v39);
            v26(v40, v55, v68);
            v41 = *(v69 + 16);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v41 = sub_261D843E8(0, *(v41 + 2) + 1, 1, v41, &qword_27FEF4438, &qword_261D88170, MEMORY[0x277D44F90]);
              *(v69 + 16) = v41;
            }

            v43 = *(v41 + 2);
            v42 = *(v41 + 3);
            v14 = v61;
            if (v43 >= v42 >> 1)
            {
              v41 = sub_261D843E8(v42 > 1, v43 + 1, 1, v41, &qword_27FEF4438, &qword_261D88170, MEMORY[0x277D44F90]);
              *(v69 + 16) = v41;
            }

            *(v41 + 2) = v43 + 1;
            v32(&v41[v30 + v43 * v31], v58, v68);
            *(v69 + 16) = v41;
            v12 = v62;
            a1 = v63;
            goto LABEL_6;
          }

          v38 = sub_261D86B84();

          if (v38)
          {
            goto LABEL_23;
          }
        }

        v12 = v62;
        a1 = v63;
        v14 = v61;
      }

LABEL_6:
      if (v12 == ++v13)
      {
        v45 = *(v69 + 16);
        v46 = v67;
        if (*(v45 + 16))
        {
          goto LABEL_29;
        }

LABEL_32:

        v49 = v54[7];
        v50 = v54[8];
        __swift_project_boxed_opaque_existential_1(v54 + 4, v49);
        (*(v50 + 40))(a1, v52, v53, v49, v50);
      }
    }
  }

  __break(1u);
  return result;
}